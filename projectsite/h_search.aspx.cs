using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class h_search : System.Web.UI.Page
{
     SqlConnection con;
      void clear(string msg)
    {
        Response.Write("<script>alert( '"+ msg +"' )</script>");
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

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getcities();
        }
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlDataReader dr = DataManager.GetDataReader("search_hospital", out con, new SqlParameter("@hospital_city", DropDownList1.SelectedItem.Text)
                                                              , new SqlParameter("@hospital_zone", DropDownList2.SelectedItem.Text)
                                                              , new SqlParameter("@hospital_kind", DropDownList3.Text));

        if (dr.HasRows)
        {
            DataList1.DataSource = dr;
            DataList1.DataBind();
        }
        else
        {
            clear("لايوجد نتائج");
        }
        con.Close();
    }

    protected void zones(object sender, EventArgs e)
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