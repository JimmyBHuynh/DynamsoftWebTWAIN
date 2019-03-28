<%@ Page Language="C#" %>

<%
    try
    {
        string strImageName, strImageSize;
        HttpFileCollection files = HttpContext.Current.Request.Files;
        HttpPostedFile uploadfile = files["RemoteFile"];
        strImageName = uploadfile.FileName;
        strImageSize = Convert.ToString(Convert.ToInt32(uploadfile.ContentLength / 1024)) + "KB";
        string strInputFile = Server.MapPath(".") + "\\UploadedImages\\" + strImageName;
        uploadfile.SaveAs(strInputFile);
    }
    catch
    {
    }
%>