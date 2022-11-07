using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.Http.Results;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prototype_iteration
{
    public partial class index1 : System.Web.UI.Page
    {
        public bool login_status { get; set; }


        public void Page_Load(object sender, EventArgs e)
        {



            if (login_status == false)
            {


                try
                {

                    username.Text = Request.QueryString["uname"].ToString();
                    login.Text = "Logout";
                    login_status = true;
                }
                catch

                {

                }


            }





        }



        public void login_check(object sender, EventArgs e)
        {


            if (username.Text == null || username.Text == "")
            {
                login_status = false;
                Response.Redirect("login.aspx");
            }

            if (login_status == true)
            {
                login_status = false;
                username.Text = "";
                Response.Redirect("index.aspx");
            }

        }

        protected void login_button(object sender, EventArgs e)
        {
            if (login_status == false)
            {
                Response.Write("<asp:Button OnClick=\"login_check\" Text=\"Log in\" runat=\"server\" CssClass=\"buttonLog_in\" />");
            }
            else
            {
                Response.Write("<asp:Button OnClick=\"login_check\" Text=\"Log out\" runat=\"server\" CssClass=\"buttonLog_in\" />");

            }


        }


    }




}











