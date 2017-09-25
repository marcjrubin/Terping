using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TerpFarm.Domain.BusinessClients;
using TerpFarm.Business.BusinessClientManager;

public partial class NewBusiness : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Reset_Click(object sender, EventArgs e)
    {
        txtAddressOne.Text = "";
        txtAddressTwo.Text = "";
        txtCity.Text = "";
        txtCompany.Text = "";
        txtEmail.Text = "";
        txtPhone.Text = "";
        txtPOC.Text = "";
        txtZip.Text = "";
        ddlStateList.ClearSelection();
    }

    protected void btnCreate_Click(object sender, EventArgs e)
    {
        BusinessClient bc = new BusinessClient();
        bc.CompanyName = txtCompany.Text;
        bc.PointOfContact = txtPOC.Text;
        bc.Address1 = txtAddressOne.Text;
        bc.Address2 = txtAddressTwo.Text;
        bc.City = txtCity.Text;
        bc.State = ddlStateList.SelectedValue;
        bc.Zip = txtZip.Text;
        bc.Email = txtEmail.Text;
        bc.Phone = txtPhone.Text;

        BusinessClientMgr bcMgr = new BusinessClientMgr();
        bcMgr.StoreNewBusinessClient(bc);
        
        Server.Transfer("BusinessClientProfile.aspx");
    }
}