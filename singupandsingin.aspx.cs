using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Techneuron_CRUD_OPERATION_PROJECT
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string sql, path, fname, extension, usertype;
        SqlDataReader dr;

        Class1 obj = new Class1();


        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["user1"] = TextBox8.Text;
            sql = "select usertype from loginTable where username='" + TextBox8.Text + "' and password='" + TextBox9.Text + "'";
            dr = obj.getsql(sql);
            if (dr.Read())
            {
                usertype = dr.GetString(0);
                if (usertype == "admin")
                    Response.Redirect("adminhome.aspx");
                
            }
            else
            {
                Response.Write("<script>alert('Dont Try To Hack You Are Not Admin')</script>");
            }
           
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            TextBox1.Focus();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            Label1.Text = "";
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            upload();
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox7.Text == "" || TextBox10.Text =="")
            {

                Label1.Text = "FILL ALL THE FIELD";
            }
            else
            {
                sql = "select username from  loginTable where username='" + TextBox6.Text + "'  ";
                dr = obj.getsql(sql);
                if (dr.Read())
                {
                    Label1.Text = "username already exist";
                }
                else
                {
                    try
                    {
                        sql = "insert into loginTable values('" + TextBox6.Text + "','" + TextBox7.Text + "','user')";
                        obj.insupdel(sql);
                        sql = "insert into regTable values('" + TextBox1.Text + "'," + TextBox2.Text + ",'" + TextBox3.Text + "'," + TextBox4.Text + ",'" + fname + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
                        obj.insupdel(sql);
                        upload();
                        TextBox1.Focus();
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        TextBox3.Text = "";
                        TextBox4.Text = "";
                        TextBox5.Text = "";
                        TextBox6.Text = "";
                        TextBox7.Text = "";


                        Response.Write("<script>alert('Account Created Welcome Please login')</script>");
                      

                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
                }
            }
        }

        protected void Button3_Click1(object sender, EventArgs e)
        { 

            Session["user1"] = TextBox8.Text;
            sql = "select usertype from logintable where username='" + TextBox8.Text + "' and password='" + TextBox9.Text + "'";
            dr = obj.getsql(sql);
            if (dr.Read())
            {
                usertype = dr.GetString(0);
                if (usertype == "user")
                    //Response.Write("<script>alert('Welcome suceessfulyy Logined')</script>");
                    Response.Redirect("userprofile.aspx");
               
            }
            else
            {
                Response.Write("<script>alert('Account Does not Exists')</script>");
            }
        }

    

        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox4.Attributes.Add("onkeypress", "return checkin()");
            
        }
        private void upload()
        {
            try
            {
                string path = Server.MapPath("~/img/");
                if (FileUpload1.HasFile)
                {
                    extension = System.IO.Path.GetExtension(FileUpload1.FileName.ToLower());
                    if (extension == ".gif" || extension == ".png" || extension == ".jpg" || extension == ".bmp")
                    {
                        fname = "~/img/" + FileUpload1.FileName;
                        FileUpload1.SaveAs(path + FileUpload1.FileName);

                    }
                    else
                    {
                        Response.Write("incorrupt file");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);

            }



        }
       
    }
}
