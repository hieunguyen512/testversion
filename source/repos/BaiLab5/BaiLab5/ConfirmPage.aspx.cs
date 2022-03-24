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
    public partial class ConfirmPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
        SqlConnection con3 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString3"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string MaHang = Request.QueryString["MaHang"];
            
            string Username_ = Request.QueryString["Username"];
            label_User.Text = Username_;

            con.Open();

            var cmd = new SqlCommand($"select * from Accounts where Username = '{Username_}'",con);
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    {
                        label_Phone.Text = reader.GetString(4);
                        label_Addr.Text = reader.GetString(3);
                    }; 
                }
            }
            con.Close();

            con2.Open();

            var cmd2 = new SqlCommand($"select * from SanPham where MaHang = '{MaHang}'", con2);
            SqlDataReader reader2 = cmd2.ExecuteReader();

            if (reader2.HasRows)
            {
                while (reader2.Read())
                {
                    {
                        label_MaSP.Text = MaHang;
                        label_TenSP.Text = reader2.GetString(1);
                        label_LoaiSP.Text = reader2.GetString(2);
                        label_Gia.Text = (reader2.GetInt32(3)).ToString()+"000 đ";
                        label_ThanhTien.Text = (reader2.GetInt32(3) * Int32.Parse(drop_SoLuong.Text)).ToString() + "000 đ";
                    };
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            con3.Open();
            var cmd = new SqlCommand($@"insert into QLKH values('{label_User.Text}',N'{txt_Name.Text}','{txt_Date.Text}',
                                  '{label_Phone.Text}',N'{label_Addr.Text}',N'{label_TenSP.Text}',
                                  '{Int32.Parse(drop_SoLuong.Text)}',N'{label_LoaiSP.Text}')", con3);
            cmd.ExecuteNonQuery();
            con3.Close();
            label_Notice.Visible = true;
            label_Notice.Text = "Đặt hàng thành công!";
            
        }

        protected void button_Cancel_Click(object sender, EventArgs e)
        {
            string Username_ = Request.QueryString["Username"];

            con.Open();

            var cmd = new SqlCommand($"delete from Accounts where Username = '{Username_}'", con);
            cmd.ExecuteNonQuery();

            con.Close();

            con3.Open();

            var cmd2 = new SqlCommand($"delete from QLKH where Username = '{Username_}'", con3);
            cmd2.ExecuteNonQuery();

            con3.Close();

            Response.Redirect("StorePage.aspx");

            
        }
    }
}