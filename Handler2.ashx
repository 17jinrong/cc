<%@ WebHandler Language="C#" Class="Handler2" %>

using System;
using System.Web;
using System.Xml;
using System.Text;
using System.IO;

public class Handler2 : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) 
    {
         context.Response.ContentType = "text/plain";
         string wein = "dddd";
     
         context.Response.Write(wein);
        
    }





    
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}