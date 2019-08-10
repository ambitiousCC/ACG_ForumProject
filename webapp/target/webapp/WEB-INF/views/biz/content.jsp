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
    <link href="../../../css/content.css" type="text/css" rel="stylesheet">
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
    <script type="text/javascript">
        //判断浏览器是否支持HTML5
        window.onload = function () {
            if (!window.applicationCache) {
                window.location.href = "ie.html";
            }
        }
    </script>
</head>
<body>
<section class="container user-select">
    <header id="js-header"></header>
    <div class="content-wrap"><!--内容-->
        <div class="content">
            <header class="news_header">
                <div>
                    <img src="" style="" id="art-author-ico" class="user-profile">
                </div>
                <h2 id="art-title"></h2><p id="art-des"></p>
                <ul>
                    <li><span class="glyphicon glyphicon-user"></span><span id="art-author" class="user-profile"></span> 发布于 <span id="art-create_time"></span></li>
<%--                    后续添加的功能--%>
                    <li>栏目：<a href="" title="" target="_blank">ACG</a></li>
                    <li>来源：<a href="" title="" target="_blank">互联网</a></li>
                    <li>共 <strong>2345</strong> 人围观</li>
                    <li><strong>123</strong> 个不明物体</li>
                </ul>
            </header>
            <article class="news_content" id="article-content">
            </article>
            <div class="reprint">转载请注明<a href="${pageContext.request.contextPath}/main" title="" target="_blank">【研习社】</a> »
                <a href="${pageContext.request.contextPath}/main" target="_blank">http://localhost:8080/main</a></div>
            <!-- 这里插入数据，注意前后样式的改变 -->
                <div class="zambia" id="like">
                    <a id="art-a-like">
                        <span class="glyphicon glyphicon-thumbs-up"></span><span id="zambia-text"></span>（<span class="zam-nums" total=""></span>）
                    </a>
                </div>
                <div class="keep" id="keep">
                    <a id="art-a-keep">
                        <span class="glyphicon glyphicon glyphicon-star"></span> <span id="keep-text"></span>（<span class="keep-nums" total=""></span>）
                    </a>
                </div>
            <!-- 这里：智能搜索：将相关标签的文章放在一起 -->
            <!-- 可以是作者也可以是类型 -->
            <div class="tags news_tags">标签： <span data-toggle="tooltip" data-placement="bottom" title="查看关于 本站 的文章"><a
                    href="">哲学</a></span> <span data-toggle="tooltip" data-placement="bottom" title="查看关于 的文章"><a
                    href="">动漫</a></span></div>
            <nav class="page-nav">
         <span class="page-nav-prev">上一篇<br/>
        <a href="" rel="prev">文字</a></span>
                <span class="page-nav-next">下一篇<br/>
        <a href="" rel="next">文字</a></span>
            </nav>
            <div class="content-block related-content visible-lg visible-md">
                <h2 class="title"><strong>相关推荐</strong></h2>
                <!-- 点击相关推荐的ul，自动跳转页面 -->
                <ul>
                    <li><a target="_blank" href=""><img src="../../../images/logo.jpg" alt="">
                        <h3> 文字</h3>
                    </a></li>
                </ul>
            </div>
            <div class="content-block comment">
                <h2 class="title"><strong>评论</strong></h2>
                <!-- 注意这里：提交！！！！ -->
                <form action="" method="post" class="form-inline" id="comment-form">
                    <div class="comment-title" id="comment-main-profile" style="display: none">
                        <div class="form-group">
                            <label for="comment-main-nickname">昵称：</label>
                            <a id="comment-main-nickname" style="color: #fff;"></a>
                        </div>
                        <div class="form-group">
                            <label for="comment-main-time">时间：</label>
                            <a id="comment-main-time" style="color: #fff;"></a>
                        </div>
                    </div>
                    <div class="comment-form">
                        <label for="comment-main-textarea" style="display: block;">
                            <textarea placeholder="你的评论可以一针见血" name="commentContent" id="comment-main-textarea"></textarea>
                        </label>
                        <div class="comment-form-footer">
                            <div class="comment-form-text" id="comment-main-login">
                                <a href="${pageContext.request.contextPath}/sign">请先登录</a>
                            </div>
                            <div class="comment-form-btn">
                                <!-- 提交到的网站： -->
                                <input type="button" class="btn btn-default btn-comment" id="comment-main-btn" value="提交评论">
                            </div>
                        </div>
                    </div>
                </form>
                <div class="comment-content">
                    <!-- 评论的插入地点 -->
                    <!-- 注意那个站长可以是超链接，点击查看个人资料，同时，前面的图片是经过处理过的头像 -->
                    <!-- 拓展评论恢复的功能 -->
                    <ul id="art-comment">
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--/内容-->
    <aside class="sidebar visible-lg" id="js-aside"></aside>
    <footer class="footer" id="js-footer"></footer>
</section>
<div><a href="javascript:;" class="gotop" style="display:none;"></a></div>
<!--/返回顶部-->
<script src="head/html2canvas.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    $LAB
        .script("../../../js/web-apply/include.js").wait()
        .script("../../../js/web-apply/function.js")
        .script("../../../js/layer/layer.js").wait()
        .script("../../../js/web-apply/content.js")
</script>
</body>
</html>
