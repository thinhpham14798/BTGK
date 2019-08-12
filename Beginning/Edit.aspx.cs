using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Beginning
{
    public partial class Edit : System.Web.UI.Page
    {
        String user;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null)
                Response.Redirect("~/Users.aspx");
            else
            {
                user = Request.QueryString["id"].ToString();
                username.Text = user;
            }

        }

        protected void btnDoi_Click(object sender, EventArgs e)
        {
            SqlConnection con;
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|DOTNET.mdf;Database=DOTNET;Integrated Security=True");
            con.Open();
            String sql = "Update Users set Password='"+txtPassword.Text+"' where Username='" + user + "'";
            SqlCommand com = new SqlCommand(sql, con);
            com.ExecuteNonQuery();
            Response.Redirect("~/Users.aspx");
        }
    }
}