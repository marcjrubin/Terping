<%@ Page Title="" Language="C#" MasterPageFile="~/TerpFarmMain.master" AutoEventWireup="true" CodeFile="NewDeafClient.aspx.cs" Inherits="NewDeafClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset>
        <legend>Create New Deaf Client</legend>

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ForeColor="DarkRed" ValidationGroup="deaf" />

        <div class="form-group">
            <label>Name</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Enter your name"
                Text="*"
                Display="Dynamic"
                ForeColor="DarkRed"
                ControlToValidate="txtDeafName"
                ValidationGroup="deaf">
            </asp:RequiredFieldValidator>
            <asp:TextBox ID="txtDeafName" runat="server" CssClass="form-control form" CausesValidation="true" ValidationGroup="deaf"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Signing Preference</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage=""
                Text="*"
                Display="Dynamic"
                ForeColor="DarkRed"
                InitialValue="X"
                ControlToValidate="ddlSigningPref"
                ValidationGroup="deaf">
            </asp:RequiredFieldValidator>
            <asp:DropDownList ID="ddlSigningPref" runat="server" CausesValidation="true" ValidationGroup="deaf" CssClass="form-control">
                <asp:ListItem Value="X">Select an interpreter</asp:ListItem>
                <asp:ListItem>ASL</asp:ListItem>
                <asp:ListItem>PSE</asp:ListItem>
                <asp:ListItem>SEE</asp:ListItem>
                <asp:ListItem>Oral</asp:ListItem>
                <asp:ListItem>Cued</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <label>Interpreter Preference</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage=""
                Text="*"
                Display="Dynamic"
                ForeColor="DarkRed"
                InitialValue="X"
                ControlToValidate="ddlInterpreterPref"
                ValidationGroup="deaf">
            </asp:RequiredFieldValidator>
            <asp:DropDownList ID="ddlInterpreterPref" runat="server" CausesValidation="true" ValidationGroup="deaf" CssClass="form-control">
                <asp:ListItem Value="X">Select an interpreter</asp:ListItem>
                <asp:ListItem Value="1">John Doe</asp:ListItem>
                <asp:ListItem Value="2">Jane Doe</asp:ListItem>
            </asp:DropDownList>
        </div>

        <asp:Button ID="btnCreateDeaf" runat="server" Text="Create Account" CausesValidation="true" ValidationGroup="deaf" CssClass="btn btn-default" OnClick="btnCreateDeaf_Click" />&nbsp;&nbsp;
        <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-default" CausesValidation="false" OnClick="btnReset_Click" />

    </fieldset>

    
</asp:Content>

