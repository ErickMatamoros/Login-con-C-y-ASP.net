using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace RecuperacionDeContraseña.Model
{
    
    public class LoginVerify
    {

        
       
        public bool UserVerification(String username, String password)
        {
            bool UserExist = false;
            RecuperacionDeContraseña.Controller.User ObjUser = new Controller.User();
            if (username.Equals(ObjUser.UserName) == true && password.Equals(ObjUser.Password))
            {
                UserExist = true;
            }
            return UserExist;
        }

    }
}