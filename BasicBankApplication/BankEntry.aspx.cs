using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BasicBankApplication
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        // connection string from database property.
        
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Ayomikun\documents\visual studio 2015\Projects\BasicBankApplication\BasicBankApplication\App_Data\BankDB.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
                con.Open();
                
                SqlDataAdapter sda = new SqlDataAdapter("insert into Bank Values(" + bid.Text + ",'" + bname.Text + "')", con);
                sda.SelectCommand.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Bank Details have been stored in the database');</script>");
                bid.Text = "";
                bname.Text = "";

           
           

        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            bid.Text = "";
            bname.Text = "";

        }
    }
}