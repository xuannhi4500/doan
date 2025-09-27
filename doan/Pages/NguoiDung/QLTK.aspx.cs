using System;
using System.Configuration;
using System.Data.SqlClient;

namespace doan.Pages.NguoiDung
{
    public partial class QLTK : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionStringName"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Ví dụ: load thông tin user ID = 1
                LoadUserInfo(1);
            }
        }

        private void LoadUserInfo(int idNguoiDung)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string sql = @"SELECT HoTen, NgaySinh, GioiTinh, SDT, DiaChi, CCCD, AnhDaiDien 
                               FROM NguoiDung 
                               WHERE IDNguoiDung = @ID";

                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@ID", idNguoiDung);

                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    lblHoTen.Text = reader["HoTen"].ToString();
                    lblNgaySinh.Text = Convert.ToDateTime(reader["NgaySinh"]).ToString("dd/MM/yyyy");
                    lblGioiTinh.Text = reader["GioiTinh"].ToString();
                    lblSDT.Text = reader["SDT"].ToString();
                    lblDiaChi.Text = reader["DiaChi"].ToString();
                    lblCCCD.Text = reader["CCCD"].ToString();

                    // Hiển thị avatar
                    string avatar = reader["AnhDaiDien"].ToString();
                    imgAvatar.ImageUrl = "~/Images/" + avatar;
                }
            }
        }

        protected void btnCapNhat_Click(object sender, EventArgs e)
        {
            Response.Redirect("CapNhatProfile.aspx?IDNguoiDung=1");
        }
    }
}
