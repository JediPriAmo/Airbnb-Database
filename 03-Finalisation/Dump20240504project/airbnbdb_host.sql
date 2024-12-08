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
-- Table structure for table `host`
--

DROP TABLE IF EXISTS `host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `host` (
  `host_id` int NOT NULL AUTO_INCREMENT,
  `years_hosting` int NOT NULL,
  `listing_count` int DEFAULT NULL,
  `super_host` tinyint DEFAULT NULL,
  `response_rate` varchar(10) DEFAULT NULL,
  `response_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`host_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host`
--

LOCK TABLES `host` WRITE;
/*!40000 ALTER TABLE `host` DISABLE KEYS */;
INSERT INTO `host` VALUES (13,6,3,1,'100%','Responds within an hour'),(14,10,3,0,'80%','Responds quick'),(15,10,4,0,'84%','Responds quick'),(16,9,1,1,'90%','Responds within an hour'),(17,4,1,0,'89%','Responds quick'),(18,2,2,1,'97%','Responds within an hour'),(19,1,2,0,'88%','Responds quick'),(20,7,2,0,'80%','Responds quick'),(21,4,2,0,'70%','Satisfactory response'),(22,9,2,0,'75%','Satisfactory response'),(23,2,2,1,'100%','Responds within an hour'),(24,8,2,0,'80%','Responds quick'),(25,1,2,1,'98%','Responds within an hour'),(26,7,2,1,'85%','Responds quick'),(27,9,2,1,'92%','Responds within an hour'),(28,1,2,0,'79%','Satisfactory response'),(29,5,2,0,'88%','Responds quick'),(30,2,2,0,'80%','Responds quick'),(31,8,2,0,'85%','Responds quick'),(32,10,2,1,'100%','Responds within an hour');
/*!40000 ALTER TABLE `host` ENABLE KEYS */;
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
