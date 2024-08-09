<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookDetails.aspx.cs" Inherits="Team10BookShop.Book_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        /* Styles specific to the Book Details page */
        .book-details-container {
            width: 80%;
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .book-details-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        .book-details-table td {
            padding: 10px;
            vertical-align: middle;
        }

        .book-details-table td:first-child {
            width: 100px;
        }

        .book-details-table td:nth-child(2) {
            width: 200px;
        }

        .book-details-table .label-cell {
            text-align: right;
            font-weight: bold;
            white-space: nowrap;
        }

        .book-details-table .value-cell {
            padding-left: 10px;
        }

        .btn {
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            font-size: 16px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        .btn-small {
            padding: 5px 10px;
            font-size: 14px;
        }

        .update-panel {
            display: flex;
            align-items: center;
            justify-content: flex-start; /* Align items to the start */
        }

        .update-panel span {
            margin: 0 5px;
        }

        .title {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
            text-align: center;
        }

        .button-row {
            display: flex;
            align-items: center;
            justify-content: space-between; /* Distribute space between buttons */
            margin-top: 20px;
        }

        .button-row .btn {
            margin: 0;
        }
    </style>

    <div class="book-details-container">
        <table class="book-details-table">
            <tr>
                <td colspan="4" class="title">
                    <asp:Label ID="lbTitle" runat="server" Font-Size="X-Large" Text="Title"></asp:Label>
                </td>
            </tr>
            <tr>
                <td rowspan="7">
                    <asp:Image ID="Image1" runat="server" />
                </td>
                <td class="label-cell">Book ID:</td>
                <td colspan="2" class="value-cell">
                    <asp:Label ID="lbBookID" runat="server" Text="BookID"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="label-cell">ISBN:</td>
                <td colspan="2" class="value-cell">
                    <asp:Label ID="lbISBN" runat="server" Text="ISBN"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="label-cell">Category:</td>
                <td colspan="2" class="value-cell">
                    <asp:Label ID="lbCategory" runat="server" Text="Category"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="label-cell">Author:</td>
                <td colspan="2" class="value-cell">
                    <asp:Label ID="lbAuthor" runat="server" Text="Author"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="label-cell">Stock:</td>
                <td colspan="2" class="value-cell">
                    <asp:Label ID="lbStock" runat="server" Text="Stock"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="label-cell">Price:</td>
                <td colspan="2" class="value-cell">
                    <asp:Label ID="lbPrice" runat="server" Text="Price"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                   
                </td>
                <td colspan="2">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <div class="update-panel">
                                <asp:Button ID="btnMinus" runat="server" Text="-" CssClass="btn btn-small" OnClick="btnMinus_Click" />
                                <asp:TextBox ID="txQty" runat="server" CssClass="btn-small" Width="80px" AutoPostBack="True" Font-Size="Medium" OnTextChanged="txQty_TextChanged" TextMode="Number"></asp:TextBox>
                                <asp:Button ID="btnPlus" runat="server" Text="+" CssClass="btn btn-small" OnClick="btnPlus_Click" />
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td>
                   
                </td>
            </tr>
        </table>
        <div class="button-row">
             <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="&lt;&lt; Back" CssClass="btn btn-small" />
             <asp:Button ID="btnAddToCart" runat="server" Text="Add To Cart" CssClass="btn" OnClick="btnAddToCart_Click" />
        </div>
    </div>
</asp:Content>
