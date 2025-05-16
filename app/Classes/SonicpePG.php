<?php

namespace App\Classes;
use App\sonicpe\paymentV2\sonicpePaymentsV2;

class SonicpePG
{
    private $paymentV2;

    //private $merchantId = '893097241938627';
    //private $accessToken = 'C9587E775CF367111C9319790D3FD410';
    //private $apiSecret = 'CEFA1DEED4FA4685F123E9F25706E7A8';
    private $options = [
        'mode' => 'LIVE',
        'debug' => true
        ];
    public function __construct($merchantId, $accessToken, $apiSecret)
    {
        $this->paymentV2 = new sonicpePaymentsV2($merchantId, $accessToken, $apiSecret, $this->options);
    }
    public function createOrder($amount, $name, $email, $phone, $orderId)
    {
        try {


            $createOrderResponse = $this->initTransaction($orderId, $amount, $name, $email, $phone);
            if (isset($createOrderResponse) && !empty($createOrderResponse)){
                if ($createOrderResponse->status){
                    $response = $createOrderResponse->data;
                    if (isset($response)){
                        return $response->redirect_url;
                    }
                }
            }
            $this->dump($createOrderResponse);
        } catch (\Exception $ex) {
            return null;
        }
    }
    private function initTransaction($orderId, $amount, $name, $email, $phone)
    {
        $this->paymentV2->addCustomerInfo($name, $email, $phone);
        $this->paymentV2->setResponseHandler('https://wavesfashion.com/payment/response/success', 'https://wavesfashion.com/payment/response/failed');

        $orderResponse = $this->paymentV2->TransactionInit(
            $orderId,
            'physical',
            'product',
            $amount,
            'INR',
            'A43'
        );

        return $orderResponse;
    }
    public function getTransactionStatus($transactionId)
    {
        $response = $this->paymentV2->getTransactionStatus($transactionId);
        $this->paymentV2->setResponseHandler('http://test.com', 'http://test.com');
        return $response;
    }

    private function dump($data)
    {
        echo "<pre>";
        print_r($data);
        exit;
    }
}
