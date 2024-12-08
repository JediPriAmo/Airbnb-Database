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
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenities` (
  `amenities_id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `amenity_name` varchar(50) NOT NULL,
  `description` mediumtext,
  PRIMARY KEY (`amenities_id`),
  KEY `FK_category_id` (`category_id`),
  CONSTRAINT `FK_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
INSERT INTO `amenities` VALUES (1,1,'Hair Dryer',NULL),(2,1,'Shampoo',NULL),(3,1,'Conditioner',NULL),(4,1,'Body soap',NULL),(5,1,'Hot water',NULL),(6,1,'Shower gel',NULL),(7,2,'Bay view',NULL),(8,2,'Sea view',NULL),(9,3,'Essentials','Towels, bed sheets, soap, and toilet paper'),(10,3,'Hangers',NULL),(11,3,'Bed linens',NULL),(12,3,'Mosquito net',NULL),(13,4,'Books and reading material',NULL),(14,5,'Portable fans',NULL),(15,6,'Smoke alarm',NULL),(16,7,'Wifi',NULL),(17,8,'Microwave',NULL),(18,8,'Dishes and silverware','Bowls, chopsticks, plates, cups, etc.'),(19,8,'Mini fridge',NULL),(20,8,'Hot water kettle',NULL),(21,8,'Coffee maker: pour-over coffee',NULL),(22,8,'Barbecue utensils','Grill, charcoal, bamboo skewers/iron skewers, etc.'),(23,8,'coffee',NULL),(24,9,'BBQ grill: charcoal',NULL),(25,10,'Free parking on premises',NULL),(26,10,'Free street parking',NULL),(27,10,'Single level home','No stairs in home'),(28,11,'Luggage dropoff allowed','For guests\' convenience when they have early arrival or late departure'),(29,11,'Breakfast','Breakfast is provided'),(30,12,'Kitchen',NULL),(31,12,'TV',NULL),(32,12,'Washer',NULL),(33,12,'Dryer',NULL),(34,12,'Air conditioning',NULL),(35,12,'Carbon monoxide alarm','This place may not have carbon monoxide detector. Reach out to the host with any questions. '),(36,12,'Heating',NULL);
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
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
