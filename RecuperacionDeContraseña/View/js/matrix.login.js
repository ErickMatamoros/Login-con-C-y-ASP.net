
$(document).ready(function(){

	var login = $('#loginform');
	var recover = $('#recoverform');
	var speed = 400;

	$('#to-recover').click(function(){
		
		$("#loginform").slideUp();
		$("#recoverform").fadeIn();
	});
	$('#to-login').click(function(){
		
		$("#recoverform").hide();
		$("#loginform").fadeIn();
	});
	
	
	$('#to-login').click(function(){
	
	});
    
    if($.browser.msie == true && $.browser.version.slice(0,3) < 10) {
        $('input[placeholder]').each(function(){ 
       
        var input = $(this);       
       
        $(input).val(input.attr('placeholder'));
               
        $(input).focus(function(){
             if (input.val() == input.attr('placeholder')) {
                 input.val('');
             }
        });
       
        $(input).blur(function(){
            if (input.val() == '' || input.val() == input.attr('placeholder')) {
                input.val(input.attr('placeholder'));
            }
        });
    });
    }
});

jQuery(document).ready(function () {

    validarCampos('#txbUserName');
    validarCampos('#txbPassword');

    $('#btnLogin').click(function () {
        var username = $('#txbUserName').val();
        var password = $('#txbPassword').val();

        if (username != '' && password != '') {
            sendDataAjax(username, password);
        } else {
            $("#StatusArea").html("<div class=\"alert alert-warning\" role=\"alert\"></button><strong>¡¡Advertencia!!</strong> No deben haber campos vacios.</div>");
        }

    });



});

function sendDataAjax(username, password) {
    var actionData = "{'username': '" + username + "', 'password': '" + password + "'}";

    $.ajax(
    {
        url: "Login.aspx/GetUserVerific",
        data: actionData,
        dataType: "json",
        type: "POST",
        contentType: "application/json; charset=utf-8",
        success: function (msg) {
            if (msg.d == "true") {
                $("#StatusArea").html("<div class=\"alert alert-success\" role=\"alert\"><p class=\"text-center\"><strong>Exito</strong><br> El Usuario Existe.</p></div>");
            } else {
                $("#StatusArea").html("<div class=\"alert alert-danger\" role=\"alert\"><p class=\"text-center\"><strong>Error</strong><br> El Usuario No Existe.</p></div>");
            }
        },
        error: function (result) {
            alert("ERROR " + result.status + ' ' + result.statusText);
        }
    });

};

function validarCampos(control) {
    jQuery(control).keypress(function (tecla) {
        if ((tecla.charCode >= 48 && tecla.charCode <= 57) || (tecla.charCode >= 65 && tecla.charCode <= 90) || (tecla.charCode >= 97 &&
            tecla.charCode <= 122) || tecla.charCode == 209 || tecla.charCode == 241 || tecla.charCode == 13 || tecla.charCode == 241) {
            $("#StatusArea").html("");
        } else {
            if (tecla.charCode != 0) {
                $("#StatusArea").html("<div class=\"alert alert-warning\" role=\"alert\"></button><p class=\"text-center\"><strong>Advertencia</strong><br> No se permiten acentos, caracteres especiales, ni espacios.</p></div>");
                return false;
            }
        }
    });
}

