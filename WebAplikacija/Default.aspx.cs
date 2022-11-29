using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAplikacija
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //dohvaćanje podataka o browseru u naš textbox -> 2. zadatak
            this.txt1.Text = "Type = " + Request.Browser.Type + "\n"
                + "Name = " + Request.Browser.Browser + "\n"
                + "Version = " + Request.Browser.Version + "\n"
                + "Is Beta = " + Request.Browser.Beta + "\n"
                + "Supports Cookies = " + Request.Browser.Cookies + "\n"
                + "Supports JavaScript = " + Request.Browser.EcmaScriptVersion.ToString();
        }

        protected void BtnPosalji_Click(object sender, EventArgs e)
        {
            //spremanje unesenog teksta u 1. zadatku u labelu za prikaz
            LblTekst.Text = TxtTekst.Text;
        }
    }
}