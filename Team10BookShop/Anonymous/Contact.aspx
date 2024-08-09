<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Team10BookShop.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Contact Us</h3>
    <address>
        Bengaluru,<br />
        India, 560037<br />
        <abbr title="Phone">P:</abbr>
        +91-8792144285
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:support@bookworld.com">Support@bookworld.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:marketing@bookworld.com">Marketing@bookworld.com</a>
    </address>
</asp:Content>
