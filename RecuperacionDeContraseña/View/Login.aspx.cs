using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RecuperacionDeContraseña.View
{
    public partial class Login : System.Web.UI.Page
    {
        

        [WebMethod]
        public static string GetUserVerific(string username, string password)
        {
            string UserExist = "false";
            /*if (!Regex.IsMatch(username, @"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,10}$") || !Regex.IsMatch(password, @"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,10}$"))
            {
                UserExist = "invalid";
            }else
            {*/
                Model.LoginVerify loginVer = new Model.LoginVerify();

                if (username.Equals("") != true || password.Equals("") != true)
                {
                    if (loginVer.UserVerification(username, password) == true)
                    {
                        UserExist = "true";
                    }
                //}
            }
                

            
            
            return string.Format("{0}", UserExist) ;
            
            //return string.Format("true");
        }



        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string GetUsers(string nombre, string apellido)
        {
            return string.Format("Bienvenido al mundo AJAX {0} {1}", nombre, apellido);
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //userVerific();
            ClientScript.RegisterStartupScript(this.GetType(), "myScript", "<script>javascript:document.getElementById(\"StatusArea\").value = 'Hola';</script>");
        }
    }
}