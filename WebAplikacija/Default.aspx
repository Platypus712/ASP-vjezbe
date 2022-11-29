<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebAplikacija.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .mojCSSstil {
            max-width: 200px;
            max-height: 200px;
            background-color: blue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%-- prvi zadatak -> vježbanje prikaza forme i slanja podataka u 
                labelu + CSS; dodatak VIEW state parametar --%>
            Unesite tekst: 
            <asp:TextBox ID="TxtTekst" runat="server" CssClass="mojCSSstil"></asp:TextBox>
            <asp:Button ID="BtnPosalji" runat="server" Text="Pošalji" OnClick="BtnPosalji_Click" />
            <br />
            <br />
            Uneseni tekst:
            <asp:Label ID="LblTekst" runat="server" EnableViewState="false"></asp:Label>
            &nbsp
            <asp:Button ID="Button1" runat="server" Text="Osvježi" />
            <br />
            <br />
            <%-- zadatak-2 -> vježbanje ispisa podataka o browseru kroz page load --%>
            Browser info:
            <asp:TextBox ID="txt1" TextMode="MultiLine" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
