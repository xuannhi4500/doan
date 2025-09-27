using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doan.Models
{
    public class PhongTro
    {
        public int IDPhongTro { get; set; }
        public string TenNhaTro { get; set; }
        public string MoTa { get; set; }
        public decimal Gia { get; set; }
        public float DienTich { get; set; }
        public int SoNguoiToiDa { get; set; }
        public string DiaChiDayDu { get; set; }
        public string TinhThanh { get; set; }
        public string QuanHuyen { get; set; }
        public string PhuongXa { get; set; }
        public string ToaDoGEO { get; set; }
        public bool TrangThai { get; set; }
        public bool ConTrong { get; set; }

        // Ảnh đại diện (Url ảnh đầu tiên)
        public string AnhDaiDien { get; set; }
    }

}
