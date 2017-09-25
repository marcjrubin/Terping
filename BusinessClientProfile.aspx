<%@ Page Title="Business Client Profile" Language="C#" MasterPageFile="~/TerpFarmMain.master" AutoEventWireup="true" CodeFile="BusinessClientProfile.aspx.cs" Inherits="BusinessClientProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset>
        <legend>Business Client Profile</legend><br />

        <div class="form-group">
            <label>Company Name:</label>
            <asp:Label ID="lblCompanyName" runat="server" Text="" Font-Size="Medium"></asp:Label>
        </div>

        <div class="form-group">
            <label>Point of Contact:</label>
            <asp:Label ID="lblPOC" runat="server" Text="" Font-Size="Medium"></asp:Label>
        </div>

        <div class="form-group">
            <label>Address One:</label>
            <asp:Label ID="lblADdressOne" runat="server" Text="" Font-Size="Medium"></asp:Label>
        </div>

        <div class="form-group">
            <label>Address Two:</label>
            <asp:Label ID="lblAddressTwo" runat="server" Text="" Font-Size="Medium"></asp:Label>
        </div>

        <div class="form-group">
            <label>City:</label>
            <asp:Label ID="lblCity" runat="server" Text="" Font-Size="Medium"></asp:Label>
        </div>

        <div class="form-group">
            <label>State:</label>
            <asp:Label ID="lblState" runat="server" Text="" Font-Size="Medium"></asp:Label>
        </div>

        <div class="form-group">
            <label>Zip:</label>
            <asp:Label ID="lblZip" runat="server" Text="" Font-Size="Medium"></asp:Label>
        </div>

        <div class="form-group">
            <label>Phone:</label>
            <asp:Label ID="lblPhone" runat="server" Text="" Font-Size="Medium"></asp:Label>
        </div>

        <div class="form-group">
            <label>Email:</label>
            <asp:Label ID="lblEmail" runat="server" Text="" Font-Size="Medium"></asp:Label>
        </div>

        <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-default" OnClick="btnDelete_Click" />

    </fieldset>
</asp:Content>

