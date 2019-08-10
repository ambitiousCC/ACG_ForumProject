<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>文字</title>
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
            .script("../../../js/web-apply/include.js").wait()
            .script("../../../js/web-apply/function.js")
    </script>
    <script type="text/javascript">
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
            background: url("../../../images/night/n6.jpg") no-repeat;
            background-attachment: fixed;
            width: 100%;
        }
    </style>
</head>
<body>
<section class="container user-select">
    <header id="js-header"></header>
    <!--/超小屏幕可见-->
    <div class="content-wrap"><!--内容-->
        <div class="content">
            <div class="content-block friendly-content row">
                <h2 class="title"><strong>关注者</strong></h2>
<%--                <div class="col-md-4 col-xs-6"><span data-toggle="tooltip" data-placement="bottom" title="点击进入 百度 站点"><a--%>
<%--                        href="">百度</a></span>--%>
<%--                    <p>文字</p>--%>
<%--                </div>--%>
            </div>
            <div class="content-block comment">
                <h2 class="title"><strong>好友动态</strong></h2>
<%--                <form action="" method="post" class="form-inline" id="comment-form">--%>
<%--                    <div class="comment-title">--%>
<%--                        <div class="form-group">--%>
<%--                            <label for="messageName">网站名称：</label>--%>
<%--                            <input type="text" name="messageName" class="form-control" id="messageName"--%>
<%--                                   placeholder="文字">--%>
<%--                        </div>--%>
<%--                        <div class="form-group">--%>
<%--                            <label for="messageEmail">网站地址：</label>--%>
<%--                            <input type="email" name="messageEmail" class="form-control" id="messageEmail"--%>
<%--                                   placeholder="admin@ylsat.com">--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="comment-form">--%>
<%--                        <textarea placeholder="请填写网站服务内容" name="messageContent"></textarea>--%>
<%--                        <div class="comment-form-footer">--%>
<%--                            <div class="comment-form-text">请先 <a href="javascript:;">登录</a> 或 <a--%>
<%--                                    href="javascript:;">注册</a>，也可匿名提交友链--%>
<%--                            </div>--%>
<%--                            <div class="comment-form-btn">--%>
<%--                                <button type="submit" class="btn btn-default btn-comment">提交友链</button>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </form>--%>
            </div>
        </div>
    </div>
    <!--/内容-->
    <aside class="sidebar visible-lg" id="js-aside"></aside>
    <!--/右侧>992px显示-->
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
    .li-friend{
        background: rgba(0,0,0,0.5);
    }
</style>
</body>
</html>
