<%@ page contentType="text/html; charset=UTF-8"%>
<!-- CAS瀹夊叏璁よ瘉缃戝叧鐧诲綍椤甸潰 -->
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.net.URLDecoder"%>

<%

			String loginAction = null;
	
			String path = request.getContextPath();
			String username = (String)request.getSession().getAttribute("LOGIN");
			/* java.security.Principal principal = request.getUserPrincipal();
			if(principal!=null){
				username= principal.getName();
			} */			
			loginAction =path+ "/caslogin?username_=" +username;
			String sURI=request.getParameter("sourceURI");
			if(sURI!=null&&!"".equals(sURI)){
				loginAction+="&sourceURI="+sURI;
			}
			//String sourceQueryString=request.getParameter("sourceQueryString");
			//鏀逛负绋嬪簭鎷兼帴
			String sourceQueryString;
			String paraSource = request.getParameter("paraSource");
			paraSource = paraSource == null?"":paraSource;
			String currentSkins = request.getParameter("currentSkins");
			currentSkins = currentSkins == null?"":currentSkins;
			String orgId = request.getParameter("orgId");
			orgId = orgId == null?"":orgId;
			String deptId = request.getParameter("deptId");
			deptId = deptId == null?"":deptId;
			sourceQueryString = "paraSource="+paraSource+"&currentSkins="
						+currentSkins+"&orgId="+orgId+"&deptId="+deptId;
			sourceQueryString = URLEncoder.encode(sourceQueryString,   "utf-8"); 
			if(sourceQueryString!=null && !"".equals(sourceQueryString)){
				loginAction+="&sourceQueryString="+sourceQueryString;
			}

%>
    <script type="text/javascript">
    window.location.href="<%=loginAction%>";
	</script>
