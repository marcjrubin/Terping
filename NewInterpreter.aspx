<%@ Page Title="terp New Interpreter" Language="C#" MasterPageFile="~/TerpFarmMain.master" AutoEventWireup="true" CodeFile="NewInterpreter.aspx.cs" Inherits="NewInterpreter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset>
        <legend>Create New Interpreter</legend>

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ForeColor="DarkRed" ValidationGroup="terp" />

        <div class="form-group">
            <label>Interpreter Name</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Enter your name"
                Text="*"
                Display="Dynamic"
                ControlToValidate="txtTerpName"
                ForeColor="DarkRed"
                ValidationGroup="terp">
            </asp:RequiredFieldValidator>
            <asp:TextBox ID="txtTerpName" runat="server" CssClass="form-control" ValidationGroup="terp" CausesValidation="true"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Address 1</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ErrorMessage="Enter Address 1"
                Text="*"
                Display="Dynamic"
                ForeColor="DarkRed"
                ControlToValidate="txtAddressOne"
                ValidationGroup="terp">                
            </asp:RequiredFieldValidator>
            <asp:TextBox ID="txtAddressOne" runat="server" CssClass="form-control" CausesValidation="true" ValidationGroup="terp"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Address 2 (Optional)</label>            
            <asp:TextBox ID="txtAddressTwo" runat="server" CssClass="form-control" CausesValidation="true" ValidationGroup="terp"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>City</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ErrorMessage="Enter City"
                Text="*"
                Display="Dynamic"
                ForeColor="DarkRed"
                ControlToValidate="txtCity"
                ValidationGroup="terp">                
            </asp:RequiredFieldValidator>
            <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" CausesValidation="true" ValidationGroup="terp"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>State:</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ErrorMessage="Select State"
                Text="*"
                Display="Dynamic"
                ForeColor="DarkRed"
                ControlToValidate="ddlStateList"
                InitialValue="X"
                ValidationGroup="terp">                
            </asp:RequiredFieldValidator>
            <asp:DropDownList ID="ddlStateList" runat="server" CssClass="form-control" CausesValidation="true" ValidationGroup="terp">
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
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ErrorMessage="Enter Zip Code"
                Text="*"
                Display="Dynamic"
                ForeColor="DarkRed"
                ControlToValidate="txtZip"
                ValidationGroup="terp">                
            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ErrorMessage="Enter Numbers Only"
                Text="*"
                Display="Dynamic"
                ForeColor="DarkRed"
                ControlToValidate="txtZip"
                ValidationGroup="terp"
                ValidationExpression="\d{5}(-\d{4})?$">
            </asp:RegularExpressionValidator>
            <asp:TextBox ID="txtZip" runat="server" CssClass="form-control" MaxLength="5" CausesValidation="true" ValidationGroup="terp"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Phone</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ErrorMessage="Enter Phone Number"
                Text="*"
                Display="Dynamic"
                ForeColor="DarkRed"
                ControlToValidate="txtPhone"
                ValidationGroup="terp">                
            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ErrorMessage="Enter Correct Phone Format"
                Text="*"
                Display="Dynamic"
                ForeColor="DarkRed"
                ControlToValidate="txtPhone"
                ValidationGroup="terp"
                ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">
            </asp:RegularExpressionValidator>
            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" MaxLength="12" CausesValidation="true" ValidationGroup="terp" TextMode="Phone"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Email</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ErrorMessage="Enter Email Address"
                Text="*"
                Display="Dynamic"
                ForeColor="DarkRed"
                ControlToValidate="txtEmail"
                ValidationGroup="terp">                
            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                ErrorMessage="Enter Correct Email Format"
                Text="*"
                Display="Dynamic"
                ForeColor="DarkRed"
                ControlToValidate="txtEmail"
                ValidationGroup="terp"
                ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$">
            </asp:RegularExpressionValidator>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" CausesValidation="true" ValidationGroup="terp" TextMode="Email"></asp:TextBox>
        </div>        

        <div class="form-group">
            <label>Certifications</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Select uppermost certification"
                Text="*"
                Display="Dynamic"
                ControlToValidate="ddlCertifications"
                ForeColor="DarkRed"
                InitialValue="X"
                ValidationGroup="terp">
            </asp:RequiredFieldValidator>
            <asp:DropDownList ID="ddlCertifications" runat="server" ValidationGroup="terp" CausesValidation="true" CssClass="form-control">
                <asp:ListItem Value="X">Select your uppermost certification</asp:ListItem>
                <asp:ListItem Value="NRID">National RID</asp:ListItem>
                <asp:ListItem Value="RRID">Regional RID</asp:ListItem>
                <asp:ListItem Value="BEI">BEI (Texas Only)</asp:ListItem>
                <asp:ListItem Value="KY">Kentucky Interpreting Licensure</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <label>Years of Interpreting Experience</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage=""
                Text="*"
                Display="Dynamic"
                ControlToValidate="ddlYearsTerping"
                InitialValue="X"
                ForeColor="DarkRed"
                ValidationGroup="terp">
            </asp:RequiredFieldValidator>
            <asp:DropDownList ID="ddlYearsTerping" runat="server" CssClass="form-control" CausesValidation="true" ValidationGroup="terp">
                <asp:ListItem Value="X">Select the year range</asp:ListItem>
                <asp:ListItem Value="1">0-3</asp:ListItem>
                <asp:ListItem Value="2">3-6</asp:ListItem>
                <asp:ListItem Value="3">6-9</asp:ListItem>
                <asp:ListItem Value="4">10+</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <label>State Licensure</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ErrorMessage="State Licensure Select Yes or No"
                Text="*"
                Display="Dynamic"
                ControlToValidate="ddlLicensure"
                InitialValue="X"
                ForeColor="DarkRed"
                ValidationGroup="terp">
            </asp:RequiredFieldValidator>
            <asp:DropDownList ID="ddlLicensure" runat="server" ValidationGroup="terp" CausesValidation="true" CssClass="form-control">
                <asp:ListItem Value="X">Select Yes or No</asp:ListItem>
                <asp:ListItem Value="Yes">Yes</asp:ListItem>
                <asp:ListItem Value="No">No</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <label>Insured?</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="Insured - Select Yes or No"
                Text="*"
                Display="Dynamic"
                ControlToValidate="ddlInsured"
                ForeColor="DarkRed"
                InitialValue="X"
                ValidationGroup="terp">
            </asp:RequiredFieldValidator>
            <asp:DropDownList ID="ddlInsured" runat="server" ValidationGroup="terp" CausesValidation="true" CssClass="form-control">
                <asp:ListItem Value="X">Select Yes or No</asp:ListItem>
                <asp:ListItem Value="Yes">Yes</asp:ListItem>
                <asp:ListItem Value="No">No</asp:ListItem>
            </asp:DropDownList>
        </div>        

        <div class="form-group">
            <label>Special Notes (Optional)</label>
            <asp:TextBox ID="txtSpecialNotes" runat="server" CssClass="form-control" CausesValidation="false" TextMode="MultiLine" Height="25"></asp:TextBox>
        </div>

        <%--<div class="form-group">
            <label>Username</label>
            <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" CausesValidation="true" ValidationGroup="terp"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Password</label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" CausesValidation="true" ValidationGroup="terp"></asp:TextBox>
        </div>--%>

        <asp:Button ID="btnCreateTerp" runat="server" Text="Create New Account" CausesValidation="true" ValidationGroup="terp" CssClass="btn btn-default" OnClick="btnCreateTerp_Click" />&nbsp;&nbsp;
        <asp:Button ID="btnReset" runat="server" Text="Reset" CausesValidation="false" CssClass="btn btn-default" OnClick="btnReset_Click" />
    </fieldset>
</asp:Content>

