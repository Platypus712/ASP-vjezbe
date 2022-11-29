<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs"
    Inherits="WebAplikacija.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Ulogiraj se:
            <asp:Login ID="Login1" runat="server" CreateUserText="Nemaš račun?"
                CreateUserUrl="~/Registration.aspx" DisplayRememberMe="false"
                DestinationPageUrl="~/Stranica1.aspx" OnAuthenticate="Login1_Authenticate">
            </asp:Login>
        </div>
    </form>
</body>
</html>
