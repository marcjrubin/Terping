using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewDeafClient : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtDeafName.Text = "";
        ddlInterpreterPref.ClearSelection();
        ddlSigningPref.ClearSelection();
    }

    protected void btnCreateDeaf_Click(object sender, EventArgs e)
    {
        string name = txtDeafName.Text;
        string sign = ddlSigningPref.SelectedItem.ToString();
        int terp = Convert.ToInt32(ddlInterpreterPref.SelectedValue);

    }    
}