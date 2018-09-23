$(document).ready(function(){
    $("#suitabilityExam").validate({
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

    $("#myModal").modal({
        backdrop : "static",
        show: true
    });

    $("#confirmModal").modal({
        backdrop : "static",
        show: true
    });

    $("#evaluationModal").modal({
        backdrop : "static",
        show: true
    });

    $('#quizForm').validate({
        rules: {
            number:{
                required: true,
                digits: true
            }
        },
        messages: {
            number:{
                required: "请输入问卷编号",
                digits: "问卷编号只能是数字"
            }
        }
    });
});

function suitabilityValidationRoles(){
    var applyProfessionalInvestor = $("#applyProfessionalInvestor").val();
    var approveStatus = $("#approveStatus").val();

    var institutionProfessional = $("#professional").val();

    //todo remove this check
   if(applyProfessionalInvestor == 'false' || (approveStatus == 'REJECT' && applyProfessionalInvestor == 'true') || institutionProfessional == 'false'){
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
}