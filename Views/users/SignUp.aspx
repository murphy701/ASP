<%@ Page Language="C#" AutoEventWireup="true" CodeFIle="SignUp.aspx.cs" Inherits="community.main.SignUp" MasterPageFile="../layouts/SiteTemplate.master" %>


<asp:Content ID="signUpContent" ContentPlaceHolderID="cphFirstContent" Runat="Server">
       <div class="container d-flex justify-content-center align-items-center mt-3 mb-5">
            <div class="row">
                <div class="col-12">
                    <div class="card shadow">              
                        <div class="card-body">
                            <div class="mb-3">
                                <label class="form-label" for="username">Username</label> 
                                <asp:TextBox class="form-control" ID="username" runat="server" Width="190px"></asp:TextBox>
                                <br />
                                Id<br />
                                <asp:TextBox ID="Id" runat="server"></asp:TextBox>
                            </div> 
                            <div class="mb-3">
                                <label class="form-label" for="password">password</label> 
                                <asp:TextBox class="form-control" ID="password" runat="server" Width="190px"></asp:TextBox>
                                <br />
                                Email<br />
                                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                            </div> 
                            <div class="mb-3">
                                <asp:Label ID="test" runat="server" Text=""></asp:Label>
                            </div>
                            <div class="mb-3">
                                <asp:Button class="btn btn-success" ID="btnSubscribe" runat="server" Text="가입" 
                                onclick="btnSubscribe_Click" />                          
                            </div>                         
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>