using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace doan.Models
{
    [Table("TaiKhoan")]
    public class TaiKhoan
    {
        [Key]
        public int IDTaiKhoan { get; set; }

        [Required]
        [StringLength(100)]
        public string Username { get; set; }

        [Column("Password")]
        [Required]
        [StringLength(64)]
        public string Password { get; set; }

        [StringLength(50)]
        public string LoaiTaiKhoan { get; set; }

        public DateTime? NgayTao { get; set; }

        public bool? TrangThai { get; set; }

        [StringLength(100)]
        public string Email { get; set; }

        public DateTime? LastLogin { get; set; }
    }
}
