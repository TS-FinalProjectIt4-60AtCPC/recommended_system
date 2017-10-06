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
DROP DATABASE IF EXISTS `rmutto_movie_rec`;
CREATE DATABASE IF NOT EXISTS `rmutto_movie_rec` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `rmutto_movie_rec`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  KEY `FK_con_role_map_permission_con_permission` (`CON_PERM_ID`)
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
  KEY `FK_con_user_map_role_con_role` (`CON_ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
