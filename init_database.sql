
-- 允许远程mysql客户端访问：
GRANT ALL ON *.* TO 'root'@'%';
flush privileges;

-- 建库
CREATE DATABASE IF NOT EXISTS mydb default charset utf8 COLLATE utf8_general_ci;
-- 切换数据库
use mydb;

-- 建表
DROP TABLE IF EXISTS `table1`;

CREATE TABLE `table1` (
`id` int(11) unsigned NOT NULL AUTO_INCREMENT,
`name` varchar(20) DEFAULT NULL COMMENT '姓名',
`age` int(11) DEFAULT NULL COMMENT '年龄',
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 插入数据
INSERT INTO `table1` (`id`, `name`, `age`)
VALUES
(1,'姓名1',10),
(2,'姓名2',11);
