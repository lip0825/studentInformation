<%--
  Created by IntelliJ IDEA.
  User: lip
  Date: 2021/6/13
  Time: 16:28
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
    <form class="layui-form" action="${pageContext.request.contextPath}/update" method="get">
        <div class="layui-form-item" style="width:400px">
            <label class="layui-form-label">id</label>
            <div class="layui-input-block">
                <input type="text" name="id" required  lay-verify="required"  autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item" style="width:400px">
            <label class="layui-form-label">name</label>
            <div class="layui-input-block">
                <input type="text" name="name"  autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item" style="width: 400px">
            <label class="layui-form-label">age</label>
            <div class="layui-input-block">
                <input type="text" name="age"   autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item"  style="width: 400px">
            <label class="layui-form-label">gender</label>
            <div class="layui-input-block">
                <input type="text" name="gender"   autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item" style="width: 400px">
            <label class="layui-form-label">number</label>
            <div class="layui-input-block">
                <input type="text" name="number"  autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item" style="width: 400px">
            <label class="layui-form-label">address</label>
            <div class="layui-input-block">
                <input type="text" name="address"  autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item" style="width: 400px">
            <label class="layui-form-label">status</label>
            <div class="layui-input-block">
                <input type="text" name="status"   autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item" style="text-align: center;width: 400px">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
            </div>
        </div>
    </form>
</body>
</html>
