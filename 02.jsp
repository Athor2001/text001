<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2013/1/1
  Time: 1:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String bassPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=bassPath%>">
    <title>Title</title>
</head>
<body>
<%@include file="top.html"%>
<p>您喜欢吃什么水果：</p>
<form name="form1" method="post" action="result.jsp">
    <p>
        <input nem="hobby0" type="checkbox" id="apple" value="苹果">
        苹果
    </p>
    <p>
        <input nem="hobby1" type="checkbox" id="melon" value="西瓜">
        西瓜
    </p>
    <p>
        <input nem="hobby2" type="checkbox" id="banana" value="香蕉">
        香蕉
    <p>
        <input nem="hobby3" type="checkbox" id="mango" value="芒果">
        芒果
    </p>
    <p>
        <input nem="hobby4" type="checkbox" id="cherry" value="樱桃">
        樱桃
    </p>
        <p>
            <input type="submit" name="Submit" value="下一步">
            <input type="reset" name="Submit2" value="重置">
        </p>
</form>
</body>
</html>
</body>
</html>
