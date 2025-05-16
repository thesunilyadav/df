<?php

namespace Botble\Surepay\Forms;

use Botble\Base\Facades\BaseHelper;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\Fields\TextField;
use Botble\Payment\Forms\PaymentMethodForm;

class SurepayPaymentMethodForm extends PaymentMethodForm
{
    public function setup(): void
    {
        parent::setup();

        $this
            ->paymentId(SUREPAY_PAYMENT_METHOD_NAME)
            ->paymentName('Surepay')
            ->paymentDescription(__('Customer can buy product and pay directly using Visa, Credit card via :name', ['name' => 'Surepay']))
            ->paymentLogo(url('vendor/core/plugins/surepay/images/surepay.png'))
            ->paymentUrl('https://surepay.com')
            ->paymentInstructions(view('plugins/surepay::instructions')->render())
            ->add(
                sprintf('payment_%s_public', SUREPAY_PAYMENT_METHOD_NAME),
                TextField::class,
                TextFieldOption::make()
                    ->label(__('Public Key'))
                    ->value(BaseHelper::hasDemoModeEnabled() ? '*******************************' : get_payment_setting('public', SUREPAY_PAYMENT_METHOD_NAME))
            )
            ->add(
                sprintf('payment_%s_secret', SUREPAY_PAYMENT_METHOD_NAME),
                'password',
                TextFieldOption::make()
                    ->label(__('Secret Key'))
                    ->value(BaseHelper::hasDemoModeEnabled() ? '*******************************' : get_payment_setting('secret', SUREPAY_PAYMENT_METHOD_NAME))
            );
    }
}
