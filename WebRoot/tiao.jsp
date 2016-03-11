<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>资源网</title>

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
	<%
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String keyword = request.getParameter("keyword");
		String description = request.getParameter("description");
		System.out.println(name);
		System.out.println(keyword);
		System.out.println(description);
		Connection conn = null;
		Statement stat = null;

		Class.forName("org.gjt.mm.mysql.Driver");
		String url = "jdbc:mysql://10.10.133.219:3306/resources";
		String user = "root";
		String password = "root";
		conn = DriverManager.getConnection(url, user, password);
		stat = conn.createStatement();
		String sql = "insert into resources(name,keyword,description)values('"+name+"','" + keyword + "','" + description + "')";
		int i = stat.executeUpdate(sql);
	%>

	<center>
		<%
			if (i > 0) {
				out.print("<br><h3>上传成功！</h3>");
			} else {
		%>
		<a href=index.jsp>错误，请重新输入</a>
		<%
			}
		%>

		
	</center>
	<%
		if (stat != null) {
			stat.close();
		}
		if (conn != null) {
			conn.close();
		}
	%>
			<center>
			<h3>
			<a href=index.jsp>返回</a>
		</h3>
		 </center>
</body>
</html>
