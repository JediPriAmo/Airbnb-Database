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
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_account` (
  `account_id` int NOT NULL AUTO_INCREMENT,
  `country_id` int DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `profile_picture` tinyint DEFAULT NULL,
  `joined_date` date NOT NULL,
  `user_role` varchar(255) DEFAULT NULL,
  `admin_id` int DEFAULT NULL,
  `host_id` int DEFAULT NULL,
  `guest_id` int DEFAULT NULL,
  PRIMARY KEY (`account_id`),
  KEY `FK_user_account_country_id` (`country_id`),
  KEY `FK_user_account_admin_idx` (`admin_id`),
  KEY `FK_user_account_host_idx` (`host_id`),
  KEY `FK_user_account_guest_idx` (`guest_id`),
  CONSTRAINT `FK_user_account_admin` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`),
  CONSTRAINT `FK_user_account_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`),
  CONSTRAINT `FK_user_account_guest` FOREIGN KEY (`guest_id`) REFERENCES `guest` (`guest_id`),
  CONSTRAINT `FK_user_account_host` FOREIGN KEY (`host_id`) REFERENCES `host` (`host_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` VALUES (1,1,'Chen','Jug','Chen@gmail.com','MJ24',1,'2016-05-17','guest',NULL,NULL,1),(2,2,'Adam','One','admin1@example.com','adminpassword1',0,'2013-05-19','admin',1,NULL,NULL),(3,3,'Michael','Two','admin2@example.com','adminpassword2',0,'2015-06-11','admin',2,NULL,NULL),(4,4,'Liam','Three','admin3@example.com','adminpassword3',1,'2024-01-28','admin',3,NULL,NULL),(5,5,'Frank','Four','admin4@example.com','adminpassword4',0,'2013-01-19','admin',4,NULL,NULL),(6,6,'jacob','Five','admin5@example.com','adminpassword5',1,'2016-01-12','admin',5,NULL,NULL),(7,7,'Enrich','Six','admin6@example.com','adminpassword6',0,'2015-12-30','admin',6,NULL,NULL),(8,8,'Jasmine','Seven','admin7@example.com','adminpassword7',0,'2018-11-17','admin',7,NULL,NULL),(9,9,'Adam','Eight','admin8@example.com','adminpassword8',0,'2021-05-30','admin',8,NULL,NULL),(10,10,'Shyla','Nine','admin9@example.com','adminpassword9',1,'2013-06-02','admin',9,NULL,NULL),(11,11,'Tania','Ten','admin10@example.com','adminpassword10',1,'2013-11-10','admin',10,NULL,NULL),(12,12,'Tania','Eleven','admin11@example.com','adminpassword11',0,'2016-01-15','admin',11,NULL,NULL),(13,13,'Coochie','Twelve','admin12@example.com','adminpassword12',0,'2013-08-15','admin',12,NULL,NULL),(14,14,'Dylan','Thirteen','admin13@example.com','adminpassword13',0,'2018-12-27','admin',13,NULL,NULL),(15,15,'Raumue','Fourteen','admin14@example.com','adminpassword14',0,'2017-01-29','admin',14,NULL,NULL),(16,15,'Dylan','Fifteen','admin15@example.com','adminpassword15',1,'2015-06-06','admin',15,NULL,NULL),(17,18,'Jake','Sixteen','admin16@example.com','adminpassword16',1,'2024-11-25','admin',16,NULL,NULL),(18,18,'Jack','Seventeen','admin17@example.com','adminpassword17',0,'2017-03-24','admin',17,NULL,NULL),(19,19,'Jasmine','Eighteen','admin18@example.com','adminpassword18',0,'2022-06-07','admin',18,NULL,NULL),(20,20,'Adam','Nineteen','admin19@example.com','adminpassword19',0,'2023-06-23','admin',19,NULL,NULL),(21,21,'Zack','Twenty','admin20@example.com','adminpassword20',0,'2013-02-02','admin',20,NULL,NULL),(22,22,'Clark','One','host1@example.com','hostpassword1',1,'2018-01-04','host',NULL,13,NULL),(23,23,'Barry','Two','host2@example.com','hostpassword2',1,'2013-10-14','host',NULL,14,NULL),(24,24,'Sabrina','Three','host3@example.com','hostpassword3',1,'2013-11-24','host',NULL,15,NULL),(25,25,'Joanie','Four','host4@example.com','hostpassword4',1,'2015-02-16','host',NULL,16,NULL),(26,26,'Lauren','Five','host5@example.com','hostpassword5',1,'2020-12-12','host',NULL,17,NULL),(27,27,'Courtney','Six','host6@example.com','hostpassword6',1,'2022-05-11','host',NULL,18,NULL),(28,27,'Cole','Seven','host7@example.com','hostpassword7',1,'2023-12-11','host',NULL,19,NULL),(29,29,'Diana','Eight','host8@example.com','hostpassword8',1,'2015-08-24','host',NULL,20,NULL),(30,30,'Henry','Nine','host9@example.com','hostpassword9',1,'2017-05-25','host',NULL,21,NULL),(31,31,'Harry','Ten','host10@example.com','hostpassword10',1,'2015-01-16','host',NULL,22,NULL),(32,32,'Josh','Eleven','host11@example.com','hostpassword11',1,'2022-01-10','host',NULL,23,NULL),(33,33,'Brown','Twelve','host12@example.com','hostpassword12',1,'2016-01-02','host',NULL,24,NULL),(34,34,'Hililan','Thirteen','host13@example.com','hostpassword13',1,'2024-12-08','host',NULL,25,NULL),(35,35,'Michael','Fourteen','host14@example.com','hostpassword14',0,'2015-09-06','host',NULL,26,NULL),(36,36,'Eleazer','Fifteen','host15@example.com','hostpassword15',1,'2014-08-01','host',NULL,27,NULL),(37,37,'Eli','Sixteen','host16@example.com','hostpassword16',1,'2024-11-14','host',NULL,28,NULL),(38,38,'Drake','Seventeen','host17@example.com','hostpassword17',1,'2019-08-13','host',NULL,29,NULL),(39,39,'Josh','Eighteen','host18@example.com','hostpassword18',1,'2022-06-14','host',NULL,30,NULL),(40,40,'Taylor','Nineteen','host19@example.com','hostpassword19',1,'2016-06-02','host',NULL,31,NULL),(41,40,'Skyla','Twenty','host20@example.com','hostpassword20',1,'2013-09-29','host',NULL,32,NULL),(42,40,'Zuliana','One','guest1@example.com','guestpassword1',1,'2017-05-24','guest',NULL,NULL,2),(43,39,'John','Two','guest2@example.com','guestpassword2',1,'2024-11-05','guest',NULL,NULL,3),(44,39,'Liam','Three','guest3@example.com','guestpassword3',1,'2023-01-18','guest',NULL,NULL,4),(45,39,'Miguel','Four','guest4@example.com','guestpassword4',1,'2015-09-17','guest',NULL,NULL,5),(46,38,'Miles','Five','guest5@example.com','guestpassword5',1,'2020-05-24','guest',NULL,NULL,6),(47,38,'Morales','Six','guest6@example.com','guestpassword6',0,'2017-11-07','guest',NULL,NULL,7),(48,37,'Parker','Seven','guest7@example.com','guestpassword7',1,'2015-01-25','guest',NULL,NULL,8),(49,36,'Peter','Eight','guest8@example.com','guestpassword8',0,'2020-10-12','guest',NULL,NULL,9),(50,35,'Steven','Nine','guest9@example.com','guestpassword9',0,'2021-09-15','guest',NULL,NULL,10),(51,34,'Jake','Ten','guest10@example.com','guestpassword10',0,'2021-03-09','guest',NULL,NULL,11),(52,33,'Amber','Eleven','guest11@example.com','guestpassword11',1,'2015-10-26','guest',NULL,NULL,12),(53,32,'Timber','Twelve','guest12@example.com','guestpassword12',0,'2014-07-12','guest',NULL,NULL,13),(54,31,'Zack','Thirteen','guest13@example.com','guestpassword13',1,'2024-03-06','guest',NULL,NULL,14),(55,30,'Zachary','Fourteen','guest14@example.com','guestpassword14',1,'2016-04-27','guest',NULL,NULL,15),(56,29,'Jack','Fifteen','guest15@example.com','guestpassword15',1,'2020-01-24','guest',NULL,NULL,16),(57,29,'Tim','Sixteen','guest16@example.com','guestpassword16',1,'2014-05-09','guest',NULL,NULL,17),(58,27,'Jake','Seventeen','guest17@example.com','guestpassword17',1,'2022-07-27','guest',NULL,NULL,18),(59,26,'Alice','Eighteen','guest18@example.com','guestpassword18',0,'2020-10-15','guest',NULL,NULL,19),(60,25,'Amber','Nineteen','guest19@example.com','guestpassword19',1,'2023-03-28','guest',NULL,NULL,20),(61,24,'Jake','Twenty','guest20@example.com','guestpassword20',1,'2016-10-26','guest',NULL,NULL,20),(62,23,'Tron','Twentyone','guest21@example.com','guestpassword21',0,'2012-03-01','guest',NULL,NULL,19),(63,22,'Fi','Twentytwo','guest22@example.com','guestpassword22',1,'2021-04-06','guest',NULL,NULL,20),(64,21,'Fo','Twentyone','host21@example.com','hostpassword21',1,'2015-08-29','host',NULL,32,NULL),(65,20,'Fum','Twentytwo','host22@example.com','hostpassword22',1,'2013-08-29','host',NULL,31,NULL),(66,19,'Sif','Twentyone','admin21@example.com','adminpassword21',0,'2016-07-19','admin',20,NULL,NULL),(67,19,'Elijah','twentytwo','admin22@example.com','adminpassword22',0,'2014-10-11','admin',19,NULL,NULL);
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
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
