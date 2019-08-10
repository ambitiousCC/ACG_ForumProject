-- 添加属性
ALTER TABLE user
ADD `create_user_time` DATETIME DEFAULT NULL COMMENT '创建用户的时间';
-- username唯一：增加账户的安全性
ALTER TABLE user
ADD UNIQUE KEY username_uniquekey(username);
-- 使用邮箱激活的方法：需要添加code和status属性
ALTER TABLE user
ADD `status` ENUM('Y','N','F') NOT NULL DEFAULT 'N' COMMENT '账号状态';
ALTER TABLE user
ADD `code` VARCHAR(50) DEFAULT NULL COMMENT '激活码';
-- 突然想起来用户还有头像
ALTER TABLE user
ADD `user_img` VARCHAR(200) DEFAULT NULL COMMENT '用户头像减缩';
-- 用户原始头像 需要限制大小
ALTER TABLE user
ADD `user_ico` VARCHAR(200) DEFAULT NULL COMMENT '用户上传的头像';
-- 给文章分类
ALTER TABLE article
ADD `cid` TINYINT NOT NULL COMMENT '文章种类';
-- 文章添加缩略图
ALTER TABLE article
ADD `article_img` VARCHAR(20) DEFAULT NULL COMMENT '文章的缩略图';
-- 屈服了，增加了文章中作者的昵称
ALTER TABLE article
ADD `article_author` VARCHAR(20) DEFAULT NULL COMMENT '作者';
-- 增加了评论中评论人的头像，节约资源
ALTER TABLE comment_main
ADD `user_ico` VARCHAR(200) DEFAULT NULL COMMENT '评论人的头像';
ALTER TABLE comment
ADD `user_ico` VARCHAR(200) DEFAULT NULL COMMENT '评论人的头像';
-- 每条评论也有赞数
ALTER TABLE comment_main
ADD `like` int DEFAULT NULL COMMENT '赞数';
ALTER TABLE comment
ADD `like` int DEFAULT NULL COMMENT '赞数';
-- 评论增加昵称，节约资源
ALTER TABLE comment_main
ADD `nickname` VARCHAR(20) NOT NULL COMMENT '评论人的昵称';
ALTER TABLE comment
ADD `from_nickname` VARCHAR(20) NOT NULL COMMENT '评论人的昵称';
ALTER TABLE comment
ADD `to_nickname` VARCHAR(20) DEFAULT NULL COMMENT '评论人的昵称';
-- 增加个人的个性签名
ALTER TABLE `user`
ADD `user_des` VARCHAR(255) DEFAULT NULL;
-- 增加收藏文章的时间
ALTER TABLE `like_keep`
ADD `like_time` datetime DEFAULT NULL;
ALTER TABLE `like_keep`
ADD `keep_time` datetime DEFAULT NULL;
-- 给幅评论表中增加主评论的id
ALTER TABLE `comment`
ADD `comment_main_id` bigint(20) NOT NULL UNIQUE;
-- 给content表添加能够被查询到的绝对标识：用户id和创建时间
ALTER TABLE `content`
ADD `user_id` bigint(20) NOT NULL comment '用户id';
ALTER TABLE `content`
ADD `content_time` datetime not null comment '创建时间';
ALTER TABLE `content`
modify `user_id` bigint(20) NOT NULL comment '用户id' after `content_id`;
ALTER TABLE `content`
modify `content_time` datetime not null comment '创建时间' after `user_id`;
ALTER TABLE `content`
add `key` varchar(50) not null comment '唯一标识' after `content_time`;
ALTER TABLE `user`
ADD `user_comments` VARCHAR(255) DEFAULT NULL;