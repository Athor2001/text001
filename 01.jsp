<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/5/13
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GB2312" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html";charset="GB2312">
    <meta http-equiv="refresh" content="1" url="01.jsp">
    <title>刷新时间</title>
</head>
<body bgcolor="black">
<h3>现在的时间是：</h3>
<hr/>
<%=new java.util.Date()%>
<%
    response.setHeader("refresh","1");
%>
<hr/>
</body>
</html>
