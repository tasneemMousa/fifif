using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class pharmacy : System.Web.UI.Page
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
            SqlDataReader dr = DataManager.GetDataReader("get_pharm_data", out con,
                new SqlParameter("@user_name", Session["username"].ToString()));
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    txtname.Text = dr["pharm_name"].ToString();
                    DropDownList1.SelectedItem.Text = dr["pharm_city"].ToString();
                    DropDownList2.Enabled = true;
                    DropDownList2.SelectedItem.Text = dr["pharm_zone"].ToString();
                    addresstxt.Text = dr["pharm_address"].ToString();
                    phone.Text = dr["pharm_phone"].ToString();
                    link.Text = dr["pharm_link"].ToString();
                    Label1.Text = dr["pharm_lat"].ToString();
                    Label2.Text = dr["pharm_lng"].ToString();
                    Image1.ImageUrl = txturl.Text = dr["pharm_logo_img"].ToString();
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
    protected void Button3_Click(object sender, EventArgs e)
    {
        Button3.CausesValidation = true;

        lathospital = Page.Request.Form["clat"].ToString();
        lnghospital = Page.Request.Form["clng"].ToString();

        string str = FileUpload1.FileName;
        FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "//uploads//" + str);
        path = "~//uploads//" + str;
        txturl.Text = path;

        int x = DataManager.ExecuteNonQuery("insert_pharmacy",
            new SqlParameter("@pharm_name", txtname.Text),
            new SqlParameter("@pharm_phone", phone.Text),
            new SqlParameter("@pharm_city", DropDownList1.SelectedItem.Text),
            new SqlParameter("@pharm_zone", DropDownList2.SelectedItem.Text),
            new SqlParameter("@pharm_address", addresstxt.Text),
            new SqlParameter("@pharm_link", link.Text),
            new SqlParameter("@user_name", Session["username"]),
            new SqlParameter("@pharm_lat", lathospital),
            new SqlParameter("@pharm_lng", lnghospital),
            new SqlParameter("@pharm_logo_image", path));
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button2.CausesValidation = true;
        int x = DataManager.ExecuteNonQuery("update_pharmacy",
        new SqlParameter("@pharm_name", txtname.Text),
        new SqlParameter("@pharm_city", DropDownList1.SelectedItem.Text),
        new SqlParameter("@pharm_zone", DropDownList1.SelectedItem.Text),
        new SqlParameter("@pharm_address", addresstxt.Text),
        new SqlParameter("@pharm_phone", phone.Text),
        new SqlParameter("@pharm_link", link.Text),
        new SqlParameter("@pharm_lat", Label1.Text),
        new SqlParameter("@pharm_lng", Label2.Text),
        new SqlParameter("@pharm_logo_image", txturl.Text),
        new SqlParameter("@user_name", Session["username"].ToString()));

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int x = DataManager.ExecuteNonQuery("deletepharmbyuser",
           new SqlParameter("@username", Session["username"].ToString()));

        txtname.Text = addresstxt.Text = phone.Text = link.Text = Label1.Text = Label2.Text = txturl.Text = "";
        getcities();
        Image1.ImageUrl = null;
    }
}