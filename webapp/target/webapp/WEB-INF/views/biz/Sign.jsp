﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登录注册页面</title>
    <link href="../../../css/Sign.css" rel="stylesheet"/>
</head>
<body onload="startClock()" onunload="stopClock()">
<div class="htmleaf-container">
    <p class="center" id="date"></p>
    <p class="center" id="show"></p>
    <div id="wrapper" class="login-page">
        <div id="login_form" class="form">
            <form class="register-form" id="registForm">
                <label>
                    <input type="text" placeholder="用户名" id="r_username" name="username"/>
                </label>
                <p id="r_u_msg" style="color: red;"></p>
                <label>
                    <input type="password" placeholder="密码" id="r_password" name="password"/>
                </label>
                <p id="r_p_msg" style="color: red;"></p>
                <label>
                    <input type="text" placeholder="电子邮件" id="r_email" name="email"/>
                </label>
                <p id="r_e_msg" style="color: red;"></p>
                <input type="button" id="create" value="创建账户"/>
                <p >请阅读我们的<a style="color: #1E9FFF;" id="regist-msg">《服务条款》</a></p>
                <p id="regist_errorMsg" style="color:red;"></p>
                <p class="message">已经有了一个账户? <a href="#">立刻登录</a></p>
            </form>
            <form class="login-form" id="loginFrom" method="post">
                <label>
                    <input type="text" placeholder="用户名" id="username" name="username"/>
                </label>
                <label>
                    <input type="password" placeholder="密码" id="password" name="password"/>
                </label>
                <button id="login" type="submit">登　录</button>
                <p id="login_errorMsg" style="color:red;"></p>
                <p class="message">还没有账户?
                    <a href="#">立刻创建</a>!(✪ω✪)
                    <a href="${pageContext.request.contextPath}/main">游客模式</a><br>
                    !!!∑(ﾟДﾟノ)ノ
                    <a id="forget-password">忘记密码</a>
                </p>
            </form>
        </div>
    </div>
</div>
<script src="../../../js/jquery-3.4.1.min.js"></script>
<script src="../../../js/layer/layer.js"></script>
<script src="../../../js/login/md5.js"></script>
<script src="../../../js/login/login.js"></script>
<script type="text/javascript">
        $('#regist-msg').on('click', function(){
            layer.open({
                type: 2,
                title: '阅读《服务条款》',
                maxmin: true,
                shadeClose: false, //点击遮罩关闭层
                area : ['520px' , '800px'],
                content: 'registMsg.html'
            });
        });
        $("input").focus(function() {
            $(this).parent("label").addClass("active");
        });
        $("input").blur(function() {
            if ($(this).val() === "") {
                $(this).parent("label").removeClass("active");
            }
        });
</script>
</body>
</html>