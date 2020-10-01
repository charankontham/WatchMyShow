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
-- Table structure for table `cast`
--

DROP TABLE IF EXISTS `cast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cast` (
  `castd` int(11) NOT NULL,
  `hero` char(20) DEFAULT NULL,
  `heroine` char(20) DEFAULT NULL,
  `director` char(20) DEFAULT NULL,
  `name4` char(20) DEFAULT NULL,
  `name5` char(45) DEFAULT NULL,
  PRIMARY KEY (`castd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cast`
--

LOCK TABLES `cast` WRITE;
/*!40000 ALTER TABLE `cast` DISABLE KEYS */;
INSERT INTO `cast` VALUES (1,'Prabhas','Shraddha','Jackie shroff','Neil nithin','Chunky pandey'),(2,'Nithin','Rashmika','Venky kudikala','Vennela','Brahmaji'),(3,'Sai dharam tej','Raashi kanna','Sathya raj','Rao ramesh','Hari teja'),(4,'Chiranjeevi','Kiccha sudeep','Vijay sethupathi','Jagapathi babu','Nayanthara'),(5,'Kiran abbavaram','Rahasya gorak','Divya narni','Rajkumar','Yazurved gurram'),(6,'Nikhil','Lavanya','Tarun arora','Vennela kishore','Nagineedu'),(7,'Kiccha sudeep','Suniel shetty','Sushanth singh','Akanksha singh','Avinash'),(8,'Gopichandh','Mehreen','Zareen khan','Mahesh','Raj kumar'),(9,'Hrithik Roshan','Tiger shroff','Vaani kapor','Ashutosh rana','Anupriya'),(10,'Nani','Karthikeya','Lakhshmi','Priyanka','Anish'),(11,'Khurrana','Nushrat','Vijay razz','Abhishek','Manjot'),(12,'Rajinikanth','Nayanthara','Suniel shetty','Nivetha Thomas','Jatin sharma'),(13,'Sai Ronak','CVL Narasimha','Tanikela barani','Rahul ramakrishna','Preethi asrani');
/*!40000 ALTER TABLE `cast` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-01 14:49:20
