<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/5/13
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html;charset=GB2312" language="java" pageEncoding ="GB2312"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html";charset="GB2312">
    <title>request���ö���---requestLogin.jsp</title>
</head>
<body>
<form name="form1" method="post" action="requsetLogin.jsp"><
    <p align="center">�û���:<input type="text" name="username"></p>
    <p align="center">����:<input type="password" name="password"></p>
    <p align="center">�ֻ���:<input type="number" name="PhoneNumeber"></p>
    <p align="center">
    <input type="submit" name="Submit" value="OK">
    <input type="reset" name="Reset" id="Reset" value="Cancel">
    </p>
</form>
</body>
</html>