<?php

namespace Botble\Surepay;

use Botble\PluginManagement\Abstracts\PluginOperationAbstract;
use Botble\Setting\Facades\Setting;

class Plugin extends PluginOperationAbstract
{
    public static function remove(): void
    {
        Setting::delete([
            'payment_surepay_name',
            'payment_surepay_description',
            'payment_surepay_secret',
            'payment_surepay_merchant_email',
            'payment_surepay_status',
        ]);
    }
}
