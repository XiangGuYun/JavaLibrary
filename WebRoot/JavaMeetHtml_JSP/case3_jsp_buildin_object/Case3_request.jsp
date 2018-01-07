<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Case3_request.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h1>request对象</h1>
    <%
    	request.setCharacterEncoding("utf-8");//防止post放肆传递中文乱码，但无法解决get方式URL中文乱码问题
    	//解决get中文乱码需要配置tomcat目录下conf文件夹下server.xml，修改如下节点，配置完成需要重启服务器
    	/* 
    	 <Connector port="8080" protocol="HTTP/1.1"
               connectionTimeout="20000"
               redirectPort="8443" URIEncoding="utf-8"/>
    	 */
     %>
        用户名：<%=request.getParameter("username") %><br>
        爱好：<%
        	if(request.getParameterValues("favorite")!=null){
        		String[] fav = request.getParameterValues("favorite") ;
	        	for(String f:fav){
	        		out.println(f+"&nbsp;&nbsp;");
	        	}
        	}
         %>    
  </body>
</html>
