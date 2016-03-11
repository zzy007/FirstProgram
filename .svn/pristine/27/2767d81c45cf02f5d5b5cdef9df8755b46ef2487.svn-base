<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<title>资源网</title>

<style type="text/css">
.上传须知 {
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
<p class="滚动">欢迎您来到资源管理网站</p>
</marquee>
    
                        <span class="滚动">
                        <div class="header">
<div class="wrapper">
<div class="toploginleft" id="toplogin">
            <span>登录名：</span><input id="txtusername" type="text" value="" />
            <span>密码：</span><input id="txtuserpwd" type="password" value="" /><input type="button" class="login" onclick="indexuserlogin();" value="登录" />
        <a href="/reg.html" target="_blank">注册</a><span>|</span> <a href="/reg.html" target="_blank">忘记密码</a></div>
</div>
<form action="tiao.jsp"  name="form1" id="form1">
  <p>
    <label for="资源名称"></label>
    <label for="浏览"></label>
    <a href="超级链接 个人资源管理.html">回到我的资源之家</a>
       <h4> <a href="cha.jsp">查询资源</a>&nbsp; &nbsp; 
       <a href="shan.jsp">删除资源</a>&nbsp; &nbsp; 
       <a href="xiu.jsp">修改资源</a>&nbsp; &nbsp; 
       <a href="firstpage.jsp">王媛</a>&nbsp; &nbsp;
  <div align="center">
    <p><img src="img/up.jpg" width="140" height="140" /></p>
    <p>上传文件  </p>
  </div>
  <p align="center">
    <input type="file" name="浏览" id="浏览"/>
（请您上传小于50M的文件）</p>
  <div align="center">
    <table width="0" height="446" border="0">
      <tr>
        <td><p align="left"> 资源名称：
            <input type="text" name="name" id="name" />
          </p>
          <p align="left">*        需要大于10个字符，详细的标题容易被下载。</p>
          <p align="left"> 资源类型：
            <label for="资源类型"></label>
            <select name="ziyuanleixing2" id="ziyuanleixing">
              <option>选择资源</option>
              <option>1</option>
              <option>2</option>
              <option>3</option>
            </select>
          </p>
          <p align="left"> 关 键 词：
            <label for="关键词"></label>
            <input type="text" name="keyword" id="keyword" />
          </p>
          <p align="left">*  多个关键词请用,分离，最多填5个 。 </p>
          <p align="left">所属分类：
            <label for="  分类"></label>
            <select name="分类2" id="分类2">
              <option>选择类型</option>
              <option>图片</option>
              <option>音乐</option>
              <option>视频</option>
            </select>
          </p>
          <p align="left">资 源 分：
            <label for="分数"></label>
            <select name="分数2" id="分数">
              <option>1</option>
              <option>2</option>
              <option>3</option>
              <option>4</option>
              <option>5</option>
            </select>
          </p>
          <p align="left">资源描述：
            <label for="描述"></label>
            <textarea name="description" id="description" cols="45" rows="5">描述大于30个字</textarea>
          </p>
          <p align="left">
            <input name="radio" type="radio" id="同意2" value="同意" checked="checked" />
            <label for="同意2"></label>
       同意本网站上传规定 </p></td>
         
      </tr>
    </table>
  </div>
 <p align="center">
      <input name="提交" type="submit" value="提交"style="width:200px; height:19
      0px; border:2px solid #DCDCDC; font-size: 36px; background:" />
  </p>
</form>
<div align="center">
  <table width="459" height="189" border="0.5">
    <tr>
      <td><p align="left" class="上传须知">上传须知：</p>
        <p align="left">·如涉及侵权内容，您的文档将被移除</p>
        <p align="left"> ·请勿在未经授权的情况下上传任何涉及著作权授权的资源，除非该资源完全由您个人创作</p>
<p align="left">·点击上传资源即表示您确认该资源不违反资源分享的使用条款，并且您拥有该文档的所有版权或上传文档的授权</p></td>
    </tr>
  </table>
</div>
</body>
</html>
