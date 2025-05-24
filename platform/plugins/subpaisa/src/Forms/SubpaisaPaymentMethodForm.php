<?php

namespace Botble\Subpaisa\Forms;

use Botble\Base\Facades\BaseHelper;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\Fields\TextField;
use Botble\Payment\Forms\PaymentMethodForm;

class SubpaisaPaymentMethodForm extends PaymentMethodForm
{
    public function setup(): void
    {
        parent::setup();

        $this
            ->paymentId(SUBPAISA_PAYMENT_METHOD_NAME)
            ->paymentName('Subpaisa')
            ->paymentDescription(__('Customer can buy product and pay directly using Visa, Credit card via :name', ['name' => 'Subpaisa']))
            ->paymentLogo(url('vendor/core/plugins/subpaisa/images/subpaisa.png'))
            ->paymentUrl('https://subpaisa.com')
            ->paymentInstructions(view('plugins/subpaisa::instructions')->render())
            ->add(
                sprintf('payment_%s_public', SUBPAISA_PAYMENT_METHOD_NAME),
                TextField::class,
                TextFieldOption::make()
                    ->label(__('Public Key'))
                    ->value(BaseHelper::hasDemoModeEnabled() ? '*******************************' : get_payment_setting('public', SUBPAISA_PAYMENT_METHOD_NAME))
            )
            ->add(
                sprintf('payment_%s_secret', SUBPAISA_PAYMENT_METHOD_NAME),
                'password',
                TextFieldOption::make()
                    ->label(__('Secret Key'))
                    ->value(BaseHelper::hasDemoModeEnabled() ? '*******************************' : get_payment_setting('secret', SUBPAISA_PAYMENT_METHOD_NAME))
            );
    }
}
