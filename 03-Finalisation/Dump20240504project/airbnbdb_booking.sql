-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: airbddd
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `property_id` int DEFAULT NULL,
  `checkin_date` date DEFAULT NULL,
  `checkout_date` date DEFAULT NULL,
  `nightly_price_dollars` decimal(10,2) DEFAULT NULL,
  `total_nightly_price_dollars` decimal(10,2) DEFAULT NULL,
  `service_fee_dollars` decimal(10,2) DEFAULT NULL,
  `cleaning_fee_dollars` decimal(10,2) DEFAULT NULL,
  `total_price_dollars` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `FK_property_id` (`property_id`),
  CONSTRAINT `FK_property_id` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,1,'2024-04-01','2024-04-05',500.00,2000.00,20.00,10.00,2030.00),(2,1,'2024-04-06','2024-05-06',500.00,15000.00,25.00,12.50,15037.50),(3,2,'2024-04-05','2024-04-10',75.00,375.00,18.00,0.00,393.00),(4,2,'2024-04-11','2024-05-05',75.00,1800.00,22.00,11.00,1833.00),(5,2,'2024-05-06','2024-05-15',75.00,675.00,21.00,10.50,706.50),(6,3,'2024-04-11','2024-04-15',300.00,1200.00,23.00,11.50,1234.50),(7,4,'2024-04-13','2024-05-13',100.00,3000.00,19.00,9.50,3028.50),(8,5,'2024-04-15','2024-05-15',120.00,3600.00,25.00,12.50,3637.50),(9,6,'2024-04-17','2024-04-20',150.00,450.00,26.00,13.00,489.00),(10,7,'2024-04-19','2024-04-29',90.00,900.00,17.00,8.50,925.50),(11,8,'2024-04-21','2024-05-21',250.00,7500.00,27.00,13.50,7540.50),(12,9,'2024-04-23','2024-04-25',180.00,360.00,28.00,0.00,388.00),(13,10,'2024-04-25','2024-04-28',280.00,840.00,29.00,14.50,883.50),(14,11,'2024-04-27','2024-05-06',200.00,1800.00,30.00,0.00,1830.00),(15,12,'2024-04-29','2024-05-01',150.00,300.00,31.00,15.50,346.50),(16,13,'2024-05-01','2024-05-10',120.00,1080.00,32.00,16.00,1128.00),(17,14,'2024-05-03','2024-05-06',180.00,540.00,33.00,16.50,589.50),(18,15,'2024-05-05','2024-05-28',220.00,5060.00,34.00,0.00,5094.00),(19,16,'2024-05-07','2024-06-09',100.00,3300.00,35.00,17.50,3352.50),(20,17,'2024-05-09','2024-06-01',160.00,3680.00,36.00,0.00,3716.00);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-04 22:12:44
