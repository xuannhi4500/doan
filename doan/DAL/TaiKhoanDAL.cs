using System.Linq;
using doan.Models;
// Đảm bảo đúng namespace chứa DoAnDbContext và model TaiKhoan

namespace doan.DAL
{
    public class TaiKhoanDAL
    {
        private DoAnDbContext db = new DoAnDbContext();

        // Hàm kiểm tra đăng nhập
        public bool KiemTraDangNhap(string username, string password)
        {
            // Tìm tài khoản đúng username, password và đang hoạt động (TrangThai = true)
            var user = db.TaiKhoans.FirstOrDefault(t => t.Username == username && t.Password == password && t.TrangThai == true);
            return user != null;
        }
    }
}
