<%@ page language="java" import="java.util.*" pageEncoding="UTF8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
    <form action="resources.jsp" method="get">
    	<label>请输入要查询的名字：</label>
    	<input type="text" name="name" />
    	<input type="hidden" name="action" value="cx" />
    	<input type="submit" value="查询" />
    </form>
    <br><br><br>
    <form action="resources.jsp" method="get">
    	<label>添加新資源：</label><br>
    	<label>name：</label>
    	<input type="text" name="name" />
    	<label>type：</label>
    	<input type="text" name="type" />
    	<label>size：</label>
    	<input type="text" name="size" />
    	<label>date：</label>
    	<input type="text" name="date" />
    	<input type="hidden" name="action" value="cr" />
    	<input type="submit" value="添加" />
    </form>

  </body>
</html>
