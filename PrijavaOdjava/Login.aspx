<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PrijavaOdjava.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%">
                <tr>
                    <td style="width:100px">
                        Korisničko ime:
                    </td>
                    <td style="width:200px">
                        <asp:TextBox ID="TxtKorisnickoIme" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorKorisnickoIme" runat="server"
                            ErrorMessage="*" ControlToValidate="TxtKorisnickoIme">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:100px">
                        Lozinka:
                    </td>
                    <td style="width:200px">
                        <asp:TextBox ID="TxtLozinka" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorLozinka" runat="server"
                            ErrorMessage="*" ControlToValidate="TxtLozinka">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        <asp:CheckBox ID="cbZapamtiPrijavu" runat="server" Text="Zapamti Prijavu" />
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td style="width:100px">

                    </td>
                    <td>
                        <asp:Button ID="BtnPrijava" runat="server" Text="Prijava"
                            OnClick="BtnPrijava_Click" />
                    </td>
                    <td></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
