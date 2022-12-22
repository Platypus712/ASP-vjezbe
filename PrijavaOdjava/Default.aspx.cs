using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrijavaOdjava
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated == false)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                this.lblKorisnickoIme.Text = User.Identity.Name;
            }
        }

        protected void btnOdjava_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            //Response.Redirect("~/Login.aspx");
            FormsAuthentication.RedirectToLoginPage();
        }
    }
}