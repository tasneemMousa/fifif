using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
public partial class hospital : System.Web.UI.Page
{
    public static string constr = @"Data Source=.;Initial Catalog=project;Integrated Security=True";
    SqlConnection con = new SqlConnection(constr);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string str = FileUpload1.FileName;
        FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "//uploads//" + str);
        string path = "~//uploads//" + str;

        con.Open();
        SqlCommand cmd = new SqlCommand("insert_hospital", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@hospital_name", SqlDbType.NVarChar).Value = "N"+txtname.Text;
        cmd.Parameters.Add("@hospital_city", SqlDbType.NVarChar).Value = "N" + ddlcity.Text;
        cmd.Parameters.Add("@hospital_zone", SqlDbType.NVarChar).Value = "N" + ddlzone.Text;
        cmd.Parameters.Add("@hospital_address", SqlDbType.NVarChar).Value = "N" + txtaddress.Text;
        cmd.Parameters.Add("@hospital_phone", SqlDbType.BigInt).Value = txtphone.Text;
        cmd.Parameters.Add("@hospital_link", SqlDbType.NVarChar).Value = txtlink.Text;
        cmd.Parameters.Add("@hospital_kind", SqlDbType.NVarChar).Value = "N" + ddlkind.Text;
        cmd.Parameters.Add("@hospital_address", SqlDbType.NVarChar).Value = "N" + txtaddress.Text;
        cmd.Parameters.Add("@user_name", SqlDbType.NVarChar).Value = Session["user"].ToString();
        cmd.Parameters.Add("@hospital_lat",SqlDbType.NVarChar).Value = 34;
        cmd.Parameters.Add("@hospital_lng", SqlDbType.NVarChar).Value = 34;
        cmd.Parameters.Add("@hospital_logo_img", SqlDbType.NVarChar).Value = path;

        int x = cmd.ExecuteNonQuery();
        con.Close();

    }
    protected void btn_update_Click(object sender, EventArgs e)
    {

    }
}