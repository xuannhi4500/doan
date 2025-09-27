using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace doan.Pages
{
    public partial class Register : System.Web.UI.Page
    {
        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            string hoTen = txtHoTen.Text.Trim();
            string email = txtEmail.Text.Trim();
            string Password = txtMatKhau.Text.Trim();
            string xacNhanMK = txtXacNhanMK.Text.Trim();
            string sdt = txtSDT.Text.Trim();
            string gioiTinh = ddlGioiTinh.SelectedValue;
            string diaChi = txtDiaChi.Text.Trim();
            DateTime? ngaySinh = null;
            if (DateTime.TryParse(txtNgaySinh.Text, out DateTime dt))
                ngaySinh = dt;
            string cccd = txtCCCD.Text.Trim();

            if (Password != xacNhanMK)
            {
                lblMessage.Text = "Mật khẩu xác nhận không khớp!";
                return;
            }

            // Kết nối database
            string connStr = ConfigurationManager.ConnectionStrings["ConnectionStringName"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                SqlTransaction transaction = conn.BeginTransaction();

                try
                {
                    // 1. Thêm tài khoản vào bảng TaiKhoan
                    string sqlInsertTaiKhoan = @"
                        INSERT INTO TaiKhoan 
                            (Username, Email, Password, LoaiTaiKhoan, NgayTao, TrangThai) 
                        VALUES 
                            (@Username, @Email, @Password, @LoaiTaiKhoan, GETDATE(), 1);
                        SELECT SCOPE_IDENTITY();";

                    SqlCommand cmdTaiKhoan = new SqlCommand(sqlInsertTaiKhoan, conn, transaction);

                    cmdTaiKhoan.Parameters.AddWithValue("@Username", hoTen);
                    cmdTaiKhoan.Parameters.AddWithValue("@Email", email);
                    cmdTaiKhoan.Parameters.AddWithValue("@Password", Password);  // Bạn nhớ kiểm tra hoặc hash trước khi lưu nhé
                    cmdTaiKhoan.Parameters.AddWithValue("@LoaiTaiKhoan", "User"); // hoặc giá trị bạn muốn mặc định

                    int idTaiKhoan = Convert.ToInt32(cmdTaiKhoan.ExecuteScalar());

                    // 2. Thêm thông tin người dùng vào bảng NguoiDung
                    string sqlInsertNguoiDung = @"INSERT INTO NguoiDung 
                            (IDTaiKhoan, HoTen, SDT, GioiTinh, DiaChi, NgaySinh, CCCD, AnhDaiDien) 
                        VALUES 
                            (@IDTaiKhoan, @HoTen, @SDT, @GioiTinh, @DiaChi, @NgaySinh, @CCCD, @AnhDaiDien)";

                    SqlCommand cmdNguoiDung = new SqlCommand(sqlInsertNguoiDung, conn, transaction);

                    cmdNguoiDung.Parameters.AddWithValue("@IDTaiKhoan", idTaiKhoan);
                    cmdNguoiDung.Parameters.AddWithValue("@HoTen", hoTen);
                    cmdNguoiDung.Parameters.AddWithValue("@SDT", sdt);
                    cmdNguoiDung.Parameters.AddWithValue("@GioiTinh", gioiTinh);
                    cmdNguoiDung.Parameters.AddWithValue("@DiaChi", diaChi);
                    cmdNguoiDung.Parameters.AddWithValue("@NgaySinh", (object)ngaySinh ?? DBNull.Value);
                    cmdNguoiDung.Parameters.AddWithValue("@CCCD", cccd);
                    cmdNguoiDung.Parameters.AddWithValue("@AnhDaiDien", DBNull.Value); // Nếu bạn không có ảnh

                    cmdNguoiDung.ExecuteNonQuery();

                    transaction.Commit();

                    lblMessage.Text = "Đăng ký thành công!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;

                    // Bạn có thể redirect tới trang login hoặc trang khác
                    // Response.Redirect("Login.aspx");
                }
                catch (Exception ex)
                {
                    transaction.Rollback();
                    lblMessage.Text = "Lỗi khi đăng ký: " + ex.Message;
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}
