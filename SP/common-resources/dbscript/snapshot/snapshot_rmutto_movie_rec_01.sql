-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.17-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5174
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for rmutto_movie_rec
DROP DATABASE IF EXISTS `rmutto_movie_rec_test`;
CREATE DATABASE IF NOT EXISTS `rmutto_movie_rec_test` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `rmutto_movie_rec_test`;

-- Dumping structure for table rmutto_movie_rec.con_enum
DROP TABLE IF EXISTS `con_enum`;
CREATE TABLE IF NOT EXISTS `con_enum` (
  `CON_ENUM_ID` bigint(22) NOT NULL AUTO_INCREMENT,
  `CON_ENUM_CODE` varchar(50) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATE_BY` bigint(22) NOT NULL,
  `UPDATE_DATE` timestamp NULL DEFAULT NULL,
  `UPDATE_BY` bigint(22) DEFAULT NULL,
  PRIMARY KEY (`CON_ENUM_ID`),
  UNIQUE KEY `CON_ENUM_CODE` (`CON_ENUM_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table rmutto_movie_rec.con_enum_message
DROP TABLE IF EXISTS `con_enum_message`;
CREATE TABLE IF NOT EXISTS `con_enum_message` (
  `CON_ENUM_MSG_ID` bigint(22) NOT NULL AUTO_INCREMENT,
  `CON_ENUM_ID` bigint(22) NOT NULL,
  `CON_ENUM_MESSAGE` varchar(50) DEFAULT NULL,
  `CON_ENUM_VALUE` varchar(50) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATE_BY` bigint(22) NOT NULL,
  `UPDATE_DATE` timestamp NULL DEFAULT NULL,
  `UPDATE_BY` bigint(22) DEFAULT NULL,
  PRIMARY KEY (`CON_ENUM_MSG_ID`),
  UNIQUE KEY `CON_ENUM_MESSAGE` (`CON_ENUM_MESSAGE`),
  UNIQUE KEY `CON_ENUM_VALUE` (`CON_ENUM_VALUE`),
  KEY `FK_con_enum_message_con_enum` (`CON_ENUM_ID`),
  CONSTRAINT `FK_con_enum_message_con_enum` FOREIGN KEY (`CON_ENUM_ID`) REFERENCES `con_enum` (`CON_ENUM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table rmutto_movie_rec.con_permission
DROP TABLE IF EXISTS `con_permission`;
CREATE TABLE IF NOT EXISTS `con_permission` (
  `CON_PERM_ID` bigint(22) NOT NULL AUTO_INCREMENT,
  `CON_PERM_OBJ` varchar(50) NOT NULL,
  `CON_PERM_NAME` varchar(50) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATE_BY` bigint(22) NOT NULL,
  `UPDATE_DATE` timestamp NULL DEFAULT NULL,
  `UPDATE_BY` bigint(22) DEFAULT NULL,
  PRIMARY KEY (`CON_PERM_ID`),
  UNIQUE KEY `CON_PERM_NAME` (`CON_PERM_NAME`),
  UNIQUE KEY `CON_PERM_OBJ` (`CON_PERM_OBJ`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table rmutto_movie_rec.con_role
DROP TABLE IF EXISTS `con_role`;
CREATE TABLE IF NOT EXISTS `con_role` (
  `CON_ROLE_ID` bigint(22) NOT NULL AUTO_INCREMENT,
  `CON_ROLE_NAME` varchar(50) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATE_BY` bigint(22) NOT NULL,
  `UPDATE_DATE` timestamp NULL DEFAULT NULL,
  `UPDATE_BY` bigint(22) DEFAULT NULL,
  PRIMARY KEY (`CON_ROLE_ID`),
  UNIQUE KEY `CON_ROLE_NAME` (`CON_ROLE_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table rmutto_movie_rec.con_role_map_permission
DROP TABLE IF EXISTS `con_role_map_permission`;
CREATE TABLE IF NOT EXISTS `con_role_map_permission` (
  `CON_RMP_ID` bigint(22) NOT NULL AUTO_INCREMENT,
  `CON_ROLE_ID` bigint(22) NOT NULL,
  `CON_PERM_ID` bigint(22) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATE_BY` bigint(22) NOT NULL,
  `UPDATE_DATE` timestamp NULL DEFAULT NULL,
  `UPDATE_BY` bigint(22) DEFAULT NULL,
  PRIMARY KEY (`CON_RMP_ID`),
  KEY `FK_con_role_map_permission_con_role` (`CON_ROLE_ID`),
  KEY `FK_con_role_map_permission_con_permission` (`CON_PERM_ID`),
  CONSTRAINT `FK_con_role_map_permission_con_permission` FOREIGN KEY (`CON_PERM_ID`) REFERENCES `con_permission` (`CON_PERM_ID`),
  CONSTRAINT `FK_con_role_map_permission_con_role` FOREIGN KEY (`CON_ROLE_ID`) REFERENCES `con_role` (`CON_ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table rmutto_movie_rec.con_system
DROP TABLE IF EXISTS `con_system`;
CREATE TABLE IF NOT EXISTS `con_system` (
  `CON_SYS_ID` bigint(22) NOT NULL AUTO_INCREMENT,
  `CON_SYS_CODE` varchar(50) NOT NULL DEFAULT '0',
  `CON_SYS_DESC` varchar(1000) NOT NULL DEFAULT '0',
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATE_BY` bigint(22) NOT NULL,
  `UPDATE_DATE` timestamp NULL DEFAULT NULL,
  `UPDATE_BY` bigint(22) DEFAULT NULL,
  PRIMARY KEY (`CON_SYS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table rmutto_movie_rec.con_user
DROP TABLE IF EXISTS `con_user`;
CREATE TABLE IF NOT EXISTS `con_user` (
  `CON_USER_ID` bigint(22) NOT NULL AUTO_INCREMENT,
  `CON_USER_NAME` varchar(50) NOT NULL,
  `CON_USER_PASSWORD` varchar(255) NOT NULL,
  `CON_USER_EMAIL` varchar(255) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATE_BY` bigint(22) NOT NULL,
  `UPDATE_DATE` timestamp NULL DEFAULT NULL,
  `UPDATE_BY` bigint(22) DEFAULT NULL,
  PRIMARY KEY (`CON_USER_ID`),
  UNIQUE KEY `CON_USER_NAME` (`CON_USER_NAME`),
  UNIQUE KEY `CON_USER_EMAIL` (`CON_USER_EMAIL`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table rmutto_movie_rec.con_user_map_role
DROP TABLE IF EXISTS `con_user_map_role`;
CREATE TABLE IF NOT EXISTS `con_user_map_role` (
  `CON_UMR_ID` bigint(22) NOT NULL AUTO_INCREMENT,
  `CON_USER_ID` bigint(22) NOT NULL,
  `CON_ROLE_ID` bigint(22) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATE_BY` bigint(22) NOT NULL,
  `UPDATE_DATE` timestamp NULL DEFAULT NULL,
  `UPDATE_BY` bigint(22) DEFAULT NULL,
  PRIMARY KEY (`CON_UMR_ID`),
  KEY `FK_con_user_map_role_con_user` (`CON_USER_ID`),
  KEY `FK_con_user_map_role_con_role` (`CON_ROLE_ID`),
  CONSTRAINT `FK_con_user_map_role_con_role` FOREIGN KEY (`CON_ROLE_ID`) REFERENCES `con_role` (`CON_ROLE_ID`),
  CONSTRAINT `FK_con_user_map_role_con_user` FOREIGN KEY (`CON_USER_ID`) REFERENCES `con_user` (`CON_USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table rmutto_movie_rec.mnm_comment
DROP TABLE IF EXISTS `mnm_comment`;
CREATE TABLE IF NOT EXISTS `mnm_comment` (
  `MNM_COMMENT_ID` bigint(22) NOT NULL AUTO_INCREMENT,
  `MNM_COMMENT_DESC` bigint(22) DEFAULT NULL,
  `MNM_MOVIE_ID` bigint(22) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATE_BY` bigint(22) NOT NULL,
  `UPDATE_DATE` timestamp NULL DEFAULT NULL,
  `UPDATE_BY` bigint(22) DEFAULT NULL,
  PRIMARY KEY (`MNM_COMMENT_ID`),
  KEY `FK_mnm_comment_mnm_movie` (`MNM_MOVIE_ID`),
  CONSTRAINT `FK_mnm_comment_mnm_movie` FOREIGN KEY (`MNM_MOVIE_ID`) REFERENCES `mnm_movie` (`MNM_MOVIE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table rmutto_movie_rec.mnm_comment_map_user
DROP TABLE IF EXISTS `mnm_comment_map_user`;
CREATE TABLE IF NOT EXISTS `mnm_comment_map_user` (
  `MNM_CMU_ID` bigint(22) NOT NULL AUTO_INCREMENT,
  `MNM_COMMENT_ID` bigint(22) NOT NULL,
  `CON_USER_ID` bigint(22) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATE_BY` bigint(22) NOT NULL,
  `UPDATE_DATE` timestamp NULL DEFAULT NULL,
  `UPDATE_BY` bigint(22) DEFAULT NULL,
  PRIMARY KEY (`MNM_CMU_ID`),
  KEY `FK_mnm_comment_map_user_mnm_comment` (`MNM_COMMENT_ID`),
  KEY `FK_mnm_comment_map_user_con_user` (`CON_USER_ID`),
  CONSTRAINT `FK_mnm_comment_map_user_con_user` FOREIGN KEY (`CON_USER_ID`) REFERENCES `con_user` (`CON_USER_ID`),
  CONSTRAINT `FK_mnm_comment_map_user_mnm_comment` FOREIGN KEY (`MNM_COMMENT_ID`) REFERENCES `mnm_comment` (`MNM_COMMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table rmutto_movie_rec.mnm_map_movie
DROP TABLE IF EXISTS `mnm_map_movie`;
CREATE TABLE IF NOT EXISTS `mnm_map_movie` (
  `MNM_MM_ID` bigint(22) NOT NULL AUTO_INCREMENT,
  `MNM_MOVIE_ID` bigint(22) NOT NULL,
  `MNM_MOVIE_CATEGORY_ID` bigint(22) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATE_BY` bigint(22) NOT NULL,
  `UPDATE_DATE` timestamp NULL DEFAULT NULL,
  `UPDATE_BY` bigint(22) DEFAULT NULL,
  PRIMARY KEY (`MNM_MM_ID`),
  KEY `FK_mnm_map_movie_mnm_movie` (`MNM_MOVIE_ID`),
  KEY `FK_mnm_map_movie_mnm_movie_category` (`MNM_MOVIE_CATEGORY_ID`),
  CONSTRAINT `FK_mnm_map_movie_mnm_movie` FOREIGN KEY (`MNM_MOVIE_ID`) REFERENCES `mnm_movie` (`MNM_MOVIE_ID`),
  CONSTRAINT `FK_mnm_map_movie_mnm_movie_category` FOREIGN KEY (`MNM_MOVIE_CATEGORY_ID`) REFERENCES `mnm_movie_category` (`MNM_MOVIE_CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table rmutto_movie_rec.mnm_movie
DROP TABLE IF EXISTS `mnm_movie`;
CREATE TABLE IF NOT EXISTS `mnm_movie` (
  `MNM_MOVIE_ID` bigint(22) NOT NULL AUTO_INCREMENT,
  `MNM_MOVIE_NAME` varchar(250) DEFAULT NULL,
  `MNM_MOVIE_NAME_EN` varchar(250) DEFAULT NULL,
  `MNM_MOVIE_DESC` varchar(250) DEFAULT NULL,
  `MNM_MOVIE_DESC_EN` varchar(250) DEFAULT NULL,
  `MNM_MOVIE_IMG_PATH` varchar(250) DEFAULT NULL,
  `MNM_MOVIE_TRAILER_PATH` varchar(250) DEFAULT NULL,
  `MNM_MOVIE_MEDIA_PATH` varchar(250) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATE_BY` bigint(22) NOT NULL,
  `UPDATE_DATE` timestamp NULL DEFAULT NULL,
  `UPDATE_BY` bigint(22) DEFAULT NULL,
  PRIMARY KEY (`MNM_MOVIE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table rmutto_movie_rec.mnm_movie_category
DROP TABLE IF EXISTS `mnm_movie_category`;
CREATE TABLE IF NOT EXISTS `mnm_movie_category` (
  `MNM_MOVIE_CATEGORY_ID` bigint(22) NOT NULL AUTO_INCREMENT,
  `MNM_MOVIE_CATEGORY_NAME` varchar(250) DEFAULT NULL,
  `MNM_MOVIE_CATEGORY_NAME_EN` varchar(250) DEFAULT NULL,
  `MNM_MOVIE_CATEGORY_DESC` varchar(250) DEFAULT NULL,
  `MNM_MOVIE_CATEGORY_DESC_EN` varchar(250) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATE_BY` bigint(22) NOT NULL,
  `UPDATE_DATE` timestamp NULL DEFAULT NULL,
  `UPDATE_BY` bigint(22) DEFAULT NULL,
  PRIMARY KEY (`MNM_MOVIE_CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table rmutto_movie_rec.mnm_rate
DROP TABLE IF EXISTS `mnm_rate`;
CREATE TABLE IF NOT EXISTS `mnm_rate` (
  `MNM_RATE_ID` bigint(22) NOT NULL AUTO_INCREMENT,
  `MNM_RATING` float DEFAULT NULL,
  `MNM_MOVIE_ID` bigint(22) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATE_BY` bigint(22) NOT NULL,
  `UPDATE_DATE` timestamp NULL DEFAULT NULL,
  `UPDATE_BY` bigint(22) DEFAULT NULL,
  PRIMARY KEY (`MNM_RATE_ID`),
  KEY `FK_mnm_rate_mnm_movie` (`MNM_MOVIE_ID`),
  CONSTRAINT `FK_mnm_rate_mnm_movie` FOREIGN KEY (`MNM_MOVIE_ID`) REFERENCES `mnm_movie` (`MNM_MOVIE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table rmutto_movie_rec.mnm_rate_map_user
DROP TABLE IF EXISTS `mnm_rate_map_user`;
CREATE TABLE IF NOT EXISTS `mnm_rate_map_user` (
  `MNM_RMU_ID` bigint(22) NOT NULL AUTO_INCREMENT,
  `MNM_RATE_ID` bigint(22) NOT NULL,
  `CON_USER_ID` bigint(22) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATE_BY` bigint(22) NOT NULL,
  `UPDATE_DATE` timestamp NULL DEFAULT NULL,
  `UPDATE_BY` bigint(22) DEFAULT NULL,
  PRIMARY KEY (`MNM_RMU_ID`),
  KEY `FK_mnm_rate_map_user_mnm_rate` (`MNM_RATE_ID`),
  KEY `FK_mnm_rate_map_user_con_user` (`CON_USER_ID`),
  CONSTRAINT `FK_mnm_rate_map_user_con_user` FOREIGN KEY (`CON_USER_ID`) REFERENCES `con_user` (`CON_USER_ID`),
  CONSTRAINT `FK_mnm_rate_map_user_mnm_rate` FOREIGN KEY (`MNM_RATE_ID`) REFERENCES `mnm_rate` (`MNM_RATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
