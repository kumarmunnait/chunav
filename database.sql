/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.7.28 : Database - mybase
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mybase` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `mybase`;

/*Table structure for table `audio_library` */

DROP TABLE IF EXISTS `audio_library`;

CREATE TABLE `audio_library` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `file_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_path` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_properties` varchar(20) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `group_name` varchar(100) DEFAULT NULL,
  `voice_id` text,
  `voice_status` tinyint(4) DEFAULT '0',
  `submitfrom` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `audio_library` */

/*Table structure for table `credit_history` */

DROP TABLE IF EXISTS `credit_history`;

CREATE TABLE `credit_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `add_detect` varchar(20) DEFAULT NULL,
  `remarks` text,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` text CHARACTER SET utf8,
  PRIMARY KEY (`id`),
  KEY `credit_idx` (`user_id`,`parent_id`,`amount`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `credit_history` */

insert  into `credit_history`(`id`,`user_id`,`parent_id`,`amount`,`add_detect`,`remarks`,`created_date`,`ip`) values (1,66,1,10000,'added','','2019-01-09 09:53:48','::1'),(2,356,2,100,'added','','2020-01-14 17:58:19','61.247.227.83'),(3,356,2,100,'added','testing','2020-01-14 17:58:52','61.247.227.83'),(4,356,2,100,'added','','2020-01-14 18:00:12','61.247.227.83'),(5,356,2,100,'added','','2020-01-14 18:00:36','61.247.227.83'),(6,356,2,100,'added','','2020-01-14 18:00:53','61.247.227.83'),(7,356,2,100,'added','','2020-01-14 18:02:21','61.247.227.83'),(8,356,2,100,'added','','2020-01-14 18:03:13','61.247.227.83'),(9,15,2,100,'added','testing','2020-01-14 18:15:10','61.247.227.83'),(10,72,2,100,'added','','2020-01-14 18:15:34','61.247.227.83'),(11,15,2,100,'added','','2020-01-14 18:15:54','61.247.227.83'),(12,15,2,100,'added','','2020-01-14 18:18:39','61.247.227.83'),(13,15,2,100,'added','','2020-01-14 18:18:54','61.247.227.83'),(14,15,2,100,'added','','2020-01-14 18:19:14','61.247.227.83'),(15,15,2,100,'added','cv','2020-01-14 18:19:34','61.247.227.83');

/*Table structure for table `form_uid1_20200108140741` */

DROP TABLE IF EXISTS `form_uid1_20200108140741`;

CREATE TABLE `form_uid1_20200108140741` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Namelast` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `form_uid1_20200108140741` */

insert  into `form_uid1_20200108140741`(`id`,`Namelast`,`created_date`,`updated_date`) values (1,'as','2020-01-09 12:45:24','2020-01-09 12:45:24');

/*Table structure for table `form_uid1_20200108140818` */

DROP TABLE IF EXISTS `form_uid1_20200108140818`;

CREATE TABLE `form_uid1_20200108140818` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `NameLast` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `form_uid1_20200108140818` */

/*Table structure for table `form_uid1_20200109064947` */

DROP TABLE IF EXISTS `form_uid1_20200109064947`;

CREATE TABLE `form_uid1_20200109064947` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `form_uid1_20200109064947` */

/*Table structure for table `form_uid1_20200109065013` */

DROP TABLE IF EXISTS `form_uid1_20200109065013`;

CREATE TABLE `form_uid1_20200109065013` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `form_uid1_20200109065013` */

/*Table structure for table `form_uid1_20200109065045` */

DROP TABLE IF EXISTS `form_uid1_20200109065045`;

CREATE TABLE `form_uid1_20200109065045` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `form_uid1_20200109065045` */

/*Table structure for table `form_uid2_20200110041839` */

DROP TABLE IF EXISTS `form_uid2_20200110041839`;

CREATE TABLE `form_uid2_20200110041839` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `form_uid2_20200110041839` */

/*Table structure for table `form_uid2_20200110042045` */

DROP TABLE IF EXISTS `form_uid2_20200110042045`;

CREATE TABLE `form_uid2_20200110042045` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `form_uid2_20200110042045` */

insert  into `form_uid2_20200110042045`(`id`,`Name`,`Email`,`Phone`,`Address`,`created_date`,`updated_date`) values (1,'ashish','sharmaji@datagenit.com','9716568142','H NO 56\r\nJ J COLONEY','2020-01-10 12:20:57','2020-01-10 12:20:57'),(2,'test kumar','sharmaji@datagenit.com','9716568142','H NO 56\r\nJ J COLONEY','2020-01-10 12:27:18','2020-01-10 12:27:18');

/*Table structure for table `form_uid2_20200110042659` */

DROP TABLE IF EXISTS `form_uid2_20200110042659`;

CREATE TABLE `form_uid2_20200110042659` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `form_uid2_20200110042659` */

/*Table structure for table `form_uid2_20200114114645` */

DROP TABLE IF EXISTS `form_uid2_20200114114645`;

CREATE TABLE `form_uid2_20200114114645` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `form_uid2_20200114114645` */

/*Table structure for table `form_uid3_20200113183819` */

DROP TABLE IF EXISTS `form_uid3_20200113183819`;

CREATE TABLE `form_uid3_20200113183819` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `SelectCity` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `form_uid3_20200113183819` */

insert  into `form_uid3_20200113183819`(`id`,`Name`,`Phone`,`Email`,`SelectCity`,`created_date`,`updated_date`) values (1,'thesheroshayari','9988758128','Mk@datagenit.com','Option[1]','2020-01-13 13:09:42','2020-01-13 13:09:42');

/*Table structure for table `sender_id` */

DROP TABLE IF EXISTS `sender_id`;

CREATE TABLE `sender_id` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `sender_id_val` varchar(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '2',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `sender_id` */

insert  into `sender_id`(`id`,`user_id`,`sender_id_val`,`status`,`created_date`,`update_date`) values (1,66,'DATAGN',1,'2019-01-09 05:38:30','2019-01-09 11:08:30'),(2,2,'DGENIT',1,'2019-04-24 22:59:26','2019-04-25 16:29:26'),(3,2,'TXTSMS',1,'2020-01-13 04:46:54','2020-01-13 12:46:54'),(4,2,'TXTSMS',1,'2020-01-13 04:47:26','2020-01-13 12:47:26'),(5,2,'TXTSMS',1,'2020-01-13 04:59:14','2020-01-13 12:59:14'),(6,2,'TXTSMS',1,'2020-01-13 06:30:44','2020-01-13 13:00:44');

/*Table structure for table `sms_campaign` */

DROP TABLE IF EXISTS `sms_campaign`;

CREATE TABLE `sms_campaign` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(70) NOT NULL,
  `campaign_name` varchar(100) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `text_message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `msg_count` tinyint(4) NOT NULL DEFAULT '1',
  `contact_count` int(11) NOT NULL DEFAULT '0',
  `deliver_count` int(11) NOT NULL DEFAULT '0',
  `dnd_count` int(11) NOT NULL DEFAULT '0',
  `failed_count` int(11) NOT NULL DEFAULT '0',
  `imgclickcount` int(11) NOT NULL DEFAULT '0',
  `urlclickcount` int(11) NOT NULL DEFAULT '0',
  `msg_cost` decimal(10,6) DEFAULT NULL,
  `image_shorturl` varchar(40) DEFAULT NULL,
  `image_mainurl` text,
  `url_shorturl` varchar(50) DEFAULT NULL,
  `url_mainurl` text,
  `country_code` varchar(10) NOT NULL,
  `phonebook_file` varchar(100) NOT NULL,
  `phonebook_file_path` varchar(100) NOT NULL,
  `camp_start_datetime` datetime NOT NULL,
  `sender_id` varchar(15) NOT NULL,
  `unicode` tinyint(4) DEFAULT '0',
  `selected_language` varchar(10) DEFAULT NULL,
  `allow_long` tinyint(4) DEFAULT '0',
  `remove_duplicate` tinyint(4) DEFAULT '0',
  `flash_message` tinyint(4) DEFAULT '0',
  `schedule_msg` tinyint(4) DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sender_ip_address` text,
  `submit_from` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `minute` varchar(20) DEFAULT NULL,
  `start_hour` varchar(20) DEFAULT NULL,
  `end_hour` varchar(20) DEFAULT NULL,
  `valid_days` varchar(100) DEFAULT NULL,
  `reply_senderid` varchar(15) DEFAULT NULL,
  `reply_massage` text,
  `engage` tinyint(4) DEFAULT '0',
  `mobile_col` varchar(10) DEFAULT NULL,
  `block_cr` decimal(20,6) DEFAULT '0.000000',
  `refund` decimal(20,6) DEFAULT '0.000000',
  `refund_status` tinyint(4) NOT NULL DEFAULT '0',
  `message_type` int(11) NOT NULL,
  `archive_status` tinyint(4) NOT NULL DEFAULT '0',
  `retry` tinyint(4) NOT NULL DEFAULT '0',
  `retry_status` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `compose_idx` (`user_id`,`username`,`message_type`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sms_campaign` */

/*Table structure for table `sms_queue` */

DROP TABLE IF EXISTS `sms_queue`;

CREATE TABLE `sms_queue` (
  `campaign_id` int(11) NOT NULL,
  `campaign_name` varchar(50) NOT NULL,
  `campaign_templateid` int(11) NOT NULL,
  `campaign_message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `sender_id` varchar(15) NOT NULL,
  `unicode` int(11) NOT NULL DEFAULT '0',
  `flash_message` int(11) NOT NULL DEFAULT '0',
  `phone_number` varchar(15) NOT NULL,
  `country_code` varchar(50) DEFAULT NULL,
  `msg_count` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('schedule','inqueue') NOT NULL,
  KEY `queue_idx` (`campaign_id`,`username`,`user_id`,`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sms_queue` */

/*Table structure for table `sms_reports` */

DROP TABLE IF EXISTS `sms_reports`;

CREATE TABLE `sms_reports` (
  `id` bigint(20) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `campaign_name` varchar(50) NOT NULL,
  `campaign_templateid` int(11) NOT NULL,
  `campaign_message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image_key` varchar(10) DEFAULT NULL,
  `image_clickcount` tinyint(4) DEFAULT '0',
  `url_key` varchar(10) DEFAULT NULL,
  `url_clickcount` tinyint(4) DEFAULT '0',
  `image_ip` text,
  `image_city` varchar(200) DEFAULT NULL,
  `image_device` text,
  `image_visit_time` datetime DEFAULT NULL,
  `url_ip` text,
  `url_city` varchar(200) DEFAULT NULL,
  `url_device` text,
  `url_visit_time` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `sender_id` varchar(15) NOT NULL,
  `unicode` int(11) NOT NULL DEFAULT '0',
  `flash_message` int(11) NOT NULL DEFAULT '0',
  `phone_number` varchar(15) NOT NULL,
  `starttime` datetime NOT NULL,
  `endtime` datetime DEFAULT NULL,
  `msg_count` int(11) NOT NULL,
  `route` varchar(50) DEFAULT NULL,
  `api_log_id` text,
  `updated_date` timestamp NULL DEFAULT NULL,
  `sent_time` timestamp NULL DEFAULT NULL,
  `deliver_time` timestamp NULL DEFAULT NULL,
  `sender_ip_address` text,
  `country_code` varchar(50) DEFAULT NULL,
  `submit_from` varchar(50) DEFAULT NULL,
  `msg_cost` decimal(10,6) DEFAULT NULL,
  `retry` tinyint(4) NOT NULL DEFAULT '0',
  `status` varchar(50) DEFAULT NULL,
  `api_status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `report_idx` (`campaign_id`,`user_id`,`phone_number`,`username`,`sender_id`,`msg_count`,`updated_date`,`deliver_time`,`status`(1),`country_code`),
  KEY `url_key` (`url_key`),
  KEY `image_key` (`image_key`),
  KEY `url_clickcount` (`url_clickcount`),
  KEY `image_clickcount` (`image_clickcount`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sms_reports` */

/*Table structure for table `tbl_forms` */

DROP TABLE IF EXISTS `tbl_forms`;

CREATE TABLE `tbl_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `form_fields` text,
  `user_id` text NOT NULL,
  `form_html` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `form_table_name` varchar(100) DEFAULT NULL,
  `form_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `edited_by` smallint(6) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_forms` */

insert  into `tbl_forms`(`id`,`name`,`form_fields`,`user_id`,`form_html`,`form_table_name`,`form_url`,`edited_by`,`created_date`,`updated_date`,`status`) values (1,' Survey Form Title Name ','Namelast','1','\n\n                        <div class=\"form-group\"> <label contenteditable=\"true\" class=\"label-name\" for=\"exampleName\"> Name last&nbsp;&nbsp;</label> <span class=\"edit-section-delete\" id=\"Namelabeledit\">Delete</span> <input type=\"text\" name=\"Namelast\" class=\"form-control\" placeholder=\"Full Name\"></div> ','form_uid1_20200108140741','NA',NULL,'2020-01-08 22:07:41','2020-01-08 13:07:41',0),(2,' Survey Form Title Name ','FirstName,NameLast','1','\n\n                        <div class=\"form-group\"> <label contenteditable=\"true\" class=\"label-name\" for=\"exampleName\">First Name&nbsp; &nbsp;</label> <span class=\"edit-section-delete\" id=\"Namelabeledit\">Delete</span> <input type=\"text\" name=\"FirstName\" class=\"form-control\" placeholder=\"Full Name\"></div> <div class=\"form-group\"> <label contenteditable=\"true\" class=\"label-name\" for=\"exampleName\">&nbsp;Name Last&nbsp;&nbsp;</label> <span class=\"edit-section-delete\" id=\"Namelabeledit\">Delete</span> <input type=\"text\" name=\"NameLast\" class=\"form-control\" placeholder=\"Full Name\"></div> ','form_uid1_20200108140818','NA',NULL,'2020-01-08 22:08:18','2020-01-08 13:08:18',0),(3,' Survey Form Title Name ','','1','\n\n                        ','form_uid1_20200109064947','NA',NULL,'2020-01-09 14:49:47','2020-01-09 05:49:47',0),(4,' Survey Form Title Name ','','1','\n\n                        ','form_uid1_20200109065013','NA',NULL,'2020-01-09 14:50:13','2020-01-09 05:50:13',0),(5,' Survey Form Title Name ','','1','\n\n                        ','form_uid1_20200109065045','NA',NULL,'2020-01-09 14:50:45','2020-01-09 05:50:45',0),(6,' Survey Form Title Name ','','2','\n                        ','form_uid2_20200110041839','NA',NULL,'2020-01-10 04:18:39','2020-01-10 12:18:39',0),(7,'Sharmaji','Name,Email,Phone,Address','2','\n                        <div class=\"form-group\"> <label contenteditable=\"true\" class=\"label-name\" for=\"exampleName\"> Name  </label> <span class=\"edit-section-delete\" id=\"Namelabeledit\">Delete</span> <input type=\"text\" name=\"Name\" class=\"form-control\" placeholder=\"Full Name\"></div>   <div class=\"form-group\"><label contenteditable=\"true\" class=\"label-name\" for=\"exampleInputEmail1\">Email</label> <span class=\"edit-section-delete\" id=\"Namelabeledit\">Delete</span><input type=\"email\" class=\"form-control\" name=\"Email\" placeholder=\"Enter email\"></div><div class=\"form-group\"> <label contenteditable=\"true\" class=\"label-name\" for=\"exampleName\">Phone</label>  <span class=\"edit-section-delete\" id=\"Namelabeledit\">Delete</span><input type=\"number\" class=\"form-control\" name=\"Phone\" id=\"exampleName\" placeholder=\"Enter Your Phone No\"></div> <div class=\"form-group\"><label contenteditable=\"true\" class=\"label-name\" for=\"Address\"> Address </label> <span class=\"edit-section-delete\" id=\"Namelabeledit\">Delete</span> <textarea class=\"form-control\" id=\"Address\" name=\"Address\" placeholder=\"Enter Address\" rows=\"3\"></textarea></div>','form_uid2_20200110042045','NA',NULL,'2020-01-10 04:20:45','2020-01-10 12:20:45',0),(8,'Chunav Data','Name,Email,Phone','2','\n                        <div class=\"form-group\"> <label contenteditable=\"true\" class=\"label-name\" for=\"exampleName\"> Name  </label> <span class=\"edit-section-delete\" id=\"Namelabeledit\">Delete</span> <input type=\"text\" name=\"Name\" class=\"form-control\" placeholder=\"Full Name\"></div>   <div class=\"form-group\"><label contenteditable=\"true\" class=\"label-name\" for=\"exampleInputEmail1\">Email</label> <span class=\"edit-section-delete\" id=\"Namelabeledit\">Delete</span><input type=\"email\" class=\"form-control\" name=\"Email\" placeholder=\"Enter email\"></div><div class=\"form-group\"> <label contenteditable=\"true\" class=\"label-name\" for=\"exampleName\">Phone</label>  <span class=\"edit-section-delete\" id=\"Namelabeledit\">Delete</span><input type=\"number\" class=\"form-control\" name=\"Phone\" id=\"exampleName\" placeholder=\"Enter Your Phone No\"></div> ','form_uid2_20200110042659','NA',NULL,'2020-01-10 04:26:59','2020-01-10 12:26:59',0),(9,' Survey Form Title Name ','Name,Phone,Email,SelectCity','3','\n                        <div class=\"form-group\"> <label contenteditable=\"true\" class=\"label-name\" for=\"exampleName\"> Name  </label> <span class=\"edit-section-delete\" id=\"Namelabeledit\">Delete</span> <input type=\"text\" name=\"Name\" class=\"form-control\" placeholder=\"Full Name\"></div> <div class=\"form-group\"> <label contenteditable=\"true\" class=\"label-name\" for=\"exampleName\">Phone</label>  <span class=\"edit-section-delete\" id=\"Namelabeledit\">Delete</span><input type=\"number\" class=\"form-control\" name=\"Phone\" id=\"exampleName\" placeholder=\"Enter Your Phone No\"></div>   <div class=\"form-group\"><label contenteditable=\"true\" class=\"label-name\" for=\"exampleInputEmail1\">Email</label> <span class=\"edit-section-delete\" id=\"Namelabeledit\">Delete</span><input type=\"email\" class=\"form-control\" name=\"Email\" placeholder=\"Enter email\"></div> <div class=\"form-group\"><label contenteditable=\"true\" class=\"label-name\" for=\"exampleSelect1\">Select City</label><span class=\"edit-section-delete\" id=\"Namelabeledit\">Delete</span><select id=\"selectoption\" class=\"form-control add_select_option\" name=\"SelectCity\"><option class=\"option-class\" name=\"name[0]\" id=\"Option[0]\" value=\"Option0\">Option 0 </option><option class=\"option-class\" id=\"Option[1]\" value=\"Option[1]\">Option 1</option><option class=\"option-class\" id=\"Option[2]\" value=\"Desss\">Desss</option><option class=\"option-class\" id=\"Option[3]\" value=\"Option[3]\">Option 3</option><option class=\"option-class\" id=\"Option[4]\" value=\"Option[4]\">Option 4</option></select><div class=\"sub-option\"><input class=\"form-control select_option\" id=\"Option[0]\" name=\"SelectCity\" value=\"Option0\" type=\"text\"><button class=\"add_field_button\" name=\"SelectCity\">+</button></div><div class=\"input_fields_wrap\"><div class=\"sub-option\"><input placeholder=\"Option11\" type=\"text\" class=\"form-control select_option\" name=\"SelectCity\" value=\"Option[1]\" id=\"Option[1]\"><button class=\"remove_field\" name=\"SelectCity\">-</button></div><div class=\"sub-option\"><input placeholder=\"Option12\" type=\"text\" class=\"form-control select_option\" name=\"Option[2]\" value=\"Option[2]\" id=\"Option[2]\"><button class=\"remove_field\">-</button></div><div class=\"sub-option\"><input placeholder=\"Option13\" type=\"text\" class=\"form-control select_option\" name=\"Option[3]\" value=\"Option[3]\" id=\"Option[3]\"><button class=\"remove_field\">-</button></div><div class=\"sub-option\"><input placeholder=\"Option14\" type=\"text\" class=\"form-control select_option\" name=\"Option[4]\" value=\"Option[4]\" id=\"Option[4]\"><button class=\"remove_field\">-</button></div></div></div>','form_uid3_20200113183819','NA',NULL,'2020-01-13 18:38:19','2020-01-13 13:08:19',0),(10,' Survey Form Title Name ','','2','\n                        ','form_uid2_20200114114645','NA',NULL,'2020-01-14 11:46:45','2020-01-14 06:16:45',0);

/*Table structure for table `user_profile_group` */

DROP TABLE IF EXISTS `user_profile_group`;

CREATE TABLE `user_profile_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `user_profile_group` */

insert  into `user_profile_group`(`id`,`group_name`) values (1,'Admin'),(2,'Reseller'),(3,'Client / User'),(4,'Agents');

/*Table structure for table `userformsetting` */

DROP TABLE IF EXISTS `userformsetting`;

CREATE TABLE `userformsetting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `default_formid` int(11) NOT NULL,
  `edited_by` int(11) NOT NULL,
  `other_activeforms` varchar(200) NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userformsetting` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `authkey` varchar(20) DEFAULT NULL,
  `currency_credits` double(20,6) NOT NULL,
  `block_credit` double(20,6) DEFAULT NULL,
  `consume_credit` double(20,6) DEFAULT NULL,
  `currency` varchar(10) NOT NULL,
  `master` varchar(30) NOT NULL,
  `profile_group_id` tinyint(4) NOT NULL,
  `organization` varchar(50) DEFAULT NULL,
  `expired_on` date DEFAULT NULL,
  `sms_price` decimal(6,4) DEFAULT '0.0000',
  `voice_price` decimal(6,4) NOT NULL DEFAULT '0.0000',
  `isOtp` tinyint(4) DEFAULT '1',
  `otp` char(6) DEFAULT NULL,
  `affiliate_id` text,
  `mobile_verify` int(11) NOT NULL DEFAULT '0',
  `remark` text,
  `address` text,
  `login_for` tinyint(4) NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `smIdx` (`username`,`currency_credits`),
  KEY `usrPwd` (`username`,`password`)
) ENGINE=MyISAM AUTO_INCREMENT=357 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`email`,`mobile`,`name`,`authkey`,`currency_credits`,`block_credit`,`consume_credit`,`currency`,`master`,`profile_group_id`,`organization`,`expired_on`,`sms_price`,`voice_price`,`isOtp`,`otp`,`affiliate_id`,`mobile_verify`,`remark`,`address`,`login_for`,`created_date`,`updated_date`,`status`) values (1,'Admin','123@pass','suraj@datagenit.com','9716568142','suraj Admin',NULL,241667.450000,2.500000,0.000000,'EUR','1',1,'datagenit','2018-08-31',NULL,0.0000,0,'003791',NULL,0,NULL,NULL,1,'2018-08-08 20:01:05','2020-01-15 10:42:15',1),(2,'ashu','12345','shrma.ashish48@gmail.com','9716568142','ashish sharma','D!~2Jp39irR7l7',7891.900000,1048.200000,0.000000,'EUR','1',2,'Datagen Internet Services','2018-09-11',1.0000,0.0000,1,'1786',NULL,0,NULL,NULL,1,'2018-08-16 10:10:54','2020-01-15 10:42:02',1),(3,'test','12345','shrma.ashhish48@gmail.com','8448011802','test',NULL,999.520000,0.480000,0.000000,'EUR','1',2,'qweq','2018-09-29',0.0000,0.0000,1,NULL,NULL,0,NULL,NULL,1,'2018-09-22 07:40:42','2019-03-29 16:44:41',1),(10,'manish','pass@123','shrma.ashhish48@gmail.com','8448011802','Manish sharma',NULL,0.000000,0.000000,0.000000,'EUR','1',2,'asd','2018-09-29',NULL,0.0000,1,NULL,NULL,0,NULL,NULL,1,'2018-09-22 05:20:48','2019-04-04 17:52:18',1),(13,'raju','pass@123','shrma.ashhish48@gmail.com','8448011802','raju',NULL,0.000000,0.000000,NULL,'EUR','1',3,'asd','2018-09-28',NULL,0.0000,1,NULL,NULL,0,NULL,NULL,1,'2018-09-22 11:51:59','2019-04-04 17:52:18',1),(14,'anu','pass@123','shrma.ashhish48@gmail.com','8448011802','anu',NULL,99.600000,100.400000,NULL,'USD','1',2,'apollo','2018-09-29',1.0000,0.0000,1,NULL,NULL,0,NULL,NULL,1,'2018-09-24 06:17:56','2018-12-27 13:32:15',1),(15,'deepu','pass@123','shrma.ashhish48@gmail.com','8448011802','deepu',NULL,600.000000,0.000000,NULL,'EUR','2',3,'Datagen Internet Services','2018-09-29',1.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-09-26 06:13:18','2020-01-14 12:49:34',1),(17,'rites','pass@123','shrma.ashhish48@gmail.com','8448011802','rites',NULL,0.000000,0.000000,NULL,'EUR','1',2,'qweq','2018-09-29',NULL,0.0000,1,NULL,NULL,0,NULL,NULL,1,'2018-09-26 06:21:51','2019-04-04 17:52:18',1),(18,'rites','pass@123','shrma.ashhish48@gmail.com','8448011802','rites',NULL,0.000000,0.000000,NULL,'EUR','1',2,'qweq','2018-09-29',NULL,0.0000,1,NULL,NULL,0,NULL,NULL,1,'2018-09-26 06:21:51','2019-04-04 17:52:18',1),(19,'Orion','pass@123','rajneesh@datagenit.com','9873363218','Orion',NULL,0.000000,0.000000,NULL,'INR','1',3,'Orion','2019-11-09',NULL,0.0000,1,NULL,NULL,0,NULL,NULL,1,'2018-10-09 07:29:54','2019-04-04 17:52:18',1),(21,'ashok1','pass@123','sharmaji@datagenit.com','9716568142','ashok',NULL,0.000000,0.000000,NULL,'INR','1',3,'datagen','2018-10-27',NULL,0.0000,1,NULL,NULL,0,NULL,NULL,1,'2018-10-09 07:56:05','2019-04-04 17:52:18',1),(23,'pooja','pass@123','sharmaji@datagenit.com','9716568142','pooja',NULL,0.000000,0.000000,NULL,'EUR','1',3,'datagen','2018-10-24',NULL,0.0000,1,NULL,NULL,0,NULL,NULL,1,'2018-10-09 10:10:35','2019-04-04 17:52:18',1),(24,'DelhiHeights','pass@123','nitin.katyal007@gmail.com','9899959728','DelhiHeights',NULL,0.000000,0.000000,NULL,'INR','1',3,'DelhiHeights','2018-11-13',NULL,0.0000,1,NULL,NULL,0,NULL,NULL,1,'2018-10-13 07:28:26','2019-04-04 17:52:18',1),(25,'demo','pass@123','rajneesh@datagenit.com','7503013424','datagen',NULL,0.000000,0.000000,NULL,'INR','1',3,'datagen it','2019-09-30',NULL,0.0000,1,NULL,NULL,0,NULL,NULL,1,'2018-10-13 08:02:50','2019-04-04 17:52:18',1),(26,'1ashish','12345','shrma.ashhish48@gmail.com','9716568142','ashish','D!~26zAwujXccBa',826.360000,273.640000,NULL,'EUR','1',3,'datagen','2018-10-31',1.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-10-15 10:24:11','2019-04-02 13:18:00',1),(27,'pramod','welcome123','pramod@datagenit.com','9958891277','PRAMOD','D!~27CBrtr9nyoO',10533.740000,49121.460000,NULL,'INR','1',3,'DATAGEN','2018-12-31',1.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-10-24 09:53:26','2019-04-04 17:52:18',1),(28,'Sapphiretrans','bhawna','bhaskar@datagenit.com','9899158602','Bhaskar Jha',NULL,122344.850000,753868.700000,NULL,'INR','1',2,'Sapphire Trans','2020-12-31',1.0000,0.0000,1,NULL,NULL,0,NULL,NULL,1,'2018-10-26 11:28:43','2019-04-08 13:18:28',1),(29,'bskdcurrency','welcome123','sachindhir@live.com','9212296451','SACHIN DHIR',NULL,12533.650000,17466.350000,NULL,'INR','1',2,'BSKD','2020-12-31',1.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-10-31 08:14:12','2019-04-09 13:34:35',1),(30,'dashmesh','123456','sachindhirbulksmsindia@gmail.com','9212296451','dashmesh',NULL,0.000000,0.000000,NULL,'INR','29',3,'Dashmesh ','2019-10-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-10-31 09:21:46','2018-12-06 11:14:12',1),(31,'EELITE','123456','sachindhir@live.com','9212296451','EELITE',NULL,0.000000,0.000000,NULL,'INR','29',3,'','2019-07-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-11-01 08:40:59','2018-12-06 11:14:18',1),(32,'test5','123','shrma.ashhish48@gmail.com','8448011802','test5',NULL,10299.500000,0.500000,NULL,'EUR','2',3,'Datagen Internet Services','2018-11-30',1.0000,0.0000,1,NULL,NULL,0,NULL,NULL,1,'2018-11-15 11:40:54','2020-01-14 12:10:26',1),(33,'test4','12345','sharmaji@datagenit.com','9716568142','test5',NULL,0.000000,0.000000,NULL,'INR','1',3,'datagen','2018-11-30',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-11-16 06:03:48','2018-12-06 11:35:32',1),(34,'FRESCA','12345','anuragbulksms@gmail.com','9205446451','FRESCA',NULL,11260.900000,161.260000,NULL,'INR','29',3,'FRESCA ','2019-08-15',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-11-30 08:20:32','2019-02-07 13:24:08',1),(35,'nehaint','welcome123','nehasms04@gmail.com','8076043731','Neha Khera',NULL,11.000000,NULL,NULL,'INR','1',2,'Bharat Marketing','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-04 11:15:57','2018-12-04 16:49:19',1),(36,'CADSS','123456','anuragbulksms@gmail.com','9205446451','CADSS',NULL,1420.166000,2251.800000,NULL,'INR','29',3,'CADSS ','2019-08-30',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-04 12:06:40','2019-04-09 11:08:03',1),(37,'test2','12345','shrma.ashhish48@gmail.com','8448011802','test',NULL,0.000000,NULL,NULL,'EUR','2',3,'Datagen Internet Services','2018-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-05 09:22:52','2019-04-04 17:52:18',1),(38,'ritucurrency','taurus','ritu@datagenit.com','9560578134','Ritu Tomar','D!~38hi9pvUinpY',16904.380000,5956.520000,NULL,'INR','1',2,'Rtu Coordinator','2019-12-31',1.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-05 10:15:30','2019-04-09 15:35:40',1),(39,'smsdemo','123456','ritu@datagenit.com','9810704315','Ritu Tomar','D!~39tmZNMRgnVO',10.550000,9.450000,NULL,'INR','38',3,'DATAGEN','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-05 12:34:02','2019-04-09 15:35:40',1),(40,'shivamintl','welcome123','shivam@datagenit.com','9716122052','Shivam Kumar',NULL,20.000000,NULL,NULL,'INR','1',3,'Shivam International Demo','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-06 08:42:56','2018-12-06 17:55:24',0),(41,'OMASPA','SPA123','anuragbulksms@gmail.com','9205446451','OMASPA',NULL,282.000000,518.380000,NULL,'INR','29',3,'OMASPA','2019-06-27',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-06 09:19:27','2019-01-16 14:19:37',1),(42,'KINGSP','KINGSP123456','anuragbulksms@gmail.com','9205446451','KINGSP',NULL,0.000000,NULL,NULL,'INR','29',3,'KINGSP','2019-07-26',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-07 10:25:43','2019-04-04 17:52:18',1),(43,'lokeshcurrency','welcome123','lokesh@datagenit.com','7042026418','Lokesh Swami',NULL,21672.800000,920.200000,NULL,'INR','1',2,'DATAGEN CO-ORDINATOR','2019-12-31',1.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-10 11:42:44','2019-04-02 13:17:55',1),(44,'vanshintl','welcome123','vanshrealty2012@gmail.com','9595969262','Vansh Realty',NULL,44.200000,568.800000,NULL,'INR','43',3,'Vansh Realty','2019-12-31',1.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-10 11:46:13','2019-04-04 17:52:18',1),(45,'ruchikaintl','welcome123','Ruchika@thesmsworld.com','9888401666','Ruchika',NULL,100.000000,NULL,NULL,'INR','1',2,'www.thesmsworld.com','2019-12-31',1.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-11 08:20:34','2018-12-11 13:54:06',1),(46,'ALPHAGYM','ALPHA@111','anuragbulksms@gmail.com','9205446451','AMIT',NULL,1223.100000,276.900000,NULL,'INR','29',3,'ALPHA GOLF GYM','2019-12-12',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-12 07:35:52','2019-04-04 17:52:18',1),(47,'THESPA','RAJ123','anuragbulksms@gmail.com','9205446451','Raj ',NULL,5939.220000,60.780000,NULL,'INR','29',3,'THESPA HOUSE','2019-12-13',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-13 11:54:47','2019-04-04 17:52:18',1),(48,'DEVGRP','316424','anuragbulksms@gmail.com','9205446451','ANURAG',NULL,0.000000,7194.640000,NULL,'INR','29',3,'DEV GROUP ','2019-12-17',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-17 07:40:51','2019-04-04 17:52:18',1),(49,'evision','evision123','praveen171086@gmail.com	','9936092022','Mr. Avinash Singh',NULL,9.780000,0.220000,NULL,'INR','38',2,'Evision Techno Craft','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-17 10:50:35','2018-12-18 15:08:57',1),(50,'edutech','edutech123','praveen171086@gmail.com','9936092022','Avinash Singh',NULL,0.000000,NULL,NULL,'INR','49',3,'Edutech IT Education','2019-12-18',1.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-18 13:33:29','2019-04-04 17:52:18',1),(51,'microcen','datagen','publisher.cpi@outlook.com','8558879022','Manish','D!~5168JzP8uGPV',0.009710,9.490290,NULL,'USD','1',2,'Microcen web Technology private ltd. ','2019-12-31',1.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-20 05:23:33','2019-01-12 17:17:15',1),(52,'COBB','615718','cobbrajesh@gmail.com','9873507806','Cobb Appreals Pvt. Ltd.',NULL,83653.155000,791560.560000,NULL,'INR','28',3,'Retail Store','2019-12-20',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-20 06:45:03','2019-04-08 13:18:28',1),(53,'lambodar','Smile@000','appsync.playstore@gmail.com','9334837688','manish',NULL,0.000000,NULL,NULL,'INR','51',3,'client','1992-01-20',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-21 07:36:35','2019-04-04 17:52:18',1),(54,'rajneeshjha','welcome123','rajneesh@datagenit.com','7503013424','Rajneesh Jha',NULL,495139.800000,34860.200000,NULL,'INR','1',2,'DATAGEN SALES','2019-12-31',1.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-22 12:00:29','2019-04-09 14:16:54',1),(55,'malakhkumar','malakh@123','malakhkumar1992@gmail.com','9334837688','malakh',NULL,0.000000,NULL,NULL,'INR','1',3,'SMS CRAB','2020-12-25',1.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-25 08:36:45','2018-12-27 15:42:33',1),(56,'OPCAR','12345','anuragbulksms@gmail.com','9205446451','Arjun lamba ',NULL,0.000000,490.840000,NULL,'INR','29',3,'O.P CAR WASHING ','2019-12-28',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-26 04:19:47','2019-04-04 17:52:18',1),(57,'megatech','crab123','megatechblast@protonmail.com','+1 267 652 1589','mega man',NULL,1.000000,NULL,NULL,'INR','1',3,'SMS CRAB ','2020-12-29',1.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-27 07:14:47','2018-12-27 15:42:06',1),(58,'megaman','123456','megatechblast@protonmail.com','+1 267 652 1584','mega man',NULL,0.850000,0.150000,NULL,'USD','51',3,'MEGA MAN SMS PANEL','2019-12-26',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-27 10:23:58','2019-04-04 17:52:18',0),(59,'Stomel','123456','Ryan@estomes.com','+1 2356572189','Ryan',NULL,1.000000,NULL,NULL,'USD','51',3,'USER PANEL','2019-12-28',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-27 14:53:13','2019-04-04 17:52:18',0),(60,'User','123456','Demo@smscrab.com','+1 267 652 1503','Demo ',NULL,0.010000,0.990000,NULL,'USD','51',3,'Demo Panel','2019-12-28',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-27 19:36:58','2019-04-04 17:52:18',0),(61,'sumitkumar','123456','sp615075@gmail.com','6203846536','sumit',NULL,0.000000,NULL,NULL,'USD','51',3,'USER PANEL','2019-12-28',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-28 06:58:41','2019-04-04 17:52:18',1),(62,'MAALISH','12345','anuragbulksms@gmail.com','9205446451','SHYAM ',NULL,0.000000,887.880000,NULL,'INR','29',3,'BSKD','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-28 08:52:43','2019-04-04 17:52:18',1),(63,'Chew','123456','chewy.trail@gmail.com','+ 1 312 562 8912','Chewy',NULL,0.960000,0.040000,NULL,'USD','51',3,'USER PANEL','2019-01-01',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-28 22:43:27','2019-04-04 17:52:18',0),(64,'Kangana','12345','anuragbulksms@gmail.com','9205446451','Saurabh ',NULL,860.700000,39.300000,NULL,'INR','29',3,'BSKD','2019-08-30',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2018-12-29 13:25:45','2018-12-31 14:09:53',1),(65,'kacper','123456','kacper0074@wp.pl','+1 267 652 2501','kacper00744@wp.pl',NULL,0.000000,NULL,NULL,'USD','51',3,'USER PANEL','2020-01-01',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-01 12:15:20','2019-04-04 17:52:18',1),(66,'Chuckie','123456','Chuckie@tuta.io','+1 267 652 5431','Chuckie',NULL,0.910000,0.090000,NULL,'USD','51',3,'USER PANEL','2021-01-02',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-02 00:59:59','2019-04-04 17:52:18',0),(67,'arbags','123456','datgir.aalam@gmail.com','9893414357','Datgir Aalam',NULL,4.760000,0.240000,NULL,'INR','38',3,'AR Bags','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-02 06:06:14','2019-04-04 17:52:18',1),(68,'serviceguru','123456','serviceguru9@gmail.com','8826402079','Ankur Pandey',NULL,4.880000,0.120000,NULL,'INR','38',3,'service guru','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-02 07:34:22','2019-04-04 17:52:18',1),(69,'kiran','123456','kiran.vivasoft@gmail.com','7846060963','Kiran','D!~69eYf0fPBCIX',3.800000,1.200000,NULL,'INR','1',2,'Kiran communication','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-03 10:56:19','2019-01-09 13:25:32',1),(70,'esamritsar','123456','esamritsar@gmail.com','9988311855','Raman Kumar',NULL,5.000000,NULL,NULL,'INR','38',3,'ES Amritsar','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-04 06:09:59','2019-04-04 17:52:18',1),(71,'demosms ','123456','ritu@datagenit.com','9810704315','Datagen',NULL,1.000000,NULL,NULL,'INR','38',3,'DATAGEN','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-04 06:37:42','2019-04-04 17:52:18',1),(72,'test7','123','shrma.ashhish48@gmail.com','8448011802','test ashu',NULL,100.000000,NULL,NULL,'EUR','2',3,'Datagen Internet Services','2019-01-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-04 07:14:41','2020-01-14 12:45:34',1),(73,'harshgupta','welcome123','harshgupta5891@gmail.com ','9560071013','Harsh Gupta',NULL,100.000000,NULL,NULL,'INR','1',2,'HARSH GUPTA','2020-12-31',1.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-04 10:57:09','2019-01-04 16:30:38',1),(74,'nerella','123456','nerellanarendra@gmail.com','9866904885','Dr Narendra',NULL,5.000000,NULL,NULL,'INR','38',3,'Nerella Dental Clinic','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-05 05:40:23','2019-04-04 17:52:18',1),(75,'HABSI','123456','skydmx@hotmail.com','+1 267 652 1584','HABSI',NULL,0.240000,0.760000,NULL,'USD','51',3,'USER PANEL','2019-01-05',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-05 06:24:43','2019-04-04 17:52:18',0),(76,'Heavyweightt','123456','Heavyweightt@protonmail.com','+1 267 652 2501','Heavy',NULL,1.000000,NULL,NULL,'USD','51',3,'USER PANEL','2020-01-06',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-06 16:10:18','2019-04-04 17:52:18',0),(77,'obnal','123456','obnalchik@protonmail.com','+1 267 652 1584','obnal',NULL,0.000000,NULL,NULL,'USD','51',3,'USER PANEL','2020-01-07',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-07 06:07:43','2019-04-04 17:52:18',1),(78,'iaqm','123456','corporate@iaqmconsultants.com','9830083773','Sambhu Chakraborty','D!~78WO9GY646XS',1332.570800,2062.429200,NULL,'INR','38',3,'IAQM Consultants','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-07 10:49:57','2019-04-08 17:03:44',1),(79,'mobilezone','123456','mobilezone3880@gmail.com	','9932483880','Md Amjad Hussain',NULL,5.000000,NULL,NULL,'INR','38',3,'New Mobile Zone','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-08 10:43:33','2019-04-04 17:52:18',1),(80,'pahari','123456','subhadeeppahari77@gmail.com	','8159822218','Subhadeep Pahari','D!~805WP542wykJ',99.200000,0.800000,NULL,'INR','1',2,'Souvhaman Technology','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-09 06:35:08','2019-03-01 12:34:11',1),(81,'kiran1','kiran1','kiran.vivasoft@gmail.com','7846060963','kiran',NULL,1.000000,NULL,NULL,'INR','69',3,'vivasoftware','2019-02-09',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-09 09:54:19','2019-04-04 17:52:18',1),(82,'digital','123456','deepmann6736@gmail.com','9041162792','Deep mann','D!~82yPhzxnCfzg',0.080000,1804.920000,NULL,'INR','38',3,'Digital Marine Software Solution','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-09 11:55:01','2019-01-18 12:52:11',1),(83,'trans','123456','smsinline@gmail.com','+84388224981','TRAN',NULL,0.000000,NULL,NULL,'INR','54',3,'smsinline','2019-09-30',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-10 11:20:59','2019-04-04 17:52:18',1),(84,'adsclinic','welcome123','adsclinicdelhi@gmail.com','9540505454','Chandan Pandey',NULL,99.790000,0.210000,NULL,'INR','1',2,'ADS CLINIC','2020-01-10',1.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-10 11:41:38','2019-04-04 17:52:18',1),(85,'seasoft','seasoft01','seasoftinfotech@gmail.com','9886795594','Sea Soft Infotech','D!~85XbMVoeoAMC',3814.960000,51529.800000,NULL,'INR','1',2,'Sea Soft Infotech','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-11 11:14:13','2019-04-09 15:35:31',1),(86,'airwave','123456','ganesh_shetty20@yahoo.com','9343355957','Ganesh Shetty',NULL,3381.210000,4844.790000,NULL,'INR','38',3,'Airwave system','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-11 11:56:48','2019-04-04 17:52:18',1),(87,'hcesr','Hcesr01','holycrescentschool@yahoo.com','9845971555','HOLY CRESCENT RAMANAGARA','D!~87RO1EYOlJeo',724.510000,10175.990000,NULL,'INR','85',3,'HOLY CRESCENT RAMANAGARA','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 04:23:20','2019-04-09 10:28:47',1),(88,'opticket','123456','admin@bookmyopticket.com','8086044443','Aswathy Thampi','D!~88iUKPeg2NVP',107.520000,12.480000,NULL,'INR','38',3,'book my opticket','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 06:27:15','2019-04-09 11:29:20',1),(89,'pratham','123456','shubhankgupta80@gmail.com	','9713156456','Shubhank Gupta',NULL,4.880000,0.120000,NULL,'INR','38',3,'Pratham Enterprises','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 06:53:46','2019-04-04 17:52:18',1),(90,'beefashion','123456','beefashionexporthouse@gmail.com	','8585975715','Ankit sharma',NULL,5.000000,NULL,NULL,'INR','38',3,'Bee fashion','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 07:07:51','2019-04-04 17:52:18',1),(91,'carrentzon','123456','carrentzondelhi@gmail.com','9999324781 ','Rahul SIngh',NULL,4.880000,0.120000,NULL,'INR','38',3,'carrent zon delhi','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 07:23:48','2019-04-04 17:52:18',1),(92,'stjoh','Stjohn01','stjohnmandyaschool@yahoo.com','9845971555','ST JOHN MANDYA','D!~92eCVJdqGK8F',500.080000,799.920000,NULL,'INR','85',3,'ST JOHN MANDYA','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 08:23:04','2019-04-08 17:12:43',1),(93,'vbvsch','Vbvsch01','vbvsch@gmail.com','9739125964','VIJAYA BHARATHI VIDAYALA (GIRINAGAR)','D!~93hayYWhhi4q',287.850000,1712.150000,NULL,'INR','85',3,'schol','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 08:24:44','2019-04-09 14:21:24',1),(94,'cpseji','Cpseji01','chinmyaschool@yahoo.com','9845971555','CPSEJ','D!~941dE0nbWPte',371.200000,228.800000,NULL,'INR','85',3,'CHINMAYA SCHOOL EJIPURA','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 08:31:19','2019-04-08 10:05:04',1),(95,'vbvcbs','Vbvcbs01','vbvcbc@gmail.com','9739125964','VIJAYA BHARATHI VIDAYALA (GIRINAGAR) CBSC','D!~95KnJeIZyiXZ',323.160000,576.840000,NULL,'INR','85',3,'school','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 08:34:22','2019-04-09 14:14:56',1),(96,'srisaisch','Srisaisch01','srisaischool@yahoo.com','9845971555','Sri Sai Public School','D!~96eAND1ud7lT',624.930000,675.070000,NULL,'INR','85',3,'Sri Sai Public School BEGUR','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 08:34:27','2019-04-09 11:46:41',1),(97,'aradna','Aradna01','aradanafoundation@yahoo.com','9845971555','SHARADA HOSAKEREHALLI','D!~97YjSRrNRgft',258.010000,1441.990000,NULL,'INR','85',3,'SHREE SHARADA HOSAKEREHALLI','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 08:36:18','2019-04-03 13:31:08',1),(98,'dmschl','Dmschl01','dmschl@gmail.com','9739125964','DANIYAL MODERN SCHOOL','D!~981g5dnvcexZ',310.360000,189.640000,NULL,'INR','85',3,'DANIYAL MODERN SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 08:47:52','2019-04-05 14:51:26',1),(99,'kumrns','Kumrns01','kumaransschool@yahoo.com','9845971555','KUMARANS','D!~99pKtxYeGcCl',398.350000,1.650000,NULL,'INR','85',3,'SRI KUMARANS RAMAMURTHY NAGAR','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:31:37','2019-03-08 17:57:36',1),(100,'mmpsml','Mmpsml01','maxmullerschool@yahoo.com','9845971555','MAXMULLER MHL','D!~100vhMSpanjl4',343.270000,356.730000,NULL,'INR','85',3,'MAXMULLER MAHALAKSHMI LAYOUT','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:32:49','2019-04-09 10:33:01',1),(101,'tippus','Tippus01','tippuschoolramnagar@yahoo.com','9845971555','TIPPU SCHOOL RAMNAGARA','D!~101IQVXgArQr1',427.250000,4072.750000,NULL,'INR','85',3,'TIPPU SCHOOL RAMNAGARA','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:33:43','2019-04-09 12:17:52',1),(102,'savnhs','Savnhs01','savnhs@gmail.com','9739125964','SHREE ANANTHNAGAR VIDYANIKETAN','D!~102mNBPH3nWLZ',263.750000,536.250000,NULL,'INR','85',3,'SHREE ANANTHNAGAR VIDYANIKETAN','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:33:48','2019-03-30 08:56:07',1),(103,'simran','Simran01','simranbidadi@yahoo.com','9845971555','SIMRAN BIDADI','D!~103y4vOCZYLsY',440.710000,59.290000,NULL,'INR','85',3,'SIMRAN BIDADI','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:34:35','2019-03-21 14:23:40',1),(104,'pragathi','Pragathi01','pragathi@yahoo.com','9845971555','PRAGATHI SCHOOL HAROHALLI','D!~1042f7QrStjQE',400.010000,99.990000,NULL,'INR','85',3,'PRAGATHI SCHOOL HAROHALLI','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:35:16','2019-03-02 09:28:24',1),(105,'sumathi','Sumathi01','sumathi@yahoo.com','9845971555','SUMATHI SCHOOL DABASPETE ','D!~1050UEqTTp2eP',186.500000,313.500000,NULL,'INR','85',3,'SUMATHI SCHOOL DABADPETE','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:36:11','2019-04-08 12:17:47',1),(106,'mmehsc','Mmehsc01','mmehsc@yahoo.com','9739125964','M.M.ENGLISH HIGH SCHOOL','D!~106QS4G2sxqxs',1265.370000,234.630000,NULL,'INR','85',3,'M.M.ENGLISH HIGH SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:36:13','2019-04-09 15:27:26',1),(107,'royalsch','Royalsch01','royal@yahoo.com','9845971555','ROYAL SCHOOL','D!~107pbOHnzu3XI',561.350000,738.650000,NULL,'INR','85',3,'ROYAL ENGLISH HIGH SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:36:53','2019-04-09 14:57:34',1),(108,'shrda','Sharda01','sharada@yahoo.com','9845971555','SHARADA SCHOOL ATTIBELE','D!~108mU9ztK1jty',499.890000,0.110000,NULL,'INR','85',3,'SHARADA SCHOOL ATTIBELE','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:37:39','2019-01-24 16:52:02',1),(109,'svetis','Svetis01','svetschool@yahoo.com','9845971555','SVET ATTIBELE','D!~109V9uvVVnuZB',319.260000,1180.740000,NULL,'INR','85',3,'SVET ATTIBELE','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:38:41','2019-04-05 12:10:45',1),(110,'slesch','Slesch01','stlawrence@yahoo.com','9845971555','ST LAWRENCE','D!~110Ei38sn8vF2',694.200000,305.800000,NULL,'INR','85',3,'ST LAWRENCE','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:39:18','2019-03-25 10:11:53',1),(111,'sacsch','Sacsch01','stanthony@yahoo.com','9845971555','ST ANTHONY CHURCH SCHOOL','D!~111XihB1lEtlm',499.230000,0.770000,NULL,'INR','85',3,'ST ANTHONY CHURCH SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:40:01','2019-03-28 15:08:08',1),(112,'dpehsc','Dpehsc01','dpehsc@yahoo.com','9739125964','DILEEP PRIMARY & HIGH SCHOOL   ','D!~112PYzc5wUpsl',500.000000,NULL,NULL,'INR','85',3,'DILEEP PRIMARY & HIGH SCHOOL   ','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:40:44','2019-02-07 12:04:10',1),(113,'vpphsl','Vpphsl01','pavithraschool@yahoo.com','9845971555','PAVITHRA SCHOOL HEBBAGODI','D!~113jHl4hJoz24',493.080000,106.920000,NULL,'INR','85',3,'PAVITHRA SCHOOL HEBBAGODI','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:40:55','2019-04-01 14:58:19',1),(114,'tlasch','Tlasch01','tlasch@yahoo.com','9845971555','THE LITLE ANGELS SCHOOL (JP NAGAR)','D!~114OqiHEsH2Rh',166.260000,333.740000,NULL,'INR','85',3,'THE LITLE ANGELS SCHOOL (JP NAGAR)','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:41:36','2019-04-09 13:20:31',1),(115,'rtnpsr','Rtnpsr01','rtnpsr@yahoo.com','9845971555','RT NAGAR ICSE ','D!~115ulHtCkhiZI',313.220000,186.780000,NULL,'INR','85',3,'RT NAGAR ICSE ','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:42:25','2019-03-19 14:25:07',1),(116,'nvnsch','Nvnsch01','nvnsch@yahoo.com','9739125964','NANDINI VIDYANIKETHAN (VIJAPURA) ','D!~116VuPCpD7svB',642.000000,221.980000,NULL,'INR','85',3,'NANDINI VIDYANIKETHAN (VIJAPURA) ','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:42:47','2019-03-19 11:21:37',1),(117,'rtnpsg','Rtnpsg01','rtnpsg@yahoo.com','9845971555','RT NAGAR STATE (GANGANAGAR)','D!~117zf80IwmhPs',393.740000,106.260000,NULL,'INR','85',3,'RT NAGAR STATE (GANGANAGAR)','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:43:11','2019-03-20 12:42:23',1),(118,'upsrmg','Upsrmg01','universal@yahoo.com','9845971555','UNIVERSAL PUBLIC SCHOOL','D!~118YPPVkzRqBe',200.000000,NULL,NULL,'INR','85',3,'UNIVERSAL PUBLIC SCHOOL RAMANAGAR','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:43:54','2019-01-24 16:44:29',1),(119,'carmelsch','Carmelsch01','carmel@yahoo.com','9845971555','NEW CARMEL SCHOOL','D!~119CsUHFJhtMO',200.000000,NULL,NULL,'INR','85',3,'NEW CARMEL SCHOOL BYDARAHALLI','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:44:40','2019-01-24 16:44:26',1),(120,'slvehs','Slvehs01','slvesh@yahoo.com','9845971555','SLV CHIKKA THIRUPATHI','D!~120QBsDXJOpoh',152.810000,47.190000,NULL,'INR','85',3,'SLV CHIKKA THIRUPATHI','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:45:43','2019-02-20 15:45:10',1),(121,'gbindu','Gbindu01','gbindu@yahoo.com','9845971555','GNANA BINDU','D!~121umyZiPbE2g',101.700000,1598.300000,NULL,'INR','85',3,'GNANA BINDU','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:46:32','2019-04-07 16:52:44',1),(122,'klsint','Klsint01','klsint@yahoo.com','9845971555','KLS SCHOOL ATTIBELE','D!~122PJ0DZ3bkkx',200.000000,NULL,NULL,'INR','85',3,'KLS SCHOOL ATTIBELE','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:47:16','2019-01-24 16:44:15',1),(123,'bethel','Bethel01','bethel@yahoo,com','9739125964','BETHEL INTERNATIONAL  SCHOOL','D!~1237RHfpnnsE8',260.660000,439.340000,NULL,'INR','85',3,'BETHEL INTERNATIONAL  SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:47:38','2019-04-06 09:02:24',1),(124,'apstal','Apstal01','apstal@yahoo.com','9845971555','ATTIBELE PUBLIC SCHOOL','D!~124X2OIT2rbiK',200.000000,NULL,NULL,'INR','85',3,'ATTIBELE PUBLIC SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:47:55','2019-01-24 16:44:08',1),(125,'dvmcpt','Dvmcpt01','dvmcpt@yahoo.com','9845971555','DIVYA CHETHANA SCHOOL CHANNAPATNA','D!~125SSd3MIPRMh',200.000000,NULL,NULL,'INR','85',3,'DIVYA CHETHANA SCHOOL CHANNAPATNA','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:48:33','2019-01-24 16:44:05',1),(126,'globalsch','Globalsch01','global@yahoo.com','9845971555','GLOBAL SCHOOL CHANNAPATNA','D!~126zivOlPVZEr',578.890000,121.110000,NULL,'INR','85',3,'GLOBAL SCHOOL CHANNAPATNA','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:49:17','2019-03-22 16:04:12',1),(127,'ncpschool','Ncpschool01','ncpsch@yahoo.com','9845971555','NAVA CHETHANA SCHOOL','D!~127mzcphAkjNB',200.000000,NULL,NULL,'INR','85',3,'NAVACHETHANA SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:50:09','2019-01-24 16:43:57',1),(128,'stdominic','Stdominic01','stdominic@yahoo.com','9845971555','ST DOMINIC SCHOOL','D!~128dIymke69bA',200.000000,NULL,NULL,'INR','85',3,'ST DOMINIC SCHOOL ATTIBELE','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:50:55','2019-01-24 16:43:54',1),(129,'bmvsch','Bmvsch01','bmvsch@yahoo.com','9739125964','B M VALLY SCHOOL','D!~129JbYNxjr9ut',257.250000,442.750000,NULL,'INR','85',3,'B M VALLY SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:56:01','2019-04-01 21:10:56',1),(130,'mavnkg','Mavnkg01','mavnkg@yahoo.com','9739125964','MAGADI KEMPEGOWDA HIGH SCHOOL (MAGADI) ','D!~130LQl2In0vB4',391.320000,108.680000,NULL,'INR','85',3,'MAGADI KEMPEGOWDA HIGH SCHOOL (MAGADI) ','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 09:58:17','2019-03-29 17:06:28',1),(131,'vbpucs','Vbpucs01','vcpucs@yahoo,com','9739125964','VIJAYA BHARITHI PU COLLEGE','D!~1314LRsOC7hgk',558.310000,41.690000,NULL,'INR','85',3,'school','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 10:02:30','2019-03-16 12:05:17',1),(132,'lapsjp','Lapsjp01','lapsjp01','9739125964','LITTLE ANGELS PUBLIC SCHOOL (R.T .NAGAR)','D!~132QGwYQkuGeG',595.730000,205.920000,NULL,'INR','85',3,'LITTLE ANGELS PUBLIC SCHOOL (R.T .NAGAR)','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 10:04:12','2019-04-05 15:57:36',1),(133,'stpess','Stpess01','stpess@yahoo.com','9739125964','ST. PHILOMENA S HIGH SCHOOL','D!~133MOvmWmIFm9',70.990000,329.010000,NULL,'INR','85',3,'ST. PHILOMENA S HIGH SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 10:07:27','2019-04-09 14:20:45',1),(134,'ssephs','Ssephs01','ssephs@yahoo.com','9739125964','SUN SHINE ENGLISH SCHOOL   (ashwath nagara)','D!~13404j8eHsrxf',500.000000,NULL,NULL,'INR','85',3,'SUN SHINE ENGLISH SCHOOL   (ashwath nagara)','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 10:15:44','2019-02-07 12:12:21',1),(135,'oxfordint','Oxfordint01','oxford@yahoo.com','9845971555','OXFORD SCHOOL K.B. CROSS','D!~1352teEqdmYkp',200.000000,NULL,NULL,'INR','85',3,'OXFORD SCHOOL K.B. CROSS','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 10:19:54','2019-01-24 16:43:21',1),(136,'nation','Nation01','nation@yahoo.com','9845971555','NATION BUILDERS SCHOOL','D!~136ZOjgNZfUfc',300.000000,NULL,NULL,'INR','85',3,'NATION BUILDERS SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 10:20:33','2019-01-24 16:43:17',1),(137,'henrts','Henrts01','henrittas@yahoo.com','9845971555','ST HENRIETTAS SCHOOL','D!~137FJ0e41Wkjd',169.110000,230.890000,NULL,'INR','85',3,'ST HENRIETTAS SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 10:21:13','2019-04-05 15:31:23',1),(138,'srege','Srege01','srege01','9739125964','SREE GAYATHRI ENGLISH SCHOOL','D!~138fodGUjmzlA',290.700000,509.300000,NULL,'INR','85',3,'SREE GAYATHRI ENGLISH SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 10:21:16','2019-02-28 12:29:20',1),(139,'cpsjpn','Cpsjpn01','cpsjpn@yahoo.com','9739125964','CARMEL SCHOOL ','D!~139izoDRuZu62',519.930000,180.070000,NULL,'INR','85',3,'CARMEL SCHOOL ','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 10:25:22','2019-03-02 10:07:22',1),(140,'vvsvid','Vvsvid01','vvsvid@yahoo.com','9739125964','VIVEKANANDA ENGLISH SCHOOL (tumkuru)','D!~1407xzrM9WUrF',400.230000,99.770000,NULL,'INR','85',3,'VIVEKANANDA ENGLISH SCHOOL (tumkuru)','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 10:29:08','2019-04-03 16:02:35',1),(141,'sunsch ','Sunsch01','sunsch@yahoo.com','9739125964','SUN SHINE PUBLIC SCHOOL (yalahank)','D!~1411o1qqlV5CF',449.400000,50.600000,NULL,'INR','85',3,'school','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 10:31:15','2019-02-12 16:33:30',1),(142,'nnehsc','Nnehsc01','nnehsc@yahoo.com','9739125964','NEW NOBEL ENGLISH HIGH SCHOOL','D!~142gMvsSVuX5P',358.760000,141.240000,NULL,'INR','85',3,'NEW NOBEL ENGLISH HIGH SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-12 10:32:36','2019-03-06 13:51:11',1),(143,'svkpen','Svkpen01','vidyakendra@gmail.com','9986038577','SRI VIDYA KENDRA','D!~1437RvMwwgBwF',600.190000,1349.810000,NULL,'INR','85',3,'SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-14 04:17:51','2019-04-05 17:54:27',1),(144,'stflowmgd','Stflowmgd01','stflowmgd@gmail.com','9986038577','St. FLOWERS HIGH SCHOOL MgdRd','D!~144UGi4rt2K9h',635.600000,1764.400000,NULL,'INR','85',3,'SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-14 08:47:12','2019-04-08 10:52:42',1),(145,'esevanam','123456','hasifch@gmail.com	','9995509033','Hasif Chirakkal',NULL,5.000000,NULL,NULL,'INR','38',3,'Esevanam Technologies','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-14 10:20:23','2019-04-04 17:52:18',1),(146,'hmrips','Hmrips01','hmripssch@gmail.com','9986038577','H.M.R. INTERNATIONAL PUBLIC SCHOOL','D!~146vCaSi0orHC',182.350000,617.650000,NULL,'INR','85',3,'SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-14 10:51:13','2019-04-09 15:35:31',1),(147,'haicse','Haicse01','holyangels@gmail.com','9986038577','HOLY ANGELS HIGH SCHOOL','D!~1472DKeIBwnzu',406.160000,1093.840000,NULL,'INR','85',3,'HOLY ANGELS HIGH SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-14 11:00:55','2019-04-08 11:02:45',1),(148,'Demo1','123456','anuragbulksms@gmail.com','9205446451','Demo ',NULL,0.000000,1.320000,NULL,'INR','29',3,'Bskd','2024-10-17',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-14 11:47:34','2019-04-04 17:52:18',1),(149,'agvkhs','Agvkhs01','acharyasch@gmail.com','9986038577','ACHARYA GURUKULA VIDYAKENDRA','D!~149vfTFhzUkNG',626.880000,373.120000,NULL,'INR','85',3,'ACHARYA GURUKULA VIDYAKENDRA','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-14 11:48:10','2019-03-23 12:03:18',1),(150,'apoll','Apollo01','apollosch@gmail.com','9986038577','APOLLO HIGH SCHOOL','D!~150aEesyc1WgP',91.680000,408.320000,NULL,'INR','85',3,'APOLLO HIGH SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-14 11:57:23','2019-04-09 12:29:36',1),(151,'apollo2','Apollo02','apolloaksh@yahoo.com','9986038577','APOLLO AKSHARADHAMA','D!~151S8n4dIXDfg',100.000000,NULL,NULL,'INR','85',3,'APOLLO AKSHARADHAMA','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-14 12:05:23','2019-01-24 16:42:01',1),(152,'anpscl','Anpscl01','anpscl@gmail.com','9986038577','APPOLLO NATIONAL PUBLIC SCHOOL ','D!~152XfpvcOACrB',460.840000,39.160000,NULL,'INR','85',3,'APPOLLO NATIONAL PUBLIC SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-14 12:19:29','2019-04-08 11:42:46',1),(153,'aisgun','Aisgun01','ahokintga@yahoo.com','9986038577','ASHOK INTERNATIONAL GuneAg','D!~153lHmkiewVmT',100.000000,NULL,NULL,'INR','85',3,'ASHOK INTERNATIONAL GuneAg','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-14 12:47:58','2019-01-24 16:41:58',1),(154,'atreyaschool','Atreyaschool01','atreyasch@yahoo.com','9986038577','ATREYA VIDYANIKETHAN','D!~154hMcoI8GOnP',100.000000,NULL,NULL,'INR','85',3,'ATREYA VIDYANIKETHAN','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-14 12:52:40','2019-01-24 16:41:54',1),(155,'blclaw','Blclaw01','bengalurulawcollege@gmail.com','9986038577','BENGALURU LAW COLLEGE','D!~155NbEfs49yQR',86.030000,13.970000,NULL,'INR','85',3,'BENGALURU LAW COLLEGE','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-14 12:59:01','2019-03-01 18:06:41',1),(156,'havanur','Havanur01','havanursch@yahoo.com','9986038577','HAVANUR PUBLIC SCHOOL','D!~156oqvRLexGTy',712.880000,87.120000,NULL,'INR','85',3,'HAVANUR PUBLIC SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-14 13:15:41','2019-04-09 09:50:53',1),(157,'havanurpuc','Havanurpuc01','havanurcollege@yahoo.com','9986038577','HAVANUR PU COLLEGE','D!~157QmzMM3sV7Q',199.890000,0.110000,NULL,'INR','85',3,'HAVANUR PU COLLEGE','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-14 13:17:32','2019-02-02 12:41:05',1),(158,'stflow','Stflow01','stflowers@gmail.com','9986038577','St. FLOWERS HIGH SCHOOL','D!~158yPyaeA7x9X',431.100000,768.900000,NULL,'INR','85',3,'St. FLOWERS HIGH SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-14 13:25:29','2019-04-09 14:39:21',1),(159,'dasinvest','123456','dasinvest.co.in@gmail.com','6262652020','Gour Kishore Das',NULL,5.000000,NULL,NULL,'INR','38',3,'Das Investor & Insurance Services','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-15 08:09:17','2019-04-04 17:52:18',1),(160,'drmohan','123456','imran.vaatsalya@gmail.com','7899742185	','Imran Khan',NULL,5.000000,NULL,NULL,'INR','38',3,'Dr. Mohanâ€™s Diabetes Specialities Centre','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-15 12:07:15','2019-04-04 17:52:18',1),(161,'kkdigital','123456','kkdigitalalipur@gmail.com','9880870926','Wasif hyder',NULL,5.000000,NULL,NULL,'INR','38',3,'KK Digital ','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-15 12:11:05','2019-04-04 17:52:18',1),(162,'nchscl','Nchscl01','newcarmelsch@yahoo.com','9986038577','NEW CARMEL HIGH SCHOOL','D!~162PKFRTTksGw',113.240000,2586.760000,NULL,'INR','85',3,'NEW CARMEL HIGH SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-16 04:49:36','2019-04-09 14:14:33',1),(163,'bhagwati','123456','bhagwatiassociates40@gmail.com	','9828552417','Mr. Deepak',NULL,5.000000,NULL,NULL,'INR','38',3,'Bhagwati associates','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-16 05:41:27','2019-04-04 17:52:18',1),(164,'agrawal','123456','aatushagrawal88@gmail.com','9039113234','AATUSH AGRAWAL',NULL,5.000000,NULL,NULL,'INR','38',3,'Agrawal Automobiles','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-16 06:05:01','2019-04-04 17:52:18',1),(165,'gripsl','Gripsl','grintsch@gmail.com','9986038577','G.R.INTERNATIONAL PUBLIC SCHOOL','D!~16520jLAd99QT',421.040000,278.960000,NULL,'INR','85',3,'G.R.INTERNATIONAL PUBLIC SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-16 09:37:09','2019-04-05 17:51:06',1),(166,'ideals','Ideals01','ideals@yahoo.com','9986038577','IDEAL ENGLISH SCHOOL','D!~166qQ770qTMDo',100.000000,NULL,NULL,'INR','85',3,'IDEAL ENGLISH SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-16 09:39:11','2019-01-24 16:41:09',1),(167,'jmssch','Jmssch01','jnanamandirsch@gmail.com','9986038577','JNANAMANDIR SMART SCHOOL','D!~167OUuY57TUET',52.810000,47.190000,NULL,'INR','85',3,'JNANAMANDIR SMART SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-16 09:41:01','2019-04-05 16:53:48',1),(168,'shyam','123456','n.m.bihani@gmail.com','9753164930','N.M. Maheswari',NULL,10.000000,NULL,NULL,'INR','38',3,'Shyam Agency','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-16 09:43:44','2019-04-04 17:52:18',1),(169,'jvsnl','Jvpsnl01','jnanavahini@gmail.com','9986038577','JNANAVAHINI SCHOOL','D!~169FjOfhBG7qw',100.000000,NULL,NULL,'INR','85',3,'JNANAVAHINI SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-16 09:44:20','2019-01-24 16:40:55',1),(170,'sjeslg','Sjeslg01','jnanavardhakaschool@gmail.com','9986038577','JNANAVARDHAKA ENGLISH SCHOOL','D!~170aZ2dHikPll',479.460000,320.540000,NULL,'INR','85',3,'JNANAVARDHAKA ENGLISH SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-16 09:47:19','2019-03-05 13:45:07',1),(171,'kanara','Kanara01','kanarasch@gmail.com','9986038577','KANARA ENGLISH SCHOOL','D!~171A2Dm7w4NmX',71.400000,28.600000,NULL,'INR','85',3,'KANARA ENGLISH SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-16 10:15:09','2019-03-30 14:37:39',1),(172,'lewaesch','Lewaesch01','lewasch@yahoo.com','9986038577','LEWA ENGLISH SCHOOL','D!~172tYFOOsRkfz',451.950000,248.050000,NULL,'INR','85',3,'LEWA ENGLISH SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-16 10:22:19','2019-04-09 12:16:28',1),(173,'baldwin','Baldwin01','newbaldwinsch@yahoo.com','9986038577','NEW BALDWIN HIGH SCHOOL','D!~1736bqCNSKVyO',420.910000,79.090000,NULL,'INR','85',3,'NEW BALDWIN HIGH SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-16 10:51:37','2019-03-14 10:10:22',1),(174,'ncesch','Ncesch01','newcamb@gmail.com','9986038577','NEW CAMBRIDGE ENGLISH SCHOOL','D!~1740FQtkXEEHh',610.240000,89.760000,NULL,'INR','85',3,'NEW CAMBRIDGE ENGLISH SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-16 10:57:38','2019-04-05 17:51:51',1),(175,'ibottic','123456','info@ibottic.com','9945753755','ibottic','D!~175J3aTotYaHx',7951.020000,2063.980000,NULL,'INR','1',2,'ibottic','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-16 10:59:54','2019-04-09 14:46:22',1),(176,'hardwick','Hardwick01','newhardwick@gmail.com','9986038577','NEW HARDWICK INDIAN SCHOOL','D!~176k9ZneHSSBe',651.650000,548.350000,NULL,'INR','85',3,'NEW HARDWICK INDIAN SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-16 11:30:26','2019-03-23 11:11:37',1),(177,'newindian','Nipsch01','newindian@gmail.com','9986038577','NEW INDIAN PUBLIC SCHOOL','D!~177yMKZ47jzq0',100.000000,NULL,NULL,'INR','85',3,'NEW INDIAN PUBLIC SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-16 11:32:11','2019-01-24 16:40:23',1),(178,'nmpsut','Nmpsut01','nmps@gmail.com','9986038577','NEW MILLENNIUM PUBLIC SCHOOL','D!~178O1LsUOlEYo',259.070000,1040.930000,NULL,'INR','85',3,'NEW MILLENNIUM PUBLIC SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-16 11:33:45','2019-04-08 15:07:42',1),(179,'BHARATPHARMA','514711','anuragbulksms@gmail.com','09205446451','BHARATPHARMA',NULL,0.000000,0.140000,NULL,'INR','29',3,'BSKD','2021-02-27',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-16 11:35:46','2019-04-04 17:52:18',1),(180,'nvnscl','Nvnscl01','nisargavidyanikethan@gmail.com','9986038577','NISARGA VIDYANIKETHAN','D!~180oGf28kGW9V',100.000000,NULL,NULL,'INR','85',3,'NISARGA VIDYANIKETHAN','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-16 11:36:33','2019-02-02 13:54:59',1),(181,'loistava','123456','info@loistava.in	','9567889944','Ramzan',NULL,5.000000,NULL,NULL,'INR','38',3,'loistava','2020-01-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-17 05:49:11','2019-04-04 17:52:18',1),(182,'tapash','123456','er.tapash@gmail.com','9476655614','Tapash Jyoti Baishya',NULL,5.000000,NULL,NULL,'INR','38',3,'Tapash Jyoti Baishya','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-17 10:46:41','2019-04-04 17:52:18',1),(183,'digitalprint','digi123','digitalprint.re@gmail.com','9379076185','John Rajashekaran',NULL,5.000000,NULL,NULL,'INR','38',3,'digitalprint','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-17 12:22:20','2019-04-04 17:52:18',1),(184,'sjbsss','Sjbsss01','sjbsssch@yahoo.com','9986038577','SJBSS PUBLIC SCHOOL','D!~184wJ5PnPq1J4',99.680000,100.320000,NULL,'INR','85',3,'SJBSS PUBLIC SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-17 12:34:19','2019-03-28 12:57:32',1),(185,'omsaiv','Omsaiv01','omsaividyamandir@gmail.com','9986038577','OM SAI VIDYAMANDIR','D!~1850NoHjNXjeU',98.350000,1.650000,NULL,'INR','85',3,'OM SAI VIDYAMANDIR','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-17 12:38:26','2019-02-12 17:35:44',1),(187,'ashu123','12345','sharmaji@datagenit.com','8448011802','asshih',NULL,0.000000,NULL,NULL,'EUR','2',3,'Datagen Internet Services','2019-01-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 08:48:47','2019-04-04 17:52:18',1),(189,'vasmgd','Vasmgd01','vasavischool@yahoo.com','9845971555','VASAVI SCHOOL MAGADI','D!~189OiDkqOZ5cc',452.530000,547.470000,NULL,'INR','85',3,'VASAVI SCHOOL MAGADI','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 10:21:13','2019-03-26 13:01:25',1),(190,'ssvhnr','Ssvhnr01','ssvhnr@yahoo.com','9739125964','SHREE SHARADA VIDAYANIKETHAN','D!~190Hd5zXXIqoN',607.170000,192.830000,NULL,'INR','85',3,'school','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 10:24:36','2019-04-09 15:09:32',1),(191,'saicol','Saicol01','omsaicollege@gmail.com','9986038577','OM SAI COLLEGE','D!~191AriTUYQRnA',100.000000,NULL,NULL,'INR','85',3,'OM SAI COLLEGE','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 10:25:43','2019-01-24 16:39:46',1),(192,'opsblr','Opsblr01','opsblr@yahoo.com','9845971555','OXFORD ANCHEPALYA','D!~192gRctm4IcRP',200.000000,NULL,NULL,'INR','85',3,'OXFORD ANCHEPALYA','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 10:28:34','2019-02-21 10:09:34',1),(193,'maruthi','Maruthi01','maruthi@yahoo.com','9845971555','MARUTHI SCHOOL MAGADI','D!~193ng6ZgI71KR',649.290000,50.710000,NULL,'INR','85',3,'MARUTHI SCHOOL MAGADI','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 10:30:19','2019-03-27 14:28:55',1),(194,'bscsch','Bscsch01','bishopschool@yahoo.com','9845971555','BISHOP SERGENT CENTRAL SCHOOL','D!~194Q71spTNQn6',210.150000,289.850000,NULL,'INR','85',3,'BISHOP SERGENT CENTRAL SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 10:33:07','2019-03-29 12:49:17',1),(195,'jjvsch','Jjvsch01','jjvsch@yahoo.com','9845971555','JNANA JYOTHI VIDYANIKETHANA SCHOOL RAJANUKUNTE','D!~195aJq6VMWGIl',0.000000,NULL,NULL,'INR','85',3,'JNANA JYOTHI VIDYANIKETHANA SCHOOL RAJANUKUNTE','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 10:34:23','2019-01-24 16:39:31',1),(196,'hcsblr','Hcsblr01','Hcsblr01@yahoo.com','9739125964','HOLY CROSS SCHOOL','D!~196VvzE3R2aII',219.940000,280.060000,NULL,'INR','85',3,'HOLY CROSS SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 11:31:14','2019-04-09 13:07:42',1),(197,'vmschl','Vmschl01','vmschl@yahoo.com','9739125964','VANDEMATARAM SCHOOL','D!~197Go8FNMUjbm',321.800000,178.200000,NULL,'INR','85',3,'VANDEMATARAM SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 11:36:30','2019-03-08 15:36:48',1),(198,'vbesmp','Vbesmp01','vbesmp@yahoo.com','9739125964','VIDYA BHARATHI ENGLISH SCHOOL','D!~198pdinjnVJjp',186.360000,13.640000,NULL,'INR','85',3,'VIDYA BHARATHI ENGLISH SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 11:48:09','2019-02-19 14:27:43',1),(199,'srhsch','Srhsch01','raghavendrasch@gmail.com','9986038577','SHREE RAGHAVENDRA HIGH SCHOOL','D!~199sjPyRhDqVV',88.450000,11.550000,NULL,'INR','85',3,'SHREE RAGHAVENDRA HIGH SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 12:00:02','2019-03-23 11:17:45',1),(200,'risedu','Risedu01','rainbowsch@gmail.com','9986038577','RAINBOW INTERNATIONAL PUBLIC SCHOOL','D!~2000ljSBLhcRY',100.000000,NULL,NULL,'INR','85',3,'RAINBOW INTERNATIONAL PUBLIC SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 12:02:08','2019-01-24 16:38:02',1),(201,'sbmehs01','Sbmehs01','sbmsch@gmail.com','9986038577','S.B.M.ENGLISH SCHOOL','D!~201fgBfsy7E3K',78.810000,421.190000,NULL,'INR','85',3,'S.B.M.ENGLISH SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 12:04:09','2019-03-29 10:29:48',1),(202,'ssipsk','Ssipsk01','siddaganga@gmail.com','9986038577','SIDDAGANGA PUBLIC SCHOOL','D!~202Hlb5qqxS3I',453.360000,46.640000,NULL,'INR','85',3,'SIDDAGANGA PUBLIC SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 12:05:44','2019-04-03 10:30:38',1),(203,'sophiaschool','Sophiaschool01','sophiasschhol@gmail.com','9986038577','SOPHIA CONVENT HIGH SCHOOL','D!~203gjzsU4Z9TP',481.780000,418.220000,NULL,'INR','85',3,'SOPHIA CONVENT HIGH SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 12:08:01','2019-04-09 15:30:14',1),(204,'skpark','Skpark01','soundaryaschp@gmail.com','9986038577','SOUNDARYA KNOWLEDGE PARK','D!~204mxEYjq5R2t',100.000000,NULL,NULL,'INR','85',3,'SOUNDARYA KNOWLEDGE PARK','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 12:09:49','2019-01-24 16:37:48',1),(205,'skipss','Skipss01','srikrishnasch@gmail.com','9986038577','SRI KRISHNA INTERNATIONAL PUBLIC SCHOOL','D!~205w3ZeCrWkcM',190.670000,209.330000,NULL,'INR','85',3,'SRI KRISHNA INTERNATIONAL PUBLIC SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 12:11:42','2019-04-09 12:24:17',1),(206,'stjohnschool','Stjohnschool01','stjohnsch@gmail.com','9986038577','ST. JOHNS HIGH SCHOOL','D!~206lNfIbF5Q7h',10.630000,2339.370000,NULL,'INR','85',3,'ST. JOHNS HIGH SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 12:14:12','2019-04-09 14:18:16',1),(207,'stmchs','Stmchs01','stmaries@gmail.com','9986038577','ST. MARIES HIGH SCHOOL','D!~207e75W12aDvR',197.910000,2.090000,NULL,'INR','85',3,'ST. MARIES HIGH SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 12:17:44','2019-02-11 12:28:42',1),(208,'sunshn','Sunshn01','sunshinesch@gmail.com','9986038577','SUNSHINE PUBLIC SCHOOL(Nice Road)','D!~208EVE40frFad',599.800000,200.200000,NULL,'INR','85',3,'SUNSHINE PUBLIC SCHOOL(Nice Road)','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 12:19:41','2019-04-06 13:56:18',1),(209,'hmssps','Hmssps01','sunshinetn@gmail.com','9986038577','SUNSHINE PUBLIC SCHOOL(Tunganagar)','D!~209JmALwCL7Nu',100.000000,NULL,NULL,'INR','85',3,'SUNSHINE PUBLIC SCHOOL(Tunganagar)','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 12:21:49','2019-01-24 16:37:24',1),(210,'svessch','Svessch01','svessch@gmail.com','9986038577','SVES ENGLISH SCHOOL','D!~21065hHRADBm5',180.420000,19.580000,NULL,'INR','85',3,'SVES ENGLISH SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 12:24:35','2019-04-05 14:16:47',1),(211,'sssvvk','Sssvvk01','svvksch@gmail.com','9986038577','SOUNDARYA VIDYAMANYA VIDYA KENDRA','D!~211a81HbbeVqy',100.000000,NULL,NULL,'INR','85',3,'SOUNDARYA VIDYAMANYA VIDYA KENDRA','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 12:26:46','2019-01-24 16:37:17',1),(212,'vidvah','Vidvah01','vidvahsch@gmail.com','9986038577','VIDYAVAHINI SCHOOL','D!~212kQsrnwwnIL',376.040000,223.960000,NULL,'INR','85',3,'VIDYAVAHINI SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 12:29:24','2019-03-08 18:28:40',1),(213,'vjehps','Vjehps01','vijayajyothisch@gmail.com','9986038577','VIJAYA JYOTHI SCHOOL','D!~21324GLd4BcBT',314.870000,185.130000,NULL,'INR','85',3,'VIJAYA JYOTHI SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 12:31:25','2019-04-09 11:11:33',1),(214,'vbvtd','Vbesbn01','vjps@gmail.com','9986038577','VIJAYA BHARATHI ENGLISH SCHOOL (T.D)','D!~2144tl84wNlqT',200.000000,NULL,NULL,'INR','85',3,'VIJAYA BHARATHI VIDYALATA (T.D)','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 12:34:07','2019-01-24 16:37:05',1),(215,'vlsint','Vlsint01','vlsesch@gmail.com','9986038577','V.L.S. INTERNATIONAL PUBLIC SCHOOL','D!~215Agakf4cHnj',164.130000,1037.190000,NULL,'INR','85',3,'V.L.S. INTERNATIONAL PUBLIC SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 12:35:50','2019-04-05 09:30:23',1),(216,'vivekasch','Vivekasch01','vvessch@gmail.com','9986038577','V.V.E.S. (Vijayanagar) ','D!~216IrrZzdSVWv',61.280000,38.720000,NULL,'INR','85',3,'V.V.E.S. (Vijayanagar) ','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 12:37:38','2019-04-09 08:40:56',1),(217,'yashaspu','Yashaspu01','yashaspucollege@yahoo.com','9986038577','YASHAS P.U. COLLEGE ',NULL,0.000000,NULL,NULL,'INR','85',3,'YASHAS P.U. COLLEGE ','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 12:40:58','2019-01-24 16:36:49',1),(218,'yvksch','Yvksch01','yashassch@gmail.com','9986038577','YASHAS VIDYA KENDRA','D!~218DvPb3Du0s8',474.350000,925.650000,NULL,'INR','85',3,'YASHAS VIDYA KENDRA','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 12:42:19','2019-04-09 14:06:06',1),(219,'yvkschchnbn','Yvkschchnbn01','yashasschchnbn@gmail.com','9986038577','YASHAS VIDYA KENDRA (CHNBN)','D!~219oNGpe3wgm6',200.000000,NULL,NULL,'INR','85',3,'YASHAS VIDYA KENDRA (CHNBN)','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-18 12:44:13','2019-01-24 16:36:42',1),(220,'ppsnhs','Ppsnhs01','ppsnhs@yahoo.com','9739125964','PRESIDENCY PUBLIC SCHOOL','D!~220VDqaMrShWF',474.920000,25.080000,NULL,'INR','85',3,'PRESIDENCY PUBLIC SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-19 04:19:43','2019-04-04 11:38:24',1),(221,'gyschl','Gyschl01','gyschl@yahoo.com','9739125964','GOODYEAR ENGLISH SCHOOL','D!~221RyXkF028ry',500.000000,NULL,NULL,'INR','85',3,'GOODYEAR ENGLISH SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-19 09:14:55','2019-02-07 12:04:47',1),(222,'sjmnva','Sjmnva01','sjmvna@yahoo.com','9739125964','SJM SCHOOL','D!~222C2hOWYdwT6',442.810000,157.190000,NULL,'INR','85',3,'SJM SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-19 09:32:37','2019-04-08 11:11:39',1),(223,'hcsid','Hcsid01','hcsid@yahoo.com','9739125964','Holy Cross School (tipasandra)','D!~223bCXVmRbTaW',428.170000,71.830000,NULL,'INR','85',3,'Holy Cross School (tipasandra)','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-19 09:35:33','2019-04-08 14:56:54',1),(224,'kehsjb','Kehsjb01','kehsjb@yahoo.com','9739125964','KENNY ENGLISH SCHOOL','D!~2248ddvvNWJwh',477.680000,122.320000,NULL,'INR','85',3,'KENNY ENGLISH SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-19 09:36:41','2019-04-08 12:35:19',1),(225,'bbells','Bbells01','bbells01@yahoo.com','9739125964','BLUE BELLS  SCHOOL','D!~225c4h2Dhsy5c',308.760000,691.240000,NULL,'INR','85',3,'BLUE BELLS  SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-19 09:39:05','2019-04-04 20:41:01',1),(226,'bipspu','Bipspu01',' Bipspu01@yahoo.com','9739125964',' BETHEL PU','D!~226wC8F71p8v9',446.320000,53.680000,NULL,'INR','85',3,' BETHEL PU COLLEGE','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-19 09:40:26','2019-03-28 15:15:59',1),(227,'ramakrishnaedu','Ramakrishnaedu01','Ramakrdu01@yahoo.com','9739125964','SRI RAMAKRISHNA EDUCATION ','D!~227RNV5IEzOjr',0.080000,799.920000,NULL,'INR','85',3,'SRI RAMAKRISHNA EDUCATION ','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-19 09:42:58','2019-04-08 14:38:57',1),(228,'suinps','Suinps01','Suinps01@yahoo.com','9739125964','SURYODHAYA INTERNATIONAL','D!~2281dC2LchqLD',499.780000,0.220000,NULL,'INR','85',3,'school','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-19 09:44:38','2019-02-19 12:32:03',1),(229,'REGENCY','Regency01','Regency01@yahoo.com','9739125964','THE REGENCY PUBLIC SCHOOL','D!~229XXGsz4rvmx',100.000000,NULL,NULL,'INR','85',3,'THE REGENCY PUBLIC SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-19 09:46:23','2019-02-19 16:51:09',1),(230,'skintl','welcome123','ashish@datagenit.com','9999273424','SK International',NULL,13269.600000,1235.400000,NULL,'INR','1',2,'SK International','2019-12-31',1.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-21 06:17:11','2019-03-29 14:01:04',1),(231,'awsrmg','Awsrmg01','acharyaschool@yahoo.com','9739125964','ACHARYA WORLD SCHOOL RAMANAGARA','D!~2311FESmYYDj7',277.470000,222.530000,NULL,'INR','85',3,'ACHARYA WORLD SCHOOL RAMANAGARA','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-21 06:40:24','2019-03-30 12:38:52',1),(232,'exchange1','123456','skmarketing@gmail.com','9899331843','gaurav',NULL,22875.000000,2130.000000,NULL,'INR','230',3,'sksms','2019-06-21',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-21 06:55:39','2019-03-29 14:01:04',1),(233,'sunanp1','Sunanp01','sunanp1@yahoo.com','9739125964','SUN SHINE PUBLIC SCHOOL (YELAHANKA) ANANTHAPURA','D!~233XIGmkfkiep',490.320000,9.680000,NULL,'INR','85',3,'SUN SHINE PUBLIC SCHOOL (YELAHANKA) ANANTHAPURA','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-22 07:56:51','2019-04-08 11:34:15',1),(234,'arihantinfo','arihant01','dineshjain_hi@rediffmail.com	','7864900005','Dinesh Jain',NULL,4.760000,0.240000,NULL,'INR','1',2,'Arihant Infotech','2020-01-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-23 06:19:37','2019-01-23 12:08:34',1),(235,'tgvpsb','Tgvpsb01','goldenvalley@gmail.com','9986038577','GOLDEN VALLEY PUBLIC SCHOOL','D!~235rjazgpdi18',231.140000,68.860000,NULL,'INR','85',3,'GOLDEN VALLEY PUBLIC SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-24 05:33:09','2019-04-05 15:25:14',1),(236,'diablr','Diablr01','diamond#yahoo.com','9845971555','DIAMOND INTERNATIONAL ACADEMY',NULL,100.000000,NULL,NULL,'INR','85',3,'DIAMOND INTERNATIONAL ACADEMY','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-24 07:39:49','2019-01-24 16:34:52',1),(237,'RRBIKE','RRBIKE987','anuragbulksms@gmail.com','09205446451','RRBIKE',NULL,0.000000,NULL,NULL,'INR','29',3,'BSKD','2023-05-25',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-24 11:09:57','2019-04-04 17:52:18',1),(238,'nbpskb','Nbpskb01','nbpskbl@yahoo.com','9845971555','NEW BHARATH PUBLIC SCHOOL','D!~238zUFi77Jm8f',371.410000,128.590000,NULL,'INR','85',3,'NEW BHARATH PUBLIC SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-24 12:18:15','2019-04-04 17:52:18',1),(239,'PROXPR','Quattro@1','anuragbulksms@gmail.com','9205446451','Pawan Sehgal ',NULL,4396.380000,1603.620000,NULL,'INR','29',3,'PROTION HUB','2023-01-26',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-25 05:14:51','2019-01-31 11:34:32',1),(240,'praveenn666','praveenn','praveenn666@gmail.com','9071207000','Praveen',NULL,4.640000,0.360000,NULL,'INR','38',3,'praveenn666','2020-01-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-25 06:24:32','2019-04-04 17:52:18',1),(241,'ROCK','12345','anuragbulksms@gmail.com','09205446451','ROCK',NULL,0.000000,901.890000,NULL,'INR','29',3,'BSKD','2024-01-23',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-25 10:46:08','2019-04-04 17:52:18',1),(242,'trisha','trisha01','bhagyalaxmitraders16@gmail.com	','9413993372','Trisha',NULL,3713.250000,36.750000,NULL,'INR','38',3,'Trisha Mobile and Accessories','2020-01-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-01-25 11:32:17','2019-04-04 17:52:18',1),(243,'INSPIRE','12345','anuragbulksms@gmail.com','09205446451','INSPRIE ',NULL,823.440000,76.560000,NULL,'INR','29',3,'BSKD','2023-02-15',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-02 09:09:42','2019-04-04 17:52:18',1),(244,'techno','techno123','dksinha2009@gmail.com','8825172718','Dhannajay Sinha',NULL,4.520000,0.480000,NULL,'INR','38',3,'Techno Herald','2020-01-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-04 07:50:45','2019-04-04 17:52:18',1),(245,'VCSFOOD','123456','anuragbulksms@gmail.com','09205446451','VCS FOOD',NULL,0.000000,2176.330000,NULL,'INR','29',3,'VCS FOOD ','2019-06-12',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-04 11:04:10','2019-04-04 17:52:18',1),(246,'globalcare','global123','ndupadhyay80@gmail.com','7974464830','Narayan Datt Upadhyay',NULL,2.000000,NULL,NULL,'INR','38',3,'Global Care','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-05 06:19:11','2019-04-04 17:52:18',1),(247,'panasonic','panasonic123','sachinhalawal79@gmail.com','8892864168','Sachin Halawal',NULL,5.000000,NULL,NULL,'INR','38',3,'Panasonic India Pvt.Ltd.','2020-01-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-06 07:09:56','2019-04-04 17:52:18',1),(248,'sumitjain','123456','sumit.elounge@gmail.com','9356425559','sumit jain',NULL,2610.168000,32199.832000,NULL,'INR','1',2,'sumit jain','2023-02-09',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-06 07:43:46','2019-04-08 18:15:56',1),(249,'dbapta','dbapta@123#','sumit.elounge@gmail.com','9356425559','President',NULL,2449.000000,13056.000000,NULL,'INR','248',3,'District Bar Association','2039-02-22',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-06 08:15:08','2019-04-06 08:04:06',1),(250,'ssjain','ssjain','sumit.elounge@gmail.com','9356425559','Jain',NULL,668.200000,3131.800000,NULL,'INR','248',3,'SS Jain Sabha Patiala','2049-02-20',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-06 08:15:51','2019-04-08 18:15:56',1),(251,'gujral','gujral','sumit.elounge@gmail.com','9356425559','Gujral',NULL,334.000000,466.000000,NULL,'INR','248',3,'Gujral Associates','2049-02-20',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-06 08:19:15','2019-04-06 09:38:57',1),(252,'icaisn','icaisn','sumit.elounge@gmail.com','9356425559','ICAI',NULL,820.000000,180.000000,NULL,'INR','248',3,'ICAI Sangrur','2049-02-20',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-06 08:19:52','2019-04-04 17:52:18',1),(253,'casingla','casingla','sumit.elounge@gmail.com','9356425559','CA Singla',NULL,1497.600000,2.400000,NULL,'INR','248',3,'CA PRADEEP SINGLA & ASSOCIATES','2050-02-20',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-06 08:20:46','2019-03-27 16:35:02',1),(254,'cagarg','cagarg','sumit.elounge@gmail.com','9356425559','CA GARG',NULL,1230.000000,270.000000,NULL,'INR','248',3,'CA MAHESH S GARG & ASSOCIATES','2050-02-20',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-06 08:21:27','2019-02-15 07:59:53',1),(255,'rcajla','rcajla','sumit.elounge@gmail.com','9356425559','RAKESH',NULL,0.000000,NULL,NULL,'INR','248',3,'CA RAKESH CAJLA & ASSOCAITES','2050-02-20',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-06 08:22:27','2019-02-12 17:53:10',1),(256,'svspta','svspta','sumit.elounge@gmail.com','9356425559','Uday',NULL,1827.080000,172.920000,NULL,'INR','248',3,'Summer Valley School, Patiala','2050-02-20',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-06 08:23:58','2019-03-28 11:55:10',1),(257,'garden','garden','sumit.elounge@gmail.com','9356425559','Garden',NULL,2662.780000,1337.220000,NULL,'INR','248',3,'Garden Group','2050-02-20',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-06 08:24:43','2019-02-13 15:29:48',1),(258,'sadana','sadana','sumit. elounge@gmail.com','9356425559','Iqbal',NULL,2199.360000,3088.640000,NULL,'INR','248',3,'Sadana Brothers','2059-02-21',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-06 10:02:59','2019-03-28 08:34:42',1),(259,'uma','uma01','umamaheshwaracomm@gmail.com','9000983466','Sudhaker Goud Gunda',NULL,5.000000,NULL,NULL,'INR','38',3,'Uma Maheshwara Communication','2020-02-28',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-07 06:08:31','2019-04-04 17:52:18',1),(260,'kuppat','kuppat01','kuppatgroups@gmail.com','9893863757','Kuppat Suraj II',NULL,5.000000,NULL,NULL,'INR','38',3,'kuppat groups','2020-01-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-07 11:03:41','2019-04-04 17:52:18',1),(261,'janhit','janhit','sumit.elounge@gmail.com','9356425559','Praveen ',NULL,1447.080000,2752.920000,NULL,'INR','248',3,'Janhit Samiti (Regd) ','2059-02-20',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-07 13:21:09','2019-04-05 16:45:12',1),(262,'gsad','gsad01','gsadvertisement97@gmail.com','9685144000','Devendra Singh Bhadoriya',NULL,5.000000,NULL,NULL,'INR','38',3,'GS Advertisement','2020-01-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-08 12:58:20','2019-04-04 17:52:18',1),(263,'popsypay','popsypay01','admin@popsypay.in','9779196300','Harmandeep',NULL,5.000000,NULL,NULL,'INR','38',3,'POPSYPAY','2020-03-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-11 10:18:58','2019-04-04 17:52:18',1),(264,'cagarg1','cagarg','multilinksolutions@yahoo.in','9356425559','Garg',NULL,0.000000,NULL,NULL,'INR','248',3,'CA GARG AND ASSOCIATES','2056-02-21',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-12 07:10:59','2019-02-12 17:51:01',1),(265,'VINTAGE CHAIR','tarun7700','anuragbulksms@gmail.com','9205446451','TarunG',NULL,1809.000000,391.000000,NULL,'INR','29',3,'BSKD','2022-02-08',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-12 11:39:54','2019-04-09 13:34:35',1),(266,'khanna','sahil12345','sumit.elounge@gmail.com','9356425559','Khanna ',NULL,3776.000000,833.000000,NULL,'INR','248',3,'Khanna Handloom','2079-02-23',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-14 08:04:20','2019-04-04 17:52:18',1),(267,'ajayelec','ajayelec01','ajaychoudhari960@rediffmail.com','9325344160','Ajay',NULL,4.880000,0.120000,NULL,'INR','38',3,'Ajay Electronics.','2020-02-29',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-14 10:39:23','2019-04-04 17:52:18',1),(268,'thinkncode','think01','anibabbar@gmail.com','9812430938','Anirudh Babbar',NULL,5.000000,NULL,NULL,'INR','38',3,'Think N Code','2020-03-01',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-14 10:50:02','2019-04-04 17:52:18',1),(269,'tekniko','tekniko01','info@teknikoglobal.com','9431016052','Vibhas Mishra',NULL,5.000000,NULL,NULL,'INR','38',3,'Teknikoglobal','2020-02-29',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-14 12:32:17','2019-04-04 17:52:18',1),(270,'bskdintl','123456','sachindhir@live.com ','9205446451','bskd',NULL,10.000000,NULL,NULL,'INR','1',2,'BSKD','2023-02-17',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-15 06:04:18','2019-02-15 13:52:50',1),(271,'zuberest','zuberest01','zuberest@gmail.com	','9740821206','Md Zuberr Sayyed',NULL,3.680000,1.320000,NULL,'INR','38',3,'Florence public school','2020-03-01',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-15 10:30:14','2019-04-04 17:52:18',1),(272,'sachin','sachin01','sachin11.bangar@gmail.com','8850476090','Sachin Bangar','D!~272sVOLpvBPkU',3.080000,1.920000,NULL,'INR','38',3,'Freelancer','2020-02-29',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-15 12:06:24','2019-04-06 00:25:03',1),(273,'fairsoft','fairsoft01','venkatfairsoft@gmail.com','9100744477','Mr. Venkat',NULL,10.000000,NULL,NULL,'INR','38',3,'Fairsoft Solutions','2020-02-29',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-15 12:48:29','2019-04-04 17:52:18',1),(274,'oait','oait01','atin.johari@gmail.com','8881233300','Atin Johari',NULL,1541.080000,163.920000,NULL,'INR','38',3,'OAIT','2020-02-29',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-16 06:08:27','2019-04-04 17:52:18',1),(275,'shadab','shadab01','shadabfabrics@gmail.com','9304426591','Mohsin Ansari',NULL,5.000000,NULL,NULL,'INR','38',3,'Shadab Fabrics','2020-02-29',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-16 06:38:22','2019-04-04 17:52:18',1),(276,'nirmal','nirmal01','enquiry@nirmalleisures.in','8007664433','Mr. Sachin',NULL,4.880000,0.120000,NULL,'INR','38',3,'Nirmal Leisures','2020-02-29',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-18 06:00:35','2019-04-04 17:52:18',1),(277,'waris','waris01','warisfabric@gmail.com','9319935356','Waris',NULL,5.000000,NULL,NULL,'INR','38',3,'Waris Fabric','2020-02-29',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-18 07:33:17','2019-04-04 17:52:18',1),(278,'matrix','matrix01','matrixforholidays@gmail.com	','9844094849','DEEPAK V K L',NULL,4.880000,0.120000,NULL,'INR','38',3,'Matrix for Holidays','2020-02-29',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-18 09:36:57','2019-04-04 17:52:18',1),(279,'OOTY','1234','solomon.a@ibottic.com','9845871639','OOTYCONVENT',NULL,1.000000,NULL,NULL,'INR','175',3,'OOTY CONVENT','2020-06-01',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-19 09:04:03','2019-04-04 17:52:18',1),(280,'bgnphs','Bgnphs01','bgnphs@yahoo.com','9739125964','B.G.NATIONAL SCHOOL','D!~280utxIpQX3BW',493.620000,6.380000,NULL,'INR','85',3,'B.G.NATIONAL SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-19 10:27:16','2019-04-04 17:52:18',1),(281,'20087643','KULWANT123','anuragbulksms@gmail.com','9205446451','MODICARE',NULL,0.000000,NULL,NULL,'INR','29',3,'BSKD ( 9205446451)','2022-02-24',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-19 12:07:41','2019-04-04 17:52:18',1),(282,'MODICARE','8376976344','anuragbulksms@gmail.com','9205446451','MODICARE',NULL,0.000000,1051.950000,NULL,'INR','29',3,'BSKD','2022-02-24',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-19 12:11:23','2019-04-04 17:52:18',1),(283,'edtecz','edtecz01','edtecz@outlook.com','9810704315','Ashok',NULL,5.000000,NULL,NULL,'INR','38',3,'edtecz','2020-03-01',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-20 06:26:06','2019-04-04 17:52:18',1),(284,'Jivika','123456','jivika@datagenit.com','9718444060','Jivika Singh ',NULL,3698.900000,45077.200000,NULL,'INR','1',2,'Datagen','2023-02-23',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-23 09:07:09','2019-04-04 19:43:35',1),(285,'sukhendu','123456','salesmondalhomes@gmail.com','08016892892','sukhendu',NULL,3703.900000,45077.200000,NULL,'INR','284',3,'mondal homes','2023-11-23',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-23 09:26:27','2019-04-04 19:43:35',1),(286,'jgspl','jgspl01','Info.jgspl@gmail.com','8149394541','Sagar jaiswal','D!~286Vh7RFHGksF',4746.600000,258.400000,NULL,'INR','1',2,'JGSPL','2020-02-29',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-25 06:45:24','2019-04-09 10:51:10',1),(287,'indiapost','indiapost01','anudeep_sharma@hotmail.com','9417016663','Anudeep Sharma','D!~287EueDiwm4z6',1.160000,3.840000,NULL,'INR','38',3,'India Post','2020-03-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-02-27 06:19:01','2019-04-04 17:52:18',1),(288,'glory','glory01','kyalharshit@gmail.com','8000078216','Harshit',NULL,5.000000,NULL,NULL,'INR','38',3,'Glory Sab','2020-03-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-03-01 06:38:48','2019-04-04 17:52:18',1),(289,'mismatch','mismatch01','abdulmuktadirrt16@gmail.com','8787596378','Abdul Muktadir',NULL,4.760000,0.240000,NULL,'INR','38',3,'mismatch travels & payments solution','2020-04-01',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-03-01 09:49:35','2019-04-04 17:52:18',1),(293,'vyaparapp','484618','shagrawal@vyaparapp.in','7022160505','vyaparapp','D!~293AqfWzCtCYH',50.000000,152.000000,NULL,'INR','1',2,'vyaparapp.in','2023-03-16',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-03-01 10:38:26','2019-04-04 11:14:37',1),(294,'allgotrip','allgotrip01','duksha@gmail.com','8284869050','Mr. Vikram Kotiyal','D!~294jQ1ir5tm4J',3004.760000,0.240000,NULL,'INR','38',3,'Allgotrip','2020-04-30',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-03-04 10:01:14','2019-04-04 17:52:18',1),(295,'pointific','pointific01','navdeep@pointific.com','9711009087','Navdeep Mehta',NULL,10.000000,NULL,NULL,'INR','38',3,'Pointific Digital Private Limited','2020-03-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-03-05 07:20:24','2019-03-05 13:54:27',1),(302,'psidnc','Psidnc01','newpresidency@yahoo.com','9986038577','NEW PRESIDENCY PUBLIC SCHOOL','D!~302j8BSK7tves',97.910000,2.090000,NULL,'INR','85',3,'NEW PRESIDENCY  PUBLIC SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-03-06 11:39:45','2019-04-08 16:05:48',1),(303,'chinmay','chinmay01','nraj.herohonda@gmail.com','9341002860','Mr. Nagaraj',NULL,5.000000,NULL,NULL,'INR','38',3,'Chinmay Motors','2020-03-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-03-07 12:13:17','2019-04-04 17:52:18',1),(345,'ashu2','12345','sharma_ashish48@yahoo.co.in','9716568142','ashok kumar',NULL,100.000000,NULL,NULL,'INR','1',3,'datagen','2019-05-06',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-04-06 12:02:35','2019-04-08 17:27:31',1),(307,'rprpta','rprpta','sumit.elounge@gmail.com','9356425559','Puneet',NULL,271.400000,228.600000,NULL,'INR','248',3,'Royal Patiala Riders','2089-03-19',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-03-11 15:00:52','2019-04-04 17:52:18',1),(308,'pcdenquiry','pcdenquiry01','rajneeshgupta2022@gmail.com','9839019655','Rajneesh Gupta',NULL,5.000000,NULL,NULL,'INR','38',3,'pcdenquiry','2020-03-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-03-13 09:54:53','2019-04-04 17:52:18',1),(309,'amitjn','amitjn','amitjain@yahooo.com','9501207463','AMIT ',NULL,333.000000,1127.200000,NULL,'INR','248',3,'AMIT JAIN & ASSOCIATES','2099-03-28',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-03-15 04:23:45','2019-04-05 09:14:30',1),(310,'SATYA PRAKASH','9582793040','anuragbulksms@gmail.com','9205446451','BSKD ',NULL,2100.740000,0.260000,NULL,'INR','29',3,'BSKD (9205446451)','2022-03-17',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-03-15 09:52:54','2019-04-04 17:52:18',1),(332,'vyaparpromo','123456','shagrawal@vyaparapp.in	','7022160505','vyaparapp',NULL,36933.085000,10616.915000,NULL,'INR','1',3,'vyaparapp.in','2024-04-25',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-04-04 06:00:56','2019-04-08 17:20:58',1),(331,'piyushnigam','Nigam123450','piyush.nigam20@gmail.com','8076565640','Piyush Nigam',NULL,5.000000,NULL,NULL,'INR','1',3,'Kbwallet','2019-05-03',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-04-03 08:21:31','2019-04-04 17:52:18',1),(330,'pnew','123456','pnew3550@gmail.com','9868075640','pnew',NULL,5.000000,NULL,NULL,'INR','54',3,'pnew','2019-07-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-04-01 14:11:16','2019-04-04 17:52:18',1),(329,'teamjp','teamjp','sumit.elounge@gmail.com','9356425559','Team JPS Ghumaan',NULL,3568.750000,6431.250000,NULL,'INR','248',3,'Team Jp','2199-04-01',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-04-01 02:54:37','2019-04-06 17:41:32',1),(328,'ashu4','12345','test@datagenit.com','9716568142','ashish',NULL,5.000000,NULL,NULL,'INR','1',3,'test','2019-04-28',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-03-28 09:20:42','2019-04-04 17:52:18',0),(317,'realmathematics','letsee123','lokesh@datagenit.com','9999183127','realmathematics',NULL,5151.950000,358.050000,NULL,'INR','43',3,'realmathematics','2020-01-16',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-03-16 07:17:53','2019-04-02 09:10:56',1),(318,'Ranjansir','ranjansir','lokesh@datagenit.com','9990214089','Ranjan Sir ',NULL,5367.450000,132.550000,NULL,'INR','43',3,'edu','2020-03-16',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-03-16 12:12:11','2019-04-02 13:17:55',1),(319,'bansal','bansal','sumit.elounge@gmail.com','9356425559','Johny',NULL,1469.600000,3530.400000,NULL,'INR','248',3,'Jd Bansal','2051-12-12',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-03-25 03:57:35','2019-04-08 07:27:28',1),(320,'indian','Indian01','indianchesc@yahoo.com','9739125964','INDIAN CHILDERN ENGLISH SCHOOL','D!~320yQK6E5sC5S',500.000000,NULL,NULL,'INR','85',3,'INDIAN CHILDERN ENGLISH SCHOOL','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-03-25 04:41:57','2019-04-04 17:52:18',1),(321,'allwin','Allwin01','allwin@yahoo.com','9739125964','allwin public school','D!~321wFCj0eNxpL',464.690000,35.310000,NULL,'INR','85',3,'allwin public school','2020-03-25',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-03-25 06:12:52','2019-04-04 17:52:18',1),(322,'rpinfotech','123456','se.santosh@gmail.com','9555447778','rpinfotech',NULL,49.890000,0.110000,NULL,'INR','1',2,'rpinfotech','2024-03-22',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-03-25 09:30:04','2019-03-25 17:43:20',1),(323,'deepak','deepak','sumit.elounge@gmail.com','9356425559','Deepak',NULL,865.400000,2634.600000,NULL,'INR','248',3,'Deepak Madaan & Associates','2099-03-26',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-03-25 15:28:24','2019-04-05 07:10:42',1),(324,'masterdba','masterdba','masterdba@mlink.in.co','9356425559','masterdba',NULL,1541.600000,24158.400000,NULL,'INR','248',3,'masterdba','2019-03-29',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-03-26 01:42:18','2019-04-08 07:51:23',1),(325,'aly','aly01','smartsam.ali@gmail.com','9333022768','Shamsher Ali',NULL,3000.000000,NULL,NULL,'INR','1',2,'ALY MULTI SERVICE','2020-04-30',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-03-26 06:15:16','2019-03-26 12:04:13',1),(326,'nics','592823','sanjaybhatnagar.nics@gmail.com','9873067465','nics',NULL,351392.600000,253279.400000,NULL,'INR','54',3,'nics','2019-12-26',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-03-26 11:58:00','2019-04-09 14:16:54',1),(327,'ajaydang','ajaydang','gyanchanddwivdi@gmail.com','9873919465','ajay dang',NULL,0.000000,NULL,NULL,'INR','43',3,'educational','2020-08-10',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-03-26 13:29:50','2019-04-04 17:52:18',1),(335,'apidata','india2020','datageninternet@gmail.com','9015118172','Maria Smith',NULL,5.000000,NULL,NULL,'INR','1',3,'Datagen Internet Services','2019-05-05',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-04-05 10:32:18','2019-04-05 16:12:13',1),(337,'lasnhs','Lasnhs','lasnhs@gmail.com','9739125964','LITTLE ANGELS SCH DODABALLAPURA',NULL,241.560000,359.440000,NULL,'INR','85',3,'LITTLE ANGELS SCH DODABALLAPURA','2019-12-31',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-04-05 10:35:13','2019-04-08 17:30:15',1),(338,'pramodc','123456','pramod.bars@gmail.com','9958891277','pramod',NULL,13.500000,1.500000,NULL,'INR','1',3,'DATAGEN','2019-05-06',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-04-06 09:45:05','2019-04-06 15:24:21',1),(339,'mnmnn','626426','datagen.2008@gmail.com','9958540461','Ashish Jha',NULL,98.000000,2.000000,NULL,'INR','1',3,'Datagen Internet Services Pvt. Ltd.','2019-05-06',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-04-06 11:02:25','2019-04-06 16:36:16',1),(346,'Sumitdeg','470141','SUMITDEG@GMAIL.COM','9887298888','Sumit deg',NULL,100.000000,NULL,NULL,'INR','1',3,'Deg communication','2019-05-08',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-04-08 07:02:36','2019-04-08 12:32:36',0),(347,'manand742','400847','manand742@gmail.com','8521712647','Anand',NULL,99.500000,0.500000,NULL,'INR','1',3,'AndyTech','2019-05-08',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-04-08 07:04:32','2019-04-08 12:41:35',1),(348,'vgdeva','644010','varundeva@inityhost.com','9008444205','Varun Deva',NULL,100.000000,NULL,NULL,'INR','1',3,'FreeSV','2019-05-08',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-04-08 07:08:45','2019-04-08 12:39:16',1),(349,'inityhost','inityhost01','varundeva@inityhost.com','9008444205','Varun Deva',NULL,100.000000,NULL,NULL,'INR','38',3,'Inityhost','2020-05-01',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-04-08 07:27:35','2019-04-08 12:57:58',1),(350,'kodwani','443102','ebayprotos@gmail.com','9810472502','Deepak',NULL,100.000000,NULL,NULL,'INR','1',3,'24sevenindia','2019-05-08',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-04-08 07:36:10','2019-04-08 13:06:10',0),(351,'kesuhere','478538','keshavkapata3@gmail.com','9812634807','Keshav',NULL,100.000000,NULL,NULL,'INR','1',3,'Dhruv IT Solution','2019-05-08',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-04-08 08:13:28','2019-04-08 13:43:28',0),(352,'as','367570','a@g.com','9716568142','ashu',NULL,100.000000,NULL,NULL,'INR','26',3,'datagen','2019-05-15',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-04-15 09:22:31','2019-04-15 14:52:31',0),(353,'as1','156977','a1@g.com','9716568142','ashok kumar',NULL,100.000000,NULL,NULL,'INR','26',3,'datagen','2019-05-15',0.0000,0.0000,0,NULL,NULL,0,NULL,NULL,1,'2019-04-15 09:33:16','2019-04-15 15:03:16',0),(354,'munna','1234','sharmaji@datagenit.com','9716568142',NULL,NULL,0.000000,NULL,NULL,'INR','2',2,'','2020-12-12',NULL,0.0000,1,NULL,NULL,0,'','',1,'2020-01-13 04:48:33','2020-01-13 12:50:53',1),(355,'munna1','1234','sharmaji@datagenit.com','9716568142',NULL,NULL,0.000000,NULL,NULL,'INR','2',2,'','2020-12-12',NULL,0.0000,1,NULL,NULL,0,'','',1,'2020-01-13 04:59:14','2020-01-13 12:59:14',1),(356,'munna2','123','sharmaji@datagenit.com','9716568142',NULL,NULL,900.000000,NULL,NULL,'INR','2',2,'','2020-12-12',NULL,0.0000,1,NULL,NULL,0,'','',1,'2020-01-13 06:30:44','2020-01-14 12:33:13',1);

/*Table structure for table `users_b` */

DROP TABLE IF EXISTS `users_b`;

CREATE TABLE `users_b` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) NOT NULL,
  `active` int(4) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `profile_group_id` tinyint(4) NOT NULL,
  `organization` varchar(50) NOT NULL,
  `isOtp` tinyint(4) DEFAULT '1',
  `otp` char(6) DEFAULT NULL,
  `country` varchar(100) NOT NULL,
  `remark` text,
  `address` text,
  `master` int(11) DEFAULT NULL,
  `expired_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `smIdx` (`username`,`active`),
  KEY `usrPwd` (`username`,`password`)
) ENGINE=MyISAM AUTO_INCREMENT=1055 DEFAULT CHARSET=latin1;

/*Data for the table `users_b` */

insert  into `users_b`(`id`,`username`,`password`,`email`,`mobile`,`active`,`name`,`profile_group_id`,`organization`,`isOtp`,`otp`,`country`,`remark`,`address`,`master`,`expired_on`,`created_date`,`updated_date`,`status`) values (1,'MK Gupta','123456','mk@datagenit.com','9988758128',1,'MK Gupta',1,'datagenit',0,NULL,'','',NULL,NULL,'2020-01-10 11:42:34','2018-08-08 14:31:05','2020-01-08 23:01:44',1),(2,'Admin','321@123','shrma.ashhish48@gmail.com','9716568142',1,'Admin',2,'Datagen Internet Services',0,'9452','','',NULL,NULL,'2020-01-10 11:42:34','2018-08-16 04:40:54','2019-11-28 13:32:51',1),(3,'ashu','1@123','shrma.ashhish48@gmail.com','8448011802',1,'test',3,'qweq',0,NULL,'','',NULL,NULL,'2020-01-10 11:42:34','2018-09-22 02:10:42','2019-11-28 13:32:16',1);

/*Table structure for table `voice_campaign` */

DROP TABLE IF EXISTS `voice_campaign`;

CREATE TABLE `voice_campaign` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `campaign_name` varchar(100) NOT NULL,
  `template_id` int(11) NOT NULL,
  `audio_id` int(11) DEFAULT NULL,
  `audio_files` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `phonebook_file` text,
  `camp_start_datetime` datetime NOT NULL,
  `camp_end_datetime` datetime DEFAULT NULL,
  `retry` tinyint(4) NOT NULL,
  `retry_type` varchar(50) DEFAULT NULL,
  `retry_time_interval` int(11) DEFAULT NULL,
  `retry_status` tinyint(4) NOT NULL DEFAULT '0',
  `globalblacklist_id` int(11) DEFAULT NULL,
  `caller_id` varchar(15) NOT NULL,
  `ip` text,
  `submitfrom` varchar(50) DEFAULT NULL,
  `route_insert_status` tinyint(4) DEFAULT '0',
  `type` tinyint(4) DEFAULT NULL,
  `keypress` tinyint(4) NOT NULL DEFAULT '0',
  `block_cr` decimal(20,5) NOT NULL DEFAULT '0.00000',
  `refund` decimal(20,5) NOT NULL DEFAULT '0.00000',
  `refund_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tts` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `number_colom` varchar(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `campaign_idx` (`user_id`,`username`,`audio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `voice_campaign` */

/*Table structure for table `voice_queue` */

DROP TABLE IF EXISTS `voice_queue`;

CREATE TABLE `voice_queue` (
  `campaign_id` int(11) NOT NULL,
  `campaign_name` varchar(50) NOT NULL,
  `campaign_templateid` int(11) NOT NULL,
  `campaign_audiofile` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `caller_id` varchar(15) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `ip` text,
  `submitfrom` varchar(50) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('schedule','inqueue') NOT NULL,
  KEY `qdatagen_idx` (`campaign_id`,`campaign_name`,`user_id`,`user_name`,`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `voice_queue` */

/*Table structure for table `voice_reports` */

DROP TABLE IF EXISTS `voice_reports`;

CREATE TABLE `voice_reports` (
  `id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `campaign_name` varchar(50) NOT NULL,
  `campaign_templateid` int(11) NOT NULL,
  `campaign_audiofile` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `caller_id` varchar(15) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `starttime` datetime NOT NULL,
  `endtime` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `AnswerTime` datetime DEFAULT NULL,
  `Retry` tinyint(4) DEFAULT NULL,
  `pulse_count` tinyint(4) DEFAULT NULL,
  `agent_number` varchar(15) DEFAULT NULL,
  `agent_call_starttime` datetime DEFAULT NULL,
  `agent_call_endtime` datetime DEFAULT NULL,
  `agent_duration` int(11) DEFAULT NULL,
  `agent_call_status` varchar(20) DEFAULT NULL,
  `agent_pulse_count` tinyint(4) DEFAULT NULL,
  `keypress` text,
  `voice_id` text,
  `api_camp_id` text,
  `route` varchar(100) DEFAULT NULL,
  `operator` text,
  `circle` text,
  `ip` text,
  `submitfrom` varchar(50) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(50) NOT NULL,
  `otp` varchar(32) DEFAULT NULL,
  `tts` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `camp_id` (`campaign_id`),
  KEY `report_idx` (`campaign_id`,`user_id`,`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `voice_reports` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
