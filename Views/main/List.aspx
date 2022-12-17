<%@ Page Language="C#" Title="" MasterPageFile="../layouts/SiteTemplate.master" AutoEventWireup="True" CodeFile="List.aspx.cs" Inherits="community.main.List"%>
<asp:Content ID="loginContent" ContentPlaceHolderID="cphFirstContent" Runat="Server">
    <table class="tbl01" cellpadding="0" cellspacing="0">
        <tr><td width="5px"></td><td class="td01"></td></tr>
        <tr><td></td><td class="td03">
            <img src="/WebEx/ASP/img2.gif" />
            &nbsp;&nbsp;&nbsp;<a href="Show.aspx">글목록</a></td></tr>
        <tr><td></td><td class="td01"></td></tr>
        <tr><td></td><td height="15"></td></tr>
    </table>
    <table class="tbl01" cellpadding="0" cellspacing="0">
    <tr><td width="5px"></td><td>
        <asp:SqlDataSource ID="dSource" runat="server" ConnectionString="Data Source=.\MSSQLSERVER03;Initial Catalog=Community;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [name], [title], [tag] FROM [board]">
        </asp:SqlDataSource>
        <br />

        <asp:GridView ID="gvList" DataSourceID="dSource" AutoGenerateColumns="false" CellPadding="4"
             ForeColor="#333333" AllowPaging="true" GridLines="None" PageSize="10" runat ="server">
            <RowStyle BackColor="#EFF3FB" /> <AlternatingRowStyle BackColor="White" /> <HeaderStyle BackColor="#507CD1" Font-Bold="true" ForeColor="White" />
            <PagerStyle BackColor="#FFFFFF" HorizontalAlign="Left" /> <PagerSettings Mode="NextPrevious" NextPageImageUrl="/WebEx/ASP/img.gif" PreviousPageImageUrl="/WebEx/ASP/img1.gif" />
            <FooterStyle BackColor="#507CD1" Font-Bold="true" ForeColor="White" />

            <EmptyDataTemplate>등록된 게시물이 없습니다.</EmptyDataTemplate>

            <Columns>

                    <asp:BoundField DataField="title" HeaderText="제목">
                    <HeaderStyle Width="70px" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>

                <asp:BoundField DataField="name" HeaderText="이름">
                    <HeaderStyle Width="70px" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>

                <asp:BoundField DataField="tag" HeaderText="태그">
                    <HeaderStyle Width="40px" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>

            </Columns>
        </asp:GridView>

    </td></tr></table>
    <table class="tbl01" cellpadding="0" cellspacing="0">
        <tr><td width="5px" height="15px"></td><td colspan="3"></td></tr>
        <tr><td></td><td class="td06"></td><td align="left">
            &nbsp;</td>
            <td align="right">
                <asp:ImageButton ID="btnWrite" runat="server" ImageUrl="/WebEx/ASP/img3.gif" PostBackUrl="~Board/Write.aspx" />
            </td>
        </tr>
        <tr><td height="10px"></td><td colspan="3"></td></tr>
    </table>
</asp:Content>