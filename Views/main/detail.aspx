<%@ Page Language="C#" AutoEventWireup="true" CodeFIle="detail.aspx.cs"  Inherits="community.main.DetailPage" MasterPageFile="../layouts/SiteTemplate.master" debug="true" %>

<asp:Content ID="detailContent" ContentPlaceHolderID="cphFirstContent" Runat="Server"> 
    <asp:SqlDataSource ID="dSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Community %>" 
            SelectCommand="SELECT [name],  
            [comment], [id] FROM [comment]">
    </asp:SqlDataSource>
    <div class="row">
        <div class="col-lg-6 col-sm-12">
            <% if (Request.Cookies["name"] != null) { %>
                    <asp:Button ID="btnEdit" class="btn btn-primary" runat="server"  Text="Edit" />
                    <asp:Button ID="Delete" class="btn btn-danger" onClick="Delete_Click" runat="server" Text="DELETE" />
            <% } %>
            <div class="card mb-3">

                <div class="card-body">
                    <ul class="list-group list-group-flush">                        
                        <li class="list-group-item card-title">
                            <asp:Label ID="title" runat="server"></asp:Label>
                        </li>
                        <li class="list-group-item text-muted">
                            <asp:Label ID="name" runat="server"></asp:Label>
                        </li>
                        <li class="list-group-item ">
                            <asp:Label ID="tag" runat="server"></asp:Label>
                        </li>
                        <li class="list-group-item">
                            <asp:Label ID="message" runat="server"></asp:Label>
                        </li>
                    </ul>
                </div>       
            </div>
        </div>
       <div class="col-lg-6 col-sm-12">
           <h2>Comments</h2>
                <% if (Request.Cookies["name"] != null) { %>
                    <div class="mb-3">
                        <label class="form-label" for="message">comment:</label>
                        <asp:TextBox ID="commentForm" class="form-control" runat="server" Height="100px" TextMode="MultiLine"></asp:TextBox>   
                        <asp:Button ID="SubmitButton" class="btn btn-success" runat="server" OnClick="commentSubmit_btn"  Text="submit" />
                    </div>
                <% } %>
           <asp:GridView ID="gvList" runat="server" DataSourceID="dSource" 
            AutoGenerateColumns="False"
            AllowPaging="True" GridLines="None" PagerSettings-Mode="NextPrevious" Width="500px" Height="50px">
               <Columns>
                   <asp:BoundField DataField="name" HeaderText="name">
                        <HeaderStyle Width="70px" CssClass="card-header" /> 
                        <ItemStyle CssClass="card-body" Width="100px"/>
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="comment" HeaderStyle-Width="330px">
                        <ItemTemplate>
                           <%# ShowComment(Eval("comment").ToString()) %>
                        </ItemTemplate>
                        <HeaderStyle Width="1000px" CssClass="card-header" /> 
                    </asp:TemplateField>
               </Columns>
            </asp:GridView>        
         </div>   
</asp:Content>
