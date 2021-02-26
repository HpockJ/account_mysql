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

-- 数据测试：
insert  into `account_information`(`account_id`,`name`,`sex`,`identitycard`,`brith`,`address`,`education_background`,`income`,`economic_pressures`,`health`) values 
(1,'zjj','男','100000000000000000','2001-06-01','上海','111','11111','大','是'),
(3,'wzs','男','100000000000000001','2001-06-01','上海','111','11111','大','是');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
