<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Team10BookShop.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="styles.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
        }
        header {
            background: #333;
            color: #fff;
            padding-top: 30px;
            min-height: 70px;
            border-bottom: #ccc 1px solid;
            text-align: center;
        }
        header h1 {
            margin: 0;
            font-size: 2.5em;
        }
        .content {
            padding: 20px;
            background: #fff;
            border-radius: 5px;
            margin-top: 20px;
        }
        .content h2 {
            color: #333;
        }
        .content p {
            margin: 0 0 20px;
        }
        
    </style>
   <div class="container">
            <div class="content">
                <h2>About BookWorld</h2>
                <p>Welcome to the BookWorld, your number one source for all things books. We're dedicated to providing you the very best selection of books, with an emphasis on quality, customer service, and unique finds.</p>
                
                <p>Founded in 2024, Online Bookstore has come a long way from its beginnings. We started out as a small, local bookstore with a passion for books and a dream to share our love for reading with the world. Now, we are proud to offer a vast collection of books across various genres, from bestsellers to hidden gems. Our mission is to foster a love of reading by making books accessible and enjoyable for everyone. Whether you're looking for the latest bestseller, a classic novel, or a niche title, we've got you covered. Our team is committed to curating a diverse selection and providing exceptional service to ensure you have the best experience possible.</p>
                
                <p>Thank you for choosing Online Bookstore. We hope you find what you're looking for and enjoy exploring our collection. If you have any questions or need assistance, feel free to contact us at [Contact Information].</p>
                
                <p>Happy reading!</p>
                <p>The BookWorld Team</p>
            </div>
        </div>
       </asp:Content>
