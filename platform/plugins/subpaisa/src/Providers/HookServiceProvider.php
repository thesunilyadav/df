<?php

namespace Botble\Subpaisa\Providers;

use App\Classes\SubPaisaPG;
use Botble\Base\Facades\Html;
use Botble\Ecommerce\Models\Customer;
use Botble\Ecommerce\Models\Order;
use Botble\Payment\Enums\PaymentMethodEnum;
use Botble\Payment\Facades\PaymentMethods;
use Botble\Payment\Models\Payment;
use Botble\Subpaisa\Forms\SubpaisaPaymentMethodForm;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\ServiceProvider;
use Throwable;

class HookServiceProvider extends ServiceProvider
{
    public function boot(): void
    {
        define("OPENSSL_CIPHER_NAME", "aes-128-cbc");
        define("CIPHER_KEY_LEN", 16);
        define("IV_LEN", 16);

        add_filter(PAYMENT_FILTER_ADDITIONAL_PAYMENT_METHODS, [$this, 'registerSubpaisaMethod'], 16, 2);
        $this->app->booted(function (): void {
            add_filter(PAYMENT_FILTER_AFTER_POST_CHECKOUT, [$this, 'checkoutWithSubpaisa'], 16, 2);
        });

        add_filter(PAYMENT_METHODS_SETTINGS_PAGE, [$this, 'addPaymentSettings'], 97);

        add_filter(BASE_FILTER_ENUM_ARRAY, function ($values, $class) {
            if ($class == PaymentMethodEnum::class) {
                $values['SUBPAISA'] = SUBPAISA_PAYMENT_METHOD_NAME;
            }

            return $values;
        }, 21, 2);

        add_filter(BASE_FILTER_ENUM_LABEL, function ($value, $class) {
            if ($class == PaymentMethodEnum::class && $value == SUBPAISA_PAYMENT_METHOD_NAME) {
                $value = 'Subpaisa';
            }

            return $value;
        }, 21, 2);

        add_filter(BASE_FILTER_ENUM_HTML, function ($value, $class) {
            if ($class == PaymentMethodEnum::class && $value == SUBPAISA_PAYMENT_METHOD_NAME) {
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
            if ($value == SUBPAISA_PAYMENT_METHOD_NAME) {
                $data = SurepayPaymentService::class;
            }

            return $data;
        }, 20, 2);

        add_filter(PAYMENT_FILTER_PAYMENT_INFO_DETAIL, function ($data, $payment) {
            if ($payment->payment_channel == SUBPAISA_PAYMENT_METHOD_NAME) {
                $paymentService = (new SurepayPaymentService());
                $paymentDetail = $paymentService->getPaymentDetails($payment);
                if ($paymentDetail) {
                    $data = view(
                        'plugins/subpaisa::detail',
                        ['payment' => $paymentDetail, 'paymentModel' => $payment]
                    )->render();
                }
            }

            return $data;
        }, 20, 2);

        add_filter(PAYMENT_FILTER_GET_REFUND_DETAIL, function ($data, $payment, $refundId) {
            if ($payment->payment_channel == SUBPAISA_PAYMENT_METHOD_NAME) {
                $refundDetail = (new SurepayPaymentService())->getRefundDetails($refundId);
                if (! Arr::get($refundDetail, 'error')) {
                    $refunds = Arr::get($payment->metadata, 'refunds');
                    $refund = collect($refunds)->firstWhere('data.id', $refundId);
                    $refund = array_merge($refund, Arr::get($refundDetail, 'data', []));

                    return array_merge($refundDetail, [
                        'view' => view(
                            'plugins/subpaisa::refund-detail',
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
        return $settings . SubpaisaPaymentMethodForm::create()->renderForm();
    }

    public function registerSubpaisaMethod(?string $html, array $data): string
    {
        PaymentMethods::method(SUBPAISA_PAYMENT_METHOD_NAME, [
            'html' => view('plugins/subpaisa::methods', $data)->render(),
        ]);

        return $html;
    }

    public function checkoutWithSubpaisa(array $data, Request $request): array
    {
        if ($data['type'] !== SUBPAISA_PAYMENT_METHOD_NAME) {
            return $data;
        }

        $paymentData = apply_filters(PAYMENT_FILTER_PAYMENT_DATA, [], $request);
        try {

            $clientCode = 'DELF89';
            $username = 'delfordsolution@gmail.com';
            $password = 'DELF89_SP21267';
            $authKey = 'nafJ0cnHRMGbVCF7';
            $authIV = 'AwboxwrYX52ZbNtR';

            // Payment details
            $payerName = $paymentData['address']['name'];
            $payerEmail = $paymentData['address']['email'];
            $payerMobile = $paymentData['address']['phone'];
            $payerAddress = $paymentData['address']['address'];

            $orderId = "ORD" . rand(1111111111, 9999999999);
            $amount = $paymentData['amount'];
            $amountType = $paymentData['currency'];
            $mcc = 5137;
            $channelId = 'W';
            $callbackUrl = 'https://delfordfashions.com/api/v1/handle/SUBPAISA/callback';
            $byPassFlag = 'true';
            $modeTransfer = 'UPI_APPS_MODE_TRANSFER';
            $seamlessType = 'S2S';

            // Concatenating request data
            $encData = http_build_query([
                "clientCode" => $clientCode,
                "transUserName" => $username,
                "transUserPassword" => $password,
                "payerName" => $payerName,
                "payerMobile" => $payerMobile,
                "payerEmail" => $payerEmail,
                "payerAddress" => $payerAddress,
                "clientTxnId" => $orderId,
                "amount" => $amount,
                "amountType" => $amountType,
                "mcc" => $mcc,
                "channelId" => $channelId,
                "callbackUrl" => $callbackUrl,
                "browserDetails" => "English|24-bit|1080|1920|UTC+2",
                "modeTransfer" => $modeTransfer,
                "byPassFlag" => $byPassFlag,
                "seamlessType" => $seamlessType
            ]);

            do_action('payment_before_making_api_request', SUBPAISA_PAYMENT_METHOD_NAME, $encData);

            $paymentHandler = new SubPaisaPG();

            $encryptedData = $this->encrypt($authKey, $authIV, $encData);

            if (!$encryptedData) {
                die("Encryption failed.");
            }

            $formData = [
                'encData' => $encryptedData,
                'clientCode' => $clientCode
            ];

            $responseData = $paymentHandler->createOrder($formData);

            if (isset($responseData['data'])) {
                parse_str($responseData['data'], $parsedData);
                if (isset($parsedData['encData'])) {
                    $enc = str_replace(' ', '+', $parsedData['encData']);
                    $response = $this->decrypt($authKey, $enc);
                } else {
                    echo "No encData found in response.";
                }
            } else {
                echo "No encrypted response data found.";
            }

            $response = "https://qrcode.tec-it.com/API/QRCode?size=small&data=" . urlencode($response);

            do_action('payment_after_api_response', SUBPAISA_PAYMENT_METHOD_NAME, (array) $encData, (array) $response);

            if (isset($response)) {
                $order = Order::query()->where("token", $paymentData['checkout_token'])->first();

                $subPaisaPaymentData = [
                    'amount' => $paymentData['amount'],
                    'currency' => cms_currency()->getDefaultCurrency()->title,
                    'payment_channel' => SUBPAISA_PAYMENT_METHOD_NAME,
                    'status' => "pending",
                    'payment_type' => 'confirm',
                    'order_id' => $order->id,
                    'charge_id' => $orderId,
                    'user_id' => 0,
                ];

                if ($paymentData['customer_id']) {
                    $subPaisaPaymentData = [
                        ...$subPaisaPaymentData,
                        'customer_id' => $paymentData['customer_id'],
                        'customer_type' => Customer::class,
                    ];
                }

                $payment = Payment::query()->create($subPaisaPaymentData);

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

    public function fixKey($key)
    {
        return str_pad(substr($key, 0, CIPHER_KEY_LEN), CIPHER_KEY_LEN, "0");
    }

    public function fixIV($iv)
    {
        return str_pad(substr($iv, 0, IV_LEN), IV_LEN, "0");
    }

    public function encrypt($key, $iv, $data)
    {
        $fixedKey = $this->fixKey($key);
        $fixedIV = $this->fixIV($iv);

        $encryptedData = openssl_encrypt($data, OPENSSL_CIPHER_NAME, $fixedKey, OPENSSL_RAW_DATA, $fixedIV);

        if ($encryptedData === false) {
            return false;
        }

        return base64_encode($encryptedData) . ":" . base64_encode($fixedIV);
    }

    public function decrypt($key, $encryptedData)
    {
        $parts = explode(':', $encryptedData);
        if (count($parts) !== 2) {
            return false;
        }

        $encrypted = base64_decode($parts[0]);
        $iv = base64_decode($parts[1]);
        $fixedKey = $this->fixKey($key);

        return openssl_decrypt($encrypted, OPENSSL_CIPHER_NAME, $fixedKey, OPENSSL_RAW_DATA, $iv);
    }
}
