<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'Case3.jsp' starting page</title>
  </head>
    <!-- JSP内置对象 -->
    <!-- 
    	缓冲区：类似于android中的缓存，用于暂时保存数据
     -->
    <!-- out对象 
    JspWriter的实例
    void println()：向客户端打印信息
    void clear()：清除缓冲区的内容，不能再flush之后调用
    void clearBuffer()：清除缓冲区的内容，可以在flush之后调用
    void flush()：将缓冲区的内容输出到客户端
    int getBufferSize()：返回缓冲区字节数的大小，如果不设缓冲区则为0
    int getRemaining()：返回缓冲区的剩余可用空间
    void close():关闭输出流
    -->
  <body>
  	<h1>out内置对象</h1>
  	<%
  		out.println("<h2>静夜思</h2>");
  		out.println("床前明月光<br>");
  		out.println("疑是地上霜<br>");
  		out.flush();//将上面三句内容flush到客户端，缓冲区的可用空间变大
  		//out.clear();//若调用次句代码则会抛出异常，因为缓冲区的内容已经被flush了，下面的代码也将不会被执行
  		out.clearBuffer();//不会抛出异常
  		out.println("举头望明月<br>");
  		out.println("低头思故乡<br>");
  	 %>
  	 缓冲区大小：<%=out.getBufferSize() %>byte<br>
  	 缓冲区剩余空间：<%=out.getRemaining() %>byte<br>
  	 是否自动清空缓冲区：<%=out.isAutoFlush() %><br>
  	 <br>
  </body>
</html>
