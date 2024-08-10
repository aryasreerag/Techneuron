using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee.Guest
{
    public partial class employeeview : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db.fillgrid("select * from tbl_employee", GridView1);
            }


        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            db.fillgrid("select * from tbl_employee", GridView1);
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            db.fillgrid("select * from tbl_employee", GridView1);

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();

            TextBox txtempname = new TextBox();
            txtempname = (TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0];

            TextBox txthousename = new TextBox();
            txthousename = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];


            TextBox txtpincode = new TextBox();
            txtpincode = (TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0];



            TextBox txtemail = new TextBox();
            txtemail = (TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0];

            TextBox txtcontact = new TextBox();
            txtcontact = (TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0];


            TextBox txtdescription = new TextBox();
            txtdescription = (TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0];

            int i = db.exenonquery("update tbl_employee set empname='" + txtempname.Text + "',housename='" + txthousename.Text + "',pincode='" + txtpincode.Text + "',email='" + txtemail.Text + "',contact='" + txtcontact.Text + "',description='" + txtdescription.Text + "' where employee_id='" + id + "'");
            GridView1.EditIndex = -1;
            db.fillgrid("select * from tbl_employee", GridView1);



        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            db.exenonquery("delete from tbl_employee where employee_id=" + id + "");
            db.fillgrid("select * from tbl_employee", GridView1);

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            db.fillgrid("select * from tbl_employee", GridView1);
        }
    }
}