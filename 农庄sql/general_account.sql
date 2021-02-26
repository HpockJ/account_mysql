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
