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
    <link href="../../../css/main.css" type="text/css" rel="stylesheet">
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
</head>
<body>
<section class="container user-select">
    <!-- 头部共享 -->
    <header id="js-header"></header>
    <!--内容-->
    <div class="content-wrap">
        <div class="content">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel"> <!--banner-->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                </ol>
                <!-- 轮播图 -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active"><a href="" target="_blank">
                        <img src="../../../images/img1.jpg" alt=""/></a>
                        <div class="carousel-caption"> 轮播图1</div>
                        <span class="carousel-bg"></span></div>
                    <div class="item"><a href="" target="_blank">
                        <img src="../../../images/day/d2.jpg" alt=""/></a>
                        <div class="carousel-caption"> 轮播图2</div>
                        <span class="carousel-bg"></span></div>
                    <div class="item"><a href="" target="_blank">
                        <img src="../../../images/day/d1.jpg" alt=""/></a>
                        <div class="carousel-caption"> 轮播图3</div>
                        <span class="carousel-bg"></span></div>
                    <div class="item"><a href="" target="_blank">
                        <img src="../../../images/day/d3.png" alt=""/></a>
                        <div class="carousel-caption"> 轮播图4</div>
                        <span class="carousel-bg"></span></div>
                </div>
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a> <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <!--/banner-->
            <!-- 添加内容注意样式 -->
            <div class="content-block hot-content hidden-xs">
                <h2 class="title"><strong>本周热门排行</strong></h2>
                <ul>
                    <!-- 点击量最大,最热门的 -->
                    <li class="large">
                        <a href="" target="_blank">
                            <img src="../../../images/img3.jpg" alt="">
                            <h3> 文字 </h3>
                        </a>
                    </li>
                    <li>
                        <a href="" target="_blank">
                            <img src="../../../images/night/n7.jpg" alt="">
                            <h3> 文字 </h3>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="content-block new-content">
                <h2 class="title"><strong>最新文章</strong></h2>
                <!-- 注意这里：前段从后端响应的代码中挑选出具体的内容 -->
                <!-- 也就是说：后端先做好了框架，然后拼接内容然后直接传送数据块？ -->
<!--                这里内容，点击查看更多，的确会从未展示的代码中挑选展示，已经实现，后端需要继续插入内容即可-->
                <div class="row">
                    <div class="news-list">
                        <div class="news-img col-xs-5 col-sm-5 col-md-4"><a target="_blank" href="">
                            <img src="../../../images/logo.jpg" alt="文章图片"> </a></div>
                        <div class="news-info col-xs-7 col-sm-7 col-md-8">
                            <dl>
                                <dt><a href="" target="_blank">文字</a></dt>
                                <dd><span class="name"><a href="" title="作者信息" rel="author">文字</a></span> <span
                                        class="identity"></span> <span class="time">时间</span></dd>
                                <dd class="text">文字</dd>
                            </dl>
                            <!-- 动态修改这行的strong标签内容 -->
                            <div class="news_bot col-sm-7 col-md-8"><span class="tags visible-lg visible-md"> <a
                                    href="">文字</a> <a href="">文字</a> </span> <span class="look"> 共 <strong>2126</strong> 人围观，发现 <strong> 12 </strong> 个不明物体 </span>
                            </div>
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
<!--/返回顶部-->
<script type="text/javascript">
    $LAB
        .script("../../../js/web-apply/include.js").wait()
        .script("../../../js/web-apply/function.js")
</script>
<style>
    .li-main{
        background: rgba(0,0,0,0.5);
    }
</style>
</body>
</html>
