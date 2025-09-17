using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using doan.Models;

namespace doan.DAL
{
    public class NguoiDungDAL
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["ConnectionStringName"].ConnectionString;

        // Lấy danh sách tất cả người dùng
        public List<NguoiDung> LayTatCa()
        {
            List<NguoiDung> list = new List<NguoiDung>();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string sql = "SELECT * FROM NguoiDung";
                SqlCommand cmd = new SqlCommand(sql, conn);
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    NguoiDung nd = new NguoiDung()
                    {
                        IDNguoiDung = Convert.ToInt32(reader["IDNguoiDung"]),
                        IDTaiKhoan = Convert.ToInt32(reader["IDTaiKhoan"]),
                        HoTen = reader["HoTen"] as string,
                        SDT = reader["SDT"] as string,
                        GioiTinh = reader["GioiTinh"] as string,
                        DiaChi = reader["DiaChi"] as string,
                        NgaySinh = reader["NgaySinh"] == DBNull.Value ? (DateTime?)null : Convert.ToDateTime(reader["NgaySinh"]),
                        CCCD = reader["CCCD"] as string,
                        AnhDaiDien = reader["AnhDaiDien"] as string
                    };
                    list.Add(nd);
                }

                reader.Close();
            }

            return list;
        }

        // Thêm mới người dùng
        public bool ThemNguoiDung(NguoiDung nd)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string sql = @"INSERT INTO NguoiDung (IDTaiKhoan, HoTen, SDT, GioiTinh, DiaChi, NgaySinh, CCCD, AnhDaiDien)
                               VALUES (@IDTaiKhoan, @HoTen, @SDT, @GioiTinh, @DiaChi, @NgaySinh, @CCCD, @AnhDaiDien)";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@IDTaiKhoan", nd.IDTaiKhoan);
                cmd.Parameters.AddWithValue("@HoTen", (object)nd.HoTen ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@SDT", (object)nd.SDT ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@GioiTinh", (object)nd.GioiTinh ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@DiaChi", (object)nd.DiaChi ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@NgaySinh", (object)nd.NgaySinh ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@CCCD", (object)nd.CCCD ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@AnhDaiDien", (object)nd.AnhDaiDien ?? DBNull.Value);

                conn.Open();
                int rows = cmd.ExecuteNonQuery();

                return rows > 0;
            }
        }

        // Cập nhật người dùng
        public bool CapNhatNguoiDung(NguoiDung nd)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string sql = @"UPDATE NguoiDung SET 
                                HoTen = @HoTen,
                                SDT = @SDT,
                                GioiTinh = @GioiTinh,
                                DiaChi = @DiaChi,
                                NgaySinh = @NgaySinh,
                                CCCD = @CCCD,
                                AnhDaiDien = @AnhDaiDien
                               WHERE IDNguoiDung = @IDNguoiDung";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@HoTen", (object)nd.HoTen ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@SDT", (object)nd.SDT ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@GioiTinh", (object)nd.GioiTinh ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@DiaChi", (object)nd.DiaChi ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@NgaySinh", (object)nd.NgaySinh ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@CCCD", (object)nd.CCCD ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@AnhDaiDien", (object)nd.AnhDaiDien ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@IDNguoiDung", nd.IDNguoiDung);

                conn.Open();
                int rows = cmd.ExecuteNonQuery();

                return rows > 0;
            }
        }

        // Xóa người dùng theo ID
        public bool XoaNguoiDung(int idNguoiDung)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string sql = "DELETE FROM NguoiDung WHERE IDNguoiDung = @IDNguoiDung";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@IDNguoiDung", idNguoiDung);

                conn.Open();
                int rows = cmd.ExecuteNonQuery();

                return rows > 0;
            }
        }

        // Lấy người dùng theo ID
        public NguoiDung LayTheoID(int idNguoiDung)
        {
            NguoiDung nd = null;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string sql = "SELECT * FROM NguoiDung WHERE IDNguoiDung = @IDNguoiDung";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@IDNguoiDung", idNguoiDung);

                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    nd = new NguoiDung()
                    {
                        IDNguoiDung = Convert.ToInt32(reader["IDNguoiDung"]),
                        IDTaiKhoan = Convert.ToInt32(reader["IDTaiKhoan"]),
                        HoTen = reader["HoTen"] as string,
                        SDT = reader["SDT"] as string,
                        GioiTinh = reader["GioiTinh"] as string,
                        DiaChi = reader["DiaChi"] as string,
                        NgaySinh = reader["NgaySinh"] == DBNull.Value ? (DateTime?)null : Convert.ToDateTime(reader["NgaySinh"]),
                        CCCD = reader["CCCD"] as string,
                        AnhDaiDien = reader["AnhDaiDien"] as string
                    };
                }

                reader.Close();
            }

            return nd;
        }
    }
}
