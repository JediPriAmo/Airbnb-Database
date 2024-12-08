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
-- Table structure for table `component_rating`
--

DROP TABLE IF EXISTS `component_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component_rating` (
  `rating_id` int NOT NULL AUTO_INCREMENT,
  `property_review_id` int DEFAULT NULL,
  `cleanliness` int DEFAULT NULL,
  `accuracy` int DEFAULT NULL,
  `check_in` int DEFAULT NULL,
  `communication` int DEFAULT NULL,
  `location` int DEFAULT NULL,
  `value` int DEFAULT NULL,
  PRIMARY KEY (`rating_id`),
  KEY `FK_component_rating_property_review_id_idx` (`property_review_id`),
  CONSTRAINT `FK_component_rating_property_review_id` FOREIGN KEY (`property_review_id`) REFERENCES `property_review` (`property_review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component_rating`
--

LOCK TABLES `component_rating` WRITE;
/*!40000 ALTER TABLE `component_rating` DISABLE KEYS */;
INSERT INTO `component_rating` VALUES (1,1,4,3,4,4,4,3),(2,4,5,5,4,5,5,4),(3,7,3,3,4,2,3,3),(4,8,4,5,5,5,5,5),(5,9,5,5,5,5,5,5),(6,10,4,4,5,5,5,4),(7,11,4,3,4,4,4,3),(8,12,3,2,3,2,2,2),(9,15,4,4,4,4,4,4),(10,16,3,2,3,3,2,4),(11,17,2,1,3,2,2,2),(12,18,4,2,2,2,2,1),(13,19,4,2,4,5,4,4),(14,20,3,5,4,5,5,5),(15,21,5,5,4,4,4,4),(16,22,5,5,5,5,5,5),(17,23,3,3,3,2,3,4),(18,24,5,4,3,3,3,3),(19,25,5,5,5,5,5,5),(20,26,5,4,4,1,4,4);
/*!40000 ALTER TABLE `component_rating` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-04 22:12:43
