<?php

namespace Botble\Surepay\Services\Gateways;

use Botble\Surepay\Services\Abstracts\SurepayPaymentAbstract;
use Illuminate\Http\Request;

class SurepayPaymentService extends SurepayPaymentAbstract
{
    public function makePayment(Request $request)
    {
    }

    public function afterMakePayment(Request $request)
    {
    }

    /**
     * List currencies supported https://support.surepay.com/hc/en-us/articles/360009973779
     */
    public function supportedCurrencyCodes(): array
    {
        return [
            'NGN',
            'GHS',
            'USD',
            'ZAR',
            'KES',
        ];
    }
}
