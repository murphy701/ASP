<%@ Page Language="C#" MasterPageFile="../layouts/SiteTemplate.master" CodeFile="Show.aspx.cs" Inherits="ShowPage" %>

<asp:Content ID="showContent" ContentPlaceHolderID="cphFirstContent" Runat="Server">
     <asp:SqlDataSource ID="dSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Community %>" 
            SelectCommand="SELECT [name], [title], [tag], 
            [message], [id], [flag] FROM [board]">
    </asp:SqlDataSource>
    <div class=" offset-1 mt-auto text-center py-5">
        <asp:GridView ID="gvList" runat="server" DataSourceID="dSource" 
            AutoGenerateColumns="False" CellPadding="4" 
            AllowPaging="True" GridLines="None" PagerSettings-Mode="NextPrevious" Width="1000px" Height="500px">
             <EmptyDataTemplate>
                                등록된 게시물이 없습니다.
                </EmptyDataTemplate>
           <Columns>     
                <asp:BoundField DataField="id" HeaderText="번호">
                    <HeaderStyle Width="60px" CssClass="card-header" />
                    <ItemStyle HorizontalAlign="Center"  CssClass="card-body" />
                    
                </asp:BoundField>

                <asp:TemplateField  HeaderText="제목" HeaderStyle-Width="100px"  >
                    <ItemTemplate  >
                        <%# ShowTitle(
                            Eval("title").ToString(), Eval("id").ToString(),Eval("flag").ToString()) %>
                    </ItemTemplate>
                    <HeaderStyle CssClass="card-header" />
                </asp:TemplateField>
                <asp:BoundField DataField="tag" HeaderText="태그">
                    <HeaderStyle Width="100px" CssClass="card-header"/>
                    <ItemStyle CssClass="card-body"/>
                </asp:BoundField>
                <asp:BoundField DataField="name" HeaderText="작성자">
                    <HeaderStyle Width="70px" CssClass="card-header" /> 
                    <ItemStyle CssClass="card-body"/>
                </asp:BoundField>
            </Columns>
        </asp:GridView>
        </div>
    
</asp:Content>