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
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` json DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `files_created_by_id_fk` (`created_by_id`),
  KEY `files_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'48fc01f32e7e1064002bc4ae700a71e3 (1).jpg','48fc01f32e7e1064002bc4ae700a71e3 (1).jpg','48fc01f32e7e1064002bc4ae700a71e3 (1).jpg',480,800,'{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_48fc01f32e7e1064002bc4ae700a71e3_1_aef8a8865e.jpg\", \"hash\": \"small_48fc01f32e7e1064002bc4ae700a71e3_1_aef8a8865e\", \"mime\": \"image/jpeg\", \"name\": \"small_48fc01f32e7e1064002bc4ae700a71e3 (1).jpg\", \"path\": null, \"size\": 7.22, \"width\": 300, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_48fc01f32e7e1064002bc4ae700a71e3_1_aef8a8865e.jpg\", \"hash\": \"medium_48fc01f32e7e1064002bc4ae700a71e3_1_aef8a8865e\", \"mime\": \"image/jpeg\", \"name\": \"medium_48fc01f32e7e1064002bc4ae700a71e3 (1).jpg\", \"path\": null, \"size\": 14.04, \"width\": 450, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_48fc01f32e7e1064002bc4ae700a71e3_1_aef8a8865e.jpg\", \"hash\": \"thumbnail_48fc01f32e7e1064002bc4ae700a71e3_1_aef8a8865e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_48fc01f32e7e1064002bc4ae700a71e3 (1).jpg\", \"path\": null, \"size\": 1.18, \"width\": 94, \"height\": 156}}','48fc01f32e7e1064002bc4ae700a71e3_1_aef8a8865e','.jpg','image/jpeg',12.61,'/uploads/48fc01f32e7e1064002bc4ae700a71e3_1_aef8a8865e.jpg',NULL,'local',NULL,'2022-02-25 10:18:47.026000','2022-02-25 10:18:47.026000',1,1),(2,'file882.jpg','file882.jpg','file882.jpg',6000,4000,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_file882_b92d4fa3c0.jpg\", \"hash\": \"large_file882_b92d4fa3c0\", \"mime\": \"image/jpeg\", \"name\": \"large_file882.jpg\", \"path\": null, \"size\": 30.8, \"width\": 1000, \"height\": 667}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_file882_b92d4fa3c0.jpg\", \"hash\": \"small_file882_b92d4fa3c0\", \"mime\": \"image/jpeg\", \"name\": \"small_file882.jpg\", \"path\": null, \"size\": 11.25, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_file882_b92d4fa3c0.jpg\", \"hash\": \"medium_file882_b92d4fa3c0\", \"mime\": \"image/jpeg\", \"name\": \"medium_file882.jpg\", \"path\": null, \"size\": 20.33, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_file882_b92d4fa3c0.jpg\", \"hash\": \"thumbnail_file882_b92d4fa3c0\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_file882.jpg\", \"path\": null, \"size\": 3.99, \"width\": 234, \"height\": 156}}','file882_b92d4fa3c0','.jpg','image/jpeg',903.77,'/uploads/file882_b92d4fa3c0.jpg',NULL,'local',NULL,'2022-02-25 10:26:47.089000','2022-02-25 10:26:47.089000',1,1),(3,'file63.jpg','file63.jpg','file63.jpg',720,1280,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_file63_a9bbae869e.jpg\", \"hash\": \"large_file63_a9bbae869e\", \"mime\": \"image/jpeg\", \"name\": \"large_file63.jpg\", \"path\": null, \"size\": 71.1, \"width\": 563, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_file63_a9bbae869e.jpg\", \"hash\": \"small_file63_a9bbae869e\", \"mime\": \"image/jpeg\", \"name\": \"small_file63.jpg\", \"path\": null, \"size\": 24.15, \"width\": 281, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_file63_a9bbae869e.jpg\", \"hash\": \"medium_file63_a9bbae869e\", \"mime\": \"image/jpeg\", \"name\": \"medium_file63.jpg\", \"path\": null, \"size\": 45.21, \"width\": 422, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_file63_a9bbae869e.jpg\", \"hash\": \"thumbnail_file63_a9bbae869e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_file63.jpg\", \"path\": null, \"size\": 4.18, \"width\": 88, \"height\": 156}}','file63_a9bbae869e','.jpg','image/jpeg',94.22,'/uploads/file63_a9bbae869e.jpg',NULL,'local',NULL,'2022-02-25 11:11:45.608000','2022-02-25 11:11:45.608000',1,1),(4,'file936.jpg','file936.jpg','file936.jpg',6000,4000,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_file936_ade3faac5d.jpg\", \"hash\": \"large_file936_ade3faac5d\", \"mime\": \"image/jpeg\", \"name\": \"large_file936.jpg\", \"path\": null, \"size\": 128.91, \"width\": 1000, \"height\": 667}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_file936_ade3faac5d.jpg\", \"hash\": \"small_file936_ade3faac5d\", \"mime\": \"image/jpeg\", \"name\": \"small_file936.jpg\", \"path\": null, \"size\": 43.85, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_file936_ade3faac5d.jpg\", \"hash\": \"medium_file936_ade3faac5d\", \"mime\": \"image/jpeg\", \"name\": \"medium_file936.jpg\", \"path\": null, \"size\": 83.52, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_file936_ade3faac5d.jpg\", \"hash\": \"thumbnail_file936_ade3faac5d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_file936.jpg\", \"path\": null, \"size\": 12.89, \"width\": 234, \"height\": 156}}','file936_ade3faac5d','.jpg','image/jpeg',1411.59,'/uploads/file936_ade3faac5d.jpg',NULL,'local',NULL,'2022-02-25 11:13:10.612000','2022-02-25 11:13:10.612000',1,1),(5,'Artboard 1emd.png','Artboard 1emd.png','Artboard 1emd.png',2395,1930,'{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_Artboard_1emd_ac4b999cc7.png\", \"hash\": \"large_Artboard_1emd_ac4b999cc7\", \"mime\": \"image/png\", \"name\": \"large_Artboard 1emd.png\", \"path\": null, \"size\": 127.85, \"width\": 1000, \"height\": 806}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_Artboard_1emd_ac4b999cc7.png\", \"hash\": \"small_Artboard_1emd_ac4b999cc7\", \"mime\": \"image/png\", \"name\": \"small_Artboard 1emd.png\", \"path\": null, \"size\": 52.98, \"width\": 500, \"height\": 403}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_Artboard_1emd_ac4b999cc7.png\", \"hash\": \"medium_Artboard_1emd_ac4b999cc7\", \"mime\": \"image/png\", \"name\": \"medium_Artboard 1emd.png\", \"path\": null, \"size\": 89.54, \"width\": 750, \"height\": 604}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Artboard_1emd_ac4b999cc7.png\", \"hash\": \"thumbnail_Artboard_1emd_ac4b999cc7\", \"mime\": \"image/png\", \"name\": \"thumbnail_Artboard 1emd.png\", \"path\": null, \"size\": 14.45, \"width\": 194, \"height\": 156}}','Artboard_1emd_ac4b999cc7','.png','image/png',37.24,'/uploads/Artboard_1emd_ac4b999cc7.png',NULL,'local',NULL,'2022-03-10 21:41:31.518000','2022-03-10 21:41:31.518000',1,1),(6,'1646209629698.jpg','1646209629698.jpg','1646209629698.jpg',4624,2604,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_1646209629698_bf09516d91.jpg\", \"hash\": \"large_1646209629698_bf09516d91\", \"mime\": \"image/jpeg\", \"name\": \"large_1646209629698.jpg\", \"path\": null, \"size\": 61.84, \"width\": 1000, \"height\": 563}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_1646209629698_bf09516d91.jpg\", \"hash\": \"small_1646209629698_bf09516d91\", \"mime\": \"image/jpeg\", \"name\": \"small_1646209629698.jpg\", \"path\": null, \"size\": 17.63, \"width\": 500, \"height\": 281}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_1646209629698_bf09516d91.jpg\", \"hash\": \"medium_1646209629698_bf09516d91\", \"mime\": \"image/jpeg\", \"name\": \"medium_1646209629698.jpg\", \"path\": null, \"size\": 36.47, \"width\": 750, \"height\": 422}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_1646209629698_bf09516d91.jpg\", \"hash\": \"thumbnail_1646209629698_bf09516d91\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_1646209629698.jpg\", \"path\": null, \"size\": 5.54, \"width\": 245, \"height\": 138}}','1646209629698_bf09516d91','.jpg','image/jpeg',1288.14,'/uploads/1646209629698_bf09516d91.jpg',NULL,'local',NULL,'2022-03-10 21:42:51.654000','2022-03-10 21:42:51.654000',1,1);
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-15  8:13:46
