using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using ServiceReference1;
using System.Data;

public partial class doctor_reservation : System.Web.UI.Page
{
    WebServiceSoapClient s = new WebServiceSoapClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt= s.return_data();
        DropDownList1.DataSource = dt;
        DropDownList1.DataTextField = "name";
        DropDownList1.DataBind();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        s.insert_patient(txtname.Text, DropDownList1.SelectedItem.Text, txtphone.Text, txtage.Text);
        Label2.Text = DropDownList1.SelectedItem.Text+"تم الحجز في ميعاد ";
    }
}