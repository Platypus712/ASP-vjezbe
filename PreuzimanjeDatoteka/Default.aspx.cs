using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PreuzimanjeDatoteka
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated == true)
            {
                this.MultiViewName.ActiveViewIndex = 1;
            }
            else
            {
                this.MultiViewName.ActiveViewIndex = 0;
            }
        }

        //protected void ButtonPDF_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("~/Files/primjer.pdf");
        //}

        //protected void ButtonPPT_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("~/Files/primjer.pptx");
        //}

        //protected void ButtonTXT_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("~/Files/primjer.txt");
        //}
        
        protected void Button_Click(object sender, EventArgs e)
        {
            string file = string.Empty;
            //string file1 = ""; alternativa
            string btnTxt = ((Button)sender).Text;
            switch (btnTxt)
            {
                case "PDF":
                    //file = "~/Files/primjer.pdf";
                    file = "primjer.pdf";
                    break;
                case "PPT":
                    //file = "~/Files/primjer.pptx";
                    file = "primjer.pptx";
                    break;
                case "TXT":
                    //file = "~/Files/primjer.txt";
                    file = "primjer.txt";
                    break;
                default:
                    break;
            }

            Response.ContentType = "application/octet-stream";
            Response.AppendHeader("Content-Disposition", "attachment;filename=\"" + file + "\"");
            Response.TransmitFile(Server.MapPath("~/Files") + "\\" + file);
            Response.End();

            //Response.Redirect(file);
        }

        protected void LoginKorisnik_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (this.LoginKorisnik.UserName == "abc" && this.LoginKorisnik.Password == "123")
            {
                e.Authenticated = true;
            }
            else
            {
                e.Authenticated = false;
            }
        }
    }
}