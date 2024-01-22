using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Techneuron_CRUD_OPERATION_PROJECT
{
    public partial class show : System.Web.UI.Page
    {
        DataTable dt;
        string sql;
        Class1 obj=new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            sql = "select * from regtable";
            dt = obj.gettable(sql);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
}