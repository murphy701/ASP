<%@ Page Language="C#" AutoEventWireup="true" CodeFIle="Login.aspx.cs" Inherits="community.user.Login" MasterPageFile="../layouts/SiteTemplate.master" %>

<asp:Content ID="loginContent" ContentPlaceHolderID="cphFirstContent" Runat="Server">      
    <div class="container d-flex justify-content-center align-items-center mt-3 mb-5">
        <div class="row">
            <div class="col-12">
                <div class="card shadow">              
                    <div class="card-body">
                        <h5 class="card-title">Login</h5>
                            <div class="mb-3">
                                <label class="form-label" for="username">Username</label>                            
                                <asp:TextBox ID="Idtxt" class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="password">Password</label>
                                <asp:TextBox ID="Pwtxt" class="form-control" runat="server"></asp:TextBox>   
                            </div>
                            <div class="d-grid gap-2">
                                <asp:Button ID="LoginButton" class="btn btn-success" runat="server" onclick="LoginButton_Click" Text="Login" />
                                
                                <asp:Button ID="SignUpButton" class="btn btn-success" runat="server" onclick="SignUpButton_Click" Text="SignUp"></asp:Button>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
