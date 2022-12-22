<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Cookies.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblPodrzavaKolacic" runat="server">
        </asp:Label>
        <div>
            <asp:TextBox ID="txtUnos" runat="server" Width="200px">
            </asp:TextBox>
            &nbsp
            <asp:Button ID="btnZapisiKolacic" runat="server" Text="Zapiši u kolačić"
                OnClick="btnZapisiKolacic_Click" />
            <br />
            <br />
            <asp:Button ID="btnProcitajKolacic" runat="server" Text="Pročitaj kolačić"
                OnClick="btnProcitajKolacic_Click" />
            <asp:Label ID="lblProcitajKolacic" runat="server">
            </asp:Label>
            <br />
            <br />
            <asp:Button ID="btnObrisiKolacic" runat="server" Text="Obriši kolačić"
                OnClick="btnObrisiKolacic_Click" />
        </div>
    </form>
</body>
</html>
