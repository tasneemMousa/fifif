using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class c_z : System.Web.UI.Page
{
    void clear(string msg)
    {
        Response.Write("<script>alert( '" + msg + "' )</script>");
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (TextBox2.Text == "ادخل المدينه")
        {
            Label6.Visible = true;
            Label6.Text = "من فضلك ادخل اسم المدينه";
        }

        else
        {
            int x = DataManager.ExecuteNonQuery("insert_city", DataManager.CreateParameter("@city", System.Data.SqlDbType.NVarChar, TextBox2.Text));
            switch (x)
            {
                case 1:
                    Label6.Visible = true;
                    Label6.Text = "تمت الاضافه";
                    DropDownList1.DataBind();
                    DropDownList2.DataBind();


                    break;
                default:
                    Label6.Visible = true;
                    Label6.Text = "هذه المدينه موجوده مسبقا";
                    break;
            }
        }
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Label9.Visible = true;
        if (DropDownList2.SelectedItem.Text == "اختر المدينه")
        {
            Label9.Text = ("من فضلك اخنر المدينه");
        }
        else
        {
            int z = DataManager.ExecuteNonQuery("delete_city", DataManager.CreateParameter("@city_id", System.Data.SqlDbType.Int, DropDownList2.SelectedItem.Value));
            Label9.Text = ("تم الحذف");
            DropDownList1.DataBind();
            DropDownList2.DataBind();
            DropDownList3.DataBind();

        }
        MultiView1.ActiveViewIndex = 2;
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button16_Click(object sender, EventArgs e)
    {
        Label10.Visible = true;
        int z = DataManager.ExecuteNonQuery("delete_city", DataManager.CreateParameter("@city_id", System.Data.SqlDbType.Int, DropDownList2.SelectedItem.Value));
        Label10.Text=("تم الحذف");
        DropDownList1.DataBind();
        DropDownList2.DataBind();
        DropDownList4.DataBind();
        DropDownList3.DataBind();

    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList3.SelectedValue == "-1")
        {
            DropDownList4.SelectedIndex = 0;
            DropDownList4.Enabled = false;
        }
        else
        {
            SqlConnection con;
            DropDownList4.Enabled = true;
            SqlDataReader d = DataManager.GetDataReader("getZonesbycitiesID", out con, new SqlParameter("@city_id", DropDownList1.SelectedValue));
            DropDownList4.DataSource = d;
            DropDownList4.DataTextField = "zone_name";
            DropDownList4.DataValueField = "zone_id";
            DropDownList4.DataBind();

            con.Close();
        }
        MultiView1.ActiveViewIndex = 3;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {

        MultiView1.ActiveViewIndex = 1;

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
    }
    protected void Button17_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void Button19_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button20_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button22_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void Button21_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button18_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button15_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
    }
    protected void Button23_Click(object sender, EventArgs e)
    {
        if (TextBox3.Text == "ادخل المنطقه")
        {
            Label7.Visible = true;
            Label7.Text = ("من فضلك ادخل المنطقه");
        }
        else
        {
            int x = DataManager.ExecuteNonQuery("insert_zone", DataManager.CreateParameter("@zone", System.Data.SqlDbType.NVarChar, TextBox3.Text),
                                                               DataManager.CreateParameter("@city_id", System.Data.SqlDbType.Int, DropDownList1.SelectedItem.Value));

            switch (x)
            {
                case 1:
                    Label7.Visible = true;
                    Label7.Text = "تمت الاضافه";
                    DropDownList1.DataBind();
                    DropDownList2.DataBind();
                    DropDownList4.DataBind();

                    break;
                default:
                    Label7.Visible = true;
                    Label7.Text = ("هذه المنطقه موجوده مسبقا");
                    break;
            }
        }
        MultiView1.ActiveViewIndex = 1;
    }
}