<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RecuperacionDeContraseña.View.Login" %>


<!DOCTYPE html>
<html lang="es">

<head runat="server" charset="UTF-8">
    <title>Money Lender App</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="css/matrix-login.css" />
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body>
    <div id="loginbox">
        <form id="loginform" class="form-vertical" runat="server">
            <div class="control-group normal_text">
                <h3>
                    <img src="img/logo.png" alt="Logo" /></h3>
            </div>
            <div class="control-group">
                <div class="controls">
                    <div class="main_input_box">
                        <span class="add-on bg_lg"><i class="icon-user"></i></span>
                        <input id="txbUserName" type="text" placeholder="Nombre de Usuario" />
                    </div>
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <div class="main_input_box">
                        <span class="add-on bg_ly"><i class="icon-lock"></i></span>
                        <input id="txbPassword" type="password" placeholder="Contraseña" />
                    </div>
                </div>
            </div>

            <div id="StatusArea">
            </div>

            <div class="form-actions">
                <span class="pull-left"><a href="#" class="flip-link btn btn-info" id="to-recover">¿Olvidaste tu contraseña?</a></span>
                <!-- <span class="pull-right"><a type="submit" href="index.html" class="btn btn-success">Login</a></span> -->

                <span class="pull-right">
                    <input id="btnLogin" type="button" value="Iniciar Sesión" class="btn btn-success" />
                </span>

                <!-- <span class="pull-right">
                    <asp:Button ID="btnLogin" Text="Login" runat="server" CssClass="btn btn-success" OnClick="btnLogin_Click" />
                </span> -->

            </div>
        </form>
        <form id="recoverform" action="#" class="form-vertical">
            <p class="normal_text">Enviaremos a tu correo electrónico tu credenciales de autenticación.</p>

            <div class="controls">
                <div class="main_input_box">
                    <span class="add-on bg_lo"><i class="icon-envelope"></i></span>
                    <input type="text" placeholder="Correo Electrónico" />
                </div>
            </div>

            <div class="form-actions">
                <span class="pull-left"><a href="#" class="flip-link btn btn-success" id="to-login">&laquo; Regresar</a></span>
                <span class="pull-right"><a class="btn btn-info">Recuperar</a></span>
            </div>
        </form>
    </div>

    <script src="js/jquery.min.js"></script>
    <script src="js/matrix.login.js"></script>
    
</body>

</html>
