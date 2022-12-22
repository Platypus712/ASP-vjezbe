using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrijavaOdjava
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated == true)
            {
                Response.Redirect("~/Default.aspx");
            }
        }

        protected void BtnPrijava_Click(object sender, EventArgs e)
        {
            if (this.TxtKorisnickoIme.Text == "abc" && this.TxtLozinka.Text == "123")
            {
                string ime = this.TxtKorisnickoIme.Text;
                bool zapamti = this.cbZapamtiPrijavu.Checked;
                FormsAuthentication.RedirectFromLoginPage(ime, zapamti);
            }
            else
            {
                this.TxtKorisnickoIme.Text = string.Empty;
                this.TxtLozinka.Text = string.Empty;
            }
        }
    }
}