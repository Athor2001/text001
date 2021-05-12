<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/5/12
  Time: 19:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page  language="java" import="java.util.*" pageEncoding="gb2312" %>
<%String path = request.getContextPath();
String basePath =request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01Transitional//EN">
<html>
  <head>
    　<base href="<%=basePath%>">
    <title>湖南开发大学</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords"content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is mypage">
  </head>
  <body bgcolor="aqua">
  <%@include file="top.html"%>>
  <%
    String s= request.getParameter("choice");
    if(s==null)
      s="1";
    int choice = Integer.parseInt(s);
    switch (choice){
      case 1:%>
  <%@include file="welcome.html"%>>
  <%break;
  case 2:%>
  <%@include file="feature.html"%>>
<%break;
case 3:%>
  <%@include file="contact.html"%>>
<%break;
    }
%>
  </body>
</html>
