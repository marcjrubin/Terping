<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
        {
            Path = "~/Scripts/jquery-3.1.1.min.js",
            DebugPath = "~/Scripts/jquery-3.1.1.min.js",
            CdnPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.1.1.min.js",
            CdnDebugPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.1.1.min.js"
        });
    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        Session.Add("userlogin", "Marc J Rubin");
        Session.Add("todaydate", Convert.ToString(DateTime.Now));        
    }

    void Session_End(object sender, EventArgs e)
    {
        
    }

</script>
