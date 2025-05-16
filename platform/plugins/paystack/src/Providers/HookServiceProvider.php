<?php

namespace Botble\Paystack\Providers;

use App\Classes\SonicpePG;
use Botble\Base\Facades\Html;
use Botble\Ecommerce\Models\Customer;
use Botble\Ecommerce\Models\Order;
use Botble\Payment\Enums\PaymentMethodEnum;
use Botble\Payment\Facades\PaymentMethods;
use Botble\Payment\Models\Payment;
use Botble\Paystack\Forms\PaystackPaymentMethodForm;
use Botble\Paystack\Services\Gateways\PaystackPaymentService;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\ServiceProvider;
use SimpleSoftwareIO\QrCode\Facades\QrCode;
use Throwable;
use Unicodeveloper\Paystack\Facades\Paystack;

class HookServiceProvider extends ServiceProvider
{
    public function boot(): void
    {
        add_filter(PAYMENT_FILTER_ADDITIONAL_PAYMENT_METHODS, [$this, 'registerPaystackMethod'], 16, 2);
        $this->app->booted(function (): void {
            add_filter(PAYMENT_FILTER_AFTER_POST_CHECKOUT, [$this, 'checkoutWithPaystack'], 16, 2);
        });

        add_filter(PAYMENT_METHODS_SETTINGS_PAGE, [$this, 'addPaymentSettings'], 97);

        add_filter(BASE_FILTER_ENUM_ARRAY, function ($values, $class) {
            if ($class == PaymentMethodEnum::class) {
                $values['PAYSTACK'] = PAYSTACK_PAYMENT_METHOD_NAME;
            }

            return $values;
        }, 21, 2);

        add_filter(BASE_FILTER_ENUM_LABEL, function ($value, $class) {
            if ($class == PaymentMethodEnum::class && $value == PAYSTACK_PAYMENT_METHOD_NAME) {
                $value = 'Paystack';
            }

            return $value;
        }, 21, 2);

        add_filter(BASE_FILTER_ENUM_HTML, function ($value, $class) {
            if ($class == PaymentMethodEnum::class && $value == PAYSTACK_PAYMENT_METHOD_NAME) {
                $value = Html::tag(
                    'span',
                    PaymentMethodEnum::getLabel($value),
                    ['class' => 'label-success status-label']
                )
                    ->toHtml();
            }

            return $value;
        }, 21, 2);

        add_filter(PAYMENT_FILTER_GET_SERVICE_CLASS, function ($data, $value) {
            if ($value == PAYSTACK_PAYMENT_METHOD_NAME) {
                $data = SurepayPaymentService::class;
            }

            return $data;
        }, 20, 2);

        add_filter(PAYMENT_FILTER_PAYMENT_INFO_DETAIL, function ($data, $payment) {
            if ($payment->payment_channel == PAYSTACK_PAYMENT_METHOD_NAME) {
                $paymentService = (new SurepayPaymentService());
                $paymentDetail = $paymentService->getPaymentDetails($payment);
                if ($paymentDetail) {
                    $data = view(
                        'plugins/paystack::detail',
                        ['payment' => $paymentDetail, 'paymentModel' => $payment]
                    )->render();
                }
            }

            return $data;
        }, 20, 2);

        add_filter(PAYMENT_FILTER_GET_REFUND_DETAIL, function ($data, $payment, $refundId) {
            if ($payment->payment_channel == PAYSTACK_PAYMENT_METHOD_NAME) {
                $refundDetail = (new SurepayPaymentService())->getRefundDetails($refundId);
                if (! Arr::get($refundDetail, 'error')) {
                    $refunds = Arr::get($payment->metadata, 'refunds');
                    $refund = collect($refunds)->firstWhere('data.id', $refundId);
                    $refund = array_merge($refund, Arr::get($refundDetail, 'data', []));

                    return array_merge($refundDetail, [
                        'view' => view(
                            'plugins/paystack::refund-detail',
                            ['refund' => $refund, 'paymentModel' => $payment]
                        )->render(),
                    ]);
                }

                return $refundDetail;
            }

            return $data;
        }, 20, 3);
    }

    public function addPaymentSettings(?string $settings): string
    {
        return $settings . PaystackPaymentMethodForm::create()->renderForm();
    }

    public function registerPaystackMethod(?string $html, array $data): string
    {
        PaymentMethods::method(PAYSTACK_PAYMENT_METHOD_NAME, [
            'html' => view('plugins/paystack::methods', $data)->render(),
        ]);

        return $html;
    }

    public function checkoutWithPaystack(array $data, Request $request): array
    {
        if ($data['type'] !== PAYSTACK_PAYMENT_METHOD_NAME) {
            return $data;
        }

        $paymentData = apply_filters(PAYMENT_FILTER_PAYMENT_DATA, [], $request);

        try {
            $requestData = [
                'reference' => Paystack::genTranxRef(),
                'quantity' => 1,
                'currency' => $paymentData['currency'],
                'amount' => (int) $paymentData['amount'] * 100,
                'email' => $paymentData['address']['email'],
                //'callback_url' => route('payment.paystack.callback'),
                'metadata' => json_encode([
                    'order_id' => $paymentData['order_id'],
                    'customer_id' => $paymentData['customer_id'],
                    'customer_type' => $paymentData['customer_type'],
                ]),
            ];

            do_action('payment_before_making_api_request', PAYSTACK_PAYMENT_METHOD_NAME, $requestData);
            $name = $paymentData['address']['name'];
            $email = $paymentData['address']['email'];
            $phone = $paymentData['address']['phone'];

            $merchantId = '893097241938627';
            $accessToken = 'C9587E775CF367111C9319790D3FD410';
            $apiSecret = 'CEFA1DEED4FA4685F123E9F25706E7A8';
            $paymentHandler = new SonicpePG($merchantId, $accessToken, $apiSecret);

            $orderId = "SEAMLESS_" . rand(1111111111, 9999999999);
            $response = $paymentHandler->createOrder((int) $paymentData['amount'], $name, $email, $phone, $orderId);
            //$response = base64_encode(QrCode::size(256)->generate($responses));

//            $qrCode = base64_encode(QrCode::format('png')->size(256)->generate($response));
            $response = "https://qrcode.tec-it.com/API/QRCode?size=small&data=".urlencode($response);

             do_action('payment_after_api_response', PAYSTACK_PAYMENT_METHOD_NAME, $requestData, (array) $response);

            if (isset($response)) {

                $order = Order::query()->where("token", $paymentData['checkout_token'])->first();


                $payStackPaymentData = [
                    'amount' => $paymentData['amount'],
                    'currency' => cms_currency()->getDefaultCurrency()->title,
                    'payment_channel' => PAYSTACK_PAYMENT_METHOD_NAME,
                    'status' => "pending",
                    'payment_type' => 'confirm',
                    'order_id' => $order->id,
                    'charge_id' => $orderId,
                    'user_id' => 0,
                ];


                if ($paymentData['customer_id']) {
                    $payStackPaymentData = [
                        ...$payStackPaymentData,
                        'customer_id' => $paymentData['customer_id'],
                        'customer_type' => Customer::class,
                    ];
                }


                $payment = Payment::query()->create($payStackPaymentData);

                $order->payment_id = $payment->getKey();
                $order->save();

                $data['error'] = false;
                $data['message'] = __($response);
                $data['upi_intent'] = $response;
                return $data;
            }

            $data['error'] = true;
            $data['message'] = __('Payment failed!');
            return $data;
        } catch (Throwable $exception) {
            $data['error'] = true;
            $data['message'] = json_encode($exception->getMessage());
            return $data;
        }

    }
}
