<%@ Page Language="C#" AutoEventWireup="true" CodeFIle="SignUp.aspx.cs" Inherits="community.main.SignUp" MasterPageFile="../layouts/SiteTemplate.master" %>


<asp:Content ID="signUpContent" ContentPlaceHolderID="cphFirstContent" Runat="Server">
       <div class="container d-flex justify-content-center align-items-center mt-3 mb-5">
            <div class="row">
                <div class="col-12">
                    <div class="card shadow">              
                        <div class="card-body">
                            <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
                                oncreateduser="CreateUserWizard1_CreatedUser">
                                <WizardSteps>
                                    <asp:CreateUserWizardStep runat="server" />
                                    <asp:CompleteWizardStep runat="server" />
                                </WizardSteps>
                            </asp:CreateUserWizard>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>