using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Beginning
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
                LoadUser();
        }
        public void LoadUser()
        {
            SqlConnection con;
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|DOTNET.mdf;Database=DOTNET;Integrated Security=True");
            try
            {
                String sql = "Select * from Users";
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                data.DataSource = dt;
                data.DataBind();
            }
            catch(Exception ex)
            {
                Response.Write("ERROR DATA CONECTING.....");
            }
        }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            SqlConnection con;
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|DOTNET.mdf;Database=DOTNET;Integrated Security=True");
            try
            {
                con.Open();
                String sql = "Insert Into Users Values('" + txtUserName.Text + "', '" + txtPassword.Text + "')";
                SqlCommand com = new SqlCommand(sql, con);
                try
                {
                    com.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    Response.Write("Đã tồn tại username này trong hệ thống!!!!!!!!!");
                }
                con.Close();
                LoadUser();
            }
            catch (Exception ex)
            {
                Response.Write("Lỗi kết nối tới CSDL");
            }
            
        }
        protected void data_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Sua")
            {
                String username = (string)e.CommandArgument;
                Response.Redirect("Edit.aspx?id=" + username);
            }
            else
            {
                String username = (string)e.CommandArgument;
                SqlConnection con;
                con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|DOTNET.mdf;Database=DOTNET;Integrated Security=True");
                con.Open();
                String sql ="Delete from Users where Username='"+username+"'";
                SqlCommand com = new SqlCommand(sql, con);
                com.ExecuteNonQuery();
                LoadUser();
                
            }
        }

        protected void data_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}