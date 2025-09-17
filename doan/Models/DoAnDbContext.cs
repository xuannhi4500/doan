using System.Data.Entity;
using doan.Models; // Nếu class TaiKhoan, NguoiDung nằm trong namespace này

namespace doan.DAL
{
    public class DoAnDbContext : DbContext
    {
        // Constructor gọi base với tên chuỗi kết nối trong Web.config
        public DoAnDbContext() : base("name=ConnectionStringName")
        {
        }

        // Các bảng trong CSDL (bảng TaiKhoan và NguoiDung)
        public DbSet<TaiKhoan> TaiKhoans { get; set; }
        public DbSet<NguoiDung> NguoiDungs { get; set; }

        // Override OnModelCreating nếu cần cấu hình thêm
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            // Nếu cần khai báo khóa chính hoặc mapping bảng riêng cho NguoiDung:
            // modelBuilder.Entity<NguoiDung>().HasKey(nd => nd.IDNguoiDung);
            // modelBuilder.Entity<TaiKhoan>().HasKey(tk => tk.IDTaiKhoan);
        }
    }
}
