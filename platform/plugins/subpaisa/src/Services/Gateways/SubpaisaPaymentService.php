<?php

namespace Botble\Subpaisa\Services\Gateways;

use Botble\Subpaisa\Services\Abstracts\SubpaisaPaymentAbstract;
use Illuminate\Http\Request;

class SubpaisaPaymentService extends SubpaisaPaymentAbstract
{
    public function makePayment(Request $request)
    {
    }

    public function afterMakePayment(Request $request)
    {
    }

    /**
     * List currencies supported https://support.subpaisa.com/hc/en-us/articles/360009973779
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
