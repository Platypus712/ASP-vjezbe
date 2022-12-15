<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegExp.aspx.cs" Inherits="PrimjerKalendar.RegExp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtUnosEmail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="regExEmail" runat="server"
                ErrorMessage="Email nije u ispravnom formatu" ControlToValidate="txtUnosEmail"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ErrorMessage="Obavezan email" ControlToValidate="txtUnosEmail"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Pošalji email" />
        </div>
    </form>
</body>
</html>
