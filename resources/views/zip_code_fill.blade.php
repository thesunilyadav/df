<script>
    $(document).ready(function() {

        if ($('#address_city').val().trim() !== '') { // If input is not empty
            $('#address_city_l').hide(); // Hide the label
        }
        if ($('#address_state').val().trim() !== '') { // If input is not empty
            $('#address_state_l').hide(); // Hide the label
        }


        $('#sixDigitNumber').focusout(function() {
            // Get the pincode value from the input
            var pincode = $(this).val().trim();

            // Proceed if pincode is not empty
            if (pincode !== '') {
                $('#zip_process').show();
                // Make an API call to the Laravel backend
                $.ajax({
                    url: '/get-post-office/' + pincode, // The Laravel API endpoint
                    type: 'GET',
                    success: function(response) {
                        $('#address_city').val(response['City Name']);
                        $('#address_state').val(response['State']);
                        $('#zip_process').hide();

                        if ($('#address_city').val().trim() !== '') { // If input is not empty
                            $('#address_city_l').hide(); // Hide the label
                        }
                        if ($('#address_state').val().trim() !== '') { // If input is not empty
                            $('#address_state_l').hide(); // Hide the label
                        }
                    },
                    error: function(xhr) {
                        $('#address_city').val('');
                        $('#address_state').val('');
                        $('#zip_process').hide();
                        $('#address_city_l').show();
                        $('#address_state_l').show();
                    }
                });
            }
        });
    });
</script>
<style>
    input[readonly] {
        background-color: antiquewhite; /* Similar to disabled background */
        cursor: not-allowed;       /* Change the cursor to indicate it's not editable */
        opacity: 1;                /* Ensure full opacity */
    }

    input[readonly]:focus {
        outline: none;             /* Remove focus outline */
    }
</style>
