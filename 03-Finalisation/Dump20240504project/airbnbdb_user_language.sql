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
-- Table structure for table `user_language`
--

DROP TABLE IF EXISTS `user_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_language` (
  `account_id` int NOT NULL,
  `language_id` int NOT NULL,
  PRIMARY KEY (`account_id`,`language_id`),
  KEY `FK_user_language_language_id` (`language_id`),
  CONSTRAINT `FK_user_language_account_id` FOREIGN KEY (`account_id`) REFERENCES `user_account` (`account_id`),
  CONSTRAINT `FK_user_language_language_id` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_language`
--

LOCK TABLES `user_language` WRITE;
/*!40000 ALTER TABLE `user_language` DISABLE KEYS */;
INSERT INTO `user_language` VALUES (1,1),(14,1),(22,1),(23,1),(24,1),(25,1),(26,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(60,1),(61,1),(1,2),(15,2),(30,2),(1,3),(15,3),(58,3),(2,4),(16,4),(31,4),(43,4),(57,4),(2,5),(17,5),(2,6),(18,6),(3,7),(19,7),(59,7),(3,8),(20,8),(29,8),(4,9),(21,9),(34,9),(5,10),(34,10),(6,11),(53,11),(7,12),(23,12),(35,12),(8,13),(53,13),(8,14),(24,14),(36,14),(8,15),(24,15),(37,15),(9,16),(24,16),(9,17),(38,17),(51,17),(10,18),(25,18),(10,19),(25,19),(39,19),(10,20),(11,21),(27,21),(40,21),(12,22),(27,22),(57,22),(13,23),(52,23),(13,24),(28,24),(42,24),(14,25);
/*!40000 ALTER TABLE `user_language` ENABLE KEYS */;
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
