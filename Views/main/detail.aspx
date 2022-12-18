<%@ Page Language="C#" AutoEventWireup="true" CodeFIle="detail.aspx.cs"  Inherits="community.main.DetailPage" MasterPageFile="../layouts/SiteTemplate.master" %>

<asp:Content ID="detailContent" ContentPlaceHolderID="cphFirstContent" Runat="Server"> 
    <div class="row">
        <div class="col-lg-6 col-sm-12 offset-3">
            <% if (Request.Cookies["name"] != null) { %>
                    <asp:Button ID="btnEdit" class="btn btn-primary" runat="server"  Text="Edit" />
                    <asp:Button ID="Delete" class="btn btn-danger" onClick="Delete_Click" runat="server" Text="DELETE" />
            <% } %>
            <div class="card">

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
    </div>
        
   
        
     
</asp:Content>
