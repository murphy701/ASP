<%@ Page Language="C#" AutoEventWireup="true" CodeFIle="SignUp.aspx.cs" Inherits="community.main.SignUp" MasterPageFile="../layouts/SiteTemplate.master" %>


<asp:Content ID="signUpContent" ContentPlaceHolderID="cphFirstContent" Runat="Server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
        oncreateduser="CreateUserWizard1_CreatedUser">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>