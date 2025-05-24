<?php

use Botble\Paystack\Http\Controllers\PaystackController;
use Illuminate\Support\Facades\Route;


Route::middleware('core')->group(function (): void {
    Route::post('payment/subpaisa/webhook', [PaystackController::class, 'webhook'])
        ->name('payments.subpaisa.webhook');
});
