/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.40-log : Database - ssm_crud
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm_crud` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm_crud`;

/*Table structure for table `tbl_dept` */

DROP TABLE IF EXISTS `tbl_dept`;

CREATE TABLE `tbl_dept` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_dept` */

insert  into `tbl_dept`(`dept_id`,`dept_name`) values (1,'开发部'),(2,'财务部'),(3,'商务部'),(4,'测试部'),(5,'研发部');

/*Table structure for table `tbl_emp` */

DROP TABLE IF EXISTS `tbl_emp`;

CREATE TABLE `tbl_emp` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(255) NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `fk_emp_dept` (`d_id`),
  CONSTRAINT `fk_emp_dept` FOREIGN KEY (`d_id`) REFERENCES `tbl_dept` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_emp` */

insert  into `tbl_emp`(`emp_id`,`emp_name`,`gender`,`email`,`d_id`) values (1,'yb12345','M','1406529816@qq.com',2),(2,'yb1234444','M','1406529816@qq.com',2),(3,'eeee46666','M','14456777@qq.com',3),(4,'yb122222222','F','1111111@q.com',1),(5,'hhy12142556','F','1254768@qq.cm',2),(6,'DGHKGH1314','F','1111111111@qq.com',3),(7,'ybhhy111','F','1111111111111@qq.com',1),(8,'ybhh111111111','F','1111111111111@qq.com',3),(9,'111111','F','1111111@q.com',1),(10,'111111111111','F','1111111@q.com',1),(11,'111111111','F','1111111@q.com',2),(12,'aaaaaaa11111','F','1111111@q.com',1),(13,'1111111111111','F','1111111@q.com',2),(14,'355677777','F','111112222@qq.com',4),(15,'44444444','F','3333333@qq.com',4),(16,'5555555','F','22325@qq.com',4),(17,'6666666','F','42356666@qq.com',5),(18,'7777777',NULL,'222222@qq.com',5),(19,'zzdddd','F','23333@qq.com',1),(20,'zhangsan','F','33333@qq.com',4),(21,'46678899','F','113333@qq.com',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
