using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Web_ChitFund_Project
{
    public partial class Login : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_admin_Click(object sender, EventArgs e)
        {
            if (FormsAuthentication.Authenticate(txt_uname.Text, txt_pwd.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(txt_uname.Text, true);
                Response.Redirect("Home.aspx");


            }
            else
            {
                Response.Write("Invalid Access");
            }
        }

        protected void Guest_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void btn_member_Click(object sender, EventArgs e)
        {
            con.Open();
            string str = string.Empty;
            str = "insert into loginmember (UserId,Password) values('" + txt_uname.Text + "','" + txt_pwd.Text + "')";

            con.Close();
        }
    }
}