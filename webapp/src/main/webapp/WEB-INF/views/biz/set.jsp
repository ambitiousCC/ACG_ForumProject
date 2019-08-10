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
    <link href="../../../css/set.css" type="text/css" rel="stylesheet">
    <link href="http://www.jq22.com/jquery/font-awesome.4.6.0.css" rel="stylesheet" type="text/css">
    <link href="../../../css/set-styles.css" rel="stylesheet" type="text/css">
    <link href="../../../css/set-tempusdominus-bootstrap-4.css" rel="stylesheet" type="text/css">
    <link href="../../../css/cropper.min.css" rel="stylesheet">
    <link href="../../../css/sitelogo.css" rel="stylesheet">
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
            .script("../../../js/bootstrap.min.js").wait()
            .script("../../../js/set/set-moment-with-locales.min.js")
            .script("../../../js/set/set-moment-timezone-with-data-2012-2022.min.js")
            .script("../../../js/set/set-tempusdominus-bootstrap-4.js")
            .script("../../../js/web-apply/nprogress.js")
            .script("../../../js/web-apply/include.js").wait()
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
        #set-article a{
            color: #f4ffa5;
        }
    </style>
</head>

<body>
<section class="container user-select">
    <div class="modal fade" id="avatar-modal" aria-hidden="true" aria-labelledby="avatar-modal-label" role="dialog"
         tabindex="-1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">

                <form class="avatar-form">
                    <div class="modal-header">
                        <button class="close" data-dismiss="modal" type="button">&times;</button>
                        <h4 class="modal-title" id="avatar-modal-label">上传图片</h4>
                    </div>
                    <div class="modal-body">
                        <div class="avatar-body">
                            <div class="avatar-upload">
                                <input class="avatar-src" name="avatar_src" type="hidden">
                                <input class="avatar-data" name="avatar_data" type="hidden">
                                <label for="avatarInput" style="line-height: 35px;">图片上传</label>
                                <button class="btn btn-danger" type="button" style="height: 35px;"
                                        onclick="$('input[id=avatarInput]').click();">请选择图片</button>
                                <span id="avatar-name"></span>
                                <input class="avatar-input hide" id="avatarInput" name="avatar_file" type="file"></div>
                            <div class="row">
                                <div class="col-md-9">
                                    <div class="avatar-wrapper"></div>
                                </div>
                                <div class="col-md-3">
                                    <div class="avatar-preview preview-lg" id="imageHead"></div>
                                </div>
                            </div>
                            <div class="row avatar-btns">
                                <div class="col-md-4">
                                    <div class="btn-group">
                                        <button class="btn btn-danger fa fa-undo" data-method="rotate" data-option="-90"
                                                type="button" title="Rotate -90 degrees"> 向左旋转</button>
                                    </div>
                                    <div class="btn-group">
                                        <button class="btn  btn-danger fa fa-repeat" data-method="rotate"
                                                data-option="90" type="button" title="Rotate 90 degrees"> 向右旋转</button>
                                    </div>
                                </div>
                                <div class="col-md-5" style="text-align: right;">
                                    <button class="btn btn-danger fa fa-arrows" data-method="setDragMode"
                                            data-option="move" type="button" title="移动">
										<span class="docs-tooltip" data-toggle="tooltip" title=""
                                              data-original-title="$().cropper(&quot;setDragMode&quot;, &quot;move&quot;)">
										</span>
                                    </button>
                                    <button type="button" class="btn btn-danger fa fa-search-plus" data-method="zoom"
                                            data-option="0.1" title="放大图片">
										<span class="docs-tooltip" data-toggle="tooltip" title=""
                                              data-original-title="$().cropper(&quot;zoom&quot;, 0.1)">

										</span>
                                    </button>
                                    <button type="button" class="btn btn-danger fa fa-search-minus" data-method="zoom"
                                            data-option="-0.1" title="缩小图片">
										<span class="docs-tooltip" data-toggle="tooltip" title=""
                                              data-original-title="$().cropper(&quot;zoom&quot;, -0.1)">

										</span>
                                    </button>
                                    <button type="button" class="btn btn-danger fa fa-refresh" data-method="reset"
                                            title="重置图片">
										<span class="docs-tooltip" data-toggle="tooltip" title=""
                                              data-original-title="$().cropper(&quot;reset&quot;)"
                                              aria-describedby="tooltip866214">
                                        </span>
                                    </button>
                                </div>
                                <div class="col-md-3">
                                    <button class="btn btn-danger btn-block avatar-save fa fa-save" type="button"
                                            data-dismiss="modal"> 保存修改</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="loading" aria-label="Loading" role="img" tabindex="-1"></div>
    <header id="js-header"></header>
    <div class="content-wrap"><!--内容-->
        <div class="content">
            <div class="row tags-content content-block">
                <h2 class="title"><strong>关于设置</strong></h2>
                <!-- 这里是所有标签的聚合 -->
                <div id="set-tags"></div>
            </div>
            <div class="row tags-content content-block" id="set-article" style="display: none">
                <h2 class="title"><strong>管理文章</strong></h2>
                <div id="set-article-box"></div>
            </div>
            <div class="row tags-content content-block" id="change-profile" style="display: none;">
                <h2 class="title"><strong>修改资料</strong></h2>
                <!-- 这里是所有标签的聚合 -->
                <div class="htmleaf-content">
                    <form action="">
                        <!--  General -->
                        <div class="form-group">
                            <h2 class="heading">基本资料</h2>
                            <div class="title-photo" id="user-ico-change" style="width: 100%;height: 200px;margin: 24px;">
                                <img id="user-png-change" alt="" style="max-width: 100%;max-height: 100%;height: 100%;border-radius: 50%;">
                                <input type="button" class="btn btn-primary btn-lg" style="margin-left: 100px;" data-toggle="modal" data-target="#avatar-modal" value="─=≡Σ(((つ•̀ω•́)つ修改头像">
                            </div>
                            <div class="controls">
                                <input type="text" id="nickname" class="effect-22 floatLabel" name="name">
                                <label for="nickname" id="bef-nickname">昵称(nickname)</label>
                            </div>
                            <div class="controls">
                                <input type="text" id="user-des" class="effect-22 floatLabel" name="des">
                                <label for="user-des" id="bef-des">签名(des)</label>
                            </div>
                            <div class="controls">
                                <i class="fa fa-sort"></i>
                                <select class="effect-22 floatLabel" id="sex" style="color: #1a1a1a;" name="sex">
                                    <option value="blank" id="user-sex"></option>
                                    <option value="1">小哥哥(male)</option>
                                    <option value="0">小姐姐(female)</option>
                                </select>
                                <label for="sex" id="bef-sex">性别(sex)</label>
                            </div>
                        </div>
                        <!--  Details -->
                        <div class="form-group">
                            <h2 class="heading">详细资料</h2>
                            <div class="controls">
                                <input type="text" class="effect-23 floatLabel datetimepicker-input" id="datetimepicker5" data-toggle="datetimepicker" data-target="#datetimepicker5" name="birthday"/>
                                <label for="datetimepicker5" id="bef-birthday">生日</label>
                            </div>
                            <div class="controls">
                                <input type="tel" id="phone" class="effect-23 floatLabel" name="phone">
                                <label for="phone" id="bef-tel">电话(phone)</label>
                            </div>
                        </div>
                        <!--  More -->
                        <div class="form-group">
                            <h2 class="heading">更详细的资料！</h2>
                            <div class="controls">
                                <input type="text" id="address" class="effect-24 floatLabel" name="address">
                                <label for="address" id="bef-address">收货地址</label>
                            </div>
                            <div class="controls user-comments">
                                <textarea name="comments" class="effect-24 floatLabel" id="bef-comments"></textarea>
                                <label for="bef-comments" class="bef-comments">简单的介绍一下你吧</label>
                                <input type="button" value="Submit" class="btn btn-lg btn-primary" style="width:100%;" id="user-submit-btn">
                            </div>
                        </div>
                    </form>
                </div>
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
        .script("../../../js/cropper.js")
        .script("../../../js/html2canvas.min.js").wait()
        .script("../../../js/web-apply/function.js").wait()
        .script("../../../js/web-apply/set.js")
        .script("../../../js/sitelogo.js")
</script>
</body>
</html>
