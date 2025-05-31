<?php

namespace App\Classes;

use Exception;
use Illuminate\Support\Facades\Http;

class AirPayPG
{
    public function createOrder($formData)
    {
        try {
            $url = 'https://kraken.airpay.co.in/airpay/api/generateOrder';

            $response = Http::withOptions([
                'verify' => false, // Equivalent to CURLOPT_SSL_VERIFYPEER => false and CURLOPT_SSL_VERIFYHOST => 0
                'curl' => [
                    CURLOPT_ENCODING => '',
                    CURLOPT_MAXREDIRS => 10,
                    CURLOPT_TIMEOUT => 0,
                    CURLOPT_FOLLOWLOCATION => true,
                    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                ]
            ])
            ->withHeaders([
                'Content-Type' => 'application/json',
            ])
            ->post($url, $formData);

            return $response->json() ?: $response->body();
        } catch (\Exception $ex) {
            throw new Exception('Error occurred while creating order: ' . $ex->getMessage());
        }
    }

    public function getTransactionStatus($formData)
    {
        $url = 'https://kraken.airpay.co.in/airpay/order/verify.php';
		
		$response = Http::withHeaders([
            'Accept' => 'application/json'
        ])->post($url, $formData);

        return $response->json() ?: $response->body();
    }
}
