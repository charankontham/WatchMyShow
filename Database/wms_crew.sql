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
-- Table structure for table `crew`
--

DROP TABLE IF EXISTS `crew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crew` (
  `crewid` int(11) NOT NULL AUTO_INCREMENT,
  `name1` char(20) DEFAULT NULL,
  `name2` char(20) DEFAULT NULL,
  `name3` char(20) DEFAULT NULL,
  `name4` char(20) DEFAULT NULL,
  `name5` char(20) DEFAULT NULL,
  PRIMARY KEY (`crewid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crew`
--

LOCK TABLES `crew` WRITE;
/*!40000 ALTER TABLE `crew` DISABLE KEYS */;
INSERT INTO `crew` VALUES (1,'Sujeeth','Gibran','Vinod','Vamshi','Madhie'),(2,'Venky kudumula','Suryadevara','Sagar mahati','Sai sriram','Navin nooli'),(3,'Allu aravind','Bunny vas','S Thaman','venkatesh','Maruthi'),(4,'Surender','Ram charan','Paruchuri brothers','Amit trivedi','Sreekar prasad'),(5,'Jay k','Ravi kiran kola','Manovikas D','Manoj kumar','Amardeep'),(6,'Tn Santosh','Raj kumar','Tagore madhu','Sam C.S','Suryaa'),(7,'S krishna','Swapna','D S Kannan','Arjun janya','Ruben'),(8,'Thiru','Vishal','Vetri','Ramabramham','Kishore'),(9,'Siddarth anand','Aditya cho[ra','Vishal shekar','Aarif','Abbas'),(10,'Vikram kumar','Mohan','Anirudh','Suresh','Chinna'),(11,'Raaj','Shobha kapoor','Ekta kapoor','Ruchika kapoor','Abhishek'),(12,'A R Murga doss','Anirudh','Santosh','Sreekar','Chinna'),(13,'Sunil','Harsha vardhan','Sushil','Sujoi','Appi reddy');
/*!40000 ALTER TABLE `crew` ENABLE KEYS */;
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
