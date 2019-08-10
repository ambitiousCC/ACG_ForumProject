--  修改密码属性
ALTER TABLE user
MODIFY password varchar(32) NOT NULL COMMENT '密码';

-- 发现注册用不到email就增加默认为空的属性
ALTER TABLE user
MODIFY email varchar(50) DEFAULT NULL COMMENT '邮箱';

-- 想到内容可不会只有一张图片，所以删掉原来的属性，创建专门储存图片的表
ALTER TABLE article
DROP `img_url`;
CREATE TABLE IF NOT EXISTS `img`(
  `id` bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `img_id` int(11) NOT NULL COMMENT '图片ID',
  `bigPic`   varchar(200) NOT NULL,
  `smallPic` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
-- 发现格式不一样
ALTER TABLE img
MODIFY img_id bigint(20) NOT NULL COMMENT '关联的图片id';
-- 增加外键
alter table `img` add constraint FK_img foreign key (`img_id`)
references `article` (`article_id`) on delete CASCADE on update CASCADE;
-- 插入图片链接发现不够
ALTER TABLE article
MODIFY `article_img` varchar(255) DEFAULT NULL COMMENT '文章缩略图';
-- 改变图片表中id的名称:应该有多个名称吧
ALTER TABLE img
CHANGE `img_id` `article_id` bigint(20) AFTER `id`;
-- 评论表修改
ALTER TABLE comment
DROP FOREIGN KEY `fk_comment_user`
ALTER TABLE comment
CHANGE `user_id` `from_user` bigint(20) AFTER `comment_time`;
ALTER TABLE comment
ADD `to_user` bigint(20) DEFAULT NULL AFTER `from_user` COMMENT '被评论人id';
ALTER TABLE comment
ADD `position` int NOT NULL AFTER `article_id` COMMENT '楼层位置';
-- 改名，记录楼层位置过于理想前段难以实现，就是用创建的日期因而两个评论表的日期不能同名
ALTER TABLE comment_main
CHANGE `comment_time` `comment_main_time` datetime NOT NULL;
ALTER TABLE comment_main
DROP `position`;
ALTER TABLE comment
DROP `position`;
ALTER TABLE comment
MODIFY `comment_time` datetime NOT NULL;
ALTER TABLE comment
ADD `comment_main_time` datetime NOT NULL;
-- 收藏和点赞的状态更好判断就用数字吧
ALTER TABLE like_keep
MODIFY `like` tinyint(1) DEFAULT 0 COMMENT '点赞为1，未点赞为0';
ALTER TABLE like_keep
MODIFY `keep` tinyint(1) DEFAULT 0 COMMENT '收藏为1，未收藏为0';
-- 修改默认值
ALTER TABLE comment
MODIFY `like` tinyint(1) DEFAULT 0 COMMENT '点赞为1，未点赞为0';
ALTER TABLE comment_main
MODIFY `like` tinyint(1) DEFAULT 0 COMMENT '收藏为1，未收藏为0';
-- 很大的变动：点赞的次数为从数据库直接搜到的结果，因此，数据库中需要修改四个表，同时改变like_keep对象的结构
DROP DATABASE like_keep;
-- 同时删除那个点击表：热度靠点赞和收藏，点击量算个啥
DROP TABLE IF EXISTS art_count;
