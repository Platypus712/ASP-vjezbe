<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MojFileUpload.aspx.cs" Inherits="PrimjerKalendar.MojFileUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="FileUploadOdabirDatoteke" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ErrorMessage="Kriva datoteka!" ControlToValidate="FileUploadOdabirDatoteke"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Pošalji datotetku" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
