<%@ Page Language="C#" MasterPageFile="../layouts/SiteTemplate.master" CodeFile="Show.aspx.cs" Inherits="ShowPage" %>

<asp:Content ID="loginContent" ContentPlaceHolderID="cphFirstContent" Runat="Server">
    <h1>Main</h1>
     <asp:SqlDataSource ID="dSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Community %>" 
            SelectCommand="SELECT [name], [title], [tag], 
            [message], [id] FROM [board]">
    </asp:SqlDataSource>

    <ul>
		<li><a href="#">게임</a></li>
        <li><a href="#">독서</a></li>
        <li><a href="#">여행</a></li>
        <li><a href="#">프로그래밍</a></li>
        <li><a href="#">자유 게시판</a></li>
		</ul>
    <asp:GridView ID="gvList" runat="server" DataSourceID="dSource" 
        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
        AllowPaging="True" GridLines="None" PagerSettings-Mode="NextPrevious">
         <EmptyDataTemplate>
                            등록된 게시물이 없습니다.
            </EmptyDataTemplate>
        <Columns>      
            <asp:BoundField DataField="id" HeaderText="번호">
                <HeaderStyle Width="60px" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
    </asp:GridView>
</asp:Content>