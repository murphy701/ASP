<%@ Page Language="C#" AutoEventWireup="true" CodeFIle="Login.aspx.cs" Inherits="community.main.Login" MasterPageFile="../layouts/SiteTemplate.master" %>

<asp:Content ID="cntFirstContent" ContentPlaceHolderID="cphFirstContent" Runat="Server">
    <h1>LOGIN</h1>
        <div>
            <div>
                <asp:Image ID="Logo" runat="server" />
                username:
                <asp:TextBox ID="Idtxt" runat="server"></asp:TextBox>
            </div>        
            <div>
                Password:
                <asp:TextBox ID="Pwtxt" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="LoginButton" runat="server" onclick="LoginButton_Click" Text="Login" Width="122px" />
            </div>
            
            <div >
                <asp:Button ID="Find" runat="server" Text="아이디찾기/비밀번호찾기"></asp:Button>
            </div>
            <asp:Button ID="SignUp" runat="server" Text="SignUp"></asp:Button>
        </div>            
</asp:Content>