using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using doan.DAL;

namespace doan.Pages.PhongTro
{
    public partial class DanhSach : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PhongTroDAL dal = new PhongTroDAL();
                gvPhongTro.DataSource = dal.LayTatCa();
                gvPhongTro.DataBind();
            }
        }
    }
}