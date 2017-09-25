<%@ Page Title="" Language="C#" MasterPageFile="~/TerpFarmMain.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset>
        <legend>Business Client Login</legend>
        
        <div class="form-group">
            <label>Username:</label>
            <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        
        <div class="form-group">
            <label>Password:</label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
        </div>

        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-default" OnClick="btnLogin_Click" />
    </fieldset>
</asp:Content>

