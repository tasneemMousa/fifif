using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class medical_center : System.Web.UI.Page
{
    SqlConnection con;
    string lathospital;
    string lnghospital;
    string path;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getcities();
        }
        if (Session["username"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            SqlDataReader dr = DataManager.GetDataReader("get_med_cen_data", out con,
          new SqlParameter("@user_name", Session["username"].ToString()));
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    txtname.Text = dr["med_cent_name"].ToString();
                    DropDownList1.SelectedItem.Text = dr["med_cent_city"].ToString();
                    DropDownList2.Enabled = true;
                    DropDownList2.SelectedItem.Text = dr["med_cent_zone"].ToString();
                    addresstxt.Text = dr["med_cent_address"].ToString();
                    phone.Text = dr["med_cent_phone"].ToString();
                    link.Text = dr["med_cent_link"].ToString();
                    Label1.Text = dr["med_cent_lat"].ToString();
                    Label2.Text = dr["med_cent_lng"].ToString();
                    Image1.ImageUrl = txturl.Text = dr["med_cen_logo_img"].ToString();
                }
            }
        }
        object o = DataManager.ExecuteScalar("get_bb_users",
            new SqlParameter("@user_name", Session["username"]));
        if (o != null)
        {
            LinkButton lb1 = (LinkButton)Master.FindControl("lbbb");
            lb1.Text = "بيانات بنك الدم";
        }
        ////////////////////////////////////////////////////////////
        object oh = DataManager.ExecuteScalar("get_hos_users",
            new SqlParameter("@user_name", Session["username"]));
        if (oh != null)
        {
            LinkButton lb1 = (LinkButton)Master.FindControl("lbhos");
            lb1.Text = "بيانات المستشفي";
        }
        ////////////////////////////////////////////////////////////

        object op = DataManager.ExecuteScalar("get_pharm_users",
            new SqlParameter("@user_name", Session["username"]));
        if (op != null)
        {
            LinkButton lb1 = (LinkButton)Master.FindControl("lbpha");
            lb1.Text = "بيانات الصيدلية";
        }
        ////////////////////////////////////////////////////////////
        object oc = DataManager.ExecuteScalar("get_clinic_users",
         new SqlParameter("@user_name", Session["username"]));
        if (oc != null)
        {
            LinkButton lb1 = (LinkButton)Master.FindControl("lbcli");
            lb1.Text = "بيانات العيادة";
        }
        ////////////////////////////////////////////////////////////
        object om = DataManager.ExecuteScalar("get_med_cen_users",
      new SqlParameter("@user_name", Session["username"]));
        if (om != null)
        {
            LinkButton lb1 = (LinkButton)Master.FindControl("lbmedcent");
            lb1.Text = "بيانات المركز الطبي  ";
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
    protected void Button5_Click(object sender, EventArgs e)
    {
        int x = DataManager.ExecuteNonQuery("deletemedcenbyuser",
            new SqlParameter("@user_name", Session["username"].ToString()));
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
    protected void Button7_Click(object sender, EventArgs e)
    {
        Button7.CausesValidation = true;

        lathospital = Page.Request.Form["clat"].ToString();
        lnghospital = Page.Request.Form["clng"].ToString();

        Button7.CausesValidation = true;

        string str = FileUpload1.FileName;
        FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "//uploads//" + str);
        path = "~//uploads//" + str;
        txturl.Text = path;

        int x = DataManager.ExecuteNonQuery("insert_med_cen",
            new SqlParameter("@med_cent_name", txtname.Text),
            new SqlParameter("@med_cent_phone", phone.Text),
            new SqlParameter("@med_cent_city", DropDownList1.SelectedItem.Text),
            new SqlParameter("@med_cent_zone", DropDownList2.SelectedItem.Text),
            new SqlParameter("@med_cent_address", addresstxt.Text),
            new SqlParameter("@med_cent_link", link.Text),
            new SqlParameter("@user_name", Session["username"]),
            new SqlParameter("@med_cent_lat", lathospital),
            new SqlParameter("@med_cent_lng", lnghospital),
            new SqlParameter("@med_cent_logo_image", path));
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Button8.CausesValidation = true;
        int r = DataManager.ExecuteNonQuery("update_med_cen",
         new SqlParameter("@med_cent_name", txtname.Text),
         new SqlParameter("@med_cent_phone", phone.Text),
         new SqlParameter("@med_cent_city", DropDownList1.SelectedItem.Text),
         new SqlParameter("@med_cent_zone", DropDownList1.SelectedItem.Text),
         new SqlParameter("@med_cent_address", addresstxt.Text),
         new SqlParameter("@med_cent_link", link.Text),
         new SqlParameter("@med_cent_lat", Label1.Text),
         new SqlParameter("@med_cent_lng", Label2.Text),
         new SqlParameter("@med_cent_logo_image", txturl.Text),
         new SqlParameter("@user_name", Session["username"].ToString()));
    }
}
