/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmso10i
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmso10i` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmso10i`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmso10i/upload/1617162800343.jpg'),(2,'picture2','http://localhost:8080/ssmso10i/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmso10i/upload/1617162807837.jpg'),(6,'homepage',NULL);

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617162985287 DEFAULT CHARSET=utf8 COMMENT='校园论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (21,'2021-03-31 11:48:16','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(22,'2021-03-31 11:48:16','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(23,'2021-03-31 11:48:16','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(24,'2021-03-31 11:48:16','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(26,'2021-03-31 11:48:16','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1617162892315,'2021-03-31 11:54:51','看你好，李焕英有感','<p>希望世间所有的妈妈都能被时光温柔对待，&ldquo;愿你的亲热永年少，涌在我最美好的祈祷&rdquo;大张伟老师深情地为《你好，李焕英》献上了片尾曲，是什么原因能让贾玲的这部处女作不断走高，让全国观众被它动容呢？是妈妈。《你好，李焕英》是由贾玲的真实经历改编而成，亲情是本部电影的关键词。它是贾玲2016年参加喜剧竞演节目《喜剧总动员》时的作品，讲述了贾玲穿越回母亲的年轻时代，与妈妈成为好姐妹并帮妈妈追求心爱男生的故事。</p>\n<p>&nbsp;</p>\n<p>《你好，李焕英》不单单是一声你好，也是漫长的再见；不仅仅是一部电影，也是一封寄给母亲的情书。&ldquo;从我记忆起，妈妈就是中年妇女的模样。&rdquo;，很多人都会有这样的感受。这类电影笑着笑着就哭了。</p>\n<p>&nbsp;</p>\n<p>春节电影档，由贾玲，沈腾，张小斐，陈赫主演的《你好,李焕英》，口碑备受好评。其中，今天看到关于贾玲的采访。记者问她&ldquo;为什么这部影片，英文名叫hi mom，中文名反而叫：你好李焕英呢？&rdquo;贾玲回答道&ldquo;因为妈妈不仅是妈妈，她首先是她自己。&rdquo;</p>\n<p>&nbsp;</p>\n<p>做母亲是伟大的。尽管这可能，会影响她的职业发展，身体健康状况。好像做母亲，为孩子付出一切，很值得提倡。其实不然，因为母亲，她也是个个体，她也有自己的情绪，她也能有自己的生活，也可以好好的爱自己。孩子不应占据妈妈生活的全部，不应为繁衍而生育，孩子的存在应该是：让原本的生活，锦上添花。</p>\n<p>&nbsp;</p>',0,1617162828235,'1','开放'),(1617162901853,'2021-03-31 11:55:01',NULL,'是的',21,1617162828235,'1',NULL);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617162936434 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (41,'2021-03-31 11:48:16',1,'用户名1','留言内容1','回复内容1'),(42,'2021-03-31 11:48:16',2,'用户名2','留言内容2','回复内容2'),(43,'2021-03-31 11:48:16',3,'用户名3','留言内容3','回复内容3'),(44,'2021-03-31 11:48:16',4,'用户名4','留言内容4','回复内容4'),(45,'2021-03-31 11:48:16',5,'用户名5','留言内容5','回复内容5'),(46,'2021-03-31 11:48:16',6,'用户名6','留言内容6','回复内容6'),(1617162936433,'2021-03-31 11:55:35',1617162828235,'1','请问校庆是哪一天','5月3日');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617162788990 DEFAULT CHARSET=utf8 COMMENT='系统公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (31,'2021-03-31 11:48:16','标题1','简介1','http://localhost:8080/ssmso10i/upload/news_picture1.jpg','内容1'),(32,'2021-03-31 11:48:16','标题2','简介2','http://localhost:8080/ssmso10i/upload/1617162651304.webp','<p>内容2</p>'),(33,'2021-03-31 11:48:16','标题3','简介3','http://localhost:8080/ssmso10i/upload/1617162658652.webp','<p>内容3</p>'),(34,'2021-03-31 11:48:16','标题4','简介4','http://localhost:8080/ssmso10i/upload/news_picture4.jpg','内容4'),(35,'2021-03-31 11:48:16','标题5','简介5','http://localhost:8080/ssmso10i/upload/news_picture5.jpg','内容5'),(36,'2021-03-31 11:48:16','标题6','简介6','http://localhost:8080/ssmso10i/upload/news_picture6.jpg','内容6'),(1617162788989,'2021-03-31 11:53:08','规范使用校园论坛','校园论坛规范使用事宜','http://localhost:8080/ssmso10i/upload/1617162739528.webp','<p>规范使用校园论坛</p><p>可以畅所欲言，不得发表有不良言论的帖子和回帖，不得有人身攻击，文明发言</p><p><img src=\"http://localhost:8080/ssmso10i/upload/1617162778860.webp\"></p>');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','adkmjx3pm1zxp9zmxenv6208cwqwjx3i','2021-03-31 11:49:38','2021-03-31 12:56:12'),(2,1,'abo','users','管理员','a7kzagbbrvdrf7m63siftqrm52ea08a4','2021-03-31 11:50:44','2021-03-31 12:56:42'),(3,1617162828235,'1','yonghu','用户','9qdl8jiqa7uo4nf4mc8ae6601t56epvs','2021-03-31 11:53:53','2021-03-31 12:53:53');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','aboo','管理员','2021-03-31 11:48:16');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1617162828236 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`) values (11,'2021-03-31 11:48:16','用户1','123456','姓名1','http://localhost:8080/ssmso10i/upload/yonghu_touxiang1.jpg','男','13823888881'),(12,'2021-03-31 11:48:16','用户2','123456','姓名2','http://localhost:8080/ssmso10i/upload/yonghu_touxiang2.jpg','男','13823888882'),(13,'2021-03-31 11:48:16','用户3','123456','姓名3','http://localhost:8080/ssmso10i/upload/yonghu_touxiang3.jpg','男','13823888883'),(14,'2021-03-31 11:48:16','用户4','123456','姓名4','http://localhost:8080/ssmso10i/upload/yonghu_touxiang4.jpg','男','13823888884'),(15,'2021-03-31 11:48:16','用户5','123456','姓名5','http://localhost:8080/ssmso10i/upload/yonghu_touxiang5.jpg','男','13823888885'),(16,'2021-03-31 11:48:16','用户6','123456','姓名6','http://localhost:8080/ssmso10i/upload/yonghu_touxiang6.jpg','男','13823888886'),(1617162828235,'2021-03-31 11:53:48','1','1','陈一','http://localhost:8080/ssmso10i/upload/1617162845318.jpg','女','12312312312');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
