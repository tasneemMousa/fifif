using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{
    public static string constr = @"Data Source=.;Initial Catalog=project;Integrated Security=True";
    SqlConnection con = new SqlConnection(constr);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int x = DataManager.ExecuteNonQuery("insert_users",
            new SqlParameter("@user_name", TextBox1.Text),
            new SqlParameter("@user_pass",TextBox2.Text),
            new SqlParameter("user_code", TextBox4.Text));

        if (x == 1)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            Label5.Text = "اسم المستخدم موجود مسبقا";
        }
        
    }
}