<%--
  Created by IntelliJ IDEA.
  User: 10729
  Date: 2021/1/25
  Time: 13:41
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
    <base href="<%=basePath%>">
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function () {
            loadStudentData();
            $("#btnLoader").click(function () {
                loadStudentData();
            })
            function loadStudentData() {
                //清除历史数据
                $("#info").html("");
                //显示查询数据
                $.ajax({
                    url:"listStudent.do",
                    type:"get",
                    dataType:"json",
                    success:function (data) {
                        $.each(data,function (i,n) {
                            $("#info").append("<tr>")
                                .append("<td>" + n.id + "</td>")
                                .append("<td>" + n.name + "</td>")
                                .append("<td>" + n.age + "</td>")
                                .append("</tr>")
                        })
                    }
                })
            }
        })
    </script>
</head>
<body>
    <center>
        <table>
            <thead>
                <tr>
                    <td align="center" colspan="2">
                        <input type="button" value="刷新" id="btnLoader">
                    </td>
                </tr>
                <tr>
                    <td>id</td>
                    <td>name</td>
                    <td>age</td>
                </tr>
            </thead>
            <tbody id="info">

            </tbody>
        </table>
    </center>
</body>
</html>
