using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ph_search : System.Web.UI.Page
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

        ListItem liCity = new ListItem("اختر المدينة", "-1");
        DropDownList1.Items.Insert(0, liCity);

        ListItem liZone = new ListItem("اخترالمنطقة", "-1");
        DropDownList2.Items.Insert(0, liZone);

        DropDownList2.Enabled = false;

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

        SqlConnection con;
        SqlDataReader dr = DataManager.GetDataReader("search_pharmacy", out con,
            new SqlParameter("@pharm_city", DropDownList1.SelectedItem.Text),
            new SqlParameter("@pharm_zone", DropDownList2.SelectedItem.Text));


        if (dr.HasRows)
        {
            DataList1.DataSource = dr;
            DataList1.DataBind();
        }
        else
        {
            clear("Not Found");
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
}