using System;
using System.Collections.Generic;
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
                    Response.Write("Đã thêm !!!!");
                }
                catch (Exception ex)
                {
                    Response.Write("Đã tồn tại username này trong hệ thống!!!!!!!!!");
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Lỗi kết nối tới CSDL");
            }
            
        }
    }
}