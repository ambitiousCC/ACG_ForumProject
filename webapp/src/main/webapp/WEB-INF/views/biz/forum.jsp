<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <link href="../../../css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link href="../../../css/style.css" type="text/css" rel="stylesheet">
    <link href="../../../css/nprogress.css" type="text/css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="../../../js/html5shiv.min.js" type="text/javascript"></script>
    <script src="../../../js/respond.min.js" type="text/javascript"></script>
    <script src="../../../js/selectivizr-min.js" type="text/javascript"></script>
    <![endif]-->
    <link rel="apple-touch-icon-precomposed" href="../../../images/icon/icon.png">
    <link rel="shortcut icon" href="../../../images/icon/favicon.ico">
    <meta name="Keywords" content=""/>
    <meta name="description" content=""/>
    <script src="http://webresource.c-ctrip.com/code/cquery/LABjs/LAB.js"></script>
    <script type="text/javascript">
        $LAB
            .script("../../../js/jquery-2.1.4.min.js").wait()
            .script("../../../js/bootstrap.min.js")
            .script("../../../js/web-apply/nprogress.js")
    </script>
    <script type="application/javascript">
        //判断浏览器是否支持HTML5
        window.onload = function () {
            if (!window.applicationCache) {
                window.location.href = "ie.html";
                return false;
            }
        }
    </script>
    <style>
        html {
            border: 0;
            padding: 0%;
        }

        body {
            background: url("../../../images/night/n4.jpg") no-repeat;
            background-attachment: fixed;
            width: 100%;
        }
        .forum-content{
            float: left;
        }
        .forum-name{
            float: right;
        }
        .forum-content a,.forum-name a{
            color: #fff;
        }
        .forum-content a:hover,.forum-name a:hover{
            color: #000;
        }
    </style>
</head>
<body>
<section class="container user-select">
    <!-- 头部共享 -->
    <header id="js-header"></header>
    <!--内容-->
    <div class="content-wrap">
        <div class="content">
            <div class="content-block about-content">
<%--                上面插入导航栏切换到不同的论坛--%>
<%--                做成标签的形式--%>
                <h2 class="title">
                    <strong class="forum-tags active">论坛1</strong>
                    <strong class="forum-tags ">论坛2</strong>
                    <strong class="forum-tags ">论坛3</strong>
                </h2>
                <p class="line-title">论坛的信息</p>
                <p>关于的详细内容，也可以修改为其他用途的页面</p>
            </div>
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <div class="content-block new-content">
                <h2 class="title"><strong>最新帖子</strong></h2>
                <!-- 注意这里：前段从后端响应的代码中挑选出具体的内容 -->
                <!-- 也就是说：后端先做好了框架，然后拼接内容然后直接传送数据块？ -->
                <!--                这里内容，点击查看更多，的确会从未展示的代码中挑选展示，已经实现，后端需要继续插入内容即可-->
                <div class="row">
                    <div class="news-list">
                    <span>
                        <span href="" target="_blank" class="forum-content"><a ><span class="tags">【标签】</span><span class="title">讨论问题</span></a></span>
                        <span class="forum-name">
                            <a href="" title="作者信息" rel="author">最新评论人</a>
                            <span class="identity"></span> <span class="time">时间</span>
                            <span class="look"> 共 <strong>2126</strong> 人围观</span>
                        </span>
                    </span>
                    </div>
                </div>
                <div class="row">
                    <div class="news-list">
                    <span>
                        <span href="" target="_blank" class="forum-content"><a ><span class="tags">【标签】</span><span class="title">讨论问题</span></a></span>
                        <span class="forum-name">
                            <a href="" title="作者信息" rel="author">最新评论人</a>
                            <span class="identity"></span> <span class="time">时间</span>
                            <span class="look"> 共 <strong>2126</strong> 人围观</span>
                        </span>
                    </span>
                    </div>
                </div>
                <div class="row">
                    <div class="news-list">
                    <span>
                        <span href="" target="_blank" class="forum-content"><a ><span class="tags">【标签】</span><span class="title">讨论问题</span></a></span>
                        <span class="forum-name">
                            <a href="" title="作者信息" rel="author">最新评论人</a>
                            <span class="identity"></span> <span class="time">时间</span>
                            <span class="look"> 共 <strong>2126</strong> 人围观</span>
                        </span>
                    </span>
                    </div>
                </div>
            </div>
                <!-- 想完成查看更多的功能 -->
                <!-- 注意这里已经有交互的代码！！！！！！！！！！ -->
                <div class="visible-xs">
                    <div class="news-more" id="pagination">
                        <a href="">查看更多</a>
                    </div>
                </div>
                <div class="hidden-xs">
                    <div class="quotes" style="margin-top:15px">
                        <!-- 注意这里的样式切换，如果到首页了就设置class值为disabled， -->
                        <span class="disabled">首页</span>
                        <span class="disabled">上一页</span>
                        <!-- 到哪一页就设置为current -->
                        <span class="current">1</span>
                        <a href="">2</a><a href="">下一页</a>
                        <a href="">尾页</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/内容-->
    <!--右侧>992px显示-->
    <aside class="sidebar visible-lg" id="js-aside"></aside>
    <!-- 底部标签 -->
    <footer class="footer" id="js-footer"></footer>
</section>
<div><a href="javascript:;" class="gotop" style="display:none;"></a></div>
<script type="text/javascript">
    $LAB
        .script("../../../js/web-apply/include.js").wait()
        .script("../../../js/web-apply/function.js")
</script>
<style>
    .li-forum{
        background: rgba(0,0,0,0.5);
    }
</style>
</body>
</html>
