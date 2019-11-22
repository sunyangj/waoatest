<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Enumeration"%>
<%@ page import="avicit.platform6.commons.utils.ViewUtil"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="favicon.ico" >
<meta http-equiv="X-UA-Compatible" content="IE=8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录转向</title>

<%
	String indexPage = "";
	Object obj=session.getAttribute("LOGINSUCCESSNEXTURL_");
	if(null != obj){
		indexPage = obj.toString();
	}
	String baseurl = ViewUtil.getRequestPath(request);
	//没有值  
	if("".equals(indexPage)){
		//indexPage= baseurl + "avicit/platform6/modules/system/sysdashboard/index.jsp";
		indexPage= baseurl + "portal";
	}else{
		if(indexPage.startsWith("/")){
			//如果indexPage存在斜杠，则截取掉斜杠：防止浏览器中出现两个斜杠
			indexPage = baseurl + indexPage.substring(1);
		}else if(indexPage.startsWith("avicit@")){
			indexPage=indexPage.substring(7);
		}else{
			indexPage = baseurl + indexPage;
		}
	}
	//增加参数传递的代码
	String sourceQueryString;
	String paraSource = request.getParameter("paraSource");
	paraSource = paraSource == null?"":paraSource;
	String currentSkins = request.getParameter("currentSkins");
	currentSkins = currentSkins == null?"":currentSkins;
	String orgId = request.getParameter("orgId");
	orgId = orgId == null?"":orgId;
	String deptId = request.getParameter("deptId");
	deptId = deptId == null?"":deptId;
	indexPage += "?paraSource="+paraSource;
	sourceQueryString = "paraSource="+paraSource+"&currentSkins="
			+currentSkins+"&orgId="+orgId+"&deptId="+deptId;
	if(indexPage.indexOf("?")==-1){
		indexPage += "?"+sourceQueryString;
	}else{
		indexPage += "&"+sourceQueryString;
	}
%>
<script language="javascript">
	location.href = "<%=indexPage%>";
</script>
</head>
<body>
</body>
</html>