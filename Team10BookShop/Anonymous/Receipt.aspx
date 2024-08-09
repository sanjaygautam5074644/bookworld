<%@ Page Title="Receipt" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Receipt.aspx.cs" Inherits="Team10BookShop.Receipt" %>
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
            font-size: 28px;
            color: #333;
            margin-bottom: 10px;
        }

        h4 {
            text-align: center;
            color: #555;
            margin-bottom: 20px;
        }

        .grid-view {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
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

        .total-price {
            text-align: center;
            font-size: 18px;
            font-weight: bold;
        }
    </style>

    <div class="content-container">
        <h1>Order Summary</h1>
        <h4>Thank you. Your order has been confirmed.</h4>
        <div>
            <asp:GridView ID="PurchaseGridView" runat="server" AutoGenerateColumns="False" CssClass="grid-view">
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
                </Columns>
            </asp:GridView>
        </div>
        <div class="total-price">
            Payment received is ₹<asp:Label ID="PriceLabel" runat="server" Text="Label"></asp:Label>.
        </div>
    </div>
</asp:Content>
