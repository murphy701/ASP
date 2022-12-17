<%@ Page Language="C#" MasterPageFile="../layouts/SiteTemplate.master" CodeFile="Show.aspx.cs" Inherits="ShowPage" %>

<asp:Content ID="showContent" ContentPlaceHolderID="cphFirstContent" Runat="Server">
     <asp:SqlDataSource ID="dSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Community %>" 
            SelectCommand="SELECT [name], [title], [tag], 
            [message], [id], [flag] FROM [board]">
    </asp:SqlDataSource>
        <asp:GridView ID="gvList" runat="server" DataSourceID="dSource" 
            AutoGenerateColumns="False" CellPadding="4" 
            AllowPaging="True" GridLines="None" PagerSettings-Mode="NextPrevious">
             <EmptyDataTemplate>
                                등록된 게시물이 없습니다.
                </EmptyDataTemplate>
           <Columns>     
                <asp:BoundField DataField="id" HeaderText="번호">
                    <HeaderStyle Width="60px" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>

                <asp:TemplateField  HeaderText="제목" HeaderStyle-Width="100px" >
                    <ItemTemplate >
                        <%# ShowTitle(
                            Eval("title").ToString(), Eval("id").ToString(),Eval("flag").ToString()) %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="tag" HeaderText="태그">
                    <HeaderStyle Width="70px" />  
                </asp:BoundField>
                <asp:BoundField DataField="name" HeaderText="작성자">
                    <HeaderStyle Width="70px" />   
                </asp:BoundField>
            </Columns>
        </asp:GridView>    
    
</asp:Content>