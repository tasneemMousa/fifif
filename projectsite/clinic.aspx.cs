using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class clinic : System.Web.UI.Page
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
            SqlDataReader dr = DataManager.GetDataReader("get_clinic_data", out con,
                new SqlParameter("@user_name", Session["username"].ToString()));
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    txtname.Text = dr["clinic_name"].ToString();
                    DropDownList1.SelectedItem.Text = dr["clinic_city"].ToString();
                    DropDownList2.Enabled = true;
                    DropDownList2.SelectedItem.Text = dr["clinic_zone"].ToString();
                    DropDownList3.SelectedItem.Text = dr["doc_spec"].ToString();
                    addresstxt.Text = dr["clinic_address"].ToString();
                    phone.Text = dr["clinic_phone"].ToString();
                    link.Text = dr["clinic_link"].ToString();
                    Label1.Text = dr["clinic_lat"].ToString();
                    Label2.Text = dr["clinic_lng"].ToString();
                    Image1.ImageUrl = dr["clinic_logo_img"].ToString();
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
        int x = DataManager.ExecuteNonQuery("insert_clinic",
            new SqlParameter("@clinic_name", txtname.Text),
            new SqlParameter("@clinic_city", DropDownList1.SelectedItem.Text),
            new SqlParameter("@clinic_zone", DropDownList2.SelectedItem.Text),
            new SqlParameter("@clinic_address", addresstxt.Text),
            new SqlParameter("@clinic_phone", phone.Text),
            new SqlParameter("@clinic_link", link.Text),
            new SqlParameter("@user_name", Session["username"]),
            new SqlParameter("@doc_spec",DropDownList3.SelectedItem.Text),
            new SqlParameter("@clinic_lat", lathospital),
            new SqlParameter("@clinic_lng", lnghospital),
            new SqlParameter("@clinic_logo_image", path));
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Button5.CausesValidation = true;
        this.RequiredFieldValidator8.Enabled = false;
        DataManager.ExecuteNonQuery("update_clinic",
         new SqlParameter("@clinic_name", txtname.Text),
         new SqlParameter("@clinic_city", DropDownList1.SelectedItem.Text),
         new SqlParameter("@clinic_zone", DropDownList1.SelectedItem.Text),
         new SqlParameter("@clinic_address", addresstxt.Text),
         new SqlParameter("@clinic_phone", phone.Text),
         new SqlParameter("@clinic_link", link.Text),
         new SqlParameter("@doc_spec", DropDownList3.SelectedItem.Text),
         new SqlParameter("@clinic_lat", Label1.Text),
         new SqlParameter("@clinic_lng", Label2.Text),
         new SqlParameter("@clinic_logo_image", txturl.Text),
         new SqlParameter("@user_name", Session["username"].ToString()));
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        int x = DataManager.ExecuteNonQuery("deleteclinicbyuser",
            new SqlParameter("@username", Session["username"].ToString()));

        txtname.Text = addresstxt.Text = phone.Text = link.Text = Label1.Text = Label2.Text = txturl.Text = "";
        getcities();
        Image1.ImageUrl = null;
    }
}