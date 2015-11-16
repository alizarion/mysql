
-- What's done in this file shouldn't be replicated
			--  or products like mysql-fabric won't work
SET @@SESSION.SQL_LOG_BIN=0;
DELETE FROM mysql.user ;
CREATE USER 'root'@'%' IDENTIFIED BY 'toor' ;
GRANT ALL ON *.* TO 'root'@'%' WITH GRANT OPTION ;
DROP DATABASE IF EXISTS test ;
=FLUSH PRIVILEGES ;
-- --------------------------------------------------------
-- Hôte:                         192.168.99.100
-- Version du serveur:           5.5.5-10.0.22-MariaDB-1~jessie - mariadb.org binary distribution
-- Serveur OS:                   debian-linux-gnu
-- HeidiSQL Version:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Export de la structure de la base pour my_custom_database
DROP DATABASE IF EXISTS `my_custom_database`;
CREATE DATABASE IF NOT EXISTS `my_custom_database` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `my_custom_database`;


-- Export de la structure de table my_custom_database. my_custom_table_with_data
DROP TABLE IF EXISTS `my_custom_table_with_data`;
CREATE TABLE IF NOT EXISTS `my_custom_table_with_data` (
  `username` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Export de données de la table my_custom_database.my_custom_table_with_data: ~0 rows (environ)
/*!40000 ALTER TABLE `my_custom_table_with_data` DISABLE KEYS */;
INSERT INTO `my_custom_table_with_data` (`username`, `firstname`, `id`) VALUES
	('hello', 'world', 1);
/*!40000 ALTER TABLE `my_custom_table_with_data` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
