using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TerpFarm.Business.BusinessClientManager;
using TerpFarm.Domain.BusinessClients;

public partial class BusinessClientProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BusinessClient bc = new BusinessClient();
        BusinessClientMgr bcMgr = new BusinessClientMgr();

        bc = bcMgr.QueryBusinessClient(bc);

        Session.Add("id", bc.Id);
        lblCompanyName.Text = String.Format("{0}", bc.CompanyName);
        lblPOC.Text = String.Format("{0}", bc.PointOfContact);
        lblADdressOne.Text = String.Format("{0}", bc.Address1);
        lblAddressTwo.Text = String.Format("{0}", bc.Address2);
        lblCity.Text = String.Format("{0}", bc.City);
        lblState.Text = String.Format("{0}", bc.State);
        lblZip.Text = String.Format("{0}", bc.Zip);
        lblPhone.Text = String.Format("{0}", bc.Phone);
        lblEmail.Text = String.Format("{0}", bc.Email);
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        BusinessClient bc = new BusinessClient();
        bc.Id = Convert.ToInt32(Session["id"]);

        BusinessClientMgr bcMgr = new BusinessClientMgr();
        bcMgr.DeleteBusinessClient(bc);

        Server.Transfer("BCProfileDeleted.aspx");
    }
}