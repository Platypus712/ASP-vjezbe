<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PreuzimanjeDatoteka.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:MultiView ID="MultiViewName" runat="server" ActiveViewIndex="0">
                <asp:View ID="ViewLogin" runat="server">
                    <asp:Login ID="LoginKorisnik" runat="server" DestinationPageUrl="~/Default.aspx"
                        DisplayRememberMe="false" OnAuthenticate="LoginKorisnik_Authenticate" ></asp:Login>
                </asp:View>
                <asp:View ID="ViewFiles" runat="server">
                    <asp:LoginStatus ID="LoginStatusKorisnik" runat="server" LogoutPageUrl="~/Default.aspx" />
                    <asp:HyperLink ID="HyperLinkPDF" runat="server" 
                        NavigateUrl="~/Downloads.aspx?id=1">PDF</asp:HyperLink>
                    &nbsp&nbsp&nbsp
                    <asp:HyperLink ID="HyperLinkPPT" runat="server" 
                        NavigateUrl="~/Downloads.aspx?id=2">PPT</asp:HyperLink>
                    &nbsp&nbsp&nbsp
                    <asp:HyperLink ID="HyperLinkTXT" runat="server" 
                        NavigateUrl="~/Downloads.aspx?id=3">TXT</asp:HyperLink>
                    <br />
                    <br />
                    <%-- Skidanje dokumenata preko svakog gumba posebno, tj svaki gumb ima svoj event --%>
                    <%--<asp:Button ID="ButtonPDF" runat="server" Text="PDF" OnClick="ButtonPDF_Click" />
                    &nbsp&nbsp&nbsp
                    <asp:Button ID="ButtonPPT" runat="server" Text="PPT" OnClick="ButtonPPT_Click" />
                    &nbsp&nbsp&nbsp
                    <asp:Button ID="ButtonTXT" runat="server" Text="TXT" OnClick="ButtonTXT_Click" />--%>

                    <%-- Skidanje dokumenta preko jednog eventa koji se nalazi u svakom gumbu --%>
                    <asp:Button ID="ButtonPDF" runat="server" Text="PDF" OnClick="Button_Click" />
                    &nbsp&nbsp&nbsp
                    <asp:Button ID="ButtonPPT" runat="server" Text="PPT" OnClick="Button_Click" />
                    &nbsp&nbsp&nbsp
                    <asp:Button ID="ButtonTXT" runat="server" Text="TXT" OnClick="Button_Click" />
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
