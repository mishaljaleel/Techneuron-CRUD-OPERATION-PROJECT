using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Techneuron_CRUD_OPERATION_PROJECT
{
    public partial class register : System.Web.UI.Page
    {
        string sql;

        Class1 obj=new Class1();

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Focus();
            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox3.Text = " ";
            TextBox4.Text = " ";
            TextBox5.Text = " ";
            TextBox6.Text = " ";
            TextBox7.Text = " ";

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox4.Attributes.Add("onkeypress", "return checkin()");
        }
       


        protected void Button1_Click1(object sender, EventArgs e)
        { 
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox7.Text == "")
            {

                Label1.Text = "FILL ALL THE FIELD";
            }
            else
            {
                try
                {
                    sql = "update  loginTable set password='" + TextBox6.Text + "' where username='" + Session["user1"] + "'";
                    obj.insupdel(sql);
                    sql = "update regTable set name='" + TextBox1.Text + "',age=" + TextBox2.Text + ",discription='" + TextBox3.Text + "',phone=" + TextBox4.Text + ",email='" + TextBox5.Text + "' where username='" + Session["user1"]+"'";
                    obj.insupdel(sql);
                    Response.Write("<script>alert('data updated successfully')</script>");
                    TextBox1.Focus();
                    TextBox1.Text = " ";
                    TextBox2.Text = " ";
                    TextBox3.Text = " ";
                    TextBox4.Text = " ";
                    TextBox5.Text = " ";
                    TextBox6.Text = " ";
                    TextBox7.Text = " ";


                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }




            

        }
    }
}