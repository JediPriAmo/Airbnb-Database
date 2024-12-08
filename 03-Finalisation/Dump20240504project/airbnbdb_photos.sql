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
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photos` (
  `photos_id` int NOT NULL AUTO_INCREMENT,
  `property_id` int DEFAULT NULL,
  `url` varchar(2048) DEFAULT NULL,
  `photo_order` int DEFAULT NULL,
  PRIMARY KEY (`photos_id`),
  KEY `FK_photos_property_id` (`property_id`),
  CONSTRAINT `FK_photos_property_id` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,1,'https://www.example.com/page1',1),(2,1,'https://www.example.com/page2',2),(3,1,'https://www.example.com/page3',3),(4,1,'https://www.example.com/page4',4),(5,2,'https://www.example.com/page5',1),(6,2,'https://www.example.com/page6',2),(7,3,'https://www.example.com/page7',1),(8,3,'https://www.example.com/page8',2),(9,3,'https://www.example.com/page9',3),(10,4,'https://www.example.com/page10',1),(11,5,'https://www.example.com/page11',1),(12,6,'https://www.example.com/page12',1),(13,7,'https://www.example.com/page13',1),(14,7,'https://www.example.com/page14',2),(15,7,'https://www.example.com/page15',3),(16,8,'https://www.example.com/page16',1),(17,8,'https://www.example.com/page17',2),(18,8,'https://www.example.com/page18',3),(19,9,'https://www.example.com/page19',1),(20,9,'https://www.example.com/page20',2),(21,10,'https://www.example.com/page21',1),(22,11,'https://www.example.com/page22',1),(23,12,'https://www.example.com/page23',1),(24,13,'https://www.example.com/page24',1),(25,13,'https://www.example.com/page25',2),(26,13,'https://www.example.com/page26',3),(27,14,'https://www.example.com/page27',1),(28,14,'https://www.example.com/page28',2),(29,14,'https://www.example.com/page29',3),(30,15,'https://www.example.com/page30',1),(31,15,'https://www.example.com/page31',2),(32,16,'https://www.example.com/page32',1),(33,16,'https://www.example.com/page33',2),(34,17,'https://www.example.com/page34',1),(35,17,'https://www.example.com/page35',2),(36,17,'https://www.example.com/page36',3),(37,18,'https://www.example.com/page37',1),(38,18,'https://www.example.com/page38',2),(39,18,'https://www.example.com/page39',3),(40,18,'https://www.example.com/page40',4),(41,19,'https://www.example.com/page41',1),(42,19,'https://www.example.com/page42',2),(43,20,'https://www.example.com/page43',1),(44,20,'https://www.example.com/page44',2),(45,21,'https://www.example.com/page45',1),(46,22,'https://www.example.com/page46',1),(47,23,'https://www.example.com/page47',1),(48,24,'https://www.example.com/page48',1),(49,25,'https://www.example.com/page49',1),(50,26,'https://www.example.com/page50',1),(51,27,'https://www.example.com/page51',1),(52,28,'https://www.example.com/page52',1),(53,29,'https://www.example.com/page53',1),(54,30,'https://www.example.com/page54',1),(55,31,'https://www.example.com/page55',1),(56,32,'https://www.example.com/page56',1),(57,33,'https://www.example.com/page57',1),(58,34,'https://www.example.com/page58',1),(59,35,'https://www.example.com/page59',1),(60,36,'https://www.example.com/page60',1),(61,37,'https://www.example.com/page61',1),(62,38,'https://www.example.com/page62',1),(63,39,'https://www.example.com/page63',1),(64,40,'https://www.example.com/page64',1);
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
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
