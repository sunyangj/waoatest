<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.StringWriter"%>
<%@page import="avicit.platform6.commons.utils.ViewUtil"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=ViewUtil.getRequestPath(request)%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>页面不存在</title>
<style type="text/css">
*{margin:0px;}
html,body{height:100%;
background-color:#ffffff;}
.error_dw {
	background-image: url(login/style/image/500/error_dw.jpg);
	background-repeat: repeat-x;
}
.error_title {
	font-family: "黑体";
	font-size: 32px;
	text-decoration: none;
	line-height: 46px;
	color: #666666;
}
.error_txt {
	font-family: "宋体";
	font-size: 12px;
	text-decoration: none;
	line-height: 28px;
	color: #333333;
}

#error a:link {
	font-family: "宋体";
	font-size: 12px;
	color: #C70600;
	text-decoration: none;
	line-height: 18px;
}


#error a:hover {
	font-family: "宋体";
	font-size: 12px;
	color: #307EAF;
	text-decoration: underline;
	line-height: 18px;
}
#error a:visited {
	font-family: "宋体";
	font-size: 12px;
	color: #C70600;
	text-decoration: none;
	line-height: 18px;
}
div{
    width: 100%;
    height: 100%;
    min-height: 243px;
    max-height: 243px;
    position: relative;
    max-width: 600px;
    background-image: url(login/style/404-bg.png);
    background-size: cover;
    background-position: center;
}
img{
	width: 79px;
    height: 24px;
    position: relative;
    margin-top: 20%;
    cursor: pointer;
}
</style>
<script type="text/javascript" src="static/js/platform/component/jQuery/jQuery-1.8.2/jquery-1.8.2.min.js"></script>
<script>
// 	$(function(){
// 		alert($("div").css('height'));
// 	});
</script>
</head>
<body>
<script type="text/javascript">
function returnLogin(){
	top.location.href = '<%=ViewUtil.getRequestPath(request)%>';
}
</script>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td align="center"><div style=""><img onclick="returnLogin();return false;" src="login/style/404-button.png"></div></td>
      </tr>
      <%-- <tr>
        <td>
        	<textarea id="detailErrorInfo" style="width:100%; height:300px; display:none"><%=errorDetail %></textarea>
        </td>
      </tr> --%>
    </table></td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>
