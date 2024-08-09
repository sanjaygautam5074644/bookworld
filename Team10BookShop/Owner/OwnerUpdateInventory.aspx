<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OwnerUpdateInventory.aspx.cs" Inherits="Team10BookShop.OwnerUpdateInventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Add CSS Styles -->
    <style>
        .content-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 1200px;
            margin: 0 auto;
            width: 100%;
        }

        .back-button {
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-top: 20px;
        }

        .back-button:hover {
            background-color: #0056b3;
        }

        .grid-view-container {
            width: 100%;
            overflow-x: auto;
        }

        .delete-button {
            background-color: #dc3545; /* Red color */
            color: white;
            border: none;
            padding: 5px 10px;
            font-size: 14px;
            cursor: pointer;
            border-radius: 4px;
        }

        .edit-button {
            background-color: #ffc107; /* Yellow color */
            color: black;
            border: none;
            padding: 5px 10px;
            font-size: 14px;
            cursor: pointer;
            border-radius: 4px;
        }

        .grid-view-cell {
            padding: 8px;
        }

        /* Pagination Styles */
        .grid-view .pager {
            margin-top: 20px;
            text-align: center;
        }

        .grid-view .pager .pager-button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 5px 10px;
            margin: 0 2px;
            font-size: 14px;
            cursor: pointer;
            border-radius: 4px;
        }

        .grid-view .pager .pager-button:hover {
            background-color: #0056b3;
        }

        .grid-view .pager .pager-button.disabled {
            background-color: #cccccc;
            cursor: not-allowed;
        }

        /* Price Column Margin */
        .grid-view .price-column {
            margin-right: 20px;
        }
    </style>

    <!-- Add JavaScript for Back Button -->
    <script>
        function goBack() {
            window.history.back();
        }
    </script>

    <div class="content-container">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSource1" Height="285px" Width="100%" CssClass="grid-view-container">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    DeleteText="Delete" EditText="Edit" 
                    HeaderText="Actions" 
                    ButtonType="Button" />
                <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" ReadOnly="True" SortExpression="BookID" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
                <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" ItemStyle-CssClass="price-column" />
            </Columns>
            <PagerSettings Mode="Numeric" Position="Bottom" />
        </asp:GridView>
        <asp:Button ID="btnBack" runat="server" Text="Back" TabIndex="10" OnClientClick="window.history.back(); return false;"  CssClass="back-button" />
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=BookShop;Integrated Security=True" DeleteCommand="DELETE FROM [Book] WHERE [BookID] = @BookID" InsertCommand="INSERT INTO [Book] ([Title], [CategoryID], [ISBN], [Author], [Stock], [Price]) VALUES (@Title, @CategoryID, @ISBN, @Author, @Stock, @Price)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Book]" UpdateCommand="UPDATE [Book] SET [Title] = @Title, [CategoryID] = @CategoryID, [ISBN] = @ISBN, [Author] = @Author, [Stock] = @Stock, [Price] = @Price WHERE [BookID] = @BookID">
        <DeleteParameters>
            <asp:Parameter Name="BookID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
            <asp:Parameter Name="ISBN" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Stock" Type="Int32" />
            <asp:Parameter Name="Price" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
            <asp:Parameter Name="ISBN" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Stock" Type="Int32" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="BookID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
