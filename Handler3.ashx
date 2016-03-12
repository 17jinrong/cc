<%@ WebHandler Language="C#" Class="Handler3" %>

using System;
using System.Web;

public class Handler3 : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
                  /// string echoStr = HttpContext.Current.Request.QueryString["echoStr"];
                 /// string echoStr = HttpContext.Current.Request["echoStr"];
            // string echoStr = context.Request["echoStr"];
           // context.Response.Write(echoStr);

        context.Response.Write(context.Request["echoStr"]);//一句结束验证
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}