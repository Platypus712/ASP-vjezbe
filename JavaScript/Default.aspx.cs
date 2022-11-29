using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JavaScript
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPage_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < 1000000000; i++) ;
            lblPage.Text = DateTime.Now.TimeOfDay.ToString();
        }

        protected void btnPageAjax_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < 1000000000; i++) ;
            lblPageAjax.Text = DateTime.Now.TimeOfDay.ToString();
        }
    }
}