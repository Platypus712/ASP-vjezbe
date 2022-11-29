using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SessionPrimjer
{
    public partial class Stranica_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["text"] != null)
            {
                this.lblUNos.Text = (string)Session["text"];
            }
            else
            {
                Response.Redirect("~/Stranica-1.aspx");
            }
            
        }
    }
}