CREATE DATABASE  IF NOT EXISTS `hotel` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hotel`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: database-hpms.cvjaisxmq3oq.us-east-2.rds.amazonaws.com    Database: hotel
-- ------------------------------------------------------
-- Server version	8.0.23

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenities` (
  `amenitiesId` int NOT NULL AUTO_INCREMENT,
  `Amenities_desc` varchar(45) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`amenitiesId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
INSERT INTO `amenities` VALUES (1,'Pool',NULL),(2,'Gym',NULL),(3,'Spa',NULL),(4,'Business Office',NULL);
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `custId` int NOT NULL,
  PRIMARY KEY (`custId`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`custId`) REFERENCES `users` (`userId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (5),(7),(10),(13),(14),(19),(20),(23),(27),(28),(29),(30),(31),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `empId` int NOT NULL,
  `role` int NOT NULL DEFAULT '2',
  PRIMARY KEY (`empId`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`empId`) REFERENCES `users` (`userId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (18,2);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `hotel_id` int NOT NULL AUTO_INCREMENT,
  `hotel_name` varchar(40) NOT NULL,
  `hotel_address` varchar(40) NOT NULL,
  `hotel_desc` varchar(100) NOT NULL,
  `hotel_total_rms` int NOT NULL,
  `hotel_availrms` int NOT NULL,
  `hotel_numofamend` int NOT NULL,
  `hotel_rating` int NOT NULL,
  `hotel_nightlyrate` decimal(5,2) NOT NULL,
  `hotel_image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (2,'The Lofts at Town Centre','Arlington, TX','Attractively located in the Downtown Los Angeles ',60,44,3,5,0.35,'The_Lofts_at_Town_Centre.jpg'),(4,'The Courtyard Suites','Laredo, TX','Bonito sol beautiful sunny clouds',20,19,3,5,0.25,'The_Courtyard_Suites.jpg'),(5,'The Regency Rooms','Dallas, TX','surrounded by lush rain forest and the river Wos gurgling below',20,20,3,5,0.25,'The_Regency_Rooms.jpg'),(6,'Town Inn Budget Rooms','San Antono, Tx','surrounded by city lights and attractions',150,150,1,5,0.15,'Town_Inn_Budget_Rooms.jpg'),(7,'The Comfy Motel Place','Houston, Tx','Luxury hotel with variety of amenities',50,50,0,5,0.10,'The_Comfy_Motel_Place.jpg'),(8,'Sun Palace Inn','Galvastin, TX','Great hotel for family and friends',50,48,2,5,0.25,'Sun_Palace_Inn.jpg'),(9,'HomeAway Inn','Corpus Christi, TX','surrounded by ocean breeze, near padre island',30,28,2,5,0.25,'HomeAway_Inn.jpg'),(10,'Rio Inn','Fort Worth, TX','surrounded by western desert and the river Wos gurgling below',50,41,1,5,0.20,'Rio_Inn.jpg'),(18,'The Express Inn','123 Express Texas','Super Fast  Express serivce',4,4,1,5,100.00,'The Express Inn'),(20,'THE HILLS HOTEL','123','COOL HOTEL',4,4,1,6,200.00,'THE HILLS HOTEL');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `hotel_AFTER_INSERT` AFTER INSERT ON `hotel` FOR EACH ROW BEGIN
DECLARE x INT ;
DECLARE y INT;
 IF(new.hotel_total_rms >  0 ) then
   set x = 0 ;
   while x < new.hotel_total_rms do
	set y = (SELECT MAX(room_number) from room)+1;
     insert into room (room_number,hotel_id)
     values
     (y,new.hotel_id);
     set x=x+1;
    end while ;
  end if ;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `hotel_amenities`
--

DROP TABLE IF EXISTS `hotel_amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_amenities` (
  `hotel_id` int NOT NULL,
  `amenitiesId` int NOT NULL,
  PRIMARY KEY (`hotel_id`,`amenitiesId`),
  KEY `FK_amenities_idx` (`amenitiesId`),
  CONSTRAINT `FK_amenities` FOREIGN KEY (`amenitiesId`) REFERENCES `amenities` (`amenitiesId`) ON DELETE CASCADE,
  CONSTRAINT `FK_hotel` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_amenities`
--

LOCK TABLES `hotel_amenities` WRITE;
/*!40000 ALTER TABLE `hotel_amenities` DISABLE KEYS */;
INSERT INTO `hotel_amenities` VALUES (2,1),(4,1),(5,1),(6,1),(8,1),(9,1),(10,1),(2,2),(4,2),(5,2),(8,2),(4,3),(5,3),(2,4),(4,4),(5,4),(9,4);
/*!40000 ALTER TABLE `hotel_amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_cust`
--

DROP TABLE IF EXISTS `invoice_cust`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_cust` (
  `id` int NOT NULL,
  `custId` int NOT NULL,
  `reservation_Id` int NOT NULL,
  `date_issued` date NOT NULL,
  `date_paid` date NOT NULL,
  `date_canceled` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `custId` (`custId`),
  CONSTRAINT `invoice_cust_ibfk_1` FOREIGN KEY (`custId`) REFERENCES `customer` (`custId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_cust`
--

LOCK TABLES `invoice_cust` WRITE;
/*!40000 ALTER TABLE `invoice_cust` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_cust` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `id` int DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `social_security_number` int DEFAULT NULL,
  `insured` tinyint(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (238,'Sara','Ann',244,1,'sara@gmail.com'),(239,'Kevin','Lee',245,1,'Lee@gmail.com'),(244,'Sam','ham',245,0,'sam@gmail.com'),(244,'danny','hanny',255,0,'danny@gmail.com');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'John','Doe'),(2,'.william','.Galindo'),(3,'Brandon','Muller'),(4,'Zelle','last'),(5,'will','s'),(6,'johnny ','depp'),(7,'johnny ','depp'),(8,'craigs','list'),(9,'craigs','list'),(10,'craigs','list'),(11,'hello','test'),(12,'hello','test2'),(13,'Zelle','123'),(14,'','');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `rId` int NOT NULL AUTO_INCREMENT,
  `reservationId` int NOT NULL,
  `custId` int DEFAULT NULL,
  `empId` int DEFAULT NULL,
  `hotel_id` int NOT NULL,
  `room_number` int NOT NULL,
  `reserved_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `total_price` double NOT NULL,
  `adults` int NOT NULL DEFAULT '1',
  `children` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`rId`),
  UNIQUE KEY `reservationId` (`reservationId`),
  KEY `custId` (`custId`),
  KEY `toHotel_idx` (`hotel_id`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`custId`) REFERENCES `customer` (`custId`) ON DELETE CASCADE,
  CONSTRAINT `toHotel` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='update_Hotel_rmAvail';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (10,2,7,0,2,202,'2021-10-31 19:30:02','2022-01-01','2022-01-02',200,0,0),(17,4,5,0,2,203,'2021-11-26 00:12:36','2021-11-27','2021-12-01',892,1,0),(18,0,10,0,2,208,'2021-11-26 00:00:00','2021-11-25','2021-11-30',684,1,2),(32,12,5,NULL,2,205,'2021-11-27 00:00:00','2021-11-26','2022-11-26',48210,1,1),(33,13,5,NULL,2,208,'2021-11-27 00:00:00','2021-12-15','2022-11-23',45276,1,2),(36,14,33,NULL,8,810,'2021-11-29 00:00:00','2021-12-01','2021-12-31',1280,2,1),(37,15,33,NULL,8,808,'2021-11-29 00:00:00','2021-12-01','2021-12-31',1920,2,1),(38,16,33,NULL,9,910,'2021-11-29 00:00:00','2021-12-03','2021-12-29',1396,2,2),(39,17,33,NULL,9,907,'2021-11-29 00:00:00','2021-12-03','2021-12-29',1396,2,2),(40,18,5,NULL,10,1119,'2021-11-29 00:00:00','2021-11-28','2021-11-29',30,1,1),(41,19,5,NULL,10,1116,'2021-11-29 00:00:00','2021-11-28','2021-11-29',30,1,1),(42,20,5,NULL,10,1113,'2021-11-29 00:00:00','2021-11-28','2021-11-29',30,1,1),(43,21,37,NULL,10,1100,'2021-11-29 00:00:00','2021-11-28','2021-12-28',795,2,2),(44,22,37,NULL,10,1120,'2021-11-29 00:00:00','2021-11-28','2021-12-28',1749,2,2);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `reservation_BEFORE_INSERT` BEFORE INSERT ON `reservation` FOR EACH ROW BEGIN
if exists (select custId, hotel_name from reservation res, room_reserved rr, room r, hotel h where res.rId = rr.rId and rr.room_number = r.room_number
and r.hotel_id = h.hotel_id and new.check_in < rr.res_check_out and new.check_out > rr.res_check_in and NEW.hotel_id = h.hotel_id AND New.room_number = rr.room_number) then
    signal sqlstate '45000' SET MESSAGE_TEXT = 'Overlaps with existing data';
  end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `update_Hotel_rmAvail` AFTER INSERT ON `reservation` FOR EACH ROW BEGIN UPDATE hotel SET hotel_availrms=hotel_availrms-1 WHERE hotel_id=New.hotel_id; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `updateRoomReserved` AFTER INSERT ON `reservation` FOR EACH ROW BEGIN
INSERT INTO room_reserved(rId, room_number, res_check_in, res_check_out) VALUES(NEW.rId, NEW.room_number, NEW.check_in, NEW.check_out);  
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `reservation_BEFORE_UPDATE` BEFORE UPDATE ON `reservation` FOR EACH ROW BEGIN
 set New.total_price = (GetTotalPrice(New.check_out, New.check_in, New.hotel_id, New.room_number) );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `reservation_AFTER_UPDATE` AFTER UPDATE ON `reservation` FOR EACH ROW BEGIN
INSERT INTO room_reserved(rId, room_number, res_check_in, res_check_out) VALUES(NEW.rId, NEW.room_number, NEW.check_in, NEW.check_out); 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `update_Hotel_rmAvail2` AFTER DELETE ON `reservation` FOR EACH ROW BEGIN 
UPDATE hotel SET hotel_availrms=hotel_availrms-1 WHERE hotel_id=old.hotel_id; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `update_on_delete_room_reserved` AFTER DELETE ON `reservation` FOR EACH ROW BEGIN UPDATE room SET isOccupied=0 WHERE room_number=old.room_number;    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `empId` int NOT NULL,
  `role` int NOT NULL,
  PRIMARY KEY (`empId`),
  CONSTRAINT `role_ibfk_1` FOREIGN KEY (`empId`) REFERENCES `employee` (`empId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `room_id` int NOT NULL AUTO_INCREMENT,
  `room_number` int NOT NULL,
  `hotel_id` int NOT NULL,
  `isOccupied` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`room_id`),
  KEY `hotel_id` (`hotel_id`) /*!80000 INVISIBLE */,
  CONSTRAINT `toHotel2` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (21,201,2,0),(22,202,2,0),(23,203,2,1),(24,204,2,0),(25,205,2,0),(26,206,2,0),(27,207,2,0),(28,208,2,0),(29,209,2,0),(30,210,2,0),(41,401,4,0),(42,402,4,0),(43,403,4,0),(44,404,4,0),(45,405,4,0),(46,406,4,0),(47,407,4,0),(48,408,4,0),(49,409,4,0),(50,410,4,0),(51,501,5,0),(52,502,5,0),(53,503,5,0),(54,504,5,0),(55,505,5,0),(56,506,5,0),(57,507,5,0),(58,508,5,0),(59,509,5,0),(60,510,5,0),(61,601,6,0),(62,602,6,0),(63,603,6,0),(64,604,6,0),(65,605,6,0),(66,606,6,0),(67,607,6,0),(68,608,6,0),(69,609,6,0),(70,610,6,0),(71,701,7,0),(72,702,7,0),(73,703,7,0),(74,704,7,0),(75,705,7,0),(76,706,7,0),(77,707,7,0),(78,708,7,0),(79,709,7,0),(80,710,7,0),(81,801,8,0),(82,802,8,0),(83,803,8,0),(84,804,8,0),(85,805,8,0),(86,806,8,0),(87,807,8,0),(88,808,8,0),(89,809,8,0),(90,810,8,0),(91,901,9,0),(92,902,9,0),(93,903,9,0),(94,904,9,0),(95,905,9,0),(96,906,9,0),(97,907,9,0),(98,908,9,0),(99,909,9,0),(100,910,9,0),(101,911,9,0),(102,1100,10,0),(103,1111,10,0),(104,1112,10,0),(105,1113,10,0),(106,1114,10,0),(107,1115,10,0),(108,1116,10,0),(109,1117,10,0),(110,1118,10,0),(111,1119,10,0),(112,1120,10,0),(142,1121,18,0),(143,1122,18,0),(144,1123,18,0),(145,1124,18,0),(147,1125,20,0),(148,1126,20,0),(149,1127,20,0),(150,1128,20,0);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `room_AFTER_INSERT` AFTER INSERT ON `room` FOR EACH ROW BEGIN
	insert into room_types (room_type_id,type_name, room_type_desc, room_rate)
	values (New.room_id,"updatetype", "updatedesc",100);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `room_reserved`
--

DROP TABLE IF EXISTS `room_reserved`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_reserved` (
  `rrId` int NOT NULL AUTO_INCREMENT,
  `rId` int NOT NULL,
  `room_number` int NOT NULL,
  `res_check_in` date NOT NULL,
  `res_check_out` date NOT NULL,
  PRIMARY KEY (`rrId`),
  KEY `rId` (`rId`),
  KEY `room_reserved_room` (`room_number`),
  CONSTRAINT `room_reserved_ibfk_1` FOREIGN KEY (`rId`) REFERENCES `reservation` (`rId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_reserved`
--

LOCK TABLES `room_reserved` WRITE;
/*!40000 ALTER TABLE `room_reserved` DISABLE KEYS */;
INSERT INTO `room_reserved` VALUES (4,10,202,'2021-12-05','2021-12-10'),(7,17,203,'2021-11-27','2021-12-01'),(8,18,208,'2021-11-25','2021-11-30'),(16,32,205,'2021-11-26','2022-11-26'),(17,33,208,'2021-12-15','2022-11-23'),(20,10,202,'2022-01-01','2022-01-02'),(24,36,810,'2021-12-01','2021-12-31'),(25,37,808,'2021-12-01','2021-12-31'),(26,38,910,'2021-12-03','2021-12-29'),(27,39,907,'2021-12-03','2021-12-29'),(28,40,1119,'2021-11-28','2021-11-29'),(29,41,1116,'2021-11-28','2021-11-29'),(30,42,1113,'2021-11-28','2021-11-29'),(31,43,1100,'2021-11-28','2021-12-28'),(32,44,1120,'2021-11-28','2021-12-28');
/*!40000 ALTER TABLE `room_reserved` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `room_reserved_AFTER_INSERT` AFTER INSERT ON `room_reserved` FOR EACH ROW BEGIN
IF (New.res_check_in = current_date()) THEN
UPDATE room SET isOccupied = 0 WHERE hotel_id = 
(SELECT room.hotel_id FROM room r , hotel h, reservation res WHERE r.hotel_id = h.hotel_id and 
res.hotel_id = h.hotel_id and res.rId = NEW.rId);
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `room_types`
--

DROP TABLE IF EXISTS `room_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_types` (
  `room_type_id` int NOT NULL,
  `type_name` varchar(128) CHARACTER SET latin1 NOT NULL,
  `room_type_desc` varchar(255) CHARACTER SET latin1 NOT NULL,
  `room_rate` double NOT NULL,
  PRIMARY KEY (`room_type_id`),
  CONSTRAINT `toRooms` FOREIGN KEY (`room_type_id`) REFERENCES `room` (`room_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_types`
--

LOCK TABLES `room_types` WRITE;
/*!40000 ALTER TABLE `room_types` DISABLE KEYS */;
INSERT INTO `room_types` VALUES (21,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',105),(22,'Queen','medium sized rooms and offer a queen sized bed, en suite shower and WC or en suite shower over bath and WC, 32-inch flat panel TV, free and secure wireless internet, and a desk.',120),(23,'King','King guestrooms provide a comfortable and convenient retreat during your stay. The decor is refined and understated, with an elegant gray and white color palette and high-end furnishings.',190),(24,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',105),(25,'Queen','medium sized rooms and offer a queen sized bed, en suite shower and WC or en suite shower over bath and WC, 32-inch flat panel TV, free and secure wireless internet, and a desk.',120),(26,'King','King guestrooms provide a comfortable and convenient retreat during your stay. The decor is refined and understated, with an elegant gray and white color palette and high-end furnishings.',190),(27,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',105),(28,'Queen','medium sized rooms and offer a queen sized bed, en suite shower and WC or en suite shower over bath and WC, 32-inch flat panel TV, free and secure wireless internet, and a desk.',120),(29,'King','King guestrooms provide a comfortable and convenient retreat during your stay. The decor is refined and understated, with an elegant gray and white color palette and high-end furnishings.',190),(30,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',105),(41,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',100),(42,'Queen','medium sized rooms and offer a queen sized bed, en suite shower and WC or en suite shower over bath and WC, 32-inch flat panel TV, free and secure wireless internet, and a desk.',150),(43,'King','King guestrooms provide a comfortable and convenient retreat during your stay. The decor is refined and understated, with an elegant gray and white color palette and high-end furnishings.',250),(44,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',100),(45,'Queen','medium sized rooms and offer a queen sized bed, en suite shower and WC or en suite shower over bath and WC, 32-inch flat panel TV, free and secure wireless internet, and a desk.',150),(46,'King','King guestrooms provide a comfortable and convenient retreat during your stay. The decor is refined and understated, with an elegant gray and white color palette and high-end furnishings.',250),(47,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',100),(48,'Queen','medium sized rooms and offer a queen sized bed, en suite shower and WC or en suite shower over bath and WC, 32-inch flat panel TV, free and secure wireless internet, and a desk.',150),(49,'King','King guestrooms provide a comfortable and convenient retreat during your stay. The decor is refined and understated, with an elegant gray and white color palette and high-end furnishings.',250),(50,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',100),(51,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',100),(52,'Queen','medium sized rooms and offer a queen sized bed, en suite shower and WC or en suite shower over bath and WC, 32-inch flat panel TV, free and secure wireless internet, and a desk.',150),(53,'King','King guestrooms provide a comfortable and convenient retreat during your stay. The decor is refined and understated, with an elegant gray and white color palette and high-end furnishings.',250),(54,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',100),(55,'Queen','medium sized rooms and offer a queen sized bed, en suite shower and WC or en suite shower over bath and WC, 32-inch flat panel TV, free and secure wireless internet, and a desk.',150),(56,'King','King guestrooms provide a comfortable and convenient retreat during your stay. The decor is refined and understated, with an elegant gray and white color palette and high-end furnishings.',250),(57,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',100),(58,'Queen','medium sized rooms and offer a queen sized bed, en suite shower and WC or en suite shower over bath and WC, 32-inch flat panel TV, free and secure wireless internet, and a desk.',150),(59,'King','King guestrooms provide a comfortable and convenient retreat during your stay. The decor is refined and understated, with an elegant gray and white color palette and high-end furnishings.',250),(60,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',100),(61,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',25),(62,'Queen','medium sized rooms and offer a queen sized bed, en suite shower and WC or en suite shower over bath and WC, 32-inch flat panel TV, free and secure wireless internet, and a desk.',50),(63,'King','King guestrooms provide a comfortable and convenient retreat during your stay. The decor is refined and understated, with an elegant gray and white color palette and high-end furnishings.',60),(64,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',25),(65,'Queen','medium sized rooms and offer a queen sized bed, en suite shower and WC or en suite shower over bath and WC, 32-inch flat panel TV, free and secure wireless internet, and a desk.',50),(66,'King','King guestrooms provide a comfortable and convenient retreat during your stay. The decor is refined and understated, with an elegant gray and white color palette and high-end furnishings.',60),(67,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',25),(68,'Queen','medium sized rooms and offer a queen sized bed, en suite shower and WC or en suite shower over bath and WC, 32-inch flat panel TV, free and secure wireless internet, and a desk.',50),(69,'King','King guestrooms provide a comfortable and convenient retreat during your stay. The decor is refined and understated, with an elegant gray and white color palette and high-end furnishings.',60),(70,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',25),(71,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',30),(72,'Queen','medium sized rooms and offer a queen sized bed, en suite shower and WC or en suite shower over bath and WC, 32-inch flat panel TV, free and secure wireless internet, and a desk.',50),(73,'King','King guestrooms provide a comfortable and convenient retreat during your stay. The decor is refined and understated, with an elegant gray and white color palette and high-end furnishings.',0),(74,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',30),(75,'Queen','medium sized rooms and offer a queen sized bed, en suite shower and WC or en suite shower over bath and WC, 32-inch flat panel TV, free and secure wireless internet, and a desk.',50),(76,'King','King guestrooms provide a comfortable and convenient retreat during your stay. The decor is refined and understated, with an elegant gray and white color palette and high-end furnishings.',0),(77,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',30),(78,'Queen','medium sized rooms and offer a queen sized bed, en suite shower and WC or en suite shower over bath and WC, 32-inch flat panel TV, free and secure wireless internet, and a desk.',50),(79,'King','King guestrooms provide a comfortable and convenient retreat during your stay. The decor is refined and understated, with an elegant gray and white color palette and high-end furnishings.',0),(80,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',30),(81,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',40),(82,'Queen','medium sized rooms and offer a queen sized bed, en suite shower and WC or en suite shower over bath and WC, 32-inch flat panel TV, free and secure wireless internet, and a desk.',60),(83,'King','King guestrooms provide a comfortable and convenient retreat during your stay. The decor is refined and understated, with an elegant gray and white color palette and high-end furnishings.',80),(84,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',40),(85,'Queen','medium sized rooms and offer a queen sized bed, en suite shower and WC or en suite shower over bath and WC, 32-inch flat panel TV, free and secure wireless internet, and a desk.',60),(86,'King','King guestrooms provide a comfortable and convenient retreat during your stay. The decor is refined and understated, with an elegant gray and white color palette and high-end furnishings.',80),(87,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',40),(88,'Queen','medium sized rooms and offer a queen sized bed, en suite shower and WC or en suite shower over bath and WC, 32-inch flat panel TV, free and secure wireless internet, and a desk.',60),(89,'King','King guestrooms provide a comfortable and convenient retreat during your stay. The decor is refined and understated, with an elegant gray and white color palette and high-end furnishings.',80),(90,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',40),(91,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',50),(92,'Queen','medium sized rooms and offer a queen sized bed, en suite shower and WC or en suite shower over bath and WC, 32-inch flat panel TV, free and secure wireless internet, and a desk.',0),(93,'King','King guestrooms provide a comfortable and convenient retreat during your stay. The decor is refined and understated, with an elegant gray and white color palette and high-end furnishings.',0),(94,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',50),(95,'Queen','medium sized rooms and offer a queen sized bed, en suite shower and WC or en suite shower over bath and WC, 32-inch flat panel TV, free and secure wireless internet, and a desk.',0),(96,'King','King guestrooms provide a comfortable and convenient retreat during your stay. The decor is refined and understated, with an elegant gray and white color palette and high-end furnishings.',0),(97,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',50),(98,'Queen','medium sized rooms and offer a queen sized bed, en suite shower and WC or en suite shower over bath and WC, 32-inch flat panel TV, free and secure wireless internet, and a desk.',0),(99,'King','King guestrooms provide a comfortable and convenient retreat during your stay. The decor is refined and understated, with an elegant gray and white color palette and high-end furnishings.',0),(100,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',50),(101,'Queen','medium sized rooms and offer a queen sized bed, en suite shower and WC or en suite shower over bath and WC, 32-inch flat panel TV, free and secure wireless internet, and a desk.',0),(102,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',25),(103,'Queen','medium sized rooms and offer a queen sized bed, en suite shower and WC or en suite shower over bath and WC, 32-inch flat panel TV, free and secure wireless internet, and a desk.',55),(104,'King','King guestrooms provide a comfortable and convenient retreat during your stay. The decor is refined and understated, with an elegant gray and white color palette and high-end furnishings.',89),(105,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',25),(106,'Queen','medium sized rooms and offer a queen sized bed, en suite shower and WC or en suite shower over bath and WC, 32-inch flat panel TV, free and secure wireless internet, and a desk.',55),(107,'King','King guestrooms provide a comfortable and convenient retreat during your stay. The decor is refined and understated, with an elegant gray and white color palette and high-end furnishings.',89),(108,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',25),(109,'Queen','medium sized rooms and offer a queen sized bed, en suite shower and WC or en suite shower over bath and WC, 32-inch flat panel TV, free and secure wireless internet, and a desk.',55),(110,'King','King guestrooms provide a comfortable and convenient retreat during your stay. The decor is refined and understated, with an elegant gray and white color palette and high-end furnishings.',89),(111,'Standard','a table, chair, desk, cupboard, dressing table, DVD player, television, telephone, coffee maker and a private bathroom.',25),(112,'Queen','medium sized rooms and offer a queen sized bed, en suite shower and WC or en suite shower over bath and WC, 32-inch flat panel TV, free and secure wireless internet, and a desk.',55),(142,'Queen','Super Fast  Express serivce',100),(143,'Queen','Super Fast  Express serivce',100),(144,'Queen','Super Fast  Express serivce',100),(145,'Queen','Super Fast  Express serivce',100),(147,'Queen','COOL HOTEL',200),(148,'Queen','COOL HOTEL',200),(149,'Queen','COOL HOTEL',200),(150,'Queen','COOL HOTEL',200);
/*!40000 ALTER TABLE `room_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session` (
  `id` int NOT NULL AUTO_INCREMENT,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES (1,'2010-01-01','2010-01-10'),(2,'2010-01-20','2010-01-30'),(3,'2010-02-01','2010-02-15');
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `email` varchar(40) CHARACTER SET latin1 NOT NULL,
  `password` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fname` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `lname` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT 'last name here',
  `phone` char(15) DEFAULT '000-000-0000',
  `dob` date DEFAULT (curdate()),
  `usertype` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT 'CUST',
  PRIMARY KEY (`userId`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (5,'CUST@gmail.com','�fm�I˗�����L�	����^k\nW�`I','Brandon','CUST','210-899-9895','2021-10-01','CUST'),(7,'CUST2@gmail.com','���h+���kD���u���\ZT��>��>�9�','CUST2','CUST2','888-888-8888','2021-10-02','CUST'),(10,'CUST5@hotmail.com','�U!V�\'�u��nL�B4���7�FD/������','CUST5','CUST55','210-555-5555','2021-11-05','CUST'),(13,'CUST8@gmail.com','Œ���,`t,�!]����}Isqo�[�','CUST8','CUST8','210-888-8888','2021-11-08','CUST'),(14,'CUST9@gmail.com','�l&C��>9�T`�$�0�� ��O�]��!^\\E','CUST9','CUST9','210-999-9999','2021-11-09','CUST'),(18,'EMP@gmail.com','\\���g��?��r���|�\\|п:1Š�Ɠou_�','EMP','EMP','210-222-2222','2021-11-01','EMP'),(19,'guestCustomer@gmail.com','TEMPPASSWORD','WIlliam','last name here','000-000-0000','2021-11-26','CUST'),(20,'NEWUSER@gmail.com','�g��N�ނx��j0����H���t�)��rYv��','NEWUSER','last name here','000-000-0000','2021-11-27','CUST'),(23,'jack@gmail.com','�e�Y B/�A~Hg��O��J?��~������z�','Brandon','Muller','619-919-4368','2021-11-03','CUST'),(27,'jack2@gmail.com','���Ki��4\"����>\n-�����uR5�\\P�','jack2@gmail.com','last name here','000-000-0000','2021-11-27','CUST'),(28,'Batman','','James','Wayne','777-777-7777','2021-11-10','CUST'),(29,'Juan@gmail.com','�e�Y B/�A~Hg��O��J?��~������z�','Juan','Valadez','111-111-1111','2021-11-10','CUST'),(30,'Jacob@gmail.com','�e�Y B/�A~Hg��O��J?��~������z�','Jacob','Brady','111-111-1111','2021-11-10','CUST'),(31,'Manny@gmail.com','�e�Y B/�A~Hg��O��J?��~������z�','Manny','Garcia','111-111-1111','2021-11-10','CUST'),(33,'page@gmail.com','�e�Y B/�A~Hg��O��J?��~������z�','Page','Black','999-999-9999','2021-11-01','CUST'),(34,'brandon1@gmail.com','�e�Y B/�A~Hg��O��J?��~������z�','Brandon','Muller','111-111-1111','2021-11-01','CUST'),(35,'Jack1@gmail.com','�e�Y B/�A~Hg��O��J?��~������z�','Jack','Black','111-111-1111','2021-11-22','CUST'),(36,'mason@gmail.com','�e�Y B/�A~Hg��O��J?��~������z�','mason','pohler','999-999-9999','2021-11-01','CUST'),(37,'pizza@gmail.com','K4��@��O��0X�7�fh�K���L~\0','dominos','hutt','111-111-1111','2021-11-05','CUST'),(38,'jaun1@gmail.com','K4��@��O��0X�7�fh�K���L~\0','William','Jackson','111-111-1111','2021-11-16','CUST'),(39,'brandon2@gmail.com','�e�Y B/�A~Hg��O��J?��~������z�','Brandon','Muller','111-111-1111','2021-11-01','CUST'),(40,'Brandon3@gmail.com','K4��@��O��0X�7�fh�K���L~\0','Brandon','Muller','999-999-9999','2021-11-01','CUST'),(41,'Zelle@gmail.com','e|:|��%�: �\n5\rn>���G�?#T:�]�','Zelle','Last','000-000-0000','2021-11-29','CUST'),(42,'zell@gmail.com','%�딥�a�J�@H�cf>�,�%�������,1�','Zelle','last name here','000-000-0000','2021-11-29','CUST'),(43,'Will@gmail.com','����2�\Z`�@AP�}hĳ ���U�m\r���Q3�','William','last name here','000-000-0000','2022-05-04','CUST');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `users_AFTER_INSERT` AFTER INSERT ON `users` FOR EACH ROW BEGIN
IF (NEW.usertype = "CUST") 
THEN INSERT INTO customer(custId) VALUES(NEW.userId);
ELSE INSERT INTO employee(empId) VALUES(NEW.userId);
END IF;  
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'hotel'
--

--
-- Dumping routines for database 'hotel'
--
/*!50003 DROP FUNCTION IF EXISTS `calculateTotal` */;
ALTER DATABASE `hotel` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` FUNCTION `calculateTotal`(checkout DATE,checkin DATE, Room_rate DOUBLE, surcharge decimal(5,2)) RETURNS int
BEGIN
Declare TotalPrice DOUBLE;
    Declare TotalWeekDays INT;
    Declare TotalWeekEndDays INT;
    Declare surchargeRate INT;
    Declare WeekEndsurchargeTotal INT;
    Declare WeekDaychargeTotal INT;
    SET surchargeRate = Room_rate * surcharge;
	SET TotalWeekDays = 5 * (DATEDIFF(checkout, checkin) DIV 7) + MID('0123444401233334012222340111123400001234000123440', 7 * WEEKDAY(checkin) + WEEKDAY(checkout) + 1, 1);
	SET TotalWeekEndDays = DATEDIFF(checkout,checkin) - TotalWeekDays;
    SET WeekDaychargeTotal = TotalWeekDays * Room_rate;
    SET WeekEndsurchargeTotal = (TotalWeekEndDays * Room_rate) + (TotalWeekEndDays * surchargeRate);
    SET TotalPrice = WeekDayChargeTotal + WeekEndsurchargeTotal;
 
 RETURN (TotalPrice);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `hotel` CHARACTER SET utf8mb3 COLLATE utf8_general_ci ;
/*!50003 DROP FUNCTION IF EXISTS `CalculateTotalByDateFunc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` FUNCTION `CalculateTotalByDateFunc`(CHECKIN DATE,CHECKOUT DATE, ROOMTYPE VARCHAR(45), hotelID INT) RETURNS double
BEGIN
DECLARE TOTAL DOUBLE;
DECLARE ROOMRATE DOUBLE;
DECLARE WKD_RATE DECIMAL(5,2);
SET ROOMRATE = (SELECT DISTINCT room_rate FROM room_types rt, hotel h , room r WHERE h.hotel_id = r.hotel_id and r.room_id = rt.room_type_id and type_name = ROOMTYPE AND h.hotel_id = hotelID);
SET WKD_RATE = (SELECT hotel_nightlyrate from hotel where hotel_id = hotelID);
SET TOTAL = (SELECT `hotel`.`calculateTotal`(CHECKOUT, CHECKIN, ROOMRATE, WKD_RATE) AS "total");
RETURN TOTAL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetTotalPrice` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` FUNCTION `GetTotalPrice`(checkout DATE,checkin DATE,  Hotel_ID INT, ROOM INT) RETURNS double
BEGIN
Declare surcharge decimal(5,2);
Declare Room_rate DOUBLE;
Declare TotalPrice DOUBLE;
    Declare TotalWeekDays INT;
    Declare TotalWeekEndDays INT;
    Declare surchargeRate INT;
    Declare WeekEndsurchargeTotal INT;
    Declare WeekDaychargeTotal INT;
    SET Room_rate = (select DISTINCT rts.room_rate from room_types rts, room ro , hotel hh where hh.hotel_id = ro.hotel_id and ro.room_id = rts.room_type_id and hh.hotel_id = Hotel_ID and ro.room_number = ROOM);
    SET surcharge = (Select  hotel_nightlyrate from hotel h , room r where h.hotel_id = Hotel_ID and r.room_number = ROOM);
    SET surchargeRate = Room_rate * surcharge;
	SET TotalWeekDays = 5 * (DATEDIFF(checkout, checkin) DIV 7) + MID('0123444401233334012222340111123400001234000123440', 7 * WEEKDAY(checkin) + WEEKDAY(checkout) + 1, 1);
	SET TotalWeekEndDays = DATEDIFF(checkout,checkin) - TotalWeekDays;
    SET WeekDaychargeTotal = TotalWeekDays * Room_rate;
    SET WeekEndsurchargeTotal = (TotalWeekEndDays * Room_rate) + (TotalWeekEndDays * surchargeRate);
    SET TotalPrice = WeekDayChargeTotal + WeekEndsurchargeTotal;
 
 RETURN (TotalPrice);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BookRooms` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `BookRooms`( custID INT, HOTEL_ID INT, check_IN DATE, check_OUT DATE, Adults INT, Children INT, RoomType VARCHAR(40), QTY INT)
sp : BEGIN
DECLARE i INT DEFAULT 1; 

WHILE (i <= QTY) DO
SELECT @reservationID := max(reservationId) from reservation;
SELECT @MAX_ROOM_NUM := r.room_number from room r, hotel h, room_types rt where h.hotel_id = r.hotel_id and r.room_id = rt.room_type_id and rt.type_name = RoomType  and h.hotel_id = HOTEL_ID and r.room_number NOT IN (
select DISTINCT rr.room_number from room_reserved rr, room_types rt, hotel h, room r where  r.room_number = rr.room_number and rt.type_name = RoomType AND
check_IN < rr.res_check_out AND check_OUT > rr.res_check_in);
IF (@MAX_ROOM_NUM IS NULL OR 
      @MAX_ROOM_NUM = '' ) THEN
      LEAVE sp;
      END IF;
      
    INSERT INTO `hotel`.`reservation`
(
`reservationId`,
`custId`,
`hotel_id`,
`room_number`,
`reserved_date`,
`check_in`,
`check_out`,
`total_price`,
`adults`,
`children`)
VALUES(@reservationID+1, custID, HOTEL_ID, @MAX_ROOM_NUM, current_date(), check_IN, check_OUT, CalculateTotalByDateFunc(check_IN, check_OUT, RoomType, HOTEL_ID) , Adults, Children);
    SET i = i+1;
END WHILE;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CalculateTotalByDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CalculateTotalByDate`(CHECKOUT DATE,CHECKIN DATE, ROOMRATE DOUBLE, hotelID INT)
BEGIN
DECLARE WKD_RATE DECIMAL(5,2);
SET WKD_RATE = (SELECT hotel_nightlyrate from hotel where hotel_id = hotelID);
SELECT `hotel`.`calculateTotal`(CHECKOUT, CHECKIN, ROOMRATE, WKD_RATE) AS "total";
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CreateNewHotel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CreateNewHotel`(HotelName VARCHAR(40), HotelAddress VARCHAR(40), HotelDesc VARCHAR(40), TotalRooms VARCHAR(40), HotelNumOfAmen INT, HotelRating INT, NightlyRate decimal(5,2))
BEGIN
INSERT INTO `hotel`.`hotel`
(
`hotel_name`,
`hotel_address`,
`hotel_desc`,
`hotel_total_rms`,
`hotel_availrms`,
`hotel_numofamend`,
`hotel_rating`,
`hotel_nightlyrate`,
`hotel_image`)
VALUES(HotelName,HotelAddress,HotelDesc, TotalRooms,TotalRooms,HotelNumOfAmen, HotelRating,NightlyRate,HotelName);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CreateNewUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CreateNewUser`(NEW_EMAIL VARCHAR(40), NEW_HASHED_PASSWORD CHAR(40), FNAME VARCHAR(40), USERTYPE VARCHAR(45))
BEGIN

INSERT INTO `hotel`.`users`
(
`email`,
`password`,
`fname`,
`usertype`)
VALUES(NEW_EMAIL,NEW_HASHED_PASSWORD,FNAME,USERTYPE);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `doesHotelExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `doesHotelExist`(hotelName varchar(40))
BEGIN
select Count(*) from hotel where hotel_name = hotelName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FilterResByGuestName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `FilterResByGuestName`(GuestName VARCHAR(40))
BEGIN
select u.fname, h.hotel_name, res.check_in, res.check_out,res.total_price, res.reservationId  from reservation res, customer c, users u, hotel h where u.userId = c.custId and 
c.custId = res.custId and res.hotel_id = h.hotel_id and u.fname = GuestName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllAmenities` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getAllAmenities`()
BEGIN
select DISTINCT Amenities_desc AS amenities from amenities;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllAvailRoomsByDateRange` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getAllAvailRoomsByDateRange`(RoomType VARCHAR(40), HotelID INT, checkIN DATE, checkOUT DATE)
BEGIN
SELECT DISTINCT rt.type_name , r.room_number from room r, hotel h, room_types rt, room_reserved rr where h.hotel_id = r.hotel_id and r.room_id = rt.room_type_id and rt.type_name = RoomType and h.hotel_id = HotelID and r.room_number 
NOT IN (SELECT room_number from room_reserved) AND
checkIN < rr.res_check_out AND checkOUT > rr.res_check_in;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllHotelsAndAmenities` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getAllHotelsAndAmenities`()
BEGIN
SELECT DISTINCT h.hotel_id, hotel_name, hotel_address, hotel_desc, hotel_availrms, hotel_numofamend, room_rate, hotel_rating , group_concat(DISTINCT Amenities_desc), hotel_image
FROM hotel h , room r, room_types rt , room_reserved rr , hotel_amenities ha, amenities a
WHERE h.hotel_id = r.hotel_id 
AND r.room_id = rt.room_type_id 
AND ha.hotel_id = h.hotel_id
AND ha.amenitiesId = a.amenitiesId
AND rt.type_name = "Standard"
AND h.hotel_availrms > 0
GROUP BY hotel_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllPropertiesByRoomType` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getAllPropertiesByRoomType`(RoomTYPE VARCHAR(40))
BEGIN
select DISTINCT hotel_name from hotel h , room r, room_types rt where h.hotel_id = r.hotel_id and r.room_id = rt.room_type_id and type_name = RoomTYPE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllRoomTypes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getAllRoomTypes`(hotel_Id INT)
BEGIN
select DISTINCT type_name, rt.room_type_desc from hotel h, room r, room_types rt where h.hotel_id = r.hotel_id and r.room_id = rt.room_type_id and r.hotel_id = hotel_Id; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllRoomTypes2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getAllRoomTypes2`(hotelNAME VARCHAR(40))
BEGIN
select DISTINCT type_name, rt.room_type_desc from hotel h, room r,
 room_types rt where h.hotel_id = r.hotel_id and r.room_id = rt.room_type_id and h.hotel_name = hotelNAME; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllRoomTypesThatExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getAllRoomTypesThatExist`()
BEGIN
select DISTINCT type_name AS roomtypes from room_types;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAmenitiesByHotel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getAmenitiesByHotel`(hotelName VARCHAR(40))
BEGIN
SELECT amenities.Amenities_desc FROM amenities LEFT OUTER JOIN hotel_amenities ON amenities.amenitiesId = hotel_amenities.amenitiesId
 WHERE hotel_amenities.hotel_id = (Select hotel_id from hotel where hotel_name = hotelName);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCountTypeAvailRooms` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getCountTypeAvailRooms`(RoomType VARCHAR(40), HotelID INT, checkIN DATE, checkOUT DATE)
BEGIN
SELECT count(r.room_number) AS "count", rt.type_name, rt.room_rate from room r, hotel h, room_types rt 
where h.hotel_id = r.hotel_id and r.room_id = rt.room_type_id and rt.type_name = RoomType and h.hotel_id = HotelID and r.room_number 
NOT IN (
select DISTINCT rr.room_number from room_reserved rr, room_types rt, hotel h, room r where  r.room_number = rr.room_number and r.room_id and rt.type_name = RoomType AND
checkIN < rr.res_check_out AND checkOUT > rr.res_check_in);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCountTypeAvailRooms2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getCountTypeAvailRooms2`(RoomType VARCHAR(40), HotelName VARCHAR(45), checkIN DATE, checkOUT DATE)
BEGIN
SELECT count(r.room_number) AS "count", rt.type_name, rt.room_rate from room r, hotel h, room_types rt 
where h.hotel_id = r.hotel_id and r.room_id = rt.room_type_id and rt.type_name = RoomType and h.hotel_name = HotelName and r.room_number 
NOT IN (
select DISTINCT rr.room_number from room_reserved rr, room_types rt, hotel h, room r where  r.room_number = rr.room_number and r.room_id and rt.type_name = RoomType AND
checkIN < rr.res_check_out AND checkOUT > rr.res_check_in);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCountTypeAvailRoomsWithPrice` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getCountTypeAvailRoomsWithPrice`(RoomType VARCHAR(40), HotelID INT, checkIN DATE, checkOUT DATE, roomRate INT )
BEGIN
SELECT count(r.room_number), r.room_number, rt.type_name from room r, hotel h, room_types rt where h.hotel_id = r.hotel_id and r.room_id = rt.room_type_id and rt.type_name = RoomType and h.hotel_id = HotelID and r.room_number NOT IN (
select DISTINCT rr.room_number from room_reserved rr, room_types rt, hotel h, room r where  r.room_number = rr.room_number and r.room_id and rt.type_name = RoomType AND
checkIN < rr.res_check_out AND checkOUT > rr.res_check_in) UNION
SELECT `hotel`.`CalculateTotalByDate`(checkOUT, checkIN, roomRate, HotelID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getHotelsByDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getHotelsByDate`(IN check_in DATE, check_out DATE)
BEGIN
Select DISTINCT hotel_name, hotel_address,  hotel_desc, hotel_availrms, hotel_numofamend, room_rate, hotel_rating from hotel h , room r, room_types rt ,room_reserved rr where 
 h.hotel_id = r.hotel_id and r.room_id = rt.room_type_id and rt.room_type_id = rr.rrId and 1>
(select count(*) from reservation res, room_reserved rr, room r, hotel h where res.rId = rr.rId and rr.room_number = r.room_number
and r.hotel_id = h.hotel_id and @check_in < rr.res_check_out and @check_out > rr.res_check_in);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getID`(FNAME VARCHAR(40), USER_TYPE VARCHAR(40))
BEGIN

IF USER_TYPE = "CUST" THEN
	select c.custId AS "ID" from customer c, users u where u.userId = c.custId and u.fname = FNAME;
ELSE
	select e.empId AS "ID" from employee e, users u where u.userId = e.empId and u.fname = FNAME;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getListAvailHotels` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getListAvailHotels`()
BEGIN
Select DISTINCT h.hotel_id, hotel_name, hotel_address,  hotel_desc, hotel_availrms, hotel_numofamend, room_rate, hotel_rating , hotel_image from hotel h , room r, room_types rt ,room_reserved rr where 
 h.hotel_id = r.hotel_id and r.room_id = rt.room_type_id and rt.type_name = "Standard" and h.hotel_availrms > 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getNumDays` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getNumDays`(Check_in DATE, Check_out DATE)
BEGIN
select DATEDIFF(Check_out,Check_in) AS days;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getOverlapDateRanges` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getOverlapDateRanges`(checkIN DATE, checkOUT DATE, RoomType VARCHAR(40), hotelID INT)
BEGIN
SELECT  DISTINCT res_check_in, res_check_out from room_reserved rr, room_types rt, hotel h, room r where h.hotel_id = r.hotel_id and r.room_id = rt.room_type_id 
AND checkIN < rr.res_check_out AND checkOUT > rr.res_check_in 
AND rt.type_name = RoomType and h.hotel_id = hotelID and r.room_number = rr.room_number;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getRoomByType` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `getRoomByType`(roomType VARCHAR(40), hotel_ID INT)
BEGIN
select count(*) , type_name, room_rate from room_types rt, room r, hotel h where h.hotel_id = r.hotel_id and r.room_id = rt.room_type_id and h.hotel_id = hotel_ID and type_name = roomType; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ReservationFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `ReservationFilter`(GuestName VARCHAR(45), HotelName VARCHAR(45), CheckIN DATE, CheckOUT DATE)
BEGIN
			IF GuestName = '' AND HotelName = '' AND CheckIN IS NULL AND CheckOut IS NULL THEN
            select h.hotel_image,u.fname, h.hotel_name, res.check_in, res.check_out,res.total_price, res.reservationId, res.adults, res.children  from reservation res, customer c, users u, hotel h where u.userId = c.custId and 
			c.custId = res.custId and res.hotel_id = h.hotel_id and u.fname = u.fname
			and h.hotel_name = h.hotel_name and '2020-01-01' < res.check_out and '2030-01-01' > res.check_in;
            ELSEIF  HotelName = '' AND CheckIN IS NULL AND CheckOut IS NULL THEN
            select h.hotel_image,u.fname, h.hotel_name, res.check_in, res.check_out,res.total_price, res.reservationId, res.adults, res.children  from reservation res, customer c, users u, hotel h where u.userId = c.custId and 
			c.custId = res.custId and res.hotel_id = h.hotel_id and u.fname LIKE CONCAT('%', GuestName , '%')
			and h.hotel_name = h.hotel_name and '2020-01-01' < res.check_out and '2030-01-01' > res.check_in;
            ELSEIF  GuestName = '' AND CheckIN IS NULL AND CheckOut IS NULL THEN
            select h.hotel_image,u.fname, h.hotel_name, res.check_in, res.check_out,res.total_price, res.reservationId, res.adults, res.children  from reservation res, customer c, users u, hotel h where u.userId = c.custId and 
			c.custId = res.custId and res.hotel_id = h.hotel_id and u.fname = u.fname
			and h.hotel_name LIKE CONCAT('%', HotelName , '%') and '2020-01-01' < res.check_out and '2030-01-01' > res.check_in;
            ELSEIF GuestName = '' AND HotelName = '' THEN
			select h.hotel_image,u.fname, h.hotel_name, res.check_in, res.check_out,res.total_price, res.reservationId, res.adults, res.children  from reservation res, customer c, users u, hotel h where u.userId = c.custId and 
			c.custId = res.custId and res.hotel_id = h.hotel_id and u.fname = u.fname
			and h.hotel_name = h.hotel_name and CheckIN < res.check_out and CheckOUT > res.check_in;
            ELSEIF CheckIN IS NULL AND CheckOut IS NULL THEN
			select h.hotel_image,u.fname, h.hotel_name, res.check_in, res.check_out,res.total_price, res.reservationId, res.adults, res.children  from reservation res, customer c, users u, hotel h where u.userId = c.custId and 
			c.custId = res.custId and res.hotel_id = h.hotel_id and u.fname LIKE CONCAT('%', GuestName , '%')
			and h.hotel_name LIKE CONCAT('%', HotelName , '%') and '2020-01-01' < res.check_out and '2030-01-01' > res.check_in;
            ELSEIF  GuestName = ''
            THEN 
            select h.hotel_image,u.fname, h.hotel_name, res.check_in, res.check_out,res.total_price, res.reservationId, res.adults, res.children  from reservation res, customer c, users u, hotel h where u.userId = c.custId and 
			c.custId = res.custId and res.hotel_id = h.hotel_id and u.fname = u.fname
			and h.hotel_name LIKE CONCAT('%', HotelName , '%') and CheckIN < res.check_out and CheckOUT > res.check_in;
            ELSEIF  HotelName = ''
            THEN 
            select h.hotel_image,u.fname, h.hotel_name, res.check_in, res.check_out,res.total_price, res.reservationId, res.adults, res.children  from reservation res, customer c, users u, hotel h where u.userId = c.custId and 
			c.custId = res.custId and res.hotel_id = h.hotel_id and u.fname LIKE CONCAT('%', GuestName , '%')
			and h.hotel_name = h.hotel_name and CheckIN < res.check_out and CheckOUT > res.check_in;
            ELSE
			select h.hotel_image,u.fname, h.hotel_name, res.check_in, res.check_out,res.total_price, res.reservationId, res.adults, res.children  from reservation res, customer c, users u, hotel h where u.userId = c.custId and 
			c.custId = res.custId and res.hotel_id = h.hotel_id and u.fname = GuestName
			and h.hotel_name LIKE CONCAT('%', HotelName , '%') and CheckIN < res.check_out and CheckOUT > res.check_in;
            END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `test` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `test`(COUNT INT, CUST_ID INT)
BEGIN
DECLARE i INT DEFAULT 1; 


WHILE (i <= COUNT) DO
SELECT @QUEEN_ROOM := r.room_number from room r, hotel h, room_types rt where h.hotel_id = r.hotel_id and r.room_id = rt.room_type_id and rt.type_name = "Queen"  and h.hotel_id = 2 and r.room_number NOT IN (
select DISTINCT rr.room_number from room_reserved rr, room_types rt, hotel h, room r where  r.room_number = rr.room_number and r.room_id and rt.type_name = "Queen" AND
'2021-10-01' < rr.res_check_out AND '2021-12-20' > rr.res_check_in);

SELECT @QUEEN_ROOM + "COUNT NUMBER"+i;


SET i = i+1;
END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateBulkRoomTypes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `updateBulkRoomTypes`(TypeName VARCHAR(40), TypeDesc VARCHAR(40), RoomRATE DOUBLE, QTY INT)
BEGIN
UPDATE room_types
    SET type_name = TypeName, room_type_desc = TypeDesc, room_rate = RoomRATE  where type_name = "updatetype" and room_type_desc = "updatedesc" LIMIT QTY;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userCreate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `userCreate`(HotelNAME VARCHAR(45), checkIN DATE, checkOUT DATE)
BEGIN
IF  HotelName = '' AND CheckIN IS NULL AND CheckOut IS NULL THEN
  select DISTINCT h.hotel_image, h.hotel_name, h.hotel_address, h.hotel_desc,h.hotel_availrms,h.hotel_numofamend,h.hotel_nightlyrate,h.hotel_rating,h.hotel_id from reservation res, customer c, users u, hotel h where 
h.hotel_name = h.hotel_name and res.check_in NOT IN( '2020-01-01' < res.check_out and '2030-01-01' > res.check_in);
ELSEIF HotelName = '' THEN
select DISTINCT h.hotel_image, h.hotel_name, h.hotel_address, h.hotel_desc,h.hotel_availrms,h.hotel_numofamend,h.hotel_nightlyrate,h.hotel_rating,h.hotel_id from reservation res, customer c, users u, hotel h where 
h.hotel_name = h.hotel_name and res.check_in NOT IN( CheckIN < res.check_out and checkOUT > res.check_in);
ELSEIF CheckIN IS NULL AND CheckOut IS NULL THEN
select DISTINCT h.hotel_image, h.hotel_name, h.hotel_address, h.hotel_desc,h.hotel_availrms,h.hotel_numofamend,h.hotel_nightlyrate,h.hotel_rating,h.hotel_id from reservation res, customer c, users u, hotel h where 
h.hotel_name LIKE CONCAT('%', HotelName , '%') and res.check_in NOT IN( '2020-01-01' < res.check_out and '2020-01-01' > res.check_in);
else
 select DISTINCT h.hotel_image, h.hotel_name, h.hotel_address, h.hotel_desc,h.hotel_availrms,h.hotel_numofamend,h.hotel_nightlyrate,h.hotel_rating,h.hotel_id from reservation res, customer c, users u, hotel h where 
h.hotel_name = h.hotel_name and res.check_in NOT IN( '2020-01-01' < res.check_out and '2030-01-01' > res.check_in);
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UserManageFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `UserManageFilter`(CUSTID INT, HotelName VARCHAR(45), CheckIN DATE, CheckOUT DATE)
BEGIN
			IF HotelName = '' AND CheckIN IS NULL AND CheckOut IS NULL THEN
            select h.hotel_image,h.hotel_name, res.check_in, res.check_out, res.total_price, res.reservationId, res.adults, res.children from reservation res, hotel h where res.hotel_id = h.hotel_id and res.custId = CUSTID 
			and h.hotel_name = h.hotel_name and '2020-01-01' < res.check_out and '2030-01-01' > res.check_in;
            
            ELSEIF  CheckIN IS NULL AND CheckOut IS NULL THEN
			select  h.hotel_image, h.hotel_name, res.check_in, res.check_out, res.total_price, res.reservationId, res.adults, res.children from reservation res, hotel h where res.hotel_id = h.hotel_id and res.custId = CUSTID 
			and h.hotel_name LIKE CONCAT('%', HotelName , '%') and '2020-01-01' < res.check_out and '2030-01-01' > res.check_in;
            
            ELSEIF HotelName = '' THEN
			select h.hotel_image,h.hotel_name, res.check_in, res.check_out, res.total_price, res.reservationId, res.adults, res.children from reservation res, hotel h where res.hotel_id = h.hotel_id and res.custId = CUSTID 
			and h.hotel_name = h.hotel_name and CheckIN < res.check_out and CheckOUT > res.check_in;
            
            ELSE
            select h.hotel_image,h.hotel_name, res.check_in, res.check_out, res.total_price, res.reservationId, res.adults, res.children from reservation res, hotel h where res.hotel_id = h.hotel_id and res.custId = CUSTID 
			and h.hotel_name LIKE CONCAT('%', HotelName , '%') and CheckIN < res.check_out and CheckOUT > res.check_in;
            END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-04 10:15:03
