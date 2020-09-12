-- MySQL dump 10.13  Distrib 5.6.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: spring-security-oauth2
-- ------------------------------------------------------
-- Server version	5.6.29-log

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
-- Table structure for table `clientdetails`
--

DROP TABLE IF EXISTS `clientdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientdetails` (
  `appId` varchar(128) NOT NULL,
  `resourceIds` varchar(256) DEFAULT NULL,
  `appSecret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `grantTypes` varchar(256) DEFAULT NULL,
  `redirectUrl` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additionalInformation` varchar(4096) DEFAULT NULL,
  `autoApproveScopes` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`appId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientdetails`
--

LOCK TABLES `clientdetails` WRITE;
/*!40000 ALTER TABLE `clientdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_token`
--

DROP TABLE IF EXISTS `oauth_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(128) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  `authentication` blob,
  `refresh_token` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_token`
--

LOCK TABLES `oauth_access_token` WRITE;
/*!40000 ALTER TABLE `oauth_access_token` DISABLE KEYS */;
INSERT INTO `oauth_access_token` VALUES ('b73b74c817df0f2a85c9efdb8cffdf78','��\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken��6$��\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6�Z���\0\0xpsr\0java.util.Datehj�KYt\0\0xpw\0\0t��xpsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0appxt\0bearert\0$3481b9f8-02d4-4f2a-8506-c9a46316a6ec','8502edc3f4c61f1000b1932e6a3756f1','admin','client','��\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0rolet\0Ljava/lang/String;xpt\0Systemsq\0~\0\rt\0\rSystemContentsq\0~\0\rt\0SystemContentDeletesq\0~\0\rt\0SystemContentInsertsq\0~\0\rt\0SystemContentUpdatesq\0~\0\rt\0SystemContentViewsq\0~\0\rt\0\nSystemUsersq\0~\0\rt\0SystemUserDeletesq\0~\0\rt\0SystemUserInsertsq\0~\0\rt\0SystemUserUpdatesq\0~\0\rt\0SystemUserViewxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0(xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0&L\0scopeq\0~\0(xpt\0clientsr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0&xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0codet\06Lzbn2t\0\ngrant_typet\0authorization_codet\0	client_idq\0~\0+xsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0appxsq\0~\0:w\0\0\0?@\0\0\0\0\0\0xsq\0~\0.?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0https://www.funtl.com/psq\0~\0:w\0\0\0?@\0\0\0\0\0\0xsq\0~\0:w\0\0\0?@\0\0\0\0\0q\0~\01xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0#xq\0~\0Esr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 900B3171FE50CD6F47EC3BE2E540A061psr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0(L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\07sr\0java.util.TreeSetݘP���[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0\0\0xpw\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0#xpt\0admin',NULL);
/*!40000 ALTER TABLE `oauth_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_approvals`
--

DROP TABLE IF EXISTS `oauth_approvals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_approvals` (
  `userId` varchar(256) DEFAULT NULL,
  `clientId` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `expiresAt` timestamp NULL DEFAULT NULL,
  `lastModifiedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_approvals`
--

LOCK TABLES `oauth_approvals` WRITE;
/*!40000 ALTER TABLE `oauth_approvals` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_approvals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_details`
--

DROP TABLE IF EXISTS `oauth_client_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(128) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_details`
--

LOCK TABLES `oauth_client_details` WRITE;
/*!40000 ALTER TABLE `oauth_client_details` DISABLE KEYS */;
INSERT INTO `oauth_client_details` VALUES ('client',NULL,'$2a$10$Nh3lOF54JCIJvObOb2yY.uXxeVvQ.fvkpiq7NiR6T.c43QcTpvZ0.','app','authorization_code','https://www.funtl.com/',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `oauth_client_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_token`
--

DROP TABLE IF EXISTS `oauth_client_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_client_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(128) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_token`
--

LOCK TABLES `oauth_client_token` WRITE;
/*!40000 ALTER TABLE `oauth_client_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_client_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_code`
--

DROP TABLE IF EXISTS `oauth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_code` (
  `code` varchar(256) DEFAULT NULL,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_code`
--

LOCK TABLES `oauth_code` WRITE;
/*!40000 ALTER TABLE `oauth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_token`
--

DROP TABLE IF EXISTS `oauth_refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_token`
--

LOCK TABLES `oauth_refresh_token` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_content`
--

DROP TABLE IF EXISTS `tb_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_content` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) NOT NULL COMMENT '内容类目ID',
  `title` varchar(200) DEFAULT NULL COMMENT '内容标题',
  `sub_title` varchar(100) DEFAULT NULL COMMENT '子标题',
  `title_desc` varchar(500) DEFAULT NULL COMMENT '标题描述',
  `url` varchar(500) DEFAULT NULL COMMENT '链接',
  `pic` varchar(300) DEFAULT NULL COMMENT '图片绝对路径',
  `pic2` varchar(300) DEFAULT NULL COMMENT '图片2',
  `content` text COMMENT '内容',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `updated` (`updated`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_content`
--

LOCK TABLES `tb_content` WRITE;
/*!40000 ALTER TABLE `tb_content` DISABLE KEYS */;
INSERT INTO `tb_content` VALUES (28,89,'标题','子标题','标题说明','http://www.jd.com',NULL,NULL,NULL,'2019-04-07 00:56:09','2019-04-07 00:56:11'),(29,89,'ad2','ad2','ad2','http://www.baidu.com',NULL,NULL,NULL,'2019-04-07 00:56:13','2019-04-07 00:56:15'),(30,89,'ad3','ad3','ad3','http://www.sina.com.cn',NULL,NULL,NULL,'2019-04-07 00:56:17','2019-04-07 00:56:19'),(31,89,'ad4','ad4','ad4','http://www.funtl.com',NULL,NULL,NULL,'2019-04-07 00:56:22','2019-04-07 00:56:25');
/*!40000 ALTER TABLE `tb_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_content_category`
--

DROP TABLE IF EXISTS `tb_content_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_content_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '类目ID',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父类目ID=0时，代表的是一级的类目',
  `name` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `status` int(1) DEFAULT '1' COMMENT '状态。可选值:1(正常),2(删除)',
  `sort_order` int(4) DEFAULT NULL COMMENT '排列序号，表示同级类目的展现次序，如数值相等则按名称次序排列。取值范围:大于零的整数',
  `is_parent` tinyint(1) DEFAULT '1' COMMENT '该类目是否为父类目，1为true，0为false',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  `updated` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`,`status`) USING BTREE,
  KEY `sort_order` (`sort_order`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COMMENT='内容分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_content_category`
--

LOCK TABLES `tb_content_category` WRITE;
/*!40000 ALTER TABLE `tb_content_category` DISABLE KEYS */;
INSERT INTO `tb_content_category` VALUES (30,0,'LeeShop',1,1,1,'2015-04-03 16:51:38','2015-04-03 16:51:40'),(86,30,'首页',1,1,1,'2015-06-07 15:36:07','2015-06-07 15:36:07'),(87,30,'列表页面',1,1,1,'2015-06-07 15:36:16','2015-06-07 15:36:16'),(88,30,'详细页面',1,1,1,'2015-06-07 15:36:27','2015-06-07 15:36:27'),(89,86,'大广告',1,1,0,'2015-06-07 15:36:38','2015-06-07 15:36:38'),(90,86,'小广告',1,1,0,'2015-06-07 15:36:45','2015-06-07 15:36:45'),(91,86,'商城快报',1,1,0,'2015-06-07 15:36:55','2015-06-07 15:36:55'),(92,87,'边栏广告',1,1,0,'2015-06-07 15:37:07','2015-06-07 15:37:07'),(93,87,'页头广告',1,1,0,'2015-06-07 15:37:17','2015-06-07 15:37:17'),(94,87,'页脚广告',1,1,0,'2015-06-07 15:37:31','2015-06-07 15:37:31'),(95,88,'边栏广告',1,1,0,'2015-06-07 15:37:56','2015-06-07 15:37:56'),(96,86,'中广告',1,1,1,'2015-07-25 18:58:52','2015-07-25 18:58:52'),(97,96,'中广告1',1,1,0,'2015-07-25 18:59:43','2015-07-25 18:59:43');
/*!40000 ALTER TABLE `tb_content_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_permission`
--

DROP TABLE IF EXISTS `tb_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父权限',
  `name` varchar(64) NOT NULL COMMENT '权限名称',
  `enname` varchar(64) NOT NULL COMMENT '权限英文名称',
  `url` varchar(255) NOT NULL COMMENT '授权路径',
  `description` varchar(200) DEFAULT NULL COMMENT '备注',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_permission`
--

LOCK TABLES `tb_permission` WRITE;
/*!40000 ALTER TABLE `tb_permission` DISABLE KEYS */;
INSERT INTO `tb_permission` VALUES (37,0,'系统管理','System','/',NULL,'2019-04-04 23:22:54','2019-04-04 23:22:56'),(38,37,'用户管理','SystemUser','/users/',NULL,'2019-04-04 23:25:31','2019-04-04 23:25:33'),(39,38,'查看用户','SystemUserView','/users/view/**',NULL,'2019-04-04 15:30:30','2019-04-04 15:30:43'),(40,38,'新增用户','SystemUserInsert','/users/insert/**',NULL,'2019-04-04 15:30:31','2019-04-04 15:30:44'),(41,38,'编辑用户','SystemUserUpdate','/users/update/**',NULL,'2019-04-04 15:30:32','2019-04-04 15:30:45'),(42,38,'删除用户','SystemUserDelete','/users/delete/**',NULL,'2019-04-04 15:30:48','2019-04-04 15:30:45'),(44,37,'内容管理','SystemContent','/contents/',NULL,'2019-04-06 18:23:58','2019-04-06 18:24:00'),(45,44,'查看内容','SystemContentView','/contents/view/**',NULL,'2019-04-06 23:49:39','2019-04-06 23:49:41'),(46,44,'新增内容','SystemContentInsert','/contents/insert/**',NULL,'2019-04-06 23:51:00','2019-04-06 23:51:02'),(47,44,'编辑内容','SystemContentUpdate','/contents/update/**',NULL,'2019-04-06 23:51:04','2019-04-06 23:51:06'),(48,44,'删除内容','SystemContentDelete','/contents/delete/**',NULL,'2019-04-06 23:51:08','2019-04-06 23:51:10');
/*!40000 ALTER TABLE `tb_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_role`
--

DROP TABLE IF EXISTS `tb_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父角色',
  `name` varchar(64) NOT NULL COMMENT '角色名称',
  `enname` varchar(64) NOT NULL COMMENT '角色英文名称',
  `description` varchar(200) DEFAULT NULL COMMENT '备注',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_role`
--

LOCK TABLES `tb_role` WRITE;
/*!40000 ALTER TABLE `tb_role` DISABLE KEYS */;
INSERT INTO `tb_role` VALUES (37,0,'超级管理员','admin',NULL,'2019-04-04 23:22:03','2019-04-04 23:22:05');
/*!40000 ALTER TABLE `tb_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_role_permission`
--

DROP TABLE IF EXISTS `tb_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL COMMENT '角色 ID',
  `permission_id` bigint(20) NOT NULL COMMENT '权限 ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='角色权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_role_permission`
--

LOCK TABLES `tb_role_permission` WRITE;
/*!40000 ALTER TABLE `tb_role_permission` DISABLE KEYS */;
INSERT INTO `tb_role_permission` VALUES (37,37,37),(38,37,38),(39,37,39),(40,37,40),(41,37,41),(42,37,42),(43,37,44),(44,37,45),(45,37,46),(46,37,47),(47,37,48);
/*!40000 ALTER TABLE `tb_role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(64) NOT NULL COMMENT '密码，加密存储',
  `phone` varchar(20) DEFAULT NULL COMMENT '注册手机号',
  `email` varchar(50) DEFAULT NULL COMMENT '注册邮箱',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `phone` (`phone`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (37,'admin','$2a$10$9ZhDOBp.sRKat4l14ygu/.LscxrMUcDAfeVOEPiYwbcRkoB09gCmi','15888888888','lee.lusifer@gmail.com','2019-04-04 23:21:27','2019-04-04 23:21:29');
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user_role`
--

DROP TABLE IF EXISTS `tb_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户 ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色 ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='用户角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_role`
--

LOCK TABLES `tb_user_role` WRITE;
/*!40000 ALTER TABLE `tb_user_role` DISABLE KEYS */;
INSERT INTO `tb_user_role` VALUES (37,37,37);
/*!40000 ALTER TABLE `tb_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-12 22:17:31
