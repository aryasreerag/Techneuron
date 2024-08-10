using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee.Guest
{
    public partial class EmployeeReg : System.Web.UI.Page
    {

        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                txtregdate.Text = DateTime.Now.ToString("dd/MM/yyyy");

            }
        }
    

        protected void Button1_Click(object sender, EventArgs e)
        {
            object ob = db.exescalar("select count(email) from tbl_employee where email='" + txtemail.Text + "'");
            if (Convert.ToInt32(ob) == 0)
            {

                string sql = "insert into tbl_employee values('" + txtempname.Text + "','"+txthousename.Text + "','" + ddldistrictname.SelectedValue + "','" + txtpincode.Text+"','"+txtregdate.Text+"','"+txtemail.Text+"','"+txtcontact.Text+"','" + txtdescription.Text + "')";
                int i = db.exenonquery(sql);
                if (i == 1)
                {
                    Response.Write("<script>alert('Inserted successfully!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Insertion Failed!')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Duplicate exist!')</script>");
            }
            txtempname.Text = "";
            txthousename.Text = "";
            txtpincode.Text = "";
            txtcontact.Text = "";
            txtemail.Text = "";
           
            txtdescription.Text = "";


        }
    }
}