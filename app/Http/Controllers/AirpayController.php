<?php

namespace App\Http\Controllers;

use App\Classes\AirPayPG;
use Illuminate\Http\Request;

class AirpayController extends Controller
{
    public function createOrder(Request $request)
    {   
        if ($request->ip() !== '13.235.73.102') {
            return response()->json([
                'success' => false,
                'status' => 'error',
                'message' => 'Unauthorized IP address',
            ], 403);
        }

        try {
            // Validate the request data
            $validated = $request->validate([
                'encData' => 'required',
                'checksum' => 'required',
                'mercid' => 'required',
            ]);

            $paymentHandler = new AirPayPG();
            
            $response = $paymentHandler->createOrder($validated); 

            return response()->json([
                'data' => $response,
                'status' => true,
                'message' => 'Order created successfully',
            ]);
        } catch (\Throwable $th) {
            return [
                'status' => false,
                'message' => 'Error occurred while creating order: ' . $th->getMessage()
            ];
        }
    }

    public function getTransactionStatus(Request $request)
    {
        if ($request->ip() !== '13.235.73.102') {
            return response()->json([
                'success' => false,
                'status' => 'error',
                'message' => 'Unauthorized IP address',
            ], 403);
        }

        try {
            // Validate the request data 
            $validated = $request->validate([
                'merchant_id' => 'required',
                'private_key' => 'required',
                'checksum' => 'required',
            ]);

            $paymentHandler = new AirPayPG();
            
            $response = $paymentHandler->getTransactionStatus($validated);

            return response()->json([
                'data' => $response,
                'success' => true,
                'message' => 'Transaction status retrieved successfully',
            ]);
        } catch (\Throwable $th) {
            return [
                'success' => false,
                'message' => 'Error occurred while retrieving transaction status: ' . $th->getMessage()
            ];
        }
    }
}
