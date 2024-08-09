<%@ Page Title="Admin Portal" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPortal.aspx.cs" Inherits="Team10BookShop.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
   
    <style>
        /* Reset some default browser styles */
        body, html {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
            height: 100%;
            background-color: #f4f4f4;
        }

        /* Center and style the header */
        header {
            text-align: center;
            background-color: #333;
            color: #fff;
            padding: 20px;
        }

        h1 {
            margin: 0;
        }

        /* Style the navigation bar */
        nav {
            display: flex;
            justify-content: center;
            background-color: #fff;
            padding: 10px 0;
            border-bottom: 1px solid #ddd;
        }

        .nav-list {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            gap: 20px; /* Space between items */
        }

        .nav-list li {
            display: inline;
        }

        .nav-list a {
            text-decoration: none;
            color: #007bff;
            font-size: 18px;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        .nav-list a:hover {
            color: #0056b3;
        }
    </style>
    <header>
        <h1>Inventory Management Dashboard</h1>
    </header>
    <nav>
        <ul class="nav-list">
            <li><a href="OwnerAddBook">Add a New Book</a></li>
            <li><a href="OwnerUpdateInventory">Update Inventory</a></li>
        </ul>
    </nav>

</asp:Content>
