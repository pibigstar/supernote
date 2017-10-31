<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="config/config.jsp" %>    
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>超级云笔记--用户注册</title>

    <!-- Global stylesheets -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
    <link href="${layoutCss}/icons/icomoon/styles.css" rel="stylesheet" type="text/css">
    <link href="${layoutCss}/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="${layoutCss}/core.css" rel="stylesheet" type="text/css">
    <link href="${layoutCss}/components.css" rel="stylesheet" type="text/css">
    <link href="${layoutCss}/colors.css" rel="stylesheet" type="text/css">
    <!-- /global stylesheets -->

    <!-- Core JS files -->
    <script type="text/javascript" src="${layoutJs}/plugins/loaders/pace.min.js"></script>
    <script type="text/javascript" src="${layoutJs}/core/libraries/jquery.min.js"></script>
    <script type="text/javascript" src="${layoutJs}/core/libraries/bootstrap.min.js"></script>
    <script type="text/javascript" src="${layoutJs}/plugins/loaders/blockui.min.js"></script>
    <!-- /core JS files -->

    <!-- Theme JS files -->
    <script type="text/javascript" src="${layoutJs}/plugins/forms/styling/uniform.min.js"></script>

    <script type="text/javascript" src="${layoutJs}/core/app.js"></script>
    <script type="text/javascript" src="${layoutJs}/pages/login.js"></script>
    <!-- /theme JS files -->

</head>

<body class="login-container">

    <!-- Main navbar -->
    <div class="navbar navbar-inverse">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.html"><img src="${layoutImages}/logo_light.png" alt=""></a>

            <ul class="nav navbar-nav pull-right visible-xs-block">
                <li><a data-toggle="collapse" data-target="#navbar-mobile"><i class="icon-tree5"></i></a></li>
            </ul>
        </div>

        <div class="navbar-collapse collapse" id="navbar-mobile">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="#">
                        <i class="icon-display4"></i> <span class="visible-xs-inline-block position-right"> Go to website</span>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <i class="icon-user-tie"></i> <span class="visible-xs-inline-block position-right"> Contact admin</span>
                    </a>
                </li>

                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown">
                        <i class="icon-cog3"></i>
                        <span class="visible-xs-inline-block position-right"> Options</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <!-- /main navbar -->


    <!-- Page container -->
    <div class="page-container">

        <!-- Page content -->
        <div class="page-content">

            <!-- Main content -->
            <div class="content-wrapper">

                <!-- Content area -->
                <div class="content">

                    <!-- Advanced login -->
                    <form id="myForm" action="${prc }/user.do?regist" method="post">
                        <div class="panel panel-body login-form">
                            <div class="text-center">
                                <div class="icon-object border-success text-success"><i class="icon-plus3"></i></div>
                                <h5 class="content-group">用户注册 <small class="display-block">All fields are required</small></h5>
                            </div>

                            <div class="content-divider text-muted form-group"><span>信息</span></div>

                            <div class="form-group has-feedback has-feedback-left">
                                <input id="username" name="username" class="form-control" placeholder="用户名">
                                <div class="form-control-feedback">
                                    <i class="icon-user-check text-muted"></i>
                                </div>
                                <span id="username_error" class="help-block text-danger hidden"><i class="icon-cancel-circle2 position-left"></i> 此用户名已被注册</span>
                            </div>

                            <div class="form-group has-feedback has-feedback-left">
                                <input id="email" name="email" type="text" class="form-control" placeholder="你的邮箱">
                                <div class="form-control-feedback">
                                    <i class="icon-mention text-muted"></i>
                                </div>
                            </div>
                           

                            <div class="content-divider text-muted form-group"><span>密码</span></div>

                             
                            <div class="form-group has-feedback has-feedback-left">
                                <input id="pwd" type="password" name="password" class="form-control" placeholder="密码">
                                <div class="form-control-feedback">
                                    <i class="icon-user-lock text-muted"></i>
                                </div>
                            </div>
                             
                            <div class="form-group has-feedback has-feedback-left">
                                <input id="repwd" type="password" class="form-control" placeholder="再次输入密码">
                                <div class="form-control-feedback">
                                    <i class="icon-user-lock text-muted"></i>
                                </div>
                            </div>

                            <div class="content-divider text-muted form-group"><span>条件</span></div>

                            <div class="form-group">
                               
                                <div class="checkbox">
                                    <label>
                                        <input id="isAccept" type="checkbox" class="styled">
                                                                                        同意 <a href="#">我们的条款</a>
                                    </label>
                                </div>
                            </div>

                            <button id="btn_regist" class="btn bg-teal btn-block btn-lg">注册<i class="icon-circle-right2 position-right"></i></button>
                        </div>
                    </form>
                    <!-- /advanced login -->


                    <!-- Footer -->
                    <div class="footer text-muted text-center">
                        &copy; 2017. <a href="#">超级云笔记</a> by <a href="http://themeforest.net/user/Kopyov" target="_blank">派大星</a>
                    </div>
                    <!-- /footer -->

                </div>
                <!-- /content area -->

            </div>
            <!-- /main content -->

        </div>
        <!-- /page content -->

    </div>
    <!-- /page container -->
<script type="text/javascript">
$(function(){
	
	$("#btn_regist").click(function(){
		if(check()){
			$("#myForm").submit();
		}else{
			return false;
		}
	})
	
	function check(){
		
		if($("#username").val()==""){
			alert("请输入用户名");
			return false;
		}
		if($("#email").val()==""){
			alert("请输入你的邮箱");
			return false;
		}else{
			if (/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/.test($("#email").val()) == false){
				alert("邮箱格式不正确");
				return false;
			}
		}
		
		if($("#pwd").val()==""){
			alert("请输入密码");
			return false;
		}
		if($("#repwd").val()==""){
			alert("请再次输入密码");
			return false;
		}
		if($("#pwd").val()!=$("#repwd").val()){
			alert("两次输入密码不同");
			return false;
		}
		
		if(!$("#isAccept").is(':checked')){
			alert("请同意条款再注册");
			return false;
		}
		return true;
	}
})



</script>
</body>
</html>
