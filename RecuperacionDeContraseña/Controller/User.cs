using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace RecuperacionDeContraseña.Controller
{
    public class User
    {
        private String _Name;
        private String _UserName;
        private String _Password;
        private String _Email;

        public string Name
        {
            get
            {
                return _Name;
            }
        }

        
        public string UserName
        {
            get
            {
                return _UserName;
            }
        }

        public string Password
        {
            get
            {
                return _Password;
            }
        }

        public string Email
        {
            get
            {
                return _Email;
            }
        }

        public User()
        {
            _Name = "Erick López";
            _UserName = "xxx";
            _Password = "123";
            _Email = "erick.matamoros2o12@gmail.com";
        }

    }
}