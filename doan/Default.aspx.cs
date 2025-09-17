using System;
using System.Linq;
using doan.DAL;

namespace doan.Pages
{
    public partial class Default : System.Web.UI.Page
    {
        private int PageSize = 4;

        private int CurrentPage
        {
            get
            {
                return ViewState["CurrentPage"] != null ? (int)ViewState["CurrentPage"] : 1;
            }
            set
            {
                ViewState["CurrentPage"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CurrentPage = 1;  // Khởi tạo trang hiện tại là 1
                LoadDanhSachPhongTro();
            }
        }

        private void LoadDanhSachPhongTro()
        {
            PhongTroDAL dal = new PhongTroDAL();
            var allRooms = dal.LayTatCa().ToList();

            int totalRooms = allRooms.Count;
            int totalPages = (int)Math.Ceiling((double)totalRooms / PageSize);

            // Lấy dữ liệu cho trang hiện tại
            var roomsToShow = allRooms
                .Skip((CurrentPage - 1) * PageSize)
                .Take(PageSize)
                .ToList();

            rptPhong.DataSource = roomsToShow;
            rptPhong.DataBind();

            // Cập nhật trạng thái nút chuyển trang
            btnPrev.Enabled = CurrentPage > 1;
            btnNext.Enabled = CurrentPage < totalPages;

            lblPageInfo.Text = $"Trang {CurrentPage} / {totalPages}";
        }

        protected void btnPrev_Click(object sender, EventArgs e)
        {
            if (CurrentPage > 1)
            {
                CurrentPage--;
                LoadDanhSachPhongTro();
            }
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            PhongTroDAL dal = new PhongTroDAL();
            int totalRooms = dal.LayTatCa().Count();
            int totalPages = (int)Math.Ceiling((double)totalRooms / PageSize);

            if (CurrentPage < totalPages)
            {
                CurrentPage++;
                LoadDanhSachPhongTro();
            }
        }
    }
}
