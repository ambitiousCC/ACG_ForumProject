--第一步：让主键失效：alter table 表名 disable primary key cascade;
--第二步：删除数据：delete from 表名 …
--第三步：让主键生效：alter table 表名 enable primary key;