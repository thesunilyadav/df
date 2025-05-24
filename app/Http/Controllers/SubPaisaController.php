<?php

namespace App\Http\Controllers;

use App\Classes\SubPaisaPG;
use Illuminate\Http\Request;

class SubPaisaController extends Controller
{
    public function createOrder(Request $request)
    {   
        if ($request->ip() !== '127.0.0.1') {
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
                'clientCode' => 'required',
            ]);

            $paymentHandler = new SubPaisaPG();
            
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
        if ($request->ip() !== '127.0.0.1') {
            return response()->json([
                'success' => false,
                'status' => 'error',
                'message' => 'Unauthorized IP address',
            ], 403);
        }

        try {
            // Validate the request data 
            $validated = $request->validate([
                'clientCode' => 'required',
                'statusTransEncData' => 'required',
            ]);

            $paymentHandler = new SubPaisaPG();
            
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
