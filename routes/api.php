<?php

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

use App\Http\Controllers\AirpayController;
use App\Http\Controllers\SubPaisaController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Route;

Route::prefix('v1')->group(function () {
    Route::any('/handle/{bankId}/callback', function (Request $request, $bankId) {

        Log::info("CALLBACK RECEIVED FROM PG", [
            "REQUEST" => $request->all(),
            "METHOD" => $request->method(),
            "BANK_ID" => $bankId,
            "getClientIp" => $request->getClientIp(),
        ]);

        if($bankId === "SUBPAISA") $bankId = 'SABPAISA';

        if(!in_array($bankId,['SABPAISA', 'AIRPAY'])){
            return response()->json([
                'success' => false,
                'message' => 'Invalid Request',
            ],422);
        }

        $targetUrl = "https://support.nevope.com/callback/$bankId/payin";

        $forwardHeaders = collect($request->headers->all())
            ->except(['host']) // prevent Host mismatch
            ->mapWithKeys(fn($v, $k) => [$k => $v[0]]) // format headers correctly
            ->toArray();

        Http::withHeaders($forwardHeaders) // Forward headers
            ->withoutVerifying()
            ->send($request->method(), $targetUrl, [
                'query' => $request->query(),
                'json' => $request->json()->all()
            ]);

        if($bankId === 'SABPAISA'){
            return response()->json([
                'status' => 200,
                'message' => 'API_SUCCESSFULL_MESSAGE',
                "data" => [
                    "statusCode" => "01", 
                    "message" => "Data successfully processed", 
                    // "sabpaisaTxnId" => "933682406240554393" 
                ]
            ], 200);
        }

        return response()->json([
            'status' => 200,
            'message' => 'Callback received successfully'
        ], 200);
    })->name('pg.payin.callback'); 
    
    Route::group(['prefix' => '/subpaisa/payment', 'controller' => SubPaisaController::class, 'as' => 'pg.subpaisa.'], function () {
        Route::post('/','createOrder')->name('payment');

        Route::post('/query','getTransactionStatus')->name('payment.query');
    });

    Route::group(['prefix' => '/airpay/payment', 'controller' => AirpayController::class, 'as' => 'pg.airpay.'], function () {
        Route::post('/','createOrder')->name('payment');

        Route::post('/query','getTransactionStatus')->name('payment.query');
    });
});