@if (get_payment_setting('status', SUBPAISA_PAYMENT_METHOD_NAME) == 1)
    <x-plugins-payment::payment-method
        :name="SUBPAISA_PAYMENT_METHOD_NAME"
        paymentName="Subpaisa"
    >

    </x-plugins-payment::payment-method>


        <script>
            function startTimer() {
                let timer2 = "05:01";
                let orderInterval = setInterval(function() {


                    let timer = timer2.split(':');
                    //by parsing integer, I avoid all extra string processing
                    let minutes = parseInt(timer[0], 10);
                    let seconds = parseInt(timer[1], 10);
                    --seconds;
                    minutes = (seconds < 0) ? --minutes : minutes;
                    seconds = (seconds < 0) ? 59 : seconds;
                    seconds = (seconds < 10) ? '0' + seconds : seconds;
                    //minutes = (minutes < 10) ?  minutes : minutes;
                    $('.countdown').html(minutes + ':' + seconds);
                    if (minutes < 0) clearInterval(orderInterval);
                    //check if both minutes and seconds are 0
                    if ((seconds <= 0) && (minutes <= 0)) {
                        clearInterval(orderInterval);
                        // console.log(window.location.pathname + "/success");
                        window.location.href = window.location.pathname + "/pending";
                    }

                    timer2 = minutes + ':' + seconds;
                }, 1000);
            }

            function statusCheck() {
                let statusInterval = setInterval(function() {
                    let orderStatus = fetch(window.location.pathname + "/status");
                    orderStatus.then((json) => json.json()).then((data) => {
                        // console.log(data);
                        if ((data.status.value === "completed")) {
                            // clearInterval(orderInterval);
                            clearInterval(statusInterval);
                            window.location.href = window.location.pathname + "/success";
                        }
                        if ((data.status.value === "canceled")) {
                            // clearInterval(orderInterval);
                            clearInterval(statusInterval);
                            window.location.href = window.location.pathname + "/pending";
                        }

                    }).catch((error) => {
                        console.log(error);
                    });


                }, 5000);


            }

            $(document).ready(function() {
                var $paymentCheckoutForm = $(document).find('.payment-checkout-form');

                $paymentCheckoutForm.on('submit', function(e) {
                    if ($paymentCheckoutForm.valid() && $('input[name=payment_method]:checked').val() ===
                        'subpaisa' && !$('input[name=razorpay_payment_id]').val()) {
                        e.preventDefault();
                    }
                });



                $(document).on('click', '.payment-checkout-btn', function(event) {
                    event.preventDefault();

                    let agreeTermsAndPolicy = $('#agree_terms_and_policy');

                    if (agreeTermsAndPolicy.length && ! agreeTermsAndPolicy.is(':checked')) {
                        alert('{{ __('Please agree to the terms and conditions before proceeding.') }}');
                        return;
                    }

                    var _self = $(this);
                    var form = _self.closest('form');

                    if (form.valid && !form.valid()) {
                        return;
                    }

                    _self.attr('disabled', 'disabled');
                    var submitInitialText = _self.html();
                    _self.html('<i class="fa fa-gear fa-spin"></i> ' + _self.data('processing-text'));

                    var method = $('input[name=payment_method]:checked').val();

                    if (method === 'subpaisa') {
                        console.log("Method matched subpaisa", window.location.pathname, Object.fromEntries(new FormData($paymentCheckoutForm[0]).entries()))
                        $.ajax({
                            url: window.location.pathname + "/process",
                            method : 'POST',
                            data: Object.fromEntries(new FormData($paymentCheckoutForm[0]).entries()),
                            success: function (data) {
                                const qrModal = `<div class="modal fade" id="subPaisaQRModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                      <div class="modal-dialog modal-dialog-centered">
                                                        <div class="modal-content">
                                                          <div class="modal-header justify-content-between mt-4" style="border: 0;background-color: var(--bs-primary);color: #fff;border-radius: 0;">
                                                            <h5 class="modal-title" id="exampleModalLabel">Pay With UPI</h5>
                                                            <span type="button" class="text-white d-block fs-4" style="cursor: pointer" data-bs-dismiss="modal" aria-label="Close">X</span>
                                                          </div>
                                                          <div class="modal-body">
                                                            <div class="text-center"><img width="200" src="${data.message}" alt="" srcset=""></div>
                                                            <div class="text-center p-2 mt-3" style="background: antiquewhite;">
                                                                <span class="font-weight-bold d-block">Scan and pay with any BHIM UPI app</span>
                                                                <span class="d-block countdown">00:00</span>
                                                            </div>
                                                            <div class="d-flex justify-content-center mt-2">
                                                                <img src="/themes/upi-payment-icon.svg" class="me-2 ms-2" width="50" alt="">
                                                                <img src="/themes/paytm-icon.svg" class="me-2 ms-2" width="50" alt="">
                                                                <img src="/themes/google-pay-icon.svg" class="me-2 ms-2" width="50" alt="">
                                                                <img src="/themes/phonepe-icon.svg" class="me-2 ms-2" width="50" alt="">
                                                            </div>
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>`;

                                document.querySelector("body").insertAdjacentHTML('beforeend', qrModal);
                                $('#subPaisaQRModal').modal('show');
                                startTimer();
                                setTimeout(() => {
                                    statusCheck();
                                }, 3000)
                            },
                            error: function (data) {
                                console.error(data);
                            }
                        });

                    } else {
                        form.submit();
                    }
                });
            });
        </script>
@endif
