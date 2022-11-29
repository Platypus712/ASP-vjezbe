<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QueryString.aspx.cs" Inherits="WebAplikacija.QueryString" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Parametar ime:
            <asp:Label ID="lbl1" runat="server" Text="Ime"></asp:Label>
            <br />
            Parametar prezime:
            <asp:Label ID="lbl2" runat="server" Text="Prezime"></asp:Label>
            <br />
            Ime:
            <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
            <br />
            Prezime:
            <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
            <br /> 
            <asp:Button ID="btn1" runat="server" Text="URL" OnClick="btn1_Click" />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
        </div>
    </form>
</body>
</html>
