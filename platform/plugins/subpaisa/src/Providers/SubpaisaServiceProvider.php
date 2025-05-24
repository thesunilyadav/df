<?php

namespace Botble\Subpaisa\Providers;

use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Support\ServiceProvider;

class SubpaisaServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function boot(): void
    {
        if (! is_plugin_active('payment')) {
            return;
        }

        $this->setNamespace('plugins/subpaisa')
            ->loadHelpers()
            ->loadRoutes()
            ->loadAndPublishViews()
            ->publishAssets();

        $this->app->register(HookServiceProvider::class);

        $config = $this->app['config'];

        $config->set([
            'subpaisa.publicKey' => get_payment_setting('public', SUBPAISA_PAYMENT_METHOD_NAME),
            'subpaisa.secretKey' => get_payment_setting('secret', SUBPAISA_PAYMENT_METHOD_NAME),
            'subpaisa.paymentUrl' => 'https://api.subpaisa.co',
        ]);
    }
}
