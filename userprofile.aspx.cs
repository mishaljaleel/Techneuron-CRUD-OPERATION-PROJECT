using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Techneuron_CRUD_OPERATION_PROJECT
{
    public partial class userprofile : System.Web.UI.Page
    {
        Class1 obj = new Class1();
        string sql;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                try
            {
                sql = "SELECT name,age,discription,phone,username,image,email from regTable where username='" + Session["user1"].ToString() + "'";

                dr = obj.getsql(sql);
                if (dr.Read())
                {

                    Label1.Text = dr["username"].ToString();
                    Label2.Text = dr["discription"].ToString();
                    Label3.Text = dr["name"].ToString();
                    Image1.ImageUrl = dr["image"].ToString();
                       
                        Label7.Text = dr["phone"].ToString();
                    Label5.Text = dr["age"].ToString();
                    Label6.Text = dr["email"].ToString();
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userupdationpage.aspx");
        }
    }
}