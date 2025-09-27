using System;
using System.ComponentModel.DataAnnotations;  // Thêm using này
using System.ComponentModel.DataAnnotations.Schema;

namespace doan.Models
{
    [Table("NguoiDung")] // Tùy chọn, nếu tên bảng khác tên class
    public class NguoiDung
    {
        [Key]  // Đánh dấu khóa chính
        public int IDNguoiDung { get; set; }

        // Nếu IDTaiKhoan là khóa ngoại, có thể thêm thuộc tính navigation
        public int IDTaiKhoan { get; set; }

        public string HoTen { get; set; }
        public string SDT { get; set; }
        public string GioiTinh { get; set; }
        public string DiaChi { get; set; }
        public DateTime? NgaySinh { get; set; }
        public string CCCD { get; set; }
        public string AnhDaiDien { get; set; }

        // Nếu muốn, thêm navigation property cho khóa ngoại
        // public virtual TaiKhoan TaiKhoan { get; set; }
    }
}
