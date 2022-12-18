<%@ Page Language="C#" AutoEventWireup="true" CodeFIle="Edit.aspx.cs" Inherits="community.main.EditPage" MasterPageFile="../layouts/SiteTemplate.master" Debug="true"%>

<asp:Content ID="editContent" ContentPlaceHolderID="cphFirstContent" Runat="Server">
    <div class="row">
       <div class="col-6 offset-3 mt-auto">

           <div class="mb-3">
                <label class="form-label" for="username">닉네임:</label>
                <asp:TextBox ID="username" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label  for="title" class="form-label">제목:</label>
                <asp:TextBox ID="title" runat="server" class="form-control"></asp:TextBox>         
            </div>
            <div class="mb-3">
                <label class="form-label" for="tag">태그:</label>               
                <asp:DropDownList ID="tag" runat="server"  class="form-control">
                    <asp:ListItem>게임</asp:ListItem>
                    <asp:ListItem>독서</asp:ListItem>
                    <asp:ListItem>여행</asp:ListItem>
                    <asp:ListItem>프로그래밍</asp:ListItem>
                    <asp:ListItem>자유게시판</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <label class="form-label" for="message">글 작성:</label>
                <asp:TextBox ID="message" class="form-control" runat="server" Height="200px" TextMode="MultiLine"></asp:TextBox> 
                
            </div> 
           <asp:Button ID="SubmitButton" class="btn btn-success" runat="server" onclick="btnEdit_Click" Text="submit" />
        </div>
        
    </div>

</asp:Content>