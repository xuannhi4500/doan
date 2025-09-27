using doan.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace doan.Pages.NguoiDung
{
    public partial class Xemphongtrochitiet : System.Web.UI.Page
    {
          private PhongTroDAL phongTroDAL = new PhongTroDAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HienThiDanhSachPhong();
            }
        }

        private void HienThiDanhSachPhong(string sort = "")
        {
            List<PhongTro> ds = phongTroDAL.LayTatCa();

            if (!string.IsNullOrEmpty(sort))
            {
                switch (sort)
                {
                    case "gia_tang":
                        ds.Sort((a, b) => a.Gia.CompareTo(b.Gia));
                        break;
                    case "gia_giam":
                        ds.Sort((a, b) => b.Gia.CompareTo(a.Gia));
                        break;
                    case "dien_tich":
                        ds.Sort((a, b) => a.DienTich.CompareTo(b.DienTich));
                        break;
                }
            }

            if (ds != null && ds.Count > 0)
            {
                // phòng chính
                var mainPhong = ds[0];
                imgPhong.ImageUrl = mainPhong.AnhDaiDien;
                lblDiaChi.Text = mainPhong.DiaChiDayDu;
                lblGia.Text = mainPhong.Gia.ToString("N0") + " / tháng";
                lblDienTich.Text = mainPhong.DienTich + " m²";
                lblSoNguoi.Text = mainPhong.SoNguoiToiDa.ToString();

                // danh sách phụ
                rptPhong.DataSource = ds;
                rptPhong.DataBind();
            }
        }

        protected void ddlSort_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sortValue = ddlSort.SelectedValue;
            HienThiDanhSachPhong(sortValue);
        }
    }
}
