# ************************************************************
# Sequel Pro SQL dump
# バージョン 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# ホスト: 127.0.0.1 (MySQL 5.6.51)
# データベース: mytwitter
# 作成時刻: 2022-01-31 08:05:24 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# テーブルのダンプ tweet
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tweet`;

CREATE TABLE `tweet` (
  `tweet_id` int(11) NOT NULL AUTO_INCREMENT,
  `tweet_message` varchar(255) DEFAULT NULL,
  `tweeted_on` datetime DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`tweet_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tweet` WRITE;
/*!40000 ALTER TABLE `tweet` DISABLE KEYS */;

INSERT INTO `tweet` (`tweet_id`, `tweet_message`, `tweeted_on`, `user_name`, `user_id`)
VALUES
	(77,'git ','2022-01-25 16:05:26','test_user',NULL),
	(113,'1\n2\n3\n4\n5\n6\n7\n8\n9','2022-01-28 17:18:17','test_user',NULL),
	(116,'test','2022-01-28 20:35:17','test_user',NULL),
	(117,'test tweet','2022-01-28 20:35:24','test_user',NULL);

/*!40000 ALTER TABLE `tweet` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `admin_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `name`, `password`, `email`, `admin_flag`)
VALUES
	(1,'test_user','$2a$10$RqIdLBsURxcCjlXs01PWGuoj91i0tzJn0y/DohMmsIFEpdfeP21US','info@example.com',0),
	(2,'test_user2','$2a$10$RqIdLBsURxcCjlXs01PWGuoj91i0tzJn0y/DohMmsIFEpdfeP21US','info2@example.com',0),
	(3,'test_user3','$2a$10$RqIdLBsURxcCjlXs01PWGuoj91i0tzJn0y/DohMmsIFEpdfeP21US','info3@example.com',1);

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
