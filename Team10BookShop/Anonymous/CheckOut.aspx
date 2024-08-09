<%@ Page Title="Cart Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="Team10BookShop.CheckOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        /* General page styling */
        .content-container {
            width: 90%;
            max-width: 900px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 28px;
            color: #333;
        }

        .panel {
            background-color: #fff;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .grid-view {
            width: 100%;
            border-collapse: collapse;
            margin: 0 auto;
        }

        .grid-view th, .grid-view td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }

        .grid-view th {
            background-color: #f4f4f4;
            text-align: left;
        }

        .grid-view td img {
            border-radius: 4px;
        }

        .button-group {
            text-align: center;
            margin-top: 20px;
        }

        .button-group .btn {
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            font-size: 16px;
            text-align: center;
            text-decoration: none;
            margin: 0 10px;
        }

        .button-group .btn:hover {
            background-color: #0056b3;
        }

        .total-price {
            text-align: center;
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 20px;
        }
    </style>

    <div class="content-container">
        <h1>Cart Items</h1>
        <div class="panel">
            <asp:GridView ID="CartGridView" runat="server" AutoGenerateColumns="False" CssClass="grid-view" OnRowDeleting="OnRowDeleting">
                <Columns>
                    <asp:TemplateField HeaderText="No.">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Title" HeaderText="Title" />
                    <asp:BoundField DataField="Author" HeaderText="Author" />
                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <img src="../Images/<%# Eval("ISBN") %>.jpg" width="90" height="120" alt="Book Image" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowDeleteButton="True" HeaderText="Delete" />
                </Columns>
            </asp:GridView>
        </div>
        <div class="total-price">
            Total price is ₹<asp:Label ID="PriceLabel" runat="server" Text="Label"></asp:Label>.
        </div>
        <div class="button-group">
            <asp:Button ID="BackButton" runat="server" Text="Back" CssClass="btn btn-primary" OnClick="BackButton_Click" />
            <asp:Button ID="ConfirmButton" runat="server" Text="Confirm" CssClass="btn btn-primary" OnClick="ConfirmButton_Click" />
        </div>
    </div>
</asp:Content>
