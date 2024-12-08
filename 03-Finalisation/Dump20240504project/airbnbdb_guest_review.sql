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
-- Table structure for table `guest_review`
--

DROP TABLE IF EXISTS `guest_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest_review` (
  `guest_review_id` int NOT NULL AUTO_INCREMENT,
  `guest_id` int DEFAULT NULL,
  `content` text,
  `review_date` date DEFAULT NULL,
  PRIMARY KEY (`guest_review_id`),
  KEY `FK_guest_review_guest_id` (`guest_id`),
  CONSTRAINT `FK_guest_review_guest_id` FOREIGN KEY (`guest_id`) REFERENCES `guest` (`guest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_review`
--

LOCK TABLES `guest_review` WRITE;
/*!40000 ALTER TABLE `guest_review` DISABLE KEYS */;
INSERT INTO `guest_review` VALUES (1,1,'Polite and respectful guest, would host again!','2024-04-01'),(2,2,'Great communication and very tidy.','2024-04-02'),(3,3,'Friendly and easygoing guest, enjoyed hosting them.','2024-04-03'),(4,4,'Respectful of house rules, pleasant stay.','2024-04-04'),(5,5,'Excellent guest, left the place clean and tidy.','2024-04-05'),(6,6,'Wonderful guest, respectful and communicative.','2024-04-06'),(7,7,'Nice and polite, would recommend to other hosts.','2024-04-07'),(8,8,'Pleasure to host, respectful and courteous.','2024-04-08'),(9,9,'Great guest, very considerate and communicative.','2024-04-09'),(10,10,'Perfect guest, would welcome back anytime.','2024-04-10'),(11,11,'Very respectful and easy to communicate with.','2024-04-11'),(12,12,'Fantastic guest, left everything in great condition.','2024-04-12'),(13,13,'Excellent communication and respectful of space.','2024-04-13'),(14,14,'Lovely guest, enjoyed hosting them.','2024-04-14'),(15,15,'Outstanding guest, highly recommended.','2024-04-15'),(16,16,'Very pleasant guest, respectful and kind.','2024-04-16'),(17,17,'Courteous and considerate guest, enjoyed hosting.','2024-04-17'),(18,18,'Responsible and respectful, great experience.','2024-04-18'),(19,19,'Courteous and considerate guest, enjoyed hosting.','2024-04-19'),(20,20,'Exceptional guest, left a positive impression.','2024-04-20'),(21,1,'Courteous and considerate guest, enjoyed hosting.','2024-04-21'),(22,2,'Outstanding guest, highly recommended.','2024-04-22'),(23,3,'Very pleasant guest, respectful and kind.','2024-04-23'),(24,2,'Excellent communication and respectful of space.','2024-04-24'),(25,2,'Nice and polite, would recommend to other hosts.','2024-04-25');
/*!40000 ALTER TABLE `guest_review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-04 22:12:46
