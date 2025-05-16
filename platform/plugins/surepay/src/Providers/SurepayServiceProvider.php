<?php

namespace Botble\Surepay\Providers;

use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Support\ServiceProvider;

class SurepayServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function boot(): void
    {
        if (! is_plugin_active('payment')) {
            return;
        }

        $this->setNamespace('plugins/surepay')
            ->loadHelpers()
            ->loadRoutes()
            ->loadAndPublishViews()
            ->publishAssets();

        $this->app->register(HookServiceProvider::class);

        $config = $this->app['config'];

        $config->set([
            'surepay.publicKey' => get_payment_setting('public', SUREPAY_PAYMENT_METHOD_NAME),
            'surepay.secretKey' => get_payment_setting('secret', SUREPAY_PAYMENT_METHOD_NAME),
            'surepay.paymentUrl' => 'https://api.surepay.co',
        ]);
    }
}
