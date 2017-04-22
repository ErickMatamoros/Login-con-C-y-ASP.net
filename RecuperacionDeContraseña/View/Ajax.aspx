<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ajax.aspx.cs" Inherits="RecuperacionDeContraseña.View.Ajax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head id="Head1" runat="server">
    <title>JQuery  AJAX Ejemplo Básico</title>
  
    <script type="text/javascript" src="js/jquery-1.3.2.min.js" ></script>
  
    <script language="javascript" type = "text/javascript">
        jQuery(document).ready(function() {
            $('#btnPrueba').click(function() {
                var nombre = $('#txtNombre').val();
                var apellido = $('#txtApellido').val();
 
                if (nombre && (nombre != ''))
                    sendDataAjax(nombre, apellido);
            });
        });
 
        function sendDataAjax(nombre, apellido) {
            var actionData = "{'nombre': '" + nombre + "', 'apellido': '" + apellido + "'}";
           
            $.ajax(
            {
                url: "Ajax.aspx/GetDataAjax",
                data: actionData,
                dataType: "json",
                type: "POST",
                contentType: "application/json; charset=utf-8",
                success: function(msg) { alert(msg.d); },
                error: function(result) {
                    alert("ERROR " + result.status + ' ' + result.statusText);
                }
            });        
        };
    </script>
  
  </head>
  <body>
    Nombre: <input type="text" id="txtNombre" /> <br />
    Apellido: <input type="text" id="txtApellido" /> <br />
    <input type="button" id="btnPrueba" value="Probando AJAX" />
  </body>
</html>
