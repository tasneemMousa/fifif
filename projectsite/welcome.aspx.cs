using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        object o = DataManager.ExecuteScalar("get_bb_users",
            new SqlParameter("@user_name",Session["username"]));
        if (o!=null)
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
}