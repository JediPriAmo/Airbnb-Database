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
-- Table structure for table `property_amenities`
--

DROP TABLE IF EXISTS `property_amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_amenities` (
  `property_id` int NOT NULL,
  `amenities_id` int NOT NULL,
  PRIMARY KEY (`property_id`,`amenities_id`),
  KEY `FK_property_amenities_amenities_id` (`amenities_id`),
  CONSTRAINT `FK_property_amenities_amenities_id` FOREIGN KEY (`amenities_id`) REFERENCES `amenities` (`amenities_id`),
  CONSTRAINT `FK_property_amenities_property_id` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_amenities`
--

LOCK TABLES `property_amenities` WRITE;
/*!40000 ALTER TABLE `property_amenities` DISABLE KEYS */;
INSERT INTO `property_amenities` VALUES (1,1),(3,1),(6,1),(22,1),(1,2),(5,2),(6,2),(23,2),(1,3),(7,3),(23,3),(1,4),(4,4),(8,4),(24,4),(5,5),(9,5),(24,5),(36,5),(2,6),(10,6),(25,6),(10,7),(26,7),(10,8),(27,8),(4,9),(11,9),(28,9),(4,10),(11,10),(29,10),(36,10),(12,11),(30,11),(2,12),(12,12),(30,12),(4,13),(12,13),(30,13),(13,14),(30,14),(13,15),(30,15),(1,16),(14,16),(30,16),(37,16),(15,17),(31,17),(36,17),(5,18),(16,18),(32,18),(36,18),(17,19),(33,19),(17,20),(33,20),(17,21),(33,21),(17,22),(34,22),(36,22),(18,23),(35,23),(18,24),(35,24),(2,25),(18,25),(35,25),(18,26),(1,27),(18,27),(38,27),(5,28),(18,28),(40,28),(19,29),(39,29),(5,30),(19,30),(20,31),(20,32),(3,33),(20,33),(4,34),(20,34),(1,35),(20,35),(40,35),(21,36);
/*!40000 ALTER TABLE `property_amenities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-04 22:12:42
