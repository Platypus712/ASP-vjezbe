using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrimjerKalendar
{
    public partial class MojFileUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string putanja = Server.MapPath("~/Upload");
                string imeDatoteke = FileUploadOdabirDatoteke.FileName;
                string target = putanja + "\\" + imeDatoteke;
                FileUploadOdabirDatoteke.SaveAs(target);

                Page.ClientScript.RegisterClientScriptBlock
                    (this.GetType(), "Info", "alert('Uspješno ste spremili datoteku')", true);
            }
            catch (Exception)
            {
                Page.ClientScript.RegisterClientScriptBlock
                    (this.GetType(), "Info", "alert('Dogodila se neka greška')", true);
            }
        }
    }
}