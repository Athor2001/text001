<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2013/1/1
  Time: 0:46
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
    <title>网上调查步骤之三</title>
</head>
<body>
<%@include file="top.html"%>
<%
    String namesex=(String) session.getValue("namesex");
    String hobby[]=new String[5];
    for(int i=0;i<hobby.length;i++){
     //new数组中存储了受访者的的选择
     String param="hobby"+i;
     String getparam=request.getParameter(param);
     if(getparam!=null) {
         hobby[i] = new String(getparam.getBytes("ISO-8859-1"), "UTF-8");
         synchronized (application) {
             Integer count = (Integer) application.getAttribute(param);
             if (count == null)
                 count = new Integer(0);
             count = new Integer(count.intValue() + 1);
             application.setAttribute(param, count);
         }
     }
    }
%>
<p>
    <%=(String)session.getValue("namesex")%>
    ，你所感兴趣的业余爱好如下：
</p>
<%
    for(int i=0;i<hobby.length; i++)
        if(hobby[i]!=null){
            out.print("<p>");
            out.println(hobby[i]);
            out.println("</p>");

        }
    String hobbyname[]={"电影欣赏","阅读书籍","体育运动","户外旅游","流行音乐"};
        for(int i=0;i<hobby.length;i++){
            Integer count=(Integer)application.getAttribute("bobby"+i);
            if(count==null)
                count = new Integer(0);
            out.println("<p>选择"+hobbyname[i]+"的人次为"+count+"</p>");
        }
%>
<hr>
<p>
    <%=(String)session.getValue("namesex")%>
    ，你喜欢吃的水果如下：
</p>
<%
    for(int i=0;i<hobby.length; i++)
        if(hobby[i]!=null){
            out.print("<p>");
            out.println(hobby[i]);
            out.println("</p>");

        }
    String hobbyname1[]={"苹果","西瓜","香蕉","芒果","樱桃"};
    for(int i=0;i<hobby.length;i++){
        Integer count=(Integer)application.getAttribute("bobby"+i);
        if(count==null)
            count = new Integer(0);
        out.println("<p>选择"+hobbyname1[i]+"的人次为"+count+"</p>");
    }
%>
<hr>
<p>
    <%=(String)session.getValue("namesex")%>
    ，您所喜欢的明星如下：
</p>
<%
    for(int j=0;j<hobby.length; j++)
        if(hobby[j]!=null){
            out.print("<p>");
            out.println(hobby[j]);
            out.println("</p>");

        }
    String hobbyname2[]={"成龙","李连杰","李小龙","吴京","甄子丹"};
    for(int i=0;i<hobby.length;i++){
        Integer count=(Integer)application.getAttribute("bobby"+i);
        if(count==null)
            count = new Integer(0);
        out.println("<p>选择"+hobbyname2[i]+"的人次为"+count+"</p>");
    }
%>
</body>
</html>
