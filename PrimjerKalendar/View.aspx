<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="PrimjerKalendar.View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RadioButtonList ID="RadioButtonList1" AutoPostBack="true"
                OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" runat="server">
                <asp:ListItem Text="text" Selected="True" Value="0">Prvi View</asp:ListItem>
                <asp:ListItem Text="text" Value="1">Drugi View</asp:ListItem>
                <asp:ListItem Text="text" Value="2">Treći View</asp:ListItem>
            </asp:RadioButtonList>
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View runat="server" ID="View1">
                    <h1>Ovo je prvi View!</h1>
                </asp:View>
                <asp:View runat="server" ID="View2">
                    <h1>Ovo je drugi View!</h1>
                </asp:View>
                <asp:View runat="server" ID="View3">
                    <h1>Ovo je treći View!</h1>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
