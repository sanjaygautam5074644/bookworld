<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="Team10BookShop.Account.Manage" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <style>
        /* General page styling */
        .content-container {
            width: 90%;
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }

        .text-success {
            color: #28a745;
            font-size: 16px;
            text-align: center;
            margin-bottom: 20px;
        }

        .form-horizontal {
            margin-top: 20px;
        }

        .form-horizontal h4 {
            font-size: 20px;
            margin-bottom: 10px;
            color: #333;
        }

        .form-horizontal hr {
            margin-bottom: 20px;
            border: 0;
            border-top: 1px solid #ddd;
        }

        .dl-horizontal dt {
            font-weight: bold;
            margin-bottom: 10px;
            color: #555;
        }

        .dl-horizontal dd {
            margin-bottom: 20px;
            font-size: 16px;
            color: #333;
        }

        .dl-horizontal a {
            color: #007bff;
            text-decoration: none;
        }

        .dl-horizontal a:hover {
            text-decoration: underline;
        }
    </style>

    <div class="content-container">
        <h2><%: Title %></h2>

        <div>
            <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
                <p class="text-success"><%: SuccessMessage %></p>
            </asp:PlaceHolder>
        </div>

        <div class="form-horizontal">
            <h4>Change your account settings</h4>
            <hr />
            <dl class="dl-horizontal">
                <dt>Password:</dt>
                <dd>
                    <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[Change]" Visible="false" ID="ChangePassword" runat="server" />
                    <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[Create]" Visible="false" ID="CreatePassword" runat="server" />
                </dd>
            </dl>
        </div>
    </div>

</asp:Content>
