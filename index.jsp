<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2013/1/1
  Time: 0:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>网上调查结果</title>
    <meta http-equiv="description" content="questionaire">
    <meta http_equiv="content-type"content="text/html";charset="UTF-8">
  </head>
  <center>
  <body background="1.jpg">
  <%@include file="top.html"%>
  <form name="form1" method="post" action="hobby.jsp">
    <p>欢迎参加网上调查</p>
    <p>姓名
      <input name="name" type="text" id="name" size="16">
    </p>
    <p>年龄
      <input name="name" type="number" id="number" size="16">
    </p>
    <p>性别
    <input name="sex" type="radio" value="male" checked>
      男
      <input name="sex" type="radio" value="female">
    女</p>
    <p>
    <input type="submit" name="Submit" value="下一步">
    <input type="reset" name="Submit2" value="重置">
    </p>
  </form>
  </center>
  </body>
</html>
