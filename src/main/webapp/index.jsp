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
    <link href="${myCss}/smartMenu.css" rel="stylesheet" type="text/css">
    <!-- /global stylesheets -->

    <!-- Core JS files -->
    <script type="text/javascript" src="${layoutJs}/plugins/loaders/pace.min.js"></script>
    <script type="text/javascript" src="${layoutJs}/core/libraries/jquery.min.js"></script>
    <script type="text/javascript" src="${layoutJs}/core/libraries/bootstrap.min.js"></script>
    <script type="text/javascript" src="${layoutJs}/plugins/loaders/blockui.min.js"></script>
    <script type="text/javascript" src="${myJs}/jquery-smartMenu.js"></script>
    <!-- /core JS files -->
<script type="text/javascript">
 $(function(){
    $("#MyFolder").click(function(){
        var id = $(this).find("input").val();
        var m = $(this);
        $(m).empty();
        $.ajax({
            url:'${prc}/classify.do?select',
            type:'POST',
            dataType:'json',
            data:{"pid":id},
            success:function(d){
                if(d.success){
                    $.each(d.object.classifies,function(index,value){
                    	$(m).after("<ul><li><a class='MyFolder'><input type='hidden'value='"+d.object.classifies[index].id+"'><i class='icon-folder3'></i><span>"+d.object.classifies[index].name+"</span></a><ul>")
                    });
                }
            }
        })
        
    });
})
</script>



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

            <p class="navbar-text"><span class="label bg-success">在线</span></p>

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
                        <span class="visible-xs-inline-block position-right">我的信箱</span>
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
                        <span>${user.username }</span>
                        <i class="caret"></i>
                    </a>

                    <ul class="dropdown-menu dropdown-menu-right">
                        <li><a href="${prc }/toMyInfo.do"><i class="icon-user-plus"></i> 我的信息</a></li>
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
                                    <span class="media-heading text-semibold">${user.username }</span>
                                    <div class="text-size-mini text-muted">
                                        <i class="icon-pin text-size-small"></i> &nbsp;${user.address }
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
                                       <c:forEach items="${newNotes }" var="note">
                                    	 <li><a href="showNote.do?id=${note.id }" id="layout6">${note.nTitle}<span class="label label-transparent"></span></a></li>
                                    </c:forEach>
                                    </ul>
                                </li>
                                
                                <li>
                                    <a href="#"><i class="icon-file-text3"></i> <span>常看文档</span></a>
                                     <ul>
                                       <c:forEach items="${newNotes }" var="note">
                                    	 <li><a href="showNote.do?id=${note.id }" id="layout6">${note.nTitle}<span class="label label-transparent"></span></a></li>
                                    </c:forEach>
                                    </ul>
                                </li>
                                  <li>
                                    <a href="#"><i class="icon-trash"></i> <span>回收站</span></a>
                                    <ul>
                                        <li><a href="">测试文档</a></li>
                                    </ul>
                                </li>
                               
                                <li><a><i class="icon-list-unordered"></i> <span>版本 <span class="label bg-blue-400">1.5</span></span></a></li>
                                <!-- /main -->

                                <!-- Forms -->
                                <li class="navigation-header"><span>我的笔记</span> <i class="icon-menu" title="Forms"></i></li>
                                
                                 <li>
                                    <a class="MyFolder"><input type="hidden" value="0">
                                    <i class="icon-folder3"></i><span>我的笔记</span></a>
                                     <ul>
                                       <c:forEach items="${newNotes }" var="note">
                                    	 <li><a href="showNote.do?id=${note.id }" id="layout6">${note.nTitle}<span class="label label-transparent"></span></a></li>
                                    </c:forEach>
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
                     <form action="addNote.do" method="post" >
                        <div class="panel-heading">
                        <input type="text" name="nTitle" style="border:none;width:500px;height:30px" value="${myNote.nTitle}"><c:if test="${myNote==null }">无标题文本</c:if></input>
                        <input type="hidden" name="classifyId" value="1"> 
                            <div class="heading-elements">
                                <ul class="icons-list">
                                    <li><button type="submit" class="btn bg-teal-400">保存<i class="icon-arrow-right14 position-right"></i></button></li>
                                    <li class="icon-share3"></li>
                                </ul>
                            </div>
                        </div>

                        <div class="panel-body">
                                <div class="content-group">
                                	<input type="hidden" value="${myNote.id }">
                                    <textarea name="nContent" id="editor-full" rows="4" cols="4">
										${myNote.nContent}
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
<script>

//鼠标右键菜单
var NewMyFile = [
    [{
        text: "新建",
        data: [[{
            text: "新建文件夹",
            func: function() {
            	var pid = $(this).find("input").val();
            	
            	$.ajax({
            		
            		url:'${prc}/classify.do?add',
            		type:'POST',
            		dataType:'json',
            		data:{"pid":pid},
            		success:function(data){
            			
            		}
            		
            	});
            }
        }, {
            text: "新建文件",
            func: function() {
                $(this).css("border", "5px solid #a0b3d6");
            }
        }]]
    }]];
    
$(".MyFolder").smartMenu(NewMyFile, {
    name: "image"   
});
</script>

</body>
</html>
