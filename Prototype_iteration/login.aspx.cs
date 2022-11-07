using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prototype_iteration
{
    public partial class login : System.Web.UI.Page
    {




        protected void Page_Load(object sender, EventArgs e)
        {

       


        }

        protected void btmLogin_Click(object sender, EventArgs e)
        {

            string uname = string.Format(username.Text);
            string pword= string.Format(password.Text);
            string message = string.Format("Login succesfull!!, " + uname);
            ltMessage.Text = message;

            Response.Redirect("index.aspx?uname=" + username.Text);


        }

    


    }
}