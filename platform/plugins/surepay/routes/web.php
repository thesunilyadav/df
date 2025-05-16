<?php

use Botble\Surepay\Http\Controllers\SurepayController;
use Illuminate\Support\Facades\Route;


Route::middleware('core')->group(function (): void {
    Route::post('payment/surepay/webhook', [SurepayController::class, 'webhook'])->name('payments.surepay.webhook');

    Route::post('payment/response/success', [SurepayController::class, 'successRes'])->name('payments.response.successRes');
    Route::post('payment/response/failed', [SurepayController::class, 'failedRes'])->name('payments.response.failedRes');
});
