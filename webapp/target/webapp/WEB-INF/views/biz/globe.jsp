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
    <link href="../../../css/globe.css" type="text/css" rel="stylesheet">
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
            .script("../../../js/jquery-3.3.1.js").wait()
            .script("../../../js/web-apply/nprogress.js")
            .script("../../../js/bootstrap.min.js")
    </script>
    <script type="application/javascript">
        //判断浏览器是否支持HTML5
        window.onload = function () {
            if (!window.applicationCache) {
                location.href = "ie.html";
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
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <div class="content-block new-content">
                    <h2 class="title"><strong>社区文章</strong></h2>
                    <div id="article" >
                    </div>
                    <!-- 想完成查看更多的功能查看更多这里的布局会有bug -->
                    <div class="visible-xs">
                        <div class="news-more" id="pagination">
                            <a href="">查看更多</a>
                        </div>
                    </div>
                    <div class="hidden-xs">
                        <div class="quotes" id="pageNums" style="margin-top:15px">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--右侧>992px显示-->
    <aside class="sidebar visible-lg" id="js-aside"></aside>
    <!-- 底部标签 -->
    <footer class="footer" id="js-footer"></footer>
</section>
<div><a href="javascript:;" class="gotop" style="display:none;"></a></div>
<%--<!--/返回顶部-->--%>
<script type="text/javascript">
    $LAB
        .script("../../../js/web-apply/include.js").wait()
        .script("../../../js/web-apply/globe.js").wait()
        .script("../../../js/web-apply/function.js")
</script>
<style>
    .li-globe{
        background: rgba(0,0,0,0.5);
    }
</style>
</body>
</html>