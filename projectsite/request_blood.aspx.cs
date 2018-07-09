using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using ServiceReference2;
using System.Data;
public partial class request_blood : System.Web.UI.Page
{
    WebServiceSoapClient s = new WebServiceSoapClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text=Request.QueryString["name"];
        DataTable dt = s.return_data();
        DropDownList1.DataSource = dt;
        DropDownList1.DataTextField = "f_name";
        DropDownList1.DataBind();

        ListItem lifasela = new ListItem("اختر الفصيلة", "-1");
        DropDownList1.Items.Insert(0, lifasela);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string w = s.request(txtname.Text, DropDownList1.SelectedItem.Text, txtnum.Text, txtphone.Text, txtaddress.Text);
        Label8.Text = w;
    }
}