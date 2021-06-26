<%--
  Created by IntelliJ IDEA.
  User: lip
  Date: 2021/6/13
  Time: 12:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="//unpkg.com/layui@2.6.8/dist/css/layui.css">
    <script src="//unpkg.com/layui@2.6.8/dist/layui.js"></script>
</head>
<body>
    <div style="background: beige;width: 100%;height: 100%">
        <div class="layui-panel" style="background: aliceblue;width: 500px;top: 50%;left: 50%;position: absolute;transform: translate(-50%,-50%)">
            <div style="text-align: center;width: 400px;padding: 20px">学生信息管理系统</div>
            <form class="layui-form" action="${pageContext.request.contextPath}/login" method="post">
                <div class="layui-form-item" style="width:400px">
                    <label class="layui-form-label">用户名:</label>
                    <div class="layui-input-block">
                        <input type="text" name="username" required  lay-verify="required"  autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item" style="width:400px">
                    <label class="layui-form-label">密码:</label>
                    <div class="layui-input-block">
                        <input type="password" name="password" required  lay-verify="required"  autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div style="text-align: center;width: 400px;padding: 10px">${msg}</div>
                <div class="layui-form-item" style="text-align: center;width: 400px">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit lay-filter="formDemo">登录</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
