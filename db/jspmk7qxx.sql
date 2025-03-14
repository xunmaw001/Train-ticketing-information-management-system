-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmk7qxx
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615086016007 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-03-07 02:55:57',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-07 02:55:57',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-07 02:55:57',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-07 02:55:57',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-07 02:55:57',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-07 02:55:57',6,'宇宙银河系月球1号','月某','13823888886','是'),(1615086016006,'2021-03-07 03:00:15',1615085868465,'山东省威海市环翠区环翠楼街道幸福门广场','张三','16522233666','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'chepiaoxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615085903563 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615086050449 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (41,'2021-03-07 02:55:57',1,1,'提问1','回复1',1),(42,'2021-03-07 02:55:57',2,2,'提问2','回复2',2),(43,'2021-03-07 02:55:57',3,3,'提问3','回复3',3),(44,'2021-03-07 02:55:57',4,4,'提问4','回复4',4),(45,'2021-03-07 02:55:57',5,5,'提问5','回复5',5),(46,'2021-03-07 02:55:57',6,6,'提问6','回复6',6),(1615086050448,'2021-03-07 03:00:49',1615085868465,NULL,'‍有没有最新一趟回山东的票？\r\n','有的，刚刚已经发布了\r\n',0);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chepiaoxinxi`
--

DROP TABLE IF EXISTS `chepiaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chepiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chepiaobianhao` varchar(200) NOT NULL COMMENT '车票编号',
  `liechemingcheng` varchar(200) DEFAULT NULL COMMENT '列车名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `chufadi` varchar(200) DEFAULT NULL COMMENT '出发地',
  `mudedi` varchar(200) DEFAULT NULL COMMENT '目的地',
  `chufashijian` datetime DEFAULT NULL COMMENT '出发时间',
  `didashijian` datetime DEFAULT NULL COMMENT '抵达时间',
  `xiangguantupian` varchar(200) DEFAULT NULL COMMENT '相关图片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chepiaobianhao` (`chepiaobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615086148741 DEFAULT CHARSET=utf8 COMMENT='车票信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chepiaoxinxi`
--

LOCK TABLES `chepiaoxinxi` WRITE;
/*!40000 ALTER TABLE `chepiaoxinxi` DISABLE KEYS */;
INSERT INTO `chepiaoxinxi` VALUES (21,'2021-03-07 02:55:57','车票编号1','列车名称1','火车','出发地1','目的地1','2021-03-07 10:55:57','2021-03-07 10:55:57','http://localhost:8080/jspmk7qxx/upload/chepiaoxinxi_xiangguantupian1.jpg',1,1,'2021-03-07 10:55:57',1,99.9),(22,'2021-03-07 02:55:57','车票编号2','列车名称2','火车','出发地2','目的地2','2021-03-07 10:55:57','2021-03-07 10:55:57','http://localhost:8080/jspmk7qxx/upload/chepiaoxinxi_xiangguantupian2.jpg',3,3,'2021-03-07 11:00:23',5,99.9),(23,'2021-03-07 02:55:57','车票编号3','列车名称3','火车','出发地3','目的地3','2021-03-07 10:55:57','2021-03-07 10:55:57','http://localhost:8080/jspmk7qxx/upload/chepiaoxinxi_xiangguantupian3.jpg',3,3,'2021-03-07 10:58:44',4,99.9),(24,'2021-03-07 02:55:57','车票编号4','列车名称4','火车','出发地4','目的地4','2021-03-07 10:55:57','2021-03-07 10:55:57','http://localhost:8080/jspmk7qxx/upload/chepiaoxinxi_xiangguantupian4.jpg',4,4,'2021-03-07 10:55:57',4,99.9),(25,'2021-03-07 02:55:57','车票编号5','列车名称5','火车','出发地5','目的地5','2021-03-07 10:55:57','2021-03-07 10:55:57','http://localhost:8080/jspmk7qxx/upload/chepiaoxinxi_xiangguantupian5.jpg',5,5,'2021-03-07 10:55:57',5,99.9),(26,'2021-03-07 02:55:57','车票编号6','列车名称6','火车','出发地6','目的地6','2021-03-07 10:55:57','2021-03-07 10:55:57','http://localhost:8080/jspmk7qxx/upload/chepiaoxinxi_xiangguantupian6.jpg',6,6,'2021-03-07 10:55:57',6,99.9),(1615086148740,'2021-03-07 03:02:28','1615086095','和谐号','高铁','山东','北京','2021-01-01 09:00:34','2021-01-01 19:00:34','http://localhost:8080/jspmk7qxx/upload/1615086144112.jpg',0,0,NULL,0,120);
/*!40000 ALTER TABLE `chepiaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmk7qxx/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmk7qxx/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmk7qxx/upload/picture3.jpg'),(6,'homepage',NULL),(7,'轮播','http://localhost:8080/jspmk7qxx/upload/1615086259414.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusschepiaoxinxi`
--

DROP TABLE IF EXISTS `discusschepiaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusschepiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615085899839 DEFAULT CHARSET=utf8 COMMENT='车票信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusschepiaoxinxi`
--

LOCK TABLES `discusschepiaoxinxi` WRITE;
/*!40000 ALTER TABLE `discusschepiaoxinxi` DISABLE KEYS */;
INSERT INTO `discusschepiaoxinxi` VALUES (101,'2021-03-07 02:55:57',1,1,'评论内容1','回复内容1'),(102,'2021-03-07 02:55:57',2,2,'评论内容2','回复内容2'),(103,'2021-03-07 02:55:57',3,3,'评论内容3','回复内容3'),(104,'2021-03-07 02:55:57',4,4,'评论内容4','回复内容4'),(105,'2021-03-07 02:55:57',5,5,'评论内容5','回复内容5'),(106,'2021-03-07 02:55:57',6,6,'评论内容6','回复内容6'),(1615085899838,'2021-03-07 02:58:18',22,1615085868465,'火车评价',NULL);
/*!40000 ALTER TABLE `discusschepiaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussgoupiaozhinan`
--

DROP TABLE IF EXISTS `discussgoupiaozhinan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussgoupiaozhinan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615085918490 DEFAULT CHARSET=utf8 COMMENT='购票指南评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussgoupiaozhinan`
--

LOCK TABLES `discussgoupiaozhinan` WRITE;
/*!40000 ALTER TABLE `discussgoupiaozhinan` DISABLE KEYS */;
INSERT INTO `discussgoupiaozhinan` VALUES (111,'2021-03-07 02:55:57',1,1,'评论内容1','回复内容1'),(112,'2021-03-07 02:55:57',2,2,'评论内容2','回复内容2'),(113,'2021-03-07 02:55:57',3,3,'评论内容3','回复内容3'),(114,'2021-03-07 02:55:57',4,4,'评论内容4','回复内容4'),(115,'2021-03-07 02:55:57',5,5,'评论内容5','回复内容5'),(116,'2021-03-07 02:55:57',6,6,'评论内容6','回复内容6'),(1615085918489,'2021-03-07 02:58:37',33,1615085868465,'已了解',NULL);
/*!40000 ALTER TABLE `discussgoupiaozhinan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1615085952156 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (51,'2021-03-07 02:55:57','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(52,'2021-03-07 02:55:57','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(53,'2021-03-07 02:55:57','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(54,'2021-03-07 02:55:57','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(55,'2021-03-07 02:55:57','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(56,'2021-03-07 02:55:57','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1615085952155,'2021-03-07 02:59:12','有没用一起回家的小伙伴','<p>求组队</p>',0,1615085868465,'111','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goupiaozhinan`
--

DROP TABLE IF EXISTS `goupiaozhinan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goupiaozhinan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinxibianhao` varchar(200) NOT NULL COMMENT '信息编号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `zhinanneirong` longtext COMMENT '指南内容',
  `xiangguantupian` varchar(200) DEFAULT NULL COMMENT '相关图片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xinxibianhao` (`xinxibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615086202350 DEFAULT CHARSET=utf8 COMMENT='购票指南';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goupiaozhinan`
--

LOCK TABLES `goupiaozhinan` WRITE;
/*!40000 ALTER TABLE `goupiaozhinan` DISABLE KEYS */;
INSERT INTO `goupiaozhinan` VALUES (31,'2021-03-07 02:55:57','信息编号1','标题1','指南内容1','http://localhost:8080/jspmk7qxx/upload/goupiaozhinan_xiangguantupian1.jpg',1,1),(32,'2021-03-07 02:55:57','信息编号2','标题2','指南内容2','http://localhost:8080/jspmk7qxx/upload/goupiaozhinan_xiangguantupian2.jpg',2,2),(33,'2021-03-07 02:55:57','信息编号3','标题3','指南内容3','http://localhost:8080/jspmk7qxx/upload/goupiaozhinan_xiangguantupian3.jpg',4,4),(34,'2021-03-07 02:55:57','信息编号4','标题4','指南内容4','http://localhost:8080/jspmk7qxx/upload/goupiaozhinan_xiangguantupian4.jpg',4,4),(35,'2021-03-07 02:55:57','信息编号5','标题5','指南内容5','http://localhost:8080/jspmk7qxx/upload/goupiaozhinan_xiangguantupian5.jpg',5,5),(36,'2021-03-07 02:55:57','信息编号6','标题6','指南内容6','http://localhost:8080/jspmk7qxx/upload/goupiaozhinan_xiangguantupian6.jpg',6,6),(1615086202349,'2021-03-07 03:03:21','1615086158','关于购买北京的高铁指南','用户可时刻关注车票信息\r\n','http://localhost:8080/jspmk7qxx/upload/1615086184286.jpg',0,0);
/*!40000 ALTER TABLE `goupiaozhinan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'chepiaoxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1615086023806 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1615086023805,'2021-03-07 03:00:23','2021371102450051891','chepiaoxinxi',1615085868465,22,'列车名称2','http://localhost:8080/jspmk7qxx/upload/chepiaoxinxi_xiangguantupian2.jpg',1,99.9,99.9,99.9,99.9,1,'已发货','山东省威海市环翠区环翠楼街道幸福门广场');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615085925928 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1615085925927,'2021-03-07 02:58:45',1615085868465,23,'chepiaoxinxi','列车名称3','http://localhost:8080/jspmk7qxx/upload/chepiaoxinxi_xiangguantupian3.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1615085868465,'111','yonghu','用户','b5g3gwgc7la0gybcog5hl1hf9sptp9uk','2021-03-07 02:57:54','2021-03-07 04:05:08'),(2,1,'abo','users','管理员','ijsnog2cpukcdyb25cfc9so91wb50zhw','2021-03-07 03:01:19','2021-03-07 04:01:20');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-07 02:55:58');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gerenzhanghao` varchar(200) NOT NULL COMMENT '个人账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shenfenzhenghaoma` varchar(200) DEFAULT NULL COMMENT '身份证号码',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gerenzhanghao` (`gerenzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615085868466 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-07 02:55:57','用户1','123456','姓名1','男','440300199101010001','13823888881','http://localhost:8080/jspmk7qxx/upload/yonghu_xiangpian1.jpg',100),(12,'2021-03-07 02:55:57','用户2','123456','姓名2','男','440300199202020002','13823888882','http://localhost:8080/jspmk7qxx/upload/yonghu_xiangpian2.jpg',100),(13,'2021-03-07 02:55:57','用户3','123456','姓名3','男','440300199303030003','13823888883','http://localhost:8080/jspmk7qxx/upload/yonghu_xiangpian3.jpg',100),(14,'2021-03-07 02:55:57','用户4','123456','姓名4','男','440300199404040004','13823888884','http://localhost:8080/jspmk7qxx/upload/yonghu_xiangpian4.jpg',100),(15,'2021-03-07 02:55:57','用户5','123456','姓名5','男','440300199505050005','13823888885','http://localhost:8080/jspmk7qxx/upload/yonghu_xiangpian5.jpg',100),(16,'2021-03-07 02:55:57','用户6','123456','姓名6','男','440300199606060006','13823888886','http://localhost:8080/jspmk7qxx/upload/yonghu_xiangpian6.jpg',100),(1615085868465,'2021-03-07 02:57:48','111','111','张三','男','441233366655556666','16555666999','http://localhost:8080/jspmk7qxx/upload/1615085971445.png',400.1);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-07 14:52:05
