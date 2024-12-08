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
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `country_id` int NOT NULL AUTO_INCREMENT,
  `region_id` int DEFAULT NULL,
  `country_name` varchar(100) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) NOT NULL,
  PRIMARY KEY (`country_id`),
  KEY `FK_region_id` (`region_id`),
  CONSTRAINT `FK_region_id` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,1,'Japan','Imabari','Mima'),(2,5,'Spain','Barcelona','Rupid'),(3,5,'Spain','Madrid','Madrid'),(4,5,'Spain','Barcelona','Catalonia'),(5,5,'Spain','Seville','Andalusia'),(6,4,'France','Paris','Île-de-France'),(7,4,'Italy','Rome','Lazio'),(8,4,'United Kingdom','London','England'),(9,6,'Morocco','Marrakech','Marrakech-Safi'),(10,6,'Kenya','Nairobi','Nairobi County'),(11,6,'South Africa','Cape Town','Western Cape'),(12,3,'Australia','Sydney','New South Wales'),(13,3,'New Zealand','Auckland','Auckland'),(14,3,'Fiji','Suva','Central Division'),(15,2,'Thailand','Bangkok','Bangkok'),(18,1,'Brazil','Rio de Janeiro','Rio de Janeiro'),(19,1,'Canada','Toronto','Ontario'),(20,4,'Russia','Moscow','Moscow'),(21,6,'Egypt','Cairo','Cairo Governorate'),(22,1,'Japan','Tokyo','Tokyo'),(23,4,'Sweden','Stockholm','Stockholm County'),(24,4,'Germany','Berlin','Berlin'),(25,5,'Spain','Valencia','Valencian Community'),(26,4,'France','Marseille','Provence-Alpes-Côte d\'Azur'),(27,4,'Italy','Milan','Lombardy'),(29,6,'Morocco','Casablanca','Casablanca-Settat'),(30,6,'Kenya','Mombasa','Mombasa County'),(31,6,'South Africa','Johannesburg','Gauteng'),(32,3,'New Zealand','Wellington','Wellington'),(33,3,'Fiji','Nadi','Western Division'),(34,2,'Malaysia','Penang','Penang'),(35,1,'Brazil','São Paulo','São Paulo'),(36,1,'Canada','Vancouver','British Columbia'),(37,4,'Russia','Saint Petersburg','Saint Petersburg'),(38,6,'Egypt','Alexandria','Alexandria Governorate'),(39,2,'China','Shanghai','Shanghai'),(40,1,'India','Mumbai','Maharashtra');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
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
