-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: mdtravel
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
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `conditions` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'plugin::upload.read',NULL,'{}','[]','2022-02-25 08:40:36.743000','2022-02-25 08:40:36.743000',NULL,NULL),(2,'plugin::upload.assets.create',NULL,'{}','[]','2022-02-25 08:40:36.759000','2022-02-25 08:40:36.759000',NULL,NULL),(3,'plugin::upload.assets.update',NULL,'{}','[]','2022-02-25 08:40:36.770000','2022-02-25 08:40:36.770000',NULL,NULL),(4,'plugin::upload.assets.download',NULL,'{}','[]','2022-02-25 08:40:36.779000','2022-02-25 08:40:36.779000',NULL,NULL),(5,'plugin::upload.assets.copy-link',NULL,'{}','[]','2022-02-25 08:40:36.788000','2022-02-25 08:40:36.788000',NULL,NULL),(6,'plugin::upload.read',NULL,'{}','[\"admin::is-creator\"]','2022-02-25 08:40:36.799000','2022-02-25 08:40:36.799000',NULL,NULL),(7,'plugin::upload.assets.create',NULL,'{}','[]','2022-02-25 08:40:36.809000','2022-02-25 08:40:36.809000',NULL,NULL),(8,'plugin::upload.assets.update',NULL,'{}','[\"admin::is-creator\"]','2022-02-25 08:40:36.818000','2022-02-25 08:40:36.818000',NULL,NULL),(9,'plugin::upload.assets.download',NULL,'{}','[]','2022-02-25 08:40:36.828000','2022-02-25 08:40:36.828000',NULL,NULL),(10,'plugin::upload.assets.copy-link',NULL,'{}','[]','2022-02-25 08:40:36.837000','2022-02-25 08:40:36.837000',NULL,NULL),(11,'plugin::content-manager.explorer.create','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}','[]','2022-02-25 08:40:36.882000','2022-02-25 08:40:36.882000',NULL,NULL),(12,'plugin::content-manager.explorer.read','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}','[]','2022-02-25 08:40:36.892000','2022-02-25 08:40:36.892000',NULL,NULL),(13,'plugin::content-manager.explorer.update','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}','[]','2022-02-25 08:40:36.901000','2022-02-25 08:40:36.901000',NULL,NULL),(14,'plugin::content-manager.explorer.delete','plugin::users-permissions.user','{}','[]','2022-02-25 08:40:36.911000','2022-02-25 08:40:36.911000',NULL,NULL),(15,'plugin::content-manager.single-types.configure-view',NULL,'{}','[]','2022-02-25 08:40:36.923000','2022-02-25 08:40:36.923000',NULL,NULL),(16,'plugin::content-manager.collection-types.configure-view',NULL,'{}','[]','2022-02-25 08:40:36.932000','2022-02-25 08:40:36.932000',NULL,NULL),(17,'plugin::content-manager.components.configure-layout',NULL,'{}','[]','2022-02-25 08:40:36.941000','2022-02-25 08:40:36.941000',NULL,NULL),(18,'plugin::content-type-builder.read',NULL,'{}','[]','2022-02-25 08:40:36.951000','2022-02-25 08:40:36.951000',NULL,NULL),(19,'plugin::email.settings.read',NULL,'{}','[]','2022-02-25 08:40:36.960000','2022-02-25 08:40:36.960000',NULL,NULL),(20,'plugin::upload.read',NULL,'{}','[]','2022-02-25 08:40:36.969000','2022-02-25 08:40:36.969000',NULL,NULL),(21,'plugin::upload.assets.create',NULL,'{}','[]','2022-02-25 08:40:36.979000','2022-02-25 08:40:36.979000',NULL,NULL),(22,'plugin::upload.assets.update',NULL,'{}','[]','2022-02-25 08:40:36.990000','2022-02-25 08:40:36.990000',NULL,NULL),(23,'plugin::upload.assets.download',NULL,'{}','[]','2022-02-25 08:40:37.000000','2022-02-25 08:40:37.000000',NULL,NULL),(24,'plugin::upload.assets.copy-link',NULL,'{}','[]','2022-02-25 08:40:37.009000','2022-02-25 08:40:37.009000',NULL,NULL),(25,'plugin::upload.settings.read',NULL,'{}','[]','2022-02-25 08:40:37.018000','2022-02-25 08:40:37.018000',NULL,NULL),(26,'plugin::i18n.locale.create',NULL,'{}','[]','2022-02-25 08:40:37.031000','2022-02-25 08:40:37.031000',NULL,NULL),(27,'plugin::i18n.locale.read',NULL,'{}','[]','2022-02-25 08:40:37.043000','2022-02-25 08:40:37.043000',NULL,NULL),(28,'plugin::i18n.locale.update',NULL,'{}','[]','2022-02-25 08:40:37.053000','2022-02-25 08:40:37.053000',NULL,NULL),(29,'plugin::i18n.locale.delete',NULL,'{}','[]','2022-02-25 08:40:37.063000','2022-02-25 08:40:37.063000',NULL,NULL),(30,'plugin::users-permissions.roles.create',NULL,'{}','[]','2022-02-25 08:40:37.072000','2022-02-25 08:40:37.072000',NULL,NULL),(31,'plugin::users-permissions.roles.read',NULL,'{}','[]','2022-02-25 08:40:37.089000','2022-02-25 08:40:37.089000',NULL,NULL),(32,'plugin::users-permissions.roles.update',NULL,'{}','[]','2022-02-25 08:40:37.108000','2022-02-25 08:40:37.108000',NULL,NULL),(33,'plugin::users-permissions.roles.delete',NULL,'{}','[]','2022-02-25 08:40:37.124000','2022-02-25 08:40:37.124000',NULL,NULL),(34,'plugin::users-permissions.providers.read',NULL,'{}','[]','2022-02-25 08:40:37.139000','2022-02-25 08:40:37.139000',NULL,NULL),(35,'plugin::users-permissions.providers.update',NULL,'{}','[]','2022-02-25 08:40:37.148000','2022-02-25 08:40:37.148000',NULL,NULL),(36,'plugin::users-permissions.email-templates.read',NULL,'{}','[]','2022-02-25 08:40:37.159000','2022-02-25 08:40:37.159000',NULL,NULL),(37,'plugin::users-permissions.email-templates.update',NULL,'{}','[]','2022-02-25 08:40:37.168000','2022-02-25 08:40:37.168000',NULL,NULL),(38,'plugin::users-permissions.advanced-settings.read',NULL,'{}','[]','2022-02-25 08:40:37.179000','2022-02-25 08:40:37.179000',NULL,NULL),(39,'plugin::users-permissions.advanced-settings.update',NULL,'{}','[]','2022-02-25 08:40:37.188000','2022-02-25 08:40:37.188000',NULL,NULL),(40,'admin::marketplace.read',NULL,'{}','[]','2022-02-25 08:40:37.199000','2022-02-25 08:40:37.199000',NULL,NULL),(41,'admin::marketplace.plugins.install',NULL,'{}','[]','2022-02-25 08:40:37.210000','2022-02-25 08:40:37.210000',NULL,NULL),(42,'admin::marketplace.plugins.uninstall',NULL,'{}','[]','2022-02-25 08:40:37.220000','2022-02-25 08:40:37.220000',NULL,NULL),(43,'admin::webhooks.create',NULL,'{}','[]','2022-02-25 08:40:37.230000','2022-02-25 08:40:37.230000',NULL,NULL),(44,'admin::webhooks.read',NULL,'{}','[]','2022-02-25 08:40:37.240000','2022-02-25 08:40:37.240000',NULL,NULL),(45,'admin::webhooks.update',NULL,'{}','[]','2022-02-25 08:40:37.252000','2022-02-25 08:40:37.252000',NULL,NULL),(46,'admin::webhooks.delete',NULL,'{}','[]','2022-02-25 08:40:37.275000','2022-02-25 08:40:37.275000',NULL,NULL),(47,'admin::users.create',NULL,'{}','[]','2022-02-25 08:40:37.286000','2022-02-25 08:40:37.286000',NULL,NULL),(48,'admin::users.read',NULL,'{}','[]','2022-02-25 08:40:37.298000','2022-02-25 08:40:37.298000',NULL,NULL),(49,'admin::users.update',NULL,'{}','[]','2022-02-25 08:40:37.311000','2022-02-25 08:40:37.311000',NULL,NULL),(50,'admin::users.delete',NULL,'{}','[]','2022-02-25 08:40:37.322000','2022-02-25 08:40:37.322000',NULL,NULL),(51,'admin::roles.create',NULL,'{}','[]','2022-02-25 08:40:37.332000','2022-02-25 08:40:37.332000',NULL,NULL),(52,'admin::roles.read',NULL,'{}','[]','2022-02-25 08:40:37.342000','2022-02-25 08:40:37.342000',NULL,NULL),(53,'admin::roles.update',NULL,'{}','[]','2022-02-25 08:40:37.351000','2022-02-25 08:40:37.351000',NULL,NULL),(54,'admin::roles.delete',NULL,'{}','[]','2022-02-25 08:40:37.360000','2022-02-25 08:40:37.360000',NULL,NULL),(55,'admin::api-tokens.create',NULL,'{}','[]','2022-02-25 08:40:37.370000','2022-02-25 08:40:37.370000',NULL,NULL),(56,'admin::api-tokens.read',NULL,'{}','[]','2022-02-25 08:40:37.378000','2022-02-25 08:40:37.378000',NULL,NULL),(57,'admin::api-tokens.update',NULL,'{}','[]','2022-02-25 08:40:37.387000','2022-02-25 08:40:37.387000',NULL,NULL),(58,'admin::api-tokens.delete',NULL,'{}','[]','2022-02-25 08:40:37.399000','2022-02-25 08:40:37.399000',NULL,NULL),(85,'plugin::content-manager.explorer.delete','api::author.author','{}','[]','2022-02-25 10:17:06.130000','2022-02-25 10:17:06.130000',NULL,NULL),(87,'plugin::content-manager.explorer.create','api::author.author','{\"fields\": [\"name\", \"avatar\", \"displayName\"]}','[]','2022-02-25 10:17:43.443000','2022-02-25 10:17:43.443000',NULL,NULL),(88,'plugin::content-manager.explorer.read','api::author.author','{\"fields\": [\"name\", \"avatar\", \"displayName\"]}','[]','2022-02-25 10:17:43.464000','2022-02-25 10:17:43.464000',NULL,NULL),(89,'plugin::content-manager.explorer.update','api::author.author','{\"fields\": [\"name\", \"avatar\", \"displayName\"]}','[]','2022-02-25 10:17:43.483000','2022-02-25 10:17:43.483000',NULL,NULL),(93,'plugin::content-manager.explorer.delete','api::category.category','{}','[]','2022-02-25 10:28:40.975000','2022-02-25 10:28:40.975000',NULL,NULL),(98,'plugin::content-manager.explorer.delete','api::post.post','{}','[]','2022-02-25 10:28:57.430000','2022-02-25 10:28:57.430000',NULL,NULL),(99,'plugin::content-manager.explorer.publish','api::post.post','{}','[]','2022-02-25 10:28:57.453000','2022-02-25 10:28:57.453000',NULL,NULL),(112,'plugin::content-manager.explorer.delete','api::global.global','{}','[]','2022-02-28 09:34:37.298000','2022-02-28 09:34:37.298000',NULL,NULL),(113,'plugin::content-manager.explorer.publish','api::global.global','{}','[]','2022-02-28 09:34:37.321000','2022-02-28 09:34:37.321000',NULL,NULL),(141,'plugin::content-manager.explorer.delete','api::homepage.homepage','{}','[]','2022-03-14 22:52:45.433000','2022-03-14 22:52:45.433000',NULL,NULL),(142,'plugin::content-manager.explorer.publish','api::homepage.homepage','{}','[]','2022-03-14 22:52:45.456000','2022-03-14 22:52:45.456000',NULL,NULL),(158,'plugin::content-manager.explorer.create','api::personal-info.personal-info','{\"fields\": [\"displayName\", \"avatar\", \"email\", \"address\", \"socialLinks.facebook\", \"socialLinks.instagram\", \"socialLinks.youtube\", \"sortDescription\"]}','[]','2022-03-22 16:59:49.422000','2022-03-22 16:59:49.422000',NULL,NULL),(159,'plugin::content-manager.explorer.read','api::personal-info.personal-info','{\"fields\": [\"displayName\", \"avatar\", \"email\", \"address\", \"socialLinks.facebook\", \"socialLinks.instagram\", \"socialLinks.youtube\", \"sortDescription\"]}','[]','2022-03-22 16:59:49.433000','2022-03-22 16:59:49.433000',NULL,NULL),(160,'plugin::content-manager.explorer.update','api::personal-info.personal-info','{\"fields\": [\"displayName\", \"avatar\", \"email\", \"address\", \"socialLinks.facebook\", \"socialLinks.instagram\", \"socialLinks.youtube\", \"sortDescription\"]}','[]','2022-03-22 16:59:49.459000','2022-03-22 16:59:49.459000',NULL,NULL),(161,'plugin::content-manager.explorer.delete','api::personal-info.personal-info','{}','[]','2022-03-22 16:59:49.491000','2022-03-22 16:59:49.491000',NULL,NULL),(188,'plugin::content-manager.explorer.delete','api::gallery.gallery','{}','[]','2022-03-23 08:58:17.366000','2022-03-23 08:58:17.366000',NULL,NULL),(193,'plugin::content-manager.explorer.delete','api::location.location','{}','[]','2022-03-23 11:53:43.614000','2022-03-23 11:53:43.614000',NULL,NULL),(207,'plugin::content-manager.explorer.create','api::location.location','{\"fields\": [\"name\", \"parentLocation\", \"childLocaltions\", \"galleries\", \"posts\", \"description\"]}','[]','2022-03-23 13:53:34.829000','2022-03-23 13:53:34.829000',NULL,NULL),(208,'plugin::content-manager.explorer.read','api::location.location','{\"fields\": [\"name\", \"parentLocation\", \"childLocaltions\", \"galleries\", \"posts\", \"description\"]}','[]','2022-03-23 13:53:34.859000','2022-03-23 13:53:34.859000',NULL,NULL),(209,'plugin::content-manager.explorer.update','api::location.location','{\"fields\": [\"name\", \"parentLocation\", \"childLocaltions\", \"galleries\", \"posts\", \"description\"]}','[]','2022-03-23 13:53:34.884000','2022-03-23 13:53:34.884000',NULL,NULL),(210,'plugin::content-manager.explorer.create','api::homepage.homepage','{\"fields\": [\"seo.metaTitle\", \"seo.metaDescription\", \"seo.shareImage\", \"mainBanner\", \"subBanners\", \"featuredPost\", \"pinLinks.title\", \"pinLinks.slug\"]}','[]','2022-03-23 15:11:16.651000','2022-03-23 15:11:16.651000',NULL,NULL),(211,'plugin::content-manager.explorer.read','api::homepage.homepage','{\"fields\": [\"seo.metaTitle\", \"seo.metaDescription\", \"seo.shareImage\", \"mainBanner\", \"subBanners\", \"featuredPost\", \"pinLinks.title\", \"pinLinks.slug\"]}','[]','2022-03-23 15:11:16.661000','2022-03-23 15:11:16.661000',NULL,NULL),(212,'plugin::content-manager.explorer.update','api::homepage.homepage','{\"fields\": [\"seo.metaTitle\", \"seo.metaDescription\", \"seo.shareImage\", \"mainBanner\", \"subBanners\", \"featuredPost\", \"pinLinks.title\", \"pinLinks.slug\"]}','[]','2022-03-23 15:11:16.683000','2022-03-23 15:11:16.683000',NULL,NULL),(219,'plugin::content-manager.explorer.delete','api::comment.comment','{}','[]','2022-03-23 15:38:35.971000','2022-03-23 15:38:35.971000',NULL,NULL),(220,'plugin::content-manager.explorer.publish','api::comment.comment','{}','[]','2022-03-23 15:38:35.979000','2022-03-23 15:38:35.979000',NULL,NULL),(224,'plugin::content-manager.explorer.create','api::comment.comment','{\"fields\": [\"email\", \"content\", \"post\", \"statistic.access\", \"statistic.like\", \"name\"]}','[]','2022-03-23 15:43:02.114000','2022-03-23 15:43:02.114000',NULL,NULL),(225,'plugin::content-manager.explorer.read','api::comment.comment','{\"fields\": [\"email\", \"content\", \"post\", \"statistic.access\", \"statistic.like\", \"name\"]}','[]','2022-03-23 15:43:02.131000','2022-03-23 15:43:02.131000',NULL,NULL),(226,'plugin::content-manager.explorer.update','api::comment.comment','{\"fields\": [\"email\", \"content\", \"post\", \"statistic.access\", \"statistic.like\", \"name\"]}','[]','2022-03-23 15:43:02.149000','2022-03-23 15:43:02.149000',NULL,NULL),(227,'plugin::content-manager.explorer.create','api::gallery.gallery','{\"fields\": [\"title\", \"location\", \"asset.title\", \"asset.source\", \"asset.statistic.access\", \"asset.statistic.like\"]}','[]','2022-03-23 15:45:33.203000','2022-03-23 15:45:33.203000',NULL,NULL),(228,'plugin::content-manager.explorer.read','api::gallery.gallery','{\"fields\": [\"title\", \"location\", \"asset.title\", \"asset.source\", \"asset.statistic.access\", \"asset.statistic.like\"]}','[]','2022-03-23 15:45:33.244000','2022-03-23 15:45:33.244000',NULL,NULL),(229,'plugin::content-manager.explorer.update','api::gallery.gallery','{\"fields\": [\"title\", \"location\", \"asset.title\", \"asset.source\", \"asset.statistic.access\", \"asset.statistic.like\"]}','[]','2022-03-23 15:45:33.260000','2022-03-23 15:45:33.260000',NULL,NULL),(236,'plugin::content-manager.explorer.create','api::global.global','{\"fields\": [\"siteName\", \"favicon\", \"defaultSEO.metaTitle\", \"defaultSEO.metaDescription\", \"defaultSEO.shareImage\", \"copyright\", \"pageDescription\", \"socialLink.facebook\", \"socialLink.instagram\", \"socialLink.youtube\"]}','[]','2022-03-24 14:27:01.273000','2022-03-24 14:27:01.273000',NULL,NULL),(237,'plugin::content-manager.explorer.read','api::global.global','{\"fields\": [\"siteName\", \"favicon\", \"defaultSEO.metaTitle\", \"defaultSEO.metaDescription\", \"defaultSEO.shareImage\", \"copyright\", \"pageDescription\", \"socialLink.facebook\", \"socialLink.instagram\", \"socialLink.youtube\"]}','[]','2022-03-24 14:27:01.298000','2022-03-24 14:27:01.298000',NULL,NULL),(238,'plugin::content-manager.explorer.update','api::global.global','{\"fields\": [\"siteName\", \"favicon\", \"defaultSEO.metaTitle\", \"defaultSEO.metaDescription\", \"defaultSEO.shareImage\", \"copyright\", \"pageDescription\", \"socialLink.facebook\", \"socialLink.instagram\", \"socialLink.youtube\"]}','[]','2022-03-24 14:27:01.323000','2022-03-24 14:27:01.323000',NULL,NULL),(239,'plugin::content-manager.explorer.create','api::category.category','{\"fields\": [\"name\", \"slug\", \"posts\", \"order\", \"isMain\"]}','[]','2022-03-24 14:47:36.942000','2022-03-24 14:47:36.942000',NULL,NULL),(240,'plugin::content-manager.explorer.read','api::category.category','{\"fields\": [\"name\", \"slug\", \"posts\", \"order\", \"isMain\"]}','[]','2022-03-24 14:47:36.970000','2022-03-24 14:47:36.970000',NULL,NULL),(241,'plugin::content-manager.explorer.update','api::category.category','{\"fields\": [\"name\", \"slug\", \"posts\", \"order\", \"isMain\"]}','[]','2022-03-24 14:47:36.981000','2022-03-24 14:47:36.981000',NULL,NULL),(242,'plugin::content-manager.explorer.publish','api::personal-info.personal-info','{}','[]','2022-03-31 08:52:47.547000','2022-03-31 08:52:47.547000',NULL,NULL),(243,'plugin::content-manager.explorer.create','api::post.post','{\"fields\": [\"title\", \"slug\", \"content\", \"featuredImage\", \"featuredPost\", \"category\", \"excerpt\", \"author\", \"location\", \"comments\", \"statistic.access\", \"statistic.like\", \"bestInteractive\"]}','[]','2022-04-01 13:53:49.438000','2022-04-01 13:53:49.438000',NULL,NULL),(244,'plugin::content-manager.explorer.read','api::post.post','{\"fields\": [\"title\", \"slug\", \"content\", \"featuredImage\", \"featuredPost\", \"category\", \"excerpt\", \"author\", \"location\", \"comments\", \"statistic.access\", \"statistic.like\", \"bestInteractive\"]}','[]','2022-04-01 13:53:49.472000','2022-04-01 13:53:49.472000',NULL,NULL),(245,'plugin::content-manager.explorer.update','api::post.post','{\"fields\": [\"title\", \"slug\", \"content\", \"featuredImage\", \"featuredPost\", \"category\", \"excerpt\", \"author\", \"location\", \"comments\", \"statistic.access\", \"statistic.like\", \"bestInteractive\"]}','[]','2022-04-01 13:53:49.510000','2022-04-01 13:53:49.510000',NULL,NULL);
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions_role_links`
--

DROP TABLE IF EXISTS `admin_permissions_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_permissions_role_links` (
  `permission_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  KEY `admin_permissions_role_links_fk` (`permission_id`),
  KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions_role_links`
--

LOCK TABLES `admin_permissions_role_links` WRITE;
/*!40000 ALTER TABLE `admin_permissions_role_links` DISABLE KEYS */;
INSERT INTO `admin_permissions_role_links` VALUES (1,2),(2,2),(3,2),(4,2),(5,2),(6,3),(7,3),(8,3),(9,3),(10,3),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(85,1),(87,1),(88,1),(89,1),(93,1),(98,1),(99,1),(112,1),(113,1),(141,1),(142,1),(158,1),(159,1),(160,1),(161,1),(188,1),(193,1),(207,1),(208,1),(209,1),(210,1),(211,1),(212,1),(219,1),(220,1),(224,1),(225,1),(226,1),(227,1),(228,1),(229,1),(236,1),(237,1),(238,1),(239,1),(240,1),(241,1),(242,1),(243,1),(244,1),(245,1);
/*!40000 ALTER TABLE `admin_permissions_role_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  KEY `admin_roles_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2022-02-25 08:40:36.702000','2022-02-25 08:40:36.702000',NULL,NULL),(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2022-02-25 08:40:36.725000','2022-02-25 08:40:36.725000',NULL,NULL),(3,'Author','strapi-author','Authors can manage the content they have created.','2022-02-25 08:40:36.735000','2022-02-25 08:40:36.735000',NULL,NULL);
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_users_created_by_id_fk` (`created_by_id`),
  KEY `admin_users_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'Administrator','','admin@gmail.com','admin@gmail.com','$2a$10$7t6sNeOco6P7vMxK8Ru2bem4xJi7bq0KuG3qq/A1WOiIn9XQAkWCe',NULL,NULL,1,0,NULL,'2022-02-25 08:41:32.893000','2022-03-10 21:19:41.251000',NULL,NULL);
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users_roles_links`
--

DROP TABLE IF EXISTS `admin_users_roles_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users_roles_links` (
  `user_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  KEY `admin_users_roles_links_fk` (`user_id`),
  KEY `admin_users_roles_links_inv_fk` (`role_id`),
  CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users_roles_links`
--

LOCK TABLES `admin_users_roles_links` WRITE;
/*!40000 ALTER TABLE `admin_users_roles_links` DISABLE KEYS */;
INSERT INTO `admin_users_roles_links` VALUES (1,1);
/*!40000 ALTER TABLE `admin_users_roles_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `authors_created_by_id_fk` (`created_by_id`),
  KEY `authors_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `authors_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `authors_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Văn','2022-02-25 10:18:54.591000','2022-03-15 14:41:20.666000',1,1,'vănnd.makealife'),(2,'Minh','2022-02-25 11:11:48.721000','2022-02-25 11:16:20.275000',1,1,'tommy');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `order` int DEFAULT NULL,
  `is_main` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_created_by_id_fk` (`created_by_id`),
  KEY `categories_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Hành trình','hanh-trinh','2022-02-25 10:21:14.513000','2022-03-24 14:49:06.150000',1,1,1,1),(2,'Chia sẻ','chia-se','2022-02-25 10:22:50.251000','2022-03-24 14:49:12.979000',1,1,2,1),(3,'Văn hóa','van-hoa','2022-02-25 10:23:20.374000','2022-03-24 14:49:21.904000',1,1,3,1),(4,'Ẩm thực','am-thuc','2022-02-25 10:23:48.222000','2022-03-24 14:48:53.494000',1,1,4,1),(5,'Địa danh','dia-danh','2022-02-25 10:24:01.663000','2022-03-24 14:49:01.184000',1,1,5,1),(6,'Triển lãm','trien-lam','2022-03-24 14:51:41.194000','2022-03-24 14:51:41.194000',1,1,10,0),(7,'Liên hệ','lien-he','2022-03-24 14:52:03.833000','2022-03-24 14:52:55.712000',1,1,11,0),(8,'Giới thiệu','gioi-thieu','2022-03-24 14:52:48.673000','2022-03-24 14:52:48.673000',1,1,12,0);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `content` longtext,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_created_by_id_fk` (`created_by_id`),
  KEY `comments_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `comments_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `comments_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments_components`
--

DROP TABLE IF EXISTS `comments_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `comments_field_index` (`field`),
  KEY `comments_component_type_index` (`component_type`),
  KEY `comments_entity_fk` (`entity_id`),
  CONSTRAINT `comments_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments_components`
--

LOCK TABLES `comments_components` WRITE;
/*!40000 ALTER TABLE `comments_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments_post_links`
--

DROP TABLE IF EXISTS `comments_post_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments_post_links` (
  `comment_id` int unsigned DEFAULT NULL,
  `post_id` int unsigned DEFAULT NULL,
  KEY `comments_post_links_fk` (`comment_id`),
  KEY `comments_post_links_inv_fk` (`post_id`),
  CONSTRAINT `comments_post_links_fk` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comments_post_links_inv_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments_post_links`
--

LOCK TABLES `comments_post_links` WRITE;
/*!40000 ALTER TABLE `comments_post_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments_post_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_sections_heroes`
--

DROP TABLE IF EXISTS `components_sections_heroes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_sections_heroes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_sections_heroes`
--

LOCK TABLES `components_sections_heroes` WRITE;
/*!40000 ALTER TABLE `components_sections_heroes` DISABLE KEYS */;
INSERT INTO `components_sections_heroes` VALUES (1,'Vănnd - Make a life');
/*!40000 ALTER TABLE `components_sections_heroes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_shared_assets`
--

DROP TABLE IF EXISTS `components_shared_shared_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_shared_assets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_shared_assets`
--

LOCK TABLES `components_shared_shared_assets` WRITE;
/*!40000 ALTER TABLE `components_shared_shared_assets` DISABLE KEYS */;
INSERT INTO `components_shared_shared_assets` VALUES (1,NULL),(2,NULL),(3,NULL),(4,NULL),(5,NULL),(6,NULL),(7,NULL);
/*!40000 ALTER TABLE `components_shared_shared_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_shared_assets_components`
--

DROP TABLE IF EXISTS `components_shared_shared_assets_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_shared_assets_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `components_shared_shared_assets_field_index` (`field`),
  KEY `components_shared_shared_assets_component_type_index` (`component_type`),
  KEY `components_shared_shared_assets_entity_fk` (`entity_id`),
  CONSTRAINT `components_shared_shared_assets_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_shared_shared_assets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_shared_assets_components`
--

LOCK TABLES `components_shared_shared_assets_components` WRITE;
/*!40000 ALTER TABLE `components_shared_shared_assets_components` DISABLE KEYS */;
INSERT INTO `components_shared_shared_assets_components` VALUES (1,2,1,'shared.shared-statistic','statistic',1);
/*!40000 ALTER TABLE `components_shared_shared_assets_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_shared_seos`
--

DROP TABLE IF EXISTS `components_shared_shared_seos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_shared_seos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_shared_seos`
--

LOCK TABLES `components_shared_shared_seos` WRITE;
/*!40000 ALTER TABLE `components_shared_shared_seos` DISABLE KEYS */;
INSERT INTO `components_shared_shared_seos` VALUES (1,'Vănnd','Travel for more'),(2,'Vănnd - Make a life','Travel for more');
/*!40000 ALTER TABLE `components_shared_shared_seos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_shared_slugs`
--

DROP TABLE IF EXISTS `components_shared_shared_slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_shared_slugs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_shared_slugs`
--

LOCK TABLES `components_shared_shared_slugs` WRITE;
/*!40000 ALTER TABLE `components_shared_shared_slugs` DISABLE KEYS */;
INSERT INTO `components_shared_shared_slugs` VALUES (1,'Đi để chia sẻ','https://vannd.travel/post/di-de-chia-se');
/*!40000 ALTER TABLE `components_shared_shared_slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_shared_social_links`
--

DROP TABLE IF EXISTS `components_shared_shared_social_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_shared_social_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_shared_social_links`
--

LOCK TABLES `components_shared_shared_social_links` WRITE;
/*!40000 ALTER TABLE `components_shared_shared_social_links` DISABLE KEYS */;
INSERT INTO `components_shared_shared_social_links` VALUES (1,'facebook.com',NULL,'youtube.com'),(2,'facebook.com',NULL,'youtube.com');
/*!40000 ALTER TABLE `components_shared_shared_social_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_shared_statistics`
--

DROP TABLE IF EXISTS `components_shared_shared_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_shared_statistics` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `access` int DEFAULT NULL,
  `like` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_shared_statistics`
--

LOCK TABLES `components_shared_shared_statistics` WRITE;
/*!40000 ALTER TABLE `components_shared_shared_statistics` DISABLE KEYS */;
INSERT INTO `components_shared_shared_statistics` VALUES (1,0,NULL);
/*!40000 ALTER TABLE `components_shared_shared_statistics` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'48fc01f32e7e1064002bc4ae700a71e3 (1).jpg','48fc01f32e7e1064002bc4ae700a71e3 (1).jpg','48fc01f32e7e1064002bc4ae700a71e3 (1).jpg',1334,1000,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_48fc01f32e7e1064002bc4ae700a71e3_1_aef8a8865e.jpg\", \"hash\": \"large_48fc01f32e7e1064002bc4ae700a71e3_1_aef8a8865e\", \"mime\": \"image/jpeg\", \"name\": \"large_48fc01f32e7e1064002bc4ae700a71e3 (1).jpg\", \"path\": null, \"size\": 104.23, \"width\": 1000, \"height\": 750}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_48fc01f32e7e1064002bc4ae700a71e3_1_aef8a8865e.jpg\", \"hash\": \"small_48fc01f32e7e1064002bc4ae700a71e3_1_aef8a8865e\", \"mime\": \"image/jpeg\", \"name\": \"small_48fc01f32e7e1064002bc4ae700a71e3 (1).jpg\", \"path\": null, \"size\": 36.69, \"width\": 500, \"height\": 375}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_48fc01f32e7e1064002bc4ae700a71e3_1_aef8a8865e.jpg\", \"hash\": \"medium_48fc01f32e7e1064002bc4ae700a71e3_1_aef8a8865e\", \"mime\": \"image/jpeg\", \"name\": \"medium_48fc01f32e7e1064002bc4ae700a71e3 (1).jpg\", \"path\": null, \"size\": 68.07, \"width\": 750, \"height\": 562}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_48fc01f32e7e1064002bc4ae700a71e3_1_aef8a8865e.jpg\", \"hash\": \"thumbnail_48fc01f32e7e1064002bc4ae700a71e3_1_aef8a8865e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_48fc01f32e7e1064002bc4ae700a71e3 (1).jpg\", \"path\": null, \"size\": 9.05, \"width\": 208, \"height\": 156}}','48fc01f32e7e1064002bc4ae700a71e3_1_aef8a8865e','.jpg','image/jpeg',161.63,'/uploads/48fc01f32e7e1064002bc4ae700a71e3_1_aef8a8865e.jpg',NULL,'local',NULL,'2022-02-25 10:18:47.026000','2022-03-15 14:16:05.029000',1,1),(2,'file882.jpg','file882.jpg','file882.jpg',2230,3082,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_file882_b92d4fa3c0.jpg\", \"hash\": \"large_file882_b92d4fa3c0\", \"mime\": \"image/jpeg\", \"name\": \"large_file882.jpg\", \"path\": null, \"size\": 93.68, \"width\": 724, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_file882_b92d4fa3c0.jpg\", \"hash\": \"small_file882_b92d4fa3c0\", \"mime\": \"image/jpeg\", \"name\": \"small_file882.jpg\", \"path\": null, \"size\": 31.07, \"width\": 362, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_file882_b92d4fa3c0.jpg\", \"hash\": \"medium_file882_b92d4fa3c0\", \"mime\": \"image/jpeg\", \"name\": \"medium_file882.jpg\", \"path\": null, \"size\": 58.89, \"width\": 543, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_file882_b92d4fa3c0.jpg\", \"hash\": \"thumbnail_file882_b92d4fa3c0\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_file882.jpg\", \"path\": null, \"size\": 5.05, \"width\": 113, \"height\": 156}}','file882_b92d4fa3c0','.jpg','image/jpeg',725.62,'/uploads/file882_b92d4fa3c0.jpg',NULL,'local',NULL,'2022-02-25 10:26:47.089000','2022-03-15 14:15:58.155000',1,1),(3,'file63.jpg','file63.jpg','file63.jpg',2150,3024,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_file63_a9bbae869e.jpg\", \"hash\": \"large_file63_a9bbae869e\", \"mime\": \"image/jpeg\", \"name\": \"large_file63.jpg\", \"path\": null, \"size\": 175.39, \"width\": 711, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_file63_a9bbae869e.jpg\", \"hash\": \"small_file63_a9bbae869e\", \"mime\": \"image/jpeg\", \"name\": \"small_file63.jpg\", \"path\": null, \"size\": 40.24, \"width\": 355, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_file63_a9bbae869e.jpg\", \"hash\": \"medium_file63_a9bbae869e\", \"mime\": \"image/jpeg\", \"name\": \"medium_file63.jpg\", \"path\": null, \"size\": 97.97, \"width\": 533, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_file63_a9bbae869e.jpg\", \"hash\": \"thumbnail_file63_a9bbae869e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_file63.jpg\", \"path\": null, \"size\": 4.65, \"width\": 111, \"height\": 156}}','file63_a9bbae869e','.jpg','image/jpeg',1255.14,'/uploads/file63_a9bbae869e.jpg',NULL,'local',NULL,'2022-02-25 11:11:45.608000','2022-03-15 14:14:59.683000',1,1),(5,'Artboard 1emd.png','Artboard 1emd.png','Artboard 1emd.png',986,788,'{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_Artboard_1emd_ac4b999cc7.png\", \"hash\": \"small_Artboard_1emd_ac4b999cc7\", \"mime\": \"image/png\", \"name\": \"small_Artboard 1emd.png\", \"path\": null, \"size\": 103.34, \"width\": 500, \"height\": 400}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_Artboard_1emd_ac4b999cc7.png\", \"hash\": \"medium_Artboard_1emd_ac4b999cc7\", \"mime\": \"image/png\", \"name\": \"medium_Artboard 1emd.png\", \"path\": null, \"size\": 191.22, \"width\": 750, \"height\": 599}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Artboard_1emd_ac4b999cc7.png\", \"hash\": \"thumbnail_Artboard_1emd_ac4b999cc7\", \"mime\": \"image/png\", \"name\": \"thumbnail_Artboard 1emd.png\", \"path\": null, \"size\": 31.24, \"width\": 195, \"height\": 156}}','Artboard_1emd_ac4b999cc7','.png','image/png',32.74,'/uploads/Artboard_1emd_ac4b999cc7.png',NULL,'local',NULL,'2022-03-10 21:41:31.518000','2022-03-15 15:00:09.876000',1,1),(6,'1646209629698.jpg','1646209629698.jpg','1646209629698.jpg',4272,2848,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_1646209629698_bf09516d91.jpg\", \"hash\": \"large_1646209629698_bf09516d91\", \"mime\": \"image/jpeg\", \"name\": \"large_1646209629698.jpg\", \"path\": null, \"size\": 161, \"width\": 1000, \"height\": 667}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_1646209629698_bf09516d91.jpg\", \"hash\": \"small_1646209629698_bf09516d91\", \"mime\": \"image/jpeg\", \"name\": \"small_1646209629698.jpg\", \"path\": null, \"size\": 42.6, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_1646209629698_bf09516d91.jpg\", \"hash\": \"medium_1646209629698_bf09516d91\", \"mime\": \"image/jpeg\", \"name\": \"medium_1646209629698.jpg\", \"path\": null, \"size\": 91.43, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_1646209629698_bf09516d91.jpg\", \"hash\": \"thumbnail_1646209629698_bf09516d91\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_1646209629698.jpg\", \"path\": null, \"size\": 10.13, \"width\": 234, \"height\": 156}}','1646209629698_bf09516d91','.jpg','image/jpeg',2041.93,'/uploads/1646209629698_bf09516d91.jpg',NULL,'local',NULL,'2022-03-10 21:42:51.654000','2022-03-15 14:15:13.553000',1,1),(7,'01f1951f1ae591a6ebd163c562c7c18e812cbe4efc.jpg','01f1951f1ae591a6ebd163c562c7c18e812cbe4efc.jpg','01f1951f1ae591a6ebd163c562c7c18e812cbe4efc.jpg',2048,2048,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_01f1951f1ae591a6ebd163c562c7c18e812cbe4efc_9bf1d8fb7a.jpg\", \"hash\": \"large_01f1951f1ae591a6ebd163c562c7c18e812cbe4efc_9bf1d8fb7a\", \"mime\": \"image/jpeg\", \"name\": \"large_01f1951f1ae591a6ebd163c562c7c18e812cbe4efc.jpg\", \"path\": null, \"size\": 268.92, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_01f1951f1ae591a6ebd163c562c7c18e812cbe4efc_9bf1d8fb7a.jpg\", \"hash\": \"small_01f1951f1ae591a6ebd163c562c7c18e812cbe4efc_9bf1d8fb7a\", \"mime\": \"image/jpeg\", \"name\": \"small_01f1951f1ae591a6ebd163c562c7c18e812cbe4efc.jpg\", \"path\": null, \"size\": 74.15, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_01f1951f1ae591a6ebd163c562c7c18e812cbe4efc_9bf1d8fb7a.jpg\", \"hash\": \"medium_01f1951f1ae591a6ebd163c562c7c18e812cbe4efc_9bf1d8fb7a\", \"mime\": \"image/jpeg\", \"name\": \"medium_01f1951f1ae591a6ebd163c562c7c18e812cbe4efc.jpg\", \"path\": null, \"size\": 156.88, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_01f1951f1ae591a6ebd163c562c7c18e812cbe4efc_9bf1d8fb7a.jpg\", \"hash\": \"thumbnail_01f1951f1ae591a6ebd163c562c7c18e812cbe4efc_9bf1d8fb7a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_01f1951f1ae591a6ebd163c562c7c18e812cbe4efc.jpg\", \"path\": null, \"size\": 8.7, \"width\": 156, \"height\": 156}}','01f1951f1ae591a6ebd163c562c7c18e812cbe4efc_9bf1d8fb7a','.jpg','image/jpeg',986.87,'/uploads/01f1951f1ae591a6ebd163c562c7c18e812cbe4efc_9bf1d8fb7a.jpg',NULL,'local',NULL,'2022-03-15 14:16:24.422000','2022-03-15 14:16:24.422000',1,1),(8,'20190803_062328.jpg','20190803_062328.jpg','20190803_062328.jpg',4032,3024,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_20190803_062328_50699dda05.jpg\", \"hash\": \"large_20190803_062328_50699dda05\", \"mime\": \"image/jpeg\", \"name\": \"large_20190803_062328.jpg\", \"path\": null, \"size\": 96.83, \"width\": 1000, \"height\": 750}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_20190803_062328_50699dda05.jpg\", \"hash\": \"small_20190803_062328_50699dda05\", \"mime\": \"image/jpeg\", \"name\": \"small_20190803_062328.jpg\", \"path\": null, \"size\": 32.51, \"width\": 500, \"height\": 375}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_20190803_062328_50699dda05.jpg\", \"hash\": \"medium_20190803_062328_50699dda05\", \"mime\": \"image/jpeg\", \"name\": \"medium_20190803_062328.jpg\", \"path\": null, \"size\": 61.16, \"width\": 750, \"height\": 563}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_20190803_062328_50699dda05.jpg\", \"hash\": \"thumbnail_20190803_062328_50699dda05\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_20190803_062328.jpg\", \"path\": null, \"size\": 7.94, \"width\": 208, \"height\": 156}}','20190803_062328_50699dda05','.jpg','image/jpeg',1065.77,'/uploads/20190803_062328_50699dda05.jpg',NULL,'local',NULL,'2022-03-15 14:16:46.311000','2022-03-15 14:16:46.311000',1,1),(9,'01b35b18a542b189f0abeb0d33974d480c06bbc2b0.jpg','01b35b18a542b189f0abeb0d33974d480c06bbc2b0.jpg','01b35b18a542b189f0abeb0d33974d480c06bbc2b0.jpg',1537,2049,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_01b35b18a542b189f0abeb0d33974d480c06bbc2b0_dc33c15436.jpg\", \"hash\": \"large_01b35b18a542b189f0abeb0d33974d480c06bbc2b0_dc33c15436\", \"mime\": \"image/jpeg\", \"name\": \"large_01b35b18a542b189f0abeb0d33974d480c06bbc2b0.jpg\", \"path\": null, \"size\": 118.54, \"width\": 750, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_01b35b18a542b189f0abeb0d33974d480c06bbc2b0_dc33c15436.jpg\", \"hash\": \"small_01b35b18a542b189f0abeb0d33974d480c06bbc2b0_dc33c15436\", \"mime\": \"image/jpeg\", \"name\": \"small_01b35b18a542b189f0abeb0d33974d480c06bbc2b0.jpg\", \"path\": null, \"size\": 33.75, \"width\": 375, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_01b35b18a542b189f0abeb0d33974d480c06bbc2b0_dc33c15436.jpg\", \"hash\": \"medium_01b35b18a542b189f0abeb0d33974d480c06bbc2b0_dc33c15436\", \"mime\": \"image/jpeg\", \"name\": \"medium_01b35b18a542b189f0abeb0d33974d480c06bbc2b0.jpg\", \"path\": null, \"size\": 69.52, \"width\": 563, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_01b35b18a542b189f0abeb0d33974d480c06bbc2b0_dc33c15436.jpg\", \"hash\": \"thumbnail_01b35b18a542b189f0abeb0d33974d480c06bbc2b0_dc33c15436\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_01b35b18a542b189f0abeb0d33974d480c06bbc2b0.jpg\", \"path\": null, \"size\": 4.84, \"width\": 117, \"height\": 156}}','01b35b18a542b189f0abeb0d33974d480c06bbc2b0_dc33c15436','.jpg','image/jpeg',519.91,'/uploads/01b35b18a542b189f0abeb0d33974d480c06bbc2b0_dc33c15436.jpg',NULL,'local',NULL,'2022-04-01 14:00:55.607000','2022-04-01 14:00:55.607000',1,1),(10,'download.jpg','download.jpg','download.jpg',259,194,'{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_download_ce8336ea68.jpg\", \"hash\": \"thumbnail_download_ce8336ea68\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_download.jpg\", \"path\": null, \"size\": 10.43, \"width\": 208, \"height\": 156}}','download_ce8336ea68','.jpg','image/jpeg',11.59,'/uploads/download_ce8336ea68.jpg',NULL,'local',NULL,'2022-04-01 14:09:03.668000','2022-04-01 14:09:03.668000',1,1),(11,'download (3).jpg','download (3).jpg','download (3).jpg',295,171,'{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_download_3_ca2ff71ad0.jpg\", \"hash\": \"thumbnail_download_3_ca2ff71ad0\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_download (3).jpg\", \"path\": null, \"size\": 12.61, \"width\": 245, \"height\": 142}}','download_3_ca2ff71ad0','.jpg','image/jpeg',13.89,'/uploads/download_3_ca2ff71ad0.jpg',NULL,'local',NULL,'2022-04-01 14:13:18.368000','2022-04-01 14:13:18.368000',1,1),(12,'images.jpg','images.jpg','images.jpg',276,183,'{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_images_17dd240060.jpg\", \"hash\": \"thumbnail_images_17dd240060\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_images.jpg\", \"path\": null, \"size\": 7.9, \"width\": 235, \"height\": 156}}','images_17dd240060','.jpg','image/jpeg',7.14,'/uploads/images_17dd240060.jpg',NULL,'local',NULL,'2022-04-01 14:14:29.999000','2022-04-01 14:14:29.999000',1,1),(13,'ninhbinh-lythanhco3-1591258467-7051-1591260195.jpg','ninhbinh-lythanhco3-1591258467-7051-1591260195.jpg','ninhbinh-lythanhco3-1591258467-7051-1591260195.jpg',1200,800,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_ninhbinh_lythanhco3_1591258467_7051_1591260195_2a9a03a7da.jpg\", \"hash\": \"large_ninhbinh_lythanhco3_1591258467_7051_1591260195_2a9a03a7da\", \"mime\": \"image/jpeg\", \"name\": \"large_ninhbinh-lythanhco3-1591258467-7051-1591260195.jpg\", \"path\": null, \"size\": 137.05, \"width\": 1000, \"height\": 667}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_ninhbinh_lythanhco3_1591258467_7051_1591260195_2a9a03a7da.jpg\", \"hash\": \"small_ninhbinh_lythanhco3_1591258467_7051_1591260195_2a9a03a7da\", \"mime\": \"image/jpeg\", \"name\": \"small_ninhbinh-lythanhco3-1591258467-7051-1591260195.jpg\", \"path\": null, \"size\": 29.76, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_ninhbinh_lythanhco3_1591258467_7051_1591260195_2a9a03a7da.jpg\", \"hash\": \"medium_ninhbinh_lythanhco3_1591258467_7051_1591260195_2a9a03a7da\", \"mime\": \"image/jpeg\", \"name\": \"medium_ninhbinh-lythanhco3-1591258467-7051-1591260195.jpg\", \"path\": null, \"size\": 71.57, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ninhbinh_lythanhco3_1591258467_7051_1591260195_2a9a03a7da.jpg\", \"hash\": \"thumbnail_ninhbinh_lythanhco3_1591258467_7051_1591260195_2a9a03a7da\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ninhbinh-lythanhco3-1591258467-7051-1591260195.jpg\", \"path\": null, \"size\": 6.94, \"width\": 234, \"height\": 156}}','ninhbinh_lythanhco3_1591258467_7051_1591260195_2a9a03a7da','.jpg','image/jpeg',210.25,'/uploads/ninhbinh_lythanhco3_1591258467_7051_1591260195_2a9a03a7da.jpg',NULL,'local',NULL,'2022-04-01 14:16:17.912000','2022-04-01 14:16:17.912000',1,1),(14,'download (1).jpg','download (1).jpg','download (1).jpg',275,183,'{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_download_1_3ac3110791.jpg\", \"hash\": \"thumbnail_download_1_3ac3110791\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_download (1).jpg\", \"path\": null, \"size\": 13.33, \"width\": 234, \"height\": 156}}','download_1_3ac3110791','.jpg','image/jpeg',14.29,'/uploads/download_1_3ac3110791.jpg',NULL,'local',NULL,'2022-04-01 14:19:20.574000','2022-04-01 14:19:20.574000',1,1);
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_related_morphs`
--

DROP TABLE IF EXISTS `files_related_morphs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files_related_morphs` (
  `file_id` int unsigned DEFAULT NULL,
  `related_id` int unsigned DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  KEY `files_related_morphs_fk` (`file_id`),
  CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_related_morphs`
--

LOCK TABLES `files_related_morphs` WRITE;
/*!40000 ALTER TABLE `files_related_morphs` DISABLE KEYS */;
INSERT INTO `files_related_morphs` VALUES (1,1,'api::author.author','avatar',1),(3,2,'api::author.author','avatar',1),(6,1,'shared.shared-seo','sharedImage',1),(8,1,'api::gallery.gallery','asset',1),(7,1,'api::gallery.gallery','asset',2),(8,2,'api::gallery.gallery','asset',1),(7,2,'api::gallery.gallery','asset',2),(7,1,'shared.shared-asset','source',1),(8,2,'shared.shared-asset','source',1),(8,1,'shared.shared-seo','shareImage',1),(5,1,'api::global.global','favicon',1),(7,3,'shared.shared-asset','source',1),(6,4,'shared.shared-asset','source',1),(3,5,'shared.shared-asset','source',1),(1,7,'shared.shared-asset','source',1),(7,2,'shared.shared-seo','shareImage',1),(6,1,'api::homepage.homepage','mainBanner',1),(9,2,'api::post.post','featuredImage',1),(9,6,'shared.shared-asset','source',1),(11,4,'api::post.post','featuredImage',1),(10,3,'api::post.post','featuredImage',1),(14,7,'api::post.post','featuredImage',1),(13,6,'api::post.post','featuredImage',1),(12,5,'api::post.post','featuredImage',1),(3,1,'api::personal-info.personal-info','avatar',1),(2,1,'api::post.post','featuredImage',1);
/*!40000 ALTER TABLE `files_related_morphs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_created_by_id_fk` (`created_by_id`),
  KEY `galleries_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `galleries_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `galleries_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (2,'Vẻ đẹp Anor','2022-03-23 13:54:38.673000','2022-03-23 15:46:28.401000',1,1),(3,'Huế','2022-03-31 15:32:27.450000','2022-03-31 15:32:27.450000',1,1),(4,'Bình Định','2022-03-31 15:32:59.307000','2022-03-31 15:32:59.307000',1,1),(5,'Đà Lạt','2022-03-31 15:33:28.725000','2022-03-31 15:33:28.725000',1,1),(6,'Hà Giang','2022-03-31 15:33:53.331000','2022-04-01 14:02:16.244000',1,1),(7,'An Giang','2022-03-31 15:34:01.635000','2022-03-31 15:34:09.272000',1,1);
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_components`
--

DROP TABLE IF EXISTS `galleries_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `galleries_field_index` (`field`),
  KEY `galleries_component_type_index` (`component_type`),
  KEY `galleries_entity_fk` (`entity_id`),
  CONSTRAINT `galleries_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `galleries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_components`
--

LOCK TABLES `galleries_components` WRITE;
/*!40000 ALTER TABLE `galleries_components` DISABLE KEYS */;
INSERT INTO `galleries_components` VALUES (1,2,2,'shared.shared-asset','asset',1),(2,2,1,'shared.shared-asset','asset',2),(3,3,3,'shared.shared-asset','asset',1),(4,4,4,'shared.shared-asset','asset',1),(5,5,5,'shared.shared-asset','asset',1),(7,7,7,'shared.shared-asset','asset',1),(8,6,6,'shared.shared-asset','asset',1);
/*!40000 ALTER TABLE `galleries_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_location_links`
--

DROP TABLE IF EXISTS `galleries_location_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_location_links` (
  `gallery_id` int unsigned DEFAULT NULL,
  `location_id` int unsigned DEFAULT NULL,
  KEY `galleries_location_links_fk` (`gallery_id`),
  KEY `galleries_location_links_inv_fk` (`location_id`),
  CONSTRAINT `galleries_location_links_fk` FOREIGN KEY (`gallery_id`) REFERENCES `galleries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `galleries_location_links_inv_fk` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_location_links`
--

LOCK TABLES `galleries_location_links` WRITE;
/*!40000 ALTER TABLE `galleries_location_links` DISABLE KEYS */;
INSERT INTO `galleries_location_links` VALUES (2,6),(6,7),(7,8);
/*!40000 ALTER TABLE `galleries_location_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `globals`
--

DROP TABLE IF EXISTS `globals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `globals` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `site_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `page_description` longtext,
  PRIMARY KEY (`id`),
  KEY `globals_created_by_id_fk` (`created_by_id`),
  KEY `globals_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `globals_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `globals_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `globals`
--

LOCK TABLES `globals` WRITE;
/*!40000 ALTER TABLE `globals` DISABLE KEYS */;
INSERT INTO `globals` VALUES (1,'Vănnd','2022-03-10 21:42:57.499000','2022-03-24 14:29:24.484000','2022-03-10 22:24:55.713000',1,1,NULL,'Là một người trẻ, đôi khi bản thân mình cảm thấy lạc lối giữa những bộn bề công việc và xã hội. Những lúc như vậy chỉ muốn được đi đây đó, dành cho mình những khẳng lặng để được hòa mình vào thiên nhiên hay là được hòa nhập vào những nét đẹp văn hóa của những anh em dân tộc Việt Nam. Mong muốn lớn hơn là có thể mang những hình ảnh đó đến với bạn bè quốc tế. Hãy theo dõi hành trình của mình nhé!');
/*!40000 ALTER TABLE `globals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `globals_components`
--

DROP TABLE IF EXISTS `globals_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `globals_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `globals_field_index` (`field`),
  KEY `globals_component_type_index` (`component_type`),
  KEY `globals_entity_fk` (`entity_id`),
  CONSTRAINT `globals_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `globals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `globals_components`
--

LOCK TABLES `globals_components` WRITE;
/*!40000 ALTER TABLE `globals_components` DISABLE KEYS */;
INSERT INTO `globals_components` VALUES (7,1,1,'shared.shared-social-link','SocialLinks',1),(14,1,1,'shared.shared-seo','defaultSEO',1),(15,1,2,'shared.shared-social-link','socialLink',1);
/*!40000 ALTER TABLE `globals_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homepages`
--

DROP TABLE IF EXISTS `homepages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homepages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `homepages_created_by_id_fk` (`created_by_id`),
  KEY `homepages_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `homepages_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `homepages_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homepages`
--

LOCK TABLES `homepages` WRITE;
/*!40000 ALTER TABLE `homepages` DISABLE KEYS */;
INSERT INTO `homepages` VALUES (1,'2022-03-14 23:18:05.097000','2022-04-01 13:32:41.458000','2022-03-14 23:20:31.603000',1,1);
/*!40000 ALTER TABLE `homepages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homepages_components`
--

DROP TABLE IF EXISTS `homepages_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homepages_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `homepages_field_index` (`field`),
  KEY `homepages_component_type_index` (`component_type`),
  KEY `homepages_entity_fk` (`entity_id`),
  CONSTRAINT `homepages_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `homepages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homepages_components`
--

LOCK TABLES `homepages_components` WRITE;
/*!40000 ALTER TABLE `homepages_components` DISABLE KEYS */;
INSERT INTO `homepages_components` VALUES (6,1,1,'sections.hero','hero',1),(12,1,2,'shared.shared-seo','seo',1),(13,1,1,'shared.shared-slug','pinLinks',1);
/*!40000 ALTER TABLE `homepages_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homepages_featured_post_links`
--

DROP TABLE IF EXISTS `homepages_featured_post_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homepages_featured_post_links` (
  `homepage_id` int unsigned DEFAULT NULL,
  `post_id` int unsigned DEFAULT NULL,
  KEY `homepages_featured_post_links_fk` (`homepage_id`),
  KEY `homepages_featured_post_links_inv_fk` (`post_id`),
  CONSTRAINT `homepages_featured_post_links_fk` FOREIGN KEY (`homepage_id`) REFERENCES `homepages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `homepages_featured_post_links_inv_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homepages_featured_post_links`
--

LOCK TABLES `homepages_featured_post_links` WRITE;
/*!40000 ALTER TABLE `homepages_featured_post_links` DISABLE KEYS */;
INSERT INTO `homepages_featured_post_links` VALUES (1,1);
/*!40000 ALTER TABLE `homepages_featured_post_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i18n_locale`
--

DROP TABLE IF EXISTS `i18n_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `i18n_locale` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i18n_locale`
--

LOCK TABLES `i18n_locale` WRITE;
/*!40000 ALTER TABLE `i18n_locale` DISABLE KEYS */;
INSERT INTO `i18n_locale` VALUES (1,'English (en)','en','2022-02-25 08:40:36.449000','2022-02-25 08:40:36.449000',NULL,NULL),(2,'Vietnamese (vi)','vi','2022-02-25 09:23:50.600000','2022-02-25 09:23:50.600000',1,1);
/*!40000 ALTER TABLE `i18n_locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`),
  KEY `locations_created_by_id_fk` (`created_by_id`),
  KEY `locations_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `locations_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `locations_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (4,'Thừa Thiên Huế','2022-03-23 13:49:01.549000','2022-03-23 13:49:01.549000',1,1,NULL),(5,'A Lưới','2022-03-23 13:52:02.457000','2022-03-23 13:57:11.613000',1,1,NULL),(6,'Anor','2022-03-23 13:52:20.641000','2022-03-23 13:52:20.641000',1,1,NULL),(7,'Hà Giang','2022-04-01 14:10:36.002000','2022-04-01 14:10:36.002000',1,1,NULL),(8,'An Giang','2022-04-01 14:11:05.535000','2022-04-01 14:11:05.535000',1,1,NULL),(9,'Ninh Bình','2022-04-01 14:11:24.230000','2022-04-01 14:11:24.230000',1,1,NULL),(10,'Lào Cai','2022-04-01 14:11:45.224000','2022-04-01 14:11:45.224000',1,1,NULL),(11,'Lai Châu','2022-04-01 14:11:59.936000','2022-04-01 14:11:59.936000',1,1,NULL);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations_parent_location_links`
--

DROP TABLE IF EXISTS `locations_parent_location_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations_parent_location_links` (
  `location_id` int unsigned DEFAULT NULL,
  `inv_location_id` int unsigned DEFAULT NULL,
  KEY `locations_parent_location_links_fk` (`location_id`),
  KEY `locations_parent_location_links_inv_fk` (`inv_location_id`),
  CONSTRAINT `locations_parent_location_links_fk` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `locations_parent_location_links_inv_fk` FOREIGN KEY (`inv_location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations_parent_location_links`
--

LOCK TABLES `locations_parent_location_links` WRITE;
/*!40000 ALTER TABLE `locations_parent_location_links` DISABLE KEYS */;
INSERT INTO `locations_parent_location_links` VALUES (5,5);
/*!40000 ALTER TABLE `locations_parent_location_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_infos`
--

DROP TABLE IF EXISTS `personal_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_infos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `display_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` longtext,
  `sort_description` longtext,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `personal_infos_created_by_id_fk` (`created_by_id`),
  KEY `personal_infos_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `personal_infos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `personal_infos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_infos`
--

LOCK TABLES `personal_infos` WRITE;
/*!40000 ALTER TABLE `personal_infos` DISABLE KEYS */;
INSERT INTO `personal_infos` VALUES (1,'Nguyễn Đức Văn','vand.makealife@gmail.com','Nomad','Xin chào, mình là Văn.  Trước đây mình từng làm trong lĩnh vực phát triển Website. Nhưng vì yêu thích sự dịch chuyển, chụp ảnh và quay film mà mình đã quyết định nghỉ việc tại công ty và bắt đầu với việc du lịch.\n','2022-03-23 08:46:43.471000','2022-04-01 16:17:00.785000',1,1,'2022-03-23 08:46:43.471000');
/*!40000 ALTER TABLE `personal_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_infos_components`
--

DROP TABLE IF EXISTS `personal_infos_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_infos_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `personal_infos_field_index` (`field`),
  KEY `personal_infos_component_type_index` (`component_type`),
  KEY `personal_infos_entity_fk` (`entity_id`),
  CONSTRAINT `personal_infos_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `personal_infos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_infos_components`
--

LOCK TABLES `personal_infos_components` WRITE;
/*!40000 ALTER TABLE `personal_infos_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_infos_components` ENABLE KEYS */;
UNLOCK TABLES;

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
  `best_interactive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`),
  KEY `posts_created_by_id_fk` (`created_by_id`),
  KEY `posts_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `posts_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `posts_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Huế -> Quảng Trị -> Quảng Bình: Ra khỏi vùng an toàn','hue-quangtri-quangbinh-ra-khoi-vung-an-toan','Rời đất cố đô trong không khí mưa phùn se lạnh đặt trưng của vùng đất này. Cảm thấy bản thân mình may mắn khi sinh ra và lớn lên ở nơi đây. Tuy không sống trong kinh thành cổ kính, hay phố thị náo nức mà là một làng quê nơi vắt qua mình là nhánh sông đầu nguồn của Sông Hương.\n⁠\n![file882.jpg](http://localhost:1337/uploads/file882_b92d4fa3c0.jpg)\n\n\n\n\n\n\n',1,'2022-02-25 10:27:30.537000','2022-04-01 16:26:56.037000','2022-02-25 10:32:54.514000',1,1,'Bắt đầu hành trình với nhiều nhiều hào hứng và sự trông đợi. Nhưng bên cạnh đó cũng chất chứa nhiều nỗi sợ...',NULL),(2,'A Lưới','a-luoi','\n>Đến một ngày, khi người khác nói bạn trông lúc nào cũng điềm tĩnh thản nhiên, chỉ mình bạn biết, vẻ điềm tĩnh ấy phải đánh đổi bao nhiêu nước mắt mới tôi luyện thành, thái độ thản nhiên trước sóng gió ấy, từng suýt bị bao sóng gió nhấn chìm.\n\n\n![file936.jpg](http://localhost:1337/uploads/file936_ade3faac5d.jpg)',1,'2022-02-25 11:16:11.229000','2022-04-01 14:01:42.802000','2022-02-25 11:16:15.807000',1,1,'Cái gọi là cuộc sống, chính là bạn học cách làm quen với lòng người ấm lạnh, học cách bình thản nhìn kẻ đến người đi…',NULL),(3,'Hà Giang vẻ đẹp thiên nhiên ban tặng','ha-giang-ve-dep-thien-nhien-ban-tang','Content of Ha Giang',1,'2022-04-01 14:09:55.679000','2022-04-01 15:08:22.297000','2022-04-01 15:08:22.294000',1,1,'Bạn sẽ ngỡ ngàng với những vẽ đẹp thiên nhiên huyền dịu khi đến với Hà Giang',0),(4,'Lào Cai hùng vĩ','lao-cai-hung-vi','Content of Lao Cai',1,'2022-04-01 14:13:22.484000','2022-04-01 15:08:29.776000','2022-04-01 15:08:29.765000',1,1,'Lào Cai đẹp lạ lùng cùng những ruộng bật thang xanh mướt',1),(5,'Lai Châu hùng vĩ','lai-chau-hung-vi','Content Lai Châu',1,'2022-04-01 14:14:39.508000','2022-04-01 15:08:14.992000','2022-04-01 15:08:14.988000',1,1,'Sống trên đời hãy thử 1 lần đặt chân đến Lai Châu',1),(6,'Ninh Bình cổ kính','ninh-binh-co-kinh','Content Ninh Bình',1,'2022-04-01 14:16:24.352000','2022-04-01 15:08:32.783000','2022-04-01 15:08:32.780000',1,1,'Đất thiên Ninh Bình cổ kính đẹp lạ lùng',1),(7,'Thốt nốt đặt sản An Giang ','thot-not-dat-san-an-giang','Content An Giang',1,'2022-04-01 14:19:42.057000','2022-04-01 15:08:35.190000','2022-04-01 15:08:35.187000',1,1,'Những rừng thốt nốt lung linh trong nắng mới',0);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_author_links`
--

DROP TABLE IF EXISTS `posts_author_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_author_links` (
  `post_id` int unsigned DEFAULT NULL,
  `author_id` int unsigned DEFAULT NULL,
  KEY `posts_author_links_fk` (`post_id`),
  KEY `posts_author_links_inv_fk` (`author_id`),
  CONSTRAINT `posts_author_links_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `posts_author_links_inv_fk` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_author_links`
--

LOCK TABLES `posts_author_links` WRITE;
/*!40000 ALTER TABLE `posts_author_links` DISABLE KEYS */;
INSERT INTO `posts_author_links` VALUES (2,2),(4,1),(3,1),(7,1),(6,1),(5,1),(1,1);
/*!40000 ALTER TABLE `posts_author_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_category_links`
--

DROP TABLE IF EXISTS `posts_category_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_category_links` (
  `post_id` int unsigned DEFAULT NULL,
  `category_id` int unsigned DEFAULT NULL,
  KEY `posts_category_links_fk` (`post_id`),
  KEY `posts_category_links_inv_fk` (`category_id`),
  CONSTRAINT `posts_category_links_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `posts_category_links_inv_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_category_links`
--

LOCK TABLES `posts_category_links` WRITE;
/*!40000 ALTER TABLE `posts_category_links` DISABLE KEYS */;
INSERT INTO `posts_category_links` VALUES (2,5),(4,5),(3,5),(7,4),(6,5),(5,5),(1,1);
/*!40000 ALTER TABLE `posts_category_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_components`
--

DROP TABLE IF EXISTS `posts_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `posts_field_index` (`field`),
  KEY `posts_component_type_index` (`component_type`),
  KEY `posts_entity_fk` (`entity_id`),
  CONSTRAINT `posts_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_components`
--

LOCK TABLES `posts_components` WRITE;
/*!40000 ALTER TABLE `posts_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_location_links`
--

DROP TABLE IF EXISTS `posts_location_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_location_links` (
  `post_id` int unsigned DEFAULT NULL,
  `location_id` int unsigned DEFAULT NULL,
  KEY `posts_location_links_fk` (`post_id`),
  KEY `posts_location_links_inv_fk` (`location_id`),
  CONSTRAINT `posts_location_links_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `posts_location_links_inv_fk` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_location_links`
--

LOCK TABLES `posts_location_links` WRITE;
/*!40000 ALTER TABLE `posts_location_links` DISABLE KEYS */;
INSERT INTO `posts_location_links` VALUES (2,5),(4,10),(3,7),(7,8),(6,9),(5,11),(1,4);
/*!40000 ALTER TABLE `posts_location_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_api_tokens`
--

DROP TABLE IF EXISTS `strapi_api_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_api_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_api_tokens`
--

LOCK TABLES `strapi_api_tokens` WRITE;
/*!40000 ALTER TABLE `strapi_api_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_api_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_core_store_settings`
--

DROP TABLE IF EXISTS `strapi_core_store_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_core_store_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_core_store_settings`
--

LOCK TABLES `strapi_core_store_settings` WRITE;
/*!40000 ALTER TABLE `strapi_core_store_settings` DISABLE KEYS */;
INSERT INTO `strapi_core_store_settings` VALUES (1,'strapi_content_types_schema','{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\"],\"configurable\":false,\"required\":false,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\"],\"configurable\":false,\"required\":false,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"api::author.author\":{\"kind\":\"collectionType\",\"collectionName\":\"authors\",\"info\":{\"singularName\":\"author\",\"pluralName\":\"authors\",\"displayName\":\"Author\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"avatar\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\"]},\"displayName\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"authors\",\"info\":{\"singularName\":\"author\",\"pluralName\":\"authors\",\"displayName\":\"Author\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"avatar\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\"]},\"displayName\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"author\",\"connection\":\"default\",\"uid\":\"api::author.author\",\"apiName\":\"author\",\"globalId\":\"Author\",\"actions\":{},\"lifecycles\":{}},\"api::category.category\":{\"kind\":\"collectionType\",\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"pluginOptions\":{}},\"slug\":{\"type\":\"uid\",\"targetField\":\"name\",\"required\":true},\"posts\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::post.post\",\"mappedBy\":\"category\"},\"order\":{\"type\":\"integer\",\"unique\":true},\"isMain\":{\"type\":\"boolean\",\"default\":true,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"pluginOptions\":{}},\"slug\":{\"type\":\"uid\",\"targetField\":\"name\",\"required\":true},\"posts\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::post.post\",\"mappedBy\":\"category\"},\"order\":{\"type\":\"integer\",\"unique\":true},\"isMain\":{\"type\":\"boolean\",\"default\":true,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"category\",\"connection\":\"default\",\"uid\":\"api::category.category\",\"apiName\":\"category\",\"globalId\":\"Category\",\"actions\":{},\"lifecycles\":{}},\"api::comment.comment\":{\"kind\":\"collectionType\",\"collectionName\":\"comments\",\"info\":{\"singularName\":\"comment\",\"pluralName\":\"comments\",\"displayName\":\"Comment\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"email\":{\"type\":\"email\"},\"content\":{\"type\":\"text\"},\"post\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::post.post\",\"inversedBy\":\"comments\"},\"statistic\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.shared-statistic\"},\"name\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"comments\",\"info\":{\"singularName\":\"comment\",\"pluralName\":\"comments\",\"displayName\":\"Comment\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"email\":{\"type\":\"email\"},\"content\":{\"type\":\"text\"},\"post\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::post.post\",\"inversedBy\":\"comments\"},\"statistic\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.shared-statistic\"},\"name\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"comment\",\"connection\":\"default\",\"uid\":\"api::comment.comment\",\"apiName\":\"comment\",\"globalId\":\"Comment\",\"actions\":{},\"lifecycles\":{}},\"api::gallery.gallery\":{\"kind\":\"collectionType\",\"collectionName\":\"galleries\",\"info\":{\"singularName\":\"gallery\",\"pluralName\":\"galleries\",\"displayName\":\"Gallery\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"location\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::location.location\",\"inversedBy\":\"galleries\"},\"asset\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"shared.shared-asset\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"galleries\",\"info\":{\"singularName\":\"gallery\",\"pluralName\":\"galleries\",\"displayName\":\"Gallery\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"location\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::location.location\",\"inversedBy\":\"galleries\"},\"asset\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"shared.shared-asset\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"gallery\",\"connection\":\"default\",\"uid\":\"api::gallery.gallery\",\"apiName\":\"gallery\",\"globalId\":\"Gallery\",\"actions\":{},\"lifecycles\":{}},\"api::global.global\":{\"kind\":\"singleType\",\"collectionName\":\"globals\",\"info\":{\"singularName\":\"global\",\"pluralName\":\"globals\",\"displayName\":\"Global\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"siteName\":{\"type\":\"string\",\"required\":true},\"favicon\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"defaultSEO\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.shared-seo\",\"required\":true},\"copyright\":{\"type\":\"string\"},\"pageDescription\":{\"type\":\"richtext\"},\"socialLink\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.shared-social-link\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"globals\",\"info\":{\"singularName\":\"global\",\"pluralName\":\"globals\",\"displayName\":\"Global\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"siteName\":{\"type\":\"string\",\"required\":true},\"favicon\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"defaultSEO\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.shared-seo\",\"required\":true},\"copyright\":{\"type\":\"string\"},\"pageDescription\":{\"type\":\"richtext\"},\"socialLink\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.shared-social-link\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"global\",\"connection\":\"default\",\"uid\":\"api::global.global\",\"apiName\":\"global\",\"globalId\":\"Global\",\"actions\":{},\"lifecycles\":{}},\"api::homepage.homepage\":{\"kind\":\"singleType\",\"collectionName\":\"homepages\",\"info\":{\"singularName\":\"homepage\",\"pluralName\":\"homepages\",\"displayName\":\"Homepage\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"seo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.shared-seo\"},\"mainBanner\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\"]},\"subBanners\":{\"type\":\"media\",\"multiple\":true,\"required\":true,\"allowedTypes\":[\"images\"]},\"featuredPost\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::post.post\"},\"pinLinks\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"shared.shared-slug\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"homepages\",\"info\":{\"singularName\":\"homepage\",\"pluralName\":\"homepages\",\"displayName\":\"Homepage\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"seo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.shared-seo\"},\"mainBanner\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\"]},\"subBanners\":{\"type\":\"media\",\"multiple\":true,\"required\":true,\"allowedTypes\":[\"images\"]},\"featuredPost\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::post.post\"},\"pinLinks\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"shared.shared-slug\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"homepage\",\"connection\":\"default\",\"uid\":\"api::homepage.homepage\",\"apiName\":\"homepage\",\"globalId\":\"Homepage\",\"actions\":{},\"lifecycles\":{}},\"api::location.location\":{\"kind\":\"collectionType\",\"collectionName\":\"locations\",\"info\":{\"singularName\":\"location\",\"pluralName\":\"locations\",\"displayName\":\"Locations\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"parentLocation\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::location.location\",\"inversedBy\":\"childLocaltions\"},\"childLocaltions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::location.location\",\"mappedBy\":\"parentLocation\"},\"galleries\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::gallery.gallery\",\"mappedBy\":\"location\"},\"posts\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::post.post\",\"mappedBy\":\"location\"},\"description\":{\"type\":\"text\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"locations\",\"info\":{\"singularName\":\"location\",\"pluralName\":\"locations\",\"displayName\":\"Locations\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"parentLocation\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::location.location\",\"inversedBy\":\"childLocaltions\"},\"childLocaltions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::location.location\",\"mappedBy\":\"parentLocation\"},\"galleries\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::gallery.gallery\",\"mappedBy\":\"location\"},\"posts\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::post.post\",\"mappedBy\":\"location\"},\"description\":{\"type\":\"text\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"location\",\"connection\":\"default\",\"uid\":\"api::location.location\",\"apiName\":\"location\",\"globalId\":\"Location\",\"actions\":{},\"lifecycles\":{}},\"api::personal-info.personal-info\":{\"kind\":\"singleType\",\"collectionName\":\"personal_infos\",\"info\":{\"singularName\":\"personal-info\",\"pluralName\":\"personal-infos\",\"displayName\":\"PersonalInfo\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"displayName\":{\"type\":\"string\",\"required\":true},\"avatar\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"email\":{\"type\":\"string\",\"required\":true},\"address\":{\"type\":\"text\",\"required\":false},\"socialLinks\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.shared-social-link\"},\"sortDescription\":{\"type\":\"text\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"personal_infos\",\"info\":{\"singularName\":\"personal-info\",\"pluralName\":\"personal-infos\",\"displayName\":\"PersonalInfo\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"displayName\":{\"type\":\"string\",\"required\":true},\"avatar\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"email\":{\"type\":\"string\",\"required\":true},\"address\":{\"type\":\"text\",\"required\":false},\"socialLinks\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.shared-social-link\"},\"sortDescription\":{\"type\":\"text\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"personal-info\",\"connection\":\"default\",\"uid\":\"api::personal-info.personal-info\",\"apiName\":\"personal-info\",\"globalId\":\"PersonalInfo\",\"actions\":{},\"lifecycles\":{}},\"api::post.post\":{\"kind\":\"collectionType\",\"collectionName\":\"posts\",\"info\":{\"singularName\":\"post\",\"pluralName\":\"posts\",\"displayName\":\"Post\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true,\"pluginOptions\":{}},\"slug\":{\"type\":\"uid\",\"targetField\":\"title\",\"required\":true},\"content\":{\"type\":\"richtext\",\"pluginOptions\":{}},\"featuredImage\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"],\"pluginOptions\":{}},\"featuredPost\":{\"type\":\"boolean\",\"default\":true,\"pluginOptions\":{}},\"category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::category.category\",\"inversedBy\":\"posts\"},\"excerpt\":{\"type\":\"text\",\"required\":true},\"author\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::author.author\"},\"location\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::location.location\",\"inversedBy\":\"posts\"},\"comments\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::comment.comment\",\"mappedBy\":\"post\"},\"statistic\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"shared.shared-statistic\"},\"bestInteractive\":{\"type\":\"boolean\",\"default\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"posts\",\"info\":{\"singularName\":\"post\",\"pluralName\":\"posts\",\"displayName\":\"Post\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true,\"pluginOptions\":{}},\"slug\":{\"type\":\"uid\",\"targetField\":\"title\",\"required\":true},\"content\":{\"type\":\"richtext\",\"pluginOptions\":{}},\"featuredImage\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"],\"pluginOptions\":{}},\"featuredPost\":{\"type\":\"boolean\",\"default\":true,\"pluginOptions\":{}},\"category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::category.category\",\"inversedBy\":\"posts\"},\"excerpt\":{\"type\":\"text\",\"required\":true},\"author\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::author.author\"},\"location\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::location.location\",\"inversedBy\":\"posts\"},\"comments\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::comment.comment\",\"mappedBy\":\"post\"},\"statistic\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"shared.shared-statistic\"},\"bestInteractive\":{\"type\":\"boolean\",\"default\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"post\",\"connection\":\"default\",\"uid\":\"api::post.post\",\"apiName\":\"post\",\"globalId\":\"Post\",\"actions\":{},\"lifecycles\":{}}}','object',NULL,NULL),(2,'plugin_content_manager_configuration_content_types::admin::permission','{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}','object',NULL,NULL),(3,'plugin_content_manager_configuration_content_types::admin::user','{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]]}}','object',NULL,NULL),(4,'plugin_content_manager_configuration_content_types::admin::role','{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}','object',NULL,NULL),(5,'plugin_content_manager_configuration_content_types::admin::api-token','{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}]]}}','object',NULL,NULL),(6,'plugin_content_manager_configuration_content_types::plugin::upload.file','{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}','object',NULL,NULL),(7,'plugin_content_manager_configuration_content_types::plugin::i18n.locale','{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}','object',NULL,NULL),(8,'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission','{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}]]}}','object',NULL,NULL),(9,'plugin_content_manager_configuration_content_types::plugin::users-permissions.user','{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}','object',NULL,NULL),(10,'plugin_content_manager_configuration_content_types::plugin::users-permissions.role','{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}','object',NULL,NULL),(11,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}','object',NULL,NULL),(12,'plugin_i18n_default_locale','\"vi\"','string',NULL,NULL),(13,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}','object',NULL,NULL),(14,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object',NULL,NULL),(15,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}','object',NULL,NULL),(16,'core_admin_auth','{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}','object',NULL,NULL),(17,'plugin_content_manager_configuration_content_types::api::post.post','{\"uid\":\"api::post.post\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":false,\"sortable\":false}},\"featuredImage\":{\"edit\":{\"label\":\"featuredImage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"featuredImage\",\"searchable\":false,\"sortable\":false}},\"featuredPost\":{\"edit\":{\"label\":\"featuredPost\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"featuredPost\",\"searchable\":true,\"sortable\":true}},\"category\":{\"edit\":{\"label\":\"category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"category\",\"searchable\":true,\"sortable\":true}},\"excerpt\":{\"edit\":{\"label\":\"excerpt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"excerpt\",\"searchable\":true,\"sortable\":true}},\"author\":{\"edit\":{\"label\":\"author\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"author\",\"searchable\":true,\"sortable\":true}},\"location\":{\"edit\":{\"label\":\"location\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"location\",\"searchable\":true,\"sortable\":true}},\"comments\":{\"edit\":{\"label\":\"comments\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"comments\",\"searchable\":false,\"sortable\":false}},\"statistic\":{\"edit\":{\"label\":\"statistic\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"statistic\",\"searchable\":false,\"sortable\":false}},\"bestInteractive\":{\"edit\":{\"label\":\"bestInteractive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"bestInteractive\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"slug\",\"featuredImage\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"excerpt\",\"size\":6}],[{\"name\":\"content\",\"size\":12}],[{\"name\":\"featuredImage\",\"size\":6},{\"name\":\"featuredPost\",\"size\":4}],[{\"name\":\"statistic\",\"size\":12}],[{\"name\":\"bestInteractive\",\"size\":4}]],\"editRelations\":[\"category\",\"author\",\"location\",\"comments\"]}}','object',NULL,NULL),(18,'plugin_content_manager_configuration_content_types::api::category.category','{\"uid\":\"api::category.category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"posts\":{\"edit\":{\"label\":\"posts\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"posts\",\"searchable\":false,\"sortable\":false}},\"order\":{\"edit\":{\"label\":\"order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"order\",\"searchable\":true,\"sortable\":true}},\"isMain\":{\"edit\":{\"label\":\"isMain\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isMain\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"slug\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"order\",\"size\":4},{\"name\":\"isMain\",\"size\":4}]],\"editRelations\":[\"posts\"]}}','object',NULL,NULL),(19,'plugin_content_manager_configuration_content_types::api::author.author','{\"uid\":\"api::author.author\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"avatar\":{\"edit\":{\"label\":\"avatar\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"avatar\",\"searchable\":false,\"sortable\":false}},\"displayName\":{\"edit\":{\"label\":\"displayName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"displayName\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"avatar\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"avatar\",\"size\":6}],[{\"name\":\"displayName\",\"size\":6}]],\"editRelations\":[]}}','object',NULL,NULL),(20,'plugin_content_manager_configuration_content_types::api::global.global','{\"uid\":\"api::global.global\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"siteName\",\"defaultSortBy\":\"siteName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"siteName\":{\"edit\":{\"label\":\"siteName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"siteName\",\"searchable\":true,\"sortable\":true}},\"favicon\":{\"edit\":{\"label\":\"favicon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"favicon\",\"searchable\":false,\"sortable\":false}},\"defaultSEO\":{\"edit\":{\"label\":\"defaultSEO\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"defaultSEO\",\"searchable\":false,\"sortable\":false}},\"copyright\":{\"edit\":{\"label\":\"copyright\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"copyright\",\"searchable\":true,\"sortable\":true}},\"pageDescription\":{\"edit\":{\"label\":\"pageDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pageDescription\",\"searchable\":false,\"sortable\":false}},\"socialLink\":{\"edit\":{\"label\":\"socialLink\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"socialLink\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"siteName\"],\"edit\":[[{\"name\":\"favicon\",\"size\":6},{\"name\":\"siteName\",\"size\":6}],[{\"name\":\"defaultSEO\",\"size\":12}],[{\"name\":\"copyright\",\"size\":6}],[{\"name\":\"pageDescription\",\"size\":12}],[{\"name\":\"socialLink\",\"size\":12}]],\"editRelations\":[]}}','object',NULL,NULL),(22,'plugin_content_manager_configuration_components::shared.shared-seo','{\"uid\":\"shared.shared-seo\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"metaTitle\",\"defaultSortBy\":\"metaTitle\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"metaTitle\":{\"edit\":{\"label\":\"metaTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaTitle\",\"searchable\":true,\"sortable\":true}},\"metaDescription\":{\"edit\":{\"label\":\"metaDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaDescription\",\"searchable\":true,\"sortable\":true}},\"shareImage\":{\"edit\":{\"label\":\"shareImage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"shareImage\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"metaTitle\",\"metaDescription\",\"shareImage\"],\"edit\":[[{\"name\":\"metaTitle\",\"size\":6},{\"name\":\"metaDescription\",\"size\":6}],[{\"name\":\"shareImage\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(23,'plugin_content_manager_configuration_content_types::api::homepage.homepage','{\"uid\":\"api::homepage.homepage\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"seo\":{\"edit\":{\"label\":\"seo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"seo\",\"searchable\":false,\"sortable\":false}},\"mainBanner\":{\"edit\":{\"label\":\"mainBanner\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mainBanner\",\"searchable\":false,\"sortable\":false}},\"subBanners\":{\"edit\":{\"label\":\"subBanners\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subBanners\",\"searchable\":false,\"sortable\":false}},\"featuredPost\":{\"edit\":{\"label\":\"featuredPost\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"featuredPost\",\"searchable\":true,\"sortable\":true}},\"pinLinks\":{\"edit\":{\"label\":\"pinLinks\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pinLinks\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"seo\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"seo\",\"size\":12}],[{\"name\":\"mainBanner\",\"size\":6},{\"name\":\"subBanners\",\"size\":6}],[{\"name\":\"pinLinks\",\"size\":12}]],\"editRelations\":[\"featuredPost\"]}}','object',NULL,NULL),(24,'plugin_content_manager_configuration_components::sections.hero','{\"uid\":\"sections.hero\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\"],\"edit\":[[{\"name\":\"title\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(25,'plugin_content_manager_configuration_components::shared.shared-social-link','{\"uid\":\"shared.shared-social-link\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"facebook\",\"defaultSortBy\":\"facebook\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"facebook\":{\"edit\":{\"label\":\"facebook\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"facebook\",\"searchable\":true,\"sortable\":true}},\"instagram\":{\"edit\":{\"label\":\"instagram\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"instagram\",\"searchable\":true,\"sortable\":true}},\"youtube\":{\"edit\":{\"label\":\"youtube\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"youtube\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"facebook\",\"instagram\",\"youtube\"],\"edit\":[[{\"name\":\"facebook\",\"size\":6},{\"name\":\"instagram\",\"size\":6}],[{\"name\":\"youtube\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(26,'plugin_content_manager_configuration_content_types::api::personal-info.personal-info','{\"uid\":\"api::personal-info.personal-info\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"displayName\",\"defaultSortBy\":\"displayName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"displayName\":{\"edit\":{\"label\":\"displayName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"displayName\",\"searchable\":true,\"sortable\":true}},\"avatar\":{\"edit\":{\"label\":\"avatar\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"avatar\",\"searchable\":false,\"sortable\":false}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"address\":{\"edit\":{\"label\":\"address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"address\",\"searchable\":true,\"sortable\":true}},\"socialLinks\":{\"edit\":{\"label\":\"socialLinks\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"socialLinks\",\"searchable\":false,\"sortable\":false}},\"sortDescription\":{\"edit\":{\"label\":\"sortDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sortDescription\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"displayName\",\"avatar\",\"email\"],\"editRelations\":[],\"edit\":[[{\"name\":\"displayName\",\"size\":6},{\"name\":\"avatar\",\"size\":6}],[{\"name\":\"email\",\"size\":6},{\"name\":\"address\",\"size\":6}],[{\"name\":\"socialLinks\",\"size\":12}],[{\"name\":\"sortDescription\",\"size\":6}]]}}','object',NULL,NULL),(29,'plugin_content_manager_configuration_content_types::api::gallery.gallery','{\"uid\":\"api::gallery.gallery\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"location\":{\"edit\":{\"label\":\"location\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"location\",\"searchable\":true,\"sortable\":true}},\"asset\":{\"edit\":{\"label\":\"asset\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"asset\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"asset\",\"createdAt\"],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"asset\",\"size\":12}]],\"editRelations\":[\"location\"]}}','object',NULL,NULL),(30,'plugin_content_manager_configuration_content_types::api::location.location','{\"uid\":\"api::location.location\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"parentLocation\":{\"edit\":{\"label\":\"parentLocation\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parentLocation\",\"searchable\":true,\"sortable\":true}},\"childLocaltions\":{\"edit\":{\"label\":\"childLocaltions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"childLocaltions\",\"searchable\":false,\"sortable\":false}},\"galleries\":{\"edit\":{\"label\":\"galleries\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"galleries\",\"searchable\":false,\"sortable\":false}},\"posts\":{\"edit\":{\"label\":\"posts\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"posts\",\"searchable\":false,\"sortable\":false}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}]],\"editRelations\":[\"parentLocation\",\"childLocaltions\",\"galleries\",\"posts\"],\"list\":[\"id\",\"name\",\"createdAt\",\"updatedAt\"]}}','object',NULL,NULL),(31,'plugin_content_manager_configuration_components::shared.shared-slug','{\"uid\":\"shared.shared-slug\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"slug\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"slug\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(32,'plugin_content_manager_configuration_content_types::api::comment.comment','{\"uid\":\"api::comment.comment\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":true,\"sortable\":true}},\"post\":{\"edit\":{\"label\":\"post\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"post\",\"searchable\":true,\"sortable\":true}},\"statistic\":{\"edit\":{\"label\":\"statistic\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"statistic\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"email\",\"content\",\"post\"],\"edit\":[[{\"name\":\"email\",\"size\":6},{\"name\":\"content\",\"size\":6}],[{\"name\":\"statistic\",\"size\":12}],[{\"name\":\"name\",\"size\":6}]],\"editRelations\":[\"post\"]}}','object',NULL,NULL),(33,'plugin_content_manager_configuration_components::shared.shared-statistic','{\"uid\":\"shared.shared-statistic\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"access\":{\"edit\":{\"label\":\"access\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"access\",\"searchable\":true,\"sortable\":true}},\"like\":{\"edit\":{\"label\":\"like\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"like\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"access\",\"like\"],\"edit\":[[{\"name\":\"access\",\"size\":4},{\"name\":\"like\",\"size\":4}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(34,'plugin_content_manager_configuration_components::shared.shared-asset','{\"uid\":\"shared.shared-asset\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"source\":{\"edit\":{\"label\":\"source\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"source\",\"searchable\":false,\"sortable\":false}},\"statistic\":{\"edit\":{\"label\":\"statistic\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"statistic\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"source\",\"statistic\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"source\",\"size\":6}],[{\"name\":\"statistic\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL);
/*!40000 ALTER TABLE `strapi_core_store_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_database_schema`
--

DROP TABLE IF EXISTS `strapi_database_schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_database_schema` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `schema` json DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_database_schema`
--

LOCK TABLES `strapi_database_schema` WRITE;
/*!40000 ALTER TABLE `strapi_database_schema` DISABLE KEYS */;
INSERT INTO `strapi_database_schema` VALUES (54,'{\"tables\": [{\"name\": \"strapi_core_store_settings\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"value\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"environment\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tag\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"strapi_webhooks\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"url\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"headers\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"events\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"enabled\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subject\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"properties\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"conditions\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"firstname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lastname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"registration_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_active\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"prefered_language\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_roles\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_tokens\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"access_key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"alternative_text\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"caption\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"width\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"height\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"formats\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"hash\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ext\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"mime\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"size\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"preview_url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider_metadata\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"i18n_locale\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_roles\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmation_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmed\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"authors\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"display_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"authors_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"authors_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"authors_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"authors_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"categories\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_main\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"categories_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"categories_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"categories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"categories_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"categories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"comments\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"comments_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"comments_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"comments_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"comments_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"galleries\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"galleries_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"galleries_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"galleries_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"galleries_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"globals\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"site_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"copyright\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"page_description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"globals_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"globals_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"globals_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"globals_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"homepages\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"homepages_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"homepages_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"homepages_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"homepages_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"locations\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"locations_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"locations_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"locations_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"locations_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"personal_infos\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"display_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"address\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"sort_description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"personal_infos_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"personal_infos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"personal_infos_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"personal_infos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"posts\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"featured_post\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"excerpt\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"best_interactive\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"posts_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"posts_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"posts_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"posts_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"posts_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_sections_heroes\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_shared_assets\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_shared_seos\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"meta_title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"meta_description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_shared_slugs\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_shared_social_links\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"facebook\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"instagram\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"youtube\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_shared_statistics\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"access\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"like\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions_role_links\", \"columns\": [{\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users_roles_links\", \"columns\": [{\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_related_morphs\", \"columns\": [{\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"]}], \"foreignKeys\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions_role_links\", \"columns\": [{\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_role_links\", \"columns\": [{\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"comments_components\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": 0, \"notNullable\": false}], \"indexes\": [{\"name\": \"comments_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"comments_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"comments_entity_fk\", \"columns\": [\"entity_id\"]}], \"foreignKeys\": [{\"name\": \"comments_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"comments\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"comments_post_links\", \"columns\": [{\"args\": [], \"name\": \"comment_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"post_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"comments_post_links_fk\", \"columns\": [\"comment_id\"]}, {\"name\": \"comments_post_links_inv_fk\", \"columns\": [\"post_id\"]}], \"foreignKeys\": [{\"name\": \"comments_post_links_fk\", \"columns\": [\"comment_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"comments\", \"referencedColumns\": [\"id\"]}, {\"name\": \"comments_post_links_inv_fk\", \"columns\": [\"post_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"posts\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"galleries_components\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": 0, \"notNullable\": false}], \"indexes\": [{\"name\": \"galleries_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"galleries_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"galleries_entity_fk\", \"columns\": [\"entity_id\"]}], \"foreignKeys\": [{\"name\": \"galleries_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"galleries\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"galleries_location_links\", \"columns\": [{\"args\": [], \"name\": \"gallery_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"location_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"galleries_location_links_fk\", \"columns\": [\"gallery_id\"]}, {\"name\": \"galleries_location_links_inv_fk\", \"columns\": [\"location_id\"]}], \"foreignKeys\": [{\"name\": \"galleries_location_links_fk\", \"columns\": [\"gallery_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"galleries\", \"referencedColumns\": [\"id\"]}, {\"name\": \"galleries_location_links_inv_fk\", \"columns\": [\"location_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"locations\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"globals_components\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": 0, \"notNullable\": false}], \"indexes\": [{\"name\": \"globals_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"globals_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"globals_entity_fk\", \"columns\": [\"entity_id\"]}], \"foreignKeys\": [{\"name\": \"globals_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"globals\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"homepages_components\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": 0, \"notNullable\": false}], \"indexes\": [{\"name\": \"homepages_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"homepages_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"homepages_entity_fk\", \"columns\": [\"entity_id\"]}], \"foreignKeys\": [{\"name\": \"homepages_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"homepages\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"homepages_featured_post_links\", \"columns\": [{\"args\": [], \"name\": \"homepage_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"post_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"homepages_featured_post_links_fk\", \"columns\": [\"homepage_id\"]}, {\"name\": \"homepages_featured_post_links_inv_fk\", \"columns\": [\"post_id\"]}], \"foreignKeys\": [{\"name\": \"homepages_featured_post_links_fk\", \"columns\": [\"homepage_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"homepages\", \"referencedColumns\": [\"id\"]}, {\"name\": \"homepages_featured_post_links_inv_fk\", \"columns\": [\"post_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"posts\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"locations_parent_location_links\", \"columns\": [{\"args\": [], \"name\": \"location_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_location_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"locations_parent_location_links_fk\", \"columns\": [\"location_id\"]}, {\"name\": \"locations_parent_location_links_inv_fk\", \"columns\": [\"inv_location_id\"]}], \"foreignKeys\": [{\"name\": \"locations_parent_location_links_fk\", \"columns\": [\"location_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"locations\", \"referencedColumns\": [\"id\"]}, {\"name\": \"locations_parent_location_links_inv_fk\", \"columns\": [\"inv_location_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"locations\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"personal_infos_components\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": 0, \"notNullable\": false}], \"indexes\": [{\"name\": \"personal_infos_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"personal_infos_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"personal_infos_entity_fk\", \"columns\": [\"entity_id\"]}], \"foreignKeys\": [{\"name\": \"personal_infos_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"personal_infos\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"posts_components\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": 0, \"notNullable\": false}], \"indexes\": [{\"name\": \"posts_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"posts_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"posts_entity_fk\", \"columns\": [\"entity_id\"]}], \"foreignKeys\": [{\"name\": \"posts_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"posts\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"posts_category_links\", \"columns\": [{\"args\": [], \"name\": \"post_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"posts_category_links_fk\", \"columns\": [\"post_id\"]}, {\"name\": \"posts_category_links_inv_fk\", \"columns\": [\"category_id\"]}], \"foreignKeys\": [{\"name\": \"posts_category_links_fk\", \"columns\": [\"post_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"posts\", \"referencedColumns\": [\"id\"]}, {\"name\": \"posts_category_links_inv_fk\", \"columns\": [\"category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"categories\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"posts_author_links\", \"columns\": [{\"args\": [], \"name\": \"post_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"author_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"posts_author_links_fk\", \"columns\": [\"post_id\"]}, {\"name\": \"posts_author_links_inv_fk\", \"columns\": [\"author_id\"]}], \"foreignKeys\": [{\"name\": \"posts_author_links_fk\", \"columns\": [\"post_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"posts\", \"referencedColumns\": [\"id\"]}, {\"name\": \"posts_author_links_inv_fk\", \"columns\": [\"author_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"authors\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"posts_location_links\", \"columns\": [{\"args\": [], \"name\": \"post_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"location_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"posts_location_links_fk\", \"columns\": [\"post_id\"]}, {\"name\": \"posts_location_links_inv_fk\", \"columns\": [\"location_id\"]}], \"foreignKeys\": [{\"name\": \"posts_location_links_fk\", \"columns\": [\"post_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"posts\", \"referencedColumns\": [\"id\"]}, {\"name\": \"posts_location_links_inv_fk\", \"columns\": [\"location_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"locations\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_shared_shared_assets_components\", \"columns\": [{\"args\": [{\"primary\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": 0, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_shared_shared_assets_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"components_shared_shared_assets_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"components_shared_shared_assets_entity_fk\", \"columns\": [\"entity_id\"]}], \"foreignKeys\": [{\"name\": \"components_shared_shared_assets_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_shared_shared_assets\", \"referencedColumns\": [\"id\"]}]}]}','2022-04-01 13:53:47','46564d68c1e02396e46dc82371d3e95d');
/*!40000 ALTER TABLE `strapi_database_schema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_migrations`
--

DROP TABLE IF EXISTS `strapi_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_migrations`
--

LOCK TABLES `strapi_migrations` WRITE;
/*!40000 ALTER TABLE `strapi_migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_webhooks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` json DEFAULT NULL,
  `events` json DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_webhooks`
--

LOCK TABLES `strapi_webhooks` WRITE;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_permissions`
--

LOCK TABLES `up_permissions` WRITE;
/*!40000 ALTER TABLE `up_permissions` DISABLE KEYS */;
INSERT INTO `up_permissions` VALUES (1,'plugin::users-permissions.auth.connect','2022-02-25 08:40:36.576000','2022-02-25 08:40:36.576000',NULL,NULL),(2,'plugin::users-permissions.user.me','2022-02-25 08:40:36.576000','2022-02-25 08:40:36.576000',NULL,NULL),(5,'plugin::users-permissions.auth.callback','2022-02-25 08:40:36.595000','2022-02-25 08:40:36.595000',NULL,NULL),(6,'plugin::users-permissions.auth.connect','2022-02-25 08:40:36.595000','2022-02-25 08:40:36.595000',NULL,NULL),(9,'plugin::users-permissions.auth.register','2022-02-25 08:40:36.595000','2022-02-25 08:40:36.595000',NULL,NULL),(11,'plugin::users-permissions.user.me','2022-02-25 08:40:36.595000','2022-02-25 08:40:36.595000',NULL,NULL),(12,'api::author.author.find','2022-02-25 11:18:30.815000','2022-02-25 11:18:30.815000',NULL,NULL),(13,'api::author.author.findOne','2022-02-25 11:18:30.815000','2022-02-25 11:18:30.815000',NULL,NULL),(14,'api::category.category.find','2022-02-25 11:18:30.815000','2022-02-25 11:18:30.815000',NULL,NULL),(15,'api::category.category.findOne','2022-02-25 11:18:30.815000','2022-02-25 11:18:30.815000',NULL,NULL),(16,'api::post.post.find','2022-02-25 11:18:30.815000','2022-02-25 11:18:30.815000',NULL,NULL),(17,'api::post.post.findOne','2022-02-25 11:18:30.815000','2022-02-25 11:18:30.815000',NULL,NULL),(18,'api::global.global.find','2022-03-10 22:16:04.278000','2022-03-10 22:16:04.278000',NULL,NULL),(19,'api::global.global.update','2022-03-10 22:19:08.182000','2022-03-10 22:19:08.182000',NULL,NULL),(20,'api::global.global.delete','2022-03-10 22:19:08.182000','2022-03-10 22:19:08.182000',NULL,NULL),(21,'api::homepage.homepage.find','2022-03-14 23:12:53.565000','2022-03-14 23:12:53.565000',NULL,NULL),(22,'api::personal-info.personal-info.find','2022-03-31 08:55:36.449000','2022-03-31 08:55:36.449000',NULL,NULL),(23,'api::personal-info.personal-info.update','2022-03-31 08:55:36.449000','2022-03-31 08:55:36.449000',NULL,NULL),(24,'api::personal-info.personal-info.delete','2022-03-31 08:55:36.449000','2022-03-31 08:55:36.449000',NULL,NULL),(25,'api::gallery.gallery.find','2022-03-31 15:34:24.981000','2022-03-31 15:34:24.981000',NULL,NULL);
/*!40000 ALTER TABLE `up_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_permissions_role_links`
--

DROP TABLE IF EXISTS `up_permissions_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_permissions_role_links` (
  `permission_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  KEY `up_permissions_role_links_fk` (`permission_id`),
  KEY `up_permissions_role_links_inv_fk` (`role_id`),
  CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_permissions_role_links`
--

LOCK TABLES `up_permissions_role_links` WRITE;
/*!40000 ALTER TABLE `up_permissions_role_links` DISABLE KEYS */;
INSERT INTO `up_permissions_role_links` VALUES (1,1),(2,1),(5,2),(6,2),(11,2),(9,2),(12,2),(13,2),(14,2),(15,2),(16,2),(17,2),(18,2),(19,2),(20,2),(21,2),(22,2),(23,2),(24,2),(25,2);
/*!40000 ALTER TABLE `up_permissions_role_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_roles`
--

DROP TABLE IF EXISTS `up_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_roles_created_by_id_fk` (`created_by_id`),
  KEY `up_roles_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_roles`
--

LOCK TABLES `up_roles` WRITE;
/*!40000 ALTER TABLE `up_roles` DISABLE KEYS */;
INSERT INTO `up_roles` VALUES (1,'Authenticated','Default role given to authenticated user.','authenticated','2022-02-25 08:40:36.553000','2022-02-25 08:40:36.553000',NULL,NULL),(2,'Public','Default role given to unauthenticated user.','public','2022-02-25 08:40:36.560000','2022-03-31 15:34:24.971000',NULL,NULL);
/*!40000 ALTER TABLE `up_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_users`
--

DROP TABLE IF EXISTS `up_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_users_created_by_id_fk` (`created_by_id`),
  KEY `up_users_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_users`
--

LOCK TABLES `up_users` WRITE;
/*!40000 ALTER TABLE `up_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `up_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_users_role_links`
--

DROP TABLE IF EXISTS `up_users_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_users_role_links` (
  `user_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  KEY `up_users_role_links_fk` (`user_id`),
  KEY `up_users_role_links_inv_fk` (`role_id`),
  CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_users_role_links`
--

LOCK TABLES `up_users_role_links` WRITE;
/*!40000 ALTER TABLE `up_users_role_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `up_users_role_links` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-01 17:27:52
