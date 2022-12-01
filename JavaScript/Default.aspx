<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JavaScript.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnPage" runat="server" Text="Vrijeme dobiveno refreshanjem cijele stranice!"
                OnClick="btnPage_Click" />
            <asp:Label ID="lblPage" runat="server" Text=""></asp:Label>
        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Button ID="btnPageAjax" runat="server"
                    Text="Vrijeme dobiveno korištenjem AJAX kontrola i update panela, ne cijele stranice!"
                    OnClick="btnPageAjax_Click"    />
                <asp:Label ID="lblPageAjax" runat="server" Text=""></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>
                <h1>Zahtjev je u obradi i čeka se odgovor od poslužitelja!</h1>
            </ProgressTemplate>
        </asp:UpdateProgress>
    </form>
</body>
</html>
