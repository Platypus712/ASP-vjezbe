<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stranica1.aspx.cs"
    Inherits="WebAplikacija.Stranica1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%-- zadatak-3 -> preusmjeravanje na drugu stranicu i nazad --%>
            Ovo je prva stranica
            <asp:Button ID="btn1" runat="server" Text="Odvedi me na drugu stranicu"
                OnClick="btn1_Click" />
        </div>
    </form>
</body>
</html>
