using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using ServiceReference2;
using System.Data;
using System.Data.SqlClient;
public partial class bb_motbr3 : System.Web.UI.Page
{
    WebServiceSoapClient s = new WebServiceSoapClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_bb_name.Text=Request.QueryString["name"];
        DataTable dt = s.return_data();
        ddltype.DataSource = dt;
        ddltype.DataTextField = "f_name";
        ddltype.DataBind();

        ListItem lifasela = new ListItem("اختر الفصيلة", "-1");
        ddltype.Items.Insert(0, lifasela);

        ListItem li = new ListItem("اختر النوع", "-1");
        ddlsex.Items.Insert(0, li);



    }
    protected void btn_add_motbraa_Click(object sender, EventArgs e)
    {
        string q= s.insert_data(txtname.Text,
             ddltype.SelectedItem.Text,
             txtphone.Text,
             ddlsex.SelectedItem.Text,
             txtaddress.Text);


        Label8.Text = q;


    }
}