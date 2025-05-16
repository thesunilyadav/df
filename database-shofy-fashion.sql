-- MySQL dump 10.13  Distrib 5.7.44, for osx10.19 (x86_64)
--
-- Host: 127.0.0.1    Database: shofy
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'3XWMu4bLGnstwWTM0GgGpCtoATHl5dCf',1,'2024-11-10 21:40:50','2024-11-10 21:40:50','2024-11-10 21:40:50');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Ads 1','2029-11-11 00:00:00','not_set','UROL9F9ZZVAA','main/banners/1.jpg','/products',0,1,'published','2024-11-10 21:41:00','2024-11-10 21:41:00',1,NULL,NULL,'custom_ad',NULL),(2,'Ads 2','2029-11-11 00:00:00','not_set','B30VDBKO7SBF','main/banners/2.jpg','/products',0,2,'published','2024-11-10 21:41:00','2024-11-10 21:41:00',1,NULL,NULL,'custom_ad',NULL),(3,'Ads 3','2029-11-11 00:00:00','not_set','WXAUTIJV1QU0','fashion/banners/1.jpg','/products',0,3,'published','2024-11-10 21:41:00','2024-11-10 21:41:00',1,NULL,NULL,'custom_ad',NULL),(4,'Ads 4','2029-11-11 00:00:00','not_set','7Z5RXBBWV7J2','fashion/banners/2.jpg','/products',0,4,'published','2024-11-10 21:41:00','2024-11-10 21:41:00',1,NULL,NULL,'custom_ad',NULL),(5,'Ads 5','2029-11-11 00:00:00','not_set','JY08TDO8FG1E','fashion/banners/3.jpg','/products',0,5,'published','2024-11-10 21:41:00','2024-11-10 21:41:00',1,NULL,NULL,'custom_ad',NULL),(6,'Ads 6','2029-11-11 00:00:00','not_set','VKJNCBIBQC1O','fashion/banners/4.jpg','/products',0,6,'published','2024-11-10 21:41:00','2024-11-10 21:41:00',1,NULL,NULL,'custom_ad',NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_action` tinyint(1) NOT NULL DEFAULT '0',
  `action_label` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_open_new_tab` tinyint(1) NOT NULL DEFAULT '0',
  `dismissible` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Announcement 1','Enjoy free shipping on all orders over $99! Shop now and save on delivery costs.',0,NULL,NULL,0,1,'2024-11-11 04:40:57',NULL,1,'2024-11-10 21:40:57','2024-11-10 21:40:57'),(2,'Announcement 2','Need assistance? Our customer support is available 24/7 to help you with any questions or concerns.',0,NULL,NULL,0,1,'2024-11-11 04:40:57',NULL,1,'2024-11-10 21:40:57','2024-11-10 21:40:57'),(3,'Announcement 3','Shop with confidence! We offer a hassle-free 30 days return service for your peace of mind.',0,NULL,NULL,0,1,'2024-11-11 04:40:57',NULL,1,'2024-11-10 21:40:57','2024-11-10 21:40:57');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements_translations`
--

DROP TABLE IF EXISTS `announcements_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcements_id` bigint unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`announcements_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements_translations`
--

LOCK TABLES `announcements_translations` WRITE;
/*!40000 ALTER TABLE `announcements_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Crisp Bread &amp; Cake',0,'Occaecati necessitatibus veniam inventore velit inventore nulla. Est et et eos nemo sit est. Sit expedita aperiam accusamus magnam voluptas.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(2,'Fashion',0,'Quae et id nesciunt est aut nulla. Fugit commodi ut reiciendis sit et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(3,'Electronic',0,'Aliquam est et consequatur facere. Placeat sit aut consectetur aperiam voluptatem. Laborum eveniet adipisci adipisci veritatis eligendi quasi quo. Voluptatem et dicta dolor earum.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(4,'Commercial',0,'Pariatur tempore labore nam est maxime minima quas. Et unde ab ut voluptates. Minima repellat in ex in. Aliquam iste sed assumenda esse laudantium architecto.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(5,'Organic Fruits',0,'Eos consequuntur et dolores nobis magni voluptas quibusdam molestias. Debitis consequatur ut eius omnis modi. Officiis quisquam quia quod nihil.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(6,'Ecological',0,'Voluptatem ullam reiciendis et reiciendis fugiat quis qui. Adipisci sequi nesciunt harum ipsum. Animi ut excepturi nemo aut. Cum officiis architecto esse nemo repellat labore.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-11-10 21:40:54','2024-11-10 21:40:54');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Dr. Lemuel Kuphal III','oberbrunner.ellis@example.net','(434) 219-7309','33189 Gerald Underpass Apt. 609\nBrakuschester, DE 16103','Aliquam iste a inventore placeat.','Excepturi odio dolores consequatur. Laborum aut voluptatem doloribus quisquam recusandae id ut minus. Et ut ratione at et vitae. Quam est a omnis dolorum. Rerum incidunt consequatur voluptatem dolorum. Ullam commodi et nulla aut a. Earum ut iure magni ad. Dolorum accusamus aperiam qui exercitationem. Consequuntur deleniti error repellat eius. Voluptatibus dolor maiores quia dolores sed voluptatum. Iure vel facilis minus dolorem culpa aut.',NULL,'read','2024-11-10 21:40:53','2024-11-10 21:40:53'),(2,'Prof. Nettie Ruecker II','olen.rosenbaum@example.org','+17267420432','32845 O\'Hara Path\nNew Joanny, WI 35236-8860','Eaque explicabo enim sit ipsa.','Tempore animi vel explicabo est aut ex. Deserunt qui deleniti ut eum temporibus occaecati. Eos provident nihil corporis nulla. Sit omnis pariatur aut nihil qui consequuntur. Quaerat fuga aut autem. Et velit voluptas suscipit at beatae mollitia. Repellendus et suscipit non quas assumenda. Amet molestiae asperiores ullam commodi sunt molestiae. Et et consequuntur quas amet cumque. Et est ad et aut.',NULL,'unread','2024-11-10 21:40:53','2024-11-10 21:40:53'),(3,'Ursula Hegmann DDS','katheryn.oconner@example.com','+15618637358','327 Strosin Circles Suite 986\nPort Joeville, MA 76894','Nihil nam fugiat id sunt id occaecati.','Ipsam repellendus quo dicta laboriosam autem quod vel. Sunt ratione asperiores sequi. Tempora deserunt quaerat amet. Et labore et dolores architecto itaque voluptatibus illum. Ad aut sit ut. Qui ut sunt repellat voluptas. Et quisquam consequatur doloribus id. In nostrum perspiciatis odio rem rem. Ea praesentium est temporibus eaque repellendus aut exercitationem. Ea libero nesciunt eveniet perferendis necessitatibus.',NULL,'read','2024-11-10 21:40:53','2024-11-10 21:40:53'),(4,'Novella Feil Jr.','annalise.johnston@example.com','+1-586-627-7684','7952 Kailyn Run Apt. 251\nPort Torrey, GA 44076-3107','Quia quaerat id debitis.','Quisquam rerum cumque ea non molestiae non. Amet nihil dolores dicta voluptas. Impedit odio minus dolorem soluta. Dolorum optio voluptatem quae accusamus omnis ut. Maxime rerum fugit provident. Dignissimos quas alias consectetur omnis et dolores odio. Quisquam culpa molestiae enim assumenda. Cumque magni fuga ut consequuntur eligendi.',NULL,'unread','2024-11-10 21:40:53','2024-11-10 21:40:53'),(5,'Bessie Hills','nia.erdman@example.com','(859) 665-4378','1412 Wiza Parkways Apt. 930\nPort Greysonberg, DC 20973','Eos possimus quos ipsam nemo nisi.','Provident dicta et facilis architecto est laboriosam esse mollitia. Similique eos dignissimos libero perferendis dolor qui et. Debitis dolor id numquam assumenda ipsam quis saepe. Nisi explicabo quia dolorem similique odio. Ut quaerat consequatur ipsum blanditiis veritatis aliquam labore voluptatem. Sit sequi quas voluptate eos ea similique velit. Suscipit facilis debitis molestias. Iste nihil ipsam quidem. Iste illum qui asperiores nihil. Minima quisquam qui aut commodi.',NULL,'unread','2024-11-10 21:40:53','2024-11-10 21:40:53'),(6,'Myra Koss Sr.','bailee.lang@example.net','952-633-9358','639 Lebsack Crossroad Suite 175\nCotyborough, WV 26504-0653','Soluta esse et sed.','Voluptate et quia omnis dolores minima placeat. Odio blanditiis quam ut voluptatem dolor laborum quae. Iusto doloribus pariatur debitis ex quo consectetur vel. Quia voluptas sapiente voluptas qui omnis. Illo laudantium numquam voluptatem sed repudiandae ducimus quo. Modi est itaque aut quaerat deserunt laudantium. Omnis pariatur sit perspiciatis consequatur debitis magni magnam. Illum cumque harum consectetur beatae animi. Sit ducimus sed quis ratione quidem. Itaque ullam ut et.',NULL,'read','2024-11-10 21:40:53','2024-11-10 21:40:53'),(7,'Mr. Esteban Thompson V','alexys.rau@example.com','318-819-5239','44056 Wiza Keys Apt. 503\nNorth Shyann, NE 82181-3653','Velit omnis eos quae harum eum hic.','Et praesentium illum voluptate qui sed consectetur. Aut fugit harum quo. Saepe molestiae corrupti eum rem. Molestiae aut voluptatibus itaque ut sint. Atque odio eius mollitia ea dolorem maiores. Consequatur in qui vitae fuga. Enim qui officia consequuntur et cumque. Praesentium facere nobis sequi quae. Et iure molestiae repellat possimus minima corporis omnis.',NULL,'unread','2024-11-10 21:40:53','2024-11-10 21:40:53'),(8,'Mr. Coty Bergstrom I','wbatz@example.net','1-669-668-7131','443 Pacocha Court Apt. 402\nSouth Dedric, NM 30263-0431','Voluptas cumque voluptate est id optio.','Eos eligendi voluptatibus quia molestiae explicabo. Autem vero impedit magnam eaque natus quia. In non vero ea. Molestiae corporis molestiae est quas eveniet quia. Veritatis omnis delectus impedit rerum consequatur. Nulla odio minima accusamus ipsum voluptate quam. Dolore dicta amet pariatur autem. Eius architecto perferendis molestias qui.',NULL,'unread','2024-11-10 21:40:53','2024-11-10 21:40:53'),(9,'Missouri Harber','jules.hickle@example.net','725-691-9733','994 Prohaska Estate\nSouth Gonzalo, CT 96577','Dicta rerum voluptatem aut aperiam odio iure.','Velit ut eos incidunt consequatur et iusto. Corporis minima sint praesentium labore ab sapiente aliquam. Est voluptatem omnis esse atque. Dicta neque aut inventore sequi natus et ut. Ut omnis adipisci aspernatur. Quae quos ratione illo velit possimus. Suscipit sequi delectus amet qui minima debitis quo. Tenetur quidem non veniam amet alias iusto doloremque ipsa.',NULL,'read','2024-11-10 21:40:53','2024-11-10 21:40:53'),(10,'Ruben Botsford','srenner@example.net','(231) 240-1738','800 Josefina Junctions\nNew Ameliabury, OK 25842','Occaecati corrupti id ab.','Ut magnam et a ad et quos. Praesentium porro id laudantium rerum. Natus laudantium error voluptatem nisi odit exercitationem. Excepturi qui recusandae illum id. Ipsum deserunt et in nihil optio accusamus eligendi. Provident et perspiciatis quis id aliquam possimus odio. Harum soluta exercitationem laboriosam et voluptatem numquam.',NULL,'read','2024-11-10 21:40:53','2024-11-10 21:40:53');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'FoodPound','New Snacks Release',NULL,'main/brands/1.png','published',0,1,'2024-11-10 21:40:50','2024-11-10 21:40:50'),(2,'iTea JSC','Happy Tea 100% Organic. From $29.9',NULL,'main/brands/2.png','published',1,1,'2024-11-10 21:40:50','2024-11-10 21:40:50'),(3,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/3.png','published',2,1,'2024-11-10 21:40:50','2024-11-10 21:40:50'),(4,'Shofy','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/4.png','published',3,1,'2024-11-10 21:40:50','2024-11-10 21:40:50'),(5,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/5.png','published',4,1,'2024-11-10 21:40:50','2024-11-10 21:40:50');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-11-10 21:40:50','2024-11-10 21:40:50'),(2,'EUR','€',0,2,1,0,0.84,'2024-11-10 21:40:50','2024-11-10 21:40:50'),(3,'VND','₫',0,0,2,0,23203,'2024-11-10 21:40:50','2024-11-10 21:40:50'),(4,'NGN','₦',1,2,2,0,895.52,'2024-11-10 21:40:50','2024-11-10 21:40:50');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Dr. Allison Schaefer','customer@botble.com','+12319143054','TV','Minnesota','Port King','39701 Litzy Springs',1,1,'2024-11-10 21:40:50','2024-11-10 21:40:50','06758'),(2,'Dr. Allison Schaefer','customer@botble.com','+12832164463','US','Alabama','East Rebaburgh','63810 McKenzie Dale Apt. 809',1,0,'2024-11-10 21:40:50','2024-11-10 21:40:50','37173'),(3,'Camylle Hills','vendor@botble.com','+16676552003','KG','Vermont','Port Elouise','197 Alvena Inlet Apt. 721',2,1,'2024-11-10 21:40:51','2024-11-10 21:40:51','56068'),(4,'Camylle Hills','vendor@botble.com','+15159364369','MQ','South Carolina','Lunashire','928 Ullrich Summit Apt. 945',2,0,'2024-11-10 21:40:51','2024-11-10 21:40:51','97155'),(5,'Ada Spencer','dwilderman@example.org','+12014886290','ET','Virginia','Feestmouth','937 Swaniawski Locks',3,1,'2024-11-10 21:40:51','2024-11-10 21:40:51','09829'),(6,'Prof. Vergie Pagac','mosciski.mabelle@example.net','+15053182286','CV','Kansas','Port Joshua','46473 Taya Fall Suite 562',4,1,'2024-11-10 21:40:51','2024-11-10 21:40:51','06896'),(7,'Rickey Gutmann','plittle@example.org','+15204558207','MR','North Dakota','East Kadinfort','483 Yolanda Islands',5,1,'2024-11-10 21:40:51','2024-11-10 21:40:51','62996'),(8,'Lucious O\'Reilly','cummerata.elmo@example.org','+14258970264','BO','Kansas','Jayceehaven','5564 Josianne Overpass',6,1,'2024-11-10 21:40:52','2024-11-10 21:40:52','63162-8344'),(9,'Pamela Nitzsche','mertz.destini@example.net','+13057306923','NA','Kansas','Strackeburgh','3397 Yost Fort Apt. 080',7,1,'2024-11-10 21:40:52','2024-11-10 21:40:52','58043'),(10,'Vesta Dach','jon92@example.org','+13519009749','SZ','Arkansas','New Rosalindashire','234 Matilde Village Apt. 772',8,1,'2024-11-10 21:40:52','2024-11-10 21:40:52','95638-9010'),(11,'Dr. Mustafa Kilback','ahaag@example.com','+15103574691','AR','New York','North Rubyview','16391 Feil Lake Suite 452',9,1,'2024-11-10 21:40:52','2024-11-10 21:40:52','93221'),(12,'Mr. Marty Satterfield PhD','zella63@example.org','+17816144414','IM','California','Chasityborough','864 Kiarra Track Suite 361',10,1,'2024-11-10 21:40:53','2024-11-10 21:40:53','45825-7222');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_deletion_requests`
--

DROP TABLE IF EXISTS `ec_customer_deletion_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_deletion_requests`
--

LOCK TABLES `ec_customer_deletion_requests` WRITE;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `block_reason` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `stripe_account_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_account_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Dr. Allison Schaefer','customer@botble.com','$2y$12$t22uSPS9pKSOmJka930APew9GAYoxKOaj34X98fjUfcAmbSgv0lrK','main/customers/3.jpg','1981-11-10','+19892347926',NULL,'2024-11-10 21:40:50','2024-11-10 21:40:50','2024-11-11 04:40:50',NULL,0,NULL,'activated',NULL,NULL,NULL,0),(2,'Camylle Hills','vendor@botble.com','$2y$12$FVEp76c13Hcg.bIhc2dO9.wofDjf7uCKVkNcp2fofp1Xw1YvKn/6C','main/customers/2.jpg','2004-10-14','+14246321395',NULL,'2024-11-10 21:40:51','2024-11-10 21:40:55','2024-11-11 04:40:50',NULL,1,'2024-11-11 04:40:55','activated',NULL,NULL,NULL,0),(3,'Ada Spencer','dwilderman@example.org','$2y$12$aWeohbYEZVBth8eYHu8soesCfZqmapxwtbB.cjEDGAva/wowc1ht.','main/customers/1.jpg','1997-10-31','+19729017528',NULL,'2024-11-10 21:40:51','2024-11-10 21:40:55','2024-11-11 04:40:50',NULL,1,'2024-11-11 04:40:55','activated',NULL,NULL,NULL,0),(4,'Prof. Vergie Pagac','mosciski.mabelle@example.net','$2y$12$PZJvKD1l4soTAmnRh1R7c.ebm2tPSSHrow8FmhN5ZB6lvTDmyv36G','main/customers/2.jpg','1998-10-24','+13468656327',NULL,'2024-11-10 21:40:51','2024-11-10 21:40:55','2024-11-11 04:40:50',NULL,1,'2024-11-11 04:40:55','activated',NULL,NULL,NULL,0),(5,'Rickey Gutmann','plittle@example.org','$2y$12$MtIYGotPNWlu4Cy/T/RFlORbY2hEaQx.CtU5eiRJfCuo6/KczodhS','main/customers/3.jpg','1989-11-09','+17439952287',NULL,'2024-11-10 21:40:51','2024-11-10 21:40:56','2024-11-11 04:40:50',NULL,1,'2024-11-11 04:40:55','activated',NULL,NULL,NULL,0),(6,'Lucious O\'Reilly','cummerata.elmo@example.org','$2y$12$GGXAcOHD0RQm71/JVCUCb./qTeJ1M0qDn5JKUEZwPXl/JrUQ8TUH2','main/customers/4.jpg','1981-10-21','+13854977095',NULL,'2024-11-10 21:40:52','2024-11-10 21:40:56','2024-11-11 04:40:50',NULL,1,'2024-11-11 04:40:55','activated',NULL,NULL,NULL,0),(7,'Pamela Nitzsche','mertz.destini@example.net','$2y$12$Z2JQIWg.v2UTQ1WYvm/Ssuom/9fNy2ATCWba2xi0CE2hEZYADRuvu','main/customers/5.jpg','2000-10-24','+19067515118',NULL,'2024-11-10 21:40:52','2024-11-10 21:40:56','2024-11-11 04:40:50',NULL,1,'2024-11-11 04:40:55','activated',NULL,NULL,NULL,0),(8,'Vesta Dach','jon92@example.org','$2y$12$X5NOLUzciRy7/H3Ia1bgP.26NzbHPKQG5CPaCdBcLUKvV3um8OVzC','main/customers/6.jpg','1988-10-15','+16092807212',NULL,'2024-11-10 21:40:52','2024-11-10 21:40:56','2024-11-11 04:40:50',NULL,1,'2024-11-11 04:40:55','activated',NULL,NULL,NULL,0),(9,'Dr. Mustafa Kilback','ahaag@example.com','$2y$12$bvnfqI5JtsM0tx9mIU1j7.iZwenjh.iZhJtXLK4L0VwHqF6DdyyN.','main/customers/7.jpg','1985-10-28','+14589874520',NULL,'2024-11-10 21:40:52','2024-11-10 21:40:57','2024-11-11 04:40:50',NULL,0,NULL,'activated',NULL,NULL,NULL,0),(10,'Mr. Marty Satterfield PhD','zella63@example.org','$2y$12$VCbGG2oKpY5Shmv9F.xi7uWma96efThJGcyDjrfDb3W4U7Ne4Mr4C','main/customers/8.jpg','2001-10-14','+17326993910',NULL,'2024-11-10 21:40:53','2024-11-10 21:40:57','2024-11-11 04:40:50',NULL,0,NULL,'activated',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `can_use_with_flash_sale` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
INSERT INTO `ec_discounts` VALUES (1,'Discount 1','VAWEXUQZRHZZ','2024-11-10 04:40:54',NULL,NULL,0,50,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,NULL),(2,'Discount 2','WPKDGOBIAQ7J','2024-11-10 04:40:54',NULL,NULL,0,662,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,NULL),(3,'Discount 3','XKROMGAPVBVJ','2024-11-10 04:40:54',NULL,NULL,0,683,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,NULL),(4,'Discount 4','66V4AUTREXTS','2024-11-10 04:40:54','2024-11-29 04:40:54',NULL,0,39,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,NULL),(5,'Discount 5','V5BVLTHXWNAM','2024-11-10 04:40:54',NULL,NULL,0,657,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,NULL),(6,'Discount 6','984C9Y4OXVNU','2024-11-10 04:40:54',NULL,NULL,0,620,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,NULL),(7,'Discount 7','VHJ0LJT0YOPR','2024-11-10 04:40:54','2024-12-04 04:40:54',NULL,0,27,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,NULL),(8,'Discount 8','JO09KTAXAW8G','2024-11-10 04:40:54',NULL,NULL,0,808,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,NULL),(9,'Discount 9','YOORIRPVHV7Z','2024-11-10 04:40:54','2024-11-28 04:40:54',NULL,0,9,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,NULL),(10,'Discount 10','B2BHZRMMJJ0Z','2024-11-10 04:40:54',NULL,NULL,0,69,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,NULL);
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,509.98,18,2),(1,2,219.96,18,5),(1,3,1792.5,19,3),(1,4,925.3428,12,5),(1,5,547.84,7,5),(1,6,946.92,11,5),(1,7,593.56,18,3),(1,8,1081.86,15,2),(1,9,303.18,13,4),(1,10,356.16,6,2);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2024-11-29 00:00:00','published','2024-11-10 21:41:00','2024-11-10 21:41:00');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(2,1,'2 Year',10,9999,0,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(3,1,'3 Year',20,9999,0,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(4,2,'4GB',0,9999,0,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(5,2,'8GB',10,9999,0,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(6,2,'16GB',20,9999,0,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(7,3,'Core i5',0,9999,0,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(8,3,'Core i7',10,9999,0,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(9,3,'Core i9',20,9999,0,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(10,4,'128GB',0,9999,0,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(11,4,'256GB',10,9999,0,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(12,4,'512GB',20,9999,0,'2024-11-10 21:40:54','2024-11-10 21:40:54');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-11-10 21:40:54','2024-11-10 21:40:54');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `downloaded_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_return_id` bigint unsigned NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `cancellation_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_reason_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2024-11-10 21:40:50','2024-11-10 21:40:50',0),(2,'Size','size','text',1,1,1,'published',1,'2024-11-10 21:40:50','2024-11-10 21:40:50',0),(3,'Weight','weight','text',1,1,1,'published',0,'2024-11-10 21:40:50','2024-11-10 21:40:50',0),(4,'Boxes','boxes','text',1,1,1,'published',1,'2024-11-10 21:40:50','2024-11-10 21:40:50',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2024-11-10 21:40:50','2024-11-10 21:40:50'),(2,1,'Blue','blue','#333333',NULL,0,2,'2024-11-10 21:40:50','2024-11-10 21:40:50'),(3,1,'Red','red','#DA323F',NULL,0,3,'2024-11-10 21:40:50','2024-11-10 21:40:50'),(4,1,'Black','black','#2F366C',NULL,0,4,'2024-11-10 21:40:50','2024-11-10 21:40:50'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2024-11-10 21:40:50','2024-11-10 21:40:50'),(6,2,'S','s',NULL,NULL,1,1,'2024-11-10 21:40:50','2024-11-10 21:40:50'),(7,2,'M','m',NULL,NULL,0,2,'2024-11-10 21:40:50','2024-11-10 21:40:50'),(8,2,'L','l',NULL,NULL,0,3,'2024-11-10 21:40:50','2024-11-10 21:40:50'),(9,2,'XL','xl',NULL,NULL,0,4,'2024-11-10 21:40:50','2024-11-10 21:40:50'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2024-11-10 21:40:50','2024-11-10 21:40:50'),(11,3,'1KG','1kg',NULL,NULL,1,1,'2024-11-10 21:40:50','2024-11-10 21:40:50'),(12,3,'2KG','2kg',NULL,NULL,0,2,'2024-11-10 21:40:50','2024-11-10 21:40:50'),(13,3,'3KG','3kg',NULL,NULL,0,3,'2024-11-10 21:40:50','2024-11-10 21:40:50'),(14,3,'4KG','4kg',NULL,NULL,0,4,'2024-11-10 21:40:50','2024-11-10 21:40:50'),(15,3,'5KG','5kg',NULL,NULL,0,5,'2024-11-10 21:40:50','2024-11-10 21:40:50'),(16,4,'1 Box','1-box',NULL,NULL,1,1,'2024-11-10 21:40:50','2024-11-10 21:40:50'),(17,4,'2 Boxes','2-boxes',NULL,NULL,0,2,'2024-11-10 21:40:50','2024-11-10 21:40:50'),(18,4,'3 Boxes','3-boxes',NULL,NULL,0,3,'2024-11-10 21:40:50','2024-11-10 21:40:50'),(19,4,'4 Boxes','4-boxes',NULL,NULL,0,4,'2024-11-10 21:40:50','2024-11-10 21:40:50'),(20,4,'5 Boxes','5-boxes',NULL,NULL,0,5,'2024-11-10 21:40:50','2024-11-10 21:40:50');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Bags',0,NULL,'published',0,'fashion/product-categories/1.jpg',1,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL),(2,'Clothing',0,NULL,'published',1,'fashion/product-categories/4.jpg',1,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL),(3,'Men\'s Clothing',2,NULL,'published',0,NULL,0,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL),(4,'T-Shirts',3,NULL,'published',0,NULL,0,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL),(5,'Jeans',3,NULL,'published',1,NULL,0,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL),(6,'Suits',3,NULL,'published',2,NULL,0,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL),(7,'Women\'s Clothing',2,NULL,'published',1,'fashion/product-categories/2.jpg',1,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL),(8,'Dresses',7,NULL,'published',0,NULL,0,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL),(9,'Blouses',7,NULL,'published',1,NULL,0,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL),(10,'Pants',7,NULL,'published',2,NULL,0,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL),(11,'Footwear',0,NULL,'published',2,'fashion/product-categories/6.jpg',1,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL),(12,'Accessories',0,NULL,'published',3,NULL,0,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL),(13,'Hats',12,NULL,'published',0,NULL,0,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL),(14,'Scarves',12,NULL,'published',1,NULL,0,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL),(15,'Jewelry',12,NULL,'published',2,NULL,0,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL),(16,'Sportswear',0,NULL,'published',4,NULL,0,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL),(17,'Activewear',16,NULL,'published',0,NULL,0,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL),(18,'Running Shoes',16,NULL,'published',1,'fashion/product-categories/3.jpg',1,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL),(19,'Outerwear',0,NULL,'published',5,'fashion/product-categories/5.jpg',1,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,3),(1,9),(1,11),(1,12),(1,18),(1,19),(1,29),(1,34),(1,35),(1,38),(2,2),(2,4),(2,5),(2,8),(2,16),(2,17),(2,19),(2,21),(2,22),(2,23),(2,24),(2,28),(2,32),(2,34),(2,38),(2,39),(2,43),(3,7),(3,18),(3,23),(3,29),(3,31),(3,35),(4,9),(4,10),(4,13),(4,21),(4,25),(4,27),(4,28),(4,33),(4,36),(4,41),(4,43),(5,6),(5,12),(5,13),(5,16),(5,19),(5,25),(5,26),(5,33),(5,36),(6,1),(6,5),(6,6),(6,8),(6,22),(6,35),(6,41),(6,42),(7,1),(7,3),(7,5),(7,11),(7,14),(7,17),(7,18),(7,24),(7,27),(7,30),(7,31),(7,32),(7,34),(7,35),(7,40),(8,13),(8,22),(8,25),(8,38),(9,2),(9,10),(9,17),(9,26),(9,37),(9,42),(10,3),(10,8),(10,10),(10,12),(10,15),(10,19),(10,24),(10,40),(10,42),(11,1),(11,4),(11,5),(11,16),(11,17),(11,23),(11,27),(11,32),(11,38),(11,40),(11,43),(12,9),(12,24),(12,28),(12,30),(12,31),(12,32),(13,2),(13,4),(13,6),(13,14),(13,20),(13,26),(13,28),(13,30),(13,40),(13,43),(14,4),(14,20),(14,29),(14,39),(14,41),(15,3),(15,11),(15,20),(15,29),(15,33),(15,42),(16,1),(16,7),(16,10),(16,13),(16,14),(16,15),(16,21),(16,34),(16,36),(16,37),(17,6),(17,7),(17,16),(17,23),(17,27),(18,2),(18,7),(18,12),(18,15),(18,21),(18,22),(18,30),(18,31),(18,33),(18,36),(18,37),(18,39),(19,8),(19,9),(19,11),(19,14),(19,15),(19,18),(19,20),(19,25),(19,26),(19,37),(19,39),(19,41);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,3),(1,7),(1,8),(1,9),(1,12),(1,17),(1,18),(1,23),(2,4),(2,5),(2,13),(2,15),(2,19),(2,27),(2,28),(2,29),(2,30),(2,35),(2,36),(2,39),(2,40),(2,43),(3,1),(3,2),(3,6),(3,10),(3,14),(3,20),(3,21),(3,22),(3,24),(3,32),(3,38),(4,11),(4,16),(4,25),(4,26),(4,31),(4,33),(4,34),(4,37),(4,41),(4,42);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'Trendy Wardrobe Essentials','trendy-wardrobe-essentials',NULL,NULL,'published','2024-11-10 21:40:57','2024-11-10 21:40:57',0),(2,'Fashion Forward Finds','fashion-forward-finds',NULL,NULL,'published','2024-11-10 21:40:57','2024-11-10 21:40:57',0),(3,'Chic &amp; Stylish Collection','chic-stylish-collection',NULL,NULL,'published','2024-11-10 21:40:57','2024-11-10 21:40:57',0),(4,'Weekly Fashion Picks','weekly-fashion-picks',NULL,NULL,'published','2024-11-10 21:40:57','2024-11-10 21:40:57',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,2,0,0.00,'fixed',1),(1,3,0,0.00,'fixed',1),(1,17,0,0.00,'fixed',1),(1,25,0,0.00,'fixed',1),(1,31,0,0.00,'fixed',1),(1,40,0,0.00,'fixed',1),(2,1,0,0.00,'fixed',1),(2,8,0,0.00,'fixed',1),(2,11,0,0.00,'fixed',1),(2,18,0,0.00,'fixed',1),(2,29,0,0.00,'fixed',1),(2,35,0,0.00,'fixed',1),(2,37,0,0.00,'fixed',1),(3,17,0,0.00,'fixed',1),(3,19,0,0.00,'fixed',1),(3,21,0,0.00,'fixed',1),(3,31,0,0.00,'fixed',1),(3,36,0,0.00,'fixed',1),(3,42,0,0.00,'fixed',1),(3,43,0,0.00,'fixed',1),(4,13,0,0.00,'fixed',1),(4,22,0,0.00,'fixed',1),(4,24,0,0.00,'fixed',1),(4,28,0,0.00,'fixed',1),(4,30,0,0.00,'fixed',1),(5,7,0,0.00,'fixed',1),(5,12,0,0.00,'fixed',1),(5,13,0,0.00,'fixed',1),(5,28,0,0.00,'fixed',1),(5,38,0,0.00,'fixed',1),(5,41,0,0.00,'fixed',1),(6,13,0,0.00,'fixed',1),(6,14,0,0.00,'fixed',1),(6,22,0,0.00,'fixed',1),(6,23,0,0.00,'fixed',1),(6,30,0,0.00,'fixed',1),(6,35,0,0.00,'fixed',1),(6,38,0,0.00,'fixed',1),(7,6,0,0.00,'fixed',1),(7,14,0,0.00,'fixed',1),(7,19,0,0.00,'fixed',1),(7,23,0,0.00,'fixed',1),(7,27,0,0.00,'fixed',1),(7,31,0,0.00,'fixed',1),(7,43,0,0.00,'fixed',1),(8,2,0,0.00,'fixed',1),(8,17,0,0.00,'fixed',1),(8,19,0,0.00,'fixed',1),(8,31,0,0.00,'fixed',1),(8,34,0,0.00,'fixed',1),(8,36,0,0.00,'fixed',1),(8,43,0,0.00,'fixed',1),(9,7,0,0.00,'fixed',1),(9,13,0,0.00,'fixed',1),(9,17,0,0.00,'fixed',1),(9,21,0,0.00,'fixed',1),(9,25,0,0.00,'fixed',1),(9,27,0,0.00,'fixed',1),(9,41,0,0.00,'fixed',1),(10,7,0,0.00,'fixed',1),(10,13,0,0.00,'fixed',1),(10,17,0,0.00,'fixed',1),(10,22,0,0.00,'fixed',1),(10,25,0,0.00,'fixed',1),(10,35,0,0.00,'fixed',1),(10,36,0,0.00,'fixed',1),(11,1,0,0.00,'fixed',1),(11,8,0,0.00,'fixed',1),(11,15,0,0.00,'fixed',1),(11,22,0,0.00,'fixed',1),(11,27,0,0.00,'fixed',1),(11,30,0,0.00,'fixed',1),(11,36,0,0.00,'fixed',1),(12,2,0,0.00,'fixed',1),(12,10,0,0.00,'fixed',1),(12,29,0,0.00,'fixed',1),(12,35,0,0.00,'fixed',1),(12,36,0,0.00,'fixed',1),(12,38,0,0.00,'fixed',1),(12,41,0,0.00,'fixed',1),(13,6,0,0.00,'fixed',1),(13,17,0,0.00,'fixed',1),(13,25,0,0.00,'fixed',1),(13,31,0,0.00,'fixed',1),(13,36,0,0.00,'fixed',1),(13,42,0,0.00,'fixed',1),(14,26,0,0.00,'fixed',1),(14,28,0,0.00,'fixed',1),(14,37,0,0.00,'fixed',1),(14,38,0,0.00,'fixed',1),(14,42,0,0.00,'fixed',1),(14,43,0,0.00,'fixed',1),(15,7,0,0.00,'fixed',1),(15,10,0,0.00,'fixed',1),(15,11,0,0.00,'fixed',1),(15,26,0,0.00,'fixed',1),(15,33,0,0.00,'fixed',1),(15,41,0,0.00,'fixed',1),(16,2,0,0.00,'fixed',1),(16,14,0,0.00,'fixed',1),(16,15,0,0.00,'fixed',1),(16,26,0,0.00,'fixed',1),(16,31,0,0.00,'fixed',1),(16,35,0,0.00,'fixed',1),(16,42,0,0.00,'fixed',1),(17,8,0,0.00,'fixed',1),(17,12,0,0.00,'fixed',1),(17,14,0,0.00,'fixed',1),(17,27,0,0.00,'fixed',1),(17,34,0,0.00,'fixed',1),(17,37,0,0.00,'fixed',1),(18,2,0,0.00,'fixed',1),(18,6,0,0.00,'fixed',1),(18,11,0,0.00,'fixed',1),(18,15,0,0.00,'fixed',1),(18,29,0,0.00,'fixed',1),(18,40,0,0.00,'fixed',1),(18,41,0,0.00,'fixed',1),(19,14,0,0.00,'fixed',1),(19,16,0,0.00,'fixed',1),(19,17,0,0.00,'fixed',1),(19,20,0,0.00,'fixed',1),(19,34,0,0.00,'fixed',1),(20,5,0,0.00,'fixed',1),(20,9,0,0.00,'fixed',1),(20,15,0,0.00,'fixed',1),(20,24,0,0.00,'fixed',1),(20,29,0,0.00,'fixed',1),(20,34,0,0.00,'fixed',1),(21,11,0,0.00,'fixed',1),(21,17,0,0.00,'fixed',1),(21,23,0,0.00,'fixed',1),(21,28,0,0.00,'fixed',1),(21,29,0,0.00,'fixed',1),(21,30,0,0.00,'fixed',1),(21,40,0,0.00,'fixed',1),(22,3,0,0.00,'fixed',1),(22,15,0,0.00,'fixed',1),(22,17,0,0.00,'fixed',1),(22,20,0,0.00,'fixed',1),(22,25,0,0.00,'fixed',1),(22,36,0,0.00,'fixed',1),(22,43,0,0.00,'fixed',1),(23,14,0,0.00,'fixed',1),(23,19,0,0.00,'fixed',1),(23,24,0,0.00,'fixed',1),(23,35,0,0.00,'fixed',1),(23,36,0,0.00,'fixed',1),(23,39,0,0.00,'fixed',1),(24,9,0,0.00,'fixed',1),(24,22,0,0.00,'fixed',1),(24,26,0,0.00,'fixed',1),(24,28,0,0.00,'fixed',1),(24,33,0,0.00,'fixed',1),(24,35,0,0.00,'fixed',1),(24,42,0,0.00,'fixed',1),(25,6,0,0.00,'fixed',1),(25,8,0,0.00,'fixed',1),(25,10,0,0.00,'fixed',1),(25,21,0,0.00,'fixed',1),(25,23,0,0.00,'fixed',1),(25,33,0,0.00,'fixed',1),(25,36,0,0.00,'fixed',1),(26,10,0,0.00,'fixed',1),(26,16,0,0.00,'fixed',1),(26,17,0,0.00,'fixed',1),(26,22,0,0.00,'fixed',1),(26,23,0,0.00,'fixed',1),(26,31,0,0.00,'fixed',1),(27,8,0,0.00,'fixed',1),(27,26,0,0.00,'fixed',1),(27,31,0,0.00,'fixed',1),(27,34,0,0.00,'fixed',1),(27,38,0,0.00,'fixed',1),(27,39,0,0.00,'fixed',1),(28,1,0,0.00,'fixed',1),(28,18,0,0.00,'fixed',1),(28,20,0,0.00,'fixed',1),(28,22,0,0.00,'fixed',1),(28,32,0,0.00,'fixed',1),(28,34,0,0.00,'fixed',1),(29,4,0,0.00,'fixed',1),(29,12,0,0.00,'fixed',1),(29,13,0,0.00,'fixed',1),(29,23,0,0.00,'fixed',1),(29,31,0,0.00,'fixed',1),(29,40,0,0.00,'fixed',1),(30,7,0,0.00,'fixed',1),(30,23,0,0.00,'fixed',1),(30,25,0,0.00,'fixed',1),(30,37,0,0.00,'fixed',1),(30,38,0,0.00,'fixed',1),(30,40,0,0.00,'fixed',1),(31,6,0,0.00,'fixed',1),(31,8,0,0.00,'fixed',1),(31,23,0,0.00,'fixed',1),(31,28,0,0.00,'fixed',1),(31,30,0,0.00,'fixed',1),(31,33,0,0.00,'fixed',1),(31,42,0,0.00,'fixed',1),(32,10,0,0.00,'fixed',1),(32,16,0,0.00,'fixed',1),(32,21,0,0.00,'fixed',1),(32,26,0,0.00,'fixed',1),(32,27,0,0.00,'fixed',1),(32,31,0,0.00,'fixed',1),(32,35,0,0.00,'fixed',1),(33,24,0,0.00,'fixed',1),(33,25,0,0.00,'fixed',1),(33,28,0,0.00,'fixed',1),(33,32,0,0.00,'fixed',1),(33,38,0,0.00,'fixed',1),(33,40,0,0.00,'fixed',1),(33,41,0,0.00,'fixed',1),(34,5,0,0.00,'fixed',1),(34,9,0,0.00,'fixed',1),(34,11,0,0.00,'fixed',1),(34,17,0,0.00,'fixed',1),(34,23,0,0.00,'fixed',1),(34,24,0,0.00,'fixed',1),(34,39,0,0.00,'fixed',1),(35,3,0,0.00,'fixed',1),(35,7,0,0.00,'fixed',1),(35,11,0,0.00,'fixed',1),(35,14,0,0.00,'fixed',1),(35,15,0,0.00,'fixed',1),(35,17,0,0.00,'fixed',1),(35,36,0,0.00,'fixed',1),(36,4,0,0.00,'fixed',1),(36,13,0,0.00,'fixed',1),(36,23,0,0.00,'fixed',1),(36,34,0,0.00,'fixed',1),(36,39,0,0.00,'fixed',1),(36,42,0,0.00,'fixed',1),(37,14,0,0.00,'fixed',1),(37,15,0,0.00,'fixed',1),(37,16,0,0.00,'fixed',1),(37,26,0,0.00,'fixed',1),(37,33,0,0.00,'fixed',1),(37,35,0,0.00,'fixed',1),(37,42,0,0.00,'fixed',1),(38,2,0,0.00,'fixed',1),(38,12,0,0.00,'fixed',1),(38,17,0,0.00,'fixed',1),(38,22,0,0.00,'fixed',1),(38,28,0,0.00,'fixed',1),(38,33,0,0.00,'fixed',1),(38,41,0,0.00,'fixed',1),(39,4,0,0.00,'fixed',1),(39,5,0,0.00,'fixed',1),(39,13,0,0.00,'fixed',1),(39,24,0,0.00,'fixed',1),(39,31,0,0.00,'fixed',1),(39,36,0,0.00,'fixed',1),(39,42,0,0.00,'fixed',1),(40,5,0,0.00,'fixed',1),(40,6,0,0.00,'fixed',1),(40,14,0,0.00,'fixed',1),(40,17,0,0.00,'fixed',1),(40,18,0,0.00,'fixed',1),(40,27,0,0.00,'fixed',1),(41,4,0,0.00,'fixed',1),(41,7,0,0.00,'fixed',1),(41,14,0,0.00,'fixed',1),(41,19,0,0.00,'fixed',1),(41,24,0,0.00,'fixed',1),(41,25,0,0.00,'fixed',1),(41,27,0,0.00,'fixed',1),(42,2,0,0.00,'fixed',1),(42,6,0,0.00,'fixed',1),(42,18,0,0.00,'fixed',1),(42,28,0,0.00,'fixed',1),(42,30,0,0.00,'fixed',1),(42,33,0,0.00,'fixed',1),(42,36,0,0.00,'fixed',1),(43,6,0,0.00,'fixed',1),(43,7,0,0.00,'fixed',1),(43,9,0,0.00,'fixed',1),(43,13,0,0.00,'fixed',1),(43,22,0,0.00,'fixed',1),(43,27,0,0.00,'fixed',1),(43,37,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,4,'ecommerce/digital-product-files/product-14.jpg','{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-14\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(2,4,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(3,8,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(4,8,'ecommerce/digital-product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(5,12,'ecommerce/digital-product-files/product-details-desc-1.jpg','{\"filename\":\"product-details-desc-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-details-desc-1\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(6,12,'ecommerce/digital-product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(7,16,'ecommerce/digital-product-files/product-details-desc-3.jpg','{\"filename\":\"product-details-desc-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-details-desc-3\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(8,16,'ecommerce/digital-product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(9,20,'ecommerce/digital-product-files/product-details-desc-3.jpg','{\"filename\":\"product-details-desc-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-details-desc-3\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(10,20,'ecommerce/digital-product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(11,24,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(12,24,'ecommerce/digital-product-files/product-16.jpg','{\"filename\":\"product-16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-16\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(13,28,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(14,28,'ecommerce/digital-product-files/product-details-desc-1.jpg','{\"filename\":\"product-details-desc-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-details-desc-1\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(15,32,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(16,32,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(17,36,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(18,36,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(19,40,'ecommerce/digital-product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(20,40,'ecommerce/digital-product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(21,48,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(22,49,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(23,50,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(24,56,'ecommerce/digital-product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(25,57,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(26,58,'ecommerce/digital-product-files/product-details-desc-3.jpg','{\"filename\":\"product-details-desc-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-details-desc-3\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(27,59,'ecommerce/digital-product-files/product-details-desc-1.jpg','{\"filename\":\"product-details-desc-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-details-desc-1\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(28,67,'ecommerce/digital-product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(29,68,'ecommerce/digital-product-files/product-13.jpg','{\"filename\":\"product-13.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-13\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(30,69,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(31,73,'ecommerce/digital-product-files/product-16.jpg','{\"filename\":\"product-16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-16\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(32,74,'ecommerce/digital-product-files/product-20.jpg','{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-20\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(33,75,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(34,76,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(35,88,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(36,89,'ecommerce/digital-product-files/product-13.jpg','{\"filename\":\"product-13.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-13\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(37,90,'ecommerce/digital-product-files/product-details-desc-1.jpg','{\"filename\":\"product-details-desc-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-details-desc-1\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(38,91,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(39,92,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(40,98,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(41,99,'ecommerce/digital-product-files/product-16.jpg','{\"filename\":\"product-16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-16\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59'),(42,100,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-11-11 04:40:59\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-11-10 21:40:59','2024-11-10 21:40:59');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,15),(1,36),(2,6),(2,27),(2,42),(3,3),(3,9),(3,12),(3,18),(3,21),(3,24),(3,30),(3,33),(3,39);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#AC2200','published','2024-11-10 21:40:50','2024-11-10 21:40:50'),(2,'New','#006554','published','2024-11-10 21:40:50','2024-11-10 21:40:50'),(3,'Sale','#9A3B00','published','2024-11-10 21:40:50','2024-11-10 21:40:50');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_specification_attribute`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_specification_attribute` (
  `product_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute`
--

LOCK TABLES `ec_product_specification_attribute` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute` DISABLE KEYS */;
INSERT INTO `ec_product_specification_attribute` VALUES (1,6,'77.6 cm',0,0),(1,7,'27.03 cm',0,0),(1,8,'1920x1080',0,0),(2,6,'17.43 cm',0,0),(2,7,'45.36 cm',0,0),(2,8,'1920x1080',0,0),(3,1,'97.39 cm',0,0),(3,2,'10.32 cm',0,0),(3,3,'96.23 cm',0,0),(3,4,'49.13 cm',0,0),(3,5,'85.49 cm',0,0),(4,1,'29.64 cm',0,0),(4,2,'94.3 cm',0,0),(4,3,'12.13 cm',0,0),(4,4,'61.31 cm',0,0),(4,5,'97.01 cm',0,0),(5,6,'71.22 cm',0,0),(5,7,'99.44 cm',0,0),(5,8,'3840x2160',0,0),(6,6,'14.19 cm',0,0),(6,7,'89.52 cm',0,0),(6,8,'3840x2160',0,0),(7,6,'22.04 cm',0,0),(7,7,'36.89 cm',0,0),(7,8,'3840x2160',0,0),(8,6,'73.38 cm',0,0),(8,7,'50.68 cm',0,0),(8,8,'2560x1440',0,0),(9,1,'21.05 cm',0,0),(9,2,'16.5 cm',0,0),(9,3,'67.06 cm',0,0),(9,4,'69.8 cm',0,0),(9,5,'14.59 cm',0,0),(10,1,'40.08 cm',0,0),(10,2,'75.03 cm',0,0),(10,3,'88.22 cm',0,0),(10,4,'79.95 cm',0,0),(10,5,'24.95 cm',0,0),(11,1,'73.9 cm',0,0),(11,2,'44.24 cm',0,0),(11,3,'25.26 cm',0,0),(11,4,'2.94 cm',0,0),(11,5,'26.97 cm',0,0),(12,6,'11.16 cm',0,0),(12,7,'99.16 cm',0,0),(12,8,'2560x1440',0,0),(13,6,'35.9 cm',0,0),(13,7,'91.82 cm',0,0),(13,8,'1920x1080',0,0),(14,1,'76.23 cm',0,0),(14,2,'7.4 cm',0,0),(14,3,'46.05 cm',0,0),(14,4,'91.84 cm',0,0),(14,5,'12.71 cm',0,0),(15,1,'54.9 cm',0,0),(15,2,'2.49 cm',0,0),(15,3,'37.96 cm',0,0),(15,4,'52.7 cm',0,0),(15,5,'19.19 cm',0,0),(16,6,'21.2 cm',0,0),(16,7,'79.58 cm',0,0),(16,8,'3840x2160',0,0),(17,1,'84.95 cm',0,0),(17,2,'95.45 cm',0,0),(17,3,'18.09 cm',0,0),(17,4,'1.69 cm',0,0),(17,5,'6.83 cm',0,0),(18,6,'34.33 cm',0,0),(18,7,'5.5 cm',0,0),(18,8,'3840x2160',0,0),(19,6,'24.17 cm',0,0),(19,7,'96.57 cm',0,0),(19,8,'2560x1440',0,0),(20,6,'42.22 cm',0,0),(20,7,'84.29 cm',0,0),(20,8,'2560x1440',0,0),(21,1,'84.96 cm',0,0),(21,2,'72.79 cm',0,0),(21,3,'91.82 cm',0,0),(21,4,'29.47 cm',0,0),(21,5,'53.25 cm',0,0),(22,6,'21.19 cm',0,0),(22,7,'30.95 cm',0,0),(22,8,'2560x1440',0,0),(23,6,'20.79 cm',0,0),(23,7,'63.83 cm',0,0),(23,8,'1920x1080',0,0),(24,6,'96.93 cm',0,0),(24,7,'39.29 cm',0,0),(24,8,'3840x2160',0,0),(25,6,'25.88 cm',0,0),(25,7,'55.18 cm',0,0),(25,8,'2560x1440',0,0),(26,6,'29.86 cm',0,0),(26,7,'98.63 cm',0,0),(26,8,'2560x1440',0,0),(27,6,'72.58 cm',0,0),(27,7,'42.81 cm',0,0),(27,8,'1920x1080',0,0),(28,6,'27.91 cm',0,0),(28,7,'85.42 cm',0,0),(28,8,'2560x1440',0,0),(29,6,'2.32 cm',0,0),(29,7,'51.85 cm',0,0),(29,8,'1920x1080',0,0),(30,6,'54.72 cm',0,0),(30,7,'69.89 cm',0,0),(30,8,'1920x1080',0,0),(31,6,'84.56 cm',0,0),(31,7,'8.35 cm',0,0),(31,8,'1920x1080',0,0),(32,6,'69.04 cm',0,0),(32,7,'41.61 cm',0,0),(32,8,'2560x1440',0,0),(33,6,'29.7 cm',0,0),(33,7,'99.77 cm',0,0),(33,8,'2560x1440',0,0),(34,1,'79.3 cm',0,0),(34,2,'58.93 cm',0,0),(34,3,'76.75 cm',0,0),(34,4,'68.03 cm',0,0),(34,5,'95.25 cm',0,0),(35,6,'13.7 cm',0,0),(35,7,'32.38 cm',0,0),(35,8,'1920x1080',0,0),(36,1,'75.3 cm',0,0),(36,2,'14.56 cm',0,0),(36,3,'72.48 cm',0,0),(36,4,'37.27 cm',0,0),(36,5,'7.31 cm',0,0),(37,1,'97.58 cm',0,0),(37,2,'5.19 cm',0,0),(37,3,'20.08 cm',0,0),(37,4,'44.36 cm',0,0),(37,5,'50.92 cm',0,0),(38,1,'35.17 cm',0,0),(38,2,'49.62 cm',0,0),(38,3,'10.6 cm',0,0),(38,4,'76.01 cm',0,0),(38,5,'89.83 cm',0,0),(39,6,'37.93 cm',0,0),(39,7,'85.29 cm',0,0),(39,8,'3840x2160',0,0),(40,1,'7.78 cm',0,0),(40,2,'14.05 cm',0,0),(40,3,'54.79 cm',0,0),(40,4,'16.7 cm',0,0),(40,5,'1.15 cm',0,0),(41,1,'17.85 cm',0,0),(41,2,'67.43 cm',0,0),(41,3,'25.29 cm',0,0),(41,4,'16.46 cm',0,0),(41,5,'16.33 cm',0,0),(42,1,'71.19 cm',0,0),(42,2,'65.65 cm',0,0),(42,3,'63.91 cm',0,0),(42,4,'1.48 cm',0,0),(42,5,'41.92 cm',0,0),(43,1,'90.43 cm',0,0),(43,2,'82.57 cm',0,0),(43,3,'34.93 cm',0,0),(43,4,'9.45 cm',0,0),(43,5,'99.01 cm',0,0);
/*!40000 ALTER TABLE `ec_product_specification_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,2),(1,5),(1,6),(2,1),(2,2),(2,3),(3,1),(3,4),(3,6),(4,1),(4,2),(4,6),(5,2),(5,4),(5,5),(6,1),(6,2),(6,4),(7,1),(7,4),(7,6),(8,2),(8,4),(8,5),(9,1),(9,3),(9,6),(10,1),(10,2),(10,5),(11,2),(11,3),(11,4),(12,2),(12,4),(12,6),(13,2),(13,3),(13,5),(14,2),(14,5),(14,6),(15,1),(15,4),(15,5),(16,1),(16,3),(16,4),(17,2),(17,4),(17,6),(18,1),(18,2),(18,4),(19,1),(19,2),(19,4),(20,4),(20,5),(20,6),(21,3),(21,4),(21,5),(22,2),(22,3),(22,4),(23,1),(23,4),(23,5),(24,2),(24,4),(24,6),(25,1),(25,3),(25,6),(26,1),(26,3),(26,6),(27,3),(27,4),(27,6),(28,1),(28,3),(28,4),(29,1),(29,2),(29,6),(30,1),(30,4),(30,6),(31,1),(31,2),(31,6),(32,1),(32,3),(32,5),(33,2),(33,4),(33,6),(34,1),(34,2),(34,4),(35,1),(35,3),(35,4),(36,1),(36,3),(36,5),(37,1),(37,2),(37,4),(38,1),(38,3),(38,6),(39,1),(39,2),(39,3),(40,1),(40,2),(40,3),(41,1),(41,2),(41,6),(42,3),(42,4),(42,6),(43,1),(43,2),(43,4);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2024-11-10 21:40:53','2024-11-10 21:40:53'),(2,'Mobile',NULL,'published','2024-11-10 21:40:53','2024-11-10 21:40:53'),(3,'Iphone',NULL,'published','2024-11-10 21:40:53','2024-11-10 21:40:53'),(4,'Printer',NULL,'published','2024-11-10 21:40:53','2024-11-10 21:40:53'),(5,'Office',NULL,'published','2024-11-10 21:40:53','2024-11-10 21:40:53'),(6,'IT',NULL,'published','2024-11-10 21:40:53','2024-11-10 21:40:53');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (19,1,10),(25,1,13),(33,1,17),(45,1,23),(47,1,24),(55,1,28),(5,2,3),(13,2,7),(23,2,12),(37,2,19),(7,3,4),(9,3,5),(11,3,6),(17,3,9),(35,3,18),(39,3,20),(3,4,2),(21,4,11),(41,4,21),(49,4,25),(53,4,27),(1,5,1),(15,5,8),(27,5,14),(29,5,15),(31,5,16),(43,5,22),(51,5,26),(6,6,3),(10,6,5),(14,6,7),(20,6,10),(32,6,16),(34,6,17),(44,6,22),(46,6,23),(52,6,26),(16,7,8),(24,7,12),(30,7,15),(40,7,20),(2,8,1),(18,8,9),(38,8,19),(50,8,25),(4,9,2),(8,9,4),(28,9,14),(54,9,27),(12,10,6),(22,10,11),(26,10,13),(36,10,18),(42,10,21),(48,10,24),(56,10,28),(57,11,29),(59,11,30),(61,11,31),(75,11,38),(97,11,49),(101,11,51),(107,11,54),(123,11,62),(125,11,63),(131,11,66),(133,11,67),(63,12,32),(69,12,35),(87,12,44),(89,12,45),(103,12,52),(109,12,55),(117,12,59),(73,13,37),(65,14,33),(77,14,39),(81,14,41),(83,14,42),(95,14,48),(99,14,50),(113,14,57),(115,14,58),(121,14,61),(127,14,64),(129,14,65),(67,15,34),(71,15,36),(79,15,40),(85,15,43),(91,15,46),(93,15,47),(105,15,53),(111,15,56),(119,15,60),(66,16,33),(80,16,40),(100,16,50),(102,16,51),(114,16,57),(116,16,58),(130,16,65),(72,17,36),(84,17,42),(86,17,43),(88,17,44),(98,17,49),(104,17,52),(110,17,55),(124,17,62),(58,18,29),(60,18,30),(64,18,32),(74,18,37),(78,18,39),(90,18,45),(92,18,46),(118,18,59),(82,19,41),(94,19,47),(112,19,56),(122,19,61),(132,19,66),(134,19,67),(62,20,31),(68,20,34),(70,20,35),(76,20,38),(96,20,48),(106,20,53),(108,20,54),(120,20,60),(126,20,63),(128,20,64);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,44,1,1),(2,45,1,0),(3,46,1,0),(4,47,2,1),(5,48,4,1),(6,49,4,0),(7,50,4,0),(8,51,7,1),(9,52,7,0),(10,53,7,0),(11,54,11,1),(12,55,11,0),(13,56,12,1),(14,57,12,0),(15,58,12,0),(16,59,12,0),(17,60,13,1),(18,61,13,0),(19,62,13,0),(20,63,13,0),(21,64,15,1),(22,65,15,0),(23,66,15,0),(24,67,16,1),(25,68,16,0),(26,69,16,0),(27,70,18,1),(28,71,18,0),(29,72,21,1),(30,73,24,1),(31,74,24,0),(32,75,24,0),(33,76,24,0),(34,77,25,1),(35,78,25,0),(36,79,26,1),(37,80,26,0),(38,81,27,1),(39,82,27,0),(40,83,27,0),(41,84,27,0),(42,85,29,1),(43,86,29,0),(44,87,29,0),(45,88,32,1),(46,89,32,0),(47,90,32,0),(48,91,32,0),(49,92,32,0),(50,93,33,1),(51,94,33,0),(52,95,35,1),(53,96,35,0),(54,97,35,0),(55,98,36,1),(56,99,36,0),(57,100,36,0),(58,101,37,1),(59,102,37,0),(60,103,37,0),(61,104,39,1),(62,105,39,0),(63,106,39,0),(64,107,42,1),(65,108,42,0),(66,109,43,1),(67,110,43,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2024-11-11',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,4,0),(2,4,0),(1,7,0),(2,7,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,15,0),(2,15,0),(1,16,0),(2,16,0),(1,18,0),(2,18,0),(3,21,0),(4,21,0),(3,24,0),(4,24,0),(3,25,0),(4,25,0),(3,26,0),(4,26,0),(3,27,0),(4,27,0),(3,29,0),(4,29,0),(3,32,0),(4,32,0),(3,33,0),(4,33,0),(3,35,0),(4,35,0),(3,36,0),(4,36,0),(3,37,0),(4,37,0),(3,39,0),(4,39,0),(3,42,0),(4,42,0),(3,43,0),(4,43,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `video_media` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `approved_by` bigint unsigned DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_order_quantity` int unsigned DEFAULT '0',
  `maximum_order_quantity` int unsigned DEFAULT '0',
  `notify_attachment_updated` tinyint(1) NOT NULL DEFAULT '0',
  `specification_table_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Vintage Denim Jacket','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-2.jpg\"]','[]','BK-158-A1',0,15,0,1,0,1,0,0,1186,NULL,NULL,NULL,10.00,10.00,15.00,546.00,NULL,74321,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(2,'Floral Maxi Dress','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-14.jpg\"]','[]','G0-153-A1',0,15,0,1,1,3,0,0,468,NULL,NULL,NULL,11.00,15.00,13.00,889.00,NULL,91299,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(3,'Leather Ankle Boots','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-5.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','A1-114',0,14,0,1,1,1,0,0,2438,2390,NULL,NULL,13.00,18.00,19.00,690.00,NULL,163846,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(4,'Knit Turtleneck Sweater (Digital)','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-20.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','JW-116-A1',0,20,0,1,0,4,0,0,1362,1075.98,NULL,NULL,20.00,16.00,11.00,889.00,NULL,196075,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,1),(5,'Classic Aviator Sunglasses','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','L3-199',0,15,0,1,1,4,0,0,1715,1712,NULL,NULL,14.00,10.00,19.00,647.00,NULL,136854,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(6,'Tailored Wool Blazer','Achieve a polished look with this tailored wool blazer, designed for a flattering fit and versatile enough for both work and casual outings.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-14.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','R3-102',0,17,0,1,0,3,0,0,1857,1821,NULL,NULL,13.00,14.00,12.00,792.00,NULL,69310,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(7,'Bohemian Fringe Handbag','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','VH-106-A1',0,10,0,1,1,3,0,0,1349,NULL,NULL,NULL,14.00,15.00,10.00,843.00,NULL,81301,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(8,'Silk Scarf with Geometric Print (Digital)','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-12.jpg\"]','[]','BY-121',0,12,0,1,0,2,0,0,1480,1387,NULL,NULL,16.00,14.00,12.00,734.00,NULL,194249,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,2),(9,'High-Waisted Wide Leg Trousers','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-11.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','V5-158',0,12,0,1,1,3,0,0,1222,978,NULL,NULL,18.00,18.00,20.00,619.00,NULL,120346,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(10,'Embroidered Boho Blouse','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-10.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','60-114',0,13,0,1,1,5,0,0,2499,848,NULL,NULL,16.00,15.00,17.00,514.00,NULL,197625,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(11,'Statement Chunky Necklace','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','J3-122-A1',0,10,0,1,1,5,0,0,1915,NULL,NULL,NULL,17.00,18.00,10.00,543.00,NULL,104412,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(12,'Chic Fedora Hat (Digital)','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','HU-126-A1',0,16,0,1,0,4,0,0,1506,1295.16,NULL,NULL,15.00,14.00,16.00,810.00,NULL,191892,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,2),(13,'Strappy Block Heel Sandals','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','WQ-103-A1',0,14,0,1,1,3,0,0,2175,NULL,NULL,NULL,19.00,14.00,19.00,681.00,NULL,120541,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(14,'Velvet Evening Gown','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-18.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','NW-177',0,10,0,1,1,2,0,0,1438,870,NULL,NULL,15.00,16.00,17.00,757.00,NULL,7806,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(15,'Quilted Crossbody Bag','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-16.jpg\"]','[]','FP-136-A1',0,16,0,1,0,3,0,0,1742,NULL,NULL,NULL,18.00,15.00,13.00,890.00,NULL,94695,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(16,'Distressed Skinny Jeans (Digital)','Achieve a polished look with this tailored wool blazer, designed for a flattering fit and versatile enough for both work and casual outings.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-19.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','LL-176-A1',0,11,0,1,1,4,0,0,2254,1735.58,NULL,NULL,14.00,12.00,13.00,886.00,NULL,99093,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,2),(17,'Lace-Up Combat Boots','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-11.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','5R-160',0,11,0,1,1,2,0,0,1361,501,NULL,NULL,12.00,11.00,12.00,836.00,NULL,59905,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(18,'Cotton Striped T-Shirt Dress','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-5.jpg\"]','[]','DT-120-A1',0,14,0,1,0,4,0,0,2001,NULL,NULL,NULL,19.00,18.00,19.00,759.00,NULL,145182,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(19,'Printed Palazzo Pants','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','VW-154',0,19,0,1,1,3,0,0,1614,147,NULL,NULL,11.00,20.00,15.00,678.00,NULL,48851,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(20,'Structured Satchel Bag (Digital)','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-10.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','BT-169',0,12,0,1,1,2,0,0,2044,1751,NULL,NULL,15.00,12.00,20.00,639.00,NULL,179947,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,2),(21,'Off-Shoulder Ruffle Top','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-11.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','EF-178-A1',0,17,0,1,0,2,0,0,1346,NULL,NULL,NULL,18.00,20.00,16.00,607.00,NULL,7565,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(22,'Suede Pointed-Toe Pumps','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-11.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','MT-151',0,19,0,1,0,3,0,0,1560,1361,NULL,NULL,10.00,19.00,15.00,703.00,NULL,114608,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(23,'Cropped Cable Knit Sweater','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\"]','[]','ZR-192',0,14,0,1,0,4,0,0,1118,517,NULL,NULL,12.00,11.00,12.00,527.00,NULL,32293,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(24,'Athleisure Jogger Pants (Digital)','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-20.jpg\"]','[]','NN-120-A1',0,17,0,1,1,5,0,0,1551,1240.8,NULL,NULL,19.00,14.00,19.00,553.00,NULL,84744,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,2),(25,'Leopard Print Midi Skirt','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\"]','[]','VB-100-A1',0,19,0,1,1,3,0,0,773,NULL,NULL,NULL,15.00,12.00,16.00,762.00,NULL,149213,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(26,'Retro Cat-Eye Sunglasses','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-15.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','PW-153-A1',0,13,0,1,0,1,0,0,365,NULL,NULL,NULL,20.00,14.00,20.00,866.00,NULL,123056,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(27,'Faux Fur Trimmed Coat','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-14.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','9N-162-A1',0,16,0,1,0,3,0,0,1230,NULL,NULL,NULL,19.00,13.00,13.00,580.00,NULL,51265,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(28,'Boho Fringed Kimono (Digital)','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','WH-161',0,15,0,1,1,2,0,0,1619,482,NULL,NULL,15.00,11.00,12.00,508.00,NULL,116638,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,2),(29,'Ruffled Wrap Dress','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-19.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','GI-137-A1',0,18,0,1,0,1,0,0,1755,NULL,NULL,NULL,18.00,18.00,20.00,692.00,NULL,102811,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(30,'Beaded Evening Clutch','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-14.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','TV-128',0,13,0,1,0,3,0,0,817,231,NULL,NULL,16.00,12.00,13.00,806.00,NULL,108294,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(31,'Wide Brim Floppy Hat','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-3.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','WZ-195',0,10,0,1,1,5,0,0,2361,2149,NULL,NULL,14.00,19.00,13.00,511.00,NULL,45545,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(32,'Denim Overall Jumpsuit (Digital)','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','FG-195-A1',0,14,0,1,1,5,0,0,1504,1308.48,NULL,NULL,19.00,11.00,20.00,875.00,NULL,85967,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,2),(33,'Embellished Ballet Flats','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-5.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','PM-138-A1',0,17,0,1,1,3,0,0,1799,NULL,NULL,NULL,11.00,13.00,17.00,601.00,NULL,147874,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(34,'Pleated Midi Skirt','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-2.jpg\"]','[]','4H-145',0,19,0,1,1,3,0,0,2048,161,NULL,NULL,15.00,15.00,14.00,791.00,NULL,179341,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(35,'Velour Tracksuit Set','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-17.jpg\"]','[]','S7-124-A1',0,14,0,1,0,5,0,0,1273,NULL,NULL,NULL,13.00,19.00,11.00,551.00,NULL,130231,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(36,'Geometric Patterned Cardigan (Digital)','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-11.jpg\"]','[]','VX-130-A1',0,19,0,1,0,1,0,0,754,542.88,NULL,NULL,10.00,15.00,16.00,596.00,NULL,136749,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,1),(37,'Buckle Detail Ankle Booties','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-13.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','LF-113-A1',0,15,0,1,1,3,0,0,1988,NULL,NULL,NULL,18.00,12.00,15.00,534.00,NULL,110327,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(38,'Embroidered Bomber Jacket','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\"]','[]','9C-163',0,13,0,1,1,5,0,0,503,212,NULL,NULL,17.00,11.00,14.00,620.00,NULL,129104,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(39,'Cowl Neck Knit Poncho','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-19.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','8U-139-A1',0,16,0,1,0,5,0,0,985,NULL,NULL,NULL,10.00,18.00,17.00,667.00,NULL,87917,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(40,'Chunky Knit Infinity Scarf (Digital)','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]','[]','5C-132',0,18,0,1,1,1,0,0,1989,519,NULL,NULL,18.00,15.00,13.00,518.00,NULL,169663,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,1),(41,'Retro High-Top Sneakers','Make a bold statement with this chunky necklace, designed to add a touch of glamour to any outfit. The perfect accessory for a night out.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-10.jpg\"]','[]','NS-183',0,13,0,1,0,4,0,0,461,52,NULL,NULL,10.00,10.00,13.00,597.00,NULL,111674,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(42,'Faux Leather Leggings','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-17.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','BY-107-A1',0,16,0,1,1,4,0,0,1502,NULL,NULL,NULL,14.00,10.00,17.00,749.00,NULL,192304,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(43,'Metallic Pleated Maxi Skirt','Achieve a polished look with this tailored wool blazer, designed for a flattering fit and versatile enough for both work and casual outings.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','W0-143-A1',0,19,0,1,1,5,0,0,1951,NULL,NULL,NULL,14.00,18.00,17.00,692.00,NULL,108213,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(44,'Vintage Denim Jacket',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-2.jpg\"]',NULL,'BK-158-A1',0,15,0,1,0,1,1,0,1186,NULL,NULL,NULL,10.00,10.00,15.00,546.00,NULL,0,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(45,'Vintage Denim Jacket',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-3.jpg\"]',NULL,'BK-158-A1-A2',0,15,0,1,0,1,1,0,1186,NULL,NULL,NULL,10.00,10.00,15.00,546.00,NULL,0,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(46,'Vintage Denim Jacket',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]',NULL,'BK-158-A1-A3',0,15,0,1,0,1,1,0,1186,NULL,NULL,NULL,10.00,10.00,15.00,546.00,NULL,0,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(47,'Floral Maxi Dress',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-3.jpg\"]',NULL,'G0-153-A1',0,15,0,1,0,3,1,0,468,NULL,NULL,NULL,11.00,15.00,13.00,889.00,NULL,0,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(48,'Knit Turtleneck Sweater (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-10.jpg\"]',NULL,'JW-116-A1',0,20,0,1,0,4,1,0,1362,1075.98,NULL,NULL,20.00,16.00,11.00,889.00,NULL,0,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(49,'Knit Turtleneck Sweater (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]',NULL,'JW-116-A1-A2',0,20,0,1,0,4,1,0,1362,1062.36,NULL,NULL,20.00,16.00,11.00,889.00,NULL,0,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(50,'Knit Turtleneck Sweater (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]',NULL,'JW-116-A1-A3',0,20,0,1,0,4,1,0,1362,980.64,NULL,NULL,20.00,16.00,11.00,889.00,NULL,0,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(51,'Bohemian Fringe Handbag',NULL,NULL,'published','[\"main\\/products\\/product-16.jpg\"]',NULL,'VH-106-A1',0,10,0,1,0,3,1,0,1349,NULL,NULL,NULL,14.00,15.00,10.00,843.00,NULL,0,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(52,'Bohemian Fringe Handbag',NULL,NULL,'published','[\"main\\/products\\/product-17.jpg\"]',NULL,'VH-106-A1-A2',0,10,0,1,0,3,1,0,1349,NULL,NULL,NULL,14.00,15.00,10.00,843.00,NULL,0,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(53,'Bohemian Fringe Handbag',NULL,NULL,'published','[\"main\\/products\\/product-6.jpg\"]',NULL,'VH-106-A1-A3',0,10,0,1,0,3,1,0,1349,NULL,NULL,NULL,14.00,15.00,10.00,843.00,NULL,0,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(54,'Statement Chunky Necklace',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]',NULL,'J3-122-A1',0,10,0,1,0,5,1,0,1915,NULL,NULL,NULL,17.00,18.00,10.00,543.00,NULL,0,'2024-11-10 21:40:58','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(55,'Statement Chunky Necklace',NULL,NULL,'published','[\"main\\/products\\/product-8.jpg\"]',NULL,'J3-122-A1-A2',0,10,0,1,0,5,1,0,1915,NULL,NULL,NULL,17.00,18.00,10.00,543.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(56,'Chic Fedora Hat (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-8.jpg\"]',NULL,'HU-126-A1',0,16,0,1,0,4,1,0,1506,1295.16,NULL,NULL,15.00,14.00,16.00,810.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(57,'Chic Fedora Hat (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-19.jpg\"]',NULL,'HU-126-A1-A2',0,16,0,1,0,4,1,0,1506,1159.62,NULL,NULL,15.00,14.00,16.00,810.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(58,'Chic Fedora Hat (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-3.jpg\"]',NULL,'HU-126-A1-A3',0,16,0,1,0,4,1,0,1506,1144.56,NULL,NULL,15.00,14.00,16.00,810.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(59,'Chic Fedora Hat (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-1.jpg\"]',NULL,'HU-126-A1-A4',0,16,0,1,0,4,1,0,1506,1310.22,NULL,NULL,15.00,14.00,16.00,810.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(60,'Strappy Block Heel Sandals',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-1.jpg\"]',NULL,'WQ-103-A1',0,14,0,1,0,3,1,0,2175,NULL,NULL,NULL,19.00,14.00,19.00,681.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(61,'Strappy Block Heel Sandals',NULL,NULL,'published','[\"main\\/products\\/product-15.jpg\"]',NULL,'WQ-103-A1-A2',0,14,0,1,0,3,1,0,2175,NULL,NULL,NULL,19.00,14.00,19.00,681.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(62,'Strappy Block Heel Sandals',NULL,NULL,'published','[\"main\\/products\\/product-13.jpg\"]',NULL,'WQ-103-A1-A3',0,14,0,1,0,3,1,0,2175,NULL,NULL,NULL,19.00,14.00,19.00,681.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(63,'Strappy Block Heel Sandals',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-3.jpg\"]',NULL,'WQ-103-A1-A4',0,14,0,1,0,3,1,0,2175,NULL,NULL,NULL,19.00,14.00,19.00,681.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(64,'Quilted Crossbody Bag',NULL,NULL,'published','[\"main\\/products\\/product-4.jpg\"]',NULL,'FP-136-A1',0,16,0,1,0,3,1,0,1742,NULL,NULL,NULL,18.00,15.00,13.00,890.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(65,'Quilted Crossbody Bag',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-3.jpg\"]',NULL,'FP-136-A1-A2',0,16,0,1,0,3,1,0,1742,NULL,NULL,NULL,18.00,15.00,13.00,890.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(66,'Quilted Crossbody Bag',NULL,NULL,'published','[\"main\\/products\\/product-18.jpg\"]',NULL,'FP-136-A1-A3',0,16,0,1,0,3,1,0,1742,NULL,NULL,NULL,18.00,15.00,13.00,890.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(67,'Distressed Skinny Jeans (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-9.jpg\"]',NULL,'LL-176-A1',0,11,0,1,0,4,1,0,2254,1735.58,NULL,NULL,14.00,12.00,13.00,886.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(68,'Distressed Skinny Jeans (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-13.jpg\"]',NULL,'LL-176-A1-A2',0,11,0,1,0,4,1,0,2254,1713.04,NULL,NULL,14.00,12.00,13.00,886.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(69,'Distressed Skinny Jeans (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-19.jpg\"]',NULL,'LL-176-A1-A3',0,11,0,1,0,4,1,0,2254,1577.8,NULL,NULL,14.00,12.00,13.00,886.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(70,'Cotton Striped T-Shirt Dress',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-1.jpg\"]',NULL,'DT-120-A1',0,14,0,1,0,4,1,0,2001,NULL,NULL,NULL,19.00,18.00,19.00,759.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(71,'Cotton Striped T-Shirt Dress',NULL,NULL,'published','[\"main\\/products\\/product-5.jpg\"]',NULL,'DT-120-A1-A2',0,14,0,1,0,4,1,0,2001,NULL,NULL,NULL,19.00,18.00,19.00,759.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(72,'Off-Shoulder Ruffle Top',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]',NULL,'EF-178-A1',0,17,0,1,0,2,1,0,1346,NULL,NULL,NULL,18.00,20.00,16.00,607.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(73,'Athleisure Jogger Pants (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-16.jpg\"]',NULL,'NN-120-A1',0,17,0,1,0,5,1,0,1551,1240.8,NULL,NULL,19.00,14.00,19.00,553.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(74,'Athleisure Jogger Pants (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-20.jpg\"]',NULL,'NN-120-A1-A2',0,17,0,1,0,5,1,0,1551,1302.84,NULL,NULL,19.00,14.00,19.00,553.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(75,'Athleisure Jogger Pants (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-19.jpg\"]',NULL,'NN-120-A1-A3',0,17,0,1,0,5,1,0,1551,1349.37,NULL,NULL,19.00,14.00,19.00,553.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(76,'Athleisure Jogger Pants (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-19.jpg\"]',NULL,'NN-120-A1-A4',0,17,0,1,0,5,1,0,1551,1116.72,NULL,NULL,19.00,14.00,19.00,553.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(77,'Leopard Print Midi Skirt',NULL,NULL,'published','[\"main\\/products\\/product-13.jpg\"]',NULL,'VB-100-A1',0,19,0,1,0,3,1,0,773,NULL,NULL,NULL,15.00,12.00,16.00,762.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(78,'Leopard Print Midi Skirt',NULL,NULL,'published','[\"main\\/products\\/product-15.jpg\"]',NULL,'VB-100-A1-A2',0,19,0,1,0,3,1,0,773,NULL,NULL,NULL,15.00,12.00,16.00,762.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(79,'Retro Cat-Eye Sunglasses',NULL,NULL,'published','[\"main\\/products\\/product-7.jpg\"]',NULL,'PW-153-A1',0,13,0,1,0,1,1,0,365,NULL,NULL,NULL,20.00,14.00,20.00,866.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(80,'Retro Cat-Eye Sunglasses',NULL,NULL,'published','[\"main\\/products\\/product-6.jpg\"]',NULL,'PW-153-A1-A2',0,13,0,1,0,1,1,0,365,NULL,NULL,NULL,20.00,14.00,20.00,866.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(81,'Faux Fur Trimmed Coat',NULL,NULL,'published','[\"main\\/products\\/product-12.jpg\"]',NULL,'9N-162-A1',0,16,0,1,0,3,1,0,1230,NULL,NULL,NULL,19.00,13.00,13.00,580.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(82,'Faux Fur Trimmed Coat',NULL,NULL,'published','[\"main\\/products\\/product-13.jpg\"]',NULL,'9N-162-A1-A2',0,16,0,1,0,3,1,0,1230,NULL,NULL,NULL,19.00,13.00,13.00,580.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(83,'Faux Fur Trimmed Coat',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-2.jpg\"]',NULL,'9N-162-A1-A3',0,16,0,1,0,3,1,0,1230,NULL,NULL,NULL,19.00,13.00,13.00,580.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(84,'Faux Fur Trimmed Coat',NULL,NULL,'published','[\"main\\/products\\/product-10.jpg\"]',NULL,'9N-162-A1-A4',0,16,0,1,0,3,1,0,1230,NULL,NULL,NULL,19.00,13.00,13.00,580.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(85,'Ruffled Wrap Dress',NULL,NULL,'published','[\"main\\/products\\/product-17.jpg\"]',NULL,'GI-137-A1',0,18,0,1,0,1,1,0,1755,NULL,NULL,NULL,18.00,18.00,20.00,692.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(86,'Ruffled Wrap Dress',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-1.jpg\"]',NULL,'GI-137-A1-A2',0,18,0,1,0,1,1,0,1755,NULL,NULL,NULL,18.00,18.00,20.00,692.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(87,'Ruffled Wrap Dress',NULL,NULL,'published','[\"main\\/products\\/product-5.jpg\"]',NULL,'GI-137-A1-A3',0,18,0,1,0,1,1,0,1755,NULL,NULL,NULL,18.00,18.00,20.00,692.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(88,'Denim Overall Jumpsuit (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]',NULL,'FG-195-A1',0,14,0,1,0,5,1,0,1504,1308.48,NULL,NULL,19.00,11.00,20.00,875.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(89,'Denim Overall Jumpsuit (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-13.jpg\"]',NULL,'FG-195-A1-A2',0,14,0,1,0,5,1,0,1504,1338.56,NULL,NULL,19.00,11.00,20.00,875.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(90,'Denim Overall Jumpsuit (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-1.jpg\"]',NULL,'FG-195-A1-A3',0,14,0,1,0,5,1,0,1504,1128,NULL,NULL,19.00,11.00,20.00,875.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(91,'Denim Overall Jumpsuit (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-19.jpg\"]',NULL,'FG-195-A1-A4',0,14,0,1,0,5,1,0,1504,1308.48,NULL,NULL,19.00,11.00,20.00,875.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(92,'Denim Overall Jumpsuit (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-19.jpg\"]',NULL,'FG-195-A1-A5',0,14,0,1,0,5,1,0,1504,1128,NULL,NULL,19.00,11.00,20.00,875.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(93,'Embellished Ballet Flats',NULL,NULL,'published','[\"main\\/products\\/product-12.jpg\"]',NULL,'PM-138-A1',0,17,0,1,0,3,1,0,1799,NULL,NULL,NULL,11.00,13.00,17.00,601.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(94,'Embellished Ballet Flats',NULL,NULL,'published','[\"main\\/products\\/product-5.jpg\"]',NULL,'PM-138-A1-A2',0,17,0,1,0,3,1,0,1799,NULL,NULL,NULL,11.00,13.00,17.00,601.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(95,'Velour Tracksuit Set',NULL,NULL,'published','[\"main\\/products\\/product-4.jpg\"]',NULL,'S7-124-A1',0,14,0,1,0,5,1,0,1273,NULL,NULL,NULL,13.00,19.00,11.00,551.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(96,'Velour Tracksuit Set',NULL,NULL,'published','[\"main\\/products\\/product-9.jpg\"]',NULL,'S7-124-A1-A2',0,14,0,1,0,5,1,0,1273,NULL,NULL,NULL,13.00,19.00,11.00,551.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(97,'Velour Tracksuit Set',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-3.jpg\"]',NULL,'S7-124-A1-A3',0,14,0,1,0,5,1,0,1273,NULL,NULL,NULL,13.00,19.00,11.00,551.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(98,'Geometric Patterned Cardigan (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-17.jpg\"]',NULL,'VX-130-A1',0,19,0,1,0,1,1,0,754,542.88,NULL,NULL,10.00,15.00,16.00,596.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(99,'Geometric Patterned Cardigan (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-16.jpg\"]',NULL,'VX-130-A1-A2',0,19,0,1,0,1,1,0,754,565.5,NULL,NULL,10.00,15.00,16.00,596.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(100,'Geometric Patterned Cardigan (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-7.jpg\"]',NULL,'VX-130-A1-A3',0,19,0,1,0,1,1,0,754,595.66,NULL,NULL,10.00,15.00,16.00,596.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(101,'Buckle Detail Ankle Booties',NULL,NULL,'published','[\"main\\/products\\/product-17.jpg\"]',NULL,'LF-113-A1',0,15,0,1,0,3,1,0,1988,NULL,NULL,NULL,18.00,12.00,15.00,534.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(102,'Buckle Detail Ankle Booties',NULL,NULL,'published','[\"main\\/products\\/product-6.jpg\"]',NULL,'LF-113-A1-A2',0,15,0,1,0,3,1,0,1988,NULL,NULL,NULL,18.00,12.00,15.00,534.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(103,'Buckle Detail Ankle Booties',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]',NULL,'LF-113-A1-A3',0,15,0,1,0,3,1,0,1988,NULL,NULL,NULL,18.00,12.00,15.00,534.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(104,'Cowl Neck Knit Poncho',NULL,NULL,'published','[\"main\\/products\\/product-12.jpg\"]',NULL,'8U-139-A1',0,16,0,1,0,5,1,0,985,NULL,NULL,NULL,10.00,18.00,17.00,667.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(105,'Cowl Neck Knit Poncho',NULL,NULL,'published','[\"main\\/products\\/product-19.jpg\"]',NULL,'8U-139-A1-A2',0,16,0,1,0,5,1,0,985,NULL,NULL,NULL,10.00,18.00,17.00,667.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(106,'Cowl Neck Knit Poncho',NULL,NULL,'published','[\"main\\/products\\/product-4.jpg\"]',NULL,'8U-139-A1-A3',0,16,0,1,0,5,1,0,985,NULL,NULL,NULL,10.00,18.00,17.00,667.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(107,'Faux Leather Leggings',NULL,NULL,'published','[\"main\\/products\\/product-5.jpg\"]',NULL,'BY-107-A1',0,16,0,1,0,4,1,0,1502,NULL,NULL,NULL,14.00,10.00,17.00,749.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(108,'Faux Leather Leggings',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-2.jpg\"]',NULL,'BY-107-A1-A2',0,16,0,1,0,4,1,0,1502,NULL,NULL,NULL,14.00,10.00,17.00,749.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(109,'Metallic Pleated Maxi Skirt',NULL,NULL,'published','[\"main\\/products\\/product-4.jpg\"]',NULL,'W0-143-A1',0,19,0,1,0,5,1,0,1951,NULL,NULL,NULL,14.00,18.00,17.00,692.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(110,'Metallic Pleated Maxi Skirt',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]',NULL,'W0-143-A1-A2',0,19,0,1,0,5,1,0,1951,NULL,NULL,NULL,14.00,18.00,17.00,692.00,NULL,0,'2024-11-10 21:40:59','2024-11-10 21:40:59','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,3,NULL,NULL,11,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\"]'),(2,8,NULL,NULL,9,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(3,8,NULL,NULL,2,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\"]'),(4,7,NULL,NULL,1,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(5,1,NULL,NULL,34,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\"]'),(6,4,NULL,NULL,35,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(7,3,NULL,NULL,25,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(8,2,NULL,NULL,17,2.00,'Good app, good backup service and support. Good documentation.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\"]'),(9,3,NULL,NULL,4,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(10,6,NULL,NULL,35,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\"]'),(11,5,NULL,NULL,20,3.00,'Clean & perfect source code','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(12,5,NULL,NULL,37,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\"]'),(13,5,NULL,NULL,10,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(14,8,NULL,NULL,38,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]'),(15,9,NULL,NULL,43,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(16,1,NULL,NULL,36,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\"]'),(17,4,NULL,NULL,5,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\"]'),(18,3,NULL,NULL,21,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-8.png\"]'),(19,1,NULL,NULL,37,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\"]'),(20,6,NULL,NULL,7,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\"]'),(21,5,NULL,NULL,21,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\"]'),(22,4,NULL,NULL,4,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(23,2,NULL,NULL,13,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\"]'),(24,8,NULL,NULL,19,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(26,5,NULL,NULL,6,5.00,'Best ecommerce CMS online store!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\"]'),(28,9,NULL,NULL,37,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(29,9,NULL,NULL,2,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(30,1,NULL,NULL,40,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(32,5,NULL,NULL,15,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\"]'),(33,9,NULL,NULL,7,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(34,10,NULL,NULL,5,5.00,'Clean & perfect source code','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(35,6,NULL,NULL,26,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\"]'),(36,2,NULL,NULL,2,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(37,7,NULL,NULL,8,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(38,10,NULL,NULL,7,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(39,8,NULL,NULL,11,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-7.png\"]'),(40,8,NULL,NULL,34,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(41,3,NULL,NULL,3,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(42,7,NULL,NULL,24,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-8.png\"]'),(43,10,NULL,NULL,28,2.00,'Good app, good backup service and support. Good documentation.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\"]'),(44,7,NULL,NULL,23,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(46,6,NULL,NULL,2,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\"]'),(47,3,NULL,NULL,37,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(48,1,NULL,NULL,18,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(49,1,NULL,NULL,35,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\"]'),(50,4,NULL,NULL,9,5.00,'Good app, good backup service and support. Good documentation.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\"]'),(51,9,NULL,NULL,6,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(52,9,NULL,NULL,5,4.00,'Good app, good backup service and support. Good documentation.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(53,4,NULL,NULL,14,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(54,6,NULL,NULL,15,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(55,9,NULL,NULL,25,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\"]'),(56,6,NULL,NULL,1,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(57,5,NULL,NULL,11,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(58,5,NULL,NULL,28,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(59,5,NULL,NULL,29,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(62,3,NULL,NULL,29,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\"]'),(63,2,NULL,NULL,37,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-7.png\"]'),(64,8,NULL,NULL,22,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\"]'),(65,5,NULL,NULL,7,4.00,'Good app, good backup service and support. Good documentation.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-8.png\"]'),(66,10,NULL,NULL,31,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(67,1,NULL,NULL,8,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\"]'),(68,10,NULL,NULL,43,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(69,10,NULL,NULL,38,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(70,2,NULL,NULL,14,5.00,'Best ecommerce CMS online store!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(71,1,NULL,NULL,16,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(72,8,NULL,NULL,12,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(73,1,NULL,NULL,20,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(75,6,NULL,NULL,3,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(76,8,NULL,NULL,8,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\"]'),(77,4,NULL,NULL,6,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(78,9,NULL,NULL,36,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(79,8,NULL,NULL,25,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-7.png\"]'),(80,5,NULL,NULL,12,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(81,5,NULL,NULL,40,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(82,5,NULL,NULL,3,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(83,6,NULL,NULL,17,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(84,5,NULL,NULL,35,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\"]'),(85,9,NULL,NULL,18,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(86,4,NULL,NULL,11,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(87,10,NULL,NULL,3,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(88,8,NULL,NULL,21,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(89,2,NULL,NULL,6,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(90,4,NULL,NULL,34,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(91,6,NULL,NULL,29,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(93,8,NULL,NULL,30,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(94,4,NULL,NULL,1,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(95,5,NULL,NULL,23,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(96,6,NULL,NULL,4,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\"]'),(97,7,NULL,NULL,27,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(98,2,NULL,NULL,40,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(99,3,NULL,NULL,17,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\"]'),(102,6,NULL,NULL,34,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-7.png\"]'),(103,2,NULL,NULL,5,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(104,4,NULL,NULL,21,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\"]'),(105,5,NULL,NULL,13,5.00,'Clean & perfect source code','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(106,7,NULL,NULL,40,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(107,5,NULL,NULL,42,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(108,6,NULL,NULL,28,3.00,'Best ecommerce CMS online store!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(109,6,NULL,NULL,33,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\"]'),(110,4,NULL,NULL,43,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(112,6,NULL,NULL,41,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\"]'),(113,8,NULL,NULL,7,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(114,1,NULL,NULL,19,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(115,4,NULL,NULL,29,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(116,7,NULL,NULL,28,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(117,4,NULL,NULL,8,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(118,7,NULL,NULL,32,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(119,1,NULL,NULL,41,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(120,3,NULL,NULL,39,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(122,10,NULL,NULL,13,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-8.png\"]'),(125,9,NULL,NULL,11,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(126,7,NULL,NULL,13,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(127,9,NULL,NULL,35,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(129,10,NULL,NULL,8,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(130,4,NULL,NULL,36,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(131,9,NULL,NULL,42,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\"]'),(132,5,NULL,NULL,19,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(135,8,NULL,NULL,5,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\"]'),(136,5,NULL,NULL,17,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(137,10,NULL,NULL,30,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\"]'),(140,9,NULL,NULL,29,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(141,4,NULL,NULL,26,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(142,7,NULL,NULL,19,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(143,7,NULL,NULL,41,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]'),(144,3,NULL,NULL,18,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(145,3,NULL,NULL,34,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\"]'),(146,9,NULL,NULL,34,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\"]'),(147,5,NULL,NULL,22,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(148,2,NULL,NULL,19,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(150,1,NULL,NULL,43,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\"]'),(153,3,NULL,NULL,8,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\"]'),(154,10,NULL,NULL,24,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(155,10,NULL,NULL,42,2.00,'Good app, good backup service and support. Good documentation.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\"]'),(157,2,NULL,NULL,36,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\"]'),(158,8,NULL,NULL,20,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(159,4,NULL,NULL,25,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(160,10,NULL,NULL,22,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(161,10,NULL,NULL,40,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-8.png\"]'),(162,2,NULL,NULL,42,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(163,6,NULL,NULL,8,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\"]'),(166,9,NULL,NULL,40,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(168,8,NULL,NULL,15,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(169,7,NULL,NULL,20,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\"]'),(170,5,NULL,NULL,43,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(172,10,NULL,NULL,2,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\"]'),(173,4,NULL,NULL,38,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\"]'),(174,3,NULL,NULL,40,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(175,7,NULL,NULL,18,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(176,5,NULL,NULL,4,2.00,'Best ecommerce CMS online store!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\"]'),(177,8,NULL,NULL,33,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\"]'),(178,4,NULL,NULL,18,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(180,3,NULL,NULL,10,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(181,3,NULL,NULL,7,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(182,3,NULL,NULL,24,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\"]'),(183,10,NULL,NULL,27,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(184,10,NULL,NULL,21,3.00,'Clean & perfect source code','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\"]'),(186,7,NULL,NULL,43,5.00,'Best ecommerce CMS online store!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\"]'),(187,8,NULL,NULL,26,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(188,7,NULL,NULL,37,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(189,3,NULL,NULL,5,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(190,7,NULL,NULL,10,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\"]'),(191,2,NULL,NULL,16,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(192,7,NULL,NULL,2,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(194,7,NULL,NULL,35,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(198,8,NULL,NULL,3,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(199,1,NULL,NULL,29,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(203,6,NULL,NULL,23,4.00,'Good app, good backup service and support. Good documentation.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(204,9,NULL,NULL,4,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-7.png\"]'),(205,2,NULL,NULL,24,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\"]'),(210,7,NULL,NULL,42,5.00,'Best ecommerce CMS online store!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\"]'),(211,6,NULL,NULL,11,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(215,3,NULL,NULL,28,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(217,1,NULL,NULL,42,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(221,9,NULL,NULL,23,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(222,8,NULL,NULL,18,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(223,9,NULL,NULL,9,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(224,3,NULL,NULL,15,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\"]'),(226,4,NULL,NULL,13,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(227,7,NULL,NULL,17,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(231,3,NULL,NULL,31,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\"]'),(232,2,NULL,NULL,33,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\"]'),(234,4,NULL,NULL,40,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(235,10,NULL,NULL,36,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(238,7,NULL,NULL,22,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(239,1,NULL,NULL,39,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(240,7,NULL,NULL,39,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(241,8,NULL,NULL,17,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(242,1,NULL,NULL,26,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\"]'),(245,5,NULL,NULL,33,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(247,1,NULL,NULL,13,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(249,7,NULL,NULL,3,5.00,'Good app, good backup service and support. Good documentation.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(250,2,NULL,NULL,30,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-7.png\"]'),(251,7,NULL,NULL,33,3.00,'Good app, good backup service and support. Good documentation.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(252,4,NULL,NULL,39,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\"]'),(253,2,NULL,NULL,3,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(254,3,NULL,NULL,2,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-8.png\"]'),(255,7,NULL,NULL,6,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(256,5,NULL,NULL,24,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(257,10,NULL,NULL,35,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(258,9,NULL,NULL,28,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\"]'),(259,9,NULL,NULL,3,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(260,10,NULL,NULL,37,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(262,8,NULL,NULL,6,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\"]'),(264,2,NULL,NULL,12,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(265,9,NULL,NULL,14,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\"]'),(268,5,NULL,NULL,27,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(271,1,NULL,NULL,2,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\"]'),(272,9,NULL,NULL,13,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(273,2,NULL,NULL,34,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(276,7,NULL,NULL,7,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\"]'),(277,7,NULL,NULL,31,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(278,2,NULL,NULL,39,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(279,8,NULL,NULL,1,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-7.png\"]'),(281,6,NULL,NULL,32,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(282,10,NULL,NULL,14,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-7.png\"]'),(286,5,NULL,NULL,31,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(287,10,NULL,NULL,4,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(288,4,NULL,NULL,16,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(289,6,NULL,NULL,22,2.00,'Good app, good backup service and support. Good documentation.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(290,6,NULL,NULL,20,5.00,'Clean & perfect source code','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\"]'),(291,5,NULL,NULL,38,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]'),(292,10,NULL,NULL,6,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(293,8,NULL,NULL,27,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(294,2,NULL,NULL,8,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\"]'),(295,7,NULL,NULL,36,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\"]'),(297,2,NULL,NULL,27,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(299,10,NULL,NULL,9,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(300,7,NULL,NULL,16,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(301,1,NULL,NULL,27,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\"]'),(302,1,NULL,NULL,15,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\"]'),(304,5,NULL,NULL,8,4.00,'Good app, good backup service and support. Good documentation.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(305,5,NULL,NULL,39,3.00,'Good app, good backup service and support. Good documentation.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(306,5,NULL,NULL,2,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\"]'),(307,4,NULL,NULL,17,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(308,2,NULL,NULL,20,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(310,10,NULL,NULL,34,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(312,1,NULL,NULL,17,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\"]'),(314,1,NULL,NULL,1,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-7.png\"]'),(318,6,NULL,NULL,21,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(319,6,NULL,NULL,25,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(320,3,NULL,NULL,1,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(322,8,NULL,NULL,13,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(323,8,NULL,NULL,16,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\"]'),(325,2,NULL,NULL,22,3.00,'Best ecommerce CMS online store!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(335,10,NULL,NULL,25,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(336,2,NULL,NULL,31,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\"]'),(337,3,NULL,NULL,19,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\"]'),(341,5,NULL,NULL,1,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(344,10,NULL,NULL,15,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\"]'),(350,2,NULL,NULL,1,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\"]'),(352,3,NULL,NULL,27,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(353,3,NULL,NULL,35,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\"]'),(356,4,NULL,NULL,12,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-8.png\"]'),(358,1,NULL,NULL,12,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(360,6,NULL,NULL,14,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(361,7,NULL,NULL,4,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\"]'),(365,7,NULL,NULL,12,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-8.png\"]'),(366,9,NULL,NULL,21,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\"]'),(367,4,NULL,NULL,10,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\"]'),(369,8,NULL,NULL,39,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(373,7,NULL,NULL,25,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(375,9,NULL,NULL,32,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\"]'),(377,4,NULL,NULL,2,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(381,3,NULL,NULL,36,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(384,1,NULL,NULL,30,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\"]'),(385,6,NULL,NULL,12,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(387,3,NULL,NULL,6,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(391,8,NULL,NULL,41,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(392,2,NULL,NULL,11,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(398,9,NULL,NULL,39,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(399,5,NULL,NULL,30,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(401,7,NULL,NULL,26,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(408,4,NULL,NULL,33,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\"]'),(410,3,NULL,NULL,22,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\"]'),(411,4,NULL,NULL,32,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(415,7,NULL,NULL,14,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\"]'),(417,10,NULL,NULL,10,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(419,9,NULL,NULL,31,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-8.png\"]'),(422,9,NULL,NULL,30,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-8.png\"]'),(427,7,NULL,NULL,38,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(428,2,NULL,NULL,9,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(429,10,NULL,NULL,33,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(431,5,NULL,NULL,9,1.00,'Best ecommerce CMS online store!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-7.png\"]'),(432,1,NULL,NULL,11,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\"]'),(439,1,NULL,NULL,32,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(440,1,NULL,NULL,21,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(444,3,NULL,NULL,42,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(450,7,NULL,NULL,34,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\"]'),(451,5,NULL,NULL,18,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(452,1,NULL,NULL,38,4.00,'Best ecommerce CMS online store!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\"]'),(454,9,NULL,NULL,10,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(455,9,NULL,NULL,1,2.00,'Best ecommerce CMS online store!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(457,8,NULL,NULL,31,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(460,7,NULL,NULL,15,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(463,2,NULL,NULL,43,5.00,'Best ecommerce CMS online store!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(468,1,NULL,NULL,22,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\"]'),(469,9,NULL,NULL,12,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(470,2,NULL,NULL,7,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\"]'),(477,7,NULL,NULL,11,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\"]'),(482,5,NULL,NULL,41,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\"]'),(483,6,NULL,NULL,39,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-8.png\"]'),(488,9,NULL,NULL,33,2.00,'Good app, good backup service and support. Good documentation.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-8.png\"]'),(490,1,NULL,NULL,7,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\"]'),(493,8,NULL,NULL,35,5.00,'Good app, good backup service and support. Good documentation.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(494,8,NULL,NULL,4,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(499,4,NULL,NULL,7,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(503,6,NULL,NULL,24,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(505,4,NULL,NULL,42,1.00,'Good app, good backup service and support. Good documentation.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\"]'),(506,6,NULL,NULL,36,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(515,9,NULL,NULL,17,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(518,5,NULL,NULL,16,1.00,'Best ecommerce CMS online store!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-8.png\"]'),(519,8,NULL,NULL,10,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\"]'),(522,6,NULL,NULL,43,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\"]'),(528,10,NULL,NULL,17,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(532,3,NULL,NULL,23,4.00,'Good app, good backup service and support. Good documentation.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(533,2,NULL,NULL,23,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(538,4,NULL,NULL,3,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(542,1,NULL,NULL,10,1.00,'Clean & perfect source code','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\"]'),(543,1,NULL,NULL,6,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\"]'),(544,8,NULL,NULL,24,1.00,'Good app, good backup service and support. Good documentation.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(548,4,NULL,NULL,27,3.00,'Best ecommerce CMS online store!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\"]'),(549,5,NULL,NULL,25,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\"]'),(550,3,NULL,NULL,13,4.00,'Best ecommerce CMS online store!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\"]'),(551,3,NULL,NULL,9,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\"]'),(558,6,NULL,NULL,38,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(559,6,NULL,NULL,30,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\"]'),(561,4,NULL,NULL,22,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\"]'),(581,6,NULL,NULL,5,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\"]'),(582,6,NULL,NULL,42,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(589,1,NULL,NULL,31,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(591,5,NULL,NULL,14,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\"]'),(597,10,NULL,NULL,16,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-8.png\"]'),(601,2,NULL,NULL,26,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(605,6,NULL,NULL,19,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-7.png\"]'),(607,5,NULL,NULL,5,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(609,9,NULL,NULL,41,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\"]'),(616,3,NULL,NULL,41,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(623,9,NULL,NULL,38,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(626,10,NULL,NULL,1,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(628,8,NULL,NULL,36,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(640,8,NULL,NULL,43,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(641,3,NULL,NULL,20,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-7.png\"]'),(645,6,NULL,NULL,37,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(649,10,NULL,NULL,20,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(650,10,NULL,NULL,12,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(652,5,NULL,NULL,32,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-8.png\"]'),(655,1,NULL,NULL,23,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\"]'),(656,4,NULL,NULL,20,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(658,5,NULL,NULL,34,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\"]'),(662,7,NULL,NULL,29,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\"]'),(667,1,NULL,NULL,3,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(694,3,NULL,NULL,16,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(696,6,NULL,NULL,16,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(710,6,NULL,NULL,6,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(715,3,NULL,NULL,38,5.00,'Good app, good backup service and support. Good documentation.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\"]'),(716,1,NULL,NULL,4,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(721,10,NULL,NULL,29,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(729,9,NULL,NULL,19,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\"]'),(741,6,NULL,NULL,31,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\"]'),(745,8,NULL,NULL,23,1.00,'Best ecommerce CMS online store!','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(756,4,NULL,NULL,41,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(763,2,NULL,NULL,10,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(790,6,NULL,NULL,10,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(794,7,NULL,NULL,30,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(808,10,NULL,NULL,19,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(811,8,NULL,NULL,40,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(814,9,NULL,NULL,16,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\"]'),(815,4,NULL,NULL,19,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\"]'),(817,10,NULL,NULL,26,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(818,4,NULL,NULL,30,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-7.png\"]'),(822,10,NULL,NULL,32,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(839,5,NULL,NULL,36,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\"]'),(858,8,NULL,NULL,32,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(862,3,NULL,NULL,30,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\"]'),(866,8,NULL,NULL,42,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(880,9,NULL,NULL,26,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\"]'),(883,5,NULL,NULL,26,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(895,9,NULL,NULL,24,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\"]'),(906,10,NULL,NULL,39,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(910,2,NULL,NULL,28,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\"]'),(921,6,NULL,NULL,27,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\"]'),(922,2,NULL,NULL,35,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-4.png\"]'),(925,6,NULL,NULL,13,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(931,2,NULL,NULL,38,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\"]'),(940,3,NULL,NULL,26,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-1.png\"]'),(951,3,NULL,NULL,12,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-11-10 21:41:00','2024-11-10 21:41:00','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shared_wishlists`
--

DROP TABLE IF EXISTS `ec_shared_wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shared_wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_ids` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_shared_wishlists_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shared_wishlists`
--

LOCK TABLES `ec_shared_wishlists` WRITE;
/*!40000 ALTER TABLE `ec_shared_wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shared_wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `customer_delivered_confirmed_at` timestamp NULL DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-11-10 21:40:53','2024-11-10 21:40:53');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',1000.00,NULL,0.00,'2024-11-10 21:40:53','2024-11-10 21:40:53'),(2,'Flat Rate',1,'based_on_price',0.00,NULL,20.00,'2024-11-10 21:40:53','2024-11-10 21:40:53'),(3,'Local Pickup',1,'based_on_price',0.00,NULL,0.00,'2024-11-10 21:40:53','2024-11-10 21:40:53');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes`
--

DROP TABLE IF EXISTS `ec_specification_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_attributes_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes`
--

LOCK TABLES `ec_specification_attributes` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes` DISABLE KEYS */;
INSERT INTO `ec_specification_attributes` VALUES (1,1,'Height','text',NULL,NULL,'2024-11-10 21:40:59','2024-11-10 21:40:59',NULL,NULL),(2,1,'Width','text',NULL,NULL,'2024-11-10 21:40:59','2024-11-10 21:40:59',NULL,NULL),(3,1,'Weight','text',NULL,NULL,'2024-11-10 21:40:59','2024-11-10 21:40:59',NULL,NULL),(4,2,'Power','text',NULL,NULL,'2024-11-10 21:40:59','2024-11-10 21:40:59',NULL,NULL),(5,2,'Speed','text',NULL,NULL,'2024-11-10 21:40:59','2024-11-10 21:40:59',NULL,NULL),(6,3,'Battery Life','text',NULL,NULL,'2024-11-10 21:40:59','2024-11-10 21:40:59',NULL,NULL),(7,4,'Screen Size','text',NULL,NULL,'2024-11-10 21:40:59','2024-11-10 21:40:59',NULL,NULL),(8,4,'Resolution','select','[\"1920x1080\",\"2560x1440\",\"3840x2160\"]',NULL,'2024-11-10 21:40:59','2024-11-10 21:40:59',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes_translations`
--

DROP TABLE IF EXISTS `ec_specification_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_attributes_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_attributes_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes_translations`
--

LOCK TABLES `ec_specification_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups`
--

DROP TABLE IF EXISTS `ec_specification_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_groups_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups`
--

LOCK TABLES `ec_specification_groups` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups` DISABLE KEYS */;
INSERT INTO `ec_specification_groups` VALUES (1,'Dimensions',NULL,'2024-11-10 21:40:59','2024-11-10 21:40:59',NULL,NULL),(2,'Performance',NULL,'2024-11-10 21:40:59','2024-11-10 21:40:59',NULL,NULL),(3,'Battery',NULL,'2024-11-10 21:40:59','2024-11-10 21:40:59',NULL,NULL),(4,'Display',NULL,'2024-11-10 21:40:59','2024-11-10 21:40:59',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_table_group`
--

DROP TABLE IF EXISTS `ec_specification_table_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_table_group` (
  `table_id` bigint unsigned NOT NULL,
  `group_id` bigint unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`table_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_table_group`
--

LOCK TABLES `ec_specification_table_group` WRITE;
/*!40000 ALTER TABLE `ec_specification_table_group` DISABLE KEYS */;
INSERT INTO `ec_specification_table_group` VALUES (1,1,0),(1,2,0),(2,3,0),(2,4,0);
/*!40000 ALTER TABLE `ec_specification_table_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables`
--

DROP TABLE IF EXISTS `ec_specification_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_tables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_tables_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables`
--

LOCK TABLES `ec_specification_tables` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables` DISABLE KEYS */;
INSERT INTO `ec_specification_tables` VALUES (1,'General Specification',NULL,'2024-11-10 21:40:59','2024-11-10 21:40:59',NULL,NULL),(2,'Technical Specification',NULL,'2024-11-10 21:40:59','2024-11-10 21:40:59',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Shofy','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2024-11-10 21:40:54','2024-11-10 21:40:54',NULL);
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,2),(1,3),(1,4),(1,6),(1,9),(1,13),(1,14),(1,19),(1,20),(1,21),(1,23),(1,26),(1,27),(1,28),(2,8),(2,11),(2,17),(2,25),(2,32),(2,35),(2,37),(2,38),(2,40),(3,1),(3,5),(3,7),(3,10),(3,12),(3,15),(3,16),(3,18),(3,22),(3,24),(3,29),(3,30),(3,31),(3,33),(3,34),(3,36),(3,39),(3,41),(3,42),(3,43);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-11-10 21:40:53','2024-11-10 21:40:53'),(2,'None',0.000000,2,'published','2024-11-10 21:40:53','2024-11-10 21:40:53'),(3,'Import Tax',15.000000,3,'published','2024-11-10 21:40:53','2024-11-10 21:40:53');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`product_id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2024-11-10 21:40:50','2024-11-10 21:40:50',NULL),(2,'Payment',1,'published','2024-11-10 21:40:50','2024-11-10 21:40:50',NULL),(3,'Order &amp; Returns',2,'published','2024-11-10 21:40:50','2024-11-10 21:40:50',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-11-10 21:40:50','2024-11-10 21:40:50'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-11-10 21:40:50','2024-11-10 21:40:50'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-11-10 21:40:50','2024-11-10 21:40:50'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-11-10 21:40:50','2024-11-10 21:40:50'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-11-10 21:40:50','2024-11-10 21:40:50'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-11-10 21:40:50','2024-11-10 21:40:50'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-11-10 21:40:50','2024-11-10 21:40:50'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-11-10 21:40:50','2024-11-10 21:40:50'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-11-10 21:40:50','2024-11-10 21:40:50'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-11-10 21:40:50','2024-11-10 21:40:50');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Perfect','THINK,\' said Alice. \'I wonder what they said. The executioner\'s argument was, that anything that had fallen into a pig, my dear,\' said Alice, (she had grown to her ear. \'You\'re thinking about.',1,0,'fashion/galleries/1.jpg',1,'published','2024-11-10 21:41:00','2024-11-10 21:41:00'),(2,'New Day','It was opened by another footman in livery, with a pair of gloves and the other ladder?--Why, I hadn\'t begun my tea--not above a week or so--and what with the dream of Wonderland of long ago: and.',1,0,'fashion/galleries/2.jpg',1,'published','2024-11-10 21:41:00','2024-11-10 21:41:00'),(3,'Happy Day','NO mistake about it: it was all about, and crept a little bit, and said nothing. \'When we were little,\' the Mock Turtle. \'And how did you begin?\' The Hatter shook his grey locks, \'I kept all my.',1,0,'fashion/galleries/3.jpg',1,'published','2024-11-10 21:41:00','2024-11-10 21:41:00'),(4,'Nature','I can\'t see you?\' She was walking hand in her life, and had come back again, and the sound of a tree in the same tone, exactly as if she could not taste theirs, and the King said to the shore, and.',1,0,'fashion/galleries/4.jpg',1,'published','2024-11-10 21:41:00','2024-11-10 21:41:00'),(5,'Morning','Alice, quite forgetting that she was quite tired of being such a nice little histories about children who had been wandering, when a cry of \'The trial\'s beginning!\' was heard in the middle of her.',1,0,'fashion/galleries/5.jpg',1,'published','2024-11-10 21:41:00','2024-11-10 21:41:00');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"fashion\\/galleries\\/4.jpg\",\"description\":\"CHAPTER IX. The Mock Turtle\'s Story \'You can\'t think how glad I am very tired of swimming about here, O Mouse!\' (Alice thought this must ever be A secret, kept from all the jurymen are back in their.\"},{\"img\":\"fashion\\/galleries\\/2.jpg\",\"description\":\"Bill\'s place for a baby: altogether Alice did not like the name: however, it only grinned when it saw mine coming!\' \'How do you know the song, \'I\'d have said to Alice, flinging the baby joined).\"},{\"img\":\"fashion\\/galleries\\/5.jpg\",\"description\":\"BOOTS AND SHOES.\' the Gryphon replied rather crossly: \'of course you know the song, she kept tossing the baby was howling so much contradicted in her pocket, and was delighted to find her in a.\"},{\"img\":\"fashion\\/galleries\\/1.jpg\",\"description\":\"Five! Always lay the blame on others!\' \'YOU\'D better not talk!\' said Five. \'I heard every word you fellows were saying.\' \'Tell us a story.\' \'I\'m afraid I can\'t take LESS,\' said the Caterpillar, just.\"},{\"img\":\"fashion\\/galleries\\/3.jpg\",\"description\":\"I\'m not the smallest notice of them even when they saw Alice coming. \'There\'s PLENTY of room!\' said Alice loudly. \'The idea of the court,\\\" and I could say if I shall have to fly; and the little.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-11-10 21:41:00','2024-11-10 21:41:00'),(2,'[{\"img\":\"fashion\\/galleries\\/4.jpg\",\"description\":\"CHAPTER IX. The Mock Turtle\'s Story \'You can\'t think how glad I am very tired of swimming about here, O Mouse!\' (Alice thought this must ever be A secret, kept from all the jurymen are back in their.\"},{\"img\":\"fashion\\/galleries\\/2.jpg\",\"description\":\"Bill\'s place for a baby: altogether Alice did not like the name: however, it only grinned when it saw mine coming!\' \'How do you know the song, \'I\'d have said to Alice, flinging the baby joined).\"},{\"img\":\"fashion\\/galleries\\/5.jpg\",\"description\":\"BOOTS AND SHOES.\' the Gryphon replied rather crossly: \'of course you know the song, she kept tossing the baby was howling so much contradicted in her pocket, and was delighted to find her in a.\"},{\"img\":\"fashion\\/galleries\\/1.jpg\",\"description\":\"Five! Always lay the blame on others!\' \'YOU\'D better not talk!\' said Five. \'I heard every word you fellows were saying.\' \'Tell us a story.\' \'I\'m afraid I can\'t take LESS,\' said the Caterpillar, just.\"},{\"img\":\"fashion\\/galleries\\/3.jpg\",\"description\":\"I\'m not the smallest notice of them even when they saw Alice coming. \'There\'s PLENTY of room!\' said Alice loudly. \'The idea of the court,\\\" and I could say if I shall have to fly; and the little.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-11-10 21:41:00','2024-11-10 21:41:00'),(3,'[{\"img\":\"fashion\\/galleries\\/4.jpg\",\"description\":\"CHAPTER IX. The Mock Turtle\'s Story \'You can\'t think how glad I am very tired of swimming about here, O Mouse!\' (Alice thought this must ever be A secret, kept from all the jurymen are back in their.\"},{\"img\":\"fashion\\/galleries\\/2.jpg\",\"description\":\"Bill\'s place for a baby: altogether Alice did not like the name: however, it only grinned when it saw mine coming!\' \'How do you know the song, \'I\'d have said to Alice, flinging the baby joined).\"},{\"img\":\"fashion\\/galleries\\/5.jpg\",\"description\":\"BOOTS AND SHOES.\' the Gryphon replied rather crossly: \'of course you know the song, she kept tossing the baby was howling so much contradicted in her pocket, and was delighted to find her in a.\"},{\"img\":\"fashion\\/galleries\\/1.jpg\",\"description\":\"Five! Always lay the blame on others!\' \'YOU\'D better not talk!\' said Five. \'I heard every word you fellows were saying.\' \'Tell us a story.\' \'I\'m afraid I can\'t take LESS,\' said the Caterpillar, just.\"},{\"img\":\"fashion\\/galleries\\/3.jpg\",\"description\":\"I\'m not the smallest notice of them even when they saw Alice coming. \'There\'s PLENTY of room!\' said Alice loudly. \'The idea of the court,\\\" and I could say if I shall have to fly; and the little.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-11-10 21:41:00','2024-11-10 21:41:00'),(4,'[{\"img\":\"fashion\\/galleries\\/4.jpg\",\"description\":\"CHAPTER IX. The Mock Turtle\'s Story \'You can\'t think how glad I am very tired of swimming about here, O Mouse!\' (Alice thought this must ever be A secret, kept from all the jurymen are back in their.\"},{\"img\":\"fashion\\/galleries\\/2.jpg\",\"description\":\"Bill\'s place for a baby: altogether Alice did not like the name: however, it only grinned when it saw mine coming!\' \'How do you know the song, \'I\'d have said to Alice, flinging the baby joined).\"},{\"img\":\"fashion\\/galleries\\/5.jpg\",\"description\":\"BOOTS AND SHOES.\' the Gryphon replied rather crossly: \'of course you know the song, she kept tossing the baby was howling so much contradicted in her pocket, and was delighted to find her in a.\"},{\"img\":\"fashion\\/galleries\\/1.jpg\",\"description\":\"Five! Always lay the blame on others!\' \'YOU\'D better not talk!\' said Five. \'I heard every word you fellows were saying.\' \'Tell us a story.\' \'I\'m afraid I can\'t take LESS,\' said the Caterpillar, just.\"},{\"img\":\"fashion\\/galleries\\/3.jpg\",\"description\":\"I\'m not the smallest notice of them even when they saw Alice coming. \'There\'s PLENTY of room!\' said Alice loudly. \'The idea of the court,\\\" and I could say if I shall have to fly; and the little.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-11-10 21:41:00','2024-11-10 21:41:00'),(5,'[{\"img\":\"fashion\\/galleries\\/4.jpg\",\"description\":\"CHAPTER IX. The Mock Turtle\'s Story \'You can\'t think how glad I am very tired of swimming about here, O Mouse!\' (Alice thought this must ever be A secret, kept from all the jurymen are back in their.\"},{\"img\":\"fashion\\/galleries\\/2.jpg\",\"description\":\"Bill\'s place for a baby: altogether Alice did not like the name: however, it only grinned when it saw mine coming!\' \'How do you know the song, \'I\'d have said to Alice, flinging the baby joined).\"},{\"img\":\"fashion\\/galleries\\/5.jpg\",\"description\":\"BOOTS AND SHOES.\' the Gryphon replied rather crossly: \'of course you know the song, she kept tossing the baby was howling so much contradicted in her pocket, and was delighted to find her in a.\"},{\"img\":\"fashion\\/galleries\\/1.jpg\",\"description\":\"Five! Always lay the blame on others!\' \'YOU\'D better not talk!\' said Five. \'I heard every word you fellows were saying.\' \'Tell us a story.\' \'I\'m afraid I can\'t take LESS,\' said the Caterpillar, just.\"},{\"img\":\"fashion\\/galleries\\/3.jpg\",\"description\":\"I\'m not the smallest notice of them even when they saw Alice coming. \'There\'s PLENTY of room!\' said Alice loudly. \'The idea of the court,\\\" and I could say if I shall have to fly; and the little.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-11-10 21:41:00','2024-11-10 21:41:00');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','47271a31d85fd7022a2a0428a90cd3be',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','0a506cf0b81206321832d8aa0d846ae4',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','11adb950fab0463c37a484c1acc5f23b',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','0ef15032ade9b568aa9330ef57817303',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','853aadc0e7a88470b178d6548c039cec',3,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'404','404',2,'image/png',16004,'main/general/404.png','[]','2024-11-10 21:40:48','2024-11-10 21:40:48',NULL,'public'),(2,0,'about-1','about-1',2,'image/jpeg',9222,'main/general/about-1.jpg','[]','2024-11-10 21:40:48','2024-11-10 21:40:48',NULL,'public'),(3,0,'about-2','about-2',2,'image/jpeg',5105,'main/general/about-2.jpg','[]','2024-11-10 21:40:48','2024-11-10 21:40:48',NULL,'public'),(4,0,'auth-banner','auth-banner',2,'image/png',48468,'main/general/auth-banner.png','[]','2024-11-10 21:40:48','2024-11-10 21:40:48',NULL,'public'),(5,0,'breadcrumb','breadcrumb',2,'image/jpeg',5276,'main/general/breadcrumb.jpg','[]','2024-11-10 21:40:48','2024-11-10 21:40:48',NULL,'public'),(6,0,'contact-img','contact-img',2,'image/jpeg',13078,'main/general/contact-img.jpg','[]','2024-11-10 21:40:48','2024-11-10 21:40:48',NULL,'public'),(7,0,'cta-shape-1','cta-shape-1',2,'image/png',23294,'main/general/cta-shape-1.png','[]','2024-11-10 21:40:48','2024-11-10 21:40:48',NULL,'public'),(8,0,'cta-shape-2','cta-shape-2',2,'image/png',16820,'main/general/cta-shape-2.png','[]','2024-11-10 21:40:48','2024-11-10 21:40:48',NULL,'public'),(9,0,'cta-thumb-1','cta-thumb-1',2,'image/jpeg',6053,'main/general/cta-thumb-1.jpg','[]','2024-11-10 21:40:48','2024-11-10 21:40:48',NULL,'public'),(10,0,'favicon','favicon',2,'image/png',1822,'main/general/favicon.png','[]','2024-11-10 21:40:48','2024-11-10 21:40:48',NULL,'public'),(11,0,'footer-pay','footer-pay',2,'image/png',490,'main/general/footer-pay.png','[]','2024-11-10 21:40:48','2024-11-10 21:40:48',NULL,'public'),(12,0,'logo-white','logo-white',2,'image/png',21450,'main/general/logo-white.png','[]','2024-11-10 21:40:48','2024-11-10 21:40:48',NULL,'public'),(13,0,'logo','logo',2,'image/png',22334,'main/general/logo.png','[]','2024-11-10 21:40:48','2024-11-10 21:40:48',NULL,'public'),(14,0,'newsletter-popup','newsletter-popup',2,'image/png',17253,'main/general/newsletter-popup.png','[]','2024-11-10 21:40:48','2024-11-10 21:40:48',NULL,'public'),(15,0,'placeholder','placeholder',2,'image/png',2100,'main/general/placeholder.png','[]','2024-11-10 21:40:49','2024-11-10 21:40:49',NULL,'public'),(16,0,'preloader-icon','preloader-icon',2,'image/png',4160,'main/general/preloader-icon.png','[]','2024-11-10 21:40:49','2024-11-10 21:40:49',NULL,'public'),(17,0,'signature','signature',2,'image/png',2330,'main/general/signature.png','[]','2024-11-10 21:40:49','2024-11-10 21:40:49',NULL,'public'),(18,0,'slider-offer','slider-offer',2,'image/png',970,'main/general/slider-offer.png','[]','2024-11-10 21:40:49','2024-11-10 21:40:49',NULL,'public'),(29,0,'1','1',4,'image/png',948,'main/brands/1.png','[]','2024-11-10 21:40:50','2024-11-10 21:40:50',NULL,'public'),(30,0,'2','2',4,'image/png',948,'main/brands/2.png','[]','2024-11-10 21:40:50','2024-11-10 21:40:50',NULL,'public'),(31,0,'3','3',4,'image/png',948,'main/brands/3.png','[]','2024-11-10 21:40:50','2024-11-10 21:40:50',NULL,'public'),(32,0,'4','4',4,'image/png',948,'main/brands/4.png','[]','2024-11-10 21:40:50','2024-11-10 21:40:50',NULL,'public'),(33,0,'5','5',4,'image/png',948,'main/brands/5.png','[]','2024-11-10 21:40:50','2024-11-10 21:40:50',NULL,'public'),(34,0,'1','1',5,'image/jpeg',4294,'main/customers/1.jpg','[]','2024-11-10 21:40:50','2024-11-10 21:40:50',NULL,'public'),(35,0,'10','10',5,'image/jpeg',4294,'main/customers/10.jpg','[]','2024-11-10 21:40:50','2024-11-10 21:40:50',NULL,'public'),(36,0,'2','2',5,'image/jpeg',4294,'main/customers/2.jpg','[]','2024-11-10 21:40:50','2024-11-10 21:40:50',NULL,'public'),(37,0,'3','3',5,'image/jpeg',4294,'main/customers/3.jpg','[]','2024-11-10 21:40:50','2024-11-10 21:40:50',NULL,'public'),(38,0,'4','4',5,'image/jpeg',4294,'main/customers/4.jpg','[]','2024-11-10 21:40:50','2024-11-10 21:40:50',NULL,'public'),(39,0,'5','5',5,'image/jpeg',4294,'main/customers/5.jpg','[]','2024-11-10 21:40:50','2024-11-10 21:40:50',NULL,'public'),(40,0,'6','6',5,'image/jpeg',4294,'main/customers/6.jpg','[]','2024-11-10 21:40:50','2024-11-10 21:40:50',NULL,'public'),(41,0,'7','7',5,'image/jpeg',4294,'main/customers/7.jpg','[]','2024-11-10 21:40:50','2024-11-10 21:40:50',NULL,'public'),(42,0,'8','8',5,'image/jpeg',4294,'main/customers/8.jpg','[]','2024-11-10 21:40:50','2024-11-10 21:40:50',NULL,'public'),(43,0,'9','9',5,'image/jpeg',4294,'main/customers/9.jpg','[]','2024-11-10 21:40:50','2024-11-10 21:40:50',NULL,'public'),(44,0,'blog-big-1','blog-big-1',6,'image/jpeg',13885,'main/blog/blog-big-1.jpg','[]','2024-11-10 21:40:53','2024-11-10 21:40:53',NULL,'public'),(45,0,'blog-details-sm-1','blog-details-sm-1',6,'image/jpeg',8166,'main/blog/blog-details-sm-1.jpg','[]','2024-11-10 21:40:53','2024-11-10 21:40:53',NULL,'public'),(46,0,'post-1','post-1',6,'image/jpeg',6189,'main/blog/post-1.jpg','[]','2024-11-10 21:40:53','2024-11-10 21:40:53',NULL,'public'),(47,0,'post-10','post-10',6,'image/jpeg',5907,'main/blog/post-10.jpg','[]','2024-11-10 21:40:53','2024-11-10 21:40:53',NULL,'public'),(48,0,'post-11','post-11',6,'image/jpeg',5907,'main/blog/post-11.jpg','[]','2024-11-10 21:40:53','2024-11-10 21:40:53',NULL,'public'),(49,0,'post-12','post-12',6,'image/jpeg',5907,'main/blog/post-12.jpg','[]','2024-11-10 21:40:53','2024-11-10 21:40:53',NULL,'public'),(50,0,'post-2','post-2',6,'image/jpeg',6189,'main/blog/post-2.jpg','[]','2024-11-10 21:40:53','2024-11-10 21:40:53',NULL,'public'),(51,0,'post-3','post-3',6,'image/jpeg',6189,'main/blog/post-3.jpg','[]','2024-11-10 21:40:53','2024-11-10 21:40:53',NULL,'public'),(52,0,'post-4','post-4',6,'image/jpeg',6045,'main/blog/post-4.jpg','[]','2024-11-10 21:40:53','2024-11-10 21:40:53',NULL,'public'),(53,0,'post-5','post-5',6,'image/jpeg',6045,'main/blog/post-5.jpg','[]','2024-11-10 21:40:53','2024-11-10 21:40:53',NULL,'public'),(54,0,'post-6','post-6',6,'image/jpeg',6045,'main/blog/post-6.jpg','[]','2024-11-10 21:40:53','2024-11-10 21:40:53',NULL,'public'),(55,0,'post-7','post-7',6,'image/jpeg',5907,'main/blog/post-7.jpg','[]','2024-11-10 21:40:53','2024-11-10 21:40:53',NULL,'public'),(56,0,'post-8','post-8',6,'image/jpeg',5907,'main/blog/post-8.jpg','[]','2024-11-10 21:40:53','2024-11-10 21:40:53',NULL,'public'),(57,0,'post-9','post-9',6,'image/jpeg',5907,'main/blog/post-9.jpg','[]','2024-11-10 21:40:53','2024-11-10 21:40:53',NULL,'public'),(58,0,'1','1',3,'image/jpeg',4068,'main/users/1.jpg','[]','2024-11-10 21:40:53','2024-11-10 21:40:53',NULL,'public'),(59,0,'10','10',3,'image/jpeg',7599,'main/users/10.jpg','[]','2024-11-10 21:40:53','2024-11-10 21:40:53',NULL,'public'),(60,0,'2','2',3,'image/jpeg',7599,'main/users/2.jpg','[]','2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,'public'),(61,0,'3','3',3,'image/jpeg',6387,'main/users/3.jpg','[]','2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,'public'),(62,0,'4','4',3,'image/jpeg',7599,'main/users/4.jpg','[]','2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,'public'),(63,0,'5','5',3,'image/jpeg',6387,'main/users/5.jpg','[]','2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,'public'),(64,0,'6','6',3,'image/jpeg',7599,'main/users/6.jpg','[]','2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,'public'),(65,0,'7','7',3,'image/jpeg',6387,'main/users/7.jpg','[]','2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,'public'),(66,0,'8','8',3,'image/jpeg',7599,'main/users/8.jpg','[]','2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,'public'),(67,0,'9','9',3,'image/jpeg',6387,'main/users/9.jpg','[]','2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,'public'),(68,0,'1','1',7,'image/png',9022,'main/stores/1.png','[]','2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,'public'),(69,0,'10','10',7,'image/png',4384,'main/stores/10.png','[]','2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,'public'),(70,0,'11','11',7,'image/png',4706,'main/stores/11.png','[]','2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,'public'),(71,0,'12','12',7,'image/png',5075,'main/stores/12.png','[]','2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,'public'),(72,0,'13','13',7,'image/png',3700,'main/stores/13.png','[]','2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,'public'),(73,0,'14','14',7,'image/png',4239,'main/stores/14.png','[]','2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,'public'),(74,0,'15','15',7,'image/png',5304,'main/stores/15.png','[]','2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,'public'),(75,0,'16','16',7,'image/png',4796,'main/stores/16.png','[]','2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,'public'),(76,0,'17','17',7,'image/png',4919,'main/stores/17.png','[]','2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,'public'),(77,0,'2','2',7,'image/png',8598,'main/stores/2.png','[]','2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,'public'),(78,0,'3','3',7,'image/png',7888,'main/stores/3.png','[]','2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,'public'),(79,0,'4','4',7,'image/png',8393,'main/stores/4.png','[]','2024-11-10 21:40:54','2024-11-10 21:40:54',NULL,'public'),(80,0,'5','5',7,'image/png',10159,'main/stores/5.png','[]','2024-11-10 21:40:55','2024-11-10 21:40:55',NULL,'public'),(81,0,'6','6',7,'image/png',10312,'main/stores/6.png','[]','2024-11-10 21:40:55','2024-11-10 21:40:55',NULL,'public'),(82,0,'7','7',7,'image/png',3764,'main/stores/7.png','[]','2024-11-10 21:40:55','2024-11-10 21:40:55',NULL,'public'),(83,0,'8','8',7,'image/png',4237,'main/stores/8.png','[]','2024-11-10 21:40:55','2024-11-10 21:40:55',NULL,'public'),(84,0,'9','9',7,'image/png',4096,'main/stores/9.png','[]','2024-11-10 21:40:55','2024-11-10 21:40:55',NULL,'public'),(85,0,'cover-1','cover-1',7,'image/png',4208,'main/stores/cover-1.png','[]','2024-11-10 21:40:55','2024-11-10 21:40:55',NULL,'public'),(86,0,'cover-2','cover-2',7,'image/png',8798,'main/stores/cover-2.png','[]','2024-11-10 21:40:55','2024-11-10 21:40:55',NULL,'public'),(87,0,'cover-3','cover-3',7,'image/png',3888,'main/stores/cover-3.png','[]','2024-11-10 21:40:55','2024-11-10 21:40:55',NULL,'public'),(88,0,'cover-4','cover-4',7,'image/png',11893,'main/stores/cover-4.png','[]','2024-11-10 21:40:55','2024-11-10 21:40:55',NULL,'public'),(89,0,'cover-5','cover-5',7,'image/png',8798,'main/stores/cover-5.png','[]','2024-11-10 21:40:55','2024-11-10 21:40:55',NULL,'public'),(90,0,'shape-1','shape-1',9,'image/png',1842,'fashion/sliders/shape-1.png','[]','2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,'public'),(91,0,'shape-2','shape-2',9,'image/png',489,'fashion/sliders/shape-2.png','[]','2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,'public'),(92,0,'shape-3','shape-3',9,'image/png',221,'fashion/sliders/shape-3.png','[]','2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,'public'),(93,0,'slider-1','slider-1',9,'image/png',10444,'fashion/sliders/slider-1.png','[]','2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,'public'),(94,0,'slider-2','slider-2',9,'image/png',9843,'fashion/sliders/slider-2.png','[]','2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,'public'),(95,0,'slider-3','slider-3',9,'image/png',11768,'fashion/sliders/slider-3.png','[]','2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,'public'),(96,0,'1','1',10,'image/jpeg',4294,'fashion/product-categories/1.jpg','[]','2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,'public'),(97,0,'2','2',10,'image/jpeg',4294,'fashion/product-categories/2.jpg','[]','2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,'public'),(98,0,'3','3',10,'image/jpeg',4294,'fashion/product-categories/3.jpg','[]','2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,'public'),(99,0,'4','4',10,'image/jpeg',4294,'fashion/product-categories/4.jpg','[]','2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,'public'),(100,0,'5','5',10,'image/jpeg',4294,'fashion/product-categories/5.jpg','[]','2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,'public'),(101,0,'6','6',10,'image/jpeg',4294,'fashion/product-categories/6.jpg','[]','2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,'public'),(102,0,'product-1','product-1',11,'image/png',9803,'fashion/products/product-1.png','[]','2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,'public'),(103,0,'product-2','product-2',11,'image/png',9803,'fashion/products/product-2.png','[]','2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,'public'),(104,0,'product-3','product-3',11,'image/png',9803,'fashion/products/product-3.png','[]','2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,'public'),(105,0,'product-4','product-4',11,'image/png',9803,'fashion/products/product-4.png','[]','2024-11-10 21:40:58','2024-11-10 21:40:58',NULL,'public'),(106,0,'product-5','product-5',11,'image/png',9803,'fashion/products/product-5.png','[]','2024-11-10 21:40:58','2024-11-10 21:40:58',NULL,'public'),(107,0,'product-6','product-6',11,'image/png',9803,'fashion/products/product-6.png','[]','2024-11-10 21:40:58','2024-11-10 21:40:58',NULL,'public'),(108,0,'product-7','product-7',11,'image/png',9803,'fashion/products/product-7.png','[]','2024-11-10 21:40:58','2024-11-10 21:40:58',NULL,'public'),(109,0,'product-8','product-8',11,'image/png',9803,'fashion/products/product-8.png','[]','2024-11-10 21:40:58','2024-11-10 21:40:58',NULL,'public'),(110,0,'1','1',12,'image/jpeg',15433,'main/video/1.jpg','[]','2024-11-10 21:40:58','2024-11-10 21:40:58',NULL,'public'),(111,0,'2','2',12,'image/jpeg',18347,'main/video/2.jpg','[]','2024-11-10 21:40:58','2024-11-10 21:40:58',NULL,'public'),(112,0,'video-1','video-1',12,'video/mp4',4959871,'main/video/video-1.mp4','[]','2024-11-10 21:40:58','2024-11-10 21:40:58',NULL,'public'),(113,0,'video-2','video-2',12,'video/mp4',1077550,'main/video/video-2.mp4','[]','2024-11-10 21:40:58','2024-11-10 21:40:58',NULL,'public'),(114,0,'1','1',13,'image/jpeg',6309,'main/banners/1.jpg','[]','2024-11-10 21:40:59','2024-11-10 21:40:59',NULL,'public'),(115,0,'2','2',13,'image/jpeg',6275,'main/banners/2.jpg','[]','2024-11-10 21:40:59','2024-11-10 21:40:59',NULL,'public'),(116,0,'slider-1','slider-1',13,'image/png',8207,'main/banners/slider-1.png','[]','2024-11-10 21:40:59','2024-11-10 21:40:59',NULL,'public'),(117,0,'slider-2','slider-2',13,'image/png',8497,'main/banners/slider-2.png','[]','2024-11-10 21:40:59','2024-11-10 21:40:59',NULL,'public'),(118,0,'slider-3','slider-3',13,'image/png',6239,'main/banners/slider-3.png','[]','2024-11-10 21:40:59','2024-11-10 21:40:59',NULL,'public'),(119,0,'1','1',14,'image/jpeg',6287,'fashion/banners/1.jpg','[]','2024-11-10 21:40:59','2024-11-10 21:40:59',NULL,'public'),(120,0,'2','2',14,'image/jpeg',5975,'fashion/banners/2.jpg','[]','2024-11-10 21:40:59','2024-11-10 21:40:59',NULL,'public'),(121,0,'3','3',14,'image/jpeg',5975,'fashion/banners/3.jpg','[]','2024-11-10 21:40:59','2024-11-10 21:40:59',NULL,'public'),(122,0,'4','4',14,'image/jpeg',9052,'fashion/banners/4.jpg','[]','2024-11-10 21:41:00','2024-11-10 21:41:00',NULL,'public'),(123,0,'1','1',15,'image/jpeg',4294,'fashion/galleries/1.jpg','[]','2024-11-10 21:41:00','2024-11-10 21:41:00',NULL,'public'),(124,0,'2','2',15,'image/jpeg',4294,'fashion/galleries/2.jpg','[]','2024-11-10 21:41:00','2024-11-10 21:41:00',NULL,'public'),(125,0,'3','3',15,'image/jpeg',4294,'fashion/galleries/3.jpg','[]','2024-11-10 21:41:00','2024-11-10 21:41:00',NULL,'public'),(126,0,'4','4',15,'image/jpeg',4294,'fashion/galleries/4.jpg','[]','2024-11-10 21:41:00','2024-11-10 21:41:00',NULL,'public'),(127,0,'5','5',15,'image/jpeg',4294,'fashion/galleries/5.jpg','[]','2024-11-10 21:41:00','2024-11-10 21:41:00',NULL,'public'),(128,0,'icon-1','icon-1',16,'image/png',4492,'main/contact/icon-1.png','[]','2024-11-10 21:41:00','2024-11-10 21:41:00',NULL,'public'),(129,0,'icon-2','icon-2',16,'image/png',5753,'main/contact/icon-2.png','[]','2024-11-10 21:41:00','2024-11-10 21:41:00',NULL,'public'),(130,0,'icon-3','icon-3',16,'image/png',5987,'main/contact/icon-3.png','[]','2024-11-10 21:41:00','2024-11-10 21:41:00',NULL,'public'),(131,0,'line','line',17,'image/png',6598,'main/shapes/line.png','[]','2024-11-10 21:41:00','2024-11-10 21:41:00',NULL,'public'),(132,0,'quote','quote',17,'image/png',592,'main/shapes/quote.png','[]','2024-11-10 21:41:00','2024-11-10 21:41:00',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'main',NULL,'main',0,'2024-11-10 21:40:48','2024-11-10 21:40:48',NULL),(2,0,'general',NULL,'general',1,'2024-11-10 21:40:48','2024-11-10 21:40:48',NULL),(3,0,'users',NULL,'users',1,'2024-11-10 21:40:49','2024-11-10 21:40:49',NULL),(4,0,'brands',NULL,'brands',1,'2024-11-10 21:40:50','2024-11-10 21:40:50',NULL),(5,0,'customers',NULL,'customers',1,'2024-11-10 21:40:50','2024-11-10 21:40:50',NULL),(6,0,'blog',NULL,'blog',1,'2024-11-10 21:40:53','2024-11-10 21:40:53',NULL),(7,0,'stores',NULL,'stores',1,'2024-11-10 21:40:54','2024-11-10 21:40:54',NULL),(8,0,'fashion',NULL,'fashion',0,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL),(9,0,'sliders',NULL,'sliders',8,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL),(10,0,'product-categories',NULL,'product-categories',8,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL),(11,0,'products',NULL,'products',8,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL),(12,0,'video',NULL,'video',1,'2024-11-10 21:40:58','2024-11-10 21:40:58',NULL),(13,0,'banners',NULL,'banners',1,'2024-11-10 21:40:59','2024-11-10 21:40:59',NULL),(14,0,'banners',NULL,'banners',8,'2024-11-10 21:40:59','2024-11-10 21:40:59',NULL),(15,0,'galleries',NULL,'galleries',8,'2024-11-10 21:41:00','2024-11-10 21:41:00',NULL),(16,0,'contact',NULL,'contact',1,'2024-11-10 21:41:00','2024-11-10 21:41:00',NULL),(17,0,'shapes',NULL,'shapes',1,'2024-11-10 21:41:00','2024-11-10 21:41:00',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-11-10 21:41:00','2024-11-10 21:41:00');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,1,'Botble\\Page\\Models\\Page','/home',NULL,0,'Home',NULL,'_self',1,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(2,1,1,NULL,NULL,'https://shofy.botble.com',NULL,0,'Electronics',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(3,1,1,NULL,NULL,'https://shofy-fashion.botble.com',NULL,0,'Fashion',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(4,1,1,NULL,NULL,'https://shofy-beauty.botble.com',NULL,0,'Beauty',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(5,1,1,NULL,NULL,'https://shofy-jewelry.botble.com',NULL,0,'Jewelry',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(6,1,1,NULL,NULL,'https://shofy-grocery.botble.com',NULL,0,'Grocery',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(7,1,0,NULL,NULL,NULL,NULL,0,'Shop',NULL,'_self',1,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(8,1,7,2,'Botble\\Page\\Models\\Page','/categories',NULL,0,'Shop Categories',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(9,1,7,3,'Botble\\Page\\Models\\Page','/brands',NULL,0,'Shop Brands',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(10,1,7,NULL,NULL,'/products?layout=list',NULL,0,'Shop List',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(11,1,7,NULL,NULL,'/products?layout=grid',NULL,0,'Shop Grid',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(12,1,7,NULL,NULL,'/products/strappy-block-heel-sandals',NULL,0,'Product Detail',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(13,1,7,4,'Botble\\Page\\Models\\Page','/coupons',NULL,0,'Grab Coupons',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(14,1,7,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(15,1,7,NULL,NULL,'/compare',NULL,0,'Compare',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(16,1,7,NULL,NULL,'/wishlist',NULL,0,'Wishlist',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(17,1,7,NULL,NULL,'/orders/tracking',NULL,0,'Track Your Order',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(18,1,0,NULL,NULL,'/stores',NULL,0,'Vendors',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(19,1,0,NULL,NULL,NULL,NULL,0,'Pages',NULL,'_self',1,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(20,1,19,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(21,1,19,NULL,NULL,'/login',NULL,0,'Login',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(22,1,19,NULL,NULL,'/register',NULL,0,'Register',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(23,1,19,NULL,NULL,'/password/reset',NULL,0,'Forgot Password',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(24,1,19,NULL,NULL,'/404',NULL,0,'404 Error',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(25,1,19,NULL,NULL,'/coming-soon',NULL,0,'Coming Soon',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(26,1,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(27,1,26,NULL,NULL,'/blog?layout=grid',NULL,0,'Blog Grid',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(28,1,26,NULL,NULL,'/blog?layout=list',NULL,0,'Blog List',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(29,1,26,NULL,NULL,'/blog/essential-qualities-of-highly-successful-music',NULL,0,'Blog Detail',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(30,1,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(31,2,0,NULL,NULL,'/orders/tracking',NULL,1,'Track Orders',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(32,2,0,11,'Botble\\Page\\Models\\Page','/shipping',NULL,1,'Shipping',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(33,2,0,NULL,NULL,'/wishlist',NULL,1,'Wishlist',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(34,2,0,NULL,NULL,'/customer/overview',NULL,1,'My Account',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(35,2,0,NULL,NULL,'/customer/orders',NULL,1,'Order History',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(36,2,0,NULL,NULL,'/customer/order-returns',NULL,1,'Returns',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(37,3,0,9,'Botble\\Page\\Models\\Page','/our-story',NULL,2,'Our Story',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(38,3,0,10,'Botble\\Page\\Models\\Page','/careers',NULL,2,'Careers',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(39,3,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,2,'Privacy Policy',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(40,3,0,NULL,NULL,'/blog',NULL,2,'Latest News',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00'),(41,3,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,2,'Contact Us',NULL,'_self',0,'2024-11-10 21:41:00','2024-11-10 21:41:00');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-11-10 21:41:00','2024-11-10 21:41:00'),(2,'My Account','my-account','published','2024-11-10 21:41:00','2024-11-10 21:41:00'),(3,'Information','information','published','2024-11-10 21:41:00','2024-11-10 21:41:00');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'button_label','[\"Shop Collection\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-11-10 21:40:57','2024-11-10 21:40:57'),(2,'button_label','[\"Shop Collection\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-11-10 21:40:57','2024-11-10 21:40:57'),(3,'button_label','[\"Shop Collection\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-11-10 21:40:57','2024-11-10 21:40:57'),(4,'faq_ids','[[2,4,7,9,10]]',1,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(5,'faq_ids','[[1,2,4,6,8]]',2,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(6,'faq_ids','[[1,2,5,6,10]]',3,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(7,'faq_ids','[[1,3,5,8,9]]',4,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(8,'faq_ids','[[1,3,7,8,9]]',5,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(9,'faq_ids','[[3,4,5,7,9]]',6,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(10,'faq_ids','[[1,2,4,6,10]]',7,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(11,'faq_ids','[[1,3,7,8,10]]',8,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(12,'faq_ids','[[1,3,7,8,9]]',9,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(13,'faq_ids','[[1,3,4,5,10]]',10,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(14,'faq_ids','[[2,5,6,8,9]]',11,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(15,'faq_ids','[[3,7,8,9,10]]',12,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(16,'faq_ids','[[2,7,8,9,10]]',13,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(17,'faq_ids','[[5,6,7,8,10]]',14,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(18,'faq_ids','[[3,5,6,7,10]]',15,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(19,'faq_ids','[[1,3,4,7,10]]',16,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(20,'faq_ids','[[1,3,4,6,7]]',17,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(21,'faq_ids','[[2,4,5,7,9]]',18,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(22,'faq_ids','[[1,5,6,7,8]]',19,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(23,'faq_ids','[[1,5,6,8,10]]',20,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(24,'faq_ids','[[3,5,6,8,10]]',21,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(25,'faq_ids','[[2,3,4,6,9]]',22,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(26,'faq_ids','[[1,5,7,8,9]]',23,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(27,'faq_ids','[[1,2,3,7,9]]',24,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(28,'faq_ids','[[3,5,6,8,10]]',25,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(29,'faq_ids','[[1,2,3,9,10]]',26,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(30,'faq_ids','[[1,2,3,6,7]]',27,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(31,'faq_ids','[[2,4,6,7,9]]',28,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(32,'faq_ids','[[2,3,6,7,8]]',29,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(33,'faq_ids','[[1,2,4,6,8]]',30,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(34,'faq_ids','[[1,3,4,6,8]]',31,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(35,'faq_ids','[[4,5,6,7,10]]',32,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(36,'faq_ids','[[2,5,6,7,8]]',33,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(37,'faq_ids','[[1,5,6,7,8]]',34,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(38,'faq_ids','[[1,2,3,5,8]]',35,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(39,'faq_ids','[[1,6,7,8,9]]',36,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(40,'faq_ids','[[1,4,5,6,7]]',37,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(41,'faq_ids','[[5,7,8,9,10]]',38,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(42,'faq_ids','[[1,2,3,4,10]]',39,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(43,'faq_ids','[[4,5,6,7,8]]',40,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(44,'faq_ids','[[4,5,8,9,10]]',41,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(45,'faq_ids','[[1,3,4,6,10]]',42,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(46,'faq_ids','[[1,4,5,9,10]]',43,'Botble\\Ecommerce\\Models\\Product','2024-11-10 21:40:58','2024-11-10 21:40:58'),(47,'title','[\"Smartphone \\\\n BLU G91 Pro 2022\"]',1,'Botble\\Ads\\Models\\Ads','2024-11-10 21:41:00','2024-11-10 21:41:00'),(48,'subtitle','[\"Sale 20% off all store\"]',1,'Botble\\Ads\\Models\\Ads','2024-11-10 21:41:00','2024-11-10 21:41:00'),(49,'button_label','[\"Shop Now\"]',1,'Botble\\Ads\\Models\\Ads','2024-11-10 21:41:00','2024-11-10 21:41:00'),(50,'title','[\"HyperX Cloud II \\\\n Wireless\"]',2,'Botble\\Ads\\Models\\Ads','2024-11-10 21:41:00','2024-11-10 21:41:00'),(51,'subtitle','[\"Sale 35% off\"]',2,'Botble\\Ads\\Models\\Ads','2024-11-10 21:41:00','2024-11-10 21:41:00'),(52,'button_label','[\"Shop Now\"]',2,'Botble\\Ads\\Models\\Ads','2024-11-10 21:41:00','2024-11-10 21:41:00'),(53,'title','[\"T-Shirt Tunic \\n Tops Blouse\"]',3,'Botble\\Ads\\Models\\Ads','2024-11-10 21:41:00','2024-11-10 21:41:00'),(54,'button_label','[\"Shop Now\"]',3,'Botble\\Ads\\Models\\Ads','2024-11-10 21:41:00','2024-11-10 21:41:00'),(55,'title','[\"Satchel Tote \\n Crossbody Bags\"]',4,'Botble\\Ads\\Models\\Ads','2024-11-10 21:41:00','2024-11-10 21:41:00'),(56,'button_label','[\"Shop Now\"]',4,'Botble\\Ads\\Models\\Ads','2024-11-10 21:41:00','2024-11-10 21:41:00'),(57,'title','[\"Men\'s Tennis \\n Walking Shoes\"]',5,'Botble\\Ads\\Models\\Ads','2024-11-10 21:41:00','2024-11-10 21:41:00'),(58,'button_label','[\"Shop Now\"]',5,'Botble\\Ads\\Models\\Ads','2024-11-10 21:41:00','2024-11-10 21:41:00'),(59,'title','[\"Short Sleeve Tunic \\n Tops Casual Swing\"]',6,'Botble\\Ads\\Models\\Ads','2024-11-10 21:41:00','2024-11-10 21:41:00'),(60,'button_label','[\"Explore More\"]',6,'Botble\\Ads\\Models\\Ads','2024-11-10 21:41:00','2024-11-10 21:41:00'),(61,'breadcrumb_style','[\"none\"]',1,'Botble\\Page\\Models\\Page','2024-11-10 21:41:00','2024-11-10 21:41:00'),(62,'breadcrumb_style','[\"align-start\"]',2,'Botble\\Page\\Models\\Page','2024-11-10 21:41:00','2024-11-10 21:41:00'),(63,'breadcrumb_style','[\"align-center\"]',7,'Botble\\Page\\Models\\Page','2024-11-10 21:41:00','2024-11-10 21:41:00');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2015_06_18_033822_create_blog_table',1),(6,'2015_06_29_025744_create_audit_history',1),(7,'2016_05_28_112028_create_system_request_logs_table',1),(8,'2016_06_10_230148_create_acl_tables',1),(9,'2016_06_14_230857_create_menus_table',1),(10,'2016_06_17_091537_create_contacts_table',1),(11,'2016_06_28_221418_create_pages_table',1),(12,'2016_10_03_032336_create_languages_table',1),(13,'2016_10_05_074239_create_setting_table',1),(14,'2016_10_07_193005_create_translations_table',1),(15,'2016_10_13_150201_create_galleries_table',1),(16,'2016_11_28_032840_create_dashboard_widget_tables',1),(17,'2016_12_16_084601_create_widgets_table',1),(18,'2017_05_09_070343_create_media_tables',1),(19,'2017_05_18_080441_create_payment_tables',1),(20,'2017_07_11_140018_create_simple_slider_table',1),(21,'2017_10_24_154832_create_newsletter_table',1),(22,'2017_11_03_070450_create_slug_table',1),(23,'2018_07_09_214610_create_testimonial_table',1),(24,'2018_07_09_221238_create_faq_table',1),(25,'2019_01_05_053554_create_jobs_table',1),(26,'2019_08_19_000000_create_failed_jobs_table',1),(27,'2019_11_18_061011_create_country_table',1),(28,'2019_12_14_000001_create_personal_access_tokens_table',1),(29,'2020_03_05_041139_create_ecommerce_tables',1),(30,'2020_11_18_150916_ads_create_ads_table',1),(31,'2021_01_01_044147_ecommerce_create_flash_sale_table',1),(32,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',1),(33,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',1),(34,'2021_02_16_092633_remove_default_value_for_author_type',1),(35,'2021_02_18_073505_update_table_ec_reviews',1),(36,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',1),(37,'2021_03_10_025153_change_column_tax_amount',1),(38,'2021_03_20_033103_add_column_availability_to_table_ec_products',1),(39,'2021_03_27_144913_add_customer_type_into_table_payments',1),(40,'2021_04_28_074008_ecommerce_create_product_label_table',1),(41,'2021_05_24_034720_make_column_currency_nullable',1),(42,'2021_05_31_173037_ecommerce_create_ec_products_translations',1),(43,'2021_07_06_030002_create_marketplace_table',1),(44,'2021_08_09_161302_add_metadata_column_to_payments_table',1),(45,'2021_08_17_105016_remove_column_currency_id_in_some_tables',1),(46,'2021_08_30_142128_add_images_column_to_ec_reviews_table',1),(47,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',1),(48,'2021_10_04_030050_add_column_created_by_to_table_ec_products',1),(49,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',1),(50,'2021_10_05_122616_add_status_column_to_ec_customers_table',1),(51,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',1),(52,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',1),(53,'2021_10_19_020859_update_metadata_field',1),(54,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(55,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',1),(56,'2021_11_23_071403_correct_languages_for_product_variations',1),(57,'2021_11_28_031808_add_product_tags_translations',1),(58,'2021_12_01_031123_add_featured_image_to_ec_products',1),(59,'2021_12_02_035301_add_ads_translations_table',1),(60,'2021_12_03_030600_create_blog_translations',1),(61,'2021_12_03_075608_create_page_translations',1),(62,'2021_12_03_082134_create_faq_translations',1),(63,'2021_12_03_082953_create_gallery_translations',1),(64,'2021_12_03_083642_create_testimonials_translations',1),(65,'2021_12_03_084118_create_location_translations',1),(66,'2021_12_03_094518_migrate_old_location_data',1),(67,'2021_12_06_031304_update_table_mp_customer_revenues',1),(68,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',1),(69,'2022_01_01_033107_update_table_ec_shipments',1),(70,'2022_01_16_085908_improve_plugin_location',1),(71,'2022_02_16_042457_improve_product_attribute_sets',1),(72,'2022_03_22_075758_correct_product_name',1),(73,'2022_04_19_113334_add_index_to_ec_products',1),(74,'2022_04_19_113923_add_index_to_table_posts',1),(75,'2022_04_20_100851_add_index_to_media_table',1),(76,'2022_04_20_101046_add_index_to_menu_table',1),(77,'2022_04_28_144405_remove_unused_table',1),(78,'2022_04_30_034048_create_gallery_meta_translations_table',1),(79,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',1),(80,'2022_05_18_143720_add_index_to_table_ec_product_categories',1),(81,'2022_06_16_095633_add_index_to_some_tables',1),(82,'2022_06_28_151901_activate_paypal_stripe_plugin',1),(83,'2022_06_30_035148_create_order_referrals_table',1),(84,'2022_07_07_153354_update_charge_id_in_table_payments',1),(85,'2022_07_10_034813_move_lang_folder_to_root',1),(86,'2022_07_24_153815_add_completed_at_to_ec_orders_table',1),(87,'2022_08_04_051940_add_missing_column_expires_at',1),(88,'2022_08_04_052122_delete_location_backup_tables',1),(89,'2022_08_14_032836_create_ec_order_returns_table',1),(90,'2022_08_14_033554_create_ec_order_return_items_table',1),(91,'2022_08_15_040324_add_billing_address',1),(92,'2022_08_30_091114_support_digital_products_table',1),(93,'2022_09_01_000001_create_admin_notifications_tables',1),(94,'2022_09_13_095744_create_options_table',1),(95,'2022_09_13_104347_create_option_value_table',1),(96,'2022_10_05_163518_alter_table_ec_order_product',1),(97,'2022_10_12_041517_create_invoices_table',1),(98,'2022_10_12_142226_update_orders_table',1),(99,'2022_10_13_024916_update_table_order_returns',1),(100,'2022_10_14_024629_drop_column_is_featured',1),(101,'2022_10_19_152916_add_columns_to_mp_stores_table',1),(102,'2022_10_20_062849_create_mp_category_sale_commissions_table',1),(103,'2022_10_21_030830_update_columns_in_ec_shipments_table',1),(104,'2022_10_28_021046_update_columns_in_ec_shipments_table',1),(105,'2022_11_02_071413_add_more_info_for_store',1),(106,'2022_11_02_080444_add_tax_info',1),(107,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',1),(108,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(109,'2022_11_19_041643_add_ec_tax_product_table',1),(110,'2022_12_02_093615_update_slug_index_columns',1),(111,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',1),(112,'2022_12_17_041532_fix_address_in_order_invoice',1),(113,'2022_12_26_070329_create_ec_product_views_table',1),(114,'2023_01_04_033051_fix_product_categories',1),(115,'2023_01_09_050400_add_ec_global_options_translations_table',1),(116,'2023_01_10_093754_add_missing_option_value_id',1),(117,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',1),(118,'2023_01_26_021854_add_ec_customer_used_coupons_table',1),(119,'2023_01_30_024431_add_alt_to_media_table',1),(120,'2023_02_01_062030_add_store_translations',1),(121,'2023_02_08_015900_update_options_column_in_ec_order_product_table',1),(122,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',1),(123,'2023_02_16_042611_drop_table_password_resets',1),(124,'2023_02_17_023648_fix_store_prefix',1),(125,'2023_02_27_095752_remove_duplicate_reviews',1),(126,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',1),(127,'2023_04_17_062645_add_open_in_new_tab',1),(128,'2023_04_21_082427_create_ec_product_categorizables_table',1),(129,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(130,'2023_04_23_061847_increase_state_translations_abbreviation_column',1),(131,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',1),(132,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(133,'2023_05_17_025812_fix_invoice_issue',1),(134,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',1),(135,'2023_05_27_144611_fix_exchange_rate_setting',1),(136,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',1),(137,'2023_06_30_042512_create_ec_order_tax_information_table',1),(138,'2023_07_06_011444_create_slug_translations_table',1),(139,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',1),(140,'2023_07_26_041451_add_more_columns_to_location_table',1),(141,'2023_07_27_041451_add_more_columns_to_location_translation_table',1),(142,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',1),(143,'2023_08_11_060908_create_announcements_table',1),(144,'2023_08_15_064505_create_ec_tax_rules_table',1),(145,'2023_08_15_073307_drop_unique_in_states_cities_translations',1),(146,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',1),(147,'2023_08_21_090810_make_page_content_nullable',1),(148,'2023_08_22_094114_drop_unique_for_barcode',1),(149,'2023_08_29_074620_make_column_author_id_nullable',1),(150,'2023_08_29_075308_make_column_user_id_nullable',1),(151,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',1),(152,'2023_09_07_094312_add_index_to_product_sku_and_translations',1),(153,'2023_09_14_021936_update_index_for_slugs_table',1),(154,'2023_09_14_022423_add_index_for_language_table',1),(155,'2023_09_19_024955_create_discount_product_categories_table',1),(156,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',1),(157,'2023_10_21_065016_make_state_id_in_table_cities_nullable',1),(158,'2023_11_07_023805_add_tablet_mobile_image',1),(159,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',1),(160,'2023_11_14_033417_change_request_column_in_table_audit_histories',1),(161,'2023_11_17_063408_add_description_column_to_faq_categories_table',1),(162,'2023_11_22_154643_add_unique_in_table_ec_products_variations',1),(163,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',1),(164,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',1),(165,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(166,'2023_12_12_105220_drop_translations_table',1),(167,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(168,'2023_12_25_040604_ec_create_review_replies_table',1),(169,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',1),(170,'2024_01_16_070706_fix_translation_tables',1),(171,'2024_01_23_075227_add_proof_file_to_ec_orders_table',1),(172,'2024_03_14_041050_migrate_lazy_load_theme_options',1),(173,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',1),(174,'2024_03_21_100334_update_section_title_shape',1),(175,'2024_03_25_000001_update_captcha_settings_for_contact',1),(176,'2024_03_25_000001_update_captcha_settings_for_newsletter',1),(177,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',1),(178,'2024_03_27_062402_create_ec_customer_deletion_requests_table',1),(179,'2024_03_29_042242_migrate_old_captcha_settings',1),(180,'2024_03_29_093946_create_ec_order_return_histories_table',1),(181,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',1),(182,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',1),(183,'2024_04_03_062451_add_cover_image_to_table_mp_stores',1),(184,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(185,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',1),(186,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',1),(187,'2024_04_19_063914_create_custom_fields_table',1),(188,'2024_04_27_100730_improve_analytics_setting',1),(189,'2024_05_07_073153_improve_table_wishlist',1),(190,'2024_05_07_082630_create_mp_messages_table',1),(191,'2024_05_07_093703_add_missing_zip_code_into_table_store_locators',1),(192,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(193,'2024_05_15_021503_fix_invoice_path',1),(194,'2024_06_20_160724_create_ec_shared_wishlists_table',1),(195,'2024_06_28_025104_add_notify_attachment_updated_column_to_ec_products_table',1),(196,'2024_07_03_030900_add_downloaded_at_column_to_ec_order_product_table',1),(197,'2024_07_04_083133_create_payment_logs_table',1),(198,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(199,'2024_07_12_100000_change_random_hash_for_media',1),(200,'2024_07_14_071826_make_customer_email_nullable',1),(201,'2024_07_15_104916_add_video_media_column_to_ec_products_table',1),(202,'2024_07_19_131849_add_documents_to_mp_stores_table',1),(203,'2024_07_26_052530_add_percentage_to_tax_rules_table',1),(204,'2024_07_30_091615_fix_order_column_in_categories_table',1),(205,'2024_08_14_123028_add_customer_delivered_confirmed_at_column_to_ec_shipments_table',1),(206,'2024_08_17_094600_add_image_into_countries',1),(207,'2024_08_18_083119_add_tax_id_column_to_mp_stores_table',1),(208,'2024_08_19_132849_create_specification_tables',1),(209,'2024_08_27_141244_add_block_reason_to_ec_customers_table',1),(210,'2024_09_07_060744_add_author_column_to_specification_tables',1),(211,'2024_09_14_064023_add_can_use_with_flash_sale_column_to_ec_discounts_table',1),(212,'2024_09_14_100108_add_stripe_connect_details_to_ec_customers_table',1),(213,'2024_09_17_125408_add_square_logo_to_stores_table',1),(214,'2024_09_25_073928_remove_wrong_product_slugs',1),(215,'2024_09_30_024515_create_sessions_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_messages`
--

DROP TABLE IF EXISTS `mp_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_messages`
--

LOCK TABLES `mp_messages` WRITE;
/*!40000 ALTER TABLE `mp_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_square` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `government_id_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','dana70@example.org','+18604381670','44311 Cormier Plaza','ME','Rhode Island','Emmerichstad',2,'main/stores/1.png',NULL,'main/stores/cover-2.png','Pariatur distinctio nihil est sint debitis tempora in. Perferendis quis eum alias magnam minima. Fuga ducimus reiciendis sunt incidunt in minus quos. Quibusdam facilis fugit molestiae quasi. Odit voluptas consequuntur quia recusandae. Accusantium ut consequuntur alias qui amet. Exercitationem expedita voluptatem laborum ut sit.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL,NULL,NULL,NULL),(2,'Global Office','damion25@example.net','+17815155746','8233 Lavern Wall','IO','Maryland','New Shaynafurt',4,'main/stores/2.png',NULL,'main/stores/cover-5.png','Velit dignissimos perferendis sit cumque consectetur voluptas provident assumenda. Explicabo quod est natus vero numquam ab rerum. Dicta assumenda fugiat neque id. Eos rerum et pariatur aut. Fugiat qui deleniti fugit laudantium. Neque eum ab aliquid sint velit consequuntur. Sunt qui et quis.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL,NULL,NULL,NULL),(3,'Young Shop','aidan.rogahn@example.net','+14174359608','8060 Stracke Knoll','CX','Pennsylvania','North Lillystad',4,'main/stores/3.png',NULL,'main/stores/cover-5.png','Fugit veritatis itaque dolor maxime vel vitae eum. Quas corrupti deserunt nam dignissimos voluptatem. Ipsa unde rerum deleniti ut consequatur. Numquam nam vel in rem. Architecto recusandae corporis cumque in voluptas. Tempore quia et id aliquam. Reiciendis atque quia odio non et. Error provident adipisci inventore porro aut ipsum id.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL,NULL,NULL,NULL),(4,'Global Store','seamus93@example.com','+13517357531','82597 Cierra Key','GE','Indiana','Lake Jazlyn',5,'main/stores/4.png',NULL,'main/stores/cover-2.png','Quasi iusto necessitatibus reiciendis et. Possimus sint asperiores expedita rerum saepe. Dolor eum recusandae quia. Accusamus autem rem perspiciatis laboriosam nobis nesciunt animi necessitatibus. Eveniet nulla ad vero ipsam quis autem non. Quos nesciunt consequatur odio ipsum. Ut et non saepe qui reiciendis quia.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL,NULL,NULL,NULL),(5,'Robert’s Store','sierra.kulas@example.net','+17377808296','95959 Boyle Island Suite 470','PK','Rhode Island','Charlotteview',8,'main/stores/5.png',NULL,'main/stores/cover-4.png','Nihil et est fugit et et. Qui doloremque accusamus perferendis neque et autem. Placeat odio ea recusandae et enim. Reprehenderit dolorum explicabo porro molestiae quos eum eum. Nam vel dolorum doloremque rem ab. Dolorem et vero rerum debitis. Non qui quidem ratione quasi est sapiente aut magni. In ea dolore ea nostrum esse eligendi.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL,NULL,NULL,NULL),(6,'Stouffer','hazle.okeefe@example.net','+17697585815','231 Genoveva Village Suite 448','NP','Louisiana','Trantowland',8,'main/stores/6.png',NULL,'main/stores/cover-1.png','Fugiat sequi nihil expedita enim. Maxime repudiandae enim iste provident aut id laudantium. Enim voluptatem quia quas nesciunt et sit repellat. Dolores perspiciatis et aut sit. Maxime asperiores nostrum vero consequatur. Unde eaque nam sed reiciendis est harum.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL,NULL,NULL,NULL),(7,'StarKist','adam.murazik@example.net','+15643847272','68364 Emard Mews','PR','New Hampshire','Kevonberg',8,'main/stores/7.png',NULL,'main/stores/cover-5.png','Odit quibusdam sed rem omnis qui. Placeat quae veniam ad nesciunt vel. Ad nobis enim consequatur sint corporis at cum incidunt. Molestiae accusamus quisquam voluptas fugit quas aut sed. Hic quis ipsum eos et. Est aut id aliquam nihil magnam ratione. Maiores quia est sunt sunt autem voluptas sed ex. Quam eos consequatur culpa incidunt recusandae.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL,NULL,NULL,NULL),(8,'Old El Paso','carol.emmerich@example.net','+17573844239','4484 Martine Lodge Suite 580','NO','Nevada','North Ottis',2,'main/stores/8.png',NULL,'main/stores/cover-3.png','Sed tempora beatae et nisi ipsa. Earum nisi sed voluptatibus itaque. Aperiam qui eaque in consequatur. Quas voluptatem laboriosam veritatis accusamus. Omnis maiores quia vitae voluptatum sunt. Consequuntur fuga cum dolorum enim voluptatem eveniet aperiam. Dolorem sed veritatis quibusdam provident recusandae ut ea qui.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-11-10 21:40:57','2024-11-10 21:40:57',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$.iVpYeexz2ovypgOWwWtuuPlG6x4U4zMAuuQ6oXteWp7xI3Shq0BC','{\"name\":\"Jacquelyn Hauck\",\"number\":\"+18316533367\",\"full_name\":\"Mrs. Serenity Bruen Sr.\",\"description\":\"Kevin Kris\"}','2024-11-10 21:40:55','2024-11-10 21:40:55','bank_transfer',NULL),(2,3,0.00,0.00,0.00,'$2y$12$XY8/EpMYlLxaSF1vCT2jGOD28XVAYnMYakY7c5nRlNijpRhXTWX3C','{\"name\":\"Eric Rice\",\"number\":\"+12026946628\",\"full_name\":\"Prof. Silas Lang\",\"description\":\"Prof. Allene Wunsch\"}','2024-11-10 21:40:55','2024-11-10 21:40:55','bank_transfer',NULL),(3,4,0.00,0.00,0.00,'$2y$12$9zwm5ukzpCRXApYb0OGFrOfgBn7dP2CMTAndX3Kd.ctueJG5GxYeS','{\"name\":\"Kirsten Hintz\",\"number\":\"+15105198485\",\"full_name\":\"Quentin Bergstrom\",\"description\":\"Thomas Lindgren\"}','2024-11-10 21:40:56','2024-11-10 21:40:56','bank_transfer',NULL),(4,5,0.00,0.00,0.00,'$2y$12$HnAsvU/RLxUIF0p5LjjC.e0KADYWPvJ3EIQ68358ze.J1RDwLviFy','{\"name\":\"Eino Schuppe\",\"number\":\"+18543264341\",\"full_name\":\"Dan O\'Kon\",\"description\":\"Sonny Gorczany\"}','2024-11-10 21:40:56','2024-11-10 21:40:56','bank_transfer',NULL),(5,6,0.00,0.00,0.00,'$2y$12$.F8bVxInxX11gMCrtO0/R.JtGCZ/XBhFs5B2nlzw01iMcn7.1sa/K','{\"name\":\"Fatima Hoeger PhD\",\"number\":\"+17438090802\",\"full_name\":\"Jaron Dibbert\",\"description\":\"Lenny Abbott\"}','2024-11-10 21:40:56','2024-11-10 21:40:56','bank_transfer',NULL),(6,7,0.00,0.00,0.00,'$2y$12$TcXO6a381fcZJ/i55m31y.pxpLzpd8XIUvPUIKugsuiOz.1oke/AW','{\"name\":\"Dr. Hoyt Spencer MD\",\"number\":\"+13189473614\",\"full_name\":\"Emerald King\",\"description\":\"Art Reichert III\"}','2024-11-10 21:40:56','2024-11-10 21:40:56','bank_transfer',NULL),(7,8,0.00,0.00,0.00,'$2y$12$qls3chxA5SsjzaBKbEMZ/OUIpBAGjkdg8/hQwvP44H9OwJk7XipK.','{\"name\":\"Caden Hilpert\",\"number\":\"+17473647721\",\"full_name\":\"Miss Amya Ernser DVM\",\"description\":\"Kay Flatley Sr.\"}','2024-11-10 21:40:57','2024-11-10 21:40:57','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','[simple-slider style=\"2\" key=\"home-slider\" shape_1=\"fashion/sliders/shape-1.png\" shape_2=\"fashion/sliders/shape-2.png\" shape_3=\"fashion/sliders/shape-3.png\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider][ads style=\"2\" key_1=\"WXAUTIJV1QU0\" key_2=\"7Z5RXBBWV7J2\" key_3=\"JY08TDO8FG1E\" full_width=\"1\" enable_lazy_loading=\"no\"][/ads][ecommerce-categories style=\"slider\" title=\"Popular on the Shofy store.\" subtitle=\"Shop by Category\" category_ids=\"1,2,7,11,18,19\" background_color=\"#F3F5F7\" enable_lazy_loading=\"no\"][/ecommerce-categories][ecommerce-product-groups title=\"Customer Favorite Style Product\" subtitle=\"All Product Shop\" limit=\"8\" tabs=\"all,featured,on-sale,trending,top-rated\" enable_lazy_loading=\"yes\"][/ecommerce-product-groups][ecommerce-products style=\"slider-full-width\" title=\"This Week\'s Featured\" subtitle=\"Shop by Category\" collection_ids=\"1\" limit=\"5\" with_sidebar=\"1\" background_color=\"#EFF1F5\" enable_lazy_loading=\"yes\"][/ecommerce-products][ecommerce-products title=\"Trending Arrivals\" subtitle=\"More to Discover\" collection_ids=\"1\" limit=\"5\" with_sidebar=\"1\" ads_ids=\"6\" style=\"slider\" ads=\"VKJNCBIBQC1O\" enable_lazy_loading=\"yes\"][/ecommerce-products][ecommerce-products title=\"This Week\'s Featured\" subtitle=\"Best Seller This Week\'s\" by=\"specify\" product_ids=\"3,4,5,6\" limit=\"12\" style=\"grid\" button_label=\"Shop All Now\" button_url=\"/products\" enable_lazy_loading=\"yes\"][/ecommerce-products][testimonials style=\"1\" title=\"The Review Are In\" testimonial_ids=\"2,3,4\" enable_lazy_loading=\"yes\"][/testimonials][blog-posts title=\"Latest News & Articles\" subtitle=\"Our Blog & News\" type=\"recent\" limit=\"3\" button_label=\"Discover More\" button_url=\"/blog\" enable_lazy_loading=\"yes\"][/blog-posts][site-features style=\"2\" quantity=\"4\" title_1=\"Free Delivery\" description_1=\"Orders from all item\" icon_1=\"ti ti-truck-delivery\" title_2=\"Return & Refund\" description_2=\"Money-back guarantee\" icon_2=\"ti ti-currency-dollar\" title_3=\"Member Discount\" description_3=\"Every order over $140.00\" icon_3=\"ti ti-discount-2\" title_4=\"Support 24/7\" description_4=\"Contact us 24 hours a day\" icon_4=\"ti ti-headset\" enable_lazy_loading=\"yes\"][/site-features][gallery style=\"2\" limit=\"5\" enable_lazy_loading=\"yes\"][/gallery]',1,NULL,'full-width',NULL,'published','2024-11-10 21:41:00','2024-11-10 21:41:00'),(2,'Categories','[ads style=\"2\" key_1=\"UROL9F9ZZVAA\" key_2=\"B30VDBKO7SBF\" enable_lazy_loading=\"yes\"][/ads][ecommerce-categories style=\"slider\" title=\"Popular on the Shofy store.\" subtitle=\"Shop by Category\" category_ids=\"1,2,7,11,18,19\" background_color=\"#F3F5F7\" enable_lazy_loading=\"yes\"][/ecommerce-categories]',1,NULL,'full-width',NULL,'published','2024-11-10 21:41:00','2024-11-10 21:41:00'),(3,'Brands','[ecommerce-brands show_brand_name=\"1\" enable_lazy_loading=\"yes\"][/ecommerce-brands]',1,NULL,NULL,NULL,'published','2024-11-10 21:41:00','2024-11-10 21:41:00'),(4,'Coupons','[ecommerce-coupons coupon_ids=\"1,2,3,4,5,6\" enable_lazy_loading=\"yes\"][/ecommerce-coupons]',1,NULL,'full-width',NULL,'published','2024-11-10 21:41:00','2024-11-10 21:41:00'),(5,'Blog',NULL,1,NULL,'full-width',NULL,'published','2024-11-10 21:41:00','2024-11-10 21:41:00'),(6,'Contact','[contact-form show_contact_form=&quot;1&quot; title=&quot;Sent A Message&quot; quantity=&quot;2&quot; icon_1=&quot;main/contact/icon-1.png&quot; content_1=&quot;contact@shofy.com &lt;br&gt; &lt;strong&gt;+670 413 90 762&lt;/strong&gt;&quot; icon_2=&quot;main/contact/icon-2.png&quot; content_2=&quot;502 New St, Brighton VIC 3186, Australia&quot; show_social_info=&quot;1&quot; social_info_label=&quot;Find on social media&quot; social_info_icon=&quot;main/contact/icon-3.png&quot;][/contact-form][google-map]502 New Street, Brighton VIC, Australia[/google-map]',1,NULL,'full-width',NULL,'published','2024-11-10 21:41:00','2024-11-10 21:41:00'),(7,'FAQs','[faqs style=\"group\" title=\"Frequently Ask Questions\" description=\"Below are frequently asked questions, you may find the answer for yourself.\" category_ids=\"1,2,3\" expand_first_time=\"1\"][/faqs]',1,NULL,NULL,NULL,'published','2024-11-10 21:41:00','2024-11-10 21:41:00'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2024-11-10 21:41:00','2024-11-10 21:41:00'),(9,'Our Story','<h4>A passion for handcrafted coffee, brewed with love and community.</h4>\n\n<p>\n    We are a small, family-owned coffee roaster dedicated to bringing the finest, ethically sourced beans to your cup. Our story began in a cozy kitchen, fueled by a shared passion for the rich aroma and invigorating taste of freshly brewed coffee. We dreamt of creating a space where people could connect over a warm cup, share stories, and experience the joy of handcrafted coffee.\n</p>\n\n<h4>From Humble Beginnings to Roasting Success:</h4>\n\n<p>\n    Our journey started with a small coffee roaster nestled in our garage. We spent countless hours experimenting with different roasting profiles, meticulously cupping each batch to achieve the perfect balance of flavor and aroma. Driven by a desire to make a difference, we built relationships with sustainable coffee farms around the world, ensuring fair trade practices and the highest quality beans.\n</p>\n\n<h4>Milestones and More to Come:</h4>\n\n<p>\n    Our dedication to quality and community resonated with coffee lovers, and our small business quickly grew. We opened our first cafe, a warm and inviting space where people could gather, savor our freshly roasted coffee, and connect with friends and neighbors. We\'ve continued to expand, now offering a variety of handcrafted coffee beverages, alongside delicious pastries and light bites.\n</p>\n\n<h4>Values at Our Core:</h4>\n\n<p>\n    At the heart of everything we do lies our commitment to ethical sourcing, sustainable practices, and building meaningful connections. We believe in supporting the communities that cultivate our coffee beans, ensuring fair wages and responsible farming methods. Every cup you enjoy contributes to a positive impact, one sip at a time.\n</p>\n\n<h4>Join us on our journey!</h4>\n\n<p>\n    We invite you to explore our world of coffee, from the rich diversity of our bean origins to the unique flavors crafted through meticulous roasting. Visit our cafe, discover your perfect cup, and become part of our ever-growing coffee community. Let\'s connect over a cup, share stories, and celebrate the simple joy of a well-brewed coffee.\n</p>\n',1,NULL,NULL,NULL,'published','2024-11-10 21:41:00','2024-11-10 21:41:00'),(10,'Careers','<h3>Careers: Be Part of Our Brewing Legacy</h3>\n\n<p>\n    At Shofy, we\'re not just brewing coffee, we\'re brewing a legacy. Since our humble beginnings in 2024, we\'ve grown from a small, family-owned roaster to a thriving coffee haven. But our passion for quality, community, and sustainability remains at the core of everything we do.\n</p>\n\n<h4>Why Join Our Team?</h4>\n\n<ul>\n    <li>\n        <p><strong>Become a Coffee Connoisseur</strong>: Immerse yourself in the world of coffee, learning from experienced roasters and baristas about bean origins, roasting techniques, and crafting the perfect cup.</p>\n    </li>\n    <li>\n        <p><strong>Fuel Your Passion</strong>: Contribute to our mission by sourcing ethically, promoting sustainable practices, and fostering positive relationships with coffee-growing communities around the globe.</p>\n    </li>\n    <li>\n        <p><strong>Grow with Us</strong>: We offer comprehensive training programs and opportunities for professional development, helping you refine your skills and advance your career in the coffee industry.</p>\n    </li>\n    <li>\n        <p><strong>Be Part of the Family</strong>: We cultivate a collaborative and supportive work environment where your unique talents and perspectives are valued.</p>\n    </li>\n</ul>\n\n<h4>Current Openings:</h4>\n\n<ul>\n    <li>\n        <p><strong>Coffee Roaster</strong>: Play a vital role in our roasting process, meticulously crafting unique flavor profiles and ensuring the highest quality beans reach our customers.</p>\n    </li>\n    <li>\n        <p><strong>Barista</strong>: Become a coffee ambassador, welcoming guests with a smile, crafting their perfect cup, and sharing your knowledge and passion for coffee.</p>\n    </li>\n    <li>\n        <p><strong>Cafe Manager</strong>: Lead your team in creating a warm and inviting atmosphere, overseeing daily operations, and ensuring exceptional customer service.</p>\n    </li>\n</ul>\n\n<h4>We are always looking for passionate individuals who share our values:</h4>\n\n<ul>\n    <li>\n        <p>A genuine love for coffee and a desire to learn everything there is to know about it.</p>\n    </li>\n    <li>\n        <p>A commitment to ethical sourcing, sustainability, and social responsibility.</p>\n    </li>\n    <li>\n        <p>Excellent communication and interpersonal skills to build rapport with colleagues and customers.</p>\n    </li>\n    <li>\n        <p>A positive attitude, a willingness to learn, and a collaborative spirit.</p>\n    </li>\n</ul>\n\n<p>Ready to join our brewing legacy?</p>\n\n<p>\n    Submit your resume and cover letter, telling us why you\'re a perfect fit for our team. We look forward to meeting passionate individuals who are ready to brew the future with us, one cup at a time.\n</p>\n',1,NULL,NULL,NULL,'published','2024-11-10 21:41:00','2024-11-10 21:41:00'),(11,'Shipping','<section>\n    <h2>Shipping Methods</h2>\n    <p>We offer several shipping methods to choose from:</p>\n    <ul>\n        <li>Standard Shipping - 3 to 5 business days</li>\n        <li>Express Shipping - 1 to 2 business days</li>\n        <li>International Shipping - 7 to 14 business days</li>\n    </ul>\n    <p>Please note that shipping times may vary depending on your location and other factors.</p>\n</section>\n\n<section>\n    <h2>Shipping Costs</h2>\n    <p>Shipping costs are calculated based on the weight of your order and the shipping method selected during checkout.</p>\n    <p>You can view the estimated shipping costs in your shopping cart before completing your purchase.</p>\n</section>\n\n<section>\n    <h2>Tracking Your Order</h2>\n    <p>Once your order has been shipped, you will receive a confirmation email with a tracking number.</p>\n    <p>You can use this tracking number to monitor the status of your delivery on our website or through the shipping carrier\'s website.</p>\n</section>\n\n<section>\n    <h2>Shipping Restrictions</h2>\n    <p>Some items may be subject to shipping restrictions due to size, weight, or destination.</p>\n    <p>If your order contains any restricted items, we will notify you during the checkout process.</p>\n</section>\n',1,NULL,NULL,NULL,'published','2024-11-10 21:41:00','2024-11-10 21:41:00'),(12,'Coming Soon','[coming-soon title=\"Get Notified When We Launch\" countdown_time=\"2025-05-30\" address=\" 58 Street Commercial Road Fratton, Australia\" hotline=\"+123456789\" business_hours=\"Mon – Sat: 8 am – 5 pm, Sunday: CLOSED\" show_social_links=\"0,1\" image=\"main/general/contact-img.jpg\"][/coming-soon]',1,NULL,'without-layout',NULL,'published','2024-11-10 21:41:00','2024-11-10 21:41:00'),(13,'Return Policy','<h1>Return Policy</h1>\n<p>Thank you for shopping at [Your Company Name]. We are committed to ensuring that you are completely satisfied with\n    your purchase. If for any reason you are not entirely happy with your purchase, we\'re here to help.</p>\n\n<h2>Returns</h2>\n<p>You have [X] calendar days to return an item from the date you received it.</p>\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. Your item must\n    be in the original packaging.</p>\n<p>Your item needs to have the receipt or proof of purchase.</p>\n\n<h2>Refunds</h2>\n<p>Once we receive your item, we will inspect it and notify you that we have received your returned item. We will\n    immediately notify you on the status of your refund after inspecting the item.</p>\n<p>If your return is approved, we will initiate a refund to your credit card (or original method of payment). You will\n    receive the credit within a certain amount of days, depending on your card issuer\'s policies.</p>\n\n<h2>Shipping</h2>\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are\n    non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n\n<h2>Contact Us</h2>\n<p>If you have any questions on how to return your item to us, contact us at:</p>\n<ul>\n    <li>Email: [Your Email Address]</li>\n    <li>Phone: [Your Phone Number]</li>\n    <li>Address: [Your Physical Address]</li>\n</ul>\n',1,NULL,NULL,NULL,'published','2024-11-10 21:41:00','2024-11-10 21:41:00');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (2,1),(3,1),(6,2),(3,3),(2,3),(4,4),(3,4),(3,5),(5,5),(5,6),(6,6),(6,7),(3,8),(6,8),(5,9),(2,9),(4,10),(1,10),(3,11),(6,11),(4,12),(1,12),(6,13),(3,13),(6,14),(3,14),(6,15),(4,15),(6,16),(1,16),(2,17),(3,17),(6,18),(4,18);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (4,1),(1,1),(3,1),(2,2),(8,2),(7,2),(6,3),(1,3),(4,3),(8,4),(4,4),(6,4),(5,5),(6,5),(4,5),(5,6),(6,6),(4,6),(7,7),(5,7),(6,7),(5,8),(4,8),(3,8),(3,9),(6,9),(8,9),(2,10),(8,10),(1,10),(3,11),(7,11),(2,12),(5,12),(4,12),(1,13),(3,13),(4,13),(3,14),(2,14),(2,15),(3,15),(1,16),(2,16),(7,16),(2,17),(3,17),(5,17),(8,18),(5,18),(3,18);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','And he got up this morning, but I shall ever see such a rule at processions; \'and besides, what would happen next. \'It\'s--it\'s a very little use without my shoulders. Oh, how I wish you were INSIDE.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-8.jpg',2164,NULL,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','Alice could not stand, and she tried to open it; but, as the soldiers had to stop and untwist it. After a while she was surprised to find that the hedgehog had unrolled itself, and began staring at.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-10.jpg',1744,NULL,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(3,'The Top 2020 Handbag Trends to Know','Alice, very earnestly. \'I\'ve had nothing yet,\' Alice replied eagerly, for she thought, and looked along the sea-shore--\' \'Two lines!\' cried the Gryphon, \'you first form into a butterfly, I should.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-4.jpg',1155,NULL,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(4,'How to Match the Color of Your Handbag With an Outfit','Queen\'s shrill cries to the seaside once in a sort of thing that would happen: \'\"Miss Alice! Come here directly, and get ready to play croquet.\' Then they both cried. \'Wake up, Dormouse!\' And they.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-7.jpg',1209,NULL,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(5,'How to Care for Leather Bags','However, this bottle does. I do wonder what CAN have happened to you? Tell us all about it!\' Last came a little way off, panting, with its arms folded, frowning like a sky-rocket!\' \'So you did, old.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-6.jpg',568,NULL,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','Has lasted the rest waited in silence. Alice was very like a serpent. She had not gone far before they saw the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' said the Cat.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-5.jpg',1222,NULL,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(7,'Essential Qualities of Highly Successful Music','Said his father; \'don\'t give yourself airs! Do you think I may as well go back, and see what was on the table. \'Have some wine,\' the March Hare took the cauldron of soup off the mushroom, and.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-5.jpg',1985,NULL,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(8,'9 Things I Love About Shaving My Head','The King looked anxiously round, to make SOME change in my size; and as it went, as if he thought it would be QUITE as much as she could, for her to speak with. Alice waited a little, and then the.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-3.jpg',1460,NULL,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(9,'Why Teamwork Really Makes The Dream Work','Alice. \'I wonder how many miles I\'ve fallen by this time, as it went, \'One side of WHAT? The other side of the country is, you know. Come on!\' So they had to be no doubt that it was quite silent for.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-5.jpg',1805,NULL,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(10,'The World Caters to Average People','So Bill\'s got the other--Bill! fetch it here, lad!--Here, put \'em up at the frontispiece if you were me?\' \'Well, perhaps your feelings may be different,\' said Alice; \'but when you throw them, and.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-9.jpg',2417,NULL,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(11,'The litigants on the screen are not actors','But she did not notice this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said, turning to Alice, \'Have you seen the Mock Turtle Soup is made from,\' said the Mouse, in a tone of great.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-5.jpg',831,NULL,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(12,'Hiring the Right Sales Team at the Right Time','Do come back again, and did not dare to laugh; and, as they used to say \'creatures,\' you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment Alice appeared, she was terribly.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-10.jpg',689,NULL,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(13,'Fully Embrace the Return of 90s fashion','King: \'however, it may kiss my hand if it please your Majesty,\' he began, \'for bringing these in: but I hadn\'t drunk quite so much!\' Alas! it was a body to cut it off from: that he had a bone in his.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-11.jpg',478,NULL,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(14,'Exploring the English Countryside','VERY short remarks, and she thought at first she would feel with all speed back to the little golden key, and when she found that her idea of having the sentence first!\' \'Hold your tongue!\' said the.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-11.jpg',2271,NULL,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(15,'Here’s the First Valentino’s New Makeup Collection','VERY wide, but she remembered that she did not like to try the patience of an oyster!\' \'I wish I hadn\'t to bring tears into her face, and was going on between the executioner, the King, and the pair.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-4.jpg',2488,NULL,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(16,'Follow Your own Design process, whatever gets','I shall fall right THROUGH the earth! How funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-5.jpg',1012,NULL,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(17,'Freelancer Days 2024, What’s new?','The Antipathies, I think--\' (for, you see, Miss, this here ought to be a person of authority among them, called out, \'First witness!\' The first question of course had to sing you a present of.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-3.jpg',1586,NULL,'2024-11-10 21:40:54','2024-11-10 21:40:54'),(18,'Quality Foods Requirments For Every Human Body’s','March Hare said to herself, and began an account of the party sat silent for a good many little girls of her childhood: and how she would have appeared to them to be no sort of meaning in it,\' said.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-5.jpg',291,NULL,'2024-11-10 21:40:54','2024-11-10 21:40:54');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_logs`
--

DROP TABLE IF EXISTS `request_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_logs`
--

LOCK TABLES `request_logs` WRITE;
/*!40000 ALTER TABLE `request_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"ecommerce.settings.product-specification\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"orders.export\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.withdrawal.invoice\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.vendors.control\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"sale-popup.settings\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-11-10 21:40:50','2024-11-10 21:40:50');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','114d9993cd3ca8fd0025c0d1f2e16d2e',NULL,'2024-11-10 21:41:00'),(2,'api_enabled','0',NULL,'2024-11-10 21:41:00'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"gallery\",\"location\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"request-log\",\"sale-popup\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"stripe-connect\",\"testimonial\",\"translation\"]',NULL,'2024-11-10 21:41:00'),(6,'theme','shofy-fashion',NULL,'2024-11-10 21:41:00'),(7,'show_admin_bar','1',NULL,'2024-11-10 21:41:00'),(8,'admin_favicon','main/general/favicon.png',NULL,'2024-11-10 21:41:00'),(9,'admin_logo','main/general/logo-white.png',NULL,'2024-11-10 21:41:00'),(10,'announcement_lazy_loading','1',NULL,'2024-11-10 21:41:00'),(11,'marketplace_requires_vendor_documentations_verification','0',NULL,'2024-11-10 21:41:00'),(12,'payment_cod_status','1',NULL,'2024-11-10 21:41:00'),(13,'payment_bank_transfer_status','1',NULL,'2024-11-10 21:41:00'),(14,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2024-11-10 21:41:00'),(15,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2024-11-10 21:41:00'),(16,'payment_stripe_payment_type','stripe_checkout',NULL,'2024-11-10 21:41:00'),(17,'plugins_ecommerce_customer_new_order_status','0',NULL,'2024-11-10 21:41:00'),(18,'plugins_ecommerce_admin_new_order_status','0',NULL,'2024-11-10 21:41:00'),(19,'ecommerce_is_enabled_support_digital_products','1',NULL,'2024-11-10 21:41:00'),(20,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2024-11-10 21:41:00'),(21,'ecommerce_product_sku_format','SF-2443-%s%s%s%s',NULL,'2024-11-10 21:41:00'),(22,'ecommerce_enable_product_specification','1',NULL,'2024-11-10 21:41:00'),(23,'permalink-botble-blog-models-post','blog',NULL,'2024-11-10 21:41:00'),(24,'permalink-botble-blog-models-category','blog',NULL,'2024-11-10 21:41:00'),(25,'language_hide_default','1',NULL,'2024-11-10 21:41:00'),(26,'language_switcher_display','dropdown',NULL,'2024-11-10 21:41:00'),(27,'language_display','all',NULL,'2024-11-10 21:41:00'),(28,'language_hide_languages','[]',NULL,'2024-11-10 21:41:00'),(29,'ecommerce_store_name','Shofy',NULL,'2024-11-10 21:41:00'),(30,'ecommerce_store_phone','1800979769',NULL,'2024-11-10 21:41:00'),(31,'ecommerce_store_address','502 New Street',NULL,'2024-11-10 21:41:00'),(32,'ecommerce_store_state','Brighton VIC',NULL,'2024-11-10 21:41:00'),(33,'ecommerce_store_city','Brighton VIC',NULL,'2024-11-10 21:41:00'),(34,'ecommerce_store_country','AU',NULL,'2024-11-10 21:41:00'),(35,'announcement_max_width','1390',NULL,'2024-11-10 21:41:00'),(36,'announcement_text_color','#010f1c',NULL,'2024-11-10 21:41:00'),(37,'announcement_background_color','transparent',NULL,'2024-11-10 21:41:00'),(38,'announcement_placement','theme',NULL,'2024-11-10 21:41:00'),(39,'announcement_text_alignment','start',NULL,'2024-11-10 21:41:00'),(40,'announcement_dismissible','0',NULL,'2024-11-10 21:41:00'),(41,'simple_slider_using_assets','0',NULL,'2024-11-10 21:41:00'),(42,'theme-shofy-fashion-site_name','Shofy',NULL,NULL),(43,'theme-shofy-fashion-site_title','Shofy - Multipurpose eCommerce Laravel Script',NULL,NULL),(44,'theme-shofy-fashion-seo_description','Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.',NULL,NULL),(45,'theme-shofy-fashion-copyright','© %Y All Rights Reserved.',NULL,NULL),(46,'theme-shofy-fashion-tp_primary_font','Jost',NULL,NULL),(47,'theme-shofy-fashion-primary_color','#821F40',NULL,NULL),(48,'theme-shofy-fashion-favicon','main/general/favicon.png',NULL,NULL),(49,'theme-shofy-fashion-logo','main/general/logo.png',NULL,NULL),(50,'theme-shofy-fashion-logo_light','main/general/logo-white.png',NULL,NULL),(51,'theme-shofy-fashion-header_style','2',NULL,NULL),(52,'theme-shofy-fashion-preloader_icon','main/general/preloader-icon.png',NULL,NULL),(53,'theme-shofy-fashion-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(54,'theme-shofy-fashion-hotline','8 800 332 65-66',NULL,NULL),(55,'theme-shofy-fashion-email','contact@fartmart.co',NULL,NULL),(56,'theme-shofy-fashion-working_time','Mon - Fri: 07AM - 06PM',NULL,NULL),(57,'theme-shofy-fashion-homepage_id','1',NULL,NULL),(58,'theme-shofy-fashion-blog_page_id','5',NULL,NULL),(59,'theme-shofy-fashion-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(60,'theme-shofy-fashion-cookie_consent_learn_more_url','cookie-policy',NULL,NULL),(61,'theme-shofy-fashion-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(62,'theme-shofy-fashion-number_of_products_per_page','24',NULL,NULL),(63,'theme-shofy-fashion-number_of_cross_sale_product','6',NULL,NULL),(64,'theme-shofy-fashion-ecommerce_products_page_layout','left_sidebar',NULL,NULL),(65,'theme-shofy-fashion-ecommerce_product_item_style','2',NULL,NULL),(66,'theme-shofy-fashion-404_page_image','main/general/404.png',NULL,NULL),(67,'theme-shofy-fashion-newsletter_popup_enable','1',NULL,NULL),(68,'theme-shofy-fashion-newsletter_popup_image','main/general/newsletter-popup.png',NULL,NULL),(69,'theme-shofy-fashion-newsletter_popup_title','Subscribe Now',NULL,NULL),(70,'theme-shofy-fashion-newsletter_popup_subtitle','Newsletter',NULL,NULL),(71,'theme-shofy-fashion-newsletter_popup_description','Subscribe to our newsletter and get 10% off your first purchase',NULL,NULL),(72,'theme-shofy-fashion-lazy_load_images','1',NULL,NULL),(73,'theme-shofy-fashion-lazy_load_placeholder_image','main/general/placeholder.png',NULL,NULL),(74,'theme-shofy-fashion-breadcrumb_background_image','main/general/breadcrumb.jpg',NULL,NULL),(75,'theme-shofy-fashion-section_title_shape_decorated','style-3',NULL,NULL),(76,'theme-shofy-fashion-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,NULL),(77,'theme-shofy-fashion-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,NULL),(78,'theme-shofy-fashion-login_background','main/general/auth-banner.png',NULL,NULL),(79,'theme-shofy-fashion-register_background','main/general/auth-banner.png',NULL,NULL),(80,'theme-shofy-fashion-merchant_return_policy_url','return-policy',NULL,NULL),(81,'theme-shofy-fashion-term_and_privacy_policy_url','privacy-policy',NULL,NULL),(82,'theme-shofy-fashion-header_main_background_color','#fff',NULL,NULL),(83,'theme-shofy-fashion-header_main_text_color','#010f1c',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'The Clothing Collection','fashion/sliders/slider-1.png','/products','New Arrivals 2023',0,'2024-11-10 21:40:57','2024-11-10 21:40:57'),(2,1,'The Summer Collection','fashion/sliders/slider-2.png','/products','Best Selling 2023',1,'2024-11-10 21:40:57','2024-11-10 21:40:57'),(3,1,'Amazing New designs','fashion/sliders/slider-3.png','/products','Winter Has Arrived',2,'2024-11-10 21:40:57','2024-11-10 21:40:57');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2024-11-10 21:40:57','2024-11-10 21:40:57');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'foodpound',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-11-10 21:40:50','2024-11-10 21:40:50'),(2,'itea-jsc',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-11-10 21:40:50','2024-11-10 21:40:50'),(3,'soda-brand',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-11-10 21:40:50','2024-11-10 21:40:50'),(4,'shofy',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-11-10 21:40:50','2024-11-10 21:40:50'),(5,'soda-brand',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-11-10 21:40:50','2024-11-10 21:40:50'),(6,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-11-10 21:40:53','2024-11-10 21:40:53'),(7,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-11-10 21:40:53','2024-11-10 21:40:53'),(8,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-11-10 21:40:53','2024-11-10 21:40:53'),(9,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-11-10 21:40:53','2024-11-10 21:40:53'),(10,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-11-10 21:40:53','2024-11-10 21:40:53'),(11,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-11-10 21:40:53','2024-11-10 21:40:53'),(12,'crisp-bread-cake',1,'Botble\\Blog\\Models\\Category','blog','2024-11-10 21:40:54','2024-11-10 21:40:54'),(13,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-11-10 21:40:54','2024-11-10 21:40:54'),(14,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-11-10 21:40:54','2024-11-10 21:40:54'),(15,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-11-10 21:40:54','2024-11-10 21:40:54'),(16,'organic-fruits',5,'Botble\\Blog\\Models\\Category','blog','2024-11-10 21:40:54','2024-11-10 21:40:54'),(17,'ecological',6,'Botble\\Blog\\Models\\Category','blog','2024-11-10 21:40:54','2024-11-10 21:40:54'),(18,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-11-10 21:40:54','2024-11-10 21:40:54'),(19,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-11-10 21:40:54','2024-11-10 21:40:54'),(20,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-11-10 21:40:54','2024-11-10 21:40:54'),(21,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-11-10 21:40:54','2024-11-10 21:40:54'),(22,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-11-10 21:40:54','2024-11-10 21:40:54'),(23,'nature',6,'Botble\\Blog\\Models\\Tag','tag','2024-11-10 21:40:54','2024-11-10 21:40:54'),(24,'vintage',7,'Botble\\Blog\\Models\\Tag','tag','2024-11-10 21:40:54','2024-11-10 21:40:54'),(25,'sunglasses',8,'Botble\\Blog\\Models\\Tag','tag','2024-11-10 21:40:54','2024-11-10 21:40:54'),(26,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-11-10 21:40:54','2024-11-10 21:40:54'),(27,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-11-10 21:40:54','2024-11-10 21:40:54'),(28,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-11-10 21:40:54','2024-11-10 21:40:54'),(29,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-11-10 21:40:54','2024-11-10 21:40:54'),(30,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-11-10 21:40:54','2024-11-10 21:40:54'),(31,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-11-10 21:40:54','2024-11-10 21:40:54'),(32,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-11-10 21:40:54','2024-11-10 21:40:54'),(33,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-11-10 21:40:54','2024-11-10 21:40:54'),(34,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-11-10 21:40:54','2024-11-10 21:40:54'),(35,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-11-10 21:40:54','2024-11-10 21:40:54'),(36,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-11-10 21:40:54','2024-11-10 21:40:54'),(37,'hiring-the-right-sales-team-at-the-right-time',12,'Botble\\Blog\\Models\\Post','blog','2024-11-10 21:40:54','2024-11-10 21:40:54'),(38,'fully-embrace-the-return-of-90s-fashion',13,'Botble\\Blog\\Models\\Post','blog','2024-11-10 21:40:54','2024-11-10 21:40:54'),(39,'exploring-the-english-countryside',14,'Botble\\Blog\\Models\\Post','blog','2024-11-10 21:40:54','2024-11-10 21:40:54'),(40,'heres-the-first-valentinos-new-makeup-collection',15,'Botble\\Blog\\Models\\Post','blog','2024-11-10 21:40:54','2024-11-10 21:40:54'),(41,'follow-your-own-design-process-whatever-gets',16,'Botble\\Blog\\Models\\Post','blog','2024-11-10 21:40:54','2024-11-10 21:40:54'),(42,'freelancer-days-2024-whats-new',17,'Botble\\Blog\\Models\\Post','blog','2024-11-10 21:40:54','2024-11-10 21:40:54'),(43,'quality-foods-requirments-for-every-human-bodys',18,'Botble\\Blog\\Models\\Post','blog','2024-11-10 21:40:54','2024-11-10 21:40:54'),(44,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2024-11-10 21:40:57','2024-11-10 21:40:57'),(45,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2024-11-10 21:40:57','2024-11-10 21:40:57'),(46,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2024-11-10 21:40:57','2024-11-10 21:40:57'),(47,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2024-11-10 21:40:57','2024-11-10 21:40:57'),(48,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2024-11-10 21:40:57','2024-11-10 21:40:57'),(49,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2024-11-10 21:40:57','2024-11-10 21:40:57'),(50,'starkist',7,'Botble\\Marketplace\\Models\\Store','stores','2024-11-10 21:40:57','2024-11-10 21:40:57'),(51,'old-el-paso',8,'Botble\\Marketplace\\Models\\Store','stores','2024-11-10 21:40:57','2024-11-10 21:40:57'),(52,'bags',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-11-10 21:40:57','2024-11-10 21:40:57'),(53,'clothing',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-11-10 21:40:57','2024-11-10 21:40:57'),(54,'mens-clothing',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-11-10 21:40:57','2024-11-10 21:40:57'),(55,'t-shirts',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-11-10 21:40:57','2024-11-10 21:40:57'),(56,'jeans',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-11-10 21:40:57','2024-11-10 21:40:57'),(57,'suits',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-11-10 21:40:57','2024-11-10 21:40:57'),(58,'womens-clothing',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-11-10 21:40:57','2024-11-10 21:40:57'),(59,'dresses',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-11-10 21:40:57','2024-11-10 21:40:57'),(60,'blouses',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-11-10 21:40:57','2024-11-10 21:40:57'),(61,'pants',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-11-10 21:40:57','2024-11-10 21:40:57'),(62,'footwear',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-11-10 21:40:57','2024-11-10 21:40:57'),(63,'accessories',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-11-10 21:40:57','2024-11-10 21:40:57'),(64,'hats',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-11-10 21:40:57','2024-11-10 21:40:57'),(65,'scarves',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-11-10 21:40:57','2024-11-10 21:40:57'),(66,'jewelry',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-11-10 21:40:57','2024-11-10 21:40:57'),(67,'sportswear',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-11-10 21:40:57','2024-11-10 21:40:57'),(68,'activewear',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-11-10 21:40:57','2024-11-10 21:40:57'),(69,'running-shoes',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-11-10 21:40:57','2024-11-10 21:40:57'),(70,'outerwear',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-11-10 21:40:57','2024-11-10 21:40:57'),(71,'vintage-denim-jacket',1,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(72,'floral-maxi-dress',2,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(73,'leather-ankle-boots',3,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(74,'knit-turtleneck-sweater-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:41:01'),(75,'classic-aviator-sunglasses',5,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(76,'tailored-wool-blazer',6,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(77,'bohemian-fringe-handbag',7,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(78,'silk-scarf-with-geometric-print-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:41:01'),(79,'high-waisted-wide-leg-trousers',9,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(80,'embroidered-boho-blouse',10,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(81,'statement-chunky-necklace',11,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(82,'chic-fedora-hat-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:41:01'),(83,'strappy-block-heel-sandals',13,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(84,'velvet-evening-gown',14,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(85,'quilted-crossbody-bag',15,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(86,'distressed-skinny-jeans-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:41:01'),(87,'lace-up-combat-boots',17,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(88,'cotton-striped-t-shirt-dress',18,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(89,'printed-palazzo-pants',19,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(90,'structured-satchel-bag-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:41:01'),(91,'off-shoulder-ruffle-top',21,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(92,'suede-pointed-toe-pumps',22,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(93,'cropped-cable-knit-sweater',23,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(94,'athleisure-jogger-pants-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:41:01'),(95,'leopard-print-midi-skirt',25,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(96,'retro-cat-eye-sunglasses',26,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(97,'faux-fur-trimmed-coat',27,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(98,'boho-fringed-kimono-digital',28,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:41:01'),(99,'ruffled-wrap-dress',29,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(100,'beaded-evening-clutch',30,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(101,'wide-brim-floppy-hat',31,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(102,'denim-overall-jumpsuit-digital',32,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:41:01'),(103,'embellished-ballet-flats',33,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(104,'pleated-midi-skirt',34,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(105,'velour-tracksuit-set',35,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(106,'geometric-patterned-cardigan-digital',36,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:41:01'),(107,'buckle-detail-ankle-booties',37,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(108,'embroidered-bomber-jacket',38,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(109,'cowl-neck-knit-poncho',39,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(110,'chunky-knit-infinity-scarf-digital',40,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:41:01'),(111,'retro-high-top-sneakers',41,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(112,'faux-leather-leggings',42,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(113,'metallic-pleated-maxi-skirt',43,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:40:58','2024-11-10 21:40:58'),(114,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-11-10 21:41:00','2024-11-10 21:41:00'),(115,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-11-10 21:41:00','2024-11-10 21:41:00'),(116,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-11-10 21:41:00','2024-11-10 21:41:00'),(117,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-11-10 21:41:00','2024-11-10 21:41:00'),(118,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-11-10 21:41:00','2024-11-10 21:41:00'),(119,'home',1,'Botble\\Page\\Models\\Page','','2024-11-10 21:41:00','2024-11-10 21:41:00'),(120,'categories',2,'Botble\\Page\\Models\\Page','','2024-11-10 21:41:00','2024-11-10 21:41:00'),(121,'brands',3,'Botble\\Page\\Models\\Page','','2024-11-10 21:41:00','2024-11-10 21:41:00'),(122,'coupons',4,'Botble\\Page\\Models\\Page','','2024-11-10 21:41:00','2024-11-10 21:41:00'),(123,'blog',5,'Botble\\Page\\Models\\Page','','2024-11-10 21:41:00','2024-11-10 21:41:00'),(124,'contact',6,'Botble\\Page\\Models\\Page','','2024-11-10 21:41:00','2024-11-10 21:41:00'),(125,'faqs',7,'Botble\\Page\\Models\\Page','','2024-11-10 21:41:00','2024-11-10 21:41:00'),(126,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2024-11-10 21:41:00','2024-11-10 21:41:00'),(127,'our-story',9,'Botble\\Page\\Models\\Page','','2024-11-10 21:41:00','2024-11-10 21:41:00'),(128,'careers',10,'Botble\\Page\\Models\\Page','','2024-11-10 21:41:00','2024-11-10 21:41:00'),(129,'shipping',11,'Botble\\Page\\Models\\Page','','2024-11-10 21:41:00','2024-11-10 21:41:00'),(130,'coming-soon',12,'Botble\\Page\\Models\\Page','','2024-11-10 21:41:00','2024-11-10 21:41:00'),(131,'return-policy',13,'Botble\\Page\\Models\\Page','','2024-11-10 21:41:00','2024-11-10 21:41:00'),(132,'vintage-denim-jacket',44,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(133,'vintage-denim-jacket',45,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(134,'vintage-denim-jacket',46,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(135,'floral-maxi-dress',47,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(136,'knit-turtleneck-sweater-digital',48,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(137,'knit-turtleneck-sweater-digital',49,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(138,'knit-turtleneck-sweater-digital',50,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(139,'bohemian-fringe-handbag',51,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(140,'bohemian-fringe-handbag',52,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(141,'bohemian-fringe-handbag',53,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(142,'statement-chunky-necklace',54,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(143,'statement-chunky-necklace',55,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(144,'chic-fedora-hat-digital',56,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(145,'chic-fedora-hat-digital',57,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(146,'chic-fedora-hat-digital',58,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(147,'chic-fedora-hat-digital',59,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(148,'strappy-block-heel-sandals',60,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(149,'strappy-block-heel-sandals',61,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(150,'strappy-block-heel-sandals',62,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(151,'strappy-block-heel-sandals',63,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(152,'quilted-crossbody-bag',64,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(153,'quilted-crossbody-bag',65,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(154,'quilted-crossbody-bag',66,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(155,'distressed-skinny-jeans-digital',67,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(156,'distressed-skinny-jeans-digital',68,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(157,'distressed-skinny-jeans-digital',69,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(158,'cotton-striped-t-shirt-dress',70,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(159,'cotton-striped-t-shirt-dress',71,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(160,'off-shoulder-ruffle-top',72,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(161,'athleisure-jogger-pants-digital',73,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(162,'athleisure-jogger-pants-digital',74,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(163,'athleisure-jogger-pants-digital',75,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(164,'athleisure-jogger-pants-digital',76,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(165,'leopard-print-midi-skirt',77,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(166,'leopard-print-midi-skirt',78,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(167,'retro-cat-eye-sunglasses',79,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(168,'retro-cat-eye-sunglasses',80,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(169,'faux-fur-trimmed-coat',81,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(170,'faux-fur-trimmed-coat',82,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(171,'faux-fur-trimmed-coat',83,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(172,'faux-fur-trimmed-coat',84,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(173,'ruffled-wrap-dress',85,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(174,'ruffled-wrap-dress',86,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(175,'ruffled-wrap-dress',87,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(176,'denim-overall-jumpsuit-digital',88,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(177,'denim-overall-jumpsuit-digital',89,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(178,'denim-overall-jumpsuit-digital',90,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(179,'denim-overall-jumpsuit-digital',91,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(180,'denim-overall-jumpsuit-digital',92,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(181,'embellished-ballet-flats',93,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(182,'embellished-ballet-flats',94,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(183,'velour-tracksuit-set',95,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(184,'velour-tracksuit-set',96,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(185,'velour-tracksuit-set',97,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(186,'geometric-patterned-cardigan-digital',98,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(187,'geometric-patterned-cardigan-digital',99,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(188,'geometric-patterned-cardigan-digital',100,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(189,'buckle-detail-ankle-booties',101,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(190,'buckle-detail-ankle-booties',102,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(191,'buckle-detail-ankle-booties',103,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(192,'cowl-neck-knit-poncho',104,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(193,'cowl-neck-knit-poncho',105,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(194,'cowl-neck-knit-poncho',106,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(195,'faux-leather-leggings',107,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(196,'faux-leather-leggings',108,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(197,'metallic-pleated-maxi-skirt',109,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01'),(198,'metallic-pleated-maxi-skirt',110,'Botble\\Ecommerce\\Models\\Product','products','2024-11-10 21:41:01','2024-11-10 21:41:01');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-11-10 21:40:54','2024-11-10 21:40:54'),(2,'Design',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-11-10 21:40:54','2024-11-10 21:40:54'),(3,'Fashion',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-11-10 21:40:54','2024-11-10 21:40:54'),(4,'Branding',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-11-10 21:40:54','2024-11-10 21:40:54'),(5,'Modern',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-11-10 21:40:54','2024-11-10 21:40:54'),(6,'Nature',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-11-10 21:40:54','2024-11-10 21:40:54'),(7,'Vintage',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-11-10 21:40:54','2024-11-10 21:40:54'),(8,'Sunglasses',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-11-10 21:40:54','2024-11-10 21:40:54');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'James Dopli','Thanks for all your efforts and teamwork over the last several months!  Thank you so much','main/users/7.jpg','Developer','published','2024-11-10 21:40:57','2024-11-10 21:40:57'),(2,'Theodore Handle','How you use the city or town name is up to you. All results may be freely used in any work.','main/users/6.jpg','CO Founder','published','2024-11-10 21:40:57','2024-11-10 21:40:57'),(3,'Shahnewaz Sakil','Very happy with our choice to take our daughter to Brave care. The entire team was great! Thank you!','main/users/3.jpg','UI/UX Designer','published','2024-11-10 21:40:57','2024-11-10 21:40:57'),(4,'Albert Flores','Wedding day savior! 5 stars. Their bridal collection is a game-changer. Made me feel like a star.','main/users/8.jpg','Bank of America','published','2024-11-10 21:40:57','2024-11-10 21:40:57');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'wolf.milton@grant.com',NULL,'$2y$12$Ip3NmFLfqK/X7tCwb0Ar6uwue.NivBVxQZ9UuSuv.dmIY06BYiEgW',NULL,'2024-11-10 21:40:49','2024-11-10 21:40:49','Kali','Carter','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_primary_sidebar','shofy-fashion',1,'{\"id\":\"SiteInfoWidget\",\"logo\":\"main\\/general\\/logo.png\",\"logo_height\":50,\"about\":\"Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.\",\"show_social_links\":true}','2024-11-10 21:41:00','2024-11-10 21:41:00'),(2,'CustomMenuWidget','footer_primary_sidebar','shofy-fashion',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}','2024-11-10 21:41:00','2024-11-10 21:41:00'),(3,'CustomMenuWidget','footer_primary_sidebar','shofy-fashion',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2024-11-10 21:41:00','2024-11-10 21:41:00'),(4,'SiteContactWidget','footer_primary_sidebar','shofy-fashion',4,'{\"id\":\"SiteContactWidget\",\"name\":\"Talk To Us\",\"phone_label\":\"Got Questions? Call us\",\"phone\":\"+670 413 90 762\",\"email\":\"support@shofy.com\",\"address\":\"79 Sleepy Hollow St. Jamaica, New York 1432\"}','2024-11-10 21:41:00','2024-11-10 21:41:00'),(5,'ProductCategoriesWidget','footer_primary_sidebar','shofy-fashion',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[5,6,7,8,10,11,12]}','2024-11-10 21:41:00','2024-11-10 21:41:00'),(6,'ProductCategoriesWidget','footer_primary_sidebar','shofy-fashion',7,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Electronics\",\"style\":\"simple-text\",\"categories\":[3,4,15,18,19,20]}','2024-11-10 21:41:00','2024-11-10 21:41:00'),(7,'ProductCategoriesWidget','footer_primary_sidebar','shofy-fashion',8,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Sweet Treats\",\"categories\":[11,12,13,14,15,16,17]}','2024-11-10 21:41:00','2024-11-10 21:41:00'),(8,'ProductCategoriesWidget','footer_primary_sidebar','shofy-fashion',9,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Fashion\",\"categories\":[1,2,3,4,5,6,7,8]}','2024-11-10 21:41:00','2024-11-10 21:41:00'),(9,'NewsletterWidget','footer_top_sidebar','shofy-fashion',1,'{\"id\":\"NewsletterWidget\",\"title\":\"Subscribe our Newsletter\",\"subtitle\":\"Sale 20% off all store\"}','2024-11-10 21:41:00','2024-11-10 21:41:00'),(10,'SiteCopyrightWidget','footer_bottom_sidebar','shofy-fashion',1,'{\"id\":\"SiteCopyrightWidget\",\"content\":\"\\u00a9 %y% All rights Reserved.\"}','2024-11-10 21:41:00','2024-11-10 21:41:00'),(11,'SiteAcceptedPaymentsWidget','footer_bottom_sidebar','shofy-fashion',2,'{\"id\":\"SiteAcceptedPaymentsWidget\",\"name\":\"Accepted Payments\",\"image\":\"main\\/general\\/footer-pay.png\",\"url\":\"#\"}','2024-11-10 21:41:00','2024-11-10 21:41:00'),(12,'BlogSearchWidget','blog_sidebar','shofy-fashion',1,'{\"id\":\"BlogSearchWidget\"}','2024-11-10 21:41:00','2024-11-10 21:41:00'),(13,'BlogAboutMeWidget','blog_sidebar','shofy-fashion',2,'{\"id\":\"BlogAboutMeWidget\",\"name\":\"About Me\",\"author_url\":\"\\/blog\",\"author_avatar\":\"main\\/users\\/9.jpg\",\"author_name\":\"Ravi O\'Leigh\",\"author_role\":\"Photographer & Blogger\",\"author_description\":\"Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient\",\"author_signature\":\"main\\/general\\/signature.png\"}','2024-11-10 21:41:00','2024-11-10 21:41:00'),(14,'BlogPostsWidget','blog_sidebar','shofy-fashion',3,'{\"id\":\"BlogPostsWidget\",\"name\":\"Latest Posts\",\"limit\":3}','2024-11-10 21:41:00','2024-11-10 21:41:00'),(15,'BlogCategoriesWidget','blog_sidebar','shofy-fashion',4,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\",\"number_display\":6}','2024-11-10 21:41:00','2024-11-10 21:41:00'),(16,'BlogTagsWidget','blog_sidebar','shofy-fashion',5,'{\"id\":\"BlogTagsWidget\",\"name\":\"Popular Tags\",\"number_display\":6}','2024-11-10 21:41:00','2024-11-10 21:41:00'),(17,'ProductDetailInfoWidget','product_details_sidebar','shofy-fashion',1,'{\"id\":\"ProductDetailInfoWidget\",\"messages\":[[{\"key\":\"message\",\"value\":\"30 days easy returns\"}],[{\"key\":\"message\",\"value\":\"Order yours before 2.30pm for same day dispatch\"}]],\"description\":\"Guaranteed safe & secure checkout\",\"image\":\"main\\/general\\/footer-pay.png\"}','2024-11-10 21:41:00','2024-11-10 21:41:00'),(18,'EcommerceBrands','products_listing_top_sidebar','shofy-fashion',1,'{\"id\":\"EcommerceBrands\",\"brand_ids\":[1,2,3,4,5]}','2024-11-10 21:41:00','2024-11-10 21:41:00'),(19,'ProductCategoriesWidget','products_listing_top_sidebar','shofy-fashion',2,'{\"id\":\"ProductCategoriesWidget\",\"categories\":[1,2,7,11,18,19],\"style\":\"grid\",\"display_children\":true}','2024-11-10 21:41:00','2024-11-10 21:41:00');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-11 11:41:02
