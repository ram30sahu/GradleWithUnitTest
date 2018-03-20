/*
SQLyog Community v12.09 (64 bit)
MySQL - 5.5.24 : Database - cmi_dev
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cmi_dev` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `cmi_dev`;

/*Table structure for table `access_log` */

DROP TABLE IF EXISTS `access_log`;

CREATE TABLE `access_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_emailId` varchar(60) DEFAULT NULL,
  `ts` datetime NOT NULL,
  `sessionload` int(10) unsigned DEFAULT NULL,
  `activity` varchar(100) DEFAULT NULL,
  `activityCode` char(1) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  `sessionId` varchar(45) DEFAULT NULL,
  `uid` bigint(20) unsigned DEFAULT NULL,
  `remote_host` varchar(45) DEFAULT NULL,
  `activityParams` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `access_log` */

/*Table structure for table `event` */

DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
  `event_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `anchor_email` varchar(60) DEFAULT NULL,
  `confirm_msg` varchar(240) DEFAULT NULL,
  `created_by` varchar(60) NOT NULL,
  `created_dt` datetime NOT NULL,
  `delete_flag` varchar(1) DEFAULT NULL,
  `event_title` varchar(120) NOT NULL,
  `hdr_img` varchar(120) DEFAULT NULL,
  `input_text1label` varchar(60) DEFAULT NULL,
  `input_text1req` varchar(1) DEFAULT NULL,
  `input_text2label` varchar(60) DEFAULT NULL,
  `input_text2req` varchar(1) DEFAULT NULL,
  `input_text3label` varchar(60) DEFAULT NULL,
  `input_text3req` varchar(1) DEFAULT NULL,
  `input_textarea1label` varchar(60) DEFAULT NULL,
  `input_textarea1req` varchar(1) DEFAULT NULL,
  `last_updated_by` varchar(60) NOT NULL,
  `last_updated_dt` datetime NOT NULL,
  `message` varchar(240) DEFAULT NULL,
  `nom_end_dt` datetime NOT NULL,
  `nom_start_dt` datetime NOT NULL,
  `publish_end_dt` datetime NOT NULL,
  `publish_start_dt` datetime NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=latin1;

/*Data for the table `event` */

insert  into `event`(`event_id`,`anchor_email`,`confirm_msg`,`created_by`,`created_dt`,`delete_flag`,`event_title`,`hdr_img`,`input_text1label`,`input_text1req`,`input_text2label`,`input_text2req`,`input_text3label`,`input_text3req`,`input_textarea1label`,`input_textarea1req`,`last_updated_by`,`last_updated_dt`,`message`,`nom_end_dt`,`nom_start_dt`,`publish_end_dt`,`publish_start_dt`) values (1,'jimmy.shen01@infosys.com','confirm','jimmy','2018-01-12 16:21:23','N','Test Event',NULL,'Test7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'harshit.s05','2018-01-22 17:23:45','Message','2018-01-12 16:22:49','2018-01-12 16:22:51','2018-01-12 16:22:53','2018-01-12 16:22:54'),(2,'jimmy.shen01@infosys.com','confirm','jimmy','2018-01-18 13:58:40','N','Test2 Event',NULL,NULL,'N',NULL,'N',NULL,'N',NULL,'N','jimmy','2018-01-18 13:59:08','message','2018-01-31 13:59:21','2018-01-17 13:59:33','2018-01-31 13:59:39','2018-01-01 13:59:44'),(3,'harshit.s05@infosys.com','confirm','Harshit','2018-01-12 16:21:23','N','Another Test Event',NULL,'Test4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'harshit.s05','2018-01-22 14:14:07','Message','2018-03-18 16:22:49','2018-01-18 16:22:51','2019-03-20 16:22:53','2018-01-10 16:22:54'),(4,'harshit.s05@infosys.com','confirm','Harshit','2018-01-12 16:21:23','N','Another Test Event',NULL,'Test2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'harshit.s05','2018-01-22 14:07:02','Message','2018-01-12 16:22:49','2018-01-12 16:22:51','2018-01-12 16:22:53','2018-01-12 16:22:54'),(19,'anchorEmail',NULL,'tester','2018-01-26 11:16:50','N','published_1',NULL,NULL,'N',NULL,'N',NULL,'N',NULL,'N','tester','2018-01-26 11:16:50',NULL,'2018-01-26 11:16:50','2018-01-26 11:16:50','2018-02-26 11:16:50','2017-12-26 11:16:50'),(20,'anchorEmail',NULL,'tester','2018-01-26 11:16:50','N','published_1',NULL,NULL,'N',NULL,'N',NULL,'N',NULL,'N','tester','2018-01-26 11:16:50',NULL,'2018-01-26 11:16:50','2018-01-26 11:16:50','2018-03-26 11:16:50','2018-02-26 11:16:50'),(210,'anchorEmail',NULL,'tester','2018-01-30 13:44:32','N','published_1',NULL,NULL,'N',NULL,'N',NULL,'N',NULL,'N','ITLINFOSYS\\super.admin01','2018-01-30 13:44:32',NULL,'2019-01-30 13:44:32','2018-01-30 13:44:32','2019-02-28 13:44:32','2017-12-30 13:44:32');

/*Table structure for table `nomination` */

DROP TABLE IF EXISTS `nomination`;

CREATE TABLE `nomination` (
  `nom_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(60) NOT NULL,
  `created_dt` datetime NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `input_text1` varchar(240) DEFAULT NULL,
  `input_text2` varchar(240) DEFAULT NULL,
  `input_text3` varchar(240) DEFAULT NULL,
  `input_textarea1label` longtext,
  `last_updated_by` varchar(60) NOT NULL,
  `last_updated_dt` datetime NOT NULL,
  `status` varchar(1) DEFAULT NULL,
  `user_emailid` varchar(60) DEFAULT NULL,
  `user_mobile` varchar(20) DEFAULT NULL,
  `user_name` varchar(120) DEFAULT NULL,
  `event_event_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`nom_id`),
  KEY `FKdynn19ckwe6wj96hpx7o9abb` (`event_event_id`),
  CONSTRAINT `FKdynn19ckwe6wj96hpx7o9abb` FOREIGN KEY (`event_event_id`) REFERENCES `event` (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `nomination` */

insert  into `nomination`(`nom_id`,`created_by`,`created_dt`,`event_id`,`input_text1`,`input_text2`,`input_text3`,`input_textarea1label`,`last_updated_by`,`last_updated_dt`,`status`,`user_emailid`,`user_mobile`,`user_name`,`event_event_id`) values (1,'Jimmy','2018-01-12 16:31:58',1,NULL,NULL,NULL,NULL,'Jimmy','2018-01-12 16:32:18','S','jimmy.shen01','+86-1234567890123','Jimmy Shen',1),(3,'harshit.s05','2018-01-24 13:39:42',3,NULL,'ZACC3766',NULL,NULL,'harshit.s05','2018-01-24 14:38:13','S','harshit.s05@infosys.com',NULL,'Harshit Shrivastava',NULL),(5,'harshit.s05','2018-01-24 14:44:57',3,NULL,'ZACC3766',NULL,NULL,'harshit.s05','2018-01-24 14:49:22','S','harshit.s05@infosys.com',NULL,'Harshit Shrivastava',NULL),(6,'super.admin01','2018-01-30 13:51:42',3,NULL,NULL,NULL,NULL,'super.admin01','2018-01-30 14:19:46','S','super.admin01@infosys.com','8459475848','super.admin01',NULL);

/*Table structure for table `params` */

DROP TABLE IF EXISTS `params`;

CREATE TABLE `params` (
  `param_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  `start_dt` datetime DEFAULT NULL,
  `end_dt` datetime DEFAULT NULL,
  `param_group` varchar(45) DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`param_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `params` */

insert  into `params`(`param_id`,`name`,`value`,`start_dt`,`end_dt`,`param_group`,`deleted`,`comments`) values (1,'APP_USER_ACC','',NULL,NULL,'APP_USER','N','To store App UserId and Pwd for LDAP data pull, save pwd ENCODE(\'pwd\',\'key\')');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_emailid` varchar(255) NOT NULL,
  `access_code` varchar(1) NOT NULL,
  `active` varchar(1) NOT NULL,
  `created_by` varchar(60) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `last_updated_by` varchar(60) DEFAULT NULL,
  `last_updated_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`user_emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`user_emailid`,`access_code`,`active`,`created_by`,`created_dt`,`last_updated_by`,`last_updated_dt`) values ('event.anchor01','E','Y','jimmy','2018-01-24 13:50:12','jimmy','2018-01-24 13:50:18'),('harshit.s05','E','Y','harshit.s05','2018-01-29 14:12:44','harshit.s05','2018-01-29 14:44:54'),('jimmy.shen01','E','Y',NULL,NULL,NULL,NULL),('manibarath.k','S','y','manibarath.k','2018-01-24 13:50:35','manibarath.k','2018-01-24 13:50:37'),('super.admin01','S','Y','jimmy','2018-01-24 13:50:35','jimmy','2018-01-24 13:50:37'),('swati11','S','Y','swati11','2018-01-24 13:50:35','swati11','2018-01-24 13:50:35');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
