using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAplikacija
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUserWizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            //kreiranje novog korisnika

            //ako je korisnik uspješno dodan, skok na sljedeći korak
            e.Cancel = false;

            //inače ostati na trenutnom koraku
            e.Cancel = true;
        }
    }
}