<?php

namespace App\Classes;

use Exception;
use Illuminate\Support\Facades\Http;

class SubPaisaPG
{
    public function createOrder($formData)
    {
        try {
            $url = 'https://securepay.sabpaisa.in/SabPaisa/sabPaisaInit?v=1';

            $response = Http::asForm()->withHeaders([
                'Accept' => 'application/json',
            ])->post($url, $formData);

            return $response->json() ?: $response->body();
        } catch (\Exception $ex) {
            throw new Exception('Error occurred while creating order: ' . $ex->getMessage());
        }
    }

    public function getTransactionStatus($formData)
    {
        $url = 'https://txnenquiry.sabpaisa.in/SPTxtnEnquiry/getTxnStatusByClientxnId';
		
		$response = Http::withHeaders([
            'Accept' => 'application/json'
        ])->post($url, $formData);

        return $response->json() ?: $response->body();
    }
}
