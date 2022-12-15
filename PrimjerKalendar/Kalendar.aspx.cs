using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrimjerKalendar
{
    public partial class Kalendar : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            mojKalendar.SelectedDate = DateTime.Now.Date;
            lblKalendar.Text = mojKalendar.SelectedDate.ToShortDateString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void mojKalendar_SelectionChanged(object sender, EventArgs e)
        {
            lblKalendar.Text = mojKalendar.SelectedDate.ToShortDateString();
        }
    }
}