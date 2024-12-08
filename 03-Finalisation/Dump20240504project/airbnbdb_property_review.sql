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
-- Table structure for table `property_review`
--

DROP TABLE IF EXISTS `property_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_review` (
  `property_review_id` int NOT NULL AUTO_INCREMENT,
  `guest_id` int DEFAULT NULL,
  `property_id` int DEFAULT NULL,
  `parent_review_id` int DEFAULT NULL,
  `review_date` date DEFAULT NULL,
  `comment` text,
  `overall_rating_stars` int DEFAULT NULL,
  PRIMARY KEY (`property_review_id`),
  KEY `FK_property_review_guest_id` (`guest_id`),
  KEY `FK_property_review_parent_review_id` (`parent_review_id`),
  KEY `FK_property_review_property_id` (`property_id`),
  CONSTRAINT `FK_property_review_guest_id` FOREIGN KEY (`guest_id`) REFERENCES `guest` (`guest_id`),
  CONSTRAINT `FK_property_review_parent_review_id` FOREIGN KEY (`parent_review_id`) REFERENCES `property_review` (`property_review_id`),
  CONSTRAINT `FK_property_review_property_id` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_review`
--

LOCK TABLES `property_review` WRITE;
/*!40000 ALTER TABLE `property_review` DISABLE KEYS */;
INSERT INTO `property_review` VALUES (1,1,1,NULL,'2024-05-06','Awesome.',4),(2,2,1,1,'2024-05-07','Nice',NULL),(3,3,1,1,'2024-05-01','Well done',NULL),(4,4,2,NULL,'2024-06-01','I really enjoyed the experience!',5),(5,5,2,4,'2024-06-02','I didnt. Too much people and very little privacy. ',NULL),(6,4,2,4,'2024-06-02','I honestly think that people is part of what makes the experience great.  To each their own. ',NULL),(7,5,2,NULL,'2024-06-01','Too many people. Very little privacy. ',3),(8,6,3,NULL,'2024-04-10','I really like the view!',5),(9,7,3,NULL,'2024-02-10','Property is well designed and hygenic. The view is a bonus.',5),(10,8,3,NULL,'2024-10-18','I really enjoyed the stay.',5),(11,10,4,NULL,'2024-02-23','Cool.',4),(12,11,4,NULL,'2024-03-27','Hated the stay. |Most of the amenities listed weren\'t even there.',2),(13,10,4,12,'2024-03-28','That\'s a really low rating lol.',NULL),(14,11,4,12,'2024-04-03','Lmao I know right?! The service was so bad. ',NULL),(15,12,5,NULL,'2024-03-09','Enjoyed the stay. ',4),(16,13,6,NULL,'2024-01-29','Experience was average at  best.',3),(17,14,6,NULL,'2024-02-05','Could have done way better. You didn\'t fully exploit the property\'s potential tbh. ',2),(18,15,6,NULL,'2024-03-30','I feel like there\'s more to be desired.',2),(19,16,7,NULL,'2024-10-08',NULL,4),(20,17,8,NULL,'2024-11-28',NULL,5),(21,18,9,NULL,'2024-11-01',NULL,4),(22,19,10,NULL,'2024-08-05',NULL,5),(23,20,11,NULL,'2024-08-28',NULL,3),(24,14,11,NULL,'2024-07-16',NULL,3),(25,2,12,NULL,'2024-12-13',NULL,5),(26,11,13,NULL,'2024-04-18',NULL,4);
/*!40000 ALTER TABLE `property_review` ENABLE KEYS */;
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
