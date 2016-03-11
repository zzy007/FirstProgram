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
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		Class.forName("org.gjt.mm.mysql.Driver");
		String url = "jdbc:mysql://10.10.133.219:3306/resources";
		String user = "root";
		String password1 = "root";
		conn = DriverManager.getConnection(url, user, password1);
		stat = conn.createStatement(); 
		rs = stat.executeQuery("select * from resources");
	%>
	<center>
		<br>
		<h2>资源信息</h2>
		<hr>
		<br>
		<h3>资源信息如下</h3>
		<table width="450" border="100" cellSpacing=1
			style="font-size: 15pt; border: dashed 1pt">
			<tr>
				<td>name</td>
				<td>keyword</td>
				<td>description</td>
			</tr>
			<%
				while (rs.next()) {
					out.print("<tr>");
					out.print("<td>" + rs.getString("name") + "</td>");
					out.print("<td>" + rs.getString("keyword") + "</td>");
					out.print("<td>" + rs.getString("description") + "</td>");
				out.print("</tr>");
				}
			%>
		</table>
		<%
			if (rs != null) {
				rs.close();
			}

			if (stat != null) {
				stat.close();
			}
			if (conn != null) {
				conn.close();
			}
		%>
		</form>
	</center>
</body>
</html>
