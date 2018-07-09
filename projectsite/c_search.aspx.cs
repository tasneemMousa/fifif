using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class c_search : System.Web.UI.Page
{
    SqlConnection con;
    void clear(string msg)
    {
        Response.Write("<script>alert( '" + msg + "' )</script>");
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getcities();
           
        }
    }
    private void getcities()
    {
        DropDownList1.DataSource = SqlDataSource1;
        DropDownList1.DataTextField = "city_name";
        DropDownList1.DataValueField = "city_id";
        DropDownList1.DataBind();

        DropDownList3.DataSource = SqlDataSource2;
        DropDownList3.DataTextField = "spec_name";
        DropDownList3.DataValueField = "spec_id";
        DropDownList3.DataBind();

        ListItem liCity = new ListItem("اختر المدينة", "-1");
        DropDownList1.Items.Insert(0, liCity);

        ListItem liZone = new ListItem("اختر المنطقة", "-1");
        DropDownList2.Items.Insert(0, liZone);

        ListItem lispec = new ListItem("اختر التخصص", "-1");
        DropDownList3.Items.Insert(0, lispec);

        DropDownList2.Enabled = false;

    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {


        SqlConnection con;
        SqlDataReader dr = DataManager.GetDataReader("search_clinic",out con,
            new SqlParameter("@clinic_city",DropDownList1.SelectedItem.Text),
            new SqlParameter("@clinic_zone",DropDownList2.SelectedItem.Text),
            new SqlParameter("@doc_spec",DropDownList3.SelectedItem.Text));


        if (dr.HasRows)
        {
            DataList1.DataSource = dr;
            DataList1.DataBind();
        }
        else
        {
            clear("لايوجد بيانات");
        }
        con.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {


        SqlDataReader dr = DataManager.GetDataReader("getZonesbycitiesID", out con,
           new SqlParameter("@city_id", DropDownList1.SelectedValue));
        if (dr.HasRows)
        {
            DropDownList2.DataSource = dr;
            DropDownList2.Enabled = true;
            DropDownList2.DataTextField = "zone_name";
            DropDownList2.DataValueField = "zone_id";
            DropDownList2.DataBind();
        }
    }
    protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}