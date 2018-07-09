using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
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
            SqlDataReader dr = DataManager.GetDataReader("get_hos_data", out con,
          new SqlParameter("@user_name", Session["username"].ToString()));
            if (dr.HasRows)
            {
                btn_insrt.Enabled = false;
                while (dr.Read())
                {
                    txtname.Text = dr["hospital_name"].ToString();
                    DropDownList1.SelectedItem.Text = dr["hospital_city"].ToString();
                    DropDownList2.Enabled = true;
                    DropDownList2.SelectedItem.Text = dr["hospital_zone"].ToString();
                    addresstxt.Text = dr["hospital_address"].ToString();
                    phone.Text = dr["hospital_phone"].ToString();
                    link.Text = dr["hospital_link"].ToString();
                    Label1.Text = dr["hospital_lat"].ToString();
                    Label2.Text = dr["hospital_lng"].ToString();
                    Image1.ImageUrl = txturl.Text = dr["hospital_logo_img"].ToString();
                    DropDownList3.SelectedItem.Text = dr["hospital_kind"].ToString();
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void btn_insrt_Click(object sender, EventArgs e)
    {

        btn_insrt.CausesValidation = true;

        lathospital = Page.Request.Form["lath"].ToString();
        lnghospital = Page.Request.Form["lngh"].ToString();

        string str = FileUpload1.FileName;
        FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "//uploads//" + str);
        path = "~//uploads//" + str;
        txturl.Text = path;

        int x = DataManager.ExecuteNonQuery("insert_hospital",
            new SqlParameter("@hospital_name", txtname.Text),
            new SqlParameter("@hospital_city", DropDownList1.SelectedItem.Text),
            new SqlParameter("@hospital_zone", DropDownList2.SelectedItem.Text),
            new SqlParameter("@hospital_address", addresstxt.Text),
            new SqlParameter("@hospital_phone", phone.Text),
            new SqlParameter("@hospital_link", link.Text),
            new SqlParameter("@hospital_kind", DropDownList3.SelectedItem.Text),
            new SqlParameter("@user_name", Session["username"]),
            new SqlParameter("@hospital_lat", lathospital),
            new SqlParameter("@hospital_lng", lnghospital),
            new SqlParameter("@hospital_logo_image", path));
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
    protected void btn_update_Click(object sender, EventArgs e)
    {
        btn_update.CausesValidation = true;
        this.RequiredFieldValidator8.IsValid = false;
        int r = DataManager.ExecuteNonQuery("update_hospital",
        new SqlParameter("@hospital_name", txtname.Text),
        new SqlParameter("@hospital_city", DropDownList1.SelectedItem.Text),
        new SqlParameter("@hospital_zone", DropDownList1.SelectedItem.Text),
        new SqlParameter("@hospital_address", addresstxt.Text),
        new SqlParameter("@hospital_phone", phone.Text),
        new SqlParameter("@hospital_link", link.Text),
        new SqlParameter("@hospital_kind",DropDownList3.SelectedItem.Text),
        new SqlParameter("@hospital_lat", Label1.Text),
        new SqlParameter("@hospital_lng", Label2.Text),
        new SqlParameter("@hospital_logo_image", txturl.Text),
        new SqlParameter("@user_name", Session["username"].ToString()));
    }
    protected void btn_delete_Click(object sender, EventArgs e)
    {

        int x = DataManager.ExecuteNonQuery("deletehosbyuser",
            new SqlParameter("@user_name", Session["username"].ToString()));

        txtname.Text = addresstxt.Text = phone.Text = link.Text = Label1.Text = Label2.Text = txturl.Text = "";
        getcities();
        Image1.ImageUrl = null;
    }
}