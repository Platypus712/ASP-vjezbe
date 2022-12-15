using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrimjerKalendar
{
    public partial class View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int x;
            int.TryParse(
                ((RadioButtonList)sender).SelectedValue, out x);
            MultiView1.ActiveViewIndex = x;
        }
    }
}