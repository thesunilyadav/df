<?php

namespace Botble\Subpaisa;

use Botble\PluginManagement\Abstracts\PluginOperationAbstract;
use Botble\Setting\Facades\Setting;

class Plugin extends PluginOperationAbstract
{
    public static function remove(): void
    {
        Setting::delete([
            'payment_subpaisa_name',
            'payment_subpaisa_description',
            'payment_subpaisa_secret',
            'payment_subpaisa_merchant_email',
            'payment_subpaisa_status',
        ]);
    }
}
