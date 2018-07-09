using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class spec : System.Web.UI.Page
{
    void clear(string msg)
    {
        Response.Write("<script>alert( '" + msg + "' )</script>");
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "ادخل التخصص")
        {
            
            clear("من فضلك ادخل التخصص");
           
        }
        else
        {
           
            int x = DataManager.ExecuteNonQuery("insert_spec", DataManager.CreateParameter("@spec_name", System.Data.SqlDbType.NVarChar, TextBox1.Text));

            switch (x)
            {
                case 1:
                    clear("تمت الاضافه");
                    GridView1.DataBind();

                    break;
                default:
                    clear("هذا التخصص موجود مسبقا");
                    break;

            }
        }

    }



    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }


}
 
