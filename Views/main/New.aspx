<%@ Page Language="C#" MasterPageFile="../layouts/SiteTemplate.master" CodeFile="New.aspx.cs" Inherits="community.main.New" %>

<asp:Content ID="NewContent" ContentPlaceHolderID="cphFirstContent" Runat="Server">
    <div>
        <label for="username">닉네임:</label>
        <asp:TextBox ID="username" runat="server"></asp:TextBox>
    </div>
    <div>
        <label>제목:</label>
        <asp:TextBox ID="title" runat="server"></asp:TextBox>
    </div>
    <div>
      <asp:Label ID="Label" runat="server">태그:</asp:Label>
        <asp:DropDownList ID="tag" runat="server">
            <asp:ListItem>게임</asp:ListItem>
            <asp:ListItem>독서</asp:ListItem>
            <asp:ListItem>여행</asp:ListItem>
            <asp:ListItem>프로그래밍</asp:ListItem>
            <asp:ListItem>자유게시판</asp:ListItem>
        </asp:DropDownList>
     
    </div>
    <div>
       <div>
           <label>글 작성:</label>
       </div> 
        <asp:TextBox ID="message" runat="server" Height="200px" TextMode="MultiLine" Width="400px"></asp:TextBox>
    </div>
    <asp:Button ID="SubmitButton" runat="server" onclick="btnWrite_Click" Text="submit" />
</asp:Content>
