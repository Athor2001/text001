<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/5/13
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GB2312" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html";charset="GB2312">
    <title>刷新时间</title>
</head>
<body bgcolor="#7fffd4">
<script language="javascript">
    var Arraycolor=new Array("red","yellow","green","break","bronze","coral","orange");
    var n=0;
    function turncolors(){
        n++;
        if (n==(Arraycolor.length-1)) n=0;
        document.bgColor = Arraycolor[n];
        setTimeout("turncolors()",1000);
    }
    turncolors();
</script>
<h3>现在的时间是：</h3>
<hr/>
<%=new java.util.Date()%>
<%
  response.setHeader("refresh","5");
%>
<hr/>
</body>
</html>
