using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using doan.DAL;
using doan.Models;



namespace doan.DAL
{
    public class PhongTroDAL
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["ConnectionStringName"].ConnectionString;

        public List<PhongTro> LayTatCa()
        {
            List<PhongTro> ds = new List<PhongTro>();
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionStringName"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string sql = @"
            SELECT pt.*, 
                   (SELECT TOP 1 UrlHinhAnh 
                    FROM HinhAnhPhongTro ha 
                    WHERE ha.IDPhongTro = pt.IDPhongTro
                    ORDER BY IDHinhAnh ASC) AS AnhDaiDien
            FROM PhongTro pt
            WHERE pt.TrangThai = 1 AND pt.ConTrong = 1";

                SqlCommand cmd = new SqlCommand(sql, conn);
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    PhongTro pt = new PhongTro()
                    {
                        IDPhongTro = Convert.ToInt32(reader["IDPhongTro"]),
                        TenNhaTro = reader["TenNhaTro"].ToString(),
                        MoTa = reader["MoTa"].ToString(),
                        Gia = Convert.ToDecimal(reader["Gia"]),
                        DienTich = float.Parse(reader["DienTich"].ToString()),
                        SoNguoiToiDa = Convert.ToInt32(reader["SoNguoiToiDa"]),
                        DiaChiDayDu = reader["DiaChiDayDu"].ToString(),
                        AnhDaiDien = reader["AnhDaiDien"] != DBNull.Value ? reader["AnhDaiDien"].ToString() : "/Assets/img/no-image.jpg"
                    };
                    ds.Add(pt);
                }
            }

            return ds;
        }

    }
}
