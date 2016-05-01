<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="utf-8">
    <title>校视通</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!--<link href='http://fonts.useso.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>-->
    <link rel="stylesheet" href="${assetsPath}/css/app.css"/>
    <link rel="stylesheet" href="${assetsPath}/css/app.min.css"/>
    <link rel="stylesheet" href="${assetsPath}/css/admin_manage.css"/>

    <script type="text/javascript"src="//cdn.bootcss.com/jquery/2.2.0/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>


<!--------------------
        header
--------------------->
<div class="main">
    <div class="admin">
        <div class="navbar" role="navigation">
            <div class="navbar-header">
                <a class="" href="index.html">
            <span class="navbar-brand">
                <span class="fa fa-book"></span> 校视通
            </span>
                </a>
            </div>

            <div class="navbar-user" style="height: 1px;">
                <ul id="main-menu" class="nav navbar-nav navbar-right">
                    <li class="dropdown hidden-xs">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <span class="fa fa-user padding-right-small" style="position:relative;top: 3px;"></span> xuzhao***.com
                            <i class="fa fa-caret-down"></i>
                        </a>

                        <ul class="dropdown-menu">
                            <li><a href="./">个人中心</a></li>
                            <li class="divider"></li>
                            <li><a href="./">账号设置</a></li>
                            <li><a href="./">意见反馈</a></li>
                            <li class="divider"></li>
                            <li><a tabindex="-1" href="sign-in.html">登出</a></li>
                        </ul>
                    </li>
                </ul>

            </div>
        </div>

        <!--------------------
               nav
        --------------------->
        <div class="sidebar-nav">
            <ul>
                <li>
                    <a href="#" data-target="userManage" class="nav-header">
                        <i class="fa fa-user"></i> 用户管理<i class="fa fa-collapse"></i>
                    </a>
                </li>
                <li>
                    <ul class="userManage nav nav-list" style="display: none;border-bottom: 1px solid #ccc;">
                        <li><a href="#"><span class="fa fa-caret-right"></span> 用户列表</a></li>
                        <li><a href="#"><span class="fa fa-caret-right"></span> 注册审核</a></li>
                    </ul>
                </li>

                <li>
                    <a href="#" data-target="resourceManage" class="nav-header">
                        <i class="fa fa-folder"></i> 资源管理<i class="fa fa-collapse"></i>
                    </a>
                </li>
                <li>
                    <ul class="resourceManage nav nav-list" style="display: none;border-bottom: 1px solid #ccc;">
                        <li><a href="web-latest.html"><span class="fa fa-caret-right"></span> 资源1</a></li>
                        <li><a href="web-parameter.html"><span class="fa fa-caret-right"></span> 资源2</a></li>
                        <li><a href="web-bug.html"><span class="fa fa-caret-right"></span> 资源3</a></li>
                        <li><a href="web-courselist.html"><span class="fa fa-caret-right"></span> 课程列表</a></li>
                        <li><a href="courseadd.jsp"><span class="fa fa-caret-right"></span> 课程添加</a></li>
                    </ul>
                </li>

                <li>
                    <a href="#" data-target="dashboard-menu3" class="nav-header">
                        <i class="fa fa-fw fa-group"></i>&nbsp;&nbsp;小组管理<i class="fa fa-collapse"></i>
                    </a>
                </li>
                <li>
                    <ul class="dashboard-menu3 nav nav-list" style="display: none;border-bottom: 1px solid #ccc;">
                        <li><a href="users-change.html"><span class="fa fa-caret-right"></span>小组1</a></li>
                    </ul>
                </li>

                <li><a href="#" data-target="dashboard-menu4" class="nav-header"><i
                        class="fa fa-fw fa-volume-up"></i>&nbsp;&nbsp;资讯管理</a></li>
                <li>


            </ul>
        </div>


        <div class="content-course">

            <!--  课程添加   -->
            <h2 class="dash-head">课程添加</h2>
            <form class="video-add" name="form1" id="form1" action="UploadServlet" method="post" enctype="multipart/form-data" target="if" onsubmit="return go()">
                <div class="form-group form-info">
                    <label for="courseName">课程名称</label>
                    <input type="text" class="form-control" id="courseName" value="">
                </div>
                <div class="select">
                    <div class="">
                        <span>一级目录</span>
                        <select class="form-control">
                            <option>Option 1</option>
                            <option>Option 2</option>
                            <option>Option 3</option>
                            <option>Option 4</option>
                            <option>Option 5</option>
                        </select>
                    </div>
                    <div class="">
                        <span>二级目录</span>
                        <select class="form-control">
                            <option>Option 1</option>
                            <option>Option 2</option>
                            <option>Option 3</option>
                            <option>Option 4</option>
                            <option>Option 5</option>
                        </select>
                    </div>
                    <div class="">
                        <span>三级目录</span>
                        <select class="form-control">
                            <option>Option 1</option>
                            <option>Option 2</option>
                            <option>Option 3</option>
                            <option>Option 4</option>
                            <option>Option 5</option>
                        </select>
                    </div>
                </div>
                <div class="form-group inputFile">
                    <label for="inputFile">上传视频</label>
                    <input type="file" id="inputFile" value="">
                    <p class="help-block">支持MP4格式</p>
                </div>
                <button type="submit" class="btn btn-success btn-course">确定</button>
            </form>
            <!--  END 课程添加-->
            <iframe id="if" name="if" src="" style="display: none"></iframe>

        </div>

      </div>
   </div>

   <div id="suspend">
     <div class="suspend-content">
       <p id="cname"></p>
       <div class="progress">
         <div id="prop" class="progress-bar progress-bar-primary" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
         </div>
       </div>
       <button type="reset" class="btn btn-danger" onclick="cancel()">取消上传</button>
     </div>


        <script>
            $(document).ready(function () {
                $(".sidebar-nav a").click(function(){
                    var tree="."+$(this).attr("data-target");
                    $(tree).slideToggle(300);
                    if($(this).hasClass("collapsed")){
                        $(this).removeClass("collapsed");
                    }else{
                        $(this).addClass("collapsed");
                    }
                })
            });
            function go(){
              form1.submit();
              var courseName = document.getElementById('courseName');
              var cname = document.getElementById('cname');
              var suspend = document.getElementById('suspend');
              var prop = document.getElementById("prop");
              suspend.style.display = 'block';
              cname.innerHTML = courseName.value;
              var timer = setInterval("getP()",50);
            }
            function cancel() {
              document.getElementById("suspend").style.display = "none";
              document.getElementById("prop").style.width = 0;
              document.getElementById('inputFile').value = "";
            }

            var request;
            if (window.XMLHttpRequest) {
              request = new XMLHttpRequest();
            } else {
              request = new ActiveXObject('Microsoft.XMLHTTP');
            }

            function getP(){
              request.onreadystatechange = callBack;
              var url = "getProgressServlet";
              request.open("post",url,true);
              request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
              request.send( "&timeStamp=" + (new Date()).getTime() );
            }

            function callBack(){
              if( request.readyState===4 && request.status===200 ){
                var result = request.responseText;
                result = result.replace(/(^\s*)|(\s*$)/g, "");
                var res = result.split(",");
                var flag = res[1];
                var per = parseInt(res[0]);
                var err = res[2];
                document.getElementById("prop").style.width = per+"%";
                if(flag == "OK"){
                  window.clearInterval(timer);
                  alert("课程添加成功！");
                  document.getElementById("suspend").style.display = "none";
                  document.getElementById("prop").style.width = 0;
                }
                if( err!="" || err.length>0 ) {
                  window.clearInterval(timer);
                  alert(err);
                }
                if( flag==null ) {
                  window.clearInterval(timer);
                }
              }
            }

        </script>

        <link rel="stylesheet" href="//cdn.bootcss.com/iCheck/1.0.2/skins/square/blue.css"/>

        <script src="//cdn.bootcss.com/iCheck/1.0.2/icheck.min.js"></script>
        <!--icheck-->
        <script>
            $(document).ready(function(){
                $('input').iCheck({
                    checkboxClass: 'icheckbox_square-blue',
                    radioClass: 'iradio_square-blue',
                    increaseArea: '20%' // optional
                });
            });
        </script>


</body>
</html>
