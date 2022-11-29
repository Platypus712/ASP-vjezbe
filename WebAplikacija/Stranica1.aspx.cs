using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAplikacija
{
    public partial class Stranica1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            //definiranje odredišta na koje će se preusmjeriti korisnik iz zadataka-3
            Response.Redirect("Stranica2.aspx");
        }
    }
}