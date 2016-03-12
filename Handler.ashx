
       
      
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
        // string echoStr = HttpContext.Current.Request.QueryString["echoStr"];
        // string echoStr = HttpContext.Current.Request["echoStr"];
                 //// string echoStr = context.Request["echoStr"];
                //// context.Response.Write(echoStr);

        //context.Response.Write(context.Request.InputStream);一句结束验证
        
      string weixin = PostInput();//获取xml数据
      //自定义方法，获取xml数据
  
      
        XmlDocument doc = new XmlDocument();
        // doc.LoadXml(weixin);     //doc.load()用法？
      doc.Load(System.Web.HttpContext.Current.Server.MapPath("b.Xml"));//读取xml字符串
         //doc.Save(System.Web.HttpContext.Current.Server.MapPath("a.Xml"));
XmlElement root = doc.DocumentElement;
XmlNode MsgType = root.SelectSingleNode("MsgType");//获取收到的消息类型。文本(text)，图片(image)，语音等。
string messageType = MsgType.InnerText;

string docstr = doc.InnerXml.ToString();
context.Response.Write(docstr);
        
    }

private string PostInput()/// 获取post请求数据
{
Stream s = System.Web.HttpContext.Current.Request.InputStream;
byte[] b = new byte[s.Length];
s.Read(b, 0, (int)s.Length);
return Encoding.UTF8.GetString(b);
}
//四行代码，就获取了xml数据。asp.net很少用，所以不知道有没有更好的方法。



    
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}