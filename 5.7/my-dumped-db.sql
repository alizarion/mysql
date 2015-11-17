

SET @@SESSION.SQL_LOG_BIN=0;
DELETE FROM mysql.user ;
CREATE USER 'root'@'%' IDENTIFIED BY 'toor' ;
GRANT ALL ON *.* TO 'root'@'%' WITH GRANT OPTION ;
DROP DATABASE IF EXISTS test ;
FLUSH PRIVILEGES ;

-- Export de la structure de la base pour my_custom_database
DROP DATABASE IF EXISTS 'my_custom_database';
CREATE DATABASE IF NOT EXISTS 'my_custom_database' /*!40100 DEFAULT CHARACTER SET latin1 */;
USE 'my_custom_database';


-- Export de la structure de table my_custom_database. my_custom_table_with_data
DROP TABLE IF EXISTS 'my_custom_table_with_data';
CREATE TABLE IF NOT EXISTS 'my_custom_table_with_data' (
  'username' varchar(50) DEFAULT NULL,
  'firstname' varchar(50) DEFAULT NULL,
  'id' int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY ('id')
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Export de données de la table my_custom_database.my_custom_table_with_data: ~0 rows (environ)
/*!40000 ALTER TABLE `my_custom_table_with_data` DISABLE KEYS */;
INSERT INTO 'my_custom_table_with_data' ('username', 'firstname', 'id') VALUES
	('hello', 'world', 1);

