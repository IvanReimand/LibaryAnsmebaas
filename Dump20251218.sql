-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: library_database
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `book_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `availability` varchar(255) NOT NULL,
  `rent_time` datetime NOT NULL,
  `return_time` datetime NOT NULL,
  `banned_book` varchar(255) DEFAULT NULL,
  `book_desc` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `work_id` int unsigned NOT NULL,
  `library_id` bigint unsigned NOT NULL,
  `inserted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`book_id`),
  KEY `library_id` (`library_id`),
  KEY `bookcheck_1` (`work_id`),
  CONSTRAINT `bookcheck_1` FOREIGN KEY (`work_id`) REFERENCES `work` (`id`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`work_id`) REFERENCES `work` (`id`),
  CONSTRAINT `books_ibfk_2` FOREIGN KEY (`library_id`) REFERENCES `library` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3364 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1226,'n','2025-12-12 12:00:05','2025-12-12 13:00:05','n','something else again','25',1,0,'2025-12-18 13:02:56','2025-12-18 13:21:33'),(1227,'y','2025-12-12 12:00:05','2026-01-04 19:00:00','n','great','25',1,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(1235,'y','2025-12-12 12:20:22','2026-07-01 18:00:00','n','interest','24',1,1,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(2222,'y','2025-12-19 12:00:05','2026-02-01 18:00:05','n','super','28',1,1,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3345,'y','2026-01-01 12:00:00','2019-12-25 17:00:00','n','sdvisdvhh','22',2,1,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3346,'n','2026-01-01 13:00:00','2026-01-04 19:00:00','n','super','23',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3347,'y','2025-01-01 11:00:00','2025-12-12 13:00:05','n','hsdfhdf','22',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3348,'y','2026-01-01 10:00:00','2026-01-04 19:00:00','n','super','14',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3349,'n','2026-01-01 00:00:00','2026-04-04 19:00:00','n','super','34',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3350,'n','2025-01-01 17:00:00','2026-02-01 18:00:05','n','hsdfhdf','23',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3351,'y','2026-01-01 16:00:00','2026-05-04 19:00:00','n','super','27',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3352,'y','2025-01-01 14:00:00','2026-02-04 19:00:00','n','great','36',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3353,'y','2026-01-01 10:00:00','2026-01-04 19:00:00','n','great','26',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3354,'y','2025-01-01 15:00:00','2025-12-12 13:00:05','n','super','43',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3355,'n','2025-01-01 19:00:00','2026-01-04 19:00:00','n','great','27',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3356,'y','2026-01-01 13:00:00','2026-02-01 18:00:05','n','great','32',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3357,'y','2025-01-01 12:00:00','2025-12-12 13:00:05','n','super','44',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3358,'n','2025-01-01 12:00:00','2026-01-04 19:00:00','n','hsdfhdf','21',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3359,'y','2025-01-01 15:00:00','2026-01-04 19:00:00','n','great','22',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3360,'y','2026-01-01 14:00:00','2025-12-12 13:00:05','n','super','31',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3361,'n','0000-00-00 00:00:00','0000-00-00 00:00:00','n','great','36',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3362,'n','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'super','33',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3363,'y','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'something','27',0,0,'2025-12-18 13:02:56','2025-12-18 13:20:57');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books_history`
--

DROP TABLE IF EXISTS `books_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books_history` (
  `book_id` bigint unsigned NOT NULL DEFAULT '0',
  `availability` varchar(255) NOT NULL,
  `rent_time` datetime NOT NULL,
  `return_time` datetime NOT NULL,
  `banned_book` varchar(255) DEFAULT NULL,
  `book_desc` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `work_id` int unsigned NOT NULL,
  `library_id` bigint unsigned NOT NULL,
  `inserted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_history`
--

LOCK TABLES `books_history` WRITE;
/*!40000 ALTER TABLE `books_history` DISABLE KEYS */;
INSERT INTO `books_history` VALUES (1226,'y','2025-12-12 12:00:05','2025-12-12 13:00:05','n','hsdfhdf','25',1,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(1227,'y','2025-12-12 12:00:05','2026-01-04 19:00:00','n','great','25',1,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(1235,'y','2025-12-12 12:20:22','2026-07-01 18:00:00','n','interest','24',1,1,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(2222,'y','2025-12-19 12:00:05','2026-02-01 18:00:05','n','super','28',1,1,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3345,'y','2026-01-01 12:00:00','2019-12-25 17:00:00','n','sdvisdvhh','22',2,1,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3346,'n','2026-01-01 13:00:00','2026-01-04 19:00:00','n','super','23',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3347,'y','2025-01-01 11:00:00','2025-12-12 13:00:05','n','hsdfhdf','22',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3348,'y','2026-01-01 10:00:00','2026-01-04 19:00:00','n','super','14',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3349,'n','2026-01-01 00:00:00','2026-04-04 19:00:00','n','super','34',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3350,'n','2025-01-01 17:00:00','2026-02-01 18:00:05','n','hsdfhdf','23',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3351,'y','2026-01-01 16:00:00','2026-05-04 19:00:00','n','super','27',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3352,'y','2025-01-01 14:00:00','2026-02-04 19:00:00','n','great','36',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3353,'y','2026-01-01 10:00:00','2026-01-04 19:00:00','n','great','26',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3354,'y','2025-01-01 15:00:00','2025-12-12 13:00:05','n','super','43',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3355,'n','2025-01-01 19:00:00','2026-01-04 19:00:00','n','great','27',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3356,'y','2026-01-01 13:00:00','2026-02-01 18:00:05','n','great','32',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3357,'y','2025-01-01 12:00:00','2025-12-12 13:00:05','n','super','44',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3358,'n','2025-01-01 12:00:00','2026-01-04 19:00:00','n','hsdfhdf','21',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3359,'y','2025-01-01 15:00:00','2026-01-04 19:00:00','n','great','22',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3360,'y','2026-01-01 14:00:00','2025-12-12 13:00:05','n','super','31',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3361,'n','0000-00-00 00:00:00','0000-00-00 00:00:00','n','great','36',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3362,'n','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'super','33',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(3363,'y','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'','27',0,0,'2025-12-18 13:02:56','2025-12-18 13:02:56'),(1226,'y','2025-12-12 12:00:05','2025-12-12 13:00:05','n','hsdfhdf','25',1,0,'2025-12-18 13:19:51','2025-12-18 13:19:51'),(1226,'n','2025-12-12 12:00:05','2025-12-12 13:00:05','n','hsdfhdf','25',1,0,'2025-12-18 13:20:57','2025-12-18 13:20:57'),(3363,'y','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'','27',0,0,'2025-12-18 13:20:57','2025-12-18 13:20:57'),(1226,'n','2025-12-12 12:00:05','2025-12-12 13:00:05','n','something else','25',1,0,'2025-12-18 13:21:33','2025-12-18 13:21:33');
/*!40000 ALTER TABLE `books_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `address` varchar(64) DEFAULT NULL,
  `telephone` decimal(8,0) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Rein','Pikk 7',75867584,'reinft@gmail.com'),(2,'Gretta','Lai 2',5756758,'gerfsv@gmail.com'),(3,'Tavi','Lasnamae 20',56873645,'tvibnrlu@gmail.com'),(4,'Ott','Pae 86',58675871,'Ottmuller@gmail.com'),(5,'Siim','Pinna 6',5657373,'Siimfraer@fmail.com'),(6,'Allar','Koorti 2',5657383,'Allarkaris@gmail.com'),(7,'Roman','Virbi 12',57563633,'Rnabsf@gmail.com'),(8,'Ivan','Laagna 16',59859765,'Ibfdre@gmail.com'),(9,'Tõnis','Tartu mnt 88',647381,'Tonadev@gmail.com'),(10,'Joonas','Pärnu mnt 42',5677322,'Joonlaud@gmail.com');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(255) DEFAULT NULL,
  `employee_surname` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `current_worklocation` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `working_hours` time DEFAULT NULL,
  `number_employess` decimal(65,0) DEFAULT NULL,
  `number_books` decimal(65,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library`
--

LOCK TABLES `library` WRITE;
/*!40000 ALTER TABLE `library` DISABLE KEYS */;
INSERT INTO `library` VALUES (1,'Tõnismägi','09:00:00',123,432);
/*!40000 ALTER TABLE `library` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work`
--

DROP TABLE IF EXISTS `work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `genre` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`,`author`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work`
--

LOCK TABLES `work` WRITE;
/*!40000 ALTER TABLE `work` DISABLE KEYS */;
INSERT INTO `work` VALUES (1,'Master and Margaretha','Mihkail Bulgakov','Fantasy'),(2,'Baskervilles dog','Arthur Conan Doyle','Crime'),(3,'title3','author3','genre3'),(4,'title4','author4','genre4'),(5,'title5','author5','genre5'),(6,'title6','author6','genre6'),(7,'title7','author7','genre7');
/*!40000 ALTER TABLE `work` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-18 15:22:18
