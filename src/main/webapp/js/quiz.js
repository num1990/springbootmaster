$(document).ready(function(){
    $("#quiz").validate({
        highlight: function(element) {
            $(element).closest('.question-answers').addClass('has-error');
        },
        unhighlight: function(element) {
            $(element).closest('.question-answers').removeClass('has-error');
        },
        errorElement: 'span',
        errorClass: 'help-block error',
        errorPlacement: function(error, element) {
            if (element.closest('.question-answers').find('.question label').length) {
                error.insertAfter(element.closest('.question-answers').find('.question label'));
            } else {
                error.insertAfter(element);
            }
        },
        submitHandler: function (form) {
            form.submit();
        }
    });

    suitabilityValidationRoles();
});

function suitabilityValidationRoles(){
    $(".question-answers input:radio").each(function(){
        $(this).rules(
            "add",{
                required:true,
                messages:{
                    required:"请选择您的答案"
                }
            }
        );
    });

    $(".question-answers input:checkbox").each(function(){
        $(this).rules(
            "add",{
                required:true,
                messages:{
                    required:"请选择您的答案"
                }
            }
        );
    });
}