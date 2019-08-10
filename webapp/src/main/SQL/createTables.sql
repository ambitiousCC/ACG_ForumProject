--	用户表：设置需要设置格式：输入时正则表达式判断：存入数据库错误信息会拒收并返回提示
--	由于使用的是自动增长：用户id系统生成并且不能进行任何修改操作
CREATE TABLE `user` (
  `user_id` bigint(20) AUTO_INCREMENT UNIQUE COMMENT '用户名id' PRIMARY KEY,
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `nickname` varchar(20) NOT NULL COMMENT '昵称',
  `password` varchar(20) NOT NULL COMMENT '密码',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `age` TINYINT UNSIGNED DEFAULT NULL COMMENT '年龄',
  `phone` varchar(16) DEFAULT NULL UNIQUE COMMENT '手机号码',
  `address` varchar(128) DEFAULT NULL COMMENT '地址',
  `email` varchar(50) NOT NULL UNIQUE COMMENT '邮箱',
  `sex` ENUM('男','女','保密') NOT NULL DEFAULT '保密' COMMENT '性别'  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
--	点赞和喜欢和感谢的表：查询的时候同时检索用户id和文章id
--	如果已经点赞则只能取消点赞，收藏同理，同时文章和作者没了都会删除信息
CREATE TABLE `like_keep` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `user_id` bigint(20) NOT NULL,
  `article_id` bigint(20) NOT NULL,
  `like` varchar(2) DEFAULT NULL COMMENT '0代表未点赞，1代表已点赞',
  `keep` varchar(2) DEFAULT NULL COMMENT '0代表未收藏，1代表已收藏',
  constraint `fk_like_user` foreign key (`user_id`) references `user` (`user_id`) on update cascade on delete cascade,
  constraint `fk_like_art` foreign key (`article_id`) references `article` (`article_id`) on update cascade on delete cascade
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
--	文章表，需要限制标题，描述的长度，否则会截断。对于喜欢和收藏是在用户操作以后加入或减少
--	检索的同时查询文章内容表，相当于查询的时候会查询两个表,不允许修改文章作者，如果文章作者id没了，文章自动设置为空可以成为匿名文章
CREATE TABLE `article` (
  `article_id` bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `user_id` bigint(20) DEFAULT NULL COMMENT '作者',
  `content_id` int(11) NOT NULL COMMENT '内容ID',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `des` varchar(255) DEFAULT NULL COMMENT '描述',
  `img_url` varchar(70) DEFAULT NULL COMMENT '图片地址',
  `create_time` datetime DEFAULT NULL  COMMENT '创建日期',
  `like` int(20) DEFAULT NULL COMMENT '喜欢',
  `keep` int(20) DEFAULT NULL COMMENT '收藏',
  constraint fk_user foreign key (`user_id`) references `user` (`user_id`) on delete set null
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
--	文章内容表：使用编辑器导致内容很大
CREATE TABLE `content` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `content_id` int(11) NOT NULL COMMENT '内容ID',
  `content` longtext COMMENT '内容'
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
-- 点击量
--	附带操作，用来生成页面的推荐，排序
CREATE TABLE `art_count` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `click` int(20) DEFAULT NULL COMMENT '点击量',
  `comment` int(20) DEFAULT NULL COMMENT '评论量',
  `article_id` bigint(20) DEFAULT NULL COMMENT '文章ID',
  constraint fk_art foreign key (`article_id`) references `article` (`article_id`) on update cascade on delete cascade
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
--	评论表
CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `user_id` bigint(20) NOT NULL UNIQUE COMMENT '用户名id',
  `comment` varchar(255) NOT NULL COMMENT '评论内容',
  `article_id` bigint(20) NOT NULL COMMENT '文章ID',
  `comment_time` date NOT NULL COMMENT '评论时间',
  constraint `fk_comment_user` foreign key (`user_id`) references `user` (`user_id`) on update cascade on delete cascade
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
--	其他表：每日一句名言警句：包含中英文
CREATE TABLE `good` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `cn` varchar(100) DEFAULT NULL,
  `en` varchar(100) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `author` varchar(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
-- 添加新的评论楼层表
CREATE TABLE `comment_main` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `article_id` bigint(20) NOT NULL COMMENT '文章ID',
  `user_id` bigint(20) NOT NULL UNIQUE COMMENT '用户名id',
  `comment` varchar(255) NOT NULL COMMENT '评论内容',
  `comment_time` date NOT NULL COMMENT '评论时间',
  `position` int NOT NULL COMMENT '评论位置'
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- 文章相关
-- 关于点赞和收藏
CREATE TABLE `art_keeps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `article_id` bigint(20) NOT NULL COMMENT '文章ID',
  `user_id` bigint(20) NOT NULL UNIQUE COMMENT '用户名id',
  `keep_time` datetime NOT NULL COMMENT '收藏时间'
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
CREATE TABLE `art_likes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `article_id` bigint(20) NOT NULL COMMENT '文章ID',
  `user_id` bigint(20) NOT NULL UNIQUE COMMENT '用户名id',
  `like_time` datetime NOT NULL COMMENT '点赞时间'
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
-- 这里的点赞表：懒得复用，还怕数据库满了不成
CREATE TABLE `art_comment_main_likes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `article_id` bigint(20) DEFAULT NULL COMMENT '文章ID',
  `user_id` bigint(20) NOT NULL UNIQUE COMMENT '用户名id',
  `comment_main_time` datetime NOT NULL COMMENT '评论的时间',
  `like_time` datetime NOT NULL COMMENT '点赞时间',
    `comment_main_id` bigint(20) NOT NULL,
    constraint `fk_art_commment_main_like1` foreign key(`comment_main_id`) references comment_main(`id`) on delete cascade,
    constraint `fk_art_commment_main_like2` foreign key(`user_id`) references `user`(`user_id`) on delete cascade
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
CREATE TABLE `art_comment_likes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `article_id` bigint(20) DEFAULT NULL COMMENT '文章ID',
  `user_id` bigint(20) NOT NULL UNIQUE COMMENT '用户名id',
  `like_time` datetime NOT NULL COMMENT '点赞时间',
  `comment_time` datetime NOT NULL COMMENT '标识子评论时间',
  comment_main_time datetime NOT NULL COMMENT '标识父评论时间',
    `comment_id` bigint(20) NOT NULL,
    constraint `fk_art_commment_like1` foreign key(`comment_id`) references comment(`id`) on delete cascade,
    constraint `fk_art_commment_like2` foreign key(`user_id`) references `user`(`user_id`) on delete cascade
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
-- 测试完毕以后！！！！添加外键！！！！不然文章删除了评论什么的没有删除，导致数据冗余
-- 给评论表设置主键
ALTER TABLE comment_main
MODIFY `id` bigint(20) NOT NULL;
ALTER TABLE comment_main
ADD PRIMARY KEY (`comment_main_time`,`id`);
ALTER TABLE comment_main
DROP `article_id`;
ALTER TABLE comment_main
ADD `article_id` bigint(20) NOT NULL;
ALTER TABLE comment_main
ADD FOREIGN KEY `art_comment_main`(`article_id`) REFERENCES article(`article_id`) ON DELETE CASCADE;
ALTER TABLE comment
ADD FOREIGN KEY `art_comment_main_time`(`comment_main_time`) REFERENCES comment_main(`comment_main_time`) ON DELETE CASCADE
ALTER TABLE comment_main
ADD FOREIGN KEY(`article_id`) REFERENCES article(`article_id`);
ALTER TABLE comment
ADD FOREIGN KEY(`comment_main_time`) REFERENCES comment_main(`comment_main_time`);
alter table `comment_main`
change `id` `id` bigint(20) not null auto_increment primary KEY ;
-- 算了，重建表
CREATE TABLE `comment_main` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `article_id` bigint(20) NOT NULL COMMENT '文章ID',
    `user_id` bigint(20) NOT NULL UNIQUE COMMENT '用户名id',
    `comment` varchar(255) NOT NULL,
    `comment_main_time` datetime NOT NULL COMMENT '点赞时间',
    `user_ico` VARCHAR(200) DEFAULT NULL,
    `nickname` VARCHAR(20) DEFAULT NULL,
    primary key(`id`),
    constraint `fk_art_commment_main` foreign key(`article_id`) references article(`article_id`) on delete cascade
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
CREATE TABLE `comment` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `comment` varchar(255) NOT NULL,
    `article_id` bigint(20) NOT NULL COMMENT '文章ID',
    `comment_time` datetime NOT NULL COMMENT '评论时间',
    `from_user` bigint(20) NOT NULL,
    `to_user` bigint(20) default null,
    `comment_main_time` datetime NOT NULL COMMENT '主评论时间',
    `user_ico` VARCHAR(200) not NULL,
    `from_nickname` varchar(20) not null,
    `to_nickname` varchar(20) default null,
    primary key(`id`),
    constraint `fk_art_commment` foreign key(`article_id`) references article(`article_id`) on delete cascade
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

ALTER TABLE art_likes
ADD FOREIGN KEY `fk_art_likes1`(`article_id`) REFERENCES article(`article_id`) ON DELETE cascade ;
ALTER TABLE art_keeps
ADD FOREIGN KEY `fk_art_keeps1`(`article_id`) REFERENCES article(`article_id`) ON DELETE cascade ;
ALTER TABLE art_likes
ADD FOREIGN KEY `fk_art_likes2`(`user_id`) REFERENCES `user`(`user_id`) ON DELETE cascade ;
ALTER TABLE art_keeps
ADD FOREIGN KEY `fk_art_keeps2`(`user_id`) REFERENCES `user`(`user_id`) ON DELETE cascade ;
ALTER TABLE art_comment_likes
ADD FOREIGN KEY `fk_art_comment_likes2`(`user_id`) REFERENCES `user`(`user_id`) ON DELETE cascade ;
ALTER TABLE art_comment_main_likes
ADD FOREIGN KEY `fk_art_comment_main_keeps2`(`user_id`) REFERENCES `user`(`user_id`) ON DELETE cascade ;
ALTER TABLE art_comment_likes
ADD FOREIGN KEY `fk_art_comment_likes1`(`comment_time`) REFERENCES `comment`(`comment_time`) ON DELETE cascade;
ALTER TABLE art_comment_main_likes
ADD FOREIGN KEY `fk_art_comment_main_keeps1`(`comment_main_time`) REFERENCES `comment_main`(`comment_main_time`) ON DELETE cascade;


-- 研究这么久的数据库，发现：评论只需要关联文章，即可，只是点赞需要关联表

