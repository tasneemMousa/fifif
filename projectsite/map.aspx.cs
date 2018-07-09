using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class map : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected string Mylat
    {

        get
        {
            return Request.QueryString["lat"];
        }

    }
    protected string Mylng
    {
        get
        {
            return Request.QueryString["lng"];
        }
    }
    protected string Myaddress
    {
        get
        {
            return Request.QueryString["address"];
        }
    }
    protected string Myphone
    {
        get
        {
            return Request.QueryString["phone"];
        }
    }
    protected string Myname
    {
        get
        {
            return Request.QueryString["name"];
        }
    }
}