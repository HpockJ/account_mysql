/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.0.23 : Database - 农庄sql
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`农庄sql` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `农庄sql`;

/*Table structure for table `account_information` */

DROP TABLE IF EXISTS `account_information`;

CREATE TABLE `account_information` (
  `account_id` int NOT NULL AUTO_INCREMENT COMMENT '账户编码',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `sex` varchar(2) NOT NULL COMMENT '性别',
  `identitycard` varchar(50) NOT NULL COMMENT '身份证号',
  `brith` date NOT NULL COMMENT '生日',
  `address` varchar(255) NOT NULL COMMENT '家庭地址',
  `education_background` varchar(4) NOT NULL COMMENT '学历',
  `income` varchar(50) NOT NULL COMMENT '收入',
  `economic_pressures` varchar(5) NOT NULL COMMENT '经济压力',
  `health` varchar(1) NOT NULL COMMENT '是否健康',
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `identitycard` (`identitycard`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `account_information` */

-- 测试数据：
insert  into `account_information`(`account_id`,`name`,`sex`,`identitycard`,`brith`,`address`,`education_background`,`income`,`economic_pressures`,`health`) values 
(1,'zjj','男','100000000000000000','2001-06-01','上海','111','11111','大','是'),
(3,'wzs','男','100000000000000001','2001-06-01','上海','111','11111','大','是');

/*Table structure for table `activity` */

DROP TABLE IF EXISTS `activity`;

CREATE TABLE `activity` (
  `activity_id` int NOT NULL AUTO_INCREMENT COMMENT '活动编码',
  `activity_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动名称',
  `start_time` datetime NOT NULL COMMENT '开始时间',
  `end_time` datetime NOT NULL COMMENT '结束时间',
  `place` varchar(50) NOT NULL COMMENT '地点',
  `jo_number` int NOT NULL COMMENT '参加人数',
  `deadline` datetime NOT NULL COMMENT '截至报名时间',
  `integral` int NOT NULL COMMENT '获取积分',
  `activity_describe` text NOT NULL COMMENT '活动描述',
  PRIMARY KEY (`activity_id`),
  KEY `integral` (`integral`),
  KEY `activity_name` (`activity_name`),
  KEY `jo_number` (`jo_number`),
  FULLTEXT KEY `activity_describe` (`activity_describe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `activity` */

/*Table structure for table `exchange` */

DROP TABLE IF EXISTS `exchange`;

CREATE TABLE `exchange` (
  `exchange_on` int NOT NULL AUTO_INCREMENT COMMENT '兑换编号',
  `exchange_name` varchar(50) NOT NULL COMMENT '兑换名称',
  `integral` int NOT NULL COMMENT '需要积分',
  PRIMARY KEY (`exchange_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `exchange` */

/*Table structure for table `general_account` */

DROP TABLE IF EXISTS `general_account`;

CREATE TABLE `general_account` (
  `account_id` int NOT NULL AUTO_INCREMENT COMMENT '账户编码',
  `account_name` varchar(20) NOT NULL COMMENT '账户名',
  `account_phone` varchar(50) NOT NULL COMMENT '账户电话',
  `account_email` varchar(50) NOT NULL COMMENT '账户邮箱',
  `account_passworld` varchar(255) NOT NULL COMMENT '账户密码',
  `activie_name` varchar(50) NOT NULL COMMENT '活动名称',
  `integral` int NOT NULL COMMENT '获取积分',
  `rule` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '规则',
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `account_email` (`account_email`),
  UNIQUE KEY `account_phone` (`account_phone`),
  UNIQUE KEY `account_name` (`account_name`),
  FULLTEXT KEY `rule` (`rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `general_account` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
