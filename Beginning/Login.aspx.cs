using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Beginning
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con;
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|DOTNET.mdf;Database=DOTNET;Integrated Security=True");
            con.Open();
            String sql = "Select * from Users where Username='" + txtUserName.Text + "' and Password='" + txtPassword.Text + "'";
            SqlCommand com = new SqlCommand(sql, con);
            SqlDataReader dr = com.ExecuteReader();
            bool chk = dr.Read();
            dr.Close();
            con.Close();
            if (chk)
            {
                Session.Add("username", txtUserName.Text);
                Session.Add("password", txtPassword.Text);
                Response.Redirect("Default.aspx");
            }
        }
    }
}