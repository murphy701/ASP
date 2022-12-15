<%@ Page Language="C#" MasterPageFile="../layouts/SiteTemplate.master" CodeFile="Show.aspx.cs" Inherits="ShowPage" %>

<asp:Content ID="loginContent" ContentPlaceHolderID="cphFirstContent" Runat="Server">
    <h1>Main</h1>

    <ul>
		<li><a href="../users/Login.aspx">게임</a></li>
        <li><a href="#">독서</a></li>
        <li><a href="#">여행</a></li>
        <li><a href="#">프로그래밍</a></li>
        <li><a href="#">자유 게시판</a></li>
		</ul>

</asp:Content>