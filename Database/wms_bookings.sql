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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookings` (
  `bookingid` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(45) DEFAULT NULL,
  `moviename` char(40) DEFAULT NULL,
  `theatrename` char(40) DEFAULT NULL,
  `noftickets` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `timings` char(10) DEFAULT NULL,
  `date` char(45) DEFAULT NULL,
  `seats` char(45) DEFAULT NULL,
  `imgpath` char(45) DEFAULT NULL,
  PRIMARY KEY (`bookingid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (11,'mental','Syeera','Asian GPR Multiplex: Kukatpally',6,690,'7:40 PM','11 Fri','C2,D8,D14,I1,I9,N15','syeera.jpg'),(12,'cc','Bheeshma','Asian GPR Multiplex : Kukatpally',1,180,'10:40 PM','08 Tue','B12','bheeshma.jpg'),(13,'cc','Prathi roju pandage','Asian GPR Multiplex : Kukatpally',1,180,'10:40 PM','08 Tue','D13','pratiroju.jpg'),(14,'cc','Saaho','Asian GPR Multiplex : Kukatpally',1,110,'10:40 PM','08 Tue','I9','saaho.jpg'),(15,'cc','Bheeshma','Asian GPR Multiplex : Kukatpally',1,110,'10:40 PM','08 Tue','G8','bheeshma.jpg'),(16,'cc','Syeera','Cinepolis: Manjeera Mall, Kukatpally',1,110,'7:40 PM','08 Tue','H15','syeera.jpg'),(17,'cc','Saaho','PVR Forum Sujana Mall: Kukatpally',4,260,'7:25 PM','08 Tue','L11,M11,N11,O11','saaho.jpg'),(18,'cc','Syeera','PVR Forum Sujana Mall: Kukatpally',2,330,'10:00 AM','08 Tue','C13,C14','syeera.jpg'),(19,'cc','Syeera','Asian GPR Multiplex: Kukatpally',1,180,'10:40 PM','09 Wed','E10','syeera.jpg');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
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
