using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace BasicBankApplication
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Ayomikun\documents\visual studio 2015\Projects\BasicBankApplication\BasicBankApplication\App_Data\BankDB.mdf;Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Query1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select b.BankID, b.BankName, br.BranchName from Bank b, Branch br where b.BankID="+bid.SelectedValue+" and b.BankID = br.BankID",con);
           // sda.SelectCommand.ExecuteNonQuery();
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Query2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select br.BranchName, a.AccountNo, a.CustomerName, a.ContactNO from Branch br, Account a where br.BankID=" + bid.SelectedValue + " and br.BranchID="+brid.SelectedValue+" and br.BranchID = a.BranchID", con);
            // sda.SelectCommand.ExecuteNonQuery();
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Query3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select a.AccountNo, a.Balance From Account a where a.BankID=" + bid.SelectedValue + " and a.AccountNo=" + accountno.Text + "", con);
            // sda.SelectCommand.ExecuteNonQuery();
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();

            GridView1.DataSource = dt;
            GridView1.DataBind(); 
        }
    }
}