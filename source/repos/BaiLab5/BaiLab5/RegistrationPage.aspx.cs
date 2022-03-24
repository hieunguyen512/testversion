using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace BaiLab5
{
    public partial class RegistrationPage : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            label_Error.Visible = false;
        }

        protected void button_Registration_Click(object sender, EventArgs e)
        {
            string MaHang = Request.QueryString["MaHang"];
            try {
                label_Error.Visible = false;

                con.Open();
                //Thêm thông tin đăng ký vào data
                var cmd = new SqlCommand($"insert into Accounts values('{txt_Username.Text}','{txt_Pwd.Text}','{txt_Email.Text}',N'{txt_Addr.Text}','{txt_Phone.Text}')",con);

                cmd.ExecuteNonQuery();

                con.Close();

            }
            //Trường hợp tên đăng nhập đã tồn tại
            catch(Exception)
            {
                label_Error.Visible = true;
                label_Error.Text = "(*)Tên đăng nhập đã được đăng ký";
            }

            Response.Redirect($"ConfirmPage.aspx?MaHang={MaHang}&Username={txt_Username.Text}");
        }
    }
}