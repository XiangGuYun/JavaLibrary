<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Case2.jsp' starting page</title>
    
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
  	<!-- 我是HTML注释，客户端看得见 -->
  	
  	<%--我是JSP注释，客户端看不见 --%>
  	
  	<%--JSP声明 --%>
    <%!
  	 String text = "我是JSP声明里面的字符串";
  	 int add(int x, int y){
  		 return x+y;
  	 }
    %>
 	
 	<%--JSP脚本 --%>
    <%
    	out.print("我是JSP脚本里面的Java语句"+" "+text+add(1,2));
    %><br>
 	
 	<%--JSP表达式 --%>
 	<%--表达式语句不以分号结束 --%>   
    	你好，<%=text %><br>
    	x+y= <%=add(1, 2)%>
  </body>
</html>
