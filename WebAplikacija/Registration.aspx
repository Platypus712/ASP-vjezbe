<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs"
    Inherits="WebAplikacija.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%-- zadatak-4 -> vježbanje sa login kontrolama; CreateUserWizard --%>
            Forma za registraciju:
            <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" LoginCreatedUser="false"
                ContinueDestinationPageUrl="~/login.aspx"
                OnNextButtonClick="CreateUserWizard1_NextButtonClick" >
                <WizardSteps>
                    <asp:CreateUserWizardStep runat="server">
                    </asp:CreateUserWizardStep>
                    <asp:CompleteWizardStep runat="server">
                    </asp:CompleteWizardStep>
                </WizardSteps>
            </asp:CreateUserWizard>
        </div>
    </form>
</body>
</html>
