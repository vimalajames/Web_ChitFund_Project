using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Web_ChitFund_Project
{
    public partial class Chit_Form : System.Web.UI.Page
    {
        
            SqlConnection con = new SqlConnection("Data Source=JAMES\\SQLEXPRESS;Integrated Security=True;Initial Catalog=ChitFund_Project;");
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter();
            DataSet ds = new DataSet();
        
       
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                Getdata();
                Autogenerateid();
            }
        }

        public void Getdata()
        {
            
            con.Open();
            string str = "";
            str = "select * from Chit";
            da = new SqlDataAdapter(str, con);
            ds.Clear();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

       /* public void Clear()
        {
            txt_chit_name.Text = "";
            drop_amount.Text = "";
        }*/
        public void Autogenerateid()
        {
            string chit = "Chit_No";
            con.Open();
            string str = "select count(Chit_Id) from Chit";
            cmd= new SqlCommand(str, con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i++;
            txt_chit_id.Text = chit + i.ToString();

        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            con.Open();
            string str = "";
            str = "Addchit";
            cmd = new SqlCommand(str, con);
            cmd.CommandType = CommandType.StoredProcedure;
            
            cmd.Parameters.AddWithValue("@chit_id", txt_chit_id.Text);
            cmd.Parameters.AddWithValue("@chit_name", txt_chit_name.Text);
            cmd.Parameters.AddWithValue("@chit_amount", drop_amount.Text);
            
            cmd.ExecuteNonQuery();
            con.Close();
            Getdata();
           // Clear();

            Response.Write("Added Successfully");
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            con.Open();
            string str = "";
            TextBox txt_id = GridView1.Rows[e.RowIndex].FindControl("Chit_Id") as TextBox;
            TextBox txt_name = GridView1.Rows[e.RowIndex].FindControl("Chit_Name") as TextBox;
            TextBox txt_amount = GridView1.Rows[e.RowIndex].FindControl("Chit_Amount") as TextBox;
            str = "update Chit set Chit_Id='" + txt_id.Text + "',Chit_Name='" + txt_name.Text + "',Chit_Amount='" + txt_amount.Text+ "' where Chit_Id='" + txt_id.Text + "'";
            cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex =-1;
            Getdata();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Getdata();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Getdata();
        }
    }
}