-- MySQL dump 10.10
--
-- Host: localhost    Database: LibrarySystems
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `username` varchar(120) default NULL,
  `name` varchar(125) default NULL,
  `password` varchar(125) default NULL,
  `sec_q` varchar(125) default NULL,
  `sec_ans` varchar(125) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--


/*!40000 ALTER TABLE `account` DISABLE KEYS */;
LOCK TABLES `account` WRITE;
INSERT INTO `account` VALUES ('kishor','Kishor Kadam','java@1991','Your NickName?','KK');
UNLOCK TABLES;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `book_id` varchar(10) default NULL,
  `name` varchar(140) default NULL,
  `isbn` varchar(120) default NULL,
  `publisher` varchar(130) default NULL,
  `edition` varchar(110) default NULL,
  `price` varchar(110) default NULL,
  `pages` varchar(110) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--


/*!40000 ALTER TABLE `book` DISABLE KEYS */;
LOCK TABLES `book` WRITE;
INSERT INTO `book` VALUES ('229','Core Java','25356','Narayana Sir','9','550','625');
UNLOCK TABLES;
/*!40000 ALTER TABLE `book` ENABLE KEYS */;

--
-- Table structure for table `issuebook`
--

DROP TABLE IF EXISTS `issuebook`;
CREATE TABLE `issuebook` (
  `book_id` varchar(110) default NULL,
  `student_id` varchar(110) default NULL,
  `bname` varchar(140) default NULL,
  `sname` varchar(140) default NULL,
  `course` varchar(120) default NULL,
  `branch` varchar(110) default NULL,
  `dateofissue` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issuebook`
--


/*!40000 ALTER TABLE `issuebook` DISABLE KEYS */;
LOCK TABLES `issuebook` WRITE;
INSERT INTO `issuebook` VALUES ('229','5580','Core Java','Kishor Kadam','M.Tech','CSE','14 Feb, 2020');
UNLOCK TABLES;
/*!40000 ALTER TABLE `issuebook` ENABLE KEYS */;

--
-- Table structure for table `returnbook`
--

DROP TABLE IF EXISTS `returnbook`;
CREATE TABLE `returnbook` (
  `book_id` varchar(110) default NULL,
  `student_id` varchar(110) default NULL,
  `bname` varchar(140) default NULL,
  `sname` varchar(140) default NULL,
  `course` varchar(120) default NULL,
  `branch` varchar(110) default NULL,
  `dateOfIssue` varchar(130) default NULL,
  `dateOfReturn` varchar(130) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returnbook`
--


/*!40000 ALTER TABLE `returnbook` DISABLE KEYS */;
LOCK TABLES `returnbook` WRITE;
INSERT INTO `returnbook` VALUES ('229','5580','Core Java','Kishor Kadam','M.Tech','CSE','2020-01-02','14 Feb, 2020');
UNLOCK TABLES;
/*!40000 ALTER TABLE `returnbook` ENABLE KEYS */;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_id` varchar(110) default NULL,
  `name` varchar(125) default NULL,
  `father` varchar(125) default NULL,
  `course` varchar(110) default NULL,
  `branch` varchar(110) default NULL,
  `year` varchar(110) default NULL,
  `semester` varchar(110) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--


/*!40000 ALTER TABLE `student` DISABLE KEYS */;
LOCK TABLES `student` WRITE;
INSERT INTO `student` VALUES ('5580','Kishor Kadam','B','M.Tech','CSE','Four','8th');
UNLOCK TABLES;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

