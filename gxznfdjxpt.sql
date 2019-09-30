# MySQL-Front 5.1  (Build 4.2)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: gxznfdjxpt
# ------------------------------------------------------
# Server version 5.5.15

#
# Source for table t_admin
#

DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL,
  `userName` varchar(66) DEFAULT NULL,
  `userPw` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table t_admin
#

LOCK TABLES `t_admin` WRITE;
/*!40000 ALTER TABLE `t_admin` DISABLE KEYS */;
INSERT INTO `t_admin` VALUES (1,'a','a');
/*!40000 ALTER TABLE `t_admin` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table t_catelog
#

DROP TABLE IF EXISTS `t_catelog`;
CREATE TABLE `t_catelog` (
  `catelog_id` int(11) NOT NULL,
  `catelog_name` varchar(50) DEFAULT NULL,
  `catelog_del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`catelog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table t_catelog
#

LOCK TABLES `t_catelog` WRITE;
/*!40000 ALTER TABLE `t_catelog` DISABLE KEYS */;
INSERT INTO `t_catelog` VALUES (1,'交流版块one','no');
INSERT INTO `t_catelog` VALUES (2,'交流版块two','no');
INSERT INTO `t_catelog` VALUES (3,'交流版块three','no');
/*!40000 ALTER TABLE `t_catelog` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table t_doc
#

DROP TABLE IF EXISTS `t_doc`;
CREATE TABLE `t_doc` (
  `id` int(11) NOT NULL,
  `mingcheng` varchar(66) DEFAULT NULL,
  `fujian` varchar(50) DEFAULT NULL,
  `fujianYuanshiming` varchar(55) DEFAULT NULL,
  `shijian` varchar(50) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table t_doc
#

LOCK TABLES `t_doc` WRITE;
/*!40000 ALTER TABLE `t_doc` DISABLE KEYS */;
INSERT INTO `t_doc` VALUES (5,'高等数学','/upload/1551460941200.jpg','QQ截图20190302012202.jpg','2019/05/05','no');
INSERT INTO `t_doc` VALUES (6,'1','/upload/1551461813362.jpg','QQ截图20190302012202.jpg','2019/05/05','no');
INSERT INTO `t_doc` VALUES (7,'3','/upload/1551462200242.jpg','QQ截图20190302012202.jpg','2019/05/05','no');
INSERT INTO `t_doc` VALUES (8,'3333','/upload/1551785002724.jpg','111.jpg','2019/05/05','no');
INSERT INTO `t_doc` VALUES (9,'测试学习课件','/upload/1551983331212.txt','1550764843761.txt','2019/05/05','no');
INSERT INTO `t_doc` VALUES (10,'1111111111111111','/upload/1552247496427.txt','1550764843761.txt','2019/05/05','no');
/*!40000 ALTER TABLE `t_doc` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table t_fenshu
#

DROP TABLE IF EXISTS `t_fenshu`;
CREATE TABLE `t_fenshu` (
  `fenshu_id` int(11) NOT NULL,
  `shiti_id` int(11) DEFAULT NULL,
  `stu_id` int(11) DEFAULT NULL,
  `fenshu` int(11) DEFAULT NULL,
  PRIMARY KEY (`fenshu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table t_fenshu
#

LOCK TABLES `t_fenshu` WRITE;
/*!40000 ALTER TABLE `t_fenshu` DISABLE KEYS */;
INSERT INTO `t_fenshu` VALUES (1,1,1,20);
INSERT INTO `t_fenshu` VALUES (2,2,6,30);
INSERT INTO `t_fenshu` VALUES (4,2,5,10);
INSERT INTO `t_fenshu` VALUES (5,4,1,50);
INSERT INTO `t_fenshu` VALUES (7,2,2,10);
INSERT INTO `t_fenshu` VALUES (8,6,10,20);
INSERT INTO `t_fenshu` VALUES (9,7,12,10);
INSERT INTO `t_fenshu` VALUES (10,2,13,10);
INSERT INTO `t_fenshu` VALUES (11,7,13,10);
INSERT INTO `t_fenshu` VALUES (12,9,5,10);
INSERT INTO `t_fenshu` VALUES (13,7,5,10);
/*!40000 ALTER TABLE `t_fenshu` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table t_gonggao
#

DROP TABLE IF EXISTS `t_gonggao`;
CREATE TABLE `t_gonggao` (
  `gonggao_id` int(11) NOT NULL,
  `gonggao_title` varchar(55) DEFAULT NULL,
  `gonggao_content` varchar(5000) DEFAULT NULL,
  `gonggao_data` varchar(55) DEFAULT NULL,
  `gonggao_del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`gonggao_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table t_gonggao
#

LOCK TABLES `t_gonggao` WRITE;
/*!40000 ALTER TABLE `t_gonggao` DISABLE KEYS */;
INSERT INTO `t_gonggao` VALUES (3,'测试公告测试公告测试公告测试公告测试公告测试公告','测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告<br  />','2019/05/05',NULL);
INSERT INTO `t_gonggao` VALUES (4,'测试公告测试公告测试公告测试公告测试公告测试公告测试公告','测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告<br  />','2019/05/05',NULL);
INSERT INTO `t_gonggao` VALUES (5,'测试公告测试公告测试公告测试公告测试公告测试公告测试公','测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告测试公告<br  />','2019/05/05',NULL);
INSERT INTO `t_gonggao` VALUES (7,'告测试公告测试公告测试公告告测试公告测试公告测试公告','告测试公告测试公告测试公告告测试公告测试公告测试公告告测试公告测试公告测试公告告测试公告测试公告测试公告<br  />','2019/05/05',NULL);
INSERT INTO `t_gonggao` VALUES (8,'告测试公告测试公告测试公告告测试公告测试公告测试公告','告测试公告测试公告测试公告告测试公告测试公告测试公告告测试公告测试公告测试公告告测试公告测试公告测试公告告测试公告测试公告测试公告告测试公告测试公告测试公告<br  />','2019/05/05',NULL);
INSERT INTO `t_gonggao` VALUES (9,'告测试公告测试公告测试公告告测试公告测试公告测试公告','告测试公告测试公告测试公告告测试公告测试公告测试公告告测试公告测试公告测试公告告测试公告测试公告测试公告<br  />','2019/05/05',NULL);
INSERT INTO `t_gonggao` VALUES (10,'告测试公告测试公告测试公告告测试公告测试公告测试公告','告测试公告测试公告测试公告告测试公告测试公告测试公告告测试公告测试公告测试公告告测试公告测试公告测试公告','2019/05/05',NULL);
/*!40000 ALTER TABLE `t_gonggao` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table t_huifu
#

DROP TABLE IF EXISTS `t_huifu`;
CREATE TABLE `t_huifu` (
  `id` int(11) NOT NULL,
  `title` varchar(55) DEFAULT NULL,
  `content` varchar(5000) DEFAULT NULL,
  `shijian` varchar(50) DEFAULT NULL,
  `stu_id` int(11) DEFAULT NULL,
  `zhuti_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table t_huifu
#

LOCK TABLES `t_huifu` WRITE;
/*!40000 ALTER TABLE `t_huifu` DISABLE KEYS */;
INSERT INTO `t_huifu` VALUES (10,NULL,'信息内容的','2019-05-06',1,18);
INSERT INTO `t_huifu` VALUES (12,NULL,'信息内容ddddddddddddddddddddd','2019-05-06',1,17);
INSERT INTO `t_huifu` VALUES (13,NULL,'信息内容对方答复','2019-05-06',1,4);
INSERT INTO `t_huifu` VALUES (15,NULL,'信息内容dfd','2019-05-06',1,16);
INSERT INTO `t_huifu` VALUES (17,NULL,'信息内容ddddddd','2019-05-06',1,19);
INSERT INTO `t_huifu` VALUES (18,NULL,'信息内容ddddddddd','2019-05-06',1,19);
INSERT INTO `t_huifu` VALUES (19,NULL,'测试回复','2019-05-06',6,1);
INSERT INTO `t_huifu` VALUES (20,NULL,'<p>11111111111111222</p>','2019-05-06',10,1);
INSERT INTO `t_huifu` VALUES (21,NULL,'<p>1313</p>','2019-05-06',12,2);
INSERT INTO `t_huifu` VALUES (22,NULL,'<p>22222222222222</p>','2019-05-06',5,3);
INSERT INTO `t_huifu` VALUES (23,NULL,'<p>asdasdasd</p>','2019-05-06',5,4);
/*!40000 ALTER TABLE `t_huifu` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table t_jiaoyuan
#

DROP TABLE IF EXISTS `t_jiaoyuan`;
CREATE TABLE `t_jiaoyuan` (
  `jiaojuan_id` int(11) NOT NULL,
  `stu_id` int(11) DEFAULT NULL,
  `shiti_id` int(11) DEFAULT NULL,
  `timu_id` int(11) DEFAULT NULL,
  `timu_daan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`jiaojuan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table t_jiaoyuan
#

LOCK TABLES `t_jiaoyuan` WRITE;
/*!40000 ALTER TABLE `t_jiaoyuan` DISABLE KEYS */;
INSERT INTO `t_jiaoyuan` VALUES (1,1,1,1,'A');
INSERT INTO `t_jiaoyuan` VALUES (2,1,1,2,'');
INSERT INTO `t_jiaoyuan` VALUES (3,1,1,3,'A');
INSERT INTO `t_jiaoyuan` VALUES (4,1,1,4,'A');
INSERT INTO `t_jiaoyuan` VALUES (5,1,1,5,'');
INSERT INTO `t_jiaoyuan` VALUES (6,6,2,6,'C');
INSERT INTO `t_jiaoyuan` VALUES (7,6,2,7,'A');
INSERT INTO `t_jiaoyuan` VALUES (8,6,2,8,'B');
INSERT INTO `t_jiaoyuan` VALUES (9,5,4,6,'A');
INSERT INTO `t_jiaoyuan` VALUES (10,5,4,7,'A');
INSERT INTO `t_jiaoyuan` VALUES (11,5,4,8,'A');
INSERT INTO `t_jiaoyuan` VALUES (12,5,4,9,'D');
INSERT INTO `t_jiaoyuan` VALUES (13,5,4,10,'B');
INSERT INTO `t_jiaoyuan` VALUES (14,5,4,11,'C');
INSERT INTO `t_jiaoyuan` VALUES (15,5,4,12,'A');
INSERT INTO `t_jiaoyuan` VALUES (16,5,4,13,'A');
INSERT INTO `t_jiaoyuan` VALUES (17,5,4,14,'A');
INSERT INTO `t_jiaoyuan` VALUES (18,5,2,6,'C');
INSERT INTO `t_jiaoyuan` VALUES (19,5,2,7,'D');
INSERT INTO `t_jiaoyuan` VALUES (20,5,2,8,'D');
INSERT INTO `t_jiaoyuan` VALUES (21,1,4,6,'D');
INSERT INTO `t_jiaoyuan` VALUES (22,1,4,7,'D');
INSERT INTO `t_jiaoyuan` VALUES (23,1,4,8,'A');
INSERT INTO `t_jiaoyuan` VALUES (24,1,4,9,'D');
INSERT INTO `t_jiaoyuan` VALUES (25,1,4,10,'A');
INSERT INTO `t_jiaoyuan` VALUES (26,1,4,11,'A');
INSERT INTO `t_jiaoyuan` VALUES (27,1,4,12,'A');
INSERT INTO `t_jiaoyuan` VALUES (28,1,4,13,'A');
INSERT INTO `t_jiaoyuan` VALUES (29,1,4,14,'A');
INSERT INTO `t_jiaoyuan` VALUES (30,2,4,6,'C');
INSERT INTO `t_jiaoyuan` VALUES (31,2,4,7,'A');
INSERT INTO `t_jiaoyuan` VALUES (32,2,4,8,'D');
INSERT INTO `t_jiaoyuan` VALUES (33,2,4,9,'D');
INSERT INTO `t_jiaoyuan` VALUES (34,2,4,10,'B');
INSERT INTO `t_jiaoyuan` VALUES (35,2,4,11,'A');
INSERT INTO `t_jiaoyuan` VALUES (36,2,4,12,'C');
INSERT INTO `t_jiaoyuan` VALUES (37,2,4,13,'B');
INSERT INTO `t_jiaoyuan` VALUES (38,2,4,14,'B');
INSERT INTO `t_jiaoyuan` VALUES (39,2,2,6,'C');
INSERT INTO `t_jiaoyuan` VALUES (40,2,2,7,'B');
INSERT INTO `t_jiaoyuan` VALUES (41,2,2,8,'C');
INSERT INTO `t_jiaoyuan` VALUES (42,7,5,6,'A');
INSERT INTO `t_jiaoyuan` VALUES (43,7,5,7,'A');
INSERT INTO `t_jiaoyuan` VALUES (44,7,5,15,'A');
INSERT INTO `t_jiaoyuan` VALUES (45,7,5,16,'A');
INSERT INTO `t_jiaoyuan` VALUES (46,10,6,6,'A');
INSERT INTO `t_jiaoyuan` VALUES (47,10,6,7,'A');
INSERT INTO `t_jiaoyuan` VALUES (48,10,6,8,'D');
INSERT INTO `t_jiaoyuan` VALUES (49,10,6,17,'A');
INSERT INTO `t_jiaoyuan` VALUES (50,12,7,6,'B');
INSERT INTO `t_jiaoyuan` VALUES (51,12,7,7,'A');
INSERT INTO `t_jiaoyuan` VALUES (52,12,7,8,'A');
INSERT INTO `t_jiaoyuan` VALUES (53,13,2,6,'A');
INSERT INTO `t_jiaoyuan` VALUES (54,13,2,7,'A');
INSERT INTO `t_jiaoyuan` VALUES (55,13,2,8,'A');
INSERT INTO `t_jiaoyuan` VALUES (56,13,7,6,'A');
INSERT INTO `t_jiaoyuan` VALUES (57,13,7,7,'A');
INSERT INTO `t_jiaoyuan` VALUES (58,13,7,8,'A');
INSERT INTO `t_jiaoyuan` VALUES (59,5,9,6,'A');
INSERT INTO `t_jiaoyuan` VALUES (60,5,9,7,'A');
INSERT INTO `t_jiaoyuan` VALUES (61,5,9,8,'A');
INSERT INTO `t_jiaoyuan` VALUES (62,5,7,6,'A');
INSERT INTO `t_jiaoyuan` VALUES (63,5,7,7,'A');
INSERT INTO `t_jiaoyuan` VALUES (64,5,7,8,'A');
/*!40000 ALTER TABLE `t_jiaoyuan` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table t_liuyan
#

DROP TABLE IF EXISTS `t_liuyan`;
CREATE TABLE `t_liuyan` (
  `id` int(11) NOT NULL,
  `neirong` varchar(2000) DEFAULT NULL,
  `liuyanshi` varchar(55) DEFAULT NULL,
  `stu_id` int(11) DEFAULT NULL,
  `huifu` varchar(2000) DEFAULT NULL,
  `huifushi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table t_liuyan
#

LOCK TABLES `t_liuyan` WRITE;
/*!40000 ALTER TABLE `t_liuyan` DISABLE KEYS */;
INSERT INTO `t_liuyan` VALUES (1,'怎么样才能吧学习搞好呢，请指教','2019-05-06',1,'ddddddd','2019-05-06');
INSERT INTO `t_liuyan` VALUES (3,'测试问题测试问题测试问题测试问题测试问题测试问题','2019-05-06',1,'11','2019-05-06');
INSERT INTO `t_liuyan` VALUES (6,'2222222222222222','2019-05-06',1,'111','2019-05-06');
INSERT INTO `t_liuyan` VALUES (7,'dfdfddddddddddddddd','2019-05-06',0,'1212','2019-05-06');
INSERT INTO `t_liuyan` VALUES (8,'11','2019-05-06',0,'11111111111','2019-05-06');
INSERT INTO `t_liuyan` VALUES (9,'324234234','2019-05-06',0,'1','2019-05-06');
INSERT INTO `t_liuyan` VALUES (10,'123123','2019-05-06',0,'1111111','2019-05-06');
INSERT INTO `t_liuyan` VALUES (11,'11111111','2019-05-06',0,'22222222222','2019-05-06');
INSERT INTO `t_liuyan` VALUES (12,'11111111','2019-05-06',0,'2','2019-05-06');
INSERT INTO `t_liuyan` VALUES (13,'4444444','2019-05-06 00:16',0,'11','2019-05-06 00:18');
/*!40000 ALTER TABLE `t_liuyan` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table t_shipin
#

DROP TABLE IF EXISTS `t_shipin`;
CREATE TABLE `t_shipin` (
  `shipin_id` int(11) NOT NULL,
  `shipin_name` varchar(66) DEFAULT NULL,
  `shipin_jianjie` varchar(2000) DEFAULT NULL,
  `fujian` varchar(55) DEFAULT NULL,
  `fujianYuanshiming` varchar(2000) DEFAULT NULL,
  `shijian` varchar(50) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`shipin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table t_shipin
#

LOCK TABLES `t_shipin` WRITE;
/*!40000 ALTER TABLE `t_shipin` DISABLE KEYS */;
INSERT INTO `t_shipin` VALUES (1,'2','2','/upload/1551461834334.jpg','QQ截图20190302012852.jpg',NULL,'no');
INSERT INTO `t_shipin` VALUES (2,'2','2','/upload/1551462220156.jpg','QQ截图20190302012852.jpg',NULL,'no');
INSERT INTO `t_shipin` VALUES (3,'测试教学视频','测试教学视频<br  />','/upload/1551983354865.AVI','123123.AVI',NULL,'no');
INSERT INTO `t_shipin` VALUES (4,'22222222222','22222222222222<br  />','/upload/1552247508056.AVI','123123.AVI',NULL,'no');
INSERT INTO `t_shipin` VALUES (5,'1111111111111111','11111111111111111111<br  />','/upload/1554293820233.AVI','123123.AVI',NULL,'no');
INSERT INTO `t_shipin` VALUES (6,'222222222222','2222222222222222222<br  />','/upload/1555901692528.mp4','1521462245226.mp4',NULL,'no');
INSERT INTO `t_shipin` VALUES (7,'3333333333333333333333333','3333333333333333333333<br  />','/upload/1557072815829.mp4','1521462245226.mp4',NULL,'no');
/*!40000 ALTER TABLE `t_shipin` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table t_shiti
#

DROP TABLE IF EXISTS `t_shiti`;
CREATE TABLE `t_shiti` (
  `shiti_id` int(11) NOT NULL,
  `shiti_name` varchar(50) DEFAULT NULL,
  `shiti_jieshao` varchar(50) DEFAULT NULL,
  `timuIdList` varchar(50) DEFAULT NULL,
  `shiti_shijian` varchar(50) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`shiti_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table t_shiti
#

LOCK TABLES `t_shiti` WRITE;
/*!40000 ALTER TABLE `t_shiti` DISABLE KEYS */;
INSERT INTO `t_shiti` VALUES (2,'11111111','111111111','6, 7, 8','2019-05-06','no');
INSERT INTO `t_shiti` VALUES (3,'1','1','','2019-05-06','no');
INSERT INTO `t_shiti` VALUES (4,'1111111111111111111','11','6, 7, 8, 9, 10, 11, 12, 13, 14','2019-05-06','no');
INSERT INTO `t_shiti` VALUES (5,'试卷20190221','asd','6, 7, 15, 16','2019-05-06','no');
INSERT INTO `t_shiti` VALUES (6,'测试试卷','测试试卷','6, 7, 8, 17','2019-05-06','no');
INSERT INTO `t_shiti` VALUES (7,'5555555','55555555555','6, 7, 8','2019-05-06','no');
INSERT INTO `t_shiti` VALUES (8,'111111111111111','1111111111111','','2019-05-06','no');
INSERT INTO `t_shiti` VALUES (9,'qqqqqqqqq','qqqqqqqq','6, 7, 8','2019-05-06','no');
/*!40000 ALTER TABLE `t_shiti` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table t_stu
#

DROP TABLE IF EXISTS `t_stu`;
CREATE TABLE `t_stu` (
  `stu_id` int(11) NOT NULL,
  `stu_xuehao` varchar(66) DEFAULT NULL,
  `stu_realname` varchar(50) DEFAULT NULL,
  `stu_sex` varchar(50) DEFAULT NULL,
  `stu_age` varchar(55) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dianhua` varchar(255) DEFAULT NULL,
  `login_pw` varchar(50) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table t_stu
#

LOCK TABLES `t_stu` WRITE;
/*!40000 ALTER TABLE `t_stu` DISABLE KEYS */;
INSERT INTO `t_stu` VALUES (1,'2016001','刘三','男','21','liusan1@163.com','13333333333','000000','no');
INSERT INTO `t_stu` VALUES (2,'2016002','马刚','男','21','maang@163.com','13444444444','000000','no');
INSERT INTO `t_stu` VALUES (3,'2016003','刘海','男','21','liuhai@163.com','13555555555','000000','no');
INSERT INTO `t_stu` VALUES (4,'2016004','李强','男','21','liqiang@163.com','13666666666','000000','no');
INSERT INTO `t_stu` VALUES (5,'111111','111111','男','20','123@qq.com','13555555555','111111','no');
INSERT INTO `t_stu` VALUES (6,'1','1','男','20','123@qq.com','13555555555','1','no');
INSERT INTO `t_stu` VALUES (7,'20190221','周杰伦','男','20','33@qq.com','13555553333','111111','no');
INSERT INTO `t_stu` VALUES (8,'h','h','男','20','323@qq.com','15876356371','000000','no');
INSERT INTO `t_stu` VALUES (9,'f','f','男','20','2432@qq.com','15464323456','000000','no');
INSERT INTO `t_stu` VALUES (10,'123456','123456','男','20','123@qq.com','13544443333','123456','no');
INSERT INTO `t_stu` VALUES (11,'qqqqqq','qqqqqq','男','20','3214@qq.com','13555555555','qqqqqq','no');
INSERT INTO `t_stu` VALUES (12,'aaaaaa','阿斯达','男','20','34@qq.com','13566776656','aaaaaa','no');
INSERT INTO `t_stu` VALUES (13,'ssssss','阿斯达','男','20','123123@qq.com','13533444433','ssssss','no');
/*!40000 ALTER TABLE `t_stu` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table t_tea
#

DROP TABLE IF EXISTS `t_tea`;
CREATE TABLE `t_tea` (
  `tea_id` int(11) NOT NULL,
  `tea_bianhao` varchar(66) DEFAULT NULL,
  `tea_realname` varchar(55) DEFAULT NULL,
  `tea_sex` varchar(50) DEFAULT NULL,
  `tea_age` varchar(50) DEFAULT NULL,
  `login_pw` varchar(50) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tea_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table t_tea
#

LOCK TABLES `t_tea` WRITE;
/*!40000 ALTER TABLE `t_tea` DISABLE KEYS */;
INSERT INTO `t_tea` VALUES (1,'b','刘老师','男','28','b','no');
INSERT INTO `t_tea` VALUES (2,'g','g','女','40','000000','no');
INSERT INTO `t_tea` VALUES (3,'a','a','男','40','000000','no');
/*!40000 ALTER TABLE `t_tea` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table t_timu
#

DROP TABLE IF EXISTS `t_timu`;
CREATE TABLE `t_timu` (
  `timu_id` int(11) NOT NULL,
  `timu_name` varchar(500) DEFAULT NULL,
  `timu_xuanxianga` varchar(500) DEFAULT NULL,
  `timu_xuanxiangb` varchar(500) DEFAULT NULL,
  `timu_xuanxiangc` varchar(500) DEFAULT NULL,
  `timu_xuanxiangd` varchar(500) DEFAULT NULL,
  `timu_daan` varchar(500) DEFAULT NULL,
  `timu_fenshu` int(11) DEFAULT NULL,
  `timu_leixing` varchar(255) DEFAULT NULL,
  `del` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`timu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table t_timu
#

LOCK TABLES `t_timu` WRITE;
/*!40000 ALTER TABLE `t_timu` DISABLE KEYS */;
INSERT INTO `t_timu` VALUES (1,'java是那个公司的？','1980','1981','1982','1983','A',10,'单选题','yes');
INSERT INTO `t_timu` VALUES (2,'下面哪个不是java的基本数据类型','string','float','double','var','D',10,'单选题','yes');
INSERT INTO `t_timu` VALUES (3,'java核心思想是什么？','封装继承和多态','面向对象','面向过程','未知','A',10,'单选题','yes');
INSERT INTO `t_timu` VALUES (4,'JAVA语言对于标识符有哪些规定?下面标识副中,那些是合法的?那些是不和法的?','int char,','char 0ax_li ','float fLu1  ','byte Cy%ty=12345','D',10,'单选题','yes');
INSERT INTO `t_timu` VALUES (5,'设int a=3 b=5 c=15,分析下列各表达式运算后,a b c的值各为多少','c=b++*5/a++','c=a++ -(--b)','c=b++*a++','c=++a-b--','A',10,'单选题','yes');
INSERT INTO `t_timu` VALUES (6,'地球是什么形状','圆','方形','椭圆形','三角形','C',10,'单选题','no');
INSERT INTO `t_timu` VALUES (7,'阿三大三大四的','a','b','c','d','A',10,'单选题','no');
INSERT INTO `t_timu` VALUES (8,'胜多负少的','r','t','y','u','B',10,'单选题','no');
INSERT INTO `t_timu` VALUES (9,'1','1','1','1','1','A',10,'单选题','no');
INSERT INTO `t_timu` VALUES (10,'2','2','2','2','2','A',10,'单选题','no');
INSERT INTO `t_timu` VALUES (11,'3','3','3','3','3','A',10,'单选题','no');
INSERT INTO `t_timu` VALUES (12,'4','4','4','4','4','A',10,'单选题','no');
INSERT INTO `t_timu` VALUES (13,'5','5','5','5','5','A',10,'单选题','no');
INSERT INTO `t_timu` VALUES (14,'6','6','6','6','6','A',10,'单选题','no');
INSERT INTO `t_timu` VALUES (15,'下一届世界杯在哪个国家','俄罗斯','巴西','中国','英格兰','A',11,'单选题','no');
INSERT INTO `t_timu` VALUES (16,'312424324234','23423','4234','32432','4324','B',10,'单选题','no');
INSERT INTO `t_timu` VALUES (17,'测试题目','1','2','3','4','A',10,'单选题','no');
/*!40000 ALTER TABLE `t_timu` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table t_zhuti
#

DROP TABLE IF EXISTS `t_zhuti`;
CREATE TABLE `t_zhuti` (
  `id` int(11) NOT NULL,
  `title` varchar(55) DEFAULT NULL,
  `content` varchar(5000) DEFAULT NULL,
  `fujian` varchar(55) DEFAULT NULL,
  `fujianYuanshiming` varchar(50) DEFAULT NULL,
  `shijian` varchar(50) DEFAULT NULL,
  `stu_id` int(11) DEFAULT NULL,
  `catelog_id` int(11) NOT NULL,
  `shifouding` varchar(55) DEFAULT NULL,
  `shifoujing` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table t_zhuti
#

LOCK TABLES `t_zhuti` WRITE;
/*!40000 ALTER TABLE `t_zhuti` DISABLE KEYS */;
INSERT INTO `t_zhuti` VALUES (1,'1111111111111','<p>11111111111111</p>','','','2019-05-06',10,1,'否','否');
INSERT INTO `t_zhuti` VALUES (2,'asdasdas','<p>asdasdasd</p>','/upload/1552247443517.txt','1550764843761.txt','2019-05-06',12,2,'否','否');
INSERT INTO `t_zhuti` VALUES (3,'2222222222222222','<p>22222222222222222</p>','','','2019-05-06',5,1,'否','否');
INSERT INTO `t_zhuti` VALUES (4,'asdasdasd','信息内容asdasdasdasd','','','2019-05-06',5,3,'否','否');
/*!40000 ALTER TABLE `t_zhuti` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table t_zuoyes
#

DROP TABLE IF EXISTS `t_zuoyes`;
CREATE TABLE `t_zuoyes` (
  `id` int(11) NOT NULL,
  `mingcheng` varchar(50) DEFAULT NULL,
  `fujian` varchar(50) DEFAULT NULL,
  `tijiaoshi` varchar(50) DEFAULT NULL,
  `stuId` int(11) DEFAULT NULL,
  `zuoyetId` int(11) DEFAULT NULL,
  `fenshu` int(11) DEFAULT NULL,
  `huifu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table t_zuoyes
#

LOCK TABLES `t_zuoyes` WRITE;
/*!40000 ALTER TABLE `t_zuoyes` DISABLE KEYS */;
INSERT INTO `t_zuoyes` VALUES (1,'测试提交作业','/upload/1551983488621.txt','2019-05-06',10,1,100,'211212');
INSERT INTO `t_zuoyes` VALUES (2,'121212','/upload/1552247584560.txt','2019-05-06',12,2,100,'21212');
/*!40000 ALTER TABLE `t_zuoyes` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table t_zuoyet
#

DROP TABLE IF EXISTS `t_zuoyet`;
CREATE TABLE `t_zuoyet` (
  `id` int(11) NOT NULL,
  `mingcheng` varchar(50) DEFAULT NULL,
  `fujian` varchar(50) DEFAULT NULL,
  `beizhu` varchar(255) DEFAULT NULL,
  `fabushi` varchar(50) DEFAULT NULL,
  `tea_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table t_zuoyet
#

LOCK TABLES `t_zuoyet` WRITE;
/*!40000 ALTER TABLE `t_zuoyet` DISABLE KEYS */;
INSERT INTO `t_zuoyet` VALUES (1,'测试作业','/upload/1551983381992.txt','111','2019-05-06',1);
INSERT INTO `t_zuoyet` VALUES (2,'333333333','/upload/1552247527260.txt','33','2019-05-06',1);
/*!40000 ALTER TABLE `t_zuoyet` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
