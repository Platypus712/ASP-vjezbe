<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kalendar.aspx.cs" Inherits="PrimjerKalendar.Kalendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Calendar ID="mojKalendar" OnSelectionChanged="mojKalendar_SelectionChanged" 
                        runat="server"></asp:Calendar>
                    <br />
                    Odabrali ste:
                    <asp:Label ID="lblKalendar" runat="server" Text="Label"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
