<%--
  Created by IntelliJ IDEA.
  User: lip
  Date: 2021/6/13
  Time: 1:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="//unpkg.com/layui@2.6.8/dist/css/layui.css">
    <script src="//unpkg.com/layui@2.6.8/dist/layui.js"></script>
</head>
<body>
    <div style="background: #393D49;padding: 20px;text-align: center;color: aqua;font-size: 30px">学生信息管理系统</div>
    <div class="layui-row">
        <div class="layui-col-md2" style="padding-top: 10px">
            <div class="layui-panel" >
                <ul class="layui-menu" id="docDemoMenu1">
                    <li lay-options="{id: 100}">
                        <div class="layui-menu-body-title" style="font-size: 20px;padding: 10px">系统主页</div>
                    </li>
                    <li class="layui-menu-item-divider"></li>
                    <li lay-options="{id: 101}">
                        <div class="layui-menu-body-title" style="font-size: 20px;padding: 10px">
                            全部学生信息&nbsp;&nbsp;<span class="layui-badge-dot"></span>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="layui-col-md10">
            <table class="layui-table">
                <colgroup>
                    <col width="150">
                    <col width="200">
                    <col>
                </colgroup>
                <thead>
                <tr>
                    <th>ID</th>
                    <th>name</th>
                    <th>age</th>
                    <th>gender</th>
                    <th>number</th>
                    <th>address</th>
                    <th>status</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${data}" var="student">
                    <tr>
                        <td>${student.id}</td>
                        <td>${student.name}</td>
                        <td>${student.age}</td>
                        <td>${student.gender}</td>
                        <td>${student.number}</td>
                        <td>${student.address}</td>
                        <td>${student.status}</td>
                        <td><a href="${pageContext.request.contextPath}/delete/${student.id}" class="layui-btn layui-btn-normal">删除</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <div style="text-align: center">
                <button type="button" class="layui-btn layui-btn-normal" onclick="insertStudents()">插入</button>
                <button type="button" class="layui-btn layui-btn-normal" onclick="updateStudents()">修改</button>
            </div>
        </div>
    </div>
    <script>

        function updateStudents(){
            layui.use(["layer"],function (){
                layer = layui.layer;
                layer.open({
                    type : 2,
                    content : "${pageContext.request.contextPath}/updatemessage.jsp",
                    area: ["500px","480px"]
                });
            });
        }

        function insertStudents(){
            layui.use(["layer"],function (){
                layer = layui.layer;
                layer.open({
                    type : 2,
                    content : "${pageContext.request.contextPath}/insertmessage.jsp",
                    area: ["500px","480px"]
                });
            });
        }
    </script>
</body>
</html>
