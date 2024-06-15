using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_ChitFund_Project
{
    public partial class Newid : System.Web.UI.Page
    {
        // Join_Chit ob = new Join_Chit();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Session["Chit_id"] != null)
                {
                    string chitid = Session["Chit_id"].ToString();
                    txt_chitid.Text = chitid;
                }
                if (Session["Insamt"] != null)
                {
                    string insamt= Session["Insamt"].ToString();
                    txt_insamount.Text = insamt;
                }
                if (Session["Mem_id"] != null)
                {
                    string memid = Session["Mem_id"].ToString();
                    txt_memberid.Text = memid;
                }
                
            }
           
            txt_date.Text = DateTime.Now.ToString("dd/M/yyyy");




        }

       
           
            

             


            public void Clear()
            {
                txt_date.Text = string.Empty;
                txt_insamount.Text = string.Empty;
                txt_memberid.Text = string.Empty;
                txt_chitid.Text = string.Empty;
                rb_cash.Enabled = false;
                rb_upi.Enabled = false;
                txt_upi.Text = string.Empty;
            }






        
    }
}
    
