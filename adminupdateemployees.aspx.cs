using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Techneuron_CRUD_OPERATION_PROJECT
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Class1 obj = new Class1();
        string sql;
        DataTable dt;

        private void grid()
        {
            sql = "select * from regTable";
            dt = obj.gettable(sql);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                grid();

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            string name = GridView1.Rows[e.NewEditIndex].Cells[1].Text;
            string age = GridView1.Rows[e.NewEditIndex].Cells[2].Text;
            string discription = GridView1.Rows[e.NewEditIndex].Cells[3].Text;
            string email = GridView1.Rows[e.NewEditIndex].Cells[4].Text;
            string phone = GridView1.Rows[e.NewEditIndex].Cells[5].Text;


            grid();



        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string s = GridView1.DataKeys[e.RowIndex].Value.ToString();
            string name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string age= ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string discription = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string phone = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string email = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
           

            sql = "update regTable set name='" + name + "',discription='" + discription + "',email='"+email+ "',phone=" + phone + ",age="+age+" where Id = " + s+"";
            obj.insupdel(sql);
            Response.Write("<script>alert('data has updated')</script>");
            GridView1.EditIndex = -1;
            grid();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string s = GridView1.DataKeys[e.RowIndex].Value.ToString();
            sql = "delete from RegTable where Id=" + s + "";
            obj.insupdel(sql); grid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            grid();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}