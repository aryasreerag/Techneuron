using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee.Guest
{
    public partial class filtering : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db.fillgrid("select district,count(*) AS count_employee from tbl_employee GROUP BY district", GridView1);
            }

        }
    }
}