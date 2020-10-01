-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: wms
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `movieid` int(11) NOT NULL AUTO_INCREMENT,
  `moviename` char(40) DEFAULT NULL,
  `genre` char(10) DEFAULT NULL,
  `rating` char(45) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `movieduration` char(15) DEFAULT NULL,
  `image_path` varchar(45) DEFAULT NULL,
  `crewid` int(11) DEFAULT NULL,
  `castid` int(11) DEFAULT NULL,
  `releasedate` char(15) DEFAULT NULL,
  PRIMARY KEY (`movieid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Saaho','Action','80','Telugu','2 hrs 50 mins','saaho.jpg',1,1,'30 Aug, 2019'),(2,'Bheeshma','Comedy','87','Telugu','2 hrs 21 mins','bheeshma.jpg',2,2,'21  Feb, 2020'),(3,'Prathi roju pandage','Comedy','80','Telugu','2 hrs 26 mins','pratiroju.jpg',3,3,'Dec 20, 2019'),(4,'Syeera','Historical','84','Telugu','2 hrs 50 mins','syeera.jpg',4,4,'02 Oct, 2019'),(5,'Raja Vaaru Rani Gaaru','Romantic','81','Telugu','2 hrs 13 mins','rajavaru.jpeg',5,5,'29 Nov, 2019'),(6,'Arjun Suravaram','Crime','81','Telugu','2 hrs 29 mins','arjun.jpeg',6,6,'29 Nov, 2019'),(7,'Pailwaan','Drama','81','Telugu','2 hrs 46 mins','pailwaan.jpg',7,7,'12 Sep, 2019'),(8,'Chanakya','Thriller','70','Telugu','2 hrs 27 mins','chanakya.jpeg',8,8,'05 Oct, 2019'),(9,'War','Thriller','78','Telugu','2 hrs 36 mins','war.jpg',9,9,'02 Oct, 2019'),(10,'Gang Leader','Comedy','83','Telugu','2 hrs 37 mins','gangleader.jpg',10,10,'13 Sep, 2019'),(11,'Dream Girl','Romantic','85','Telugu','2 hrs 05 mins','dreamgirl.jpeg',11,11,'13 Sep, 2019'),(12,'Darbar','Thriller','79','Telugu','2 hrs 40 mins','darbar.jpg',12,12,'09 Jan, 2020'),(13,'Pressure Cooker','Comedy','70','Telugu','2 hrs 07 mins','pressure.jpg',13,13,'Feb 21, 2020');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-01 14:49:21
