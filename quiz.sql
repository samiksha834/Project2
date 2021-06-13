-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.18-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for 2pmquizapp
DROP DATABASE IF EXISTS `2pmquizapp`;
CREATE DATABASE IF NOT EXISTS `2pmquizapp` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `2pmquizapp`;

-- Dumping structure for table 2pmquizapp.question
DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(100) DEFAULT NULL,
  `opta` varchar(50) DEFAULT NULL,
  `optb` varchar(50) DEFAULT NULL,
  `optc` varchar(50) DEFAULT NULL,
  `optd` varchar(50) DEFAULT NULL,
  `correct` varchar(10) DEFAULT NULL,
  `tech_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`qid`),
  UNIQUE KEY `question` (`question`),
  KEY `tech_id` (`tech_id`),
  CONSTRAINT `question_ibfk_1` FOREIGN KEY (`tech_id`) REFERENCES `technology` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table 2pmquizapp.result
DROP TABLE IF EXISTS `result`;
CREATE TABLE IF NOT EXISTS `result` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `tech_id` int(11) DEFAULT NULL,
  `marks` float DEFAULT NULL,
  `resdate` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`rid`),
  KEY `user_id` (`user_id`),
  KEY `tech_id` (`tech_id`),
  CONSTRAINT `result_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`uid`),
  CONSTRAINT `result_ibfk_2` FOREIGN KEY (`tech_id`) REFERENCES `technology` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table 2pmquizapp.technology
DROP TABLE IF EXISTS `technology`;
CREATE TABLE IF NOT EXISTS `technology` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  UNIQUE KEY `tname` (`tname`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table 2pmquizapp.user_profile
DROP TABLE IF EXISTS `user_profile`;
CREATE TABLE IF NOT EXISTS `user_profile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `role` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
