<%@ Page Title="Create New Business" Language="C#" MasterPageFile="~/TerpFarmMain.master" AutoEventWireup="true" CodeFile="NewBusiness.aspx.cs" Inherits="NewBusiness" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <fieldset>
        <legend>Create New Business Account</legend>

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="BulletList" ForeColor="DarkRed" ValidationGroup="create" />

        <div class="form-group">
            <label>Company Name</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Enter Company Name"
                Text="*"
                Display="Dynamic"
                ForeColor="DarkRed"
                ControlToValidate="txtCompany"
                ValidationGroup="create">                
            </asp:RequiredFieldValidator>
            <asp:TextBox ID="txtCompany" runat="server" CssClass="form-control" CausesValidation="true" ValidationGroup="create"></asp:TextBox>            
        </div>

        <div class="form-group">
            <label>Point of Contact</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Enter Point of Contact"
                Text="*"
                Display="Dynamic"
                ForeColor="DarkRed"
                ControlToValidate="txtPOC"
                ValidationGroup="create">                
            </asp:RequiredFieldValidator>
            <asp:TextBox ID="txtPOC" runat="server" CssClass="form-control" CausesValidation="true" ValidationGroup="create"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Address 1</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="Enter Address 1"
                Text="*"
                Display="Dynamic"
                ForeColor="DarkRed"
                ControlToValidate="txtAddressOne"
                ValidationGroup="create">                
            </asp:RequiredFieldValidator>
            <asp:TextBox ID="txtAddressOne" runat="server" CssClass="form-control" CausesValidation="true" ValidationGroup="create"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Address 2 (Optional)</label>            
            <asp:TextBox ID="txtAddressTwo" runat="server" CssClass="form-control" CausesValidation="true" ValidationGroup="create"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>City</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ErrorMessage="Enter City"
                Text="*"
                Display="Dynamic"
                ForeColor="DarkRed"
                ControlToValidate="txtCity"
                ValidationGroup="create">                
            </asp:RequiredFieldValidator>
            <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" CausesValidation="true" ValidationGroup="create"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>State:</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="Select State"
                Text="*"
                Display="Dynamic"
                ForeColor="DarkRed"
                ControlToValidate="ddlStateList"
                InitialValue="X"
                ValidationGroup="create">                
            </asp:RequiredFieldValidator>
            <asp:DropDownList ID="ddlStateList" runat="server" CssClass="form-control" CausesValidation="true" ValidationGroup="create">
	            <asp:ListItem Value="X">Select State</asp:ListItem>
                <asp:ListItem Value="AL">Alabama</asp:ListItem>
	            <asp:ListItem Value="AK">Alaska</asp:ListItem>
	            <asp:ListItem Value="AZ">Arizona</asp:ListItem>
	            <asp:ListItem Value="AR">Arkansas</asp:ListItem>
	            <asp:ListItem Value="CA">California</asp:ListItem>
	            <asp:ListItem Value="CO">Colorado</asp:ListItem>
	            <asp:ListItem Value="CT">Connecticut</asp:ListItem>
	            <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
	            <asp:ListItem Value="DE">Delaware</asp:ListItem>
	            <asp:ListItem Value="FL">Florida</asp:ListItem>
	            <asp:ListItem Value="GA">Georgia</asp:ListItem>
	            <asp:ListItem Value="HI">Hawaii</asp:ListItem>
	            <asp:ListItem Value="ID">Idaho</asp:ListItem>
	            <asp:ListItem Value="IL">Illinois</asp:ListItem>
	            <asp:ListItem Value="IN">Indiana</asp:ListItem>
	            <asp:ListItem Value="IA">Iowa</asp:ListItem>
	            <asp:ListItem Value="KS">Kansas</asp:ListItem>
	            <asp:ListItem Value="KY">Kentucky</asp:ListItem>
	            <asp:ListItem Value="LA">Louisiana</asp:ListItem>
	            <asp:ListItem Value="ME">Maine</asp:ListItem>
	            <asp:ListItem Value="MD">Maryland</asp:ListItem>
	            <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
	            <asp:ListItem Value="MI">Michigan</asp:ListItem>
	            <asp:ListItem Value="MN">Minnesota</asp:ListItem>
	            <asp:ListItem Value="MS">Mississippi</asp:ListItem>
	            <asp:ListItem Value="MO">Missouri</asp:ListItem>
	            <asp:ListItem Value="MT">Montana</asp:ListItem>
	            <asp:ListItem Value="NE">Nebraska</asp:ListItem>
	            <asp:ListItem Value="NV">Nevada</asp:ListItem>
	            <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
	            <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
	            <asp:ListItem Value="NM">New Mexico</asp:ListItem>
	            <asp:ListItem Value="NY">New York</asp:ListItem>
	            <asp:ListItem Value="NC">North Carolina</asp:ListItem>
	            <asp:ListItem Value="ND">North Dakota</asp:ListItem>
	            <asp:ListItem Value="OH">Ohio</asp:ListItem>
	            <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
	            <asp:ListItem Value="OR">Oregon</asp:ListItem>
	            <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
	            <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
	            <asp:ListItem Value="SC">South Carolina</asp:ListItem>
	            <asp:ListItem Value="SD">South Dakota</asp:ListItem>
	            <asp:ListItem Value="TN">Tennessee</asp:ListItem>
	            <asp:ListItem Value="TX">Texas</asp:ListItem>
	            <asp:ListItem Value="UT">Utah</asp:ListItem>
	            <asp:ListItem Value="VT">Vermont</asp:ListItem>
	            <asp:ListItem Value="VA">Virginia</asp:ListItem>
	            <asp:ListItem Value="WA">Washington</asp:ListItem>
	            <asp:ListItem Value="WV">West Virginia</asp:ListItem>
	            <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
	            <asp:ListItem Value="WY">Wyoming</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <label>Zip</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ErrorMessage="Enter Zip Code"
                Text="*"
                Display="Dynamic"
                ForeColor="DarkRed"
                ControlToValidate="txtZip"
                ValidationGroup="create">                
            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="Enter Numbers Only"
                Text="*"
                Display="Dynamic"
                ForeColor="DarkRed"
                ControlToValidate="txtZip"
                ValidationGroup="create"
                ValidationExpression="\d{5}(-\d{4})?$">
            </asp:RegularExpressionValidator>
            <asp:TextBox ID="txtZip" runat="server" CssClass="form-control" MaxLength="5" CausesValidation="true" ValidationGroup="create"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Phone</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ErrorMessage="Enter Phone Number"
                Text="*"
                Display="Dynamic"
                ForeColor="DarkRed"
                ControlToValidate="txtPhone"
                ValidationGroup="create">                
            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ErrorMessage="Enter Correct Phone Format"
                Text="*"
                Display="Dynamic"
                ForeColor="DarkRed"
                ControlToValidate="txtPhone"
                ValidationGroup="create"
                ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">
            </asp:RegularExpressionValidator>
            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" MaxLength="12" CausesValidation="true" ValidationGroup="create" TextMode="Phone"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Email</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ErrorMessage="Enter Email Address"
                Text="*"
                Display="Dynamic"
                ForeColor="DarkRed"
                ControlToValidate="txtEmail"
                ValidationGroup="create">                
            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ErrorMessage="Enter Correct Email Format"
                Text="*"
                Display="Dynamic"
                ForeColor="DarkRed"
                ControlToValidate="txtEmail"
                ValidationGroup="create"
                ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$">
            </asp:RegularExpressionValidator>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" CausesValidation="true" ValidationGroup="create" TextMode="Email"></asp:TextBox>
        </div>

        <%--<div class="form-group">
            <label>Username</label>
            <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" CausesValidation="true" ValidationGroup="create"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Password</label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" CausesValidation="true" ValidationGroup="create"></asp:TextBox>
        </div>--%>
        
        <asp:Button ID="btnCreate" runat="server" Text="Create Account" CausesValidation="true" ValidationGroup="create" CssClass="btn btn-default" OnClick="btnCreate_Click" />&nbsp;&nbsp;
        <asp:Button ID="Reset" runat="server" Text="Reset" CssClass="btn btn-default" CausesValidation="false" OnClick="Reset_Click"/>        
    </fieldset>

</asp:Content>

