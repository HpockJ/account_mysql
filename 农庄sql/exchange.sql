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

/*Table structure for table `exchange` */

DROP TABLE IF EXISTS `exchange`;

CREATE TABLE `exchange` (
  `exchange_on` int NOT NULL AUTO_INCREMENT COMMENT '兑换编号',
  `exchange_name` varchar(50) NOT NULL COMMENT '兑换名称',
  `integral` int NOT NULL COMMENT '需要积分',
  PRIMARY KEY (`exchange_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `exchange` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
