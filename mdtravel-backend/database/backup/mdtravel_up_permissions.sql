CREATE DATABASE  IF NOT EXISTS `mdtravel` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mdtravel`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mdtravel
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `up_permissions`
--

DROP TABLE IF EXISTS `up_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  KEY `up_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_permissions`
--

LOCK TABLES `up_permissions` WRITE;
/*!40000 ALTER TABLE `up_permissions` DISABLE KEYS */;
INSERT INTO `up_permissions` VALUES (1,'plugin::users-permissions.auth.connect','2022-02-25 08:40:36.576000','2022-02-25 08:40:36.576000',NULL,NULL),(2,'plugin::users-permissions.user.me','2022-02-25 08:40:36.576000','2022-02-25 08:40:36.576000',NULL,NULL),(5,'plugin::users-permissions.auth.callback','2022-02-25 08:40:36.595000','2022-02-25 08:40:36.595000',NULL,NULL),(6,'plugin::users-permissions.auth.connect','2022-02-25 08:40:36.595000','2022-02-25 08:40:36.595000',NULL,NULL),(9,'plugin::users-permissions.auth.register','2022-02-25 08:40:36.595000','2022-02-25 08:40:36.595000',NULL,NULL),(11,'plugin::users-permissions.user.me','2022-02-25 08:40:36.595000','2022-02-25 08:40:36.595000',NULL,NULL),(12,'api::author.author.find','2022-02-25 11:18:30.815000','2022-02-25 11:18:30.815000',NULL,NULL),(13,'api::author.author.findOne','2022-02-25 11:18:30.815000','2022-02-25 11:18:30.815000',NULL,NULL),(14,'api::category.category.find','2022-02-25 11:18:30.815000','2022-02-25 11:18:30.815000',NULL,NULL),(15,'api::category.category.findOne','2022-02-25 11:18:30.815000','2022-02-25 11:18:30.815000',NULL,NULL),(16,'api::post.post.find','2022-02-25 11:18:30.815000','2022-02-25 11:18:30.815000',NULL,NULL),(17,'api::post.post.findOne','2022-02-25 11:18:30.815000','2022-02-25 11:18:30.815000',NULL,NULL),(18,'api::global.global.find','2022-03-10 22:16:04.278000','2022-03-10 22:16:04.278000',NULL,NULL),(19,'api::global.global.update','2022-03-10 22:19:08.182000','2022-03-10 22:19:08.182000',NULL,NULL),(20,'api::global.global.delete','2022-03-10 22:19:08.182000','2022-03-10 22:19:08.182000',NULL,NULL),(21,'api::homepage.homepage.find','2022-03-14 23:12:53.565000','2022-03-14 23:12:53.565000',NULL,NULL);
/*!40000 ALTER TABLE `up_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-15  8:13:44
