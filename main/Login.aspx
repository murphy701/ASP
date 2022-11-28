<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="community.main.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    
        <br />
        <asp:Image ID="Logo" runat="server" />
        <br />
        <br />
        아이디:&nbsp;&nbsp; 
        <asp:TextBox ID="Idtxt" runat="server"></asp:TextBox>
        <br />
       비밀번호:
        <asp:TextBox ID="Pwtxt" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="LoginButton" runat="server" onclick="LoginButton_Click" 
            Text="로그인" Width="122px" />
        <br />
        <br />
        <asp:Label ID="Find" runat="server" Text="아이디/비밀번호 찾기"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="SignUp" runat="server" Text="회원가입"></asp:Label>
    
    </div>
    </form>
</body>
</html>
