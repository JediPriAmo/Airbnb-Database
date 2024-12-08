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
-- Table structure for table `account_social`
--

DROP TABLE IF EXISTS `account_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_social` (
  `account_id` int NOT NULL,
  `social_id` int NOT NULL,
  `link` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`account_id`,`social_id`),
  KEY `FK_account_social_social_id` (`social_id`),
  CONSTRAINT `FK_account_social_account_id` FOREIGN KEY (`account_id`) REFERENCES `user_account` (`account_id`),
  CONSTRAINT `FK_account_social_social_id` FOREIGN KEY (`social_id`) REFERENCES `social_profile` (`social_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_social`
--

LOCK TABLES `account_social` WRITE;
/*!40000 ALTER TABLE `account_social` DISABLE KEYS */;
INSERT INTO `account_social` VALUES (1,1,'https://www.example.com/page'),(1,2,'https://www.example.com/page'),(2,3,'https://www.example.com/page'),(3,4,'https://www.example.com/page'),(4,5,'https://www.example.com/page'),(4,6,'https://www.example.com/page'),(4,7,'https://www.example.com/page'),(5,1,'https://www.example.com/page'),(5,2,'https://www.example.com/page'),(6,3,'https://www.example.com/page'),(7,4,'https://www.example.com/page'),(7,5,'https://www.example.com/page'),(7,6,'https://www.example.com/page'),(8,1,'https://www.example.com/page'),(8,7,'https://www.example.com/page'),(9,2,'https://www.example.com/page'),(9,3,'https://www.example.com/page'),(10,4,'https://www.example.com/page'),(11,5,'https://www.example.com/page'),(12,6,'https://www.example.com/page'),(13,7,'https://www.example.com/page'),(14,1,'https://www.example.com/page'),(15,2,'https://www.example.com/page'),(16,3,'https://www.example.com/page'),(16,4,'https://www.example.com/page'),(16,5,'https://www.example.com/page'),(17,1,'https://www.example.com/page'),(17,6,'https://www.example.com/page'),(18,2,'https://www.example.com/page'),(19,3,'https://www.example.com/page'),(20,4,'https://www.example.com/page'),(21,5,'https://www.example.com/page'),(22,1,'https://www.example.com/page'),(22,6,'https://www.example.com/page'),(23,2,'https://www.example.com/page'),(23,3,'https://www.example.com/page'),(23,4,'https://www.example.com/page'),(23,5,'https://www.example.com/page'),(23,7,'https://www.example.com/page'),(24,1,'https://www.example.com/page'),(25,2,'https://www.example.com/page'),(26,3,'https://www.example.com/page'),(26,4,'https://www.example.com/page'),(26,6,'https://www.example.com/page'),(27,1,'https://www.example.com/page'),(27,2,'https://www.example.com/page'),(27,3,'https://www.example.com/page'),(28,4,'https://www.example.com/page'),(29,7,'https://www.example.com/page'),(30,1,'https://www.example.com/page'),(30,2,'https://www.example.com/page'),(31,3,'https://www.example.com/page'),(31,4,'https://www.example.com/page'),(32,5,'https://www.example.com/page'),(32,6,'https://www.example.com/page'),(33,1,'https://www.example.com/page'),(33,2,'https://www.example.com/page'),(34,3,'https://www.example.com/page'),(34,4,'https://www.example.com/page'),(34,5,'https://www.example.com/page'),(35,1,'https://www.example.com/page'),(35,2,'https://www.example.com/page'),(36,3,'https://www.example.com/page'),(36,4,'https://www.example.com/page'),(37,2,'https://www.example.com/page'),(37,3,'https://www.example.com/page'),(37,4,'https://www.example.com/page'),(38,4,'https://www.example.com/page'),(38,5,'https://www.example.com/page'),(39,6,'https://www.example.com/page'),(40,7,'https://www.example.com/page'),(41,2,'https://www.example.com/page'),(41,3,'https://www.example.com/page'),(42,4,'https://www.example.com/page'),(42,5,'https://www.example.com/page'),(43,6,'https://www.example.com/page'),(44,7,'https://www.example.com/page'),(45,1,'https://www.example.com/page'),(46,2,'https://www.example.com/page'),(47,3,'https://www.example.com/page'),(47,4,'https://www.example.com/page'),(47,5,'https://www.example.com/page'),(48,1,'https://www.example.com/page'),(48,6,'https://www.example.com/page'),(49,2,'https://www.example.com/page'),(49,3,'https://www.example.com/page'),(49,4,'https://www.example.com/page'),(49,5,'https://www.example.com/page'),(50,1,'https://www.example.com/page'),(50,2,'https://www.example.com/page'),(51,3,'https://www.example.com/page'),(51,5,'https://www.example.com/page'),(52,1,'https://www.example.com/page'),(53,2,'https://www.example.com/page'),(54,5,'https://www.example.com/page'),(55,6,'https://www.example.com/page'),(55,7,'https://www.example.com/page'),(56,1,'https://www.example.com/page'),(56,3,'https://www.example.com/page'),(56,4,'https://www.example.com/page'),(57,1,'https://www.example.com/page'),(57,2,'https://www.example.com/page'),(57,3,'https://www.example.com/page'),(57,5,'https://www.example.com/page'),(57,6,'https://www.example.com/page'),(58,2,'https://www.example.com/page'),(58,3,'https://www.example.com/page'),(59,4,'https://www.example.com/page'),(60,5,'https://www.example.com/page'),(61,1,'https://www.example.com/page'),(61,7,'https://www.example.com/page');
/*!40000 ALTER TABLE `account_social` ENABLE KEYS */;
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
