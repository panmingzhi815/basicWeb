<%--
  Created by IntelliJ IDEA.
  User: panmingzhi815
  Date: 2014/12/2
  Time: 0:28
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
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-4">
            <nav class="menu" data-toggle="menu" style="width: 200px">
                <ul class="nav nav-primary">
                    <li><a href="#"><i class="icon-link"></i>访问页面</a></li>
                    <li><a href="#"><i class="icon-user"></i>系统角色</a></li>
                    <li><a href="#"><i class="icon-user"></i>登录用户</a></li>
                    <li><a href="#"><i class="icon-key"></i>操作权限</a></li>
                    <li>
                        <a href="#"><i class="icon-list"></i>系统日志</a>
                        <ul class="nav">
                            <li><a href="#">性能日志</a></li>
                            <li><a href="#">登陆日志</a></li>
                        </ul>
                    </li>
                    <li><a href="#"><i class="icon-book"></i>数据字典</a></li>
                </ul>
            </nav>
        </div>
        <div class="col-md-8"></div>
    </div>
</div>
</body>
</html>