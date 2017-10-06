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

-- Dumping data for table rmutto_movie_rec.con_permission: ~5 rows (approximately)
/*!40000 ALTER TABLE `con_permission` DISABLE KEYS */;
REPLACE INTO `con_permission` (`CON_PERM_ID`, `CON_PERM_OBJ`, `CON_PERM_NAME`, `CREATE_DATE`, `CREATE_BY`, `UPDATE_DATE`, `UPDATE_BY`) VALUES
	(1, 'ACLOG0101', 'Sign In Screen', CURRENT_TIMESTAMP, 1, NULL, NULL),
    (2, 'ACLOG0102', 'Forgot Password', CURRENT_TIMESTAMP, 1, NULL, NULL),
	(3, 'ACMGT0101', 'Search Account', CURRENT_TIMESTAMP, 1, NULL, NULL),
	(4, 'ACMGT0102', 'Manage Account', CURRENT_TIMESTAMP, 1, NULL, NULL),
	(5, 'MOVIE0101', 'Movie - List', CURRENT_TIMESTAMP, 1, NULL, NULL),
    (6, 'MOVIE0102', 'Movie - Detail', CURRENT_TIMESTAMP, 1, NULL, NULL),
	(7, 'MOVIE0201', 'Movie - Management', CURRENT_TIMESTAMP, 1, NULL, NULL);
    
/*!40000 ALTER TABLE `con_permission` ENABLE KEYS */;

-- Dumping data for table rmutto_movie_rec.con_role: ~2 rows (approximately)
/*!40000 ALTER TABLE `con_role` DISABLE KEYS */;
REPLACE INTO `con_role` (`CON_ROLE_ID`, `CON_ROLE_NAME`, `CREATE_DATE`, `CREATE_BY`, `UPDATE_DATE`, `UPDATE_BY`) VALUES
	(1, 'admin', CURRENT_TIMESTAMP, 1, NULL, NULL),
	(2, 'user', CURRENT_TIMESTAMP, 1, NULL, NULL);
/*!40000 ALTER TABLE `con_role` ENABLE KEYS */;

-- Dumping data for table rmutto_movie_rec.con_role_map_permission: ~0 rows (approximately)
/*!40000 ALTER TABLE `con_role_map_permission` DISABLE KEYS */;
REPLACE INTO `con_role_map_permission` (`CON_RMP_ID`, `CON_ROLE_ID`, `CON_PERM_ID`, `CREATE_DATE`, `CREATE_BY`, `UPDATE_DATE`, `UPDATE_BY`) VALUES
	(1, 1, 1, CURRENT_TIMESTAMP, 1, NULL, NULL),
	(2, 1, 2, CURRENT_TIMESTAMP, 1, NULL, NULL),
	(3, 1, 3, CURRENT_TIMESTAMP, 1, NULL, NULL),
	(4, 1, 4, CURRENT_TIMESTAMP, 1, NULL, NULL),
	(5, 1, 5, CURRENT_TIMESTAMP, 1, NULL, NULL),
    (6, 1, 6, CURRENT_TIMESTAMP, 1, NULL, NULL),
    (7, 1, 7, CURRENT_TIMESTAMP, 1, NULL, NULL),
	(8, 2, 1, CURRENT_TIMESTAMP, 1, NULL, NULL),
	(9, 2, 2, CURRENT_TIMESTAMP, 1, NULL, NULL),
	(10, 2, 4, CURRENT_TIMESTAMP, 1, NULL, NULL),
    (11, 2, 5, CURRENT_TIMESTAMP, 1, NULL, NULL),
    (12, 2, 6, CURRENT_TIMESTAMP, 1, NULL, NULL);
/*!40000 ALTER TABLE `con_role_map_permission` ENABLE KEYS */;

-- Dumping data for table rmutto_movie_rec.con_user: ~12 rows (approximately)
/*!40000 ALTER TABLE `con_user` DISABLE KEYS */;
REPLACE INTO `con_user` (`CON_USER_ID`, `CON_USER_NAME`, `CON_USER_PASSWORD`, `CON_USER_EMAIL`, `CREATE_DATE`, `CREATE_BY`, `UPDATE_DATE`, `UPDATE_BY`) VALUES
	(1, 'admin', 'b9b8ffeb2ea155343849afca4eac320bddac90335fc2e84eac19291c5af88eaa', 'admin@admin.com', CURRENT_TIMESTAMP, 1, NULL, NULL),
	(2, 'user01', 'b9b8ffeb2ea155343849afca4eac320bddac90335fc2e84eac19291c5af88eaa', 'user01@user.com', CURRENT_TIMESTAMP, 1, NULL, NULL),
	(3, 'user02', 'b9b8ffeb2ea155343849afca4eac320bddac90335fc2e84eac19291c5af88eaa', 'user02@user.com', CURRENT_TIMESTAMP, 1, NULL, NULL),
	(4, 'user03', 'b9b8ffeb2ea155343849afca4eac320bddac90335fc2e84eac19291c5af88eaa', 'user03@user.com', CURRENT_TIMESTAMP, 1, NULL, NULL),
	(5, 'user04', 'b9b8ffeb2ea155343849afca4eac320bddac90335fc2e84eac19291c5af88eaa', 'user04@user.com', CURRENT_TIMESTAMP, 1, NULL, NULL),
	(6, 'user05', 'b9b8ffeb2ea155343849afca4eac320bddac90335fc2e84eac19291c5af88eaa', 'user05@user.com', CURRENT_TIMESTAMP, 1, NULL, NULL),
	(7, 'user06', 'b9b8ffeb2ea155343849afca4eac320bddac90335fc2e84eac19291c5af88eaa', 'user06@user.com', CURRENT_TIMESTAMP, 1, NULL, NULL),
	(8, 'user07', 'b9b8ffeb2ea155343849afca4eac320bddac90335fc2e84eac19291c5af88eaa', 'user07@user.com', CURRENT_TIMESTAMP, 1, NULL, NULL),
	(9, 'user08', 'b9b8ffeb2ea155343849afca4eac320bddac90335fc2e84eac19291c5af88eaa', 'user08@user.com', CURRENT_TIMESTAMP, 1, NULL, NULL),
	(10, 'user09', 'b9b8ffeb2ea155343849afca4eac320bddac90335fc2e84eac19291c5af88eaa', 'user09@user.com', CURRENT_TIMESTAMP, 1, NULL, NULL),
	(11, 'user10', 'b9b8ffeb2ea155343849afca4eac320bddac90335fc2e84eac19291c5af88eaa', 'user10@user.com', CURRENT_TIMESTAMP, 1, NULL, NULL),
	(12, 'user11', 'b9b8ffeb2ea155343849afca4eac320bddac90335fc2e84eac19291c5af88eaa', 'user11@user.com', CURRENT_TIMESTAMP, 0, NULL, NULL);
/*!40000 ALTER TABLE `con_user` ENABLE KEYS */;

-- Dumping data for table rmutto_movie_rec.con_user_map_role: ~11 rows (approximately)
/*!40000 ALTER TABLE `con_user_map_role` DISABLE KEYS */;
REPLACE INTO `con_user_map_role` (`CON_UMR_ID`, `CON_USER_ID`, `CON_ROLE_ID`, `CREATE_DATE`, `CREATE_BY`, `UPDATE_DATE`, `UPDATE_BY`) VALUES
	(1, 1, 1, CURRENT_TIMESTAMP, 1, NULL, NULL),
	(2, 2, 2, CURRENT_TIMESTAMP, 1, NULL, NULL),
	(3, 3, 2, CURRENT_TIMESTAMP, 1, NULL, NULL),
	(4, 4, 2, CURRENT_TIMESTAMP, 1, NULL, NULL),
	(5, 5, 2, CURRENT_TIMESTAMP, 1, NULL, NULL),
	(6, 6, 2, CURRENT_TIMESTAMP, 1, NULL, NULL),
	(7, 7, 2, CURRENT_TIMESTAMP, 1, NULL, NULL),
	(8, 8, 2, CURRENT_TIMESTAMP, 1, NULL, NULL),
	(9, 9, 2, CURRENT_TIMESTAMP, 1, NULL, NULL),
	(10, 10, 2, CURRENT_TIMESTAMP, 1, NULL, NULL),
	(11, 11, 2, CURRENT_TIMESTAMP, 1, NULL, NULL);
/*!40000 ALTER TABLE `con_user_map_role` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
