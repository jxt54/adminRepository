<%--
  Created by IntelliJ IDEA.
  User: 10729
  Date: 2021/1/25
  Time: 12:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() +  "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>Title</title>
    <base href="<%=basePath%>"/>
</head>
<body>
    <center>
        <form action="addStudent.do" method="post">
            <table>
                <tr>
                    <td>姓名</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>年龄</td>
                    <td><input type="text" name="age"></td>
                </tr>
                <tr align="center">
                    <td colspan="2"><input type="submit" value="提交">&nbsp&nbsp&nbsp&nbsp
                    <input type="reset" value="清空"></td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
