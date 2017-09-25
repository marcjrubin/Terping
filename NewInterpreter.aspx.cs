using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewInterpreter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtAddressOne.Text = "";
        txtAddressTwo.Text = "";
        txtCity.Text = "";
        txtEmail.Text = "";
        txtPhone.Text = "";
        txtSpecialNotes.Text = "";
        txtTerpName.Text = "";
        txtZip.Text = "";

        ddlCertifications.ClearSelection();
        ddlInsured.ClearSelection();
        ddlLicensure.ClearSelection();
        ddlStateList.ClearSelection();
        ddlYearsTerping.ClearSelection();
    }

    protected void btnCreateTerp_Click(object sender, EventArgs e)
    {
        string addOne = txtAddressOne.Text;
        string addTwo = txtAddressTwo.Text;
        string city = txtCity.Text;
        string email = txtEmail.Text;
        string phone = txtPhone.Text;
        string notes = txtSpecialNotes.Text;
        string name = txtTerpName.Text;
        string zip = txtZip.Text;
        string cert = ddlCertifications.SelectedValue;
        string insured = ddlInsured.SelectedValue;
        string licensure = ddlLicensure.SelectedValue;
        string state = ddlStateList.SelectedValue;
        int years = Convert.ToInt32(ddlYearsTerping.SelectedValue);

    }
}