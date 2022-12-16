<%@ Page Language="C#" MasterPageFile="../layouts/SiteTemplate.master" AutoEventWireup="true" CodeFile="New.aspx.cs" InHerits="community.main.New" %>

<asp:Content ID="NewContent" ContentPlaceHolderID="cphFirstContent" Runat="Server">
    <div>
        <label for="username">username:</label>
        <asp:TextBox ID="username" runat="server"></asp:TextBox>
    </div>
    <div>
        <label>title:</label>
        <asp:TextBox ID="title" runat="server"></asp:TextBox>
    </div>
    <div>
         <label>board:</label>
        <asp:TextBox ID="message" runat="server" Height="200px" TextMode="MultiLine" Width="400px"></asp:TextBox>
    </div>
    <asp:Button ID="SubmitButton" runat="server" onclick="btnWrite_Click" Text="submit" />
</asp:Content>
