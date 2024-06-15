using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Web_ChitFund_Project
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
           /* if(user=Admin)
            {
                Response.Redirect("Chit_Form.aspx");
            }
            else
            {
                Response.Redirect("Chit_Form.aspx");
            }*/
           
        }

       /* public void Adminverification()
        {
            con.Open();
            string str = string.Empty;
            str = "select count(*) from loginadmin where UserId='Admin',Passwod='Password'";
            cmd = new SqlCommand(str, con);
            dr = cmd.ExecuteReader();
            int count = int.Parse(dr[0].ToString());
            dr.Read();
            if (count >= 1)
            {

                Response.Redirect("Home.aspx");
            }
            dr.Close();
            con.Close();
        }*/
    }
}