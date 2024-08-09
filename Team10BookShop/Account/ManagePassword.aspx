<%@ Page Title="Manage Password" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManagePassword.aspx.cs" Inherits="Team10BookShop.Account.ManagePassword" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        /* General page styling */
        .content-container {
            width: 90%;
            max-width: 700px;
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

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            font-weight: bold;
            margin-bottom: 5px;
            color: #555;
        }

        .form-group .form-control {
            width: 100%;
            max-width: 100%;
            border-radius: 4px;
        }

        .text-danger {
            color: #dc3545;
            font-size: 14px;
        }

        .btn-default {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn-default:hover {
            background-color: #0056b3;
            color: #fff;
        }
    </style>

    <div class="content-container">
        <h2><%: Title %></h2>
        
        <section id="passwordForm">
            <asp:PlaceHolder runat="server" ID="setPassword" Visible="false">
                <p class="text-center">
                    You do not have a local password for this site. Add a local
                    password so you can log in without an external login.
                </p>
                <div class="form-horizontal">
                    <h4>Set Password Form</h4>
                    <asp:ValidationSummary runat="server" ShowModelStateErrors="true" CssClass="text-danger" />
                    <hr />
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="password" CssClass="control-label">Password</asp:Label>
                        <div>
                            <asp:TextBox runat="server" ID="password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="password"
                                CssClass="text-danger" ErrorMessage="The password field is required."
                                Display="Dynamic" ValidationGroup="SetPassword" />
                            <asp:ModelErrorMessage runat="server" ModelStateKey="NewPassword" AssociatedControlID="password"
                                CssClass="text-danger" SetFocusOnError="true" />
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="confirmPassword" CssClass="control-label">Confirm password</asp:Label>
                        <div>
                            <asp:TextBox runat="server" ID="confirmPassword" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="confirmPassword"
                                CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required."
                                ValidationGroup="SetPassword" />
                            <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="confirmPassword"
                                CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match."
                                ValidationGroup="SetPassword" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div>
                            <asp:Button runat="server" Text="Set Password" ValidationGroup="SetPassword" OnClick="SetPassword_Click" CssClass="btn-default" />
                        </div>
                    </div>
                </div>
            </asp:PlaceHolder>

            <asp:PlaceHolder runat="server" ID="changePasswordHolder" Visible="false">
                <div class="form-horizontal">
                    <h4>Change Password Form</h4>
                    <hr />
                    <asp:ValidationSummary runat="server" ShowModelStateErrors="true" CssClass="text-danger" />
                    <div class="form-group">
                        <asp:Label runat="server" ID="CurrentPasswordLabel" AssociatedControlID="CurrentPassword" CssClass="control-label">Current password</asp:Label>
                        <div>
                            <asp:TextBox runat="server" ID="CurrentPassword" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="CurrentPassword"
                                CssClass="text-danger" ErrorMessage="The current password field is required."
                                ValidationGroup="ChangePassword" />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" ID="NewPasswordLabel" AssociatedControlID="NewPassword" CssClass="control-label">New password</asp:Label>
                        <div>
                            <asp:TextBox runat="server" ID="NewPassword" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="NewPassword"
                                CssClass="text-danger" ErrorMessage="The new password is required."
                                ValidationGroup="ChangePassword" />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" ID="ConfirmNewPasswordLabel" AssociatedControlID="ConfirmNewPassword" CssClass="control-label">Confirm new password</asp:Label>
                        <div>
                            <asp:TextBox runat="server" ID="ConfirmNewPassword" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmNewPassword"
                                CssClass="text-danger" Display="Dynamic" ErrorMessage="Confirm new password is required."
                                ValidationGroup="ChangePassword" />
                            <asp:CompareValidator runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword"
                                CssClass="text-danger" Display="Dynamic" ErrorMessage="The new password and confirmation password do not match."
                                ValidationGroup="ChangePassword" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div>
                            <asp:Button runat="server" Text="Change Password" ValidationGroup="ChangePassword" OnClick="ChangePassword_Click" CssClass="btn-default" />
                        </div>
                    </div>
                </div>
            </asp:PlaceHolder>
        </section>
    </div>
</asp:Content>
