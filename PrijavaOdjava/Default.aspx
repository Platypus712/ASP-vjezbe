<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PrijavaOdjava.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Korisničko ime:
            <asp:Label ID="lblKorisnickoIme" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnOdjava" runat="server" Text="Odjava" OnClick="btnOdjava_Click" />
        </div>
    </form>
</body>
</html>
