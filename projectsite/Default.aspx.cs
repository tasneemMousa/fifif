using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    void clear(string msg)
    {
        Response.Write("<script>alert( '" + msg + "' )</script>");
    }
    private void PopulateContinentsDropDownList()
    {
        DropDownList2.DataSource = SqlDataSource1;
        DropDownList2.DataTextField = "spec_name";
        DropDownList2.DataValueField = "spec_id";
        DropDownList2.DataBind();

        ListItem liCity = new ListItem("اختار التخصص", "-1");
        DropDownList2.Items.Insert(0, liCity);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        PopulateContinentsDropDownList();
    }
    protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        int x = DataManager.ExecuteNonQuery("delete_spec", DataManager.CreateParameter("@spec_name", System.Data.SqlDbType.NVarChar, DropDownList2.SelectedItem.Text));
        switch (x)
        {
            case 1:
                clear("تم الحذف");
                PopulateContinentsDropDownList();
                break;
            default:
                clear("من فضلك اختر التخصص");
                break;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int x = DataManager.ExecuteNonQuery("insert_spec", DataManager.CreateParameter("@spec_name", System.Data.SqlDbType.NVarChar, TextBox1.Text));

        switch (x)
        {
            case 1:
                clear("تمت الاضافه");
                PopulateContinentsDropDownList();
                break;
            default:
                clear("هذا التخصص موجود مسبقا");
                break;


        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        RequiredFieldValidator2.Enabled = false;

    }
}
