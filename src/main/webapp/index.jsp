<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="config/config.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>超级云笔记--我的笔记</title>

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
    <script type="text/javascript" src="${prc}/bootstrap/ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="${layoutJs}/plugins/forms/selects/select2.min.js"></script>

    <script type="text/javascript" src="${layoutJs}/core/app.js"></script>
    <script type="text/javascript" src="${layoutJs}/pages/editor_ckeditor.js"></script>
    <!-- /theme JS files -->

</head>

<body>

    <!-- Main navbar -->
    <div class="navbar navbar-inverse">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.html"><img src="${layoutImages}/logo_light.png" alt=""></a>

            <ul class="nav navbar-nav visible-xs-block">
                <li><a data-toggle="collapse" data-target="#navbar-mobile"><i class="icon-tree5"></i></a></li>
                <li><a class="sidebar-mobile-main-toggle"><i class="icon-paragraph-justify3"></i></a></li>
            </ul>
        </div>

        <div class="navbar-collapse collapse" id="navbar-mobile">
            <ul class="nav navbar-nav">
                <li><a class="sidebar-control sidebar-main-toggle hidden-xs"><i class="icon-paragraph-justify3"></i></a></li>
            </ul>

            <p class="navbar-text"><span class="label bg-success">Online</span></p>

            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown language-switch">
                    <a class="dropdown-toggle" data-toggle="dropdown">
                        <img src="" class="position-left" alt="">肤色选择
                        <span class="caret"></span>
                    </a>

                    <ul class="dropdown-menu">
                        <li><a class="deutsch"><img src="${layoutImages}/flags/de.png" alt=""> 护眼绿</a></li>
                        <li><a class="ukrainian"><img src="${layoutImages}/flags/ua.png" alt=""> 酷色黑</a></li>
                        <li><a class="ukrainian"><img src="${layoutImages}/flags/ua.png" alt=""> 纯洁白</a></li>
                    </ul>
                </li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="icon-bubbles4"></i>
                        <span class="visible-xs-inline-block position-right">Messages</span>
                        <span class="badge bg-warning-400">2</span>
                    </a>
                    
                    <div class="dropdown-menu dropdown-content width-350">
                        <div class="dropdown-content-heading">我的信箱
                            <ul class="icons-list">
                                <li><a href="#"><i class="icon-compose"></i></a></li>
                            </ul>
                        </div>

                        <ul class="media-list dropdown-content-body">
                            <li class="media">
                                <div class="media-left">
                                    <img src="${layoutImages}/placeholder.jpg" class="img-circle img-sm" alt="">
                                    <span class="badge bg-danger-400 media-badge">5</span>
                                </div>

                                <div class="media-body">
                                    <a href="#" class="media-heading">
                                        <span class="text-semibold">信息1</span>
                                        <span class="media-annotation pull-right">04:58</span>
                                    </a>

                                    <span class="text-muted">这里是信息1的内容............</span>
                                </div>
                            </li>
                            
                            <li class="media">
                                <div class="media-left"><img src="${layoutImages}/placeholder.jpg" class="img-circle img-sm" alt=""></div>
                                <div class="media-body">
                                    <a href="#" class="media-heading">
                                        <span class="text-semibold">信息2</span>
                                        <span class="media-annotation pull-right">23:12</span>
                                    </a>
                                    
                                    <span class="text-muted">这里是信息2的内容...........</span>
                                </div>
                            </li>
                        </ul>

                        <div class="dropdown-content-footer">
                            <a href="#" data-popup="tooltip" title="All messages"><i class="icon-menu display-block"></i></a>
                        </div>
                    </div>
                </li>

                <li class="dropdown dropdown-user">
                    <a class="dropdown-toggle" data-toggle="dropdown">
                        <img src="${layoutImages}/placeholder.jpg" alt="">
                        <span>Victoria</span>
                        <i class="caret"></i>
                    </a>

                    <ul class="dropdown-menu dropdown-menu-right">
                        <li><a href="#"><i class="icon-user-plus"></i> 我的信息</a></li>
                        <li><a href="#"><i class="icon-coins"></i> 我的头像</a></li>
                        <li><a href="#"><span class="badge bg-teal-400 pull-right">5</span> <i class="icon-comment-discussion"></i> 我的信息</a></li>
                        <li class="divider"></li>
                        <li><a href="#"><i class="icon-cog5"></i> 个人设置</a></li>
                        <li><a href="#"><i class="icon-switch2"></i> 注销</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!-- /main navbar -->


    <!-- Page container -->
    <div class="page-container">

        <!-- Page content -->
        <div class="page-content">

            <!-- Main sidebar -->
            <div class="sidebar sidebar-main">
                <div class="sidebar-content">

                    <!-- User menu -->
                    <div class="sidebar-user">
                        <div class="category-content">
                            <div class="media">
                                <a href="#" class="media-left"><img src="${layoutImages}/placeholder.jpg" class="img-circle img-sm" alt=""></a>
                                <div class="media-body">
                                    <span class="media-heading text-semibold">派大星</span>
                                    <div class="text-size-mini text-muted">
                                        <i class="icon-pin text-size-small"></i> &nbsp;河南,郑州
                                    </div>
                                </div>

                                <div class="media-right media-middle">
                                    <ul class="icons-list">
                                        <li>
                                            <a href="#"><i class="icon-cog3"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /user menu -->


                    <!-- Main navigation -->
                    <div class="sidebar-category sidebar-category-visible">
                        <div class="category-content no-padding">
                            <ul class="navigation navigation-main navigation-accordion">

                                <!-- 左边菜单栏 -->
                                <li class="navigation-header"><span>快捷浏览</span> <i class="icon-menu" title="Main pages"></i></li>
                                <li>
                                    <a href="#"><i class="icon-copy"></i> <span>最新文档</span></a>
                                    <ul>
                                        <li class="disabled"><a href="#" id="layout6">文件1<span class="label label-transparent">Coming soon</span></a></li>
                                    </ul>
                                </li>
                                
                                <li>
                                    <a href="#"><i class="icon-file-text3"></i> <span>常看文档</span></a>
                                    <ul>
                                        <li><a href="colors_primary.html">文档一</a></li>
                                    </ul>
                                </li>
                                  <li>
                                    <a href="#"><i class="icon-trash"></i> <span>回收站</span></a>
                                    <ul>
                                        <li><a href="colors_primary.html">文档一</a></li>
                                    </ul>
                                </li>
                               
                                <li><a href="changelog.html"><i class="icon-list-unordered"></i> <span>版本 <span class="label bg-blue-400">1.5</span></span></a></li>
                                <!-- /main -->

                                <!-- Forms -->
                                <li class="navigation-header"><span>我的笔记</span> <i class="icon-menu" title="Forms"></i></li>
                                
                                 <li>
                                    <a href="#"><i class="icon-folder3"></i> <span>我的文件夹</span></a>
                                    <ul>
                                        <li>
                                            <a href="#">Java笔记</a>
                                            <ul>
                                                <li><a href="starters/3_col_dual.html">笔记1</a></li>
                                                <li><a href="starters/3_col_double.html">笔记2</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#">python笔记</a>
                                            <ul>
                                                <li class="icon-pencil3"><a href="starters/detached_left.html">笔记1</a></li>
                                                <li class="icon-pencil3"><a href="starters/detached_sticky.html">笔记2</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <!-- /page kits -->
                        </div>
                    </div>
                    <!-- /main navigation -->

                </div>
            </div>
            <!-- /main sidebar -->


            <!-- Main content -->
            <div class="content-wrapper">

                <!-- Page header -->
                    <!-- 中心头部区域 -->
                <!-- /page header -->


                <!-- Content area -->
                <div class="content">

                     <!-- 编辑区 -->
                    <div class="panel panel-flat">
                     <form action="note.do?add" method="post" >
                        <div class="panel-heading">
                        <input type="text" name="title" style="border:none;width:500px;height:30px" value="无标题笔记" />
                            <div class="heading-elements">
                                <ul class="icons-list">
                                    <li><button type="submit" class="btn bg-teal-400">保存<i class="icon-arrow-right14 position-right"></i></button></li>
                                    <li class="icon-share3"></li>
                                </ul>
                            </div>
                        </div>

                        <div class="panel-body">
                                <div class="content-group">
                                    <textarea name="content" id="editor-full" rows="4" cols="4">
                                    </textarea>
                                </div>
                            </form>
                        </div>
                    </div>
          
                    <!-- Footer -->
                    <div class="footer text-muted">
                        &copy; 2017. <a href="#">超级云笔记</a> by <a href="#" target="_blank">派大星</a>
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

</body>
</html>
