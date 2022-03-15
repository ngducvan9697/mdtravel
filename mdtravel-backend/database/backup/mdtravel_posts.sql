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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` longtext,
  `featured_post` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `excerpt` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`),
  KEY `posts_created_by_id_fk` (`created_by_id`),
  KEY `posts_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `posts_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `posts_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Huế -> Quảng Trị -> Quảng Bình: Ra khỏi vùng an toàn','hue-quangtri-quangbinh-ra-khoi-vung-an-toan','Rời đất cố đô trong không khí mưa phùn se lạnh đặt trưng của vùng đất này. Cảm thấy bản thân mình may mắn khi sinh ra và lớn lên ở nơi đây. Tuy không sống trong kinh thành cổ kính, hay phố thị náo nức mà là một làng quê nơi vắt qua mình là nhánh sông đầu nguồn của Sông Hương.\n⁠\n![file882.jpg](http://localhost:1337/uploads/file882_b92d4fa3c0.jpg)\n\n\n\n\n\n\n',1,'2022-02-25 10:27:30.537000','2022-02-25 10:35:54.664000','2022-02-25 10:32:54.514000',1,1,'Bắt đầu hành trình với nhiều nhiều hào hứng và sự trông đợi. Nhưng bên cạnh đó cũng chất chứa nhiều nỗi lo khi sẽ là những vùng đất, con người, văn hóa mới. Sẽ gặp người tốt giúp đỡ ta có, người xấu muốn lợi dụng ta có. Nhưng hy vọng bản thân sẽ đủ mạnh mẽ để đương đầu những thử thách mới, tự nhủ phải trải qua đắng cay ngọt bùi thì mới thu được những quả ngọt để có thể trưởng thành hơn.'),(2,'A Lưới','a-luoi','\n>Đến một ngày, khi người khác nói bạn trông lúc nào cũng điềm tĩnh thản nhiên, chỉ mình bạn biết, vẻ điềm tĩnh ấy phải đánh đổi bao nhiêu nước mắt mới tôi luyện thành, thái độ thản nhiên trước sóng gió ấy, từng suýt bị bao sóng gió nhấn chìm.\n\n\n![file936.jpg](http://localhost:1337/uploads/file936_ade3faac5d.jpg)',1,'2022-02-25 11:16:11.229000','2022-02-25 11:16:15.811000','2022-02-25 11:16:15.807000',1,1,'Cái gọi là cuộc sống, chính là bạn học cách làm quen với lòng người ấm lạnh, học cách bình thản nhìn kẻ đến người đi…');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-15  8:13:43
