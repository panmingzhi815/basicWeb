<%--
  Created by IntelliJ IDEA.
  User: panmingzhi815
  Date: 2014/12/1
  Time: 23:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <base href="<%=basePath %>">
    <meta content="text/html" charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <%@include file="/resources/plugin/zui/includeZui.jsp" %>
    <%--
    <link rel="stylesheet" type="text/css" href="">
    <script type="text/javascript" src=""></script>
    --%>
    <script type="text/javascript">
        $(function(){
            $('#myModal').modal(
                    {
                        keyboard : false,
                        backdrop : 'static',
                        show     : true
                    }
            )
            $("#loginBtn").click(function(){
                window.location.href = "/admin/manage";
            });
        })
    </script>
</head>
<body>
<!-- 模态框HTML -->
<div class="modal fade" id="myModal">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">请登录</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <input type="email" class="form-control" placeholder="用户名" required autofocus>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="密码" required>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me"> 保存登录
                    </label>
                </div>
                <button id="loginBtn" class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>