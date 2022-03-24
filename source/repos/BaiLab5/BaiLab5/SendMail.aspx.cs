using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

namespace BaiLab5
{
    public partial class SendMail : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlConnection con3 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString3"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button_SendMail_Click(object sender, EventArgs e)
        {
            string sendermail = txt_mail.Text;
            string senderpass = txt_pass.Text;

            //Lấy data từ accounts
            con.Open();
            var cmd = new SqlCommand($"select * from Accounts", con);

            SqlDataReader reader = cmd.ExecuteReader();


            //Gửi mail với thông tin đặt hàng cho khách đã đặt hàng
            try
            {
                while (reader.Read())
                {
                    string username = reader.GetString(0);

                    //recieveMail là mail được nhận
                    string recieveMail = reader.GetString(2);
                    //output = output + reader.GetValue(0) + " - " + reader.GetValue(1) + "<br>";

                    MailMessage mail = new MailMessage();
                    SmtpClient client = new SmtpClient("smtp.gmail.com");
                    mail.From = new MailAddress(sendermail);
                    mail.To.Add(recieveMail);
                    mail.Subject = "THÔNG TIN ĐẶT HÀNG";
                    mail.IsBodyHtml = true;
                    //Lấy data từ QLKH
                    con3.Open();
                    
                    var cmd3 = new SqlCommand($"select * from QLKH where Username = '{username}'", con3);

                    SqlDataReader reader3 = cmd3.ExecuteReader();
                string information = "";
                //Nội dung gửi cho người nhận
                    while (reader3.Read()) { 
                        information = "Họ và tên: " + reader3.GetString(1) + "<br>" + "Tên sản phẩm: " + reader3.GetString(5)
                                            + "<br>" + "Số lượng: " + reader3.GetInt32(6);
                    }

                mail.Body = information;

                    mail.Priority = MailPriority.High;
                    client.Port = 587;
                    NetworkCredential credential = new NetworkCredential(sendermail, senderpass);
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    client.Credentials = credential;
                    client.EnableSsl = true;
                    client.Send(mail);

                    txt_mail.Enabled = false;
                    txt_pass.Enabled = false;
                    label_notice.Visible = true;
                    label_notice.Text = "Gửi mail thành công!";
                }
            }
            catch (Exception)
            {
                label_notice.Visible = true;
                label_notice.Text = "Gửi mail thất bại!";
            }
            con3.Close();
            con.Close();
        }
    }
}