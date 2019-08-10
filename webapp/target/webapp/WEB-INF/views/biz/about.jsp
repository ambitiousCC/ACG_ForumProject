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
    <link type="text/css" href="../../../css/nprogress.css" rel="stylesheet">
    <link type="text/css" href="../../../css/about.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="../../../js/html5shiv.min.js" type="text/javascript"></script>
    <script src="../../../js/respond.min.js" type="text/javascript"></script>
    <script src="../../../js/selectivizr-min.js" type="text/javascript"></script>
    <![endif]-->
    <link rel="apple-touch-icon-precomposed" href="../../../images/icon/icon.png">
    <link rel="shortcut icon" href="../../../images/icon/favicon.ico">
    <meta name="Keywords" content=""/>
    <meta name="description" content=""/><script src="http://webresource.c-ctrip.com/code/cquery/LABjs/LAB.js"></script>
    <script type="text/javascript">
        $LAB
            .script("../../../js/jquery-2.1.4.min.js").wait()
            .script("../../../js/web-apply/nprogress.js")
            .script("../../../js/bootstrap.min.js")
            .script("../../../js/web-apply/include.js").wait()
    </script>\
    <script type="text/javascript">
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
    <header id="js-header"></header>
    <div class="content-wrap"><!--内容-->
        <div class="content">
            <div class="content-block about-content">
                <h2 class="title"><strong>关于个人资料</strong></h2>
                <p class="line-title">您可以选择性设置，选择性设置对外展示个人资料，您的隐藏信息将作为二次验证以及找回密码使用，请牢记。</p>
                <p>您可以在登录页面，或者点击下方按钮阅读我们的服务条款</p>
                <p><input class="btn btn-info" type="button" id="show-txt" value="点击查看《服务条款》" /></p>
            </div>
            <div class="content-block contact-content" id="o-user-box">
                <h2 class="title"><strong>个人资料</strong></h2>
                <div style="float: left;text-align: center;width: 200px;height: 200px;">
                    <img src="" id="o-user-ico" align="这人的头像" style="top: 0;max-width: 100%;max-height: 100%;bottom: 0;margin: 0 auto;">
                </div>
                <p><span>昵称</span><a href="javascript:void(0);" id="o-nickname"></a></p>
                <p><span>性别</span><a href="javascript:void(0);" id="o-sex"></a></p>
                <p><span>签名</span><a href="javascript:void(0);" id="o-des"></a></p>
                <p id="o-comments" style="margin-left: 200px;"></p>
            </div>
            <div class="content-block">
                <h2 class="title"><strong>动态</strong></h2>
            </div>
<%--            <div class="content-block comment">--%>
<%--                <h2 class="title"><strong>添加留言</strong></h2>--%>
<%--                <form action="" method="post" class="form-inline" id="o-comment-form">--%>
<%--                    <div class="comment-title" id="o-comment-main-profile" style="display: none">--%>
<%--                        <div class="form-group">--%>
<%--                            <label for="o-comment-main-nickname">昵称：</label>--%>
<%--                            <a id="o-comment-main-nickname" style="color: #fff;"></a>--%>
<%--                        </div>--%>
<%--                        <div class="form-group">--%>
<%--                            <label for="o-comment-main-time">时间：</label>--%>
<%--                            <a id="o-comment-main-time" style="color: #fff;"></a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="comment-form">--%>
<%--                        <label for="o-comment-main-textarea" style="display: block;">--%>
<%--                            <textarea placeholder="你的评论可以一针见血" name="commentContent" id="o-comment-main-textarea"></textarea>--%>
<%--                        </label>--%>
<%--                        <div class="comment-form-footer">--%>
<%--                            <div class="comment-form-text" id="o-comment-main-login">--%>
<%--                                <a href="${pageContext.request.contextPath}/sign">请先登录</a>--%>
<%--                            </div>--%>
<%--                            <div class="comment-form-btn">--%>
<%--                                <!-- 提交到的网站： -->--%>
<%--                                <input type="button" class="btn btn-default btn-comment" id="o-comment-main-btn" value="提交评论">--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </form>--%>
<%--                <div class="content-block comment-content">--%>
<%--                    <h2 class="title"><strong>最新留言</strong></h2>--%>
<%--                    <ul>--%>
<%--                        <li><span class="text"><strong>文字</strong>(可以加入文字)文字<br/>文字</span></li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--            </div>--%>
        </div>
    </div>
    <!--/内容-->
    <aside class="sidebar visible-lg" id="js-aside"></aside>
    <footer class="footer" id="js-footer"></footer>
</section>
<div><a href="javascript:;" class="gotop" style="display:none;"></a></div>
<script type="text/javascript">
    $LAB
        .script("../../../js/web-apply/function.js")
        .script("../../../js/layer/layer.js").wait()
        .script("../../../js/web-apply/about.js")
</script>
<style>
    .li-about{
        background: rgba(0,0,0,0.5);
    }
</style>
</body>
</html>
