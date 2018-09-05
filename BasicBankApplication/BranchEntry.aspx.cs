using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BasicBankApplication
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Ayomikun\documents\visual studio 2015\Projects\BasicBankApplication\BasicBankApplication\App_Data\BankDB.mdf;Integrated Security=True");

        //bid.selected value
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter("insert into Branch Values(" + brid.Text + "," + bid.SelectedValue + ",'" + brname.Text + "')", con);
                sda.SelectCommand.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Branch Details have been stored in the database');</script>");
               

            
                
                //Response.Write("<script>alert('"+error+"');</script>");
            

        }


    }
}