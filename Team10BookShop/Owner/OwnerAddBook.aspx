<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OwnerAddBook.aspx.cs" Inherits="Team10BookShop.OwnerAddBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
    /* General Styles */
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        color: #333;
        margin: 0;
        padding: 0;
    }

    .container {
        width: 80%;
        max-width: 800px;
        margin: 20px auto;
        padding: 10px; /* Reduced padding */
        background: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    h1 {
        color: #007BFF;
        margin-bottom: 10px; /* Reduced margin */
    }

    /* Form Styles */
    table {
        width: 100%;
        border-collapse: collapse;
    }

    td {
        padding: 5px; /* Reduced padding */
        vertical-align: top;
    }

    label {
        font-weight: bold;
    }

    input[type="text"], input[type="number"], select {
        width: 100%;
        padding: 6px; /* Reduced padding */
        margin-top: 3px; /* Reduced margin */
        border: 1px solid #ddd;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type="text"]:focus, input[type="number"]:focus, select:focus {
        border-color: #007BFF;
        outline: none;
    }

    /* Error Styles */
    .error {
        color: #e74c3c;
        font-size: 0.75em; /* Reduced font size */
    }

    /* Button Styles */
    .btn-confirm, .btn-back {
        padding: 8px 16px; /* Reduced padding */
        border: none;
        border-radius: 4px;
        color: #fff;
        cursor: pointer;
        font-size: 0.875em; /* Reduced font size */
        margin-right: 5px; /* Reduced margin */
        transition: background-color 0.3s ease;
    }

    .btn-confirm {
        background-color: #28a745;
    }

    .btn-confirm:hover {
        background-color: #218838;
    }

    .btn-back {
        background-color: #007bff;
    }

    .btn-back:hover {
        background-color: #0056b3;
    }

    /* Validation Summary Styles */
    .validation-summary {
        color: #e74c3c;
        font-size: 0.75em; /* Reduced font size */
        margin-top: 5px; /* Reduced margin */
    }
</style>


    <div class="container">
        <!-- Title -->
        <h1>Add a New Book</h1>

        <!-- Input fields -->
        <table>
            <tr>
                <td><asp:Label ID="lblBookTitle" runat="server" Text="Book Title"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtBookTitle" runat="server" TabIndex="2"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorBookTitle" runat="server" ErrorMessage="Book Title is required" ControlToValidate="txtBookTitle" CssClass="error">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblCategory" runat="server" Text="Category"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="ddCategory" runat="server" TabIndex="3" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CategoryID"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyBooks %>" SelectCommand="SELECT [CategoryID], [Name] FROM [Category]"></asp:SqlDataSource>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCategory" runat="server" ControlToValidate="ddCategory" ErrorMessage="Category is required" CssClass="error">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblisbn" runat="server" Text="ISBN"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtISBN" runat="server" TabIndex="4" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorISBN" runat="server" ControlToValidate="txtISBN" CssClass="error" ErrorMessage="ISBN is required">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorISBN" runat="server" ControlToValidate="txtISBN" CssClass="error" ErrorMessage="Invalid ISBN" ValidationExpression="\d{13}">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblAuthor" runat="server" Text="Author"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtAuthor" runat="server" TabIndex="5"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAuthor" runat="server" ControlToValidate="txtAuthor" CssClass="error" ErrorMessage="Author is required">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblStock" runat="server" Text="Stock"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtStock" runat="server" TabIndex="6" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorStock" runat="server" ControlToValidate="txtStock" CssClass="error" ErrorMessage="Stock is required">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorStock" runat="server" ControlToValidate="txtStock" CssClass="error" ErrorMessage="Stock needs to be at least 0" MaximumValue="10000" MinimumValue="0" Type="Integer">*</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblPrice" runat="server" Text="Price"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtPrice" runat="server" TabIndex="7" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPrice" runat="server" ControlToValidate="txtPrice" CssClass="error" ErrorMessage="Price is required">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorPrice" runat="server" ControlToValidate="txtPrice" CssClass="error" ErrorMessage="Price needs to be at least 1" MaximumValue="10000" MinimumValue="1" Type="Integer">*</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblCover" runat="server" Text="Book Cover"></asp:Label></td>
                <td>
                    <asp:FileUpload ID="FileUploadImage" runat="server" TabIndex="8" />
                </td>
            </tr>
        </table>

        <!-- File Upload, Confirm button, Back button, and Errors Display -->
        <asp:Button ID="btnConfirm" runat="server" Text="Confirm" TabIndex="9" OnClick="btnConfirm_Click" CssClass="btn-confirm" />
        <asp:Button ID="btnBack" runat="server" Text="Back" TabIndex="10" OnClientClick="window.history.back(); return false;" CssClass="btn-back" />
        <br />
        <asp:Label ID="lblErrorFileUpload" runat="server" CssClass="error"></asp:Label>
        <asp:ValidationSummary ID="ValidationSummaryAddBook" runat="server" CssClass="validation-summary" />
    </div>

</asp:Content>
