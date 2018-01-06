<%@page import="java.io.PrintWriter"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'Case3_response.jsp' starting page</title>
  </head>
   <!-- response对象
    HttpServletResponse的实例
   	包含了响应客户请求的相关信息，但在JSP中很少使用到。
   	具有页面作用域：访问一个页面时，该页面内的response对象只对此次访问有效。
   	String getCharacterEncoding()：返回响应用的是何种字符编码
   	void setContentType(String type)：设置响应的MIME类型
   	PrinterWriter getWriter()：返回可以向客户端输出字符串的一个对象（注意PrinterWriter与out的区别）
   	sendRedirect(String location)：重新定向客户端的请求
     -->
  <body>
    <%
    response.setContentType("text/html;charset=utf-8");//设置响应的MIME类型
    
    out.println("<h1>response对象</h1>");
    out.println("<hr>");
    //out.flush();//调用次句代码可以将打印顺序提前于writer
    
    PrintWriter writer = response.getWriter();//获得输出流对象
    //writer.println("我是PrintWriter打印出来的字符串");//打印顺序提前于out对象
    
    response.sendRedirect("reg.jsp");//请求重定向
     %>
    
  </body>
</html>
