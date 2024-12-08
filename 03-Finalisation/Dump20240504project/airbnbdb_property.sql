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
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `property_id` int NOT NULL AUTO_INCREMENT,
  `type_id` int DEFAULT NULL,
  `tag_id` int DEFAULT NULL,
  `host_id` int DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `description` mediumtext,
  `nightly_price_dollars` decimal(10,2) NOT NULL,
  `property_name` varchar(100) NOT NULL,
  `number_of_guests` int NOT NULL,
  `number_of_bedrooms` int NOT NULL,
  `number_of_bed` int NOT NULL,
  `number_of_bath` int NOT NULL,
  `address_line_1` varchar(250) NOT NULL,
  `adrress_line_2` varchar(45) NOT NULL,
  PRIMARY KEY (`property_id`),
  KEY `FK__property_type_id` (`type_id`),
  KEY `FK_property_host_id` (`host_id`),
  KEY `FK_property_country_id` (`country_id`),
  KEY `FK_property_tag_id_idx` (`tag_id`),
  CONSTRAINT `FK__property_type_id` FOREIGN KEY (`type_id`) REFERENCES `property_type` (`type_id`),
  CONSTRAINT `FK_property_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`),
  CONSTRAINT `FK_property_host_id` FOREIGN KEY (`host_id`) REFERENCES `host` (`host_id`),
  CONSTRAINT `FK_property_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `property_tag` (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (1,1,1,13,1,'Authentic hostel in the middle of Shimanami Kaido. Located in an exceptional setting with a great view of the Inner Sea of Seto. It is a small inn limited to a group in Omishima, right in the middle of Shimanami Kaido.Located on a high ground, you can see the Seto Inland Sea from your room window.Please enjoy Kojima\'s unique views of Setouchi!',500.00,'JackSonvillle',2,1,1,1,'Oceanfront Cottage','123 Beachside Drive'),(2,2,2,14,2,'Cozy apartment near downtown',75.00,'Downtown Apartment',4,2,2,1,'123 Main Street','Apt 1'),(3,3,3,15,2,'Luxurious beachfront villa',300.00,'Sunset Villa',8,4,4,3,'456 Beach Road','Unit A'),(4,4,4,15,5,'Quaint cottage in the countryside',100.00,'Country Cottage',2,1,1,1,'789 Countryside Lane',''),(5,1,5,15,5,'Modern loft in the city center',120.00,'City Loft',3,1,2,1,'101 Downtown Boulevard','Unit 5B'),(6,2,6,18,6,'Charming townhouse with garden view',150.00,'Garden Townhouse',6,3,3,2,'11 Maple Avenue',''),(7,3,7,19,7,'Rustic cabin nestled in the mountains',90.00,'Mountain Cabin Retreat',4,2,2,1,'22 Pine Street','Cabin 3'),(8,4,8,20,8,'Spacious penthouse with city skyline views',250.00,'Skyline Penthouse',4,2,3,2,'15 High Street','Penthouse Suite'),(9,1,9,21,9,'Secluded ranch with panoramic mountain views',180.00,'Mountain View Ranch',6,3,4,2,'200 Valley Road',''),(10,2,10,22,10,'Historic villa with Mediterranean garden',280.00,'Villa Bella',10,5,6,4,'30 Olive Lane',''),(11,3,11,23,11,'Contemporary condo in the heart of downtown',200.00,'Downtown Condo',6,3,3,2,'5 Main Avenue','Unit 10'),(12,4,12,24,12,'Sunny apartment with ocean views',150.00,'Ocean View Apartment',4,2,2,1,'100 Beach Boulevard','Apartment 3B'),(13,1,13,25,13,'Tranquil lakeside cabin retreat',120.00,'Lakeside Cabin',2,1,1,1,'50 Lakeview Drive',''),(14,2,14,26,14,'Elegant townhouse in historic district',180.00,'Historic Townhouse',6,3,3,2,'123 Heritage Lane',''),(15,3,15,27,15,'Ski-in/ski-out chalet with mountain views',220.00,'Mountain Chalet',8,4,4,3,'300 Ski Slope Road',''),(16,4,16,28,15,'Coastal cottage steps from the beach',100.00,'Beachside Cottage',4,2,2,1,'25 Coastal Highway',''),(17,1,17,29,15,'Family-friendly farmhouse with countryside views',160.00,'Countryside Farmhouse',6,3,3,2,'75 Farm Road',''),(18,2,18,30,18,'Urban studio apartment near public transportation',80.00,'City Studio',2,1,1,1,'7 Metro Avenue','Unit 15'),(19,3,19,13,19,'Quirky treehouse retreat in the forest',110.00,'Treehouse Hideaway',2,1,1,1,'40 Forest Lane',''),(20,4,20,14,20,'Riverside cabin with fishing access',130.00,'Riverside Retreat',4,2,2,1,'60 River Road',''),(21,1,21,15,21,'Modern apartment with city views',110.00,'City View Apartment',3,2,2,1,'123 Downtown Street','Unit 301'),(22,2,22,16,22,'Luxurious penthouse with rooftop terrace',450.00,'Rooftop Penthouse',4,3,3,3,'456 Skyline Avenue','Penthouse Suite'),(23,3,23,17,23,'Cozy countryside cottage with fireplace',180.00,'Countryside Cottage',4,2,2,1,'789 Country Road',''),(24,4,24,18,24,'Spacious loft with panoramic city views',220.00,'Cityscape Loft',2,1,1,1,'101 Urban Boulevard','Floor 4'),(25,1,25,19,25,'Seaside villa with private beach access',500.00,'Seaside Villa',10,5,5,4,'222 Beachfront Drive',''),(26,2,26,20,26,'Sunny apartment close to downtown attractions',120.00,'Sunny Downtown Apartment',2,1,1,1,'333 Sunshine Street','Unit 102'),(27,3,27,21,27,'Modern condo with pool and fitness center',300.00,'Fitness Center Condo',2,1,1,1,'444 Poolside Avenue','Suite 202'),(28,4,28,22,15,'Quaint cabin in the woods with hiking trails',150.00,'Woodland Cabin',6,3,3,2,'555 Trailhead Lane',''),(29,1,1,23,29,'Chic loft with exposed brick walls',200.00,'Brick Loft',2,1,1,1,'666 Loft Avenue','Floor 3'),(30,2,2,24,30,'Luxury villa with infinity pool and ocean views',600.00,'Infinity Villa',12,6,6,5,'777 Oceanfront Boulevard',''),(31,3,3,25,31,'Bright and airy apartment in downtown area',130.00,'Bright Downtown Apartment',2,1,1,1,'888 City Street','Unit 401'),(32,4,4,26,32,'Elegant condo with garden views',280.00,'Garden View Condo',2,1,1,1,'999 Garden Avenue','Suite 102'),(33,1,5,27,33,'Rustic cabin with mountain views',170.00,'Mountain Cabin',4,2,2,1,'111 Mountain Road',''),(34,2,6,28,34,'Modern loft with downtown skyline views',240.00,'Downtown Skyline Loft',2,1,1,1,'222 Downtown Boulevard','Floor 5'),(35,3,7,29,35,'Beachfront house with private pool',550.00,'Beach House Retreat',8,4,4,3,'333 Beach Drive',''),(36,4,8,30,36,'Charming apartment in historic building',110.00,'Historic Apartment',2,1,1,1,'444 Historic Street','Unit 201'),(37,1,9,31,37,'Modern condo with scenic river views',320.00,'River View Condo',2,1,1,1,'555 Riverside Avenue','Suite 301'),(38,2,10,32,38,'Cozy cottage with lakefront access',160.00,'Lakefront Cottage',4,2,2,1,'666 Lakeview Lane',''),(39,3,11,13,39,'Industrial-style loft in trendy neighborhood',180.00,'Trendy Loft',2,1,1,1,'777 Trendy Street','Floor 2'),(40,4,12,14,40,'Spacious condo with panoramic mountain views',400.00,'Mountain View Condo',6,3,3,2,'888 Mountain Road','');
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-04 22:12:47
