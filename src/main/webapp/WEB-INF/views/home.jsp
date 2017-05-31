<%@page isELIgnored="false" pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>websocket 演示印应用</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/style.css"/>
</head>
<body>
<div class="content-wrapper">
    <div class="container" id="message-box">
        <ul>
            <li>aaa (2017-05-31 18:18): 锄禾日当午</li>
            <li>aaa (2017-05-31 18:18): 锄禾日当午</li>
            <li>aaa (2017-05-31 18:18): 锄禾日当午</li>
            <li>aaa (2017-05-31 18:18): 锄禾日当午</li>
            <li>aaa (2017-05-31 18:18): 锄禾日当午</li>
            <li>aaa (2017-05-31 18:18): 锄禾日当午</li>
            <li>aaa (2017-05-31 18:18): 锄禾日当午</li>
            <li>aaa (2017-05-31 18:18): 锄禾日当午</li>
        </ul>
    </div>
</div>
<nav class="navbar navbar-default navbar-fixed-bottom">
    <div class="container-fluid">

        <form class="navbar-form">
            <div class="form-group col-xs-6 col-md-5 col-md-offset-1">
                <input type="text" class="form-control" placeholder="请输入消息..." style="width: 100%">
            </div>
            <button type="submit" id="submit" class="btn btn-default">发送</button>

            <div class="pull-right">

                <div class="form-group">
                    <input type="text" class="form-control" placeholder="请输入昵称">
                </div>
                <button type="submit" id="connect" class="btn btn-default">连接</button>
            </div>
        </form>
    </div>
</nav>
<script src="${pageContext.request.contextPath}/static/main.js"></script>
</body>
</html>
