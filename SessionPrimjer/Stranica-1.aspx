<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stranica-1.aspx.cs" Inherits="SessionPrimjer.Stranica_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Ovo je stranica broj 1.!!
            <br />
            <br />
            Unesite sadržaj:
            <br />
            <asp:TextBox ID="txtUnos" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="bntPosalji" runat="server" Text="Pošalji sadržaj na drugu stranicu!"
                OnClick="bntPosalji_Click"  />
        </div>
    </form>
</body>
</html>
