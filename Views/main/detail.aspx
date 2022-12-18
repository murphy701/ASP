<%@ Page Language="C#" AutoEventWireup="true" CodeFIle="detail.aspx.cs"  MasterPageFile="../layouts/SiteTemplate.master" %>

<asp:Content ID="detailContent" ContentPlaceHolderID="cphFirstContent" Runat="Server"> 
    <div>
        <asp:Label ID="id" runat="server"></asp:Label>
    </div>
    <div>
        <asp:Label ID="title" runat="server"></asp:Label>
    </div>
    <div>
        <asp:Label ID="name" runat="server"></asp:Label>
    </div>
    <div>
        <asp:Label ID="tag" runat="server"></asp:Label>
    </div>
    <div>
        <asp:Label ID="message" runat="server"></asp:Label>
    </div>
</asp:Content>