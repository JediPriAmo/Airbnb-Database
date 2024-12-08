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
-- Table structure for table `booking_guests`
--

DROP TABLE IF EXISTS `booking_guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_guests` (
  `booking_id` int NOT NULL,
  `guest_id` int NOT NULL,
  `num_guests` int DEFAULT NULL,
  `booking_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`booking_id`,`guest_id`),
  KEY `FK_guest_id` (`guest_id`),
  CONSTRAINT `FK_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  CONSTRAINT `FK_guest_id` FOREIGN KEY (`guest_id`) REFERENCES `guest` (`guest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_guests`
--

LOCK TABLES `booking_guests` WRITE;
/*!40000 ALTER TABLE `booking_guests` DISABLE KEYS */;
INSERT INTO `booking_guests` VALUES (1,1,1,'Pending'),(1,20,5,'Confirmed'),(2,2,2,'Cancelled'),(2,20,3,'Rejceted'),(3,3,2,'Expired'),(3,19,2,'Pending'),(4,4,2,'Pending'),(5,5,1,'Expired'),(6,6,4,'Cancelled'),(7,4,3,'Confirmed'),(7,7,3,'Expired'),(7,11,4,'Pending'),(8,8,2,'Rejected'),(9,9,6,'Rejected'),(10,10,2,'Confirmed'),(11,11,3,'Confirmed'),(12,3,6,'Confirmed'),(12,8,2,'Confirmed'),(12,12,3,'Cancelled'),(12,16,1,'Rejected'),(13,13,1,'Pending'),(14,14,1,'Pending'),(15,15,2,'Expired'),(16,16,2,'Confirmed'),(17,17,4,'Confirmed'),(18,18,4,'Pending'),(19,19,2,'Cancelled'),(20,20,3,'Expired');
/*!40000 ALTER TABLE `booking_guests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-04 22:12:45
