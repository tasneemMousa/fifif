using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "Admin" && TextBox2.Text == "Admin")
        {
            Response.Redirect("c_z.aspx");

        }
        else
        {
            object o = DataManager.ExecuteScalar("users_login",
                new SqlParameter("@user_name", TextBox1.Text),
                new SqlParameter("@user_pass", TextBox2.Text));
            if (o != null)
            {
                Session["username"] = TextBox1.Text;
                Response.Redirect("blood_bank.aspx");
            }
            else
            {
                Label3.Text = "الرقم السري او اسم المستخدم غير صحيح";
            }
        }
    }
}