<%@ page contentType="text/html; charset=utf-8" %> 
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="java.sql.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>��Դ��</title>

<style type="text/css">
.�ϴ���֪ {
	color: #F00;
}

body {
	background-color: #F0F0F0;
}
</style>
</head>

<body>
<img src="img/biaoti.jpg" width="1537" height="304" />
<marquee>
<p class="����">��ӭ��������Դ������վ</p>
</marquee>
    
                        <span class="����">
                        <div class="header">
<div class="wrapper">
<div class="toploginleft" id="toplogin">
            <span>��¼����</span><input id="txtusername" type="text" value="" />
            <span>���룺</span><input id="txtuserpwd" type="password" value="" /><input type="button" class="login" onclick="indexuserlogin();" value="��¼" />
        <a href="/reg.html" target="_blank">ע��</a><span>|</span> <a href="/reg.html" target="_blank">��������</a></div>
</div>
<form action="shan1.jsp"  enctype="multipart/form-data" name="form1" id="form1">
  <p>
    <label for="��Դ����"></label>
    <label for="���"></label>
    <a href="�������� ������Դ����.html">�ص��ҵ���Դ֮��</a>
 <a href="mupdate.jsp"><br /></a></p><p><a href="cha.jsp">��ѯ��Դ</a>&nbsp; &nbsp; <a href="shan.jsp">ɾ����Դ</a>&nbsp; &nbsp; <a href="xiu.jsp">�޸���Դ</a>&nbsp; &nbsp;       <a href="firstpage.jsp">����</a>&nbsp; &nbsp;  
  <div align="center" style=""> 
    <p>ɾ��</p> 
    <p>&nbsp;</p> 
  <p>��Դ���ƣ�
      <label for="name"></label> 
     <input type="text" name="name" id="ziyuanmingcheng2" /> 
  </p> 

  <p> 
    <input type="submit" value="ɾ��" /> 
 </p> 
  <p>&nbsp; </p> 
  </div> 
</p></form>
</form>
</body>
</html>