<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stranica-1.aspx.cs" Inherits="ZajednickiPredlozak.Stranica_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function newWindow() {
            window.open("https://www.google.com/", "target")
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Ovo je stranica 1!!
            <asp:Button ID="btn1" runat="server" Text="Test" OnClientClick="newWindow();" />
        </div>
    </form>
</body>
</html>
