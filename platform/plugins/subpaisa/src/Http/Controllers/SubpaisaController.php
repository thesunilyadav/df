<?php

namespace Botble\Subpaisa\Http\Controllers;

use Botble\Base\Facades\BaseHelper;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Ecommerce\Enums\OrderStatusEnum;
use Botble\Ecommerce\Models\Order;
use Botble\Payment\Enums\PaymentStatusEnum;
use Botble\Payment\Models\Payment;
use Botble\Payment\Supports\PaymentHelper;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Razorpay\Api\Api;
use Razorpay\Api\Errors\BadRequestError;
use Unicodeveloper\Subpaisa\Facades\Subpaisa;
use function Symfony\Component\String\s;

class SubpaisaController extends BaseController
{
    public function webhook(Request $request)
    {
        if ($request->input('transaction.status') === 'Success' || $request->input('transaction.status') === 'Failed') {
            try {
                $order = $request->input('transaction');

                do_action('payment_before_making_api_request', SUBPAISA_PAYMENT_METHOD_NAME, ['order_id' => $order['order']['order_id']]);

                do_action('payment_after_api_response', SUBPAISA_PAYMENT_METHOD_NAME, ['order_id' => $order['order']['order_id']]);

                $status = PaymentStatusEnum::PENDING;
                $ec_order_status = OrderStatusEnum::PENDING;

                if ($order['status'] === 'Success') {
                    $status = PaymentStatusEnum::COMPLETED;
                    $ec_order_status = OrderStatusEnum::COMPLETED;
                }
                if ($order['status'] === 'Failed') {
                    $status = PaymentStatusEnum::FAILED;
                    $ec_order_status = OrderStatusEnum::CANCELED;
                }

                $chargeId = $request->input('transaction.order.order_id');

                $payment = Payment::query()
                    ->where('charge_id', $chargeId)
                    ->first();

                if ($payment) {
                    $payment->status = $status;
                    $payment->save();

                    $ec_order = Order::query()->where('id', $payment['order_id'])->first();
                    $ec_order->status = $ec_order_status;
                    $ec_order->save();

                    $orderId = $payment->order_id;
                } elseif (class_exists(Order::class)) {
                    $orderId = Order::query()->where('token', $order['receipt'])->pluck('id')->all();
                }
                if ($orderId) {
                    do_action(PAYMENT_ACTION_PAYMENT_PROCESSED, [
                        'charge_id' => $chargeId,
                        'order_id' => $orderId,
                        'status' => $status,
                        'payment_channel' => SUBPAISA_PAYMENT_METHOD_NAME,
                    ]);

                    return response('ok');
                }
            } catch (BadRequestError $exception) {
                BaseHelper::logError($exception);

                return response('invalid payload.', 400);
            }
        }
    }

    public function getPaymentStatus(Request $request, BaseHttpResponse $response)
    {
        do_action('payment_before_making_api_request', SUBPAISA_PAYMENT_METHOD_NAME, []);

        /**
         * @var array $result
         */
        $result = Subpaisa::getPaymentData();

        do_action('payment_after_api_response', SUBPAISA_PAYMENT_METHOD_NAME, [], $result);

        if (! $result['status']) {
            return $response
                ->setError()
                ->setNextUrl(PaymentHelper::getCancelURL())
                ->setMessage($result['message']);
        }

        do_action(PAYMENT_ACTION_PAYMENT_PROCESSED, [
            'amount' => $result['data']['amount'] / 100,
            'currency' => $result['data']['currency'],
            'charge_id' => $result['data']['reference'],
            'payment_channel' => SUBPAISA_PAYMENT_METHOD_NAME,
            'status' => PaymentStatusEnum::COMPLETED,
            'customer_id' => Arr::get($result['data']['metadata'], 'customer_id'),
            'customer_type' => Arr::get($result['data']['metadata'], 'customer_type'),
            'payment_type' => 'direct',
            'order_id' => (array) $result['data']['metadata']['order_id'],
        ], $request);

        return $response
            ->setNextUrl(PaymentHelper::getRedirectURL())
            ->setMessage(__('Checkout successfully!'));
    }
}
