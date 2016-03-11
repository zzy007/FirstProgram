<%@ page language="java" import="java.util.*" pageEncoding="UTF8"%>
<%@ page import="com.resources"%>
<%@ page import="java.sql.ResultSet"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%
	String name = request.getParameter("name");
	String action = request.getParameter("action");
	String sql = "";
	if (action.equals("cx")) {
		sql = "SELECT * FROM resources WHERE name = '" + name
				+ "'";
		ResultSet rs = resources.executeQuery(sql);
		int count = 0;
		while (rs.next()) {
			out.print("<br>ID:" + rs.getInt(1));
			out.print("\tName:" + rs.getString(2));
			out.print("\ttype:" + rs.getString(3));
			out.print("\tsize:" + rs.getFloat(4));
			out.print("\tdate:" + rs.getDate(5));
			out.print("\t<a href=\"resources.jsp?action=sc&id="
					+ rs.getInt(1) + "\">删除</a>");
			out.print("\t<a href=\"resources.jsp?action=xgp&id="
					+ rs.getInt(1) + "\">修改</a>");
					count++;
		}
		out.print("共查询到" + count + "条");
	}
%>

<%
	if (action.equals("sc")) {
		String id = request.getParameter("id");
		sql = "DELETE FROM resources WHERE `order number` = '" + request.getParameter("id")
				+ "'";
		resources.executeNonQuery(sql);
		out.println("delete OK!");
	}
%>

<%
	if (action.equals("cr")) {
		String type = request.getParameter("type");
		String size = request.getParameter("size");
		String date = request.getParameter("date"); /*Thanks */
		sql = String
				.format("INSERT INTO `resources` (`name`, `type`, `size`, `date`) VALUES ('%s', '%s', '%s', '%s')",
						name, type, size, date);
		int res = resources.executeNonQuery(sql);
		if (res >= 1) {
			out.println("插入成功！");
		} else {
			out.println("插入失败！");
		}
	}
%>

<%
	if (action.equals("xg")) {
		String type = request.getParameter("type");
		String size = request.getParameter("size");
		String date = request.getParameter("date"); /*Thanks */
		sql = "UPDATE resources SET type = '" + type + "', size='" + size
				+ "', date='" + date + "' WHERE `order number`='" + request.getParameter("id") + "'";
		resources.executeNonQuery(sql);
		out.println("修改成功！");
	}
%>

<html>
<head>
<title>JDBC DEMO</title>
</head>
<body>

<%
	if (action.equals("xgp")) {
		%>
		    <form action="resources.jsp" method="get">
    	<label>修改资源：</label><br>
    	<label>name：</label>
    	<input type="text" name="name" />
    	<label>type：</label>
    	<input type="text" name="type" />
    	<label>size：</label>
    	<input type="text" name="size" />
    	<label>date：</label>
    	<input type="text" name="date" />
    	<input type="hidden" name="action" value="xg" />
    	<input type="hidden" name="id" value="<%request.getParameter("id");%>" />
    	<input type="submit" value="修改" />
    </form>
		
		<%
	}
	
	try{
		resources.conn.close();
	
	}catch(Exception e) {
	}
	resources.conn = null;
%>

</body>
</html>
