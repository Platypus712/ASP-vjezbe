<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stranica2.aspx.cs"
    Inherits="WebAplikacija.Stranica2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%-- zadatak-3 -> presumjeravanje; povratak na stranicu 1 --%>
            Ovo je druga stranica
            <asp:Button ID="btn2" runat="server" Text="Odvedi me natrag na prvu stranicu"
                OnClick="btn2_Click" />
        </div>
    </form>
</body>
</html>
