$(function () {
    //初始化判断
    loadUse();
});
//修改个人资料
$("#user-submit-btn").on('click',function () {
    //获得链接信息
    $("#set-article").css("display","none");
    var name = $("#nickname").val();
    var des = $("#user-des").val();
    var sex = $("#sex").val();
    var birthday = $("#datetimepicker5").val();
    birthday = createDate(birthday);
    var phone = $("#phone").val();
    var address = $("#address").val();
    var comments = $("#bef-comments").val();
    changeProfile(name,des,sex,birthday,phone,address,comments);
})

function createDate(birthday) {
    var date = null;
    if ("" !== birthday && null!==birthday) {
        var year = birthday.substring(6,10);
        var day = birthday.substring(3,5);
        var month = birthday.substring(0,2);
        date = year + "-" + month + "-" + day;
    }
    return date;
}
function changeProfile(name, des, sex, birthday, phone, address, comments) {
    $.post("/user/save/profile.do",{
        nickname:name,
        des:des,
        sex:sex,
        birthday:birthday,
        phone:phone,
        address:comments,
    },function (data) {
        if (data) {
            //保存成功
            alert("修改成功,请重新登录");
            location.href="/user/save/update.do";
            return true;
        } else {
            //保存失败
            alert("系统异常,修改失败");
        }
    })
}

$(function () {
    $('#datetimepicker5').datetimepicker();
});
function loadUse() {
    $.get("/user/findUser.do", {}, function (data) {
        var val = [
            {
                title:"您真的要改变吗？",
                id:"changeBackground",
                href:"",
                class:"btn btn-info",
                attr:"disabled",
                value:"背景",
                p:"改变站点的背景:暂时没有支持该服务"
            },
            {
                title:"您真的要关闭吗？可以推荐音乐给我们哦？",
                id:"closeMusicBtn",
                href:"",
                class:"btn btn-warning",
                attr:"disabled",
                value:"音效",
                p:"关闭音效，等上一条服务完成，将会补充"
            },
            {
                title:"您真的要退出吗？",
                id:"existBtn",
                href:"/user/exist",
                class:"btn btn-danger",
                attr:"",
                value:"退出",
                p:"退出您的账号：是在登录的条件下才能见到此按钮，点击以后会退出并返回到首页。"
            },
            {
                title:"修改资料的标签",
                id:"changeBtn",
                href:"",
                class:"btn btn-success",
                attr:"",
                value:"修改个人资料",
                p:"修改资料：点击以后出现修改资料内容"
            },
            {
                title:"管理文章",
                id:"setArticle",
                href:"",
                class:"btn btn-info",
                attr:"",
                value:"管理个人文章",
                p:"管理所有的文章"
            }

        ];
        if (data.user_id === null||undefined===data.user_id) {
            createTags(2,val);
        } else {
            createTags(val.length,val,data);
            loadImgChangFunction();
        }
    });
}
$(document).on('click','#changeBtn',function () {
    $("#set-article").css('display','none');
    $("#change-profile").css('display','block');
});
$(document).on('click', '#setArticle', function () {
    $("#set-article").css('display','block');
    $("#change-profile").css('display','none');
});
function loadImgChangFunction() {
    //做个下简易的验证  大小 格式
    $('#avatarInput').on('change', function (e) {
        var filemaxsize = 1024; //5M
        var target = $(e.target);
        var Size = target[0].files[0].size / 1024;
        if (Size > filemaxsize) {
            alert('图片过大，请重新选择!');
            $(".avatar-wrapper").childre().remove;
            return false;
        }
        if (!this.files[0].type.match(/image.*/)) {
            alert('请选择正确的图片!')
        } else {
            var filename = document.querySelector("#avatar-name");
            var texts = document.querySelector("#avatarInput").value;
            var teststr = texts;
            testend = teststr.match(/[^\\]+\.[^\(]+/i); //直接完整文件名的
            filename.innerHTML = testend;
        }

    });
    $(".avatar-save").on("click", function () {
        var img_lg = document.getElementById('imageHead');
        html2canvas(img_lg, {
            allowTaint: true,
            taintTest: false,
            onrendered: function (canvas) {
                canvas.id = "mycanvas";
                //生成base64图片数据
                var dataUrl = canvas.toDataURL("image/jpeg");
                var newImg = document.createElement("img");
                newImg.src = dataUrl;
                imagesAjax(dataUrl)
            }
        });
    });
}

function imagesAjax(src) {
    var data = {};
    data.img = src;
    $.ajax({
        url: "/user/save/userImg.do",
        data: data,
        type: "POST",
        dataType: 'json',
        success: function (result) {
            if (result) {
                //#user-png用户头像框修改
                $('#user-png').attr('src', src);
                $("#user-png-change").attr('src', src);
            } else {
                //修改头像失败
                alert("修改头像失败");
            }
        }
    });
}

function createTags(n,val,user) {
    var li = '';
    for (var i = 0; i < n; i++) {
        var tags = '';
        if (val[i].attr == "") {
            tags += '<div class="col-xs-3">\n';
        } else {
            tags += '<div class="col-xs-3" disabled="disabled">\n';
        }
        tags+=
            '<span class="tags" title="'+val[i].title+'">\n' ;
        var list = '';
        if (val[i].href === "") {
            list += '<input type="button" id="'+val[i].id+'" class="'+val[i].class+'" value="'+val[i].value+'">\n';
        } else {
            list += '<input type="button" onclick="location.href=\''+val[i].href+'\'" id="'+val[i].id+'" class="'+val[i].class+'" value="'+val[i].value+'">\n';
        }
            tags += list;
        tags +=
            '</span>\n' +
            '<p>'+val[i].p+'</p>\n' +
            '</div>';
        li += tags;
    }
    $("#set-tags").html(li);
    $("#bef-nickname").html(user.nickname+"(昵称)");
    $("#bef-des").html(user.user_des+"(个性签名)");
    $("#bef-sex").html(user.sex+"(性别)");
    var birthday = timestampToTime(user.birthday);
    $("#bef-birthday").html(birthday+"(生日)");
    $("#bef-tel").html(user.phone+"(手机号码)");
    $("#bef-address").html(user.address+"(收货地址)");
    $("#bef-comments").html(user.comments);
    $("#user-png-change").attr("src",user.user_ico);
    $("#set-article").css('display','block');
}

function loadArts(user_id) {
    $.get("/user/about/arts.do",{user_id:user_id},function (res) {
        if (res != null) {
            loadArtList(res);
        } else {
            alert("网络异常");
        }
    })
}

function loadArtList(art) {
    var listStr = '';
    for (var i = 0; i < art.length; i++) {
        var list = '<div class="news-list">\n' +
            '<a style="float: left;"><span class="art-tags">【标签】</span><span class="set-article-title">'+art.title+'</span></a>\n' +
            '<span class="art-name" style="float:right;">\n' +
            '<span class="identity">\n' +
            '<span class="art-time">'+art.create_time+'</span>\n' +
            '</span>\n' +
            '<span class="set"><strong style="margin-right: 20px;"><a href="javascript:change('+art.article_id+')">编辑</a></strong><strong><a href="javascript:delArt('+art.article_id+');">删除</a></strong></span>\n' +
            '</span>\n' +
            '</div>';
        listStr += list;
    }
    $("#set-article-box").html(listStr);
}


(function ($) {
    function floatLabel(inputType) {
        $(inputType).each(function () {
            var $this = $(this);
            $this.focus(function () {
                $this.next().addClass('active');
            });
            $this.blur(function () {
                if ($this.val() === '' || $this.val() === 'blank') {
                    $this.next().removeClass();
                }
            });
        });
    }
    floatLabel('.floatLabel');
}(jQuery));