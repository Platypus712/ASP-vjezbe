using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SessionPrimjer
{
    public partial class Stranica_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bntPosalji_Click(object sender, EventArgs e)
        {
            Session.Add("text", this.txtUnos.Text);
            Response.Redirect("~/Stranica-2.aspx");
        }
    }
}