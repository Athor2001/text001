<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/5/13
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html;charset=GB2312" language="java" pageEncoding ="GB2312" import="java.util.*" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html";charset="GB2312">
    <title>request���ö���---requestShowInfo.jsp</title>
</head>
<body bgcolor="#7fffd4">
<h1>���ղ�����������ǣ�<br></h1>
<%
    Enumeration enu =request.getParameterNames();
    while (enu.hasMoreElements()){
        String parameterName =(String)enu.nextElement();
        String parameterValue=request.getParameter(parameterName);
        out.print("�������ƣ�"+parameterName+"<br>");
        out.print("�������ݣ�"+parameterValue+"<br>");
    }
%>
</body>
</html>
