<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html >
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <link href="../../../css/clock.css" type="text/css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="../../../js/html5shiv.min.js" type="text/javascript"></script>
    <script src="../../../js/respond.min.js" type="text/javascript"></script>
    <script src="../../../js/selectivizr-min.js" type="text/javascript"></script>
    <![endif]-->
    <link rel="apple-touch-icon-precomposed" href="../../../images/icon/icon.png">
    <link rel="shortcut icon" href="../../../images/icon/favicon.ico">
    <meta name="Keywords" content=""/>
    <meta name="description" content=""/>
    <script type="application/javascript">
        //判断浏览器是否支持HTML5
        window.onload = function () {
            if (!window.applicationCache) {
                window.location.href = "ie.html";
            }
        }
    </script>
</head>
<body>
<div class="clock" onclick="window.open('/main','_self')"></div>
<script src="http://webresource.c-ctrip.com/code/cquery/LABjs/LAB.js"></script>
<script type="text/javascript">
    $LAB
        .script("../../../js/clo-react.min.js")
        .script("../../../js/clo-react-dom.min.js").wait()
        .script("../../../js/clo-polyfill.min.js")
        .script("../../../js/clo-index.js");
</script>
</body>
</html>
