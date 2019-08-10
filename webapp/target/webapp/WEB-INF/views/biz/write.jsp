<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>写文</title>
    <link href="../../../css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link href="../../../css/style.css" type="text/css" rel="stylesheet">
    <link href="../../../css/nprogress.css" type="text/css" rel="stylesheet">
    <link href="../../../css/jquery-labelauty.css" type="text/css" rel="stylesheet">
    <link href="../../../css/write.css" type="text/css" rel="stylesheet">
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
                return false;
            }
        }
    </script>
</head>
<body>
<section class="container user-select">
    <header id="js-header"></header>
    <!--内容-->
    <div class="content-wrap">
        <div class="content">
            <div class="content-block">
                <h2 class="title"><strong>关于文章，你需要知道的事情</strong></h2>
                <p class="line-title">您所书写的文章，务必标注转载与原创，这也是有利于本站更好的保证您的合法著作权，禁止抄袭未授权的文章，一经发现，
                    下架并警告账号，严重者封号处理。</p>
                <p class="line-title">为了本站的生态环境，请您遵守国家有关法律政策，互联网并不是法外之地！</p>
                <input type="hidden" id="text-user" value="">
                <div class="face-block" id="text-tips" style="display: none;">
                    <h2 class="title"><strong>关于编辑器的使用：</strong></h2>
                    <p class="line-title">封面图片最好是1920*1080分辨率倍数，这样我们在推广您的文章时有更好的美观效果，同时确认图片的格式为jpg,png,jpeg.如果重选图片没有反应可以尝试刷新本页面，注意保存草稿</p>
                    <p class="line-title">表情为动态url链接，因此第一次加载此页面表情加载速度较慢，建议等待刷新页面</p>
                    <p class="line-title">富文本编辑器并不能处理图片格式，请使用ps等工具进行处理以后上传排版</p>
                    <p class="line-title">由于能力问题，部分功能正在实现：全屏编辑，添加摘要</p>
                </div>
                <div id="text-un-tips"><h2 class="title"><strong>登录以后才能编辑文章哦</strong></h2></div>
            </div>
            <div class="content-block comment" id="text-container" style="display: none">
<%--                写文章的地方--%>
<%--                上传封面--%>
                <div class="upload-img">
                    <h2 class="title"><strong>上传封面</strong></h2>
                    <input class="inputName" placeholder="请选择要上传的封面" type="text" id="inputImgName"/>
                    <form id="uploadForm" enctype="multipart/form-data" style="display: inline-block; " >
                        <input class="chooseFile" accept=".jpg,.jpeg,.png" id="reportXML" type="file" name="file" /> 浏览
                    </form>
                    <button class="art-title-photo-upload" id="srcImg" >预览</button>
                    <button class="art-title-photo-upload" id="uploadBtn">上传</button>
                    <div style="display: none" id="photo">
                        <img src="" id="previewImg">
                    </div>
                </div>
                <h2 class="title"><strong>文章起笔</strong></h2>
                <div class="text-title-box">
                    <input type="text" id="text-title" maxlength="100" placeholder="输入文章标题"/>
                    <span class="title-max-length"><span id="title-count">0</span>/100</span>
                </div>
<%--                正文开始--%>
                <div id="editor"></div>
                <div class="text-tips-box">
                    <h2 class="title"><strong>选择您的文章类型</strong></h2>
                    <p>(必选)文章类型</p>
                    <ul class="dowebok-class">
                        <li><input type="radio" name="radio-class" data-labelauty="原创" value="1"></li>
                        <li><input type="radio" name="radio-class" data-labelauty="转载" value="2"></li>
                        <li><input type="radio" name="radio-class" data-labelauty="翻译" value="3"></li>
                        <li><input type="radio" name="radio-class" disabled data-labelauty="盗版"></li>
                    </ul>
                    <p class="line-title">(必选)文章属性</p>
                    <ul class="dowebok-value">
                        <li><input type="radio" name="radio-value" data-labelauty="公开" value="1"></li>
                        <li><input type="radio" name="radio-value" data-labelauty="私密" value="2"></li>
<%--                        现在这个标签莫得用--%>
<%--                        <li><input type="radio" name="radio-value" data-labelauty="对好友不可见" value="3"></li>--%>
                    </ul>
<!--                    <h2 class="title"><strong>选择文章标签|ू･ω･` )</strong></h2>-->
<%--                    <ul class="dowebok">--%>
<%--                        <li><input type="checkbox" name="checkbox" data-labelauty="动漫"></li>--%>
<%--                        <li><input type="checkbox" name="checkbox" data-labelauty="游戏"></li>--%>
<%--                        <li><input type="checkbox" name="checkbox" data-labelauty="宅文化"></li>--%>
<%--                        <li><input type="checkbox" name="checkbox" data-labelauty="日记"></li>--%>
<%--                        <li><input type="checkbox" name="checkbox" data-labelauty="个人文章"></li>--%>
<%--                        <li><input type="checkbox" name="checkbox" data-labelauty="技术手册"></li>--%>
<%--                    </ul>--%>
                </div>
                <div id="art-save-btns">
                    <h2 class="title"><strong>最后的操作(✪ω✪)</strong></h2>
                    <input type="hidden" id="text-des-input"/>
                    <div class="demo">
                        <div class="btns-container">
                            <div class="row pad-15">
                                <div class="col-sm-3" id="art-post-btn" disabled="disabled">
                                    <a href="javascript:void(0);" class="link"><span>发表文章</span></a>
                                </div>
                                <div class="col-sm-3" id="art-save-btn">
                                    <a href="javascript:void(0);" class="link"><span>保存草稿</span></a>
                                </div>
                                <div class="col-sm-3" id="art-del-btn">
                                    <a href="javascript:void(0);" class="link"><span>删除文章</span></a>
                                </div>
                                <div class="col-sm-3" id="art-des-btn">
                                    <a href="javascript:void(0);" class="link"><span>填写摘要</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
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
        .script("../../../js/web-apply/include.js").wait()
        .script("../../../js/web-apply/function.js")
        .script("../../../js/jquery-labelauty.js")
        .script("../../../js/xss.js")
        .script("../../../js/wangEditor.min.js")
        .script("../../../js/layer/layer.js").wait()
        .script("../../../js/web-apply/write.js").wait()
</script>
<style>
    .li-write{
        background: rgba(0,0,0,0.5);
    }
</style>
</body>
</html>
