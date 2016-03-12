using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

        string echoStr = Request.QueryString["echoStr"].ToString();
        Response.Output.Write(echoStr);//不能返回至请求数据流，只能显示在网页
        //Response.Write(echoStr);//不能返回至请求数据流，只能显示在网页
           

    }

    

    
}