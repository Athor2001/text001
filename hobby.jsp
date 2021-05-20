<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2013/1/1
  Time: 0:20
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
    <title>网上调查步骤之二</title>
</head>
<body>
<%
    String name=request.getParameter("name");
    name=new String(name.getBytes("ISO-8859-1"),"UTF-8");
    String sex = request.getParameter("sex");
    if(sex.equals("name"))
        sex="先生";
    else sex="女士";
    session.putValue("namesex",name+sex);
%>
<%@include file="top.html"%>
<p>
    //显示受访者姓名和性别
    <%=name%>
    <%=sex%>
    ,你好，请继续完成问卷调查</p>
<p>您感兴趣的业余爱好有：</p>
<form name="form1" method="post" action="result.jsp">
    <p>
        <input nem="hobby0" type="checkbox" id="film" value="影视欣赏">
        影视赏析
    </p>
    <p>
        <input nem="hobby1" type="checkbox" id="book" value="阅读书籍">
        阅读书籍
    </p>
    <p>
        <input nem="hobby2" type="checkbox" id="sports" value="体育运动">
        体育运动
    <p>
        <input nem="hobby3" type="checkbox" id="travel" value="户外旅游">
        户外旅游
    </p>
    <p>
        <input nem="hobby4" type="checkbox" id="music" value="流行音乐">
        流行音乐
    </p>
    <hr>
    <p>您喜欢吃什么水果：</p>
    <form name="form2" method="post" action="result.jsp">
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
        <hr>
        <p>您喜欢的明星：</p>
        <form name="form3" method="post" action="result.jsp">
            <p>
                <input nem="hobby0" type="checkbox" id="name1" value="成龙">
                成龙
            </p>
            <p>
                <input nem="hobby1" type="checkbox" id="name2" value="李连杰">
                李连杰
            </p>
            <p>
                <input nem="hobby2" type="checkbox" id="name3" value="李小龙">
                李小龙
            <p>
                <input nem="hobby3" type="checkbox" id="name4" value="吴京">
                吴京
            </p>
            <p>
                <input nem="hobby4" type="checkbox" id="name5" value="甄子丹">
                甄子丹
            </p>

    <p>
        <a href="02.jsp"> <input type="submit" name="Submit" value="下一步"></a>
        <input type="reset" name="Submit2" value="重置">
    </p>

</form>
</body>
</html>
