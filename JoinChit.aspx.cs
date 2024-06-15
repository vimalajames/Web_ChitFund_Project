using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Web_ChitFund_Project
{
    public partial class Join_Chit : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("Data Source=JAMES\\SQLEXPRESS;Integrated Security=True;Initial Catalog=ChitFund_Project;");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txt_doj.Text = DateTime.Now.ToString("dd/M/yyyy");

                con.Open();
                string str = string.Empty;
                str = "select Chit_Amount from Chit";
                cmd = new SqlCommand(str, con);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    drp_chitamount.Items.Clear();
                    drp_chitamount.Items.Add("--select--");
                    while (dr.Read())
                    {
                        drp_chitamount.Items.Add(dr[0].ToString());
                    }
                    dr.Close();
                    con.Close();
                }

            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            string agree = "I have agreed to the Terms and Conditions";
            txt_agree.Text = agree;

        }
        public void Memberid()
        {
            string name = txt_name.Text;
            string mid, member_id;
            if (name.Length >= 3)
            {
                mid = name.Substring(0, 3);
            }
            else
            {
                mid = name;
            }


            member_id = mid;


            con.Open();
            string count = "select count(*) from Joinchit";
            cmd = new SqlCommand(count, con);
            int j = Convert.ToInt32(cmd.ExecuteScalar());
            if (j <= 10)
            {
                string str = "select count(Member_Id) from Joinchit";
                cmd = new SqlCommand(str, con);
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();
                i++;
                txt_memberid.Text = member_id + i.ToString();
            }
            else
            {
                Response.Write("Sorry!Please select Another Chit.This chit has enough Members");
            }
            //txt_memberid.Text = member_id.ToString();
        }

        public void chitid()
        {
            con.Open();
            string str = string.Empty;
            str = "select Chit_Id from Chit where Chit_Amount='" + drp_chitamount.Text + "'";
            cmd = new SqlCommand(str, con);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                txt_chitid.Text = "";
                dr.Read();
                txt_chitid.Text = dr[0].ToString();
                dr.Close();
            }
            con.Close();


        }
        public void Instalmentcal()
        {
            double C_amt = Convert.ToDouble(drp_chitamount.Text);
            int month = 10;

            if (C_amt > 0 && month > 0)
            {
                double I_amt = C_amt / month;
                txt_instalment_amount.Text = I_amt.ToString();

            }
        }

       
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                if (Check_agree.Checked)
                {

                    Joinchit();

                }
                else
                {
                    Response.Write("Please Click the  I Agree ");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }


        }


        public void Joinchit()
        {
             string gender;
             if (rb_male.Checked)
             {

                 gender = "Male";

             }
             else
             {
                 gender = "Female";
             }
           
             con.Open();
              string str = string.Empty;
              str = "join_Chit_values";
              cmd = new SqlCommand(str, con);
              cmd.CommandType = CommandType.StoredProcedure;
              cmd.Parameters.AddWithValue("@amount", drp_chitamount.SelectedItem.Text);
              cmd.Parameters.AddWithValue("@doj", txt_doj.Text);
              cmd.Parameters.AddWithValue("@name", txt_name.Text);
              cmd.Parameters.AddWithValue("@gender", gender);
              cmd.Parameters.AddWithValue("@phone", txt_phone.Text);
              cmd.Parameters.AddWithValue("@email", txt_email.Text);
              cmd.Parameters.AddWithValue("@address", txt_address.Text);
              cmd.Parameters.AddWithValue("@member_id", txt_memberid.Text);

              Response.Write(drp_chitamount.SelectedItem.Text);

              cmd.ExecuteNonQuery();
              con.Close();

            Session["Insamt"] = txt_instalment_amount.Text;
            Session["Mem_id"] = txt_memberid.Text;
            Session["Chit_id"] = txt_chitid.Text;
            Response.Redirect("Newid.aspx");

            
        }

        protected void drp_chitamount_SelectedIndexChanged1(object sender, EventArgs e)
        {
            Instalmentcal();
            chitid();
            Memberid();
        }

        protected void txt_doj_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
