<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>校视通</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="${assetsPath}/css/app.css"/>

    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.css"/>       <!--这个为该页面特殊引入,为适应bootstrap的图标-->
    <script type="text/javascript" src="//cdn.bootcss.com/jquery/2.2.0/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>


<div class="main">
    <div class="admin" id="admin_login">           <!--id为该页面特殊标记-->
        <div class="navbar" role="navigation">
            <div class="navbar-header">
                <a class="" href="${rootPath}/index">
            <span class="navbar-brand">
                <span class="fa fa-book"></span> 校视通
            </span>
                </a>
            </div>
        </div>


        <div class="login_box">
            <div class="modal-header">
                <i class="fa fa-desktop fa-2x col-md-2"></i>

                <h2 class="text-center col-md-4 col-md-offset-2">后台系统登录</h2>
            </div>
            <div class="modal-body">
                <form action="" class="form center-block center-block" method="post">
                    <div class="input-group col-md-6">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                        <input type="text" class="form-control input-lg" id="examInputEmail1" name="username"
                               placeholder="请输入您的账号"/>
                    </div>
                    <div class="input-group col-md-6">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                        <input type="password" class="form-control input-lg" id="examInputPassword1" name="password"
                               placeholder="请输入您的密码"/>
                    </div>

                    <div class="input-group col-md-6">
                        <input type="submit" class="btn btn-lg" value="登录" id="login-in">
                        <span><a href="#" style="text-align: right" class="forget">忘记密码?</a></span>
                    </div>
                </form>
            </div>

        </div>


    </div>
</div>

</body>
</html>
