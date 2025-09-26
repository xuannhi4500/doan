using System;
using doan.DAL;

namespace doan.Pages.NguoiDung
{
    public partial class NguoiDung_Login : System.Web.UI.Page
    {
        TaiKhoanDAL taiKhoanDAL = new TaiKhoanDAL();

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            bool isValid = taiKhoanDAL.KiemTraDangNhap(username, password);

            if (isValid)
            {
                // Đăng nhập thành công
                Session["Username"] = username;
                Response.Redirect("~/Default.aspx"); // Chuyển hướng về trang chủ nằm ở root
            }
            else
            {
                // Đăng nhập thất bại
                lblMessage.Text = "Tên đăng nhập hoặc mật khẩu không đúng.";
            }
        }
    }
}