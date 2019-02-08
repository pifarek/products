
(function($){
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': settings.token
        }
    });

    $('body').on('click', '[data-action="add-price"]', function() {
        var row = $('.prices .form-row:first').clone();
        row.find('input').val('0.00');
        $('.prices').append(row[0].outerHTML);
        $('.prices .form-row:last').find('input').val('0.00');
        return false;
    });

    $('body').on('click', '[data-action="remove-price"]', function() {
        if ($('.prices .form-row').length > 1) {
            $(this).closest('.form-row').remove();
        }

        return false;
    });

    $('body').on('click', '[data-action="product-remove"]', function() {
        if (confirm('Are you sure you want to remove selected product?')) {
            var href = $(this).attr('data-href');
            var redirect = $(this).attr('data-redirect');
            $.ajax({
                url: href,
                type: 'DELETE',
                success: function(result) {
                    window.location.href = redirect;
                }
            });
        }

    });

})(jQuery);