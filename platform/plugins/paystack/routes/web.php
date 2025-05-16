<?php

use Botble\Paystack\Http\Controllers\PaystackController;
use Illuminate\Support\Facades\Route;


Route::middleware('core')->group(function (): void {
    Route::post('payment/paystack/webhook', [PaystackController::class, 'webhook'])
        ->name('payments.paystack.webhook');
});
