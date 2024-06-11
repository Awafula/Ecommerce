-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: localhost    Database: martfury
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `activations` VALUES (1,1,'5SOeYRHqeoeMjyaOjI88GAJH8kdCBaEZ',1,'2024-03-11 00:14:17','2024-03-11 00:14:17','2024-03-11 00:14:17');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Top Slider Image 1','2029-03-11 00:00:00','not_set','VC2C8Q1UGCBG','promotion/1.jpg','/products',0,1,'published','2024-03-11 00:14:19','2024-03-11 00:14:19',1,NULL,NULL),(2,'Top Slider Image 2','2029-03-11 00:00:00','not_set','NBDWRXTSVZ8N','promotion/2.jpg','/products',0,2,'published','2024-03-11 00:14:19','2024-03-11 00:14:19',1,NULL,NULL),(3,'Homepage middle 1','2029-03-11 00:00:00','not_set','IZ6WU8KUALYD','promotion/3.jpg','/products',0,3,'published','2024-03-11 00:14:19','2024-03-11 00:14:19',1,NULL,NULL),(4,'Homepage middle 2','2029-03-11 00:00:00','not_set','ILSFJVYFGCPZ','promotion/4.jpg','/products',0,4,'published','2024-03-11 00:14:19','2024-03-11 00:14:19',1,NULL,NULL),(5,'Homepage middle 3','2029-03-11 00:00:00','not_set','ZDOZUZZIU7FT','promotion/5.jpg','/products',0,5,'published','2024-03-11 00:14:19','2024-03-11 00:14:19',1,NULL,NULL),(6,'Homepage big 1','2029-03-11 00:00:00','not_set','Q9YDUIC9HSWS','promotion/6.jpg','/products',0,6,'published','2024-03-11 00:14:19','2024-03-11 00:14:19',1,NULL,NULL),(7,'Homepage bottom small','2029-03-11 00:00:00','not_set','P3SFYICT7GZN','promotion/7.jpg','/products',0,7,'published','2024-03-11 00:14:19','2024-03-11 00:14:19',1,NULL,NULL),(8,'Product sidebar','2029-03-11 00:00:00','product-sidebar','C5PIM3STQWPV','promotion/8.jpg','/products',0,8,'published','2024-03-11 00:14:19','2024-03-11 00:14:19',1,NULL,NULL),(9,'Homepage big 2','2029-03-11 00:00:00','not_set','IZ6WU8KUALYE','promotion/9.jpg','/products',0,9,'published','2024-03-11 00:14:19','2024-03-11 00:14:19',1,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Et explicabo quasi quia quia saepe. Porro tempore non ut laborum qui. Consequatur vitae blanditiis et amet reprehenderit voluptas dolorum. Fugiat eum labore dignissimos.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2024-03-11 00:14:17','2024-03-11 00:14:17'),(2,'Fashion',0,'Ratione qui non eligendi. Vel tempora voluptatem iusto voluptatibus sequi minus aut. Sed enim qui qui impedit ut dolore at.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-03-11 00:14:17','2024-03-11 00:14:17'),(3,'Electronic',0,'Doloribus similique et asperiores voluptatem est et praesentium omnis. Culpa ut consequatur officiis aperiam aspernatur. Nam nostrum natus optio quo et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-03-11 00:14:17','2024-03-11 00:14:17'),(4,'Commercial',0,'Magnam ab architecto qui architecto. Dolorem et necessitatibus veniam inventore et quo. Doloribus voluptatem atque quia dolores fugit. Qui aliquid deserunt exercitationem consequatur enim placeat.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-03-11 00:14:17','2024-03-11 00:14:17');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `contacts` VALUES (1,'Jace Considine','ivah.blanda@example.com','303-863-8585','943 Bartoletti Hollow Suite 324\nJacobsville, OH 81381-1245','Ex corporis unde sint voluptatem quia harum.','Quia dolore delectus labore et velit ut. Sed sed officia aut repudiandae animi id voluptatem. Commodi repudiandae et et voluptate quasi. Quasi tenetur animi omnis animi. Hic sunt temporibus nesciunt. Veniam magnam iusto eligendi laboriosam qui aut. Incidunt tenetur est unde vel sunt impedit veniam. Sunt alias deserunt et veritatis. Voluptatem quisquam quia distinctio veniam voluptatum eveniet. Sapiente quaerat et veritatis. Id id cumque minus omnis.','read','2024-03-11 00:14:16','2024-03-11 00:14:16'),(2,'Travon Ondricka DDS','bechtelar.vincenzo@example.org','+14805194500','8349 Leffler Divide Apt. 218\nAndersontown, GA 48649','Sed voluptatem et dolorem consequatur officia.','Quisquam minima nisi sint aspernatur voluptas. Dolorem dolores necessitatibus voluptatem voluptas distinctio et id sint. Amet eaque maxime tenetur aut est. Dolorem officia rerum sit architecto molestias. Voluptatem et magnam sapiente ut aut sequi consequatur eius. Voluptatem error dolores unde dignissimos amet. Tempora ab cupiditate praesentium quod nemo ab.','unread','2024-03-11 00:14:16','2024-03-11 00:14:16'),(3,'Dr. Lucas Block Jr.','tiana42@example.com','(712) 939-7582','1866 Claudia Lakes\nBaumbachhaven, OH 11768','Corporis debitis facilis commodi nostrum et.','Dicta porro atque laboriosam sequi. Eos ducimus magni ipsa sapiente. Et velit illo dolor. Natus ut vitae delectus mollitia dolor ipsam eos ipsam. Quae recusandae vel doloribus illo totam inventore. Expedita voluptas optio molestias doloribus voluptas. Corporis hic autem occaecati rem rerum. Iusto culpa quasi est et eos voluptatibus dolor. Voluptatibus porro tenetur tenetur.','read','2024-03-11 00:14:16','2024-03-11 00:14:16'),(4,'Mortimer Cremin IV','tamia.bednar@example.net','1-760-552-5103','13320 Klocko Landing Apt. 927\nJerodton, TX 92367','Est et quia neque eius eius reiciendis.','Ratione qui perferendis voluptatem aut qui aperiam repellat. Quam quis recusandae quia quis. Vitae illo eum voluptates aliquam sed suscipit in. Sapiente in vero similique qui et. Doloremque necessitatibus magnam quasi sint. Quis ut placeat eum qui. Cupiditate quo enim perspiciatis alias qui voluptates a. Vel neque sequi iste amet sit. Repudiandae qui assumenda eos aliquid at. Laudantium autem omnis error nesciunt. Sunt nulla autem enim sit dolor.','unread','2024-03-11 00:14:16','2024-03-11 00:14:16'),(5,'Prof. Davin Marquardt','alene25@example.org','(351) 713-6322','6773 Haley Greens Apt. 140\nLake Jacques, CT 10083','Qui ab quis tempora inventore dolorem.','Sunt error blanditiis voluptatem voluptas quia quibusdam maiores consequatur. Eum dolor fugiat velit iste nihil fugiat non. Velit adipisci id et ipsa mollitia facere. Voluptatem est est ea natus quos iure. Molestias eum in consequatur aspernatur. Ut eos consequatur omnis voluptas. Sed quas ut corporis ullam dolorem reiciendis. Eum a fugiat esse maxime molestiae voluptates facilis. Non nostrum dolorem placeat sed. Ullam qui in dolor. Et fuga perferendis doloribus optio illum perspiciatis ut.','read','2024-03-11 00:14:16','2024-03-11 00:14:16'),(6,'Jonatan Miller','idurgan@example.net','(304) 303-9863','2395 Cartwright Station\nEricland, IA 67695','Suscipit ducimus placeat ut.','Doloremque excepturi culpa maxime adipisci aut error rerum. Enim libero dolorem est. Consequatur aspernatur dolores est totam incidunt. Ut quia ut ut non. Possimus molestiae quis aspernatur enim. Autem velit voluptates delectus possimus. Neque quia in fugiat. Minus sed optio iste maiores accusantium alias nostrum. Impedit at ea qui incidunt aut iste. Fugit autem asperiores iste odit eligendi voluptatem mollitia. Tenetur alias corrupti voluptatem omnis magni.','read','2024-03-11 00:14:16','2024-03-11 00:14:16'),(7,'Troy Bergstrom','xdietrich@example.org','+1 (806) 408-6430','475 Heller Divide\nNew Francisco, NY 76264-4862','Praesentium explicabo cumque eos quam culpa.','Ipsam non dolores incidunt sunt sed. A quia qui est neque velit est repellat eum. Sit minima iusto dolor vero nihil dolorem. Mollitia repellat aut sit tempore sint aspernatur. Quo occaecati quae numquam et illum expedita exercitationem. Quisquam numquam perferendis iusto suscipit. Dolores eius magnam praesentium quidem qui harum.','unread','2024-03-11 00:14:16','2024-03-11 00:14:16'),(8,'Miss Patience Veum IV','josianne51@example.com','1-240-612-6296','79544 Tyrell Crossing\nConnburgh, MO 19766','Tempora voluptate sapiente qui eum.','Nihil qui cum consequatur provident eos libero. Voluptatem aut rerum recusandae nemo unde voluptatem. Libero et debitis sit sit occaecati error delectus facilis. Amet natus ut vel. Velit voluptatibus perspiciatis ut qui. Sequi ut veniam qui aspernatur a repellendus aspernatur. Reiciendis omnis in in neque ex tempore. Alias deserunt in qui. Corporis maxime repudiandae voluptas dolor omnis autem dicta eveniet. Eligendi ea maiores debitis. Ut quo qui dolor neque sit aut.','unread','2024-03-11 00:14:16','2024-03-11 00:14:16'),(9,'Mireille Dooley','coleman98@example.com','+1-443-323-9485','5448 Brett Points\nAshleighborough, NE 20986-2176','Ut et iure ut iure beatae sapiente commodi sunt.','Iste fugiat vero eos ea id consequatur. Ducimus recusandae dicta accusantium odio. Nihil sint atque et sed laborum et. Deserunt maiores quia qui. Et quia pariatur eligendi nisi ut deserunt nam. Illo animi sit quibusdam. Omnis incidunt quidem enim dignissimos quia qui. Reprehenderit nesciunt laudantium quia ratione. Aut id id qui qui exercitationem. Exercitationem enim numquam similique dolor quia.','read','2024-03-11 00:14:16','2024-03-11 00:14:16'),(10,'Mrs. Cierra Runolfsson','werner.adams@example.org','+14842474313','25693 Jacynthe Field Apt. 240\nLake Tony, NY 38391-7510','Aut minima reprehenderit minima sunt.','Laborum hic placeat nihil. Corrupti molestiae cumque ut cumque. Suscipit velit repellat vero in. Eaque qui fuga consectetur beatae culpa assumenda soluta. Impedit beatae ad velit quis fuga aut. Aut quo et et vero omnis ea nisi. Voluptatem nihil et quasi iusto. Laudantium hic consequuntur officiis quasi. Ex earum deleniti adipisci ea. Voluptates ut magnam fugiat sunt. Ipsum consequuntur voluptatem ullam. Non et officia quaerat voluptas. Ut non quas amet expedita quo corporis qui.','read','2024-03-11 00:14:16','2024-03-11 00:14:16');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.jpg','published',0,1,'2024-03-11 00:14:06','2024-03-11 00:14:06'),(2,'Hand crafted',NULL,NULL,'brands/2.jpg','published',1,1,'2024-03-11 00:14:06','2024-03-11 00:14:06'),(3,'Mestonix',NULL,NULL,'brands/3.jpg','published',2,1,'2024-03-11 00:14:06','2024-03-11 00:14:06'),(4,'Sunshine',NULL,NULL,'brands/4.jpg','published',3,1,'2024-03-11 00:14:06','2024-03-11 00:14:06'),(5,'Pure',NULL,NULL,'brands/5.jpg','published',4,1,'2024-03-11 00:14:06','2024-03-11 00:14:06'),(6,'Anfold',NULL,NULL,'brands/6.jpg','published',5,1,'2024-03-11 00:14:06','2024-03-11 00:14:06'),(7,'Automotive',NULL,NULL,'brands/7.jpg','published',6,1,'2024-03-11 00:14:06','2024-03-11 00:14:06');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-03-11 00:14:06','2024-03-11 00:14:06'),(2,'EUR','€',0,2,1,0,0.84,'2024-03-11 00:14:06','2024-03-11 00:14:06'),(3,'VND','₫',0,0,2,0,23203,'2024-03-11 00:14:06','2024-03-11 00:14:06'),(4,'NGN','₦',1,2,2,0,895.52,'2024-03-11 00:14:06','2024-03-11 00:14:06');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `ec_customer_addresses` VALUES (1,'Dr. Elyse Prohaska','customer@botble.com','+18127482672','SA','Kansas','West Addieville','83639 Hickle Drive Suite 309',1,1,'2024-03-11 00:14:14','2024-03-11 00:14:14','95742'),(2,'Dr. Elyse Prohaska','customer@botble.com','+19492007544','SS','South Dakota','Garthfort','80460 Shanie Port Apt. 722',1,0,'2024-03-11 00:14:14','2024-03-11 00:14:14','19144-3567'),(3,'Sincere Casper','vendor@botble.com','+15678137857','SV','Delaware','Rutherfordhaven','656 Torphy Overpass',2,1,'2024-03-11 00:14:14','2024-03-11 00:14:14','76565-3910'),(4,'Sincere Casper','vendor@botble.com','+13309763320','SV','North Carolina','Rolandochester','41455 Kilback Unions Apt. 015',2,0,'2024-03-11 00:14:14','2024-03-11 00:14:14','30978-8640'),(5,'Isai Osinski','mayert.kiana@example.org','+19038740390','MN','Texas','Heidenreichfurt','293 Quitzon Lights',3,1,'2024-03-11 00:14:14','2024-03-11 00:14:14','48350-4800'),(6,'Corrine Grant','margot.smith@example.net','+17749512938','DZ','Wisconsin','North Garrettfurt','2514 Evert Lane',4,1,'2024-03-11 00:14:15','2024-03-11 00:14:15','17164-1423'),(7,'Mr. Walton Pagac III','quincy.collins@example.net','+13365056070','GU','Delaware','Port Vada','18368 Sandrine Mill',5,1,'2024-03-11 00:14:15','2024-03-11 00:14:15','75805-4230'),(8,'Aylin Effertz','frami.tyreek@example.com','+17628925007','RU','Rhode Island','Montanaborough','7522 Koss Corners',6,1,'2024-03-11 00:14:15','2024-03-11 00:14:15','02353'),(9,'Mr. Nels Legros IV','schulist.ariel@example.com','+12512908614','LS','Utah','Kassulkehaven','260 Brennon Estates Apt. 027',7,1,'2024-03-11 00:14:15','2024-03-11 00:14:15','24166-7166'),(10,'Edwardo Kreiger','bernadette52@example.org','+15809410094','LS','Idaho','West Bessieside','444 Mertz Alley',8,1,'2024-03-11 00:14:16','2024-03-11 00:14:16','03940-7698'),(11,'Dr. Michel Reynolds PhD','cristina.smitham@example.net','+14233056041','CW','Arizona','West Laviniamouth','20837 Parisian Fall',9,1,'2024-03-11 00:14:16','2024-03-11 00:14:16','97666-3788'),(12,'Hertha Schuster','kaylee.mertz@example.com','+12515480623','AI','Alaska','Raefurt','50668 Okey Forge Suite 419',10,1,'2024-03-11 00:14:16','2024-03-11 00:14:16','74038');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Dr. Elyse Prohaska','customer@botble.com','$2y$12$p3KH/Bm32yLTuPUtvNTuXuEao2BVgmnW69INAOUAcaW3/MSKz7cEy','customers/8.jpg','2003-02-11','+18173265048',NULL,'2024-03-11 00:14:14','2024-03-11 00:14:14','2024-03-11 07:14:14',NULL,'activated',NULL,0,NULL),(2,'Sincere Casper','vendor@botble.com','$2y$12$Ugf3m4AbNj4AKZVXl8ses.H1Qt.eEgiyEt60xudH/W.g4G2xtwEii','customers/10.jpg','1992-02-28','+14156951575',NULL,'2024-03-11 00:14:14','2024-03-11 00:14:20','2024-03-11 07:14:14',NULL,'activated',NULL,1,'2024-03-11 07:14:20'),(3,'Isai Osinski','mayert.kiana@example.org','$2y$12$z1DX8d5YFGOuILXNP7QVaOtVF/NT6Ki.VpF167xaZH05qHMPXjyZ.','customers/1.jpg','1977-03-03','+18025837785',NULL,'2024-03-11 00:14:14','2024-03-11 00:14:20','2024-03-11 07:14:14',NULL,'activated',NULL,1,'2024-03-11 07:14:20'),(4,'Corrine Grant','margot.smith@example.net','$2y$12$QSuNfWNppIRSjtQJ9TFDOecAOileEEQGpEUaZws7AIuBv1BzChnl2','customers/2.jpg','1996-03-09','+15413489901',NULL,'2024-03-11 00:14:15','2024-03-11 00:14:21','2024-03-11 07:14:15',NULL,'activated',NULL,1,'2024-03-11 07:14:21'),(5,'Mr. Walton Pagac III','quincy.collins@example.net','$2y$12$Bw0y7NHFse5LrccSwQGn0OVhB/orcmOolYDzEmgcW2v5gsFs7tfj.','customers/3.jpg','1986-02-09','+15615206743',NULL,'2024-03-11 00:14:15','2024-03-11 00:14:15','2024-03-11 07:14:15',NULL,'activated',NULL,0,NULL),(6,'Aylin Effertz','frami.tyreek@example.com','$2y$12$DVz3mdUqCdVqbMfMIZY2m.JQrVhzi2lssOpUQMTiHt0IHKZuCLTmS','customers/4.jpg','1990-03-10','+19865466692',NULL,'2024-03-11 00:14:15','2024-03-11 00:14:15','2024-03-11 07:14:15',NULL,'activated',NULL,0,NULL),(7,'Mr. Nels Legros IV','schulist.ariel@example.com','$2y$12$98CcQtHGDU/MEWCw8fnrXevd3tyII2GTg1Sew0JrMe24NVM.rzPWa','customers/5.jpg','2000-02-13','+13855675781',NULL,'2024-03-11 00:14:15','2024-03-11 00:14:15','2024-03-11 07:14:15',NULL,'activated',NULL,0,NULL),(8,'Edwardo Kreiger','bernadette52@example.org','$2y$12$tak1p9Nc9yipseIBDran/.Shucnw5U/6QoHbHRB5rUddQmQeIaPH6','customers/6.jpg','1977-02-22','+14789898839',NULL,'2024-03-11 00:14:16','2024-03-11 00:14:21','2024-03-11 07:14:16',NULL,'activated',NULL,1,'2024-03-11 07:14:21'),(9,'Dr. Michel Reynolds PhD','cristina.smitham@example.net','$2y$12$LapXCaIkrB9.Dsfj60LjPO3kz6Yd4uKB7p51plqCrMvaShLba8BM.','customers/7.jpg','2003-02-09','+15415615915',NULL,'2024-03-11 00:14:16','2024-03-11 00:14:16','2024-03-11 07:14:16',NULL,'activated',NULL,0,NULL),(10,'Hertha Schuster','kaylee.mertz@example.com','$2y$12$3ZwAbSTpSQJw15lAnsaj3ugMTdio/Od03wP.hytds6PltuqZLvzUO','customers/8.jpg','1982-02-20','+13237824253',NULL,'2024-03-11 00:14:16','2024-03-11 00:14:16','2024-03-11 07:14:16',NULL,'activated',NULL,0,NULL);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `ec_flash_sale_products` VALUES (1,1,67.41,14,1),(1,2,12.96,17,5),(1,3,11.8,12,5),(1,4,280.485,12,2),(1,5,379.44,9,2),(1,6,149.48,18,2),(1,7,161.82,14,4),(1,8,631.169,17,2),(1,9,247.48,18,4),(1,10,911.24,18,2);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2024-04-10 00:00:00','published','2024-03-11 00:14:16','2024-03-11 00:14:16');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
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
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(1,2,'2 Year',10,9999,0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(1,3,'3 Year',20,9999,0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(2,4,'4GB',0,9999,0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(2,5,'8GB',10,9999,0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(2,6,'16GB',20,9999,0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(3,7,'Core i5',0,9999,0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(3,8,'Core i7',10,9999,0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(3,9,'Core i9',20,9999,0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(4,10,'128GB',0,9999,0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(4,11,'256GB',10,9999,0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(4,12,'512GB',20,9999,0,'2024-03-11 00:14:19','2024-03-11 00:14:19');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
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
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-03-11 00:14:19','2024-03-11 00:14:19');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
INSERT INTO `ec_invoice_items` VALUES (1,1,'Botble\\Ecommerce\\Models\\Product',44,'Smart Televisions',NULL,'products/8-1.jpg',2,1171.00,2342.00,0.00,0.00,2342.00,'{\"sku\":\"SW-190-A0-A1\",\"attributes\":\"(Color: Red, Size: XL)\"}','2024-03-11 00:14:21','2024-03-11 00:14:21'),(2,1,'Botble\\Ecommerce\\Models\\Product',58,'Xbox One Wireless Controller Black Color',NULL,'products/11.jpg',1,1149.00,1149.00,0.00,0.00,1149.00,'{\"sku\":\"SW-170-A0-A4\",\"attributes\":\"(Size: L, Color: Brown)\"}','2024-03-11 00:14:21','2024-03-11 00:14:21'),(3,1,'Botble\\Ecommerce\\Models\\Product',82,'Baxter Care Hair Kit For Bearded Mens',NULL,'products/22-1.jpg',3,422.00,1266.00,0.00,0.00,1266.00,'{\"sku\":\"SW-112-A0-A1\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-03-11 00:14:21','2024-03-11 00:14:21'),(4,2,'Botble\\Ecommerce\\Models\\Product',52,'Herschel Leather Duffle Bag In Brown Color',NULL,'products/10.jpg',1,1199.00,1199.00,0.00,0.00,1199.00,'{\"sku\":\"SW-147-A0-A3\",\"attributes\":\"(Color: Green, Size: L)\"}','2024-03-11 00:14:22','2024-03-11 00:14:22'),(5,3,'Botble\\Ecommerce\\Models\\Product',33,'Smart Watch External (Digital)',NULL,'products/5-1.jpg',1,744.00,744.00,0.00,0.00,744.00,'{\"sku\":\"SW-181-A0-A1\",\"attributes\":\"(Color: Blue, Size: L)\"}','2024-03-11 00:14:22','2024-03-11 00:14:22'),(6,3,'Botble\\Ecommerce\\Models\\Product',42,'Audio Equipment',NULL,'products/7.jpg',1,522.00,522.00,0.00,0.00,522.00,'{\"sku\":\"SW-163-A0-A4\",\"attributes\":\"(Size: M, Color: Brown)\"}','2024-03-11 00:14:22','2024-03-11 00:14:22'),(7,4,'Botble\\Ecommerce\\Models\\Product',44,'Smart Televisions',NULL,'products/8-1.jpg',3,1171.00,3513.00,0.00,0.00,3513.00,'{\"sku\":\"SW-190-A0-A1\",\"attributes\":\"(Color: Red, Size: XL)\"}','2024-03-11 00:14:22','2024-03-11 00:14:22'),(8,4,'Botble\\Ecommerce\\Models\\Product',58,'Xbox One Wireless Controller Black Color',NULL,'products/11.jpg',2,1149.00,2298.00,0.00,0.00,2298.00,'{\"sku\":\"SW-170-A0-A4\",\"attributes\":\"(Size: L, Color: Brown)\"}','2024-03-11 00:14:22','2024-03-11 00:14:22'),(9,5,'Botble\\Ecommerce\\Models\\Product',45,'Smart Televisions',NULL,'products/8-2.jpg',2,1171.00,2342.00,0.00,0.00,2342.00,'{\"sku\":\"SW-190-A0-A2\",\"attributes\":\"(Size: L, Color: Brown)\"}','2024-03-11 00:14:22','2024-03-11 00:14:22'),(10,5,'Botble\\Ecommerce\\Models\\Product',58,'Xbox One Wireless Controller Black Color',NULL,'products/11.jpg',2,1149.00,2298.00,0.00,0.00,2298.00,'{\"sku\":\"SW-170-A0-A4\",\"attributes\":\"(Size: L, Color: Brown)\"}','2024-03-11 00:14:22','2024-03-11 00:14:22'),(11,5,'Botble\\Ecommerce\\Models\\Product',61,'EPSION Plaster Printer',NULL,'products/12-2.jpg',2,515.00,1030.00,0.00,0.00,1030.00,'{\"sku\":\"SW-199-A0-A2\",\"attributes\":\"(Color: Black, Size: XL)\"}','2024-03-11 00:14:22','2024-03-11 00:14:22'),(12,6,'Botble\\Ecommerce\\Models\\Product',46,'Samsung Smart Phone (Digital)',NULL,'products/9.jpg',3,538.00,1614.00,0.00,0.00,1614.00,'{\"sku\":\"SW-138-A0\",\"attributes\":\"(Color: Red, Size: XXL)\"}','2024-03-11 00:14:22','2024-03-11 00:14:22'),(13,7,'Botble\\Ecommerce\\Models\\Product',29,'Beat Headphone',NULL,'products/3.jpg',2,20.00,40.00,0.00,0.00,40.00,'{\"sku\":\"SW-146-A0-A1\",\"attributes\":\"(Size: L, Color: Black)\"}','2024-03-11 00:14:23','2024-03-11 00:14:23'),(14,8,'Botble\\Ecommerce\\Models\\Product',62,'Sound Intone I65 Earphone White Version (Digital)',NULL,'products/13.jpg',1,504.00,504.00,0.00,0.00,504.00,'{\"sku\":\"SW-156-A0\",\"attributes\":\"(Color: Blue, Size: XL)\"}','2024-03-11 00:14:23','2024-03-11 00:14:23'),(15,8,'Botble\\Ecommerce\\Models\\Product',80,'MVMTH Classical Leather Watch In Black (Digital)',NULL,'products/21-1.jpg',2,758.00,1516.00,0.00,0.00,1516.00,'{\"sku\":\"SW-115-A0-A1\",\"attributes\":\"(Size: L, Color: Brown)\"}','2024-03-11 00:14:23','2024-03-11 00:14:23'),(16,9,'Botble\\Ecommerce\\Models\\Product',39,'Audio Equipment',NULL,'products/7.jpg',2,522.00,1044.00,0.00,0.00,1044.00,'{\"sku\":\"SW-163-A0-A1\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-03-11 00:14:23','2024-03-11 00:14:23'),(17,10,'Botble\\Ecommerce\\Models\\Product',52,'Herschel Leather Duffle Bag In Brown Color',NULL,'products/10.jpg',2,1199.00,2398.00,0.00,0.00,2398.00,'{\"sku\":\"SW-147-A0-A3\",\"attributes\":\"(Color: Green, Size: L)\"}','2024-03-11 00:14:23','2024-03-11 00:14:23'),(18,10,'Botble\\Ecommerce\\Models\\Product',53,'Herschel Leather Duffle Bag In Brown Color',NULL,'products/10.jpg',2,1199.00,2398.00,0.00,0.00,2398.00,'{\"sku\":\"SW-147-A0-A4\",\"attributes\":\"(Color: Green, Size: XXL)\"}','2024-03-11 00:14:23','2024-03-11 00:14:23'),(19,10,'Botble\\Ecommerce\\Models\\Product',70,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,'products/17.jpg',2,520.00,1040.00,0.00,0.00,1040.00,'{\"sku\":\"SW-123-A0\",\"attributes\":\"(Color: Green, Size: L)\"}','2024-03-11 00:14:23','2024-03-11 00:14:23'),(20,11,'Botble\\Ecommerce\\Models\\Product',24,'Dual Camera 20MP (Digital)',NULL,'products/1.jpg',3,80.25,240.75,0.00,0.00,240.75,'{\"sku\":\"SW-107-A0\",\"attributes\":\"(Color: Blue, Size: XL)\"}','2024-03-11 00:14:23','2024-03-11 00:14:23'),(21,11,'Botble\\Ecommerce\\Models\\Product',54,'Xbox One Wireless Controller Black Color',NULL,'products/11.jpg',2,1149.00,2298.00,0.00,0.00,2298.00,'{\"sku\":\"SW-170-A0\",\"attributes\":\"(Color: Green, Size: XL)\"}','2024-03-11 00:14:23','2024-03-11 00:14:23'),(22,12,'Botble\\Ecommerce\\Models\\Product',70,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,'products/17.jpg',2,520.00,1040.00,0.00,0.00,1040.00,'{\"sku\":\"SW-123-A0\",\"attributes\":\"(Color: Green, Size: L)\"}','2024-03-11 00:14:24','2024-03-11 00:14:24'),(23,13,'Botble\\Ecommerce\\Models\\Product',27,'Smart Watches',NULL,'products/2-2.jpg',3,40.50,121.50,0.00,0.00,121.50,'{\"sku\":\"SW-148-A0-A2\",\"attributes\":\"(Color: Blue, Size: XXL)\"}','2024-03-11 00:14:24','2024-03-11 00:14:24'),(24,13,'Botble\\Ecommerce\\Models\\Product',46,'Samsung Smart Phone (Digital)',NULL,'products/9.jpg',1,538.00,538.00,0.00,0.00,538.00,'{\"sku\":\"SW-138-A0\",\"attributes\":\"(Color: Red, Size: XXL)\"}','2024-03-11 00:14:24','2024-03-11 00:14:24'),(25,14,'Botble\\Ecommerce\\Models\\Product',34,'Smart Watch External (Digital)',NULL,'products/5-2.jpg',3,744.00,2232.00,0.00,0.00,2232.00,'{\"sku\":\"SW-181-A0-A2\",\"attributes\":\"(Color: Green, Size: XXL)\"}','2024-03-11 00:14:24','2024-03-11 00:14:24'),(26,15,'Botble\\Ecommerce\\Models\\Product',73,'Aveeno Moisturizing Body Shower 450ml',NULL,'products/18-1.jpg',1,936.00,936.00,0.00,0.00,936.00,'{\"sku\":\"SW-111-A0-A1\",\"attributes\":\"(Size: M, Color: Black)\"}','2024-03-11 00:14:24','2024-03-11 00:14:24'),(27,16,'Botble\\Ecommerce\\Models\\Product',30,'Beat Headphone',NULL,'products/3.jpg',1,20.00,20.00,0.00,0.00,20.00,'{\"sku\":\"SW-146-A0-A2\",\"attributes\":\"(Color: Brown, Size: XXL)\"}','2024-03-11 00:14:24','2024-03-11 00:14:24'),(28,16,'Botble\\Ecommerce\\Models\\Product',61,'EPSION Plaster Printer',NULL,'products/12-2.jpg',3,515.00,1545.00,0.00,0.00,1545.00,'{\"sku\":\"SW-199-A0-A2\",\"attributes\":\"(Color: Black, Size: XL)\"}','2024-03-11 00:14:24','2024-03-11 00:14:24'),(29,17,'Botble\\Ecommerce\\Models\\Product',37,'Nikon HD camera',NULL,'products/6.jpg',1,404.00,404.00,0.00,0.00,404.00,'{\"sku\":\"SW-194-A0-A2\",\"attributes\":\"(Color: Red, Size: XL)\"}','2024-03-11 00:14:24','2024-03-11 00:14:24'),(30,18,'Botble\\Ecommerce\\Models\\Product',71,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,'products/17-1.jpg',1,520.00,520.00,0.00,0.00,520.00,'{\"sku\":\"SW-123-A0-A1\",\"attributes\":\"(Size: S, Color: Brown)\"}','2024-03-11 00:14:25','2024-03-11 00:14:25'),(31,19,'Botble\\Ecommerce\\Models\\Product',50,'Herschel Leather Duffle Bag In Brown Color',NULL,'products/10-1.jpg',2,1199.00,2398.00,0.00,0.00,2398.00,'{\"sku\":\"SW-147-A0-A1\",\"attributes\":\"(Color: Blue, Size: M)\"}','2024-03-11 00:14:25','2024-03-11 00:14:25'),(32,19,'Botble\\Ecommerce\\Models\\Product',51,'Herschel Leather Duffle Bag In Brown Color',NULL,'products/10-2.jpg',2,1199.00,2398.00,0.00,0.00,2398.00,'{\"sku\":\"SW-147-A0-A2\",\"attributes\":\"(Color: Green, Size: L)\"}','2024-03-11 00:14:25','2024-03-11 00:14:25'),(33,20,'Botble\\Ecommerce\\Models\\Product',62,'Sound Intone I65 Earphone White Version (Digital)',NULL,'products/13.jpg',2,504.00,1008.00,0.00,0.00,1008.00,'{\"sku\":\"SW-156-A0\",\"attributes\":\"(Color: Blue, Size: XL)\"}','2024-03-11 00:14:25','2024-03-11 00:14:25'),(34,21,'Botble\\Ecommerce\\Models\\Product',54,'Xbox One Wireless Controller Black Color',NULL,'products/11.jpg',1,1149.00,1149.00,0.00,0.00,1149.00,'{\"sku\":\"SW-170-A0\",\"attributes\":\"(Color: Green, Size: XL)\"}','2024-03-11 00:14:25','2024-03-11 00:14:25'),(35,22,'Botble\\Ecommerce\\Models\\Product',68,'Apple MacBook Air Retina 12-Inch Laptop',NULL,'products/16.jpg',2,568.00,1136.00,0.00,0.00,1136.00,'{\"sku\":\"SW-109-A0\",\"attributes\":\"(Size: XL, Color: Brown)\"}','2024-03-11 00:14:25','2024-03-11 00:14:25'),(36,22,'Botble\\Ecommerce\\Models\\Product',76,'NYX Beauty Couton Pallete Makeup 12',NULL,'products/20.jpg',3,899.00,2697.00,0.00,0.00,2697.00,'{\"sku\":\"SW-113-A0\",\"attributes\":\"(Color: Blue, Size: M)\"}','2024-03-11 00:14:25','2024-03-11 00:14:25'),(37,23,'Botble\\Ecommerce\\Models\\Product',72,'Aveeno Moisturizing Body Shower 450ml',NULL,'products/18.jpg',3,936.00,2808.00,0.00,0.00,2808.00,'{\"sku\":\"SW-111-A0\",\"attributes\":\"(Size: L, Color: Brown)\"}','2024-03-11 00:14:26','2024-03-11 00:14:26'),(38,24,'Botble\\Ecommerce\\Models\\Product',52,'Herschel Leather Duffle Bag In Brown Color',NULL,'products/10.jpg',1,1199.00,1199.00,0.00,0.00,1199.00,'{\"sku\":\"SW-147-A0-A3\",\"attributes\":\"(Color: Green, Size: L)\"}','2024-03-11 00:14:26','2024-03-11 00:14:26'),(39,24,'Botble\\Ecommerce\\Models\\Product',53,'Herschel Leather Duffle Bag In Brown Color',NULL,'products/10.jpg',1,1199.00,1199.00,0.00,0.00,1199.00,'{\"sku\":\"SW-147-A0-A4\",\"attributes\":\"(Color: Green, Size: XXL)\"}','2024-03-11 00:14:26','2024-03-11 00:14:26'),(40,24,'Botble\\Ecommerce\\Models\\Product',73,'Aveeno Moisturizing Body Shower 450ml',NULL,'products/18-1.jpg',2,936.00,1872.00,0.00,0.00,1872.00,'{\"sku\":\"SW-111-A0-A1\",\"attributes\":\"(Size: M, Color: Black)\"}','2024-03-11 00:14:26','2024-03-11 00:14:26'),(41,24,'Botble\\Ecommerce\\Models\\Product',74,'Aveeno Moisturizing Body Shower 450ml',NULL,'products/18-2.jpg',1,936.00,936.00,0.00,0.00,936.00,'{\"sku\":\"SW-111-A0-A2\",\"attributes\":\"(Size: L, Color: Brown)\"}','2024-03-11 00:14:26','2024-03-11 00:14:26'),(42,25,'Botble\\Ecommerce\\Models\\Product',37,'Nikon HD camera',NULL,'products/6.jpg',1,404.00,404.00,0.00,0.00,404.00,'{\"sku\":\"SW-194-A0-A2\",\"attributes\":\"(Color: Red, Size: XL)\"}','2024-03-11 00:14:26','2024-03-11 00:14:26'),(43,25,'Botble\\Ecommerce\\Models\\Product',79,'MVMTH Classical Leather Watch In Black (Digital)',NULL,'products/21.jpg',2,758.00,1516.00,0.00,0.00,1516.00,'{\"sku\":\"SW-115-A0\",\"attributes\":\"(Size: L, Color: Black)\"}','2024-03-11 00:14:26','2024-03-11 00:14:26'),(44,26,'Botble\\Ecommerce\\Models\\Product',45,'Smart Televisions',NULL,'products/8-2.jpg',2,1171.00,2342.00,0.00,0.00,2342.00,'{\"sku\":\"SW-190-A0-A2\",\"attributes\":\"(Size: L, Color: Brown)\"}','2024-03-11 00:14:26','2024-03-11 00:14:26'),(45,27,'Botble\\Ecommerce\\Models\\Product',78,'NYX Beauty Couton Pallete Makeup 12',NULL,'products/20-2.jpg',2,899.00,1798.00,0.00,0.00,1798.00,'{\"sku\":\"SW-113-A0-A2\",\"attributes\":\"(Size: M, Color: Black)\"}','2024-03-11 00:14:26','2024-03-11 00:14:26'),(46,28,'Botble\\Ecommerce\\Models\\Product',40,'Audio Equipment',NULL,'products/7.jpg',2,522.00,1044.00,0.00,0.00,1044.00,'{\"sku\":\"SW-163-A0-A2\",\"attributes\":\"(Color: Red, Size: XL)\"}','2024-03-11 00:14:27','2024-03-11 00:14:27'),(47,29,'Botble\\Ecommerce\\Models\\Product',83,'Baxter Care Hair Kit For Bearded Mens',NULL,'products/22-2.jpg',3,422.00,1266.00,0.00,0.00,1266.00,'{\"sku\":\"SW-112-A0-A2\",\"attributes\":\"(Size: L, Color: Brown)\"}','2024-03-11 00:14:27','2024-03-11 00:14:27'),(48,30,'Botble\\Ecommerce\\Models\\Product',84,'Ciate Palemore Lipstick Bold Red Color',NULL,'products/23.jpg',1,1015.00,1015.00,0.00,0.00,1015.00,'{\"sku\":\"SW-193-A0\",\"attributes\":\"(Color: Blue, Size: L)\"}','2024-03-11 00:14:27','2024-03-11 00:14:27'),(49,31,'Botble\\Ecommerce\\Models\\Product',37,'Nikon HD camera',NULL,'products/6.jpg',3,404.00,1212.00,0.00,0.00,1212.00,'{\"sku\":\"SW-194-A0-A2\",\"attributes\":\"(Color: Red, Size: XL)\"}','2024-03-11 00:14:27','2024-03-11 00:14:27'),(50,32,'Botble\\Ecommerce\\Models\\Product',54,'Xbox One Wireless Controller Black Color',NULL,'products/11.jpg',2,1149.00,2298.00,0.00,0.00,2298.00,'{\"sku\":\"SW-170-A0\",\"attributes\":\"(Color: Green, Size: XL)\"}','2024-03-11 00:14:27','2024-03-11 00:14:27'),(51,32,'Botble\\Ecommerce\\Models\\Product',64,'B&amp;O Play Mini Bluetooth Speaker',NULL,'products/14.jpg',2,540.00,1080.00,0.00,0.00,1080.00,'{\"sku\":\"SW-129-A0\",\"attributes\":\"(Color: Green, Size: XXL)\"}','2024-03-11 00:14:27','2024-03-11 00:14:27'),(52,33,'Botble\\Ecommerce\\Models\\Product',70,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,'products/17.jpg',3,520.00,1560.00,0.00,0.00,1560.00,'{\"sku\":\"SW-123-A0\",\"attributes\":\"(Color: Green, Size: L)\"}','2024-03-11 00:14:27','2024-03-11 00:14:27'),(53,34,'Botble\\Ecommerce\\Models\\Product',48,'Samsung Smart Phone (Digital)',NULL,'products/9-2.jpg',1,538.00,538.00,0.00,0.00,538.00,'{\"sku\":\"SW-138-A0-A2\",\"attributes\":\"(Size: M, Color: Black)\"}','2024-03-11 00:14:28','2024-03-11 00:14:28'),(54,35,'Botble\\Ecommerce\\Models\\Product',75,'NYX Beauty Couton Pallete Makeup 12',NULL,'products/19.jpg',2,1069.00,2138.00,0.00,0.00,2138.00,'{\"sku\":\"SW-131-A0\",\"attributes\":\"(Color: Green, Size: S)\"}','2024-03-11 00:14:28','2024-03-11 00:14:28'),(55,36,'Botble\\Ecommerce\\Models\\Product',40,'Audio Equipment',NULL,'products/7.jpg',3,522.00,1566.00,0.00,0.00,1566.00,'{\"sku\":\"SW-163-A0-A2\",\"attributes\":\"(Color: Red, Size: XL)\"}','2024-03-11 00:14:28','2024-03-11 00:14:28'),(56,36,'Botble\\Ecommerce\\Models\\Product',69,'Apple MacBook Air Retina 12-Inch Laptop',NULL,'products/16.jpg',2,568.00,1136.00,0.00,0.00,1136.00,'{\"sku\":\"SW-109-A0-A1\",\"attributes\":\"(Size: M, Color: Brown)\"}','2024-03-11 00:14:28','2024-03-11 00:14:28'),(57,37,'Botble\\Ecommerce\\Models\\Product',81,'Baxter Care Hair Kit For Bearded Mens',NULL,'products/22.jpg',2,422.00,844.00,0.00,0.00,844.00,'{\"sku\":\"SW-112-A0\",\"attributes\":\"(Color: Green, Size: M)\"}','2024-03-11 00:14:28','2024-03-11 00:14:28'),(58,37,'Botble\\Ecommerce\\Models\\Product',83,'Baxter Care Hair Kit For Bearded Mens',NULL,'products/22-2.jpg',2,422.00,844.00,0.00,0.00,844.00,'{\"sku\":\"SW-112-A0-A2\",\"attributes\":\"(Size: L, Color: Brown)\"}','2024-03-11 00:14:28','2024-03-11 00:14:28'),(59,38,'Botble\\Ecommerce\\Models\\Product',64,'B&amp;O Play Mini Bluetooth Speaker',NULL,'products/14.jpg',1,540.00,540.00,0.00,0.00,540.00,'{\"sku\":\"SW-129-A0\",\"attributes\":\"(Color: Green, Size: XXL)\"}','2024-03-11 00:14:28','2024-03-11 00:14:28'),(60,38,'Botble\\Ecommerce\\Models\\Product',65,'B&amp;O Play Mini Bluetooth Speaker',NULL,'products/14.jpg',1,540.00,540.00,0.00,0.00,540.00,'{\"sku\":\"SW-129-A0-A1\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-03-11 00:14:28','2024-03-11 00:14:28'),(61,39,'Botble\\Ecommerce\\Models\\Product',69,'Apple MacBook Air Retina 12-Inch Laptop',NULL,'products/16.jpg',3,568.00,1704.00,0.00,0.00,1704.00,'{\"sku\":\"SW-109-A0-A1\",\"attributes\":\"(Size: M, Color: Brown)\"}','2024-03-11 00:14:29','2024-03-11 00:14:29'),(62,39,'Botble\\Ecommerce\\Models\\Product',78,'NYX Beauty Couton Pallete Makeup 12',NULL,'products/20-2.jpg',2,899.00,1798.00,0.00,0.00,1798.00,'{\"sku\":\"SW-113-A0-A2\",\"attributes\":\"(Size: M, Color: Black)\"}','2024-03-11 00:14:29','2024-03-11 00:14:29'),(63,40,'Botble\\Ecommerce\\Models\\Product',30,'Beat Headphone',NULL,'products/3.jpg',2,20.00,40.00,0.00,0.00,40.00,'{\"sku\":\"SW-146-A0-A2\",\"attributes\":\"(Color: Brown, Size: XXL)\"}','2024-03-11 00:14:29','2024-03-11 00:14:29'),(64,40,'Botble\\Ecommerce\\Models\\Product',54,'Xbox One Wireless Controller Black Color',NULL,'products/11.jpg',1,1149.00,1149.00,0.00,0.00,1149.00,'{\"sku\":\"SW-170-A0\",\"attributes\":\"(Color: Green, Size: XL)\"}','2024-03-11 00:14:29','2024-03-11 00:14:29'),(65,41,'Botble\\Ecommerce\\Models\\Product',72,'Aveeno Moisturizing Body Shower 450ml',NULL,'products/18.jpg',1,936.00,936.00,0.00,0.00,936.00,'{\"sku\":\"SW-111-A0\",\"attributes\":\"(Size: L, Color: Brown)\"}','2024-03-11 00:14:29','2024-03-11 00:14:29'),(66,42,'Botble\\Ecommerce\\Models\\Product',31,'Red &amp; Black Headphone',NULL,'products/4.jpg',1,542.00,542.00,0.00,0.00,542.00,'{\"sku\":\"SW-109-A0\",\"attributes\":\"(Color: Blue, Size: XL)\"}','2024-03-11 00:14:29','2024-03-11 00:14:29'),(67,42,'Botble\\Ecommerce\\Models\\Product',79,'MVMTH Classical Leather Watch In Black (Digital)',NULL,'products/21.jpg',2,758.00,1516.00,0.00,0.00,1516.00,'{\"sku\":\"SW-115-A0\",\"attributes\":\"(Size: L, Color: Black)\"}','2024-03-11 00:14:29','2024-03-11 00:14:29'),(68,43,'Botble\\Ecommerce\\Models\\Product',73,'Aveeno Moisturizing Body Shower 450ml',NULL,'products/18-1.jpg',2,936.00,1872.00,0.00,0.00,1872.00,'{\"sku\":\"SW-111-A0-A1\",\"attributes\":\"(Size: M, Color: Black)\"}','2024-03-11 00:14:29','2024-03-11 00:14:29'),(69,43,'Botble\\Ecommerce\\Models\\Product',85,'Ciate Palemore Lipstick Bold Red Color',NULL,'products/23-1.jpg',3,1015.00,3045.00,0.00,0.00,3045.00,'{\"sku\":\"SW-193-A0-A1\",\"attributes\":\"(Size: M, Color: Brown)\"}','2024-03-11 00:14:29','2024-03-11 00:14:29'),(70,44,'Botble\\Ecommerce\\Models\\Product',63,'Sound Intone I65 Earphone White Version (Digital)',NULL,'products/13-1.jpg',1,504.00,504.00,0.00,0.00,504.00,'{\"sku\":\"SW-156-A0-A1\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-03-11 00:14:30','2024-03-11 00:14:30'),(71,45,'Botble\\Ecommerce\\Models\\Product',76,'NYX Beauty Couton Pallete Makeup 12',NULL,'products/20.jpg',1,899.00,899.00,0.00,0.00,899.00,'{\"sku\":\"SW-113-A0\",\"attributes\":\"(Color: Blue, Size: M)\"}','2024-03-11 00:14:30','2024-03-11 00:14:30');
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
INSERT INTO `ec_invoices` VALUES (1,'Botble\\Ecommerce\\Models\\Order',1,'INV-1','Aylin Effertz','',NULL,'frami.tyreek@example.com','+17628925007','7522 Koss Corners, Montanaborough, Rhode Island, RU',NULL,4757.00,0.00,0.00,0.00,'1','default',NULL,NULL,4757.00,NULL,1,'completed','2024-03-11 00:14:21','2024-02-28 08:14:21','2024-03-11 00:14:21'),(2,'Botble\\Ecommerce\\Models\\Order',2,'INV-2','Aylin Effertz','',NULL,'frami.tyreek@example.com','+17628925007','7522 Koss Corners, Montanaborough, Rhode Island, RU',NULL,1199.00,0.00,0.00,0.00,'1','default',NULL,NULL,1199.00,NULL,2,'completed','2024-03-11 00:14:22','2024-03-01 00:14:22','2024-03-11 00:14:22'),(3,'Botble\\Ecommerce\\Models\\Order',3,'INV-3','Dr. Michel Reynolds PhD','',NULL,'cristina.smitham@example.net','+14233056041','20837 Parisian Fall, West Laviniamouth, Arizona, CW',NULL,1266.00,0.00,0.00,0.00,'1','default',NULL,NULL,1266.00,NULL,3,'pending',NULL,'2024-03-07 20:14:22','2024-03-11 00:14:22'),(4,'Botble\\Ecommerce\\Models\\Order',4,'INV-4','Dr. Michel Reynolds PhD','',NULL,'cristina.smitham@example.net','+14233056041','20837 Parisian Fall, West Laviniamouth, Arizona, CW',NULL,5811.00,0.00,0.00,0.00,'1','default',NULL,NULL,5811.00,NULL,4,'completed','2024-03-11 00:14:22','2024-03-01 12:14:22','2024-03-11 00:14:22'),(5,'Botble\\Ecommerce\\Models\\Order',5,'INV-5','Dr. Michel Reynolds PhD','',NULL,'cristina.smitham@example.net','+14233056041','20837 Parisian Fall, West Laviniamouth, Arizona, CW',NULL,5670.00,0.00,0.00,0.00,'1','default',NULL,NULL,5670.00,NULL,5,'completed','2024-03-11 00:14:22','2024-02-25 00:14:22','2024-03-11 00:14:22'),(6,'Botble\\Ecommerce\\Models\\Order',6,'INV-6','Dr. Michel Reynolds PhD','',NULL,'cristina.smitham@example.net','+14233056041','20837 Parisian Fall, West Laviniamouth, Arizona, CW',NULL,1614.00,0.00,0.00,0.00,NULL,'',NULL,NULL,1614.00,NULL,6,'pending',NULL,'2024-03-09 12:14:22','2024-03-11 00:14:22'),(7,'Botble\\Ecommerce\\Models\\Order',7,'INV-7','Mr. Walton Pagac III','',NULL,'quincy.collins@example.net','+13365056070','18368 Sandrine Mill, Port Vada, Delaware, GU',NULL,40.00,0.00,0.00,0.00,'1','default',NULL,NULL,40.00,NULL,7,'completed','2024-03-11 00:14:23','2024-03-08 04:14:23','2024-03-11 00:14:23'),(8,'Botble\\Ecommerce\\Models\\Order',8,'INV-8','Mr. Walton Pagac III','',NULL,'quincy.collins@example.net','+13365056070','18368 Sandrine Mill, Port Vada, Delaware, GU',NULL,2020.00,0.00,0.00,0.00,NULL,'',NULL,NULL,2020.00,NULL,8,'completed','2024-03-11 00:14:23','2024-02-27 06:14:23','2024-03-11 00:14:23'),(9,'Botble\\Ecommerce\\Models\\Order',9,'INV-9','Mr. Walton Pagac III','',NULL,'quincy.collins@example.net','+13365056070','18368 Sandrine Mill, Port Vada, Delaware, GU',NULL,1044.00,0.00,0.00,0.00,'1','default',NULL,NULL,1044.00,NULL,9,'pending',NULL,'2024-03-08 08:14:23','2024-03-11 00:14:23'),(10,'Botble\\Ecommerce\\Models\\Order',10,'INV-10','Mr. Walton Pagac III','',NULL,'quincy.collins@example.net','+13365056070','18368 Sandrine Mill, Port Vada, Delaware, GU',NULL,5836.00,0.00,0.00,0.00,'1','default',NULL,NULL,5836.00,NULL,10,'completed','2024-03-11 00:14:23','2024-03-05 16:14:23','2024-03-11 00:14:23'),(11,'Botble\\Ecommerce\\Models\\Order',11,'INV-11','Dr. Michel Reynolds PhD','',NULL,'cristina.smitham@example.net','+14233056041','20837 Parisian Fall, West Laviniamouth, Arizona, CW',NULL,2538.75,0.00,0.00,0.00,'1','default',NULL,NULL,2538.75,NULL,11,'completed','2024-03-11 00:14:23','2024-02-28 18:14:23','2024-03-11 00:14:23'),(12,'Botble\\Ecommerce\\Models\\Order',12,'INV-12','Dr. Michel Reynolds PhD','',NULL,'cristina.smitham@example.net','+14233056041','20837 Parisian Fall, West Laviniamouth, Arizona, CW',NULL,1040.00,0.00,0.00,0.00,NULL,'',NULL,NULL,1040.00,NULL,12,'pending',NULL,'2024-03-02 06:14:24','2024-03-11 00:14:24'),(13,'Botble\\Ecommerce\\Models\\Order',13,'INV-13','Dr. Elyse Prohaska','',NULL,'customer@botble.com','+18127482672','83639 Hickle Drive Suite 309, West Addieville, Kansas, SA',NULL,659.50,0.00,0.00,0.00,'1','default',NULL,NULL,659.50,NULL,13,'completed','2024-03-11 00:14:24','2024-03-01 16:14:24','2024-03-11 00:14:24'),(14,'Botble\\Ecommerce\\Models\\Order',14,'INV-14','Dr. Elyse Prohaska','',NULL,'customer@botble.com','+18127482672','83639 Hickle Drive Suite 309, West Addieville, Kansas, SA',NULL,2232.00,0.00,0.00,0.00,NULL,'',NULL,NULL,2232.00,NULL,14,'completed','2024-03-11 00:14:24','2024-03-08 16:14:24','2024-03-11 00:14:24'),(15,'Botble\\Ecommerce\\Models\\Order',15,'INV-15','Dr. Elyse Prohaska','',NULL,'customer@botble.com','+18127482672','83639 Hickle Drive Suite 309, West Addieville, Kansas, SA',NULL,936.00,0.00,0.00,0.00,'1','default',NULL,NULL,936.00,NULL,15,'completed','2024-03-11 00:14:24','2024-03-01 16:14:24','2024-03-11 00:14:24'),(16,'Botble\\Ecommerce\\Models\\Order',16,'INV-16','Mr. Nels Legros IV','',NULL,'schulist.ariel@example.com','+12512908614','260 Brennon Estates Apt. 027, Kassulkehaven, Utah, LS',NULL,1565.00,0.00,0.00,0.00,'1','default',NULL,NULL,1565.00,NULL,16,'pending',NULL,'2024-03-01 06:14:24','2024-03-11 00:14:24'),(17,'Botble\\Ecommerce\\Models\\Order',17,'INV-17','Mr. Nels Legros IV','',NULL,'schulist.ariel@example.com','+12512908614','260 Brennon Estates Apt. 027, Kassulkehaven, Utah, LS',NULL,404.00,0.00,0.00,0.00,'1','default',NULL,NULL,404.00,NULL,17,'completed','2024-03-11 00:14:24','2024-03-03 10:14:24','2024-03-11 00:14:24'),(18,'Botble\\Ecommerce\\Models\\Order',18,'INV-18','Mr. Nels Legros IV','',NULL,'schulist.ariel@example.com','+12512908614','260 Brennon Estates Apt. 027, Kassulkehaven, Utah, LS',NULL,520.00,0.00,0.00,0.00,NULL,'',NULL,NULL,520.00,NULL,18,'pending',NULL,'2024-03-02 08:14:25','2024-03-11 00:14:25'),(19,'Botble\\Ecommerce\\Models\\Order',19,'INV-19','Dr. Michel Reynolds PhD','',NULL,'cristina.smitham@example.net','+14233056041','20837 Parisian Fall, West Laviniamouth, Arizona, CW',NULL,4796.00,0.00,0.00,0.00,'1','default',NULL,NULL,4796.00,NULL,19,'completed','2024-03-11 00:14:25','2024-03-10 00:14:25','2024-03-11 00:14:25'),(20,'Botble\\Ecommerce\\Models\\Order',20,'INV-20','Dr. Michel Reynolds PhD','',NULL,'cristina.smitham@example.net','+14233056041','20837 Parisian Fall, West Laviniamouth, Arizona, CW',NULL,1008.00,0.00,0.00,0.00,NULL,'',NULL,NULL,1008.00,NULL,20,'completed','2024-03-11 00:14:25','2024-03-07 00:14:25','2024-03-11 00:14:25'),(21,'Botble\\Ecommerce\\Models\\Order',21,'INV-21','Mr. Nels Legros IV','',NULL,'schulist.ariel@example.com','+12512908614','260 Brennon Estates Apt. 027, Kassulkehaven, Utah, LS',NULL,1149.00,0.00,0.00,0.00,'1','default',NULL,NULL,1149.00,NULL,21,'pending',NULL,'2024-03-05 12:14:25','2024-03-11 00:14:25'),(22,'Botble\\Ecommerce\\Models\\Order',22,'INV-22','Mr. Nels Legros IV','',NULL,'schulist.ariel@example.com','+12512908614','260 Brennon Estates Apt. 027, Kassulkehaven, Utah, LS',NULL,3833.00,0.00,0.00,0.00,'1','default',NULL,NULL,3833.00,NULL,22,'completed','2024-03-11 00:14:25','2024-03-09 04:14:25','2024-03-11 00:14:25'),(23,'Botble\\Ecommerce\\Models\\Order',23,'INV-23','Mr. Nels Legros IV','',NULL,'schulist.ariel@example.com','+12512908614','260 Brennon Estates Apt. 027, Kassulkehaven, Utah, LS',NULL,2808.00,0.00,0.00,0.00,'1','default',NULL,NULL,2808.00,NULL,23,'pending',NULL,'2024-03-05 12:14:26','2024-03-11 00:14:26'),(24,'Botble\\Ecommerce\\Models\\Order',24,'INV-24','Dr. Michel Reynolds PhD','',NULL,'cristina.smitham@example.net','+14233056041','20837 Parisian Fall, West Laviniamouth, Arizona, CW',NULL,5206.00,0.00,0.00,0.00,'1','default',NULL,NULL,5206.00,NULL,24,'completed','2024-03-11 00:14:26','2024-03-09 08:14:26','2024-03-11 00:14:26'),(25,'Botble\\Ecommerce\\Models\\Order',25,'INV-25','Dr. Michel Reynolds PhD','',NULL,'cristina.smitham@example.net','+14233056041','20837 Parisian Fall, West Laviniamouth, Arizona, CW',NULL,1920.00,0.00,0.00,0.00,'1','default',NULL,NULL,1920.00,NULL,25,'completed','2024-03-11 00:14:26','2024-03-09 12:14:26','2024-03-11 00:14:26'),(26,'Botble\\Ecommerce\\Models\\Order',26,'INV-26','Dr. Michel Reynolds PhD','',NULL,'cristina.smitham@example.net','+14233056041','20837 Parisian Fall, West Laviniamouth, Arizona, CW',NULL,2342.00,0.00,0.00,0.00,'1','default',NULL,NULL,2342.00,NULL,26,'completed','2024-03-11 00:14:26','2024-03-08 00:14:26','2024-03-11 00:14:26'),(27,'Botble\\Ecommerce\\Models\\Order',27,'INV-27','Dr. Michel Reynolds PhD','',NULL,'cristina.smitham@example.net','+14233056041','20837 Parisian Fall, West Laviniamouth, Arizona, CW',NULL,1798.00,0.00,0.00,0.00,'1','default',NULL,NULL,1798.00,NULL,27,'completed','2024-03-11 00:14:26','2024-03-08 00:14:26','2024-03-11 00:14:26'),(28,'Botble\\Ecommerce\\Models\\Order',28,'INV-28','Dr. Elyse Prohaska','',NULL,'customer@botble.com','+18127482672','83639 Hickle Drive Suite 309, West Addieville, Kansas, SA',NULL,1044.00,0.00,0.00,0.00,'1','default',NULL,NULL,1044.00,NULL,28,'completed','2024-03-11 00:14:27','2024-03-07 16:14:27','2024-03-11 00:14:27'),(29,'Botble\\Ecommerce\\Models\\Order',29,'INV-29','Dr. Elyse Prohaska','',NULL,'customer@botble.com','+18127482672','83639 Hickle Drive Suite 309, West Addieville, Kansas, SA',NULL,1266.00,0.00,0.00,0.00,'1','default',NULL,NULL,1266.00,NULL,29,'completed','2024-03-11 00:14:27','2024-03-08 08:14:27','2024-03-11 00:14:27'),(30,'Botble\\Ecommerce\\Models\\Order',30,'INV-30','Dr. Elyse Prohaska','',NULL,'customer@botble.com','+18127482672','83639 Hickle Drive Suite 309, West Addieville, Kansas, SA',NULL,1015.00,0.00,0.00,0.00,'1','default',NULL,NULL,1015.00,NULL,30,'completed','2024-03-11 00:14:27','2024-03-05 16:14:27','2024-03-11 00:14:27'),(31,'Botble\\Ecommerce\\Models\\Order',31,'INV-31','Mr. Walton Pagac III','',NULL,'quincy.collins@example.net','+13365056070','18368 Sandrine Mill, Port Vada, Delaware, GU',NULL,1212.00,0.00,0.00,0.00,'1','default',NULL,NULL,1212.00,NULL,31,'completed','2024-03-11 00:14:27','2024-03-07 12:14:27','2024-03-11 00:14:27'),(32,'Botble\\Ecommerce\\Models\\Order',32,'INV-32','Mr. Walton Pagac III','',NULL,'quincy.collins@example.net','+13365056070','18368 Sandrine Mill, Port Vada, Delaware, GU',NULL,3378.00,0.00,0.00,0.00,'1','default',NULL,NULL,3378.00,NULL,32,'completed','2024-03-11 00:14:27','2024-03-10 10:14:27','2024-03-11 00:14:27'),(33,'Botble\\Ecommerce\\Models\\Order',33,'INV-33','Mr. Walton Pagac III','',NULL,'quincy.collins@example.net','+13365056070','18368 Sandrine Mill, Port Vada, Delaware, GU',NULL,1560.00,0.00,0.00,0.00,NULL,'',NULL,NULL,1560.00,NULL,33,'completed','2024-03-11 00:14:27','2024-03-09 06:14:27','2024-03-11 00:14:27'),(34,'Botble\\Ecommerce\\Models\\Order',34,'INV-34','Mr. Walton Pagac III','',NULL,'quincy.collins@example.net','+13365056070','18368 Sandrine Mill, Port Vada, Delaware, GU',NULL,538.00,0.00,0.00,0.00,NULL,'',NULL,NULL,538.00,NULL,34,'completed','2024-03-11 00:14:28','2024-03-06 12:14:28','2024-03-11 00:14:28'),(35,'Botble\\Ecommerce\\Models\\Order',35,'INV-35','Mr. Walton Pagac III','',NULL,'quincy.collins@example.net','+13365056070','18368 Sandrine Mill, Port Vada, Delaware, GU',NULL,2138.00,0.00,0.00,0.00,'1','default',NULL,NULL,2138.00,NULL,35,'completed','2024-03-11 00:14:28','2024-03-09 12:14:28','2024-03-11 00:14:28'),(36,'Botble\\Ecommerce\\Models\\Order',36,'INV-36','Hertha Schuster','',NULL,'kaylee.mertz@example.com','+12515480623','50668 Okey Forge Suite 419, Raefurt, Alaska, AI',NULL,2702.00,0.00,0.00,0.00,'1','default',NULL,NULL,2702.00,NULL,36,'pending',NULL,'2024-03-08 22:14:28','2024-03-11 00:14:28'),(37,'Botble\\Ecommerce\\Models\\Order',37,'INV-37','Hertha Schuster','',NULL,'kaylee.mertz@example.com','+12515480623','50668 Okey Forge Suite 419, Raefurt, Alaska, AI',NULL,1688.00,0.00,0.00,0.00,'1','default',NULL,NULL,1688.00,NULL,37,'completed','2024-03-11 00:14:28','2024-03-06 20:14:28','2024-03-11 00:14:28'),(38,'Botble\\Ecommerce\\Models\\Order',38,'INV-38','Aylin Effertz','',NULL,'frami.tyreek@example.com','+17628925007','7522 Koss Corners, Montanaborough, Rhode Island, RU',NULL,1080.00,0.00,0.00,0.00,'1','default',NULL,NULL,1080.00,NULL,38,'completed','2024-03-11 00:14:28','2024-03-09 16:14:28','2024-03-11 00:14:28'),(39,'Botble\\Ecommerce\\Models\\Order',39,'INV-39','Aylin Effertz','',NULL,'frami.tyreek@example.com','+17628925007','7522 Koss Corners, Montanaborough, Rhode Island, RU',NULL,3502.00,0.00,0.00,0.00,'1','default',NULL,NULL,3502.00,NULL,39,'completed','2024-03-11 00:14:29','2024-03-07 16:14:29','2024-03-11 00:14:29'),(40,'Botble\\Ecommerce\\Models\\Order',40,'INV-40','Dr. Michel Reynolds PhD','',NULL,'cristina.smitham@example.net','+14233056041','20837 Parisian Fall, West Laviniamouth, Arizona, CW',NULL,1189.00,0.00,0.00,0.00,'1','default',NULL,NULL,1189.00,NULL,40,'completed','2024-03-11 00:14:29','2024-03-10 00:14:29','2024-03-11 00:14:29'),(41,'Botble\\Ecommerce\\Models\\Order',41,'INV-41','Dr. Michel Reynolds PhD','',NULL,'cristina.smitham@example.net','+14233056041','20837 Parisian Fall, West Laviniamouth, Arizona, CW',NULL,936.00,0.00,0.00,0.00,'1','default',NULL,NULL,936.00,NULL,41,'completed','2024-03-11 00:14:29','2024-03-09 12:14:29','2024-03-11 00:14:29'),(42,'Botble\\Ecommerce\\Models\\Order',42,'INV-42','Aylin Effertz','',NULL,'frami.tyreek@example.com','+17628925007','7522 Koss Corners, Montanaborough, Rhode Island, RU',NULL,2058.00,0.00,0.00,0.00,'1','default',NULL,NULL,2058.00,NULL,42,'completed','2024-03-11 00:14:29','2024-03-09 16:14:29','2024-03-11 00:14:29'),(43,'Botble\\Ecommerce\\Models\\Order',43,'INV-43','Aylin Effertz','',NULL,'frami.tyreek@example.com','+17628925007','7522 Koss Corners, Montanaborough, Rhode Island, RU',NULL,4917.00,0.00,0.00,0.00,'1','default',NULL,NULL,4917.00,NULL,43,'completed','2024-03-11 00:14:29','2024-03-10 08:14:29','2024-03-11 00:14:29'),(44,'Botble\\Ecommerce\\Models\\Order',44,'INV-44','Mr. Walton Pagac III','',NULL,'quincy.collins@example.net','+13365056070','18368 Sandrine Mill, Port Vada, Delaware, GU',NULL,504.00,0.00,0.00,0.00,NULL,'',NULL,NULL,504.00,NULL,44,'completed','2024-03-11 00:14:30','2024-03-10 18:14:30','2024-03-11 00:14:30'),(45,'Botble\\Ecommerce\\Models\\Order',45,'INV-45','Mr. Walton Pagac III','',NULL,'quincy.collins@example.net','+13365056070','18368 Sandrine Mill, Port Vada, Delaware, GU',NULL,899.00,0.00,0.00,0.00,'1','default',NULL,NULL,899.00,NULL,45,'completed','2024-03-11 00:14:30','2024-03-10 08:14:30','2024-03-11 00:14:30');
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Aylin Effertz','+17628925007','frami.tyreek@example.com','RU','Rhode Island','Montanaborough','7522 Koss Corners',1,'02353','shipping_address'),(2,'Aylin Effertz','+17628925007','frami.tyreek@example.com','RU','Rhode Island','Montanaborough','7522 Koss Corners',2,'02353','shipping_address'),(3,'Dr. Michel Reynolds PhD','+14233056041','cristina.smitham@example.net','CW','Arizona','West Laviniamouth','20837 Parisian Fall',3,'97666-3788','shipping_address'),(4,'Dr. Michel Reynolds PhD','+14233056041','cristina.smitham@example.net','CW','Arizona','West Laviniamouth','20837 Parisian Fall',4,'97666-3788','shipping_address'),(5,'Dr. Michel Reynolds PhD','+14233056041','cristina.smitham@example.net','CW','Arizona','West Laviniamouth','20837 Parisian Fall',5,'97666-3788','shipping_address'),(6,'Dr. Michel Reynolds PhD','+14233056041','cristina.smitham@example.net','CW','Arizona','West Laviniamouth','20837 Parisian Fall',6,'97666-3788','shipping_address'),(7,'Mr. Walton Pagac III','+13365056070','quincy.collins@example.net','GU','Delaware','Port Vada','18368 Sandrine Mill',7,'75805-4230','shipping_address'),(8,'Mr. Walton Pagac III','+13365056070','quincy.collins@example.net','GU','Delaware','Port Vada','18368 Sandrine Mill',8,'75805-4230','shipping_address'),(9,'Mr. Walton Pagac III','+13365056070','quincy.collins@example.net','GU','Delaware','Port Vada','18368 Sandrine Mill',9,'75805-4230','shipping_address'),(10,'Mr. Walton Pagac III','+13365056070','quincy.collins@example.net','GU','Delaware','Port Vada','18368 Sandrine Mill',10,'75805-4230','shipping_address'),(11,'Dr. Michel Reynolds PhD','+14233056041','cristina.smitham@example.net','CW','Arizona','West Laviniamouth','20837 Parisian Fall',11,'97666-3788','shipping_address'),(12,'Dr. Michel Reynolds PhD','+14233056041','cristina.smitham@example.net','CW','Arizona','West Laviniamouth','20837 Parisian Fall',12,'97666-3788','shipping_address'),(13,'Dr. Elyse Prohaska','+18127482672','customer@botble.com','SA','Kansas','West Addieville','83639 Hickle Drive Suite 309',13,'95742','shipping_address'),(14,'Dr. Elyse Prohaska','+18127482672','customer@botble.com','SA','Kansas','West Addieville','83639 Hickle Drive Suite 309',14,'95742','shipping_address'),(15,'Dr. Elyse Prohaska','+18127482672','customer@botble.com','SA','Kansas','West Addieville','83639 Hickle Drive Suite 309',15,'95742','shipping_address'),(16,'Mr. Nels Legros IV','+12512908614','schulist.ariel@example.com','LS','Utah','Kassulkehaven','260 Brennon Estates Apt. 027',16,'24166-7166','shipping_address'),(17,'Mr. Nels Legros IV','+12512908614','schulist.ariel@example.com','LS','Utah','Kassulkehaven','260 Brennon Estates Apt. 027',17,'24166-7166','shipping_address'),(18,'Mr. Nels Legros IV','+12512908614','schulist.ariel@example.com','LS','Utah','Kassulkehaven','260 Brennon Estates Apt. 027',18,'24166-7166','shipping_address'),(19,'Dr. Michel Reynolds PhD','+14233056041','cristina.smitham@example.net','CW','Arizona','West Laviniamouth','20837 Parisian Fall',19,'97666-3788','shipping_address'),(20,'Dr. Michel Reynolds PhD','+14233056041','cristina.smitham@example.net','CW','Arizona','West Laviniamouth','20837 Parisian Fall',20,'97666-3788','shipping_address'),(21,'Mr. Nels Legros IV','+12512908614','schulist.ariel@example.com','LS','Utah','Kassulkehaven','260 Brennon Estates Apt. 027',21,'24166-7166','shipping_address'),(22,'Mr. Nels Legros IV','+12512908614','schulist.ariel@example.com','LS','Utah','Kassulkehaven','260 Brennon Estates Apt. 027',22,'24166-7166','shipping_address'),(23,'Mr. Nels Legros IV','+12512908614','schulist.ariel@example.com','LS','Utah','Kassulkehaven','260 Brennon Estates Apt. 027',23,'24166-7166','shipping_address'),(24,'Dr. Michel Reynolds PhD','+14233056041','cristina.smitham@example.net','CW','Arizona','West Laviniamouth','20837 Parisian Fall',24,'97666-3788','shipping_address'),(25,'Dr. Michel Reynolds PhD','+14233056041','cristina.smitham@example.net','CW','Arizona','West Laviniamouth','20837 Parisian Fall',25,'97666-3788','shipping_address'),(26,'Dr. Michel Reynolds PhD','+14233056041','cristina.smitham@example.net','CW','Arizona','West Laviniamouth','20837 Parisian Fall',26,'97666-3788','shipping_address'),(27,'Dr. Michel Reynolds PhD','+14233056041','cristina.smitham@example.net','CW','Arizona','West Laviniamouth','20837 Parisian Fall',27,'97666-3788','shipping_address'),(28,'Dr. Elyse Prohaska','+18127482672','customer@botble.com','SA','Kansas','West Addieville','83639 Hickle Drive Suite 309',28,'95742','shipping_address'),(29,'Dr. Elyse Prohaska','+18127482672','customer@botble.com','SA','Kansas','West Addieville','83639 Hickle Drive Suite 309',29,'95742','shipping_address'),(30,'Dr. Elyse Prohaska','+18127482672','customer@botble.com','SA','Kansas','West Addieville','83639 Hickle Drive Suite 309',30,'95742','shipping_address'),(31,'Mr. Walton Pagac III','+13365056070','quincy.collins@example.net','GU','Delaware','Port Vada','18368 Sandrine Mill',31,'75805-4230','shipping_address'),(32,'Mr. Walton Pagac III','+13365056070','quincy.collins@example.net','GU','Delaware','Port Vada','18368 Sandrine Mill',32,'75805-4230','shipping_address'),(33,'Mr. Walton Pagac III','+13365056070','quincy.collins@example.net','GU','Delaware','Port Vada','18368 Sandrine Mill',33,'75805-4230','shipping_address'),(34,'Mr. Walton Pagac III','+13365056070','quincy.collins@example.net','GU','Delaware','Port Vada','18368 Sandrine Mill',34,'75805-4230','shipping_address'),(35,'Mr. Walton Pagac III','+13365056070','quincy.collins@example.net','GU','Delaware','Port Vada','18368 Sandrine Mill',35,'75805-4230','shipping_address'),(36,'Hertha Schuster','+12515480623','kaylee.mertz@example.com','AI','Alaska','Raefurt','50668 Okey Forge Suite 419',36,'74038','shipping_address'),(37,'Hertha Schuster','+12515480623','kaylee.mertz@example.com','AI','Alaska','Raefurt','50668 Okey Forge Suite 419',37,'74038','shipping_address'),(38,'Aylin Effertz','+17628925007','frami.tyreek@example.com','RU','Rhode Island','Montanaborough','7522 Koss Corners',38,'02353','shipping_address'),(39,'Aylin Effertz','+17628925007','frami.tyreek@example.com','RU','Rhode Island','Montanaborough','7522 Koss Corners',39,'02353','shipping_address'),(40,'Dr. Michel Reynolds PhD','+14233056041','cristina.smitham@example.net','CW','Arizona','West Laviniamouth','20837 Parisian Fall',40,'97666-3788','shipping_address'),(41,'Dr. Michel Reynolds PhD','+14233056041','cristina.smitham@example.net','CW','Arizona','West Laviniamouth','20837 Parisian Fall',41,'97666-3788','shipping_address'),(42,'Aylin Effertz','+17628925007','frami.tyreek@example.com','RU','Rhode Island','Montanaborough','7522 Koss Corners',42,'02353','shipping_address'),(43,'Aylin Effertz','+17628925007','frami.tyreek@example.com','RU','Rhode Island','Montanaborough','7522 Koss Corners',43,'02353','shipping_address'),(44,'Mr. Walton Pagac III','+13365056070','quincy.collins@example.net','GU','Delaware','Port Vada','18368 Sandrine Mill',44,'75805-4230','shipping_address'),(45,'Mr. Walton Pagac III','+13365056070','quincy.collins@example.net','GU','Delaware','Port Vada','18368 Sandrine Mill',45,'75805-4230','shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2024-02-28 08:14:21','2024-02-28 08:14:21'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2024-02-28 08:14:21','2024-02-28 08:14:21'),(3,'confirm_payment','Payment was confirmed (amount $4,757.00) by %user_name%',0,1,NULL,'2024-03-11 00:14:21','2024-03-11 00:14:21'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2024-03-11 00:14:22','2024-03-11 00:14:22'),(5,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2024-03-01 00:14:22','2024-03-01 00:14:22'),(6,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2024-03-01 00:14:22','2024-03-01 00:14:22'),(7,'confirm_payment','Payment was confirmed (amount $1,199.00) by %user_name%',0,2,NULL,'2024-03-11 00:14:22','2024-03-11 00:14:22'),(8,'create_shipment','Created shipment for order',0,2,NULL,'2024-03-11 00:14:22','2024-03-11 00:14:22'),(9,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2024-03-07 20:14:22','2024-03-07 20:14:22'),(10,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2024-03-07 20:14:22','2024-03-07 20:14:22'),(11,'create_shipment','Created shipment for order',0,3,NULL,'2024-03-11 00:14:22','2024-03-11 00:14:22'),(12,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2024-03-01 12:14:22','2024-03-01 12:14:22'),(13,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2024-03-01 12:14:22','2024-03-01 12:14:22'),(14,'confirm_payment','Payment was confirmed (amount $5,811.00) by %user_name%',0,4,NULL,'2024-03-11 00:14:22','2024-03-11 00:14:22'),(15,'create_shipment','Created shipment for order',0,4,NULL,'2024-03-11 00:14:22','2024-03-11 00:14:22'),(16,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,NULL,'2024-03-11 00:14:22','2024-03-11 00:14:22'),(17,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2024-02-25 00:14:22','2024-02-25 00:14:22'),(18,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2024-02-25 00:14:22','2024-02-25 00:14:22'),(19,'confirm_payment','Payment was confirmed (amount $5,670.00) by %user_name%',0,5,NULL,'2024-03-11 00:14:22','2024-03-11 00:14:22'),(20,'create_shipment','Created shipment for order',0,5,NULL,'2024-03-11 00:14:22','2024-03-11 00:14:22'),(21,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,NULL,'2024-03-11 00:14:22','2024-03-11 00:14:22'),(22,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2024-03-09 12:14:22','2024-03-09 12:14:22'),(23,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2024-03-09 12:14:22','2024-03-09 12:14:22'),(24,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2024-03-08 04:14:23','2024-03-08 04:14:23'),(25,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2024-03-08 04:14:23','2024-03-08 04:14:23'),(26,'confirm_payment','Payment was confirmed (amount $40.00) by %user_name%',0,7,NULL,'2024-03-11 00:14:23','2024-03-11 00:14:23'),(27,'create_shipment','Created shipment for order',0,7,NULL,'2024-03-11 00:14:23','2024-03-11 00:14:23'),(28,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,7,NULL,'2024-03-11 00:14:23','2024-03-11 00:14:23'),(29,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2024-02-27 06:14:23','2024-02-27 06:14:23'),(30,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2024-02-27 06:14:23','2024-02-27 06:14:23'),(31,'confirm_payment','Payment was confirmed (amount $2,020.00) by %user_name%',0,8,NULL,'2024-03-11 00:14:23','2024-03-11 00:14:23'),(32,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,8,NULL,'2024-03-11 00:14:23','2024-03-11 00:14:23'),(33,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2024-03-08 08:14:23','2024-03-08 08:14:23'),(34,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2024-03-08 08:14:23','2024-03-08 08:14:23'),(35,'create_shipment','Created shipment for order',0,9,NULL,'2024-03-11 00:14:23','2024-03-11 00:14:23'),(36,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2024-03-05 16:14:23','2024-03-05 16:14:23'),(37,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2024-03-05 16:14:23','2024-03-05 16:14:23'),(38,'confirm_payment','Payment was confirmed (amount $5,836.00) by %user_name%',0,10,NULL,'2024-03-11 00:14:23','2024-03-11 00:14:23'),(39,'create_shipment','Created shipment for order',0,10,NULL,'2024-03-11 00:14:23','2024-03-11 00:14:23'),(40,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2024-02-28 18:14:23','2024-02-28 18:14:23'),(41,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2024-02-28 18:14:23','2024-02-28 18:14:23'),(42,'confirm_payment','Payment was confirmed (amount $2,538.75) by %user_name%',0,11,NULL,'2024-03-11 00:14:23','2024-03-11 00:14:23'),(43,'create_shipment','Created shipment for order',0,11,NULL,'2024-03-11 00:14:23','2024-03-11 00:14:23'),(44,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,NULL,'2024-03-11 00:14:24','2024-03-11 00:14:24'),(45,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2024-03-02 06:14:24','2024-03-02 06:14:24'),(46,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2024-03-02 06:14:24','2024-03-02 06:14:24'),(47,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2024-03-01 16:14:24','2024-03-01 16:14:24'),(48,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2024-03-01 16:14:24','2024-03-01 16:14:24'),(49,'confirm_payment','Payment was confirmed (amount $659.50) by %user_name%',0,13,NULL,'2024-03-11 00:14:24','2024-03-11 00:14:24'),(50,'create_shipment','Created shipment for order',0,13,NULL,'2024-03-11 00:14:24','2024-03-11 00:14:24'),(51,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2024-03-08 16:14:24','2024-03-08 16:14:24'),(52,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2024-03-08 16:14:24','2024-03-08 16:14:24'),(53,'confirm_payment','Payment was confirmed (amount $2,232.00) by %user_name%',0,14,NULL,'2024-03-11 00:14:24','2024-03-11 00:14:24'),(54,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,14,NULL,'2024-03-11 00:14:24','2024-03-11 00:14:24'),(55,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2024-03-01 16:14:24','2024-03-01 16:14:24'),(56,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2024-03-01 16:14:24','2024-03-01 16:14:24'),(57,'confirm_payment','Payment was confirmed (amount $936.00) by %user_name%',0,15,NULL,'2024-03-11 00:14:24','2024-03-11 00:14:24'),(58,'create_shipment','Created shipment for order',0,15,NULL,'2024-03-11 00:14:24','2024-03-11 00:14:24'),(59,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,NULL,'2024-03-11 00:14:24','2024-03-11 00:14:24'),(60,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2024-03-01 06:14:24','2024-03-01 06:14:24'),(61,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2024-03-01 06:14:24','2024-03-01 06:14:24'),(62,'create_shipment','Created shipment for order',0,16,NULL,'2024-03-11 00:14:24','2024-03-11 00:14:24'),(63,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2024-03-03 10:14:24','2024-03-03 10:14:24'),(64,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2024-03-03 10:14:24','2024-03-03 10:14:24'),(65,'confirm_payment','Payment was confirmed (amount $404.00) by %user_name%',0,17,NULL,'2024-03-11 00:14:24','2024-03-11 00:14:24'),(66,'create_shipment','Created shipment for order',0,17,NULL,'2024-03-11 00:14:25','2024-03-11 00:14:25'),(67,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2024-03-02 08:14:25','2024-03-02 08:14:25'),(68,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2024-03-02 08:14:25','2024-03-02 08:14:25'),(69,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2024-03-10 00:14:25','2024-03-10 00:14:25'),(70,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2024-03-10 00:14:25','2024-03-10 00:14:25'),(71,'confirm_payment','Payment was confirmed (amount $4,796.00) by %user_name%',0,19,NULL,'2024-03-11 00:14:25','2024-03-11 00:14:25'),(72,'create_shipment','Created shipment for order',0,19,NULL,'2024-03-11 00:14:25','2024-03-11 00:14:25'),(73,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2024-03-07 00:14:25','2024-03-07 00:14:25'),(74,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2024-03-07 00:14:25','2024-03-07 00:14:25'),(75,'confirm_payment','Payment was confirmed (amount $1,008.00) by %user_name%',0,20,NULL,'2024-03-11 00:14:25','2024-03-11 00:14:25'),(76,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,20,NULL,'2024-03-11 00:14:25','2024-03-11 00:14:25'),(77,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2024-03-05 12:14:25','2024-03-05 12:14:25'),(78,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2024-03-05 12:14:25','2024-03-05 12:14:25'),(79,'create_shipment','Created shipment for order',0,21,NULL,'2024-03-11 00:14:25','2024-03-11 00:14:25'),(80,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2024-03-09 04:14:25','2024-03-09 04:14:25'),(81,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2024-03-09 04:14:25','2024-03-09 04:14:25'),(82,'confirm_payment','Payment was confirmed (amount $3,833.00) by %user_name%',0,22,NULL,'2024-03-11 00:14:25','2024-03-11 00:14:25'),(83,'create_shipment','Created shipment for order',0,22,NULL,'2024-03-11 00:14:26','2024-03-11 00:14:26'),(84,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2024-03-05 12:14:26','2024-03-05 12:14:26'),(85,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2024-03-05 12:14:26','2024-03-05 12:14:26'),(86,'create_shipment','Created shipment for order',0,23,NULL,'2024-03-11 00:14:26','2024-03-11 00:14:26'),(87,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2024-03-09 08:14:26','2024-03-09 08:14:26'),(88,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2024-03-09 08:14:26','2024-03-09 08:14:26'),(89,'confirm_payment','Payment was confirmed (amount $5,206.00) by %user_name%',0,24,NULL,'2024-03-11 00:14:26','2024-03-11 00:14:26'),(90,'create_shipment','Created shipment for order',0,24,NULL,'2024-03-11 00:14:26','2024-03-11 00:14:26'),(91,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2024-03-09 12:14:26','2024-03-09 12:14:26'),(92,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2024-03-09 12:14:26','2024-03-09 12:14:26'),(93,'confirm_payment','Payment was confirmed (amount $1,920.00) by %user_name%',0,25,NULL,'2024-03-11 00:14:26','2024-03-11 00:14:26'),(94,'create_shipment','Created shipment for order',0,25,NULL,'2024-03-11 00:14:26','2024-03-11 00:14:26'),(95,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,25,NULL,'2024-03-11 00:14:26','2024-03-11 00:14:26'),(96,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2024-03-08 00:14:26','2024-03-08 00:14:26'),(97,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2024-03-08 00:14:26','2024-03-08 00:14:26'),(98,'confirm_payment','Payment was confirmed (amount $2,342.00) by %user_name%',0,26,NULL,'2024-03-11 00:14:26','2024-03-11 00:14:26'),(99,'create_shipment','Created shipment for order',0,26,NULL,'2024-03-11 00:14:26','2024-03-11 00:14:26'),(100,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,26,NULL,'2024-03-11 00:14:26','2024-03-11 00:14:26'),(101,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2024-03-08 00:14:26','2024-03-08 00:14:26'),(102,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2024-03-08 00:14:26','2024-03-08 00:14:26'),(103,'confirm_payment','Payment was confirmed (amount $1,798.00) by %user_name%',0,27,NULL,'2024-03-11 00:14:26','2024-03-11 00:14:26'),(104,'create_shipment','Created shipment for order',0,27,NULL,'2024-03-11 00:14:27','2024-03-11 00:14:27'),(105,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,27,NULL,'2024-03-11 00:14:27','2024-03-11 00:14:27'),(106,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2024-03-07 16:14:27','2024-03-07 16:14:27'),(107,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2024-03-07 16:14:27','2024-03-07 16:14:27'),(108,'confirm_payment','Payment was confirmed (amount $1,044.00) by %user_name%',0,28,NULL,'2024-03-11 00:14:27','2024-03-11 00:14:27'),(109,'create_shipment','Created shipment for order',0,28,NULL,'2024-03-11 00:14:27','2024-03-11 00:14:27'),(110,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,NULL,'2024-03-11 00:14:27','2024-03-11 00:14:27'),(111,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2024-03-08 08:14:27','2024-03-08 08:14:27'),(112,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2024-03-08 08:14:27','2024-03-08 08:14:27'),(113,'confirm_payment','Payment was confirmed (amount $1,266.00) by %user_name%',0,29,NULL,'2024-03-11 00:14:27','2024-03-11 00:14:27'),(114,'create_shipment','Created shipment for order',0,29,NULL,'2024-03-11 00:14:27','2024-03-11 00:14:27'),(115,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2024-03-05 16:14:27','2024-03-05 16:14:27'),(116,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2024-03-05 16:14:27','2024-03-05 16:14:27'),(117,'confirm_payment','Payment was confirmed (amount $1,015.00) by %user_name%',0,30,NULL,'2024-03-11 00:14:27','2024-03-11 00:14:27'),(118,'create_shipment','Created shipment for order',0,30,NULL,'2024-03-11 00:14:27','2024-03-11 00:14:27'),(119,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2024-03-07 12:14:27','2024-03-07 12:14:27'),(120,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2024-03-07 12:14:27','2024-03-07 12:14:27'),(121,'confirm_payment','Payment was confirmed (amount $1,212.00) by %user_name%',0,31,NULL,'2024-03-11 00:14:27','2024-03-11 00:14:27'),(122,'create_shipment','Created shipment for order',0,31,NULL,'2024-03-11 00:14:27','2024-03-11 00:14:27'),(123,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,31,NULL,'2024-03-11 00:14:27','2024-03-11 00:14:27'),(124,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2024-03-10 10:14:27','2024-03-10 10:14:27'),(125,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2024-03-10 10:14:27','2024-03-10 10:14:27'),(126,'confirm_payment','Payment was confirmed (amount $3,378.00) by %user_name%',0,32,NULL,'2024-03-11 00:14:27','2024-03-11 00:14:27'),(127,'create_shipment','Created shipment for order',0,32,NULL,'2024-03-11 00:14:27','2024-03-11 00:14:27'),(128,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,32,NULL,'2024-03-11 00:14:27','2024-03-11 00:14:27'),(129,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2024-03-09 06:14:27','2024-03-09 06:14:27'),(130,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2024-03-09 06:14:27','2024-03-09 06:14:27'),(131,'confirm_payment','Payment was confirmed (amount $1,560.00) by %user_name%',0,33,NULL,'2024-03-11 00:14:27','2024-03-11 00:14:27'),(132,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,33,NULL,'2024-03-11 00:14:28','2024-03-11 00:14:28'),(133,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2024-03-06 12:14:28','2024-03-06 12:14:28'),(134,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2024-03-06 12:14:28','2024-03-06 12:14:28'),(135,'confirm_payment','Payment was confirmed (amount $538.00) by %user_name%',0,34,NULL,'2024-03-11 00:14:28','2024-03-11 00:14:28'),(136,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,34,NULL,'2024-03-11 00:14:28','2024-03-11 00:14:28'),(137,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2024-03-09 12:14:28','2024-03-09 12:14:28'),(138,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2024-03-09 12:14:28','2024-03-09 12:14:28'),(139,'confirm_payment','Payment was confirmed (amount $2,138.00) by %user_name%',0,35,NULL,'2024-03-11 00:14:28','2024-03-11 00:14:28'),(140,'create_shipment','Created shipment for order',0,35,NULL,'2024-03-11 00:14:28','2024-03-11 00:14:28'),(141,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2024-03-08 22:14:28','2024-03-08 22:14:28'),(142,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2024-03-08 22:14:28','2024-03-08 22:14:28'),(143,'create_shipment','Created shipment for order',0,36,NULL,'2024-03-11 00:14:28','2024-03-11 00:14:28'),(144,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,36,NULL,'2024-03-11 00:14:28','2024-03-11 00:14:28'),(145,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2024-03-06 20:14:28','2024-03-06 20:14:28'),(146,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2024-03-06 20:14:28','2024-03-06 20:14:28'),(147,'confirm_payment','Payment was confirmed (amount $1,688.00) by %user_name%',0,37,NULL,'2024-03-11 00:14:28','2024-03-11 00:14:28'),(148,'create_shipment','Created shipment for order',0,37,NULL,'2024-03-11 00:14:28','2024-03-11 00:14:28'),(149,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,37,NULL,'2024-03-11 00:14:28','2024-03-11 00:14:28'),(150,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2024-03-09 16:14:28','2024-03-09 16:14:28'),(151,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2024-03-09 16:14:28','2024-03-09 16:14:28'),(152,'confirm_payment','Payment was confirmed (amount $1,080.00) by %user_name%',0,38,NULL,'2024-03-11 00:14:28','2024-03-11 00:14:28'),(153,'create_shipment','Created shipment for order',0,38,NULL,'2024-03-11 00:14:29','2024-03-11 00:14:29'),(154,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,38,NULL,'2024-03-11 00:14:29','2024-03-11 00:14:29'),(155,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2024-03-07 16:14:29','2024-03-07 16:14:29'),(156,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2024-03-07 16:14:29','2024-03-07 16:14:29'),(157,'confirm_payment','Payment was confirmed (amount $3,502.00) by %user_name%',0,39,NULL,'2024-03-11 00:14:29','2024-03-11 00:14:29'),(158,'create_shipment','Created shipment for order',0,39,NULL,'2024-03-11 00:14:29','2024-03-11 00:14:29'),(159,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2024-03-10 00:14:29','2024-03-10 00:14:29'),(160,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2024-03-10 00:14:29','2024-03-10 00:14:29'),(161,'confirm_payment','Payment was confirmed (amount $1,189.00) by %user_name%',0,40,NULL,'2024-03-11 00:14:29','2024-03-11 00:14:29'),(162,'create_shipment','Created shipment for order',0,40,NULL,'2024-03-11 00:14:29','2024-03-11 00:14:29'),(163,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,40,NULL,'2024-03-11 00:14:29','2024-03-11 00:14:29'),(164,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2024-03-09 12:14:29','2024-03-09 12:14:29'),(165,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2024-03-09 12:14:29','2024-03-09 12:14:29'),(166,'confirm_payment','Payment was confirmed (amount $936.00) by %user_name%',0,41,NULL,'2024-03-11 00:14:29','2024-03-11 00:14:29'),(167,'create_shipment','Created shipment for order',0,41,NULL,'2024-03-11 00:14:29','2024-03-11 00:14:29'),(168,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,41,NULL,'2024-03-11 00:14:29','2024-03-11 00:14:29'),(169,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2024-03-09 16:14:29','2024-03-09 16:14:29'),(170,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2024-03-09 16:14:29','2024-03-09 16:14:29'),(171,'confirm_payment','Payment was confirmed (amount $2,058.00) by %user_name%',0,42,NULL,'2024-03-11 00:14:29','2024-03-11 00:14:29'),(172,'create_shipment','Created shipment for order',0,42,NULL,'2024-03-11 00:14:29','2024-03-11 00:14:29'),(173,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,42,NULL,'2024-03-11 00:14:29','2024-03-11 00:14:29'),(174,'create_order_from_seeder','Order is created from the checkout page',NULL,43,NULL,'2024-03-10 08:14:29','2024-03-10 08:14:29'),(175,'confirm_order','Order was verified by %user_name%',0,43,NULL,'2024-03-10 08:14:29','2024-03-10 08:14:29'),(176,'confirm_payment','Payment was confirmed (amount $4,917.00) by %user_name%',0,43,NULL,'2024-03-11 00:14:29','2024-03-11 00:14:29'),(177,'create_shipment','Created shipment for order',0,43,NULL,'2024-03-11 00:14:30','2024-03-11 00:14:30'),(178,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,43,NULL,'2024-03-11 00:14:30','2024-03-11 00:14:30'),(179,'create_order_from_seeder','Order is created from the checkout page',NULL,44,NULL,'2024-03-10 18:14:30','2024-03-10 18:14:30'),(180,'confirm_order','Order was verified by %user_name%',0,44,NULL,'2024-03-10 18:14:30','2024-03-10 18:14:30'),(181,'confirm_payment','Payment was confirmed (amount $504.00) by %user_name%',0,44,NULL,'2024-03-11 00:14:30','2024-03-11 00:14:30'),(182,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,44,NULL,'2024-03-11 00:14:30','2024-03-11 00:14:30'),(183,'create_order_from_seeder','Order is created from the checkout page',NULL,45,NULL,'2024-03-10 08:14:30','2024-03-10 08:14:30'),(184,'confirm_order','Order was verified by %user_name%',0,45,NULL,'2024-03-10 08:14:30','2024-03-10 08:14:30'),(185,'confirm_payment','Payment was confirmed (amount $899.00) by %user_name%',0,45,NULL,'2024-03-11 00:14:30','2024-03-11 00:14:30'),(186,'create_shipment','Created shipment for order',0,45,NULL,'2024-03-11 00:14:30','2024-03-11 00:14:30'),(187,'update_status','Order confirmed by %user_name%',0,4,NULL,'2024-03-11 00:14:30','2024-03-11 00:14:30'),(188,'update_status','Order confirmed by %user_name%',0,5,NULL,'2024-03-11 00:14:31','2024-03-11 00:14:31'),(189,'update_status','Order confirmed by %user_name%',0,7,NULL,'2024-03-11 00:14:31','2024-03-11 00:14:31'),(190,'update_status','Order confirmed by %user_name%',0,11,NULL,'2024-03-11 00:14:32','2024-03-11 00:14:32'),(191,'update_status','Order confirmed by %user_name%',0,15,NULL,'2024-03-11 00:14:32','2024-03-11 00:14:32'),(192,'update_status','Order confirmed by %user_name%',0,25,NULL,'2024-03-11 00:14:33','2024-03-11 00:14:33'),(193,'update_status','Order confirmed by %user_name%',0,26,NULL,'2024-03-11 00:14:33','2024-03-11 00:14:33'),(194,'update_status','Order confirmed by %user_name%',0,27,NULL,'2024-03-11 00:14:34','2024-03-11 00:14:34'),(195,'update_status','Order confirmed by %user_name%',0,28,NULL,'2024-03-11 00:14:35','2024-03-11 00:14:35'),(196,'update_status','Order confirmed by %user_name%',0,31,NULL,'2024-03-11 00:14:35','2024-03-11 00:14:35'),(197,'update_status','Order confirmed by %user_name%',0,32,NULL,'2024-03-11 00:14:36','2024-03-11 00:14:36'),(198,'update_status','Order confirmed by %user_name%',0,37,NULL,'2024-03-11 00:14:36','2024-03-11 00:14:36'),(199,'update_status','Order confirmed by %user_name%',0,38,NULL,'2024-03-11 00:14:37','2024-03-11 00:14:37'),(200,'update_status','Order confirmed by %user_name%',0,40,NULL,'2024-03-11 00:14:37','2024-03-11 00:14:37'),(201,'update_status','Order confirmed by %user_name%',0,41,NULL,'2024-03-11 00:14:38','2024-03-11 00:14:38'),(202,'update_status','Order confirmed by %user_name%',0,42,NULL,'2024-03-11 00:14:38','2024-03-11 00:14:38'),(203,'update_status','Order confirmed by %user_name%',0,43,NULL,'2024-03-11 00:14:39','2024-03-11 00:14:39');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,2,1171.00,0.00,'{\"sku\":\"SW-190-A0-A1\",\"attributes\":\"(Color: Red, Size: XL)\"}',NULL,44,'Smart Televisions','products/8-1.jpg',1482.00,0,'2024-03-11 00:14:21','2024-03-11 00:14:21','physical',0,NULL),(2,1,1,1149.00,0.00,'{\"sku\":\"SW-170-A0-A4\",\"attributes\":\"(Size: L, Color: Brown)\"}',NULL,58,'Xbox One Wireless Controller Black Color','products/11.jpg',779.00,0,'2024-03-11 00:14:21','2024-03-11 00:14:21','physical',0,NULL),(3,1,3,422.00,0.00,'{\"sku\":\"SW-112-A0-A1\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,82,'Baxter Care Hair Kit For Bearded Mens','products/22-1.jpg',1710.00,0,'2024-03-11 00:14:21','2024-03-11 00:14:21','physical',0,NULL),(4,2,1,1199.00,0.00,'{\"sku\":\"SW-147-A0-A3\",\"attributes\":\"(Color: Green, Size: L)\"}',NULL,52,'Herschel Leather Duffle Bag In Brown Color','products/10.jpg',681.00,0,'2024-03-11 00:14:22','2024-03-11 00:14:22','physical',0,NULL),(5,3,1,744.00,0.00,'{\"sku\":\"SW-181-A0-A1\",\"attributes\":\"(Color: Blue, Size: L)\"}',NULL,33,'Smart Watch External (Digital)','products/5-1.jpg',601.00,0,'2024-03-11 00:14:22','2024-03-11 00:14:22','digital',4,NULL),(6,3,1,522.00,0.00,'{\"sku\":\"SW-163-A0-A4\",\"attributes\":\"(Size: M, Color: Brown)\"}',NULL,42,'Audio Equipment','products/7.jpg',583.00,0,'2024-03-11 00:14:22','2024-03-11 00:14:22','physical',0,NULL),(7,4,3,1171.00,0.00,'{\"sku\":\"SW-190-A0-A1\",\"attributes\":\"(Color: Red, Size: XL)\"}',NULL,44,'Smart Televisions','products/8-1.jpg',2223.00,0,'2024-03-11 00:14:22','2024-03-11 00:14:22','physical',0,NULL),(8,4,2,1149.00,0.00,'{\"sku\":\"SW-170-A0-A4\",\"attributes\":\"(Size: L, Color: Brown)\"}',NULL,58,'Xbox One Wireless Controller Black Color','products/11.jpg',1558.00,0,'2024-03-11 00:14:22','2024-03-11 00:14:22','physical',0,NULL),(9,5,2,1171.00,0.00,'{\"sku\":\"SW-190-A0-A2\",\"attributes\":\"(Size: L, Color: Brown)\"}',NULL,45,'Smart Televisions','products/8-2.jpg',1482.00,0,'2024-03-11 00:14:22','2024-03-11 00:14:22','physical',0,NULL),(10,5,2,1149.00,0.00,'{\"sku\":\"SW-170-A0-A4\",\"attributes\":\"(Size: L, Color: Brown)\"}',NULL,58,'Xbox One Wireless Controller Black Color','products/11.jpg',1558.00,0,'2024-03-11 00:14:22','2024-03-11 00:14:22','physical',0,NULL),(11,5,2,515.00,0.00,'{\"sku\":\"SW-199-A0-A2\",\"attributes\":\"(Color: Black, Size: XL)\"}',NULL,61,'EPSION Plaster Printer','products/12-2.jpg',1768.00,0,'2024-03-11 00:14:22','2024-03-11 00:14:22','physical',0,NULL),(12,6,3,538.00,0.00,'{\"sku\":\"SW-138-A0\",\"attributes\":\"(Color: Red, Size: XXL)\"}',NULL,46,'Samsung Smart Phone (Digital)','products/9.jpg',2661.00,0,'2024-03-11 00:14:22','2024-03-11 00:14:22','digital',5,NULL),(13,7,2,20.00,0.00,'{\"sku\":\"SW-146-A0-A1\",\"attributes\":\"(Size: L, Color: Black)\"}',NULL,29,'Beat Headphone','products/3.jpg',1228.00,0,'2024-03-11 00:14:23','2024-03-11 00:14:23','physical',0,NULL),(14,8,1,504.00,0.00,'{\"sku\":\"SW-156-A0\",\"attributes\":\"(Color: Blue, Size: XL)\"}',NULL,62,'Sound Intone I65 Earphone White Version (Digital)','products/13.jpg',660.00,0,'2024-03-11 00:14:23','2024-03-11 00:14:23','digital',2,NULL),(15,8,2,758.00,0.00,'{\"sku\":\"SW-115-A0-A1\",\"attributes\":\"(Size: L, Color: Brown)\"}',NULL,80,'MVMTH Classical Leather Watch In Black (Digital)','products/21-1.jpg',1520.00,0,'2024-03-11 00:14:23','2024-03-11 00:14:23','digital',7,NULL),(16,9,2,522.00,0.00,'{\"sku\":\"SW-163-A0-A1\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,39,'Audio Equipment','products/7.jpg',1166.00,0,'2024-03-11 00:14:23','2024-03-11 00:14:23','physical',0,NULL),(17,10,2,1199.00,0.00,'{\"sku\":\"SW-147-A0-A3\",\"attributes\":\"(Color: Green, Size: L)\"}',NULL,52,'Herschel Leather Duffle Bag In Brown Color','products/10.jpg',1362.00,0,'2024-03-11 00:14:23','2024-03-11 00:14:23','physical',0,NULL),(18,10,2,1199.00,0.00,'{\"sku\":\"SW-147-A0-A4\",\"attributes\":\"(Color: Green, Size: XXL)\"}',NULL,53,'Herschel Leather Duffle Bag In Brown Color','products/10.jpg',1362.00,0,'2024-03-11 00:14:23','2024-03-11 00:14:23','physical',0,NULL),(19,10,2,520.00,0.00,'{\"sku\":\"SW-123-A0\",\"attributes\":\"(Color: Green, Size: L)\"}',NULL,70,'Samsung Gear VR Virtual Reality Headset (Digital)','products/17.jpg',1118.00,0,'2024-03-11 00:14:23','2024-03-11 00:14:23','digital',9,NULL),(20,11,3,80.25,0.00,'{\"sku\":\"SW-107-A0\",\"attributes\":\"(Color: Blue, Size: XL)\"}',NULL,24,'Dual Camera 20MP (Digital)','products/1.jpg',1998.00,0,'2024-03-11 00:14:23','2024-03-11 00:14:23','digital',10,NULL),(21,11,2,1149.00,0.00,'{\"sku\":\"SW-170-A0\",\"attributes\":\"(Color: Green, Size: XL)\"}',NULL,54,'Xbox One Wireless Controller Black Color','products/11.jpg',1558.00,0,'2024-03-11 00:14:23','2024-03-11 00:14:23','physical',0,NULL),(22,12,2,520.00,0.00,'{\"sku\":\"SW-123-A0\",\"attributes\":\"(Color: Green, Size: L)\"}',NULL,70,'Samsung Gear VR Virtual Reality Headset (Digital)','products/17.jpg',1118.00,0,'2024-03-11 00:14:24','2024-03-11 00:14:24','digital',4,NULL),(23,13,3,40.50,0.00,'{\"sku\":\"SW-148-A0-A2\",\"attributes\":\"(Color: Blue, Size: XXL)\"}',NULL,27,'Smart Watches','products/2-2.jpg',1812.00,0,'2024-03-11 00:14:24','2024-03-11 00:14:24','physical',0,NULL),(24,13,1,538.00,0.00,'{\"sku\":\"SW-138-A0\",\"attributes\":\"(Color: Red, Size: XXL)\"}',NULL,46,'Samsung Smart Phone (Digital)','products/9.jpg',887.00,0,'2024-03-11 00:14:24','2024-03-11 00:14:24','digital',10,NULL),(25,14,3,744.00,0.00,'{\"sku\":\"SW-181-A0-A2\",\"attributes\":\"(Color: Green, Size: XXL)\"}',NULL,34,'Smart Watch External (Digital)','products/5-2.jpg',1803.00,0,'2024-03-11 00:14:24','2024-03-11 00:14:24','digital',0,NULL),(26,15,1,936.00,0.00,'{\"sku\":\"SW-111-A0-A1\",\"attributes\":\"(Size: M, Color: Black)\"}',NULL,73,'Aveeno Moisturizing Body Shower 450ml','products/18-1.jpg',556.00,0,'2024-03-11 00:14:24','2024-03-11 00:14:24','physical',0,NULL),(27,16,1,20.00,0.00,'{\"sku\":\"SW-146-A0-A2\",\"attributes\":\"(Color: Brown, Size: XXL)\"}',NULL,30,'Beat Headphone','products/3.jpg',614.00,0,'2024-03-11 00:14:24','2024-03-11 00:14:24','physical',0,NULL),(28,16,3,515.00,0.00,'{\"sku\":\"SW-199-A0-A2\",\"attributes\":\"(Color: Black, Size: XL)\"}',NULL,61,'EPSION Plaster Printer','products/12-2.jpg',2652.00,0,'2024-03-11 00:14:24','2024-03-11 00:14:24','physical',0,NULL),(29,17,1,404.00,0.00,'{\"sku\":\"SW-194-A0-A2\",\"attributes\":\"(Color: Red, Size: XL)\"}',NULL,37,'Nikon HD camera','products/6.jpg',712.00,0,'2024-03-11 00:14:24','2024-03-11 00:14:24','physical',0,NULL),(30,18,1,520.00,0.00,'{\"sku\":\"SW-123-A0-A1\",\"attributes\":\"(Size: S, Color: Brown)\"}',NULL,71,'Samsung Gear VR Virtual Reality Headset (Digital)','products/17-1.jpg',559.00,0,'2024-03-11 00:14:25','2024-03-11 00:14:25','digital',5,NULL),(31,19,2,1199.00,0.00,'{\"sku\":\"SW-147-A0-A1\",\"attributes\":\"(Color: Blue, Size: M)\"}',NULL,50,'Herschel Leather Duffle Bag In Brown Color','products/10-1.jpg',1362.00,0,'2024-03-11 00:14:25','2024-03-11 00:14:25','physical',0,NULL),(32,19,2,1199.00,0.00,'{\"sku\":\"SW-147-A0-A2\",\"attributes\":\"(Color: Green, Size: L)\"}',NULL,51,'Herschel Leather Duffle Bag In Brown Color','products/10-2.jpg',1362.00,0,'2024-03-11 00:14:25','2024-03-11 00:14:25','physical',0,NULL),(33,20,2,504.00,0.00,'{\"sku\":\"SW-156-A0\",\"attributes\":\"(Color: Blue, Size: XL)\"}',NULL,62,'Sound Intone I65 Earphone White Version (Digital)','products/13.jpg',1320.00,0,'2024-03-11 00:14:25','2024-03-11 00:14:25','digital',1,NULL),(34,21,1,1149.00,0.00,'{\"sku\":\"SW-170-A0\",\"attributes\":\"(Color: Green, Size: XL)\"}',NULL,54,'Xbox One Wireless Controller Black Color','products/11.jpg',779.00,0,'2024-03-11 00:14:25','2024-03-11 00:14:25','physical',0,NULL),(35,22,2,568.00,0.00,'{\"sku\":\"SW-109-A0\",\"attributes\":\"(Size: XL, Color: Brown)\"}',NULL,68,'Apple MacBook Air Retina 12-Inch Laptop','products/16.jpg',1374.00,0,'2024-03-11 00:14:25','2024-03-11 00:14:25','physical',0,NULL),(36,22,3,899.00,0.00,'{\"sku\":\"SW-113-A0\",\"attributes\":\"(Color: Blue, Size: M)\"}',NULL,76,'NYX Beauty Couton Pallete Makeup 12','products/20.jpg',1509.00,0,'2024-03-11 00:14:25','2024-03-11 00:14:25','physical',0,NULL),(37,23,3,936.00,0.00,'{\"sku\":\"SW-111-A0\",\"attributes\":\"(Size: L, Color: Brown)\"}',NULL,72,'Aveeno Moisturizing Body Shower 450ml','products/18.jpg',1668.00,0,'2024-03-11 00:14:26','2024-03-11 00:14:26','physical',0,NULL),(38,24,1,1199.00,0.00,'{\"sku\":\"SW-147-A0-A3\",\"attributes\":\"(Color: Green, Size: L)\"}',NULL,52,'Herschel Leather Duffle Bag In Brown Color','products/10.jpg',681.00,0,'2024-03-11 00:14:26','2024-03-11 00:14:26','physical',0,NULL),(39,24,1,1199.00,0.00,'{\"sku\":\"SW-147-A0-A4\",\"attributes\":\"(Color: Green, Size: XXL)\"}',NULL,53,'Herschel Leather Duffle Bag In Brown Color','products/10.jpg',681.00,0,'2024-03-11 00:14:26','2024-03-11 00:14:26','physical',0,NULL),(40,24,2,936.00,0.00,'{\"sku\":\"SW-111-A0-A1\",\"attributes\":\"(Size: M, Color: Black)\"}',NULL,73,'Aveeno Moisturizing Body Shower 450ml','products/18-1.jpg',1112.00,0,'2024-03-11 00:14:26','2024-03-11 00:14:26','physical',0,NULL),(41,24,1,936.00,0.00,'{\"sku\":\"SW-111-A0-A2\",\"attributes\":\"(Size: L, Color: Brown)\"}',NULL,74,'Aveeno Moisturizing Body Shower 450ml','products/18-2.jpg',556.00,0,'2024-03-11 00:14:26','2024-03-11 00:14:26','physical',0,NULL),(42,25,1,404.00,0.00,'{\"sku\":\"SW-194-A0-A2\",\"attributes\":\"(Color: Red, Size: XL)\"}',NULL,37,'Nikon HD camera','products/6.jpg',712.00,0,'2024-03-11 00:14:26','2024-03-11 00:14:26','physical',0,NULL),(43,25,2,758.00,0.00,'{\"sku\":\"SW-115-A0\",\"attributes\":\"(Size: L, Color: Black)\"}',NULL,79,'MVMTH Classical Leather Watch In Black (Digital)','products/21.jpg',1520.00,0,'2024-03-11 00:14:26','2024-03-11 00:14:26','digital',0,NULL),(44,26,2,1171.00,0.00,'{\"sku\":\"SW-190-A0-A2\",\"attributes\":\"(Size: L, Color: Brown)\"}',NULL,45,'Smart Televisions','products/8-2.jpg',1482.00,0,'2024-03-11 00:14:26','2024-03-11 00:14:26','physical',0,NULL),(45,27,2,899.00,0.00,'{\"sku\":\"SW-113-A0-A2\",\"attributes\":\"(Size: M, Color: Black)\"}',NULL,78,'NYX Beauty Couton Pallete Makeup 12','products/20-2.jpg',1006.00,0,'2024-03-11 00:14:26','2024-03-11 00:14:26','physical',0,NULL),(46,28,2,522.00,0.00,'{\"sku\":\"SW-163-A0-A2\",\"attributes\":\"(Color: Red, Size: XL)\"}',NULL,40,'Audio Equipment','products/7.jpg',1166.00,0,'2024-03-11 00:14:27','2024-03-11 00:14:27','physical',0,NULL),(47,29,3,422.00,0.00,'{\"sku\":\"SW-112-A0-A2\",\"attributes\":\"(Size: L, Color: Brown)\"}',NULL,83,'Baxter Care Hair Kit For Bearded Mens','products/22-2.jpg',1710.00,0,'2024-03-11 00:14:27','2024-03-11 00:14:27','physical',0,NULL),(48,30,1,1015.00,0.00,'{\"sku\":\"SW-193-A0\",\"attributes\":\"(Color: Blue, Size: L)\"}',NULL,84,'Ciate Palemore Lipstick Bold Red Color','products/23.jpg',701.00,0,'2024-03-11 00:14:27','2024-03-11 00:14:27','physical',0,NULL),(49,31,3,404.00,0.00,'{\"sku\":\"SW-194-A0-A2\",\"attributes\":\"(Color: Red, Size: XL)\"}',NULL,37,'Nikon HD camera','products/6.jpg',2136.00,0,'2024-03-11 00:14:27','2024-03-11 00:14:27','physical',0,NULL),(50,32,2,1149.00,0.00,'{\"sku\":\"SW-170-A0\",\"attributes\":\"(Color: Green, Size: XL)\"}',NULL,54,'Xbox One Wireless Controller Black Color','products/11.jpg',1558.00,0,'2024-03-11 00:14:27','2024-03-11 00:14:27','physical',0,NULL),(51,32,2,540.00,0.00,'{\"sku\":\"SW-129-A0\",\"attributes\":\"(Color: Green, Size: XXL)\"}',NULL,64,'B&O Play Mini Bluetooth Speaker','products/14.jpg',1104.00,0,'2024-03-11 00:14:27','2024-03-11 00:14:27','physical',0,NULL),(52,33,3,520.00,0.00,'{\"sku\":\"SW-123-A0\",\"attributes\":\"(Color: Green, Size: L)\"}',NULL,70,'Samsung Gear VR Virtual Reality Headset (Digital)','products/17.jpg',1677.00,0,'2024-03-11 00:14:27','2024-03-11 00:14:27','digital',5,NULL),(53,34,1,538.00,0.00,'{\"sku\":\"SW-138-A0-A2\",\"attributes\":\"(Size: M, Color: Black)\"}',NULL,48,'Samsung Smart Phone (Digital)','products/9-2.jpg',887.00,0,'2024-03-11 00:14:28','2024-03-11 00:14:28','digital',0,NULL),(54,35,2,1069.00,0.00,'{\"sku\":\"SW-131-A0\",\"attributes\":\"(Color: Green, Size: S)\"}',NULL,75,'NYX Beauty Couton Pallete Makeup 12','products/19.jpg',1788.00,0,'2024-03-11 00:14:28','2024-03-11 00:14:28','physical',0,NULL),(55,36,3,522.00,0.00,'{\"sku\":\"SW-163-A0-A2\",\"attributes\":\"(Color: Red, Size: XL)\"}',NULL,40,'Audio Equipment','products/7.jpg',1749.00,0,'2024-03-11 00:14:28','2024-03-11 00:14:28','physical',0,NULL),(56,36,2,568.00,0.00,'{\"sku\":\"SW-109-A0-A1\",\"attributes\":\"(Size: M, Color: Brown)\"}',NULL,69,'Apple MacBook Air Retina 12-Inch Laptop','products/16.jpg',1374.00,0,'2024-03-11 00:14:28','2024-03-11 00:14:28','physical',0,NULL),(57,37,2,422.00,0.00,'{\"sku\":\"SW-112-A0\",\"attributes\":\"(Color: Green, Size: M)\"}',NULL,81,'Baxter Care Hair Kit For Bearded Mens','products/22.jpg',1140.00,0,'2024-03-11 00:14:28','2024-03-11 00:14:28','physical',0,NULL),(58,37,2,422.00,0.00,'{\"sku\":\"SW-112-A0-A2\",\"attributes\":\"(Size: L, Color: Brown)\"}',NULL,83,'Baxter Care Hair Kit For Bearded Mens','products/22-2.jpg',1140.00,0,'2024-03-11 00:14:28','2024-03-11 00:14:28','physical',0,NULL),(59,38,1,540.00,0.00,'{\"sku\":\"SW-129-A0\",\"attributes\":\"(Color: Green, Size: XXL)\"}',NULL,64,'B&O Play Mini Bluetooth Speaker','products/14.jpg',552.00,0,'2024-03-11 00:14:28','2024-03-11 00:14:28','physical',0,NULL),(60,38,1,540.00,0.00,'{\"sku\":\"SW-129-A0-A1\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,65,'B&O Play Mini Bluetooth Speaker','products/14.jpg',552.00,0,'2024-03-11 00:14:28','2024-03-11 00:14:28','physical',0,NULL),(61,39,3,568.00,0.00,'{\"sku\":\"SW-109-A0-A1\",\"attributes\":\"(Size: M, Color: Brown)\"}',NULL,69,'Apple MacBook Air Retina 12-Inch Laptop','products/16.jpg',2061.00,0,'2024-03-11 00:14:29','2024-03-11 00:14:29','physical',0,NULL),(62,39,2,899.00,0.00,'{\"sku\":\"SW-113-A0-A2\",\"attributes\":\"(Size: M, Color: Black)\"}',NULL,78,'NYX Beauty Couton Pallete Makeup 12','products/20-2.jpg',1006.00,0,'2024-03-11 00:14:29','2024-03-11 00:14:29','physical',0,NULL),(63,40,2,20.00,0.00,'{\"sku\":\"SW-146-A0-A2\",\"attributes\":\"(Color: Brown, Size: XXL)\"}',NULL,30,'Beat Headphone','products/3.jpg',1228.00,0,'2024-03-11 00:14:29','2024-03-11 00:14:29','physical',0,NULL),(64,40,1,1149.00,0.00,'{\"sku\":\"SW-170-A0\",\"attributes\":\"(Color: Green, Size: XL)\"}',NULL,54,'Xbox One Wireless Controller Black Color','products/11.jpg',779.00,0,'2024-03-11 00:14:29','2024-03-11 00:14:29','physical',0,NULL),(65,41,1,936.00,0.00,'{\"sku\":\"SW-111-A0\",\"attributes\":\"(Size: L, Color: Brown)\"}',NULL,72,'Aveeno Moisturizing Body Shower 450ml','products/18.jpg',556.00,0,'2024-03-11 00:14:29','2024-03-11 00:14:29','physical',0,NULL),(66,42,1,542.00,0.00,'{\"sku\":\"SW-109-A0\",\"attributes\":\"(Color: Blue, Size: XL)\"}',NULL,31,'Red & Black Headphone','products/4.jpg',747.00,0,'2024-03-11 00:14:29','2024-03-11 00:14:29','physical',0,NULL),(67,42,2,758.00,0.00,'{\"sku\":\"SW-115-A0\",\"attributes\":\"(Size: L, Color: Black)\"}',NULL,79,'MVMTH Classical Leather Watch In Black (Digital)','products/21.jpg',1520.00,0,'2024-03-11 00:14:29','2024-03-11 00:14:29','digital',4,NULL),(68,43,2,936.00,0.00,'{\"sku\":\"SW-111-A0-A1\",\"attributes\":\"(Size: M, Color: Black)\"}',NULL,73,'Aveeno Moisturizing Body Shower 450ml','products/18-1.jpg',1112.00,0,'2024-03-11 00:14:29','2024-03-11 00:14:29','physical',0,NULL),(69,43,3,1015.00,0.00,'{\"sku\":\"SW-193-A0-A1\",\"attributes\":\"(Size: M, Color: Brown)\"}',NULL,85,'Ciate Palemore Lipstick Bold Red Color','products/23-1.jpg',2103.00,0,'2024-03-11 00:14:29','2024-03-11 00:14:29','physical',0,NULL),(70,44,1,504.00,0.00,'{\"sku\":\"SW-156-A0-A1\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,63,'Sound Intone I65 Earphone White Version (Digital)','products/13-1.jpg',660.00,0,'2024-03-11 00:14:30','2024-03-11 00:14:30','digital',7,NULL),(71,45,1,899.00,0.00,'{\"sku\":\"SW-113-A0\",\"attributes\":\"(Color: Blue, Size: M)\"}',NULL,76,'NYX Beauty Couton Pallete Makeup 12','products/20.jpg',503.00,0,'2024-03-11 00:14:30','2024-03-11 00:14:30','physical',0,NULL);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,'#10000001',6,'1','default','pending',4757.00,0.00,0.00,NULL,NULL,0.00,4757.00,1,NULL,1,NULL,'58eXms4fWfqGbWCyagCctdjIbqr5x',1,'2024-02-28 08:14:21','2024-03-11 00:14:21',NULL,4),(2,'#10000002',6,'1','default','pending',1199.00,0.00,0.00,NULL,NULL,0.00,1199.00,1,NULL,1,NULL,'IoWXmG7TZgIS8N6wOZHi95EKCofXf',2,'2024-03-01 00:14:22','2024-03-11 00:14:22',NULL,3),(3,'#10000003',9,'1','default','pending',1266.00,0.00,0.00,NULL,NULL,0.00,1266.00,1,NULL,1,NULL,'2CxCFFfFj2QnGtJq4NpsNmJ8CazUI',3,'2024-03-07 20:14:22','2024-03-11 00:14:22',NULL,2),(4,'#10000004',9,'1','default','completed',5811.00,0.00,0.00,NULL,NULL,0.00,5811.00,1,NULL,1,'2024-03-11 00:14:30','Gg6y5bwgTxEBji6TmqiSZ4YWhkH1f',4,'2024-03-01 12:14:22','2024-03-11 00:14:30',NULL,4),(5,'#10000005',9,'1','default','completed',5670.00,0.00,0.00,NULL,NULL,0.00,5670.00,1,NULL,1,'2024-03-11 00:14:31','Cv9kjjIcSyOlqUVATXyNPcP7l3aVn',5,'2024-02-25 00:14:22','2024-03-11 00:14:31',NULL,4),(6,'#10000006',9,NULL,'','pending',1614.00,0.00,0.00,NULL,NULL,0.00,1614.00,1,NULL,1,NULL,'GPvJ7ZR1JuSEsYznwD5MwSdwucFC0',6,'2024-03-09 12:14:22','2024-03-11 00:14:22',NULL,1),(7,'#10000007',5,'1','default','completed',40.00,0.00,0.00,NULL,NULL,0.00,40.00,1,NULL,1,'2024-03-11 00:14:31','7Hhle2asaVh66fIhoPe23jieNO2dt',7,'2024-03-08 04:14:23','2024-03-11 00:14:31',NULL,4),(8,'#10000008',5,NULL,'','completed',2020.00,0.00,0.00,NULL,NULL,0.00,2020.00,1,NULL,1,'2024-03-11 00:14:23','NYTsScKJc2LKPggxMQyTGXkNGJRGM',8,'2024-02-27 06:14:23','2024-03-11 00:14:23',NULL,1),(9,'#10000009',5,'1','default','pending',1044.00,0.00,0.00,NULL,NULL,0.00,1044.00,1,NULL,1,NULL,'DlgRTmiiS1B2oGPI6ES0B1ZSSZMfV',9,'2024-03-08 08:14:23','2024-03-11 00:14:23',NULL,2),(10,'#10000010',5,'1','default','pending',5836.00,0.00,0.00,NULL,NULL,0.00,5836.00,1,NULL,1,NULL,'RikMU2u8k2GNoPoaKurBVMOASlGhj',10,'2024-03-05 16:14:23','2024-03-11 00:14:23',NULL,3),(11,'#10000011',9,'1','default','completed',2538.75,0.00,0.00,NULL,NULL,0.00,2538.75,1,NULL,1,'2024-03-11 00:14:32','ObGF1TFua8Fe4bT7Cwvrh1dAVDjzv',11,'2024-02-28 18:14:23','2024-03-11 00:14:32',NULL,4),(12,'#10000012',9,NULL,'','pending',1040.00,0.00,0.00,NULL,NULL,0.00,1040.00,1,NULL,1,NULL,'MACr0HCpUugsU0yu5G3uq0C1HPKkP',12,'2024-03-02 06:14:24','2024-03-11 00:14:24',NULL,3),(13,'#10000013',1,'1','default','pending',659.50,0.00,0.00,NULL,NULL,0.00,659.50,1,NULL,1,NULL,'KiPUwHcZPiquZ7Du1Ohnsm8aUBXXA',13,'2024-03-01 16:14:24','2024-03-11 00:14:24',NULL,1),(14,'#10000014',1,NULL,'','completed',2232.00,0.00,0.00,NULL,NULL,0.00,2232.00,1,NULL,1,'2024-03-11 00:14:24','9HjsgLDebO5LWW8DtJ7S2bFHejTg3',14,'2024-03-08 16:14:24','2024-03-11 00:14:24',NULL,2),(15,'#10000015',1,'1','default','completed',936.00,0.00,0.00,NULL,NULL,0.00,936.00,1,NULL,1,'2024-03-11 00:14:32','yqOQUA81qwFH0M0zLzClGjKBc3BqN',15,'2024-03-01 16:14:24','2024-03-11 00:14:32',NULL,3),(16,'#10000016',7,'1','default','pending',1565.00,0.00,0.00,NULL,NULL,0.00,1565.00,1,NULL,1,NULL,'3RdKLQZl8SonM8e5ep3i59hvBpxV7',16,'2024-03-01 06:14:24','2024-03-11 00:14:24',NULL,4),(17,'#10000017',7,'1','default','pending',404.00,0.00,0.00,NULL,NULL,0.00,404.00,1,NULL,1,NULL,'NCj6FcPWOpmjp08QaSZx6yPQfrKuu',17,'2024-03-03 10:14:24','2024-03-11 00:14:24',NULL,1),(18,'#10000018',7,NULL,'','pending',520.00,0.00,0.00,NULL,NULL,0.00,520.00,1,NULL,1,NULL,'RnlGzynTY3zhy7HLzKNwrxXGg2xx0',18,'2024-03-02 08:14:25','2024-03-11 00:14:25',NULL,3),(19,'#10000019',9,'1','default','pending',4796.00,0.00,0.00,NULL,NULL,0.00,4796.00,1,NULL,1,NULL,'00twEKodOCHZeuvYi0nQagJHAxGvn',19,'2024-03-10 00:14:25','2024-03-11 00:14:25',NULL,3),(20,'#10000020',9,NULL,'','completed',1008.00,0.00,0.00,NULL,NULL,0.00,1008.00,1,NULL,1,'2024-03-11 00:14:25','3ieuTZ1Ze6NRkvJO349p0C2iN4ZBb',20,'2024-03-07 00:14:25','2024-03-11 00:14:25',NULL,1),(21,'#10000021',7,'1','default','pending',1149.00,0.00,0.00,NULL,NULL,0.00,1149.00,1,NULL,1,NULL,'y6GtzdZQrWUfvdqX3Cw2A0aaiJZ8l',21,'2024-03-05 12:14:25','2024-03-11 00:14:25',NULL,4),(22,'#10000022',7,'1','default','pending',3833.00,0.00,0.00,NULL,NULL,0.00,3833.00,1,NULL,1,NULL,'tqVCTHGQnwFnCBU997e9rgid2xrsa',22,'2024-03-09 04:14:25','2024-03-11 00:14:25',NULL,2),(23,'#10000023',7,'1','default','pending',2808.00,0.00,0.00,NULL,NULL,0.00,2808.00,1,NULL,1,NULL,'lz2YOThRsTcc6F8IxpZx8KXbsysvZ',23,'2024-03-05 12:14:26','2024-03-11 00:14:26',NULL,3),(24,'#10000024',9,'1','default','pending',5206.00,0.00,0.00,NULL,NULL,0.00,5206.00,1,NULL,1,NULL,'QeHT2l3fy9bpt673zZUoZ0ecZ66cA',24,'2024-03-09 08:14:26','2024-03-11 00:14:26',NULL,3),(25,'#10000025',9,'1','default','completed',1920.00,0.00,0.00,NULL,NULL,0.00,1920.00,1,NULL,1,'2024-03-11 00:14:33','ePE5Wb0xML2htTfKVihSFD7m91iJy',25,'2024-03-09 12:14:26','2024-03-11 00:14:33',NULL,1),(26,'#10000026',9,'1','default','completed',2342.00,0.00,0.00,NULL,NULL,0.00,2342.00,1,NULL,1,'2024-03-11 00:14:33','LgeHYp4n0uMMZTvyWEkuu4XmszaaO',26,'2024-03-08 00:14:26','2024-03-11 00:14:33',NULL,4),(27,'#10000027',9,'1','default','completed',1798.00,0.00,0.00,NULL,NULL,0.00,1798.00,1,NULL,1,'2024-03-11 00:14:34','03Gr55WU0XGFTbACsp7SXPZG7c5XI',27,'2024-03-08 00:14:26','2024-03-11 00:14:34',NULL,2),(28,'#10000028',1,'1','default','completed',1044.00,0.00,0.00,NULL,NULL,0.00,1044.00,1,NULL,1,'2024-03-11 00:14:35','ZtfokDXN4kRkOceFp5dsSgK9BUVLu',28,'2024-03-07 16:14:27','2024-03-11 00:14:35',NULL,2),(29,'#10000029',1,'1','default','pending',1266.00,0.00,0.00,NULL,NULL,0.00,1266.00,1,NULL,1,NULL,'nkNTSgDlUUR0eXO7Lsv4xPlxaKeXO',29,'2024-03-08 08:14:27','2024-03-11 00:14:27',NULL,4),(30,'#10000030',1,'1','default','pending',1015.00,0.00,0.00,NULL,NULL,0.00,1015.00,1,NULL,1,NULL,'8uUdR6aYT5ELVILe5CtJ9iUPl812h',30,'2024-03-05 16:14:27','2024-03-11 00:14:27',NULL,3),(31,'#10000031',5,'1','default','completed',1212.00,0.00,0.00,NULL,NULL,0.00,1212.00,1,NULL,1,'2024-03-11 00:14:35','OkE6C1RQunAMTYSp344S4x7OBXjkc',31,'2024-03-07 12:14:27','2024-03-11 00:14:35',NULL,1),(32,'#10000032',5,'1','default','completed',3378.00,0.00,0.00,NULL,NULL,0.00,3378.00,1,NULL,1,'2024-03-11 00:14:36','DdHeKVIOQ6PgCHRHTtHdGc0tA6AOV',32,'2024-03-10 10:14:27','2024-03-11 00:14:36',NULL,4),(33,'#10000033',5,NULL,'','completed',1560.00,0.00,0.00,NULL,NULL,0.00,1560.00,1,NULL,1,'2024-03-11 00:14:28','3uyDBatiRW1DOpwvDc8sLubqTH5A5',33,'2024-03-09 06:14:27','2024-03-11 00:14:28',NULL,3),(34,'#10000034',5,NULL,'','completed',538.00,0.00,0.00,NULL,NULL,0.00,538.00,1,NULL,1,'2024-03-11 00:14:28','7vXLYFV17L6uInTYNerU6NYeUIgKl',34,'2024-03-06 12:14:28','2024-03-11 00:14:28',NULL,1),(35,'#10000035',5,'1','default','pending',2138.00,0.00,0.00,NULL,NULL,0.00,2138.00,1,NULL,1,NULL,'PlAL3e6UASM6iD8ZUc03xzynzjIQT',35,'2024-03-09 12:14:28','2024-03-11 00:14:28',NULL,2),(36,'#10000036',10,'1','default','completed',2702.00,0.00,0.00,NULL,NULL,0.00,2702.00,1,NULL,1,'2024-03-11 00:14:28','fESIguHmFQXoMjpP0UOTxVU2f2L1a',36,'2024-03-08 22:14:28','2024-03-11 00:14:28',NULL,2),(37,'#10000037',10,'1','default','completed',1688.00,0.00,0.00,NULL,NULL,0.00,1688.00,1,NULL,1,'2024-03-11 00:14:36','BK0Ydb1Da5xCT143SRsRzmDDnHqoV',37,'2024-03-06 20:14:28','2024-03-11 00:14:36',NULL,4),(38,'#10000038',6,'1','default','completed',1080.00,0.00,0.00,NULL,NULL,0.00,1080.00,1,NULL,1,'2024-03-11 00:14:37','gm4fleWayOBqgOZcYc1wCTmoZP7UW',38,'2024-03-09 16:14:28','2024-03-11 00:14:37',NULL,4),(39,'#10000039',6,'1','default','pending',3502.00,0.00,0.00,NULL,NULL,0.00,3502.00,1,NULL,1,NULL,'KphXrQuwGLERoFZZpCeNfKjE8Syy0',39,'2024-03-07 16:14:29','2024-03-11 00:14:29',NULL,2),(40,'#10000040',9,'1','default','completed',1189.00,0.00,0.00,NULL,NULL,0.00,1189.00,1,NULL,1,'2024-03-11 00:14:37','HnBibTZY4fXvQSl9sKm6osl61pNwd',40,'2024-03-10 00:14:29','2024-03-11 00:14:37',NULL,4),(41,'#10000041',9,'1','default','completed',936.00,0.00,0.00,NULL,NULL,0.00,936.00,1,NULL,1,'2024-03-11 00:14:38','EkwsP3KlCxLrpqDwnCH0YwKk9tpnK',41,'2024-03-09 12:14:29','2024-03-11 00:14:38',NULL,3),(42,'#10000042',6,'1','default','completed',2058.00,0.00,0.00,NULL,NULL,0.00,2058.00,1,NULL,1,'2024-03-11 00:14:38','T8LzqpmvWeAhtEgTefqk28bFweC5I',42,'2024-03-09 16:14:29','2024-03-11 00:14:38',NULL,1),(43,'#10000043',6,'1','default','completed',4917.00,0.00,0.00,NULL,NULL,0.00,4917.00,1,NULL,1,'2024-03-11 00:14:39','gNpo2vBUZdYnHusnsvMzkBPF4xfxw',43,'2024-03-10 08:14:29','2024-03-11 00:14:39',NULL,3),(44,'#10000044',5,NULL,'','completed',504.00,0.00,0.00,NULL,NULL,0.00,504.00,1,NULL,1,'2024-03-11 00:14:30','2TTbWkavGBsGsx260fGw7OCdN4t2q',44,'2024-03-10 18:14:30','2024-03-11 00:14:30',NULL,1),(45,'#10000045',5,'1','default','pending',899.00,0.00,0.00,NULL,NULL,0.00,899.00,1,NULL,1,NULL,'aMrPiLpyrVRbdcnUh0qnAepWjxW03',45,'2024-03-10 08:14:30','2024-03-11 00:14:30',NULL,2);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2024-03-11 00:14:13','2024-03-11 00:14:13',0),(2,'Size','size','text',1,1,1,'published',1,'2024-03-11 00:14:13','2024-03-11 00:14:13',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2024-03-11 00:14:13','2024-03-11 00:14:13'),(2,1,'Blue','blue','#333333',NULL,0,2,'2024-03-11 00:14:13','2024-03-11 00:14:13'),(3,1,'Red','red','#DA323F',NULL,0,3,'2024-03-11 00:14:13','2024-03-11 00:14:13'),(4,1,'Black','black','#2F366C',NULL,0,4,'2024-03-11 00:14:13','2024-03-11 00:14:13'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2024-03-11 00:14:13','2024-03-11 00:14:13'),(6,2,'S','s',NULL,NULL,1,1,'2024-03-11 00:14:13','2024-03-11 00:14:13'),(7,2,'M','m',NULL,NULL,0,2,'2024-03-11 00:14:13','2024-03-11 00:14:13'),(8,2,'L','l',NULL,NULL,0,3,'2024-03-11 00:14:13','2024-03-11 00:14:13'),(9,2,'XL','xl',NULL,NULL,0,4,'2024-03-11 00:14:13','2024-03-11 00:14:13'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2024-03-11 00:14:13','2024-03-11 00:14:13');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions',0,NULL,'published',0,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(2,'Electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(3,'Consumer Electronic',2,NULL,'published',0,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(4,'Home Audio & Theaters',3,NULL,'published',0,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(5,'TV & Videos',3,NULL,'published',1,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(6,'Camera, Photos & Videos',3,NULL,'published',2,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(7,'Cellphones & Accessories',3,NULL,'published',3,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(8,'Headphones',3,NULL,'published',4,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(9,'Videos games',3,NULL,'published',5,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(10,'Wireless Speakers',3,NULL,'published',6,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(11,'Office Electronic',3,NULL,'published',7,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(12,'Accessories & Parts',2,NULL,'published',1,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(13,'Digital Cables',12,NULL,'published',0,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(14,'Audio & Video Cables',12,NULL,'published',1,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(15,'Batteries',12,NULL,'published',2,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(16,'Clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(17,'Computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(18,'Computer & Technologies',17,NULL,'published',0,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(19,'Computer & Tablets',18,NULL,'published',0,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(20,'Laptop',18,NULL,'published',1,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(21,'Monitors',18,NULL,'published',2,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(22,'Computer Components',18,NULL,'published',3,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(23,'Networking',17,NULL,'published',1,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(24,'Drive & Storages',23,NULL,'published',0,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(25,'Gaming Laptop',23,NULL,'published',1,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(26,'Security & Protection',23,NULL,'published',2,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(27,'Accessories',23,NULL,'published',3,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(28,'Home & Kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(29,'Health & Beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(30,'Jewelry & Watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(31,'Technology Toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(32,'Phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(33,'Babies & Moms',0,NULL,'published',9,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(34,'Sport & Outdoor',0,NULL,'published',10,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(35,'Books & Office',0,NULL,'published',11,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(36,'Cars & Motorcycles',0,NULL,'published',12,NULL,0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL,NULL),(37,'Home Improvements',0,NULL,'published',13,NULL,0,'2024-03-11 00:14:07','2024-03-11 00:14:07',NULL,NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `ec_product_category_product` VALUES (1,11),(1,15),(2,12),(2,13),(3,7),(4,14),(4,15),(4,22),(5,1),(5,4),(5,15),(6,10),(6,20),(7,2),(7,8),(7,21),(8,9),(9,6),(9,16),(9,20),(10,2),(10,4),(11,13),(11,17),(13,14),(14,3),(14,5),(14,12),(15,23),(16,6),(16,10),(16,17),(17,3),(18,1),(18,15),(18,17),(18,19),(18,23),(19,7),(19,16),(20,8),(20,13),(20,22),(21,7),(22,2),(22,16),(23,3),(23,13),(23,17),(23,19),(24,3),(24,5),(24,21),(25,2),(25,6),(25,7),(25,11),(25,20),(26,21),(27,18),(27,19),(28,9),(29,22),(30,12),(30,18),(30,21),(31,5),(31,9),(31,11),(31,12),(31,23),(32,1),(34,8),(34,14),(34,16),(35,1),(35,4),(35,5),(35,23),(36,4),(36,6),(36,9),(36,18),(36,19),(37,10),(37,14),(37,22);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `ec_product_collection_products` VALUES (1,3),(1,18),(1,19),(1,22),(2,5),(2,6),(2,7),(2,9),(2,11),(2,15),(2,17),(2,20),(3,1),(3,2),(3,4),(3,8),(3,10),(3,12),(3,13),(3,14),(3,16),(3,21),(3,23);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2024-03-11 00:14:07','2024-03-11 00:14:07',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2024-03-11 00:14:07','2024-03-11 00:14:07',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2024-03-11 00:14:07','2024-03-11 00:14:07',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
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
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,2,0,0.00,'fixed',1),(1,4,0,0.00,'fixed',1),(1,5,0,0.00,'fixed',1),(1,7,0,0.00,'fixed',1),(1,12,0,0.00,'fixed',1),(1,13,0,0.00,'fixed',1),(1,20,0,0.00,'fixed',1),(2,8,0,0.00,'fixed',1),(2,10,0,0.00,'fixed',1),(2,16,0,0.00,'fixed',1),(2,17,0,0.00,'fixed',1),(2,19,0,0.00,'fixed',1),(3,7,0,0.00,'fixed',1),(3,10,0,0.00,'fixed',1),(3,11,0,0.00,'fixed',1),(3,14,0,0.00,'fixed',1),(3,15,0,0.00,'fixed',1),(3,17,0,0.00,'fixed',1),(4,2,0,0.00,'fixed',1),(4,3,0,0.00,'fixed',1),(4,8,0,0.00,'fixed',1),(4,10,0,0.00,'fixed',1),(4,12,0,0.00,'fixed',1),(4,15,0,0.00,'fixed',1),(5,2,0,0.00,'fixed',1),(5,8,0,0.00,'fixed',1),(5,9,0,0.00,'fixed',1),(5,10,0,0.00,'fixed',1),(5,11,0,0.00,'fixed',1),(5,13,0,0.00,'fixed',1),(6,7,0,0.00,'fixed',1),(6,9,0,0.00,'fixed',1),(6,13,0,0.00,'fixed',1),(6,14,0,0.00,'fixed',1),(6,15,0,0.00,'fixed',1),(6,20,0,0.00,'fixed',1),(7,2,0,0.00,'fixed',1),(7,4,0,0.00,'fixed',1),(7,5,0,0.00,'fixed',1),(7,10,0,0.00,'fixed',1),(7,11,0,0.00,'fixed',1),(7,19,0,0.00,'fixed',1),(8,1,0,0.00,'fixed',1),(8,4,0,0.00,'fixed',1),(8,9,0,0.00,'fixed',1),(8,12,0,0.00,'fixed',1),(8,13,0,0.00,'fixed',1),(8,17,0,0.00,'fixed',1),(9,1,0,0.00,'fixed',1),(9,6,0,0.00,'fixed',1),(9,8,0,0.00,'fixed',1),(9,10,0,0.00,'fixed',1),(9,13,0,0.00,'fixed',1),(9,18,0,0.00,'fixed',1),(10,4,0,0.00,'fixed',1),(10,5,0,0.00,'fixed',1),(10,6,0,0.00,'fixed',1),(10,8,0,0.00,'fixed',1),(10,11,0,0.00,'fixed',1),(10,14,0,0.00,'fixed',1),(10,17,0,0.00,'fixed',1),(11,5,0,0.00,'fixed',1),(11,6,0,0.00,'fixed',1),(11,7,0,0.00,'fixed',1),(11,15,0,0.00,'fixed',1),(11,16,0,0.00,'fixed',1),(11,20,0,0.00,'fixed',1),(12,1,0,0.00,'fixed',1),(12,3,0,0.00,'fixed',1),(12,10,0,0.00,'fixed',1),(12,18,0,0.00,'fixed',1),(12,19,0,0.00,'fixed',1),(13,3,0,0.00,'fixed',1),(13,9,0,0.00,'fixed',1),(13,11,0,0.00,'fixed',1),(13,15,0,0.00,'fixed',1),(13,17,0,0.00,'fixed',1),(13,18,0,0.00,'fixed',1),(14,4,0,0.00,'fixed',1),(14,5,0,0.00,'fixed',1),(14,6,0,0.00,'fixed',1),(14,8,0,0.00,'fixed',1),(14,19,0,0.00,'fixed',1),(14,20,0,0.00,'fixed',1),(15,4,0,0.00,'fixed',1),(15,8,0,0.00,'fixed',1),(15,10,0,0.00,'fixed',1),(15,13,0,0.00,'fixed',1),(15,16,0,0.00,'fixed',1),(15,18,0,0.00,'fixed',1),(16,5,0,0.00,'fixed',1),(16,6,0,0.00,'fixed',1),(16,8,0,0.00,'fixed',1),(16,14,0,0.00,'fixed',1),(16,15,0,0.00,'fixed',1),(16,18,0,0.00,'fixed',1),(16,19,0,0.00,'fixed',1),(17,1,0,0.00,'fixed',1),(17,3,0,0.00,'fixed',1),(17,6,0,0.00,'fixed',1),(17,7,0,0.00,'fixed',1),(17,9,0,0.00,'fixed',1),(17,14,0,0.00,'fixed',1),(17,18,0,0.00,'fixed',1),(18,1,0,0.00,'fixed',1),(18,6,0,0.00,'fixed',1),(18,11,0,0.00,'fixed',1),(18,13,0,0.00,'fixed',1),(18,19,0,0.00,'fixed',1),(19,4,0,0.00,'fixed',1),(19,6,0,0.00,'fixed',1),(19,14,0,0.00,'fixed',1),(19,15,0,0.00,'fixed',1),(19,16,0,0.00,'fixed',1),(19,17,0,0.00,'fixed',1),(20,11,0,0.00,'fixed',1),(20,12,0,0.00,'fixed',1),(20,13,0,0.00,'fixed',1),(20,15,0,0.00,'fixed',1),(20,17,0,0.00,'fixed',1),(20,18,0,0.00,'fixed',1),(21,2,0,0.00,'fixed',1),(21,5,0,0.00,'fixed',1),(21,7,0,0.00,'fixed',1),(21,14,0,0.00,'fixed',1),(21,17,0,0.00,'fixed',1),(21,18,0,0.00,'fixed',1),(21,19,0,0.00,'fixed',1),(22,2,0,0.00,'fixed',1),(22,13,0,0.00,'fixed',1),(22,14,0,0.00,'fixed',1),(22,15,0,0.00,'fixed',1),(22,16,0,0.00,'fixed',1),(22,17,0,0.00,'fixed',1),(23,5,0,0.00,'fixed',1),(23,8,0,0.00,'fixed',1),(23,12,0,0.00,'fixed',1),(23,13,0,0.00,'fixed',1),(23,18,0,0.00,'fixed',1),(23,19,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,24,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:11\",\"name\":\"1\",\"extension\":\"jpg\"}','2024-03-11 00:14:11','2024-03-11 00:14:11'),(2,32,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:11\",\"name\":\"5\",\"extension\":\"jpg\"}','2024-03-11 00:14:11','2024-03-11 00:14:11'),(3,32,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:11\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2024-03-11 00:14:11','2024-03-11 00:14:11'),(4,32,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:11\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2024-03-11 00:14:11','2024-03-11 00:14:11'),(5,32,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:11\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2024-03-11 00:14:11','2024-03-11 00:14:11'),(6,33,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"5\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(7,33,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(8,33,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(9,33,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(10,34,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"5\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(11,34,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(12,34,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(13,34,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(14,46,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"9\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(15,46,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(16,46,'product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(17,47,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"9\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(18,47,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(19,47,'product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(20,48,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"9\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(21,48,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(22,48,'product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(23,62,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"13\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(24,62,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(25,63,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"13\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(26,63,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(27,70,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"17\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(28,70,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(29,70,'product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(30,70,'product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(31,71,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"17\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(32,71,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(33,71,'product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(34,71,'product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:12\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2024-03-11 00:14:12','2024-03-11 00:14:12'),(35,79,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:13\",\"name\":\"21\",\"extension\":\"jpg\"}','2024-03-11 00:14:13','2024-03-11 00:14:13'),(36,79,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:13\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2024-03-11 00:14:13','2024-03-11 00:14:13'),(37,79,'product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:13\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2024-03-11 00:14:13','2024-03-11 00:14:13'),(38,80,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:13\",\"name\":\"21\",\"extension\":\"jpg\"}','2024-03-11 00:14:13','2024-03-11 00:14:13'),(39,80,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:13\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2024-03-11 00:14:13','2024-03-11 00:14:13'),(40,80,'product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:14:13\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2024-03-11 00:14:13','2024-03-11 00:14:13');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `ec_product_label_products` VALUES (1,12),(2,9),(2,15),(2,18),(2,21),(3,3),(3,6);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#d71e2d','published','2024-03-11 00:14:07','2024-03-11 00:14:07'),(2,'New','#02856e','published','2024-03-11 00:14:07','2024-03-11 00:14:07'),(3,'Sale','#fe9931','published','2024-03-11 00:14:07','2024-03-11 00:14:07');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `ec_product_tag_product` VALUES (1,3),(1,4),(2,2),(2,4),(2,5),(3,2),(3,4),(3,6),(4,1),(4,2),(5,4),(5,5),(5,6),(6,1),(6,4),(6,6),(7,3),(7,6),(8,1),(8,5),(8,6),(9,1),(9,4),(9,5),(10,5),(10,6),(11,2),(11,3),(11,4),(12,1),(12,2),(12,3),(13,2),(13,4),(14,3),(14,4),(14,6),(15,4),(15,5),(16,3),(16,5),(17,1),(17,5),(17,6),(18,3),(18,4),(19,1),(19,3),(19,5),(20,4),(20,6),(21,3),(21,4),(21,5),(22,1),(22,2),(23,2),(23,4),(23,5);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2024-03-11 00:14:16','2024-03-11 00:14:16'),(2,'Mobile',NULL,'published','2024-03-11 00:14:16','2024-03-11 00:14:16'),(3,'Iphone',NULL,'published','2024-03-11 00:14:16','2024-03-11 00:14:16'),(4,'Printer',NULL,'published','2024-03-11 00:14:16','2024-03-11 00:14:16'),(5,'Office',NULL,'published','2024-03-11 00:14:16','2024-03-11 00:14:16'),(6,'IT',NULL,'published','2024-03-11 00:14:16','2024-03-11 00:14:16');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (5,1,3),(21,1,11),(29,1,15),(35,1,18),(55,1,28),(57,1,29),(59,1,30),(61,1,31),(71,1,36),(81,1,41),(87,1,44),(93,1,47),(103,1,52),(115,1,58),(1,2,1),(3,2,2),(7,2,4),(9,2,5),(15,2,8),(17,2,9),(19,2,10),(39,2,20),(51,2,26),(53,2,27),(77,2,39),(85,2,43),(105,2,53),(121,2,61),(27,3,14),(33,3,17),(41,3,21),(45,3,23),(11,4,6),(31,4,16),(47,4,24),(49,4,25),(63,4,32),(65,4,33),(75,4,38),(79,4,40),(83,4,42),(99,4,50),(109,4,55),(111,4,56),(117,4,59),(13,5,7),(23,5,12),(25,5,13),(37,5,19),(43,5,22),(67,5,34),(69,5,35),(73,5,37),(89,5,45),(91,5,46),(95,5,48),(97,5,49),(101,5,51),(107,5,54),(113,5,57),(119,5,60),(123,5,62),(30,6,15),(52,6,26),(72,6,36),(74,6,37),(96,6,48),(104,6,52),(108,6,54),(18,7,9),(36,7,18),(38,7,19),(50,7,25),(54,7,27),(86,7,43),(88,7,44),(92,7,46),(100,7,50),(106,7,53),(110,7,55),(116,7,58),(124,7,62),(12,8,6),(20,8,10),(44,8,22),(56,8,28),(58,8,29),(68,8,34),(70,8,35),(94,8,47),(98,8,49),(102,8,51),(112,8,56),(114,8,57),(120,8,60),(122,8,61),(2,9,1),(4,9,2),(10,9,5),(16,9,8),(24,9,12),(26,9,13),(28,9,14),(34,9,17),(40,9,20),(42,9,21),(48,9,24),(62,9,31),(76,9,38),(78,9,39),(90,9,45),(6,10,3),(8,10,4),(14,10,7),(22,10,11),(32,10,16),(46,10,23),(60,10,30),(64,10,32),(66,10,33),(80,10,40),(82,10,41),(84,10,42),(118,10,59);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,24,1,1),(2,25,2,1),(3,26,2,0),(4,27,2,0),(5,28,3,1),(6,29,3,0),(7,30,3,0),(8,31,4,1),(9,32,5,1),(10,33,5,0),(11,34,5,0),(12,35,6,1),(13,36,6,0),(14,37,6,0),(15,38,7,1),(16,39,7,0),(17,40,7,0),(18,41,7,0),(19,42,7,0),(20,43,8,1),(21,44,8,0),(22,45,8,0),(23,46,9,1),(24,47,9,0),(25,48,9,0),(26,49,10,1),(27,50,10,0),(28,51,10,0),(29,52,10,0),(30,53,10,0),(31,54,11,1),(32,55,11,0),(33,56,11,0),(34,57,11,0),(35,58,11,0),(36,59,12,1),(37,60,12,0),(38,61,12,0),(39,62,13,1),(40,63,13,0),(41,64,14,1),(42,65,14,0),(43,66,15,1),(44,67,15,0),(45,68,16,1),(46,69,16,0),(47,70,17,1),(48,71,17,0),(49,72,18,1),(50,73,18,0),(51,74,18,0),(52,75,19,1),(53,76,20,1),(54,77,20,0),(55,78,20,0),(56,79,21,1),(57,80,21,0),(58,81,22,1),(59,82,22,0),(60,83,22,0),(61,84,23,1),(62,85,23,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2024-03-11',
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,16,0),(2,16,0),(1,17,0),(2,17,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(1,21,0),(2,21,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `stock_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `store_id` bigint unsigned DEFAULT NULL,
  `approved_by` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Dual Camera 20MP (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\"]','SW-107-A0',0,19,0,1,1,7,0,0,80.25,NULL,NULL,NULL,20.00,16.00,13.00,666.00,NULL,26140,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,4,0),(2,'Smart Watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','SW-148-A0',0,20,0,1,1,5,0,0,40.5,NULL,NULL,NULL,12.00,17.00,13.00,604.00,NULL,60865,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(3,'Beat Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\"]','SW-146-A0',0,16,0,1,1,3,0,0,20,NULL,NULL,NULL,14.00,16.00,13.00,614.00,NULL,172153,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(4,'Red &amp; Black Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','SW-109-A0',0,10,0,1,1,4,0,0,542,406.5,NULL,NULL,15.00,17.00,16.00,747.00,NULL,153643,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(5,'Smart Watch External (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','SW-181-A0',0,19,0,1,1,5,0,0,744,NULL,NULL,NULL,12.00,11.00,13.00,601.00,NULL,17531,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,2,0),(6,'Nikon HD camera','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\"]','SW-194-A0',0,18,0,1,1,6,0,0,404,NULL,NULL,NULL,20.00,14.00,19.00,712.00,NULL,198885,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(7,'Audio Equipment','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\"]','SW-163-A0',0,13,0,1,1,2,0,0,522,NULL,NULL,NULL,18.00,16.00,20.00,583.00,NULL,140082,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(8,'Smart Televisions','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\"]','SW-190-A0',0,15,0,1,1,4,0,0,1171,819.7,NULL,NULL,15.00,10.00,19.00,741.00,NULL,181485,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(9,'Samsung Smart Phone (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\",\"products\\/9-2.jpg\"]','SW-138-A0',0,15,0,1,1,7,0,0,538,NULL,NULL,NULL,16.00,15.00,11.00,887.00,NULL,74496,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,1,0),(10,'Herschel Leather Duffle Bag In Brown Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\",\"products\\/10-2.jpg\"]','SW-147-A0',0,20,0,1,0,4,0,0,1199,NULL,NULL,NULL,18.00,13.00,16.00,681.00,NULL,3935,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,3,0),(11,'Xbox One Wireless Controller Black Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\"]','SW-170-A0',0,11,0,1,0,7,0,0,1149,NULL,NULL,NULL,18.00,14.00,13.00,779.00,NULL,99742,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(12,'EPSION Plaster Printer','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\"]','SW-199-A0',0,19,0,1,0,4,0,0,515,396.55,NULL,NULL,13.00,18.00,16.00,884.00,NULL,13726,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(13,'Sound Intone I65 Earphone White Version (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','SW-156-A0',0,17,0,1,0,5,0,0,504,NULL,NULL,NULL,14.00,15.00,16.00,660.00,NULL,57596,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,1,0),(14,'B&amp;O Play Mini Bluetooth Speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\"]','SW-129-A0',0,11,0,1,0,2,0,0,540,NULL,NULL,NULL,18.00,16.00,15.00,552.00,NULL,176023,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(15,'Apple MacBook Air Retina 13.3-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','SW-134-A0',0,10,0,1,0,1,0,0,520,NULL,NULL,NULL,17.00,14.00,11.00,614.00,NULL,163575,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(16,'Apple MacBook Air Retina 12-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]','SW-109-A0',0,16,0,1,0,7,0,0,568,443.04,NULL,NULL,12.00,12.00,17.00,687.00,NULL,2383,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(17,'Samsung Gear VR Virtual Reality Headset (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\"]','SW-123-A0',0,17,0,1,0,2,0,0,520,NULL,NULL,NULL,12.00,15.00,20.00,559.00,NULL,178641,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,3,0),(18,'Aveeno Moisturizing Body Shower 450ml','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\"]','SW-111-A0',0,12,0,1,0,1,0,0,936,NULL,NULL,NULL,13.00,20.00,11.00,556.00,NULL,102526,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,3,0),(19,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\"]','SW-131-A0',0,14,0,1,0,7,0,0,1069,NULL,NULL,NULL,14.00,17.00,20.00,894.00,NULL,91353,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(20,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\"]','SW-113-A0',0,13,0,1,0,3,0,0,899,800.11,NULL,NULL,19.00,12.00,11.00,503.00,NULL,198515,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(21,'MVMTH Classical Leather Watch In Black (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\",\"products\\/21-2.jpg\"]','SW-115-A0',0,14,0,1,0,2,0,0,758,NULL,NULL,NULL,19.00,18.00,13.00,760.00,NULL,91166,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,1,0),(22,'Baxter Care Hair Kit For Bearded Mens','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]','SW-112-A0',0,18,0,1,0,2,0,0,422,NULL,NULL,NULL,19.00,17.00,19.00,570.00,NULL,127234,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(23,'Ciate Palemore Lipstick Bold Red Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]','SW-193-A0',0,12,0,1,0,5,0,0,1015,NULL,NULL,NULL,18.00,19.00,17.00,701.00,NULL,145404,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,3,0),(24,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-107-A0',0,19,0,1,0,7,1,0,80.25,NULL,NULL,NULL,20.00,16.00,13.00,666.00,NULL,0,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(25,'Smart Watches',NULL,NULL,'published','[\"products\\/2.jpg\"]','SW-148-A0',0,20,0,1,0,5,1,0,40.5,NULL,NULL,NULL,12.00,17.00,13.00,604.00,NULL,0,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(26,'Smart Watches',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','SW-148-A0-A1',0,20,0,1,0,5,1,0,40.5,NULL,NULL,NULL,12.00,17.00,13.00,604.00,NULL,0,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(27,'Smart Watches',NULL,NULL,'published','[\"products\\/2-2.jpg\"]','SW-148-A0-A2',0,20,0,1,0,5,1,0,40.5,NULL,NULL,NULL,12.00,17.00,13.00,604.00,NULL,0,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(28,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-146-A0',0,16,0,1,0,3,1,0,20,NULL,NULL,NULL,14.00,16.00,13.00,614.00,NULL,0,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(29,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-146-A0-A1',0,16,0,1,0,3,1,0,20,NULL,NULL,NULL,14.00,16.00,13.00,614.00,NULL,0,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(30,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-146-A0-A2',0,16,0,1,0,3,1,0,20,NULL,NULL,NULL,14.00,16.00,13.00,614.00,NULL,0,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(31,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4.jpg\"]','SW-109-A0',0,10,0,1,0,4,1,0,542,406.5,NULL,NULL,15.00,17.00,16.00,747.00,NULL,0,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(32,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','SW-181-A0',0,19,0,1,0,5,1,0,744,NULL,NULL,NULL,12.00,11.00,13.00,601.00,NULL,0,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(33,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','SW-181-A0-A1',0,19,0,1,0,5,1,0,744,NULL,NULL,NULL,12.00,11.00,13.00,601.00,NULL,0,'2024-03-11 00:14:11','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(34,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5-2.jpg\"]','SW-181-A0-A2',0,19,0,1,0,5,1,0,744,NULL,NULL,NULL,12.00,11.00,13.00,601.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(35,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-194-A0',0,18,0,1,0,6,1,0,404,NULL,NULL,NULL,20.00,14.00,19.00,712.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(36,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-194-A0-A1',0,18,0,1,0,6,1,0,404,NULL,NULL,NULL,20.00,14.00,19.00,712.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(37,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-194-A0-A2',0,18,0,1,0,6,1,0,404,NULL,NULL,NULL,20.00,14.00,19.00,712.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(38,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-163-A0',0,13,0,1,0,2,1,0,522,NULL,NULL,NULL,18.00,16.00,20.00,583.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(39,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-163-A0-A1',0,13,0,1,0,2,1,0,522,NULL,NULL,NULL,18.00,16.00,20.00,583.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(40,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-163-A0-A2',0,13,0,1,0,2,1,0,522,NULL,NULL,NULL,18.00,16.00,20.00,583.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(41,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-163-A0-A3',0,13,0,1,0,2,1,0,522,NULL,NULL,NULL,18.00,16.00,20.00,583.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(42,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-163-A0-A4',0,13,0,1,0,2,1,0,522,NULL,NULL,NULL,18.00,16.00,20.00,583.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(43,'Smart Televisions',NULL,NULL,'published','[\"products\\/8.jpg\"]','SW-190-A0',0,15,0,1,0,4,1,0,1171,819.7,NULL,NULL,15.00,10.00,19.00,741.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(44,'Smart Televisions',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','SW-190-A0-A1',0,15,0,1,0,4,1,0,1171,960.22,NULL,NULL,15.00,10.00,19.00,741.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(45,'Smart Televisions',NULL,NULL,'published','[\"products\\/8-2.jpg\"]','SW-190-A0-A2',0,15,0,1,0,4,1,0,1171,1042.19,NULL,NULL,15.00,10.00,19.00,741.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(46,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','SW-138-A0',0,15,0,1,0,7,1,0,538,NULL,NULL,NULL,16.00,15.00,11.00,887.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(47,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','SW-138-A0-A1',0,15,0,1,0,7,1,0,538,NULL,NULL,NULL,16.00,15.00,11.00,887.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(48,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9-2.jpg\"]','SW-138-A0-A2',0,15,0,1,0,7,1,0,538,NULL,NULL,NULL,16.00,15.00,11.00,887.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(49,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]','SW-147-A0',0,20,0,1,0,4,1,0,1199,NULL,NULL,NULL,18.00,13.00,16.00,681.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(50,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','SW-147-A0-A1',0,20,0,1,0,4,1,0,1199,NULL,NULL,NULL,18.00,13.00,16.00,681.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(51,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-2.jpg\"]','SW-147-A0-A2',0,20,0,1,0,4,1,0,1199,NULL,NULL,NULL,18.00,13.00,16.00,681.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(52,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]','SW-147-A0-A3',0,20,0,1,0,4,1,0,1199,NULL,NULL,NULL,18.00,13.00,16.00,681.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(53,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]','SW-147-A0-A4',0,20,0,1,0,4,1,0,1199,NULL,NULL,NULL,18.00,13.00,16.00,681.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(54,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11.jpg\"]','SW-170-A0',0,11,0,1,0,7,1,0,1149,NULL,NULL,NULL,18.00,14.00,13.00,779.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(55,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','SW-170-A0-A1',0,11,0,1,0,7,1,0,1149,NULL,NULL,NULL,18.00,14.00,13.00,779.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(56,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-2.jpg\"]','SW-170-A0-A2',0,11,0,1,0,7,1,0,1149,NULL,NULL,NULL,18.00,14.00,13.00,779.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(57,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-3.jpg\"]','SW-170-A0-A3',0,11,0,1,0,7,1,0,1149,NULL,NULL,NULL,18.00,14.00,13.00,779.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(58,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11.jpg\"]','SW-170-A0-A4',0,11,0,1,0,7,1,0,1149,NULL,NULL,NULL,18.00,14.00,13.00,779.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(59,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12.jpg\"]','SW-199-A0',0,19,0,1,0,4,1,0,515,396.55,NULL,NULL,13.00,18.00,16.00,884.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(60,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','SW-199-A0-A1',0,19,0,1,0,4,1,0,515,391.4,NULL,NULL,13.00,18.00,16.00,884.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(61,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-2.jpg\"]','SW-199-A0-A2',0,19,0,1,0,4,1,0,515,422.3,NULL,NULL,13.00,18.00,16.00,884.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(62,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-156-A0',0,17,0,1,0,5,1,0,504,NULL,NULL,NULL,14.00,15.00,16.00,660.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(63,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','SW-156-A0-A1',0,17,0,1,0,5,1,0,504,NULL,NULL,NULL,14.00,15.00,16.00,660.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(64,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-129-A0',0,11,0,1,0,2,1,0,540,NULL,NULL,NULL,18.00,16.00,15.00,552.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(65,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-129-A0-A1',0,11,0,1,0,2,1,0,540,NULL,NULL,NULL,18.00,16.00,15.00,552.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(66,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-134-A0',0,10,0,1,0,1,1,0,520,NULL,NULL,NULL,17.00,14.00,11.00,614.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(67,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','SW-134-A0-A1',0,10,0,1,0,1,1,0,520,NULL,NULL,NULL,17.00,14.00,11.00,614.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(68,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-109-A0',0,16,0,1,0,7,1,0,568,443.04,NULL,NULL,12.00,12.00,17.00,687.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(69,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-109-A0-A1',0,16,0,1,0,7,1,0,568,454.4,NULL,NULL,12.00,12.00,17.00,687.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(70,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','SW-123-A0',0,17,0,1,0,2,1,0,520,NULL,NULL,NULL,12.00,15.00,20.00,559.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(71,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17-1.jpg\"]','SW-123-A0-A1',0,17,0,1,0,2,1,0,520,NULL,NULL,NULL,12.00,15.00,20.00,559.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(72,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18.jpg\"]','SW-111-A0',0,12,0,1,0,1,1,0,936,NULL,NULL,NULL,13.00,20.00,11.00,556.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(73,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','SW-111-A0-A1',0,12,0,1,0,1,1,0,936,NULL,NULL,NULL,13.00,20.00,11.00,556.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(74,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-2.jpg\"]','SW-111-A0-A2',0,12,0,1,0,1,1,0,936,NULL,NULL,NULL,13.00,20.00,11.00,556.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(75,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19.jpg\"]','SW-131-A0',0,14,0,1,0,7,1,0,1069,NULL,NULL,NULL,14.00,17.00,20.00,894.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(76,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20.jpg\"]','SW-113-A0',0,13,0,1,0,3,1,0,899,800.11,NULL,NULL,19.00,12.00,11.00,503.00,NULL,0,'2024-03-11 00:14:12','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(77,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','SW-113-A0-A1',0,13,0,1,0,3,1,0,899,755.16,NULL,NULL,19.00,12.00,11.00,503.00,NULL,0,'2024-03-11 00:14:13','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(78,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20-2.jpg\"]','SW-113-A0-A2',0,13,0,1,0,3,1,0,899,773.14,NULL,NULL,19.00,12.00,11.00,503.00,NULL,0,'2024-03-11 00:14:13','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(79,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','SW-115-A0',0,14,0,1,0,2,1,0,758,NULL,NULL,NULL,19.00,18.00,13.00,760.00,NULL,0,'2024-03-11 00:14:13','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(80,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','SW-115-A0-A1',0,14,0,1,0,2,1,0,758,NULL,NULL,NULL,19.00,18.00,13.00,760.00,NULL,0,'2024-03-11 00:14:13','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(81,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22.jpg\"]','SW-112-A0',0,18,0,1,0,2,1,0,422,NULL,NULL,NULL,19.00,17.00,19.00,570.00,NULL,0,'2024-03-11 00:14:13','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(82,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','SW-112-A0-A1',0,18,0,1,0,2,1,0,422,NULL,NULL,NULL,19.00,17.00,19.00,570.00,NULL,0,'2024-03-11 00:14:13','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(83,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-2.jpg\"]','SW-112-A0-A2',0,18,0,1,0,2,1,0,422,NULL,NULL,NULL,19.00,17.00,19.00,570.00,NULL,0,'2024-03-11 00:14:13','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(84,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23.jpg\"]','SW-193-A0',0,12,0,1,0,5,1,0,1015,NULL,NULL,NULL,18.00,19.00,17.00,701.00,NULL,0,'2024-03-11 00:14:13','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(85,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','SW-193-A0-A1',0,12,0,1,0,5,1,0,1015,NULL,NULL,NULL,18.00,19.00,17.00,701.00,NULL,0,'2024-03-11 00:14:13','2024-03-11 00:14:21','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
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
INSERT INTO `ec_reviews` VALUES (1,5,2,2.00,'Best ecommerce CMS online store!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/21.jpg\"]'),(2,10,11,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/8-3.jpg\",\"products\\/9-1.jpg\",\"products\\/17-3.jpg\",\"products\\/20-3.jpg\"]'),(3,8,12,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/4-1.jpg\",\"products\\/9-1.jpg\",\"products\\/12-3.jpg\",\"products\\/17-1.jpg\"]'),(4,8,2,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/8-2.jpg\"]'),(5,9,14,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/4-2.jpg\",\"products\\/16.jpg\",\"products\\/21-2.jpg\",\"products\\/22.jpg\"]'),(6,5,8,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2.jpg\"]'),(7,2,5,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/18-2.jpg\"]'),(8,8,11,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/14.jpg\",\"products\\/19-1.jpg\",\"products\\/19.jpg\",\"products\\/23-1.jpg\"]'),(9,5,1,3.00,'Clean & perfect source code','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/3.jpg\",\"products\\/4-3.jpg\",\"products\\/8-2.jpg\"]'),(10,9,13,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/11-1.jpg\"]'),(11,8,8,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/5-1.jpg\",\"products\\/10.jpg\",\"products\\/23-3.jpg\"]'),(12,9,20,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/8-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11.jpg\"]'),(14,1,2,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/3.jpg\",\"products\\/9.jpg\"]'),(15,8,15,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/18-2.jpg\"]'),(16,10,13,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/17-2.jpg\",\"products\\/17.jpg\"]'),(17,5,5,5.00,'Best ecommerce CMS online store!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/7.jpg\",\"products\\/8-3.jpg\"]'),(18,4,18,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-3.jpg\",\"products\\/21-2.jpg\",\"products\\/22-3.jpg\"]'),(19,2,15,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/6.jpg\",\"products\\/10-1.jpg\"]'),(20,5,17,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/10.jpg\",\"products\\/19.jpg\"]'),(21,9,15,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/5-3.jpg\",\"products\\/15.jpg\"]'),(22,5,6,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/8.jpg\"]'),(23,6,8,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/3.jpg\",\"products\\/17-3.jpg\",\"products\\/18-1.jpg\"]'),(24,2,22,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/9-1.jpg\",\"products\\/11-3.jpg\"]'),(25,10,6,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/15-1.jpg\",\"products\\/19.jpg\",\"products\\/22-1.jpg\"]'),(26,3,4,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/17-1.jpg\"]'),(27,4,11,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/1.jpg\",\"products\\/4-3.jpg\",\"products\\/8.jpg\"]'),(28,2,7,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/9-2.jpg\",\"products\\/11-3.jpg\",\"products\\/17-2.jpg\",\"products\\/18-3.jpg\"]'),(29,6,18,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-1.jpg\",\"products\\/10.jpg\",\"products\\/19.jpg\"]'),(30,4,10,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/8-1.jpg\",\"products\\/8.jpg\",\"products\\/20-3.jpg\",\"products\\/23-1.jpg\"]'),(31,1,19,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/11-3.jpg\",\"products\\/17-3.jpg\"]'),(32,4,23,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/20-1.jpg\",\"products\\/21-2.jpg\"]'),(34,10,1,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-3.jpg\",\"products\\/9.jpg\",\"products\\/11-3.jpg\",\"products\\/15-1.jpg\"]'),(35,10,3,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/5-2.jpg\",\"products\\/8-1.jpg\",\"products\\/11.jpg\",\"products\\/23.jpg\"]'),(36,1,3,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-2.jpg\",\"products\\/5-2.jpg\",\"products\\/19-2.jpg\",\"products\\/21-2.jpg\"]'),(37,9,17,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/13-1.jpg\",\"products\\/17-3.jpg\",\"products\\/18-3.jpg\",\"products\\/22.jpg\"]'),(39,3,9,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/11-2.jpg\",\"products\\/16.jpg\",\"products\\/18-3.jpg\",\"products\\/19-2.jpg\"]'),(40,8,14,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/16.jpg\",\"products\\/23-3.jpg\"]'),(41,8,6,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/20-2.jpg\"]'),(42,3,8,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/8-2.jpg\",\"products\\/12-1.jpg\",\"products\\/13.jpg\",\"products\\/21.jpg\"]'),(43,1,22,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/1.jpg\",\"products\\/13.jpg\",\"products\\/20.jpg\",\"products\\/21-2.jpg\"]'),(45,4,3,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/21.jpg\"]'),(46,6,11,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/3.jpg\"]'),(47,4,1,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/18-2.jpg\"]'),(48,7,11,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/21-2.jpg\"]'),(49,5,22,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/9.jpg\",\"products\\/16.jpg\"]'),(50,4,7,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/21-1.jpg\"]'),(51,1,14,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/13-1.jpg\"]'),(52,5,14,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/9-1.jpg\",\"products\\/9.jpg\"]'),(53,10,5,5.00,'Clean & perfect source code','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/3.jpg\",\"products\\/8.jpg\",\"products\\/21-2.jpg\",\"products\\/21.jpg\"]'),(55,10,2,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/4-3.jpg\",\"products\\/14.jpg\",\"products\\/16.jpg\"]'),(56,3,16,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2.jpg\",\"products\\/15-1.jpg\"]'),(57,7,10,1.00,'Clean & perfect source code','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/5-1.jpg\",\"products\\/14.jpg\",\"products\\/19-2.jpg\"]'),(58,4,13,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/16.jpg\",\"products\\/19-1.jpg\"]'),(59,2,11,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/17-2.jpg\"]'),(60,6,7,4.00,'Good app, good backup service and support. Good documentation.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/19-2.jpg\",\"products\\/23-2.jpg\"]'),(64,4,8,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/5.jpg\",\"products\\/17-1.jpg\",\"products\\/21-1.jpg\"]'),(65,6,3,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/13-1.jpg\",\"products\\/15-1.jpg\"]'),(66,2,19,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/9-2.jpg\",\"products\\/9.jpg\"]'),(67,1,15,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/20-3.jpg\",\"products\\/22-1.jpg\"]'),(69,10,18,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/8-2.jpg\",\"products\\/8.jpg\",\"products\\/14.jpg\",\"products\\/19-2.jpg\"]'),(72,5,3,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/8-3.jpg\",\"products\\/12-3.jpg\",\"products\\/23-3.jpg\"]'),(73,9,8,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/4-2.jpg\",\"products\\/18-1.jpg\"]'),(74,3,10,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/13-1.jpg\"]'),(75,10,23,4.00,'Clean & perfect source code','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/4.jpg\",\"products\\/11-3.jpg\",\"products\\/17-3.jpg\"]'),(76,1,12,5.00,'Best ecommerce CMS online store!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/16.jpg\",\"products\\/18-2.jpg\"]'),(77,7,23,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-2.jpg\",\"products\\/22-2.jpg\"]'),(78,8,19,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/15-1.jpg\"]'),(79,8,17,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-2.jpg\",\"products\\/12-2.jpg\",\"products\\/17-1.jpg\",\"products\\/19-1.jpg\"]'),(80,7,12,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/12-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18.jpg\"]'),(81,1,8,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/4-2.jpg\",\"products\\/11-1.jpg\"]'),(82,5,4,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/19-3.jpg\",\"products\\/21.jpg\"]'),(85,8,21,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-2.jpg\",\"products\\/5-2.jpg\",\"products\\/17.jpg\",\"products\\/19-3.jpg\"]'),(86,3,11,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/3.jpg\",\"products\\/8-2.jpg\",\"products\\/10-1.jpg\",\"products\\/20-2.jpg\"]'),(87,6,15,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-3.jpg\",\"products\\/16.jpg\",\"products\\/18-2.jpg\",\"products\\/23-3.jpg\"]'),(88,9,22,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/4.jpg\",\"products\\/15-1.jpg\",\"products\\/17-1.jpg\"]'),(89,4,14,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/18-2.jpg\",\"products\\/18.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\"]'),(91,7,5,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/3.jpg\",\"products\\/23-3.jpg\"]'),(93,8,5,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/17-1.jpg\",\"products\\/18-1.jpg\"]'),(94,3,14,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/5-3.jpg\",\"products\\/8-1.jpg\",\"products\\/11.jpg\"]'),(96,9,19,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/18-1.jpg\"]'),(99,1,4,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/11-3.jpg\"]'),(100,8,1,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/23-1.jpg\"]'),(101,7,22,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/18.jpg\"]'),(102,2,10,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/9-2.jpg\",\"products\\/15.jpg\",\"products\\/19.jpg\",\"products\\/20.jpg\"]'),(106,3,2,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/12-3.jpg\",\"products\\/13.jpg\"]'),(107,8,20,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/11-2.jpg\",\"products\\/21-2.jpg\"]'),(108,10,9,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2.jpg\",\"products\\/4.jpg\",\"products\\/10-2.jpg\"]'),(111,8,4,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/4-2.jpg\",\"products\\/10-2.jpg\",\"products\\/11-3.jpg\"]'),(113,6,20,3.00,'Good app, good backup service and support. Good documentation.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/19-3.jpg\",\"products\\/22-1.jpg\"]'),(115,3,17,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/17-2.jpg\"]'),(116,7,18,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/18-1.jpg\",\"products\\/19-3.jpg\",\"products\\/20-1.jpg\"]'),(122,1,10,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/20-1.jpg\",\"products\\/22-2.jpg\"]'),(124,3,18,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-1.jpg\"]'),(126,5,21,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/8-3.jpg\",\"products\\/11-3.jpg\",\"products\\/17.jpg\"]'),(127,5,16,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/11-1.jpg\",\"products\\/12-3.jpg\",\"products\\/16.jpg\"]'),(129,3,6,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/8-1.jpg\",\"products\\/22-3.jpg\"]'),(130,7,7,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-2.jpg\",\"products\\/7.jpg\",\"products\\/13.jpg\",\"products\\/22.jpg\"]'),(131,9,21,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/19-1.jpg\",\"products\\/20-3.jpg\",\"products\\/21-1.jpg\",\"products\\/23-1.jpg\"]'),(132,4,20,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-1.jpg\",\"products\\/9.jpg\",\"products\\/12-2.jpg\",\"products\\/18-2.jpg\"]'),(133,4,19,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2.jpg\",\"products\\/4-1.jpg\"]'),(134,1,17,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-3.jpg\",\"products\\/19.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]'),(136,7,6,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-1.jpg\",\"products\\/5.jpg\",\"products\\/13.jpg\",\"products\\/22.jpg\"]'),(137,2,12,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/1.jpg\",\"products\\/20.jpg\"]'),(138,9,16,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/5-1.jpg\",\"products\\/13.jpg\",\"products\\/18-1.jpg\",\"products\\/21.jpg\"]'),(139,2,23,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/11-3.jpg\",\"products\\/19-1.jpg\"]'),(141,9,5,2.00,'Clean & perfect source code','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/5-1.jpg\"]'),(143,7,1,5.00,'Good app, good backup service and support. Good documentation.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-1.jpg\",\"products\\/9-1.jpg\",\"products\\/16.jpg\",\"products\\/18-1.jpg\"]'),(144,6,1,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/19-3.jpg\"]'),(146,3,19,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/5-1.jpg\",\"products\\/14.jpg\",\"products\\/20-1.jpg\",\"products\\/21-1.jpg\"]'),(149,2,1,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-1.jpg\",\"products\\/12.jpg\",\"products\\/21-2.jpg\"]'),(150,1,16,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/15.jpg\",\"products\\/22-1.jpg\"]'),(154,1,13,5.00,'Best ecommerce CMS online store!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/15.jpg\",\"products\\/18-2.jpg\",\"products\\/23-3.jpg\"]'),(156,7,3,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/1.jpg\"]'),(158,6,14,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/1.jpg\",\"products\\/8-2.jpg\",\"products\\/9.jpg\"]'),(160,4,2,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/18.jpg\",\"products\\/23.jpg\"]'),(161,7,16,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/7.jpg\",\"products\\/11-1.jpg\",\"products\\/18-1.jpg\",\"products\\/19-1.jpg\"]'),(162,5,12,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/8-2.jpg\",\"products\\/18-1.jpg\",\"products\\/23-2.jpg\"]'),(172,10,16,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/11-1.jpg\",\"products\\/12-1.jpg\",\"products\\/12-3.jpg\",\"products\\/20.jpg\"]'),(178,7,15,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-3.jpg\",\"products\\/12-3.jpg\",\"products\\/22-3.jpg\",\"products\\/23.jpg\"]'),(179,4,9,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/11-1.jpg\",\"products\\/17-2.jpg\",\"products\\/23-1.jpg\"]'),(185,10,20,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/10-2.jpg\",\"products\\/23-1.jpg\"]'),(186,6,13,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-1.jpg\"]'),(187,3,15,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/20-1.jpg\",\"products\\/22.jpg\"]'),(188,4,6,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/9-2.jpg\",\"products\\/21.jpg\",\"products\\/23-1.jpg\",\"products\\/23-3.jpg\"]'),(189,5,15,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/7.jpg\",\"products\\/12.jpg\",\"products\\/19-3.jpg\",\"products\\/21.jpg\"]'),(192,6,16,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/6.jpg\",\"products\\/13.jpg\",\"products\\/18-3.jpg\",\"products\\/21-2.jpg\"]'),(195,10,10,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/11.jpg\",\"products\\/15-1.jpg\",\"products\\/18.jpg\"]'),(197,9,9,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/22-2.jpg\"]'),(198,1,7,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/17-1.jpg\"]'),(199,9,18,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/5-3.jpg\",\"products\\/18.jpg\",\"products\\/21-1.jpg\"]'),(203,4,17,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/4.jpg\",\"products\\/17-2.jpg\",\"products\\/23-2.jpg\"]'),(207,8,3,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/5-2.jpg\",\"products\\/18-3.jpg\"]'),(209,6,9,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-1.jpg\",\"products\\/9.jpg\"]'),(214,1,11,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/15-1.jpg\",\"products\\/21-1.jpg\",\"products\\/22.jpg\"]'),(216,4,12,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/3.jpg\",\"products\\/19-1.jpg\"]'),(217,2,6,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/21.jpg\"]'),(219,1,6,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-1.jpg\",\"products\\/9-1.jpg\",\"products\\/9.jpg\",\"products\\/23-3.jpg\"]'),(224,5,18,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/10-2.jpg\",\"products\\/12.jpg\",\"products\\/13.jpg\",\"products\\/22.jpg\"]'),(225,7,8,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/4-2.jpg\",\"products\\/11-3.jpg\",\"products\\/17.jpg\",\"products\\/19-1.jpg\"]'),(230,3,22,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/10-2.jpg\",\"products\\/13-1.jpg\"]'),(234,6,4,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/5-2.jpg\",\"products\\/12.jpg\",\"products\\/17.jpg\",\"products\\/18-2.jpg\"]'),(235,1,18,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/9-1.jpg\",\"products\\/20-2.jpg\",\"products\\/22-3.jpg\"]'),(237,8,18,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-1.jpg\"]'),(238,4,4,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-1.jpg\",\"products\\/12-1.jpg\",\"products\\/23.jpg\"]'),(239,8,22,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/1.jpg\"]'),(242,6,5,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2.jpg\"]'),(255,8,10,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/3.jpg\",\"products\\/17-2.jpg\",\"products\\/22-2.jpg\"]'),(259,1,20,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/10-1.jpg\",\"products\\/18.jpg\",\"products\\/20.jpg\"]'),(260,1,1,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/4.jpg\",\"products\\/19-2.jpg\"]'),(262,10,22,5.00,'Best ecommerce CMS online store!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/10-2.jpg\",\"products\\/11-3.jpg\",\"products\\/12-2.jpg\",\"products\\/20-1.jpg\"]'),(264,7,9,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/8-2.jpg\"]'),(266,2,21,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/14.jpg\",\"products\\/16.jpg\",\"products\\/18.jpg\"]'),(267,5,11,2.00,'Clean & perfect source code','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/4.jpg\"]'),(268,3,21,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/9-1.jpg\",\"products\\/19-2.jpg\"]'),(269,2,17,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/4-1.jpg\",\"products\\/6.jpg\",\"products\\/7.jpg\",\"products\\/12.jpg\"]'),(270,4,15,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/12-3.jpg\",\"products\\/14.jpg\",\"products\\/20-2.jpg\",\"products\\/22-1.jpg\"]'),(277,4,21,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/13-1.jpg\",\"products\\/23-3.jpg\"]'),(281,5,23,4.00,'Good app, good backup service and support. Good documentation.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/5-2.jpg\",\"products\\/17-2.jpg\"]'),(290,9,23,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/11-2.jpg\",\"products\\/20-1.jpg\"]'),(295,7,13,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/4-2.jpg\",\"products\\/11-3.jpg\",\"products\\/17-3.jpg\"]'),(296,9,11,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/5-1.jpg\",\"products\\/8-1.jpg\",\"products\\/15-1.jpg\"]'),(297,8,16,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-2.jpg\",\"products\\/9-1.jpg\",\"products\\/9-2.jpg\",\"products\\/22-2.jpg\"]'),(299,2,16,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/18-3.jpg\"]'),(300,7,21,2.00,'Best ecommerce CMS online store!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/11-1.jpg\",\"products\\/23-3.jpg\"]'),(301,1,23,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-1.jpg\",\"products\\/5.jpg\",\"products\\/13.jpg\"]'),(302,3,1,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2.jpg\",\"products\\/5-1.jpg\",\"products\\/10-2.jpg\",\"products\\/11-2.jpg\"]'),(311,9,7,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/15.jpg\",\"products\\/22.jpg\"]'),(316,2,2,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/17.jpg\"]'),(317,2,9,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/4-3.jpg\",\"products\\/10.jpg\",\"products\\/21-1.jpg\"]'),(322,3,13,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/22.jpg\"]'),(323,10,7,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/4.jpg\",\"products\\/12.jpg\",\"products\\/15-1.jpg\",\"products\\/19-3.jpg\"]'),(325,8,9,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/10.jpg\"]'),(331,1,21,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/5-3.jpg\",\"products\\/18-1.jpg\"]'),(336,9,4,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-1.jpg\",\"products\\/19-1.jpg\"]'),(339,6,23,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/4-2.jpg\",\"products\\/8.jpg\",\"products\\/11-1.jpg\",\"products\\/22.jpg\"]'),(344,5,13,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/13.jpg\",\"products\\/22-1.jpg\",\"products\\/22.jpg\"]'),(347,10,17,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/12-2.jpg\",\"products\\/14.jpg\"]'),(355,6,19,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/4-1.jpg\",\"products\\/20-2.jpg\",\"products\\/21.jpg\"]'),(356,10,15,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/12-1.jpg\"]'),(360,10,8,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/10-2.jpg\"]'),(370,4,22,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/10-2.jpg\",\"products\\/12-3.jpg\",\"products\\/16.jpg\",\"products\\/22-3.jpg\"]'),(377,10,12,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/8-3.jpg\",\"products\\/16.jpg\"]'),(380,7,17,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\",\"products\\/22-2.jpg\"]'),(393,4,5,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-3.jpg\"]'),(399,2,3,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/8-3.jpg\"]'),(403,5,9,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\"]'),(409,2,4,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/5-2.jpg\",\"products\\/12-1.jpg\"]'),(424,8,7,1.00,'Clean & perfect source code','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/15-1.jpg\",\"products\\/17.jpg\"]'),(431,10,19,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/9-1.jpg\",\"products\\/18.jpg\",\"products\\/20-1.jpg\"]'),(444,9,12,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/8-2.jpg\",\"products\\/10-2.jpg\",\"products\\/18-3.jpg\",\"products\\/20-1.jpg\"]'),(458,3,12,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/7.jpg\",\"products\\/12-1.jpg\",\"products\\/22-3.jpg\"]'),(460,2,13,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/17.jpg\"]'),(468,2,8,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/21-1.jpg\"]'),(478,10,4,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/5-3.jpg\",\"products\\/19-3.jpg\"]'),(482,5,19,5.00,'Good app, good backup service and support. Good documentation.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/10.jpg\"]'),(501,10,14,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/8-3.jpg\",\"products\\/22-3.jpg\"]'),(508,1,5,5.00,'Clean & perfect source code','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/3.jpg\",\"products\\/5-1.jpg\",\"products\\/18-3.jpg\"]'),(510,9,10,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/20-1.jpg\"]'),(518,9,6,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/5-3.jpg\",\"products\\/22-2.jpg\"]'),(523,7,2,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/19-2.jpg\"]'),(536,5,10,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/20.jpg\"]'),(545,9,3,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/15-1.jpg\",\"products\\/15.jpg\",\"products\\/17-3.jpg\"]'),(556,3,23,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/17-3.jpg\",\"products\\/20-3.jpg\",\"products\\/22-2.jpg\"]'),(558,6,21,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/18-2.jpg\"]'),(559,7,14,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/15.jpg\",\"products\\/17.jpg\"]'),(571,9,2,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/11-1.jpg\",\"products\\/12-3.jpg\"]'),(586,6,22,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-1.jpg\"]'),(587,5,20,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/12-3.jpg\",\"products\\/18.jpg\",\"products\\/22.jpg\"]'),(598,3,5,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/4.jpg\",\"products\\/8-1.jpg\",\"products\\/19-1.jpg\"]'),(602,6,10,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/4-1.jpg\",\"products\\/22-2.jpg\"]'),(613,2,18,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/4-3.jpg\",\"products\\/8-1.jpg\"]'),(633,1,9,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/4-1.jpg\",\"products\\/9-2.jpg\",\"products\\/17-3.jpg\"]'),(638,7,20,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/19.jpg\"]'),(641,8,13,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2.jpg\",\"products\\/17-3.jpg\"]'),(677,10,21,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/8-3.jpg\"]'),(726,6,6,3.00,'Best ecommerce CMS online store!','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-2.jpg\",\"products\\/5-1.jpg\",\"products\\/6.jpg\",\"products\\/18-3.jpg\"]'),(736,3,20,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-2.jpg\",\"products\\/4-2.jpg\",\"products\\/16.jpg\"]'),(745,6,12,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/17.jpg\",\"products\\/21-2.jpg\",\"products\\/23-2.jpg\"]'),(774,7,4,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/6.jpg\",\"products\\/11-1.jpg\",\"products\\/22-3.jpg\"]'),(823,8,23,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/11.jpg\",\"products\\/13.jpg\",\"products\\/22-2.jpg\"]'),(839,6,17,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/2-3.jpg\",\"products\\/8-1.jpg\",\"products\\/15.jpg\",\"products\\/19.jpg\"]'),(874,2,20,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/1.jpg\",\"products\\/2-1.jpg\",\"products\\/19-2.jpg\"]'),(905,2,14,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/8-3.jpg\"]'),(975,9,1,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-11 00:14:16','2024-03-11 00:14:16','[\"products\\/8-3.jpg\",\"products\\/17-3.jpg\",\"products\\/20-2.jpg\",\"products\\/23-1.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2024-02-28 08:14:21','2024-02-28 08:14:21','Botble\\ACL\\Models\\User'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2024-03-09 08:14:22','2024-03-11 00:14:22','Botble\\ACL\\Models\\User'),(3,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2024-03-01 00:14:22','2024-03-01 00:14:22','Botble\\ACL\\Models\\User'),(4,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2024-03-09 08:14:22','2024-03-11 00:14:22','Botble\\ACL\\Models\\User'),(5,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2024-03-07 20:14:22','2024-03-07 20:14:22','Botble\\ACL\\Models\\User'),(6,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2024-03-09 10:14:22','2024-03-11 00:14:22','Botble\\ACL\\Models\\User'),(7,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2024-03-01 12:14:22','2024-03-01 12:14:22','Botble\\ACL\\Models\\User'),(8,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2024-03-09 10:14:22','2024-03-11 00:14:22','Botble\\ACL\\Models\\User'),(9,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,4,'2024-03-11 00:14:22','2024-03-11 00:14:22','Botble\\ACL\\Models\\User'),(10,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2024-02-25 00:14:22','2024-02-25 00:14:22','Botble\\ACL\\Models\\User'),(11,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,5,'2024-03-09 12:14:22','2024-03-11 00:14:22','Botble\\ACL\\Models\\User'),(12,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,5,'2024-03-11 00:14:22','2024-03-11 00:14:22','Botble\\ACL\\Models\\User'),(13,'create_from_order','Shipping was created from order %order_id%',0,6,7,'2024-03-08 04:14:23','2024-03-08 04:14:23','Botble\\ACL\\Models\\User'),(14,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,7,'2024-03-09 14:14:23','2024-03-11 00:14:23','Botble\\ACL\\Models\\User'),(15,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,7,'2024-03-11 00:14:23','2024-03-11 00:14:23','Botble\\ACL\\Models\\User'),(16,'create_from_order','Shipping was created from order %order_id%',0,7,9,'2024-03-08 08:14:23','2024-03-08 08:14:23','Botble\\ACL\\Models\\User'),(17,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,9,'2024-03-09 16:14:23','2024-03-11 00:14:23','Botble\\ACL\\Models\\User'),(18,'create_from_order','Shipping was created from order %order_id%',0,8,10,'2024-03-05 16:14:23','2024-03-05 16:14:23','Botble\\ACL\\Models\\User'),(19,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,10,'2024-03-09 16:14:23','2024-03-11 00:14:23','Botble\\ACL\\Models\\User'),(20,'create_from_order','Shipping was created from order %order_id%',0,9,11,'2024-02-28 18:14:23','2024-02-28 18:14:23','Botble\\ACL\\Models\\User'),(21,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,11,'2024-03-09 18:14:23','2024-03-11 00:14:23','Botble\\ACL\\Models\\User'),(22,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,11,'2024-03-11 00:14:24','2024-03-11 00:14:24','Botble\\ACL\\Models\\User'),(23,'create_from_order','Shipping was created from order %order_id%',0,10,13,'2024-03-01 16:14:24','2024-03-01 16:14:24','Botble\\ACL\\Models\\User'),(24,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,13,'2024-03-09 20:14:24','2024-03-11 00:14:24','Botble\\ACL\\Models\\User'),(25,'create_from_order','Shipping was created from order %order_id%',0,11,15,'2024-03-01 16:14:24','2024-03-01 16:14:24','Botble\\ACL\\Models\\User'),(26,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,15,'2024-03-09 20:14:24','2024-03-11 00:14:24','Botble\\ACL\\Models\\User'),(27,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,15,'2024-03-11 00:14:24','2024-03-11 00:14:24','Botble\\ACL\\Models\\User'),(28,'create_from_order','Shipping was created from order %order_id%',0,12,16,'2024-03-01 06:14:24','2024-03-01 06:14:24','Botble\\ACL\\Models\\User'),(29,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,16,'2024-03-09 22:14:24','2024-03-11 00:14:24','Botble\\ACL\\Models\\User'),(30,'create_from_order','Shipping was created from order %order_id%',0,13,17,'2024-03-03 10:14:24','2024-03-03 10:14:24','Botble\\ACL\\Models\\User'),(31,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,17,'2024-03-09 22:14:25','2024-03-11 00:14:25','Botble\\ACL\\Models\\User'),(32,'create_from_order','Shipping was created from order %order_id%',0,14,19,'2024-03-10 00:14:25','2024-03-10 00:14:25','Botble\\ACL\\Models\\User'),(33,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,19,'2024-03-10 00:14:25','2024-03-11 00:14:25','Botble\\ACL\\Models\\User'),(34,'create_from_order','Shipping was created from order %order_id%',0,15,21,'2024-03-05 12:14:25','2024-03-05 12:14:25','Botble\\ACL\\Models\\User'),(35,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,21,'2024-03-10 02:14:25','2024-03-11 00:14:25','Botble\\ACL\\Models\\User'),(36,'create_from_order','Shipping was created from order %order_id%',0,16,22,'2024-03-09 04:14:25','2024-03-09 04:14:25','Botble\\ACL\\Models\\User'),(37,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,22,'2024-03-10 02:14:26','2024-03-11 00:14:26','Botble\\ACL\\Models\\User'),(38,'create_from_order','Shipping was created from order %order_id%',0,17,23,'2024-03-05 12:14:26','2024-03-05 12:14:26','Botble\\ACL\\Models\\User'),(39,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,23,'2024-03-10 02:14:26','2024-03-11 00:14:26','Botble\\ACL\\Models\\User'),(40,'create_from_order','Shipping was created from order %order_id%',0,18,24,'2024-03-09 08:14:26','2024-03-09 08:14:26','Botble\\ACL\\Models\\User'),(41,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,24,'2024-03-10 04:14:26','2024-03-11 00:14:26','Botble\\ACL\\Models\\User'),(42,'create_from_order','Shipping was created from order %order_id%',0,19,25,'2024-03-09 12:14:26','2024-03-09 12:14:26','Botble\\ACL\\Models\\User'),(43,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,25,'2024-03-10 06:14:26','2024-03-11 00:14:26','Botble\\ACL\\Models\\User'),(44,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,19,25,'2024-03-11 00:14:26','2024-03-11 00:14:26','Botble\\ACL\\Models\\User'),(45,'create_from_order','Shipping was created from order %order_id%',0,20,26,'2024-03-08 00:14:26','2024-03-08 00:14:26','Botble\\ACL\\Models\\User'),(46,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,26,'2024-03-10 06:14:26','2024-03-11 00:14:26','Botble\\ACL\\Models\\User'),(47,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,26,'2024-03-11 00:14:26','2024-03-11 00:14:26','Botble\\ACL\\Models\\User'),(48,'create_from_order','Shipping was created from order %order_id%',0,21,27,'2024-03-08 00:14:26','2024-03-08 00:14:26','Botble\\ACL\\Models\\User'),(49,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,21,27,'2024-03-10 06:14:27','2024-03-11 00:14:27','Botble\\ACL\\Models\\User'),(50,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,21,27,'2024-03-11 00:14:27','2024-03-11 00:14:27','Botble\\ACL\\Models\\User'),(51,'create_from_order','Shipping was created from order %order_id%',0,22,28,'2024-03-07 16:14:27','2024-03-07 16:14:27','Botble\\ACL\\Models\\User'),(52,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,22,28,'2024-03-10 08:14:27','2024-03-11 00:14:27','Botble\\ACL\\Models\\User'),(53,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,28,'2024-03-11 00:14:27','2024-03-11 00:14:27','Botble\\ACL\\Models\\User'),(54,'create_from_order','Shipping was created from order %order_id%',0,23,29,'2024-03-08 08:14:27','2024-03-08 08:14:27','Botble\\ACL\\Models\\User'),(55,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,23,29,'2024-03-10 08:14:27','2024-03-11 00:14:27','Botble\\ACL\\Models\\User'),(56,'create_from_order','Shipping was created from order %order_id%',0,24,30,'2024-03-05 16:14:27','2024-03-05 16:14:27','Botble\\ACL\\Models\\User'),(57,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,24,30,'2024-03-10 08:14:27','2024-03-11 00:14:27','Botble\\ACL\\Models\\User'),(58,'create_from_order','Shipping was created from order %order_id%',0,25,31,'2024-03-07 12:14:27','2024-03-07 12:14:27','Botble\\ACL\\Models\\User'),(59,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,25,31,'2024-03-10 10:14:27','2024-03-11 00:14:27','Botble\\ACL\\Models\\User'),(60,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,25,31,'2024-03-11 00:14:27','2024-03-11 00:14:27','Botble\\ACL\\Models\\User'),(61,'create_from_order','Shipping was created from order %order_id%',0,26,32,'2024-03-10 10:14:27','2024-03-10 10:14:27','Botble\\ACL\\Models\\User'),(62,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,26,32,'2024-03-10 10:14:27','2024-03-11 00:14:27','Botble\\ACL\\Models\\User'),(63,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,26,32,'2024-03-11 00:14:27','2024-03-11 00:14:27','Botble\\ACL\\Models\\User'),(64,'create_from_order','Shipping was created from order %order_id%',0,27,35,'2024-03-09 12:14:28','2024-03-09 12:14:28','Botble\\ACL\\Models\\User'),(65,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,27,35,'2024-03-10 12:14:28','2024-03-11 00:14:28','Botble\\ACL\\Models\\User'),(66,'create_from_order','Shipping was created from order %order_id%',0,28,36,'2024-03-08 22:14:28','2024-03-08 22:14:28','Botble\\ACL\\Models\\User'),(67,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,28,36,'2024-03-10 14:14:28','2024-03-11 00:14:28','Botble\\ACL\\Models\\User'),(68,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,28,36,'2024-03-11 00:14:28','2024-03-11 00:14:28','Botble\\ACL\\Models\\User'),(69,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,36,'2024-03-11 00:14:28','2024-03-11 00:14:28','Botble\\ACL\\Models\\User'),(70,'create_from_order','Shipping was created from order %order_id%',0,29,37,'2024-03-06 20:14:28','2024-03-06 20:14:28','Botble\\ACL\\Models\\User'),(71,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,29,37,'2024-03-10 14:14:28','2024-03-11 00:14:28','Botble\\ACL\\Models\\User'),(72,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,37,'2024-03-11 00:14:28','2024-03-11 00:14:28','Botble\\ACL\\Models\\User'),(73,'create_from_order','Shipping was created from order %order_id%',0,30,38,'2024-03-09 16:14:28','2024-03-09 16:14:28','Botble\\ACL\\Models\\User'),(74,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,30,38,'2024-03-10 16:14:29','2024-03-11 00:14:29','Botble\\ACL\\Models\\User'),(75,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,38,'2024-03-11 00:14:29','2024-03-11 00:14:29','Botble\\ACL\\Models\\User'),(76,'create_from_order','Shipping was created from order %order_id%',0,31,39,'2024-03-07 16:14:29','2024-03-07 16:14:29','Botble\\ACL\\Models\\User'),(77,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,31,39,'2024-03-10 16:14:29','2024-03-11 00:14:29','Botble\\ACL\\Models\\User'),(78,'create_from_order','Shipping was created from order %order_id%',0,32,40,'2024-03-10 00:14:29','2024-03-10 00:14:29','Botble\\ACL\\Models\\User'),(79,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,32,40,'2024-03-10 18:14:29','2024-03-11 00:14:29','Botble\\ACL\\Models\\User'),(80,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,32,40,'2024-03-11 00:14:29','2024-03-11 00:14:29','Botble\\ACL\\Models\\User'),(81,'create_from_order','Shipping was created from order %order_id%',0,33,41,'2024-03-09 12:14:29','2024-03-09 12:14:29','Botble\\ACL\\Models\\User'),(82,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,33,41,'2024-03-10 18:14:29','2024-03-11 00:14:29','Botble\\ACL\\Models\\User'),(83,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,33,41,'2024-03-11 00:14:29','2024-03-11 00:14:29','Botble\\ACL\\Models\\User'),(84,'create_from_order','Shipping was created from order %order_id%',0,34,42,'2024-03-09 16:14:29','2024-03-09 16:14:29','Botble\\ACL\\Models\\User'),(85,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,34,42,'2024-03-10 20:14:29','2024-03-11 00:14:29','Botble\\ACL\\Models\\User'),(86,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,34,42,'2024-03-11 00:14:29','2024-03-11 00:14:29','Botble\\ACL\\Models\\User'),(87,'create_from_order','Shipping was created from order %order_id%',0,35,43,'2024-03-10 08:14:29','2024-03-10 08:14:29','Botble\\ACL\\Models\\User'),(88,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,35,43,'2024-03-10 20:14:30','2024-03-11 00:14:30','Botble\\ACL\\Models\\User'),(89,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,35,43,'2024-03-11 00:14:30','2024-03-11 00:14:30','Botble\\ACL\\Models\\User'),(90,'create_from_order','Shipping was created from order %order_id%',0,36,45,'2024-03-10 08:14:30','2024-03-10 08:14:30','Botble\\ACL\\Models\\User'),(91,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,36,45,'2024-03-10 22:14:30','2024-03-11 00:14:30','Botble\\ACL\\Models\\User');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
  `tracking_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,3971.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:22','2024-03-11 00:14:22','JJD004291957','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-12 07:14:22',NULL,NULL,NULL),(2,2,NULL,681.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:22','2024-03-11 00:14:22','JJD0037931715','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-14 07:14:22',NULL,NULL,NULL),(3,3,NULL,1184.00,NULL,NULL,'','approved',1266.00,'pending','pending',0.00,0,'2024-03-11 00:14:22','2024-03-11 00:14:22','JJD009480915','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-15 07:14:22',NULL,NULL,NULL),(4,4,NULL,3781.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:22','2024-03-11 00:14:22','JJD0077578425','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-14 07:14:22','2024-03-11 07:14:22',NULL,NULL),(5,5,NULL,4808.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:22','2024-03-11 00:14:22','JJD0049233970','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-14 07:14:22','2024-03-11 07:14:22',NULL,NULL),(6,7,NULL,1228.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:23','2024-03-11 00:14:23','JJD0074706647','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-20 07:14:23','2024-03-11 07:14:23',NULL,NULL),(7,9,NULL,1166.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:23','2024-03-11 00:14:23','JJD0062547118','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-17 07:14:23',NULL,NULL,NULL),(8,10,NULL,3842.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:23','2024-03-11 00:14:23','JJD0017213737','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-20 07:14:23',NULL,NULL,NULL),(9,11,NULL,3556.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:23','2024-03-11 00:14:23','JJD0083987708','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-15 07:14:23','2024-03-11 07:14:23',NULL,NULL),(10,13,NULL,2699.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:24','2024-03-11 00:14:24','JJD0097881054','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-21 07:14:24',NULL,NULL,NULL),(11,15,NULL,556.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:24','2024-03-11 00:14:24','JJD0067020374','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-13 07:14:24','2024-03-11 07:14:24',NULL,NULL),(12,16,NULL,3266.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:24','2024-03-11 00:14:24','JJD0062883732','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-19 07:14:24',NULL,NULL,NULL),(13,17,NULL,712.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:25','2024-03-11 00:14:25','JJD0097771641','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-16 07:14:25',NULL,NULL,NULL),(14,19,NULL,2724.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:25','2024-03-11 00:14:25','JJD0020578702','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-16 07:14:25',NULL,NULL,NULL),(15,21,NULL,779.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:25','2024-03-11 00:14:25','JJD0090516459','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-20 07:14:25',NULL,NULL,NULL),(16,22,NULL,2883.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:26','2024-03-11 00:14:26','JJD0030564417','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-13 07:14:26',NULL,NULL,NULL),(17,23,NULL,1668.00,NULL,NULL,'','approved',2808.00,'pending','pending',0.00,0,'2024-03-11 00:14:26','2024-03-11 00:14:26','JJD0056310086','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-19 07:14:26',NULL,NULL,NULL),(18,24,NULL,3030.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:26','2024-03-11 00:14:26','JJD0052962829','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-12 07:14:26',NULL,NULL,NULL),(19,25,NULL,2232.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:26','2024-03-11 00:14:26','JJD0099161073','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-16 07:14:26','2024-03-11 07:14:26',NULL,NULL),(20,26,NULL,1482.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:26','2024-03-11 00:14:26','JJD0023778532','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-19 07:14:26','2024-03-11 07:14:26',NULL,NULL),(21,27,NULL,1006.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:27','2024-03-11 00:14:27','JJD0032421506','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-20 07:14:27','2024-03-11 07:14:27',NULL,NULL),(22,28,NULL,1166.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:27','2024-03-11 00:14:27','JJD0077706411','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-12 07:14:27','2024-03-11 07:14:27',NULL,NULL),(23,29,NULL,1710.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:27','2024-03-11 00:14:27','JJD0080149879','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-14 07:14:27',NULL,NULL,NULL),(24,30,NULL,701.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:27','2024-03-11 00:14:27','JJD0051368917','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-17 07:14:27',NULL,NULL,NULL),(25,31,NULL,2136.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:27','2024-03-11 00:14:27','JJD0032158348','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-12 07:14:27','2024-03-11 07:14:27',NULL,NULL),(26,32,NULL,2662.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:27','2024-03-11 00:14:27','JJD0055020497','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-13 07:14:27','2024-03-11 07:14:27',NULL,NULL),(27,35,NULL,1788.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:28','2024-03-11 00:14:28','JJD0078476179','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-15 07:14:28',NULL,NULL,NULL),(28,36,NULL,3123.00,NULL,NULL,'','delivered',2702.00,'completed','pending',0.00,0,'2024-03-11 00:14:28','2024-03-11 00:14:28','JJD002914764','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-19 07:14:28','2024-03-11 07:14:28',NULL,NULL),(29,37,NULL,2280.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:28','2024-03-11 00:14:28','JJD0076353106','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-17 07:14:28','2024-03-11 07:14:28',NULL,NULL),(30,38,NULL,1104.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:29','2024-03-11 00:14:29','JJD0090455937','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-19 07:14:29','2024-03-11 07:14:29',NULL,NULL),(31,39,NULL,3067.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:29','2024-03-11 00:14:29','JJD0086086681','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-16 07:14:29',NULL,NULL,NULL),(32,40,NULL,2007.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:29','2024-03-11 00:14:29','JJD0026420370','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-21 07:14:29','2024-03-11 07:14:29',NULL,NULL),(33,41,NULL,556.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:29','2024-03-11 00:14:29','JJD0082185150','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-14 07:14:29','2024-03-11 07:14:29',NULL,NULL),(34,42,NULL,2267.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:29','2024-03-11 00:14:29','JJD002053057','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-18 07:14:29','2024-03-11 07:14:29',NULL,NULL),(35,43,NULL,3215.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:30','2024-03-11 00:14:30','JJD0056541622','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-21 07:14:30','2024-03-11 07:14:30',NULL,NULL),(36,45,NULL,503.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-11 00:14:30','2024-03-11 00:14:30','JJD0013285045','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-16 07:14:30',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-03-11 00:14:16','2024-03-11 00:14:16');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2024-03-11 00:14:16','2024-03-11 00:14:16');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Martfury','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2024-03-11 00:14:19','2024-03-11 00:14:19');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `ec_tax_products` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-03-11 00:14:16','2024-03-11 00:14:16'),(2,'None',0.000000,2,'published','2024-03-11 00:14:16','2024-03-11 00:14:16'),(3,'Import Tax',15.000000,3,'published','2024-03-11 00:14:16','2024-03-11 00:14:16');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2024-03-11 00:14:19','2024-03-11 00:14:19',NULL),(2,'PAYMENT',1,'published','2024-03-11 00:14:19','2024-03-11 00:14:19',NULL),(3,'ORDER &amp; RETURNS',2,'published','2024-03-11 00:14:19','2024-03-11 00:14:19',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-03-11 00:14:19','2024-03-11 00:14:19'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-03-11 00:14:19','2024-03-11 00:14:19'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-03-11 00:14:19','2024-03-11 00:14:19'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-03-11 00:14:19','2024-03-11 00:14:19'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-03-11 00:14:19','2024-03-11 00:14:19'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-03-11 00:14:19','2024-03-11 00:14:19'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-03-11 00:14:19','2024-03-11 00:14:19'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-03-11 00:14:19','2024-03-11 00:14:19'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-03-11 00:14:19','2024-03-11 00:14:19'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-03-11 00:14:19','2024-03-11 00:14:19');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','ba0ab508b5b5f641b7245a902c741f73',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','c4264ce9c3dc358205f053f8ed99a5b3',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','8d8edd71792642c763cb1b612567471e',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','141f1a1d9afdc2de048775507243c7f8',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','8d5449f2d8d70385c8ce1d942e1abdd1',3,'Botble\\Menu\\Models\\Menu'),(6,'en_US','5a2545d4566d027f56d6ae5fd78a6709',4,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/jpeg',1613,'brands/1.jpg','[]','2024-03-11 00:14:06','2024-03-11 00:14:06',NULL),(2,0,'2','2',1,'image/jpeg',1613,'brands/2.jpg','[]','2024-03-11 00:14:06','2024-03-11 00:14:06',NULL),(3,0,'3','3',1,'image/jpeg',1613,'brands/3.jpg','[]','2024-03-11 00:14:06','2024-03-11 00:14:06',NULL),(4,0,'4','4',1,'image/jpeg',1613,'brands/4.jpg','[]','2024-03-11 00:14:06','2024-03-11 00:14:06',NULL),(5,0,'5','5',1,'image/jpeg',1613,'brands/5.jpg','[]','2024-03-11 00:14:06','2024-03-11 00:14:06',NULL),(6,0,'6','6',1,'image/jpeg',1613,'brands/6.jpg','[]','2024-03-11 00:14:06','2024-03-11 00:14:06',NULL),(7,0,'7','7',1,'image/jpeg',1613,'brands/7.jpg','[]','2024-03-11 00:14:06','2024-03-11 00:14:06',NULL),(8,0,'1','1',2,'image/jpeg',9803,'product-categories/1.jpg','[]','2024-03-11 00:14:06','2024-03-11 00:14:06',NULL),(9,0,'2','2',2,'image/jpeg',9803,'product-categories/2.jpg','[]','2024-03-11 00:14:06','2024-03-11 00:14:06',NULL),(10,0,'3','3',2,'image/jpeg',9803,'product-categories/3.jpg','[]','2024-03-11 00:14:06','2024-03-11 00:14:06',NULL),(11,0,'4','4',2,'image/jpeg',9803,'product-categories/4.jpg','[]','2024-03-11 00:14:06','2024-03-11 00:14:06',NULL),(12,0,'5','5',2,'image/jpeg',9803,'product-categories/5.jpg','[]','2024-03-11 00:14:06','2024-03-11 00:14:06',NULL),(13,0,'6','6',2,'image/jpeg',9803,'product-categories/6.jpg','[]','2024-03-11 00:14:06','2024-03-11 00:14:06',NULL),(14,0,'7','7',2,'image/jpeg',9803,'product-categories/7.jpg','[]','2024-03-11 00:14:06','2024-03-11 00:14:06',NULL),(15,0,'8','8',2,'image/jpeg',9803,'product-categories/8.jpg','[]','2024-03-11 00:14:06','2024-03-11 00:14:06',NULL),(16,0,'1','1',3,'image/jpeg',9803,'products/1.jpg','[]','2024-03-11 00:14:07','2024-03-11 00:14:07',NULL),(17,0,'10-1','10-1',3,'image/jpeg',9803,'products/10-1.jpg','[]','2024-03-11 00:14:07','2024-03-11 00:14:07',NULL),(18,0,'10-2','10-2',3,'image/jpeg',9803,'products/10-2.jpg','[]','2024-03-11 00:14:07','2024-03-11 00:14:07',NULL),(19,0,'10','10',3,'image/jpeg',9803,'products/10.jpg','[]','2024-03-11 00:14:07','2024-03-11 00:14:07',NULL),(20,0,'11-1','11-1',3,'image/jpeg',9803,'products/11-1.jpg','[]','2024-03-11 00:14:07','2024-03-11 00:14:07',NULL),(21,0,'11-2','11-2',3,'image/jpeg',9803,'products/11-2.jpg','[]','2024-03-11 00:14:07','2024-03-11 00:14:07',NULL),(22,0,'11-3','11-3',3,'image/jpeg',9803,'products/11-3.jpg','[]','2024-03-11 00:14:07','2024-03-11 00:14:07',NULL),(23,0,'11','11',3,'image/jpeg',9803,'products/11.jpg','[]','2024-03-11 00:14:07','2024-03-11 00:14:07',NULL),(24,0,'12-1','12-1',3,'image/jpeg',9803,'products/12-1.jpg','[]','2024-03-11 00:14:07','2024-03-11 00:14:07',NULL),(25,0,'12-2','12-2',3,'image/jpeg',9803,'products/12-2.jpg','[]','2024-03-11 00:14:07','2024-03-11 00:14:07',NULL),(26,0,'12-3','12-3',3,'image/jpeg',9803,'products/12-3.jpg','[]','2024-03-11 00:14:07','2024-03-11 00:14:07',NULL),(27,0,'12','12',3,'image/jpeg',9803,'products/12.jpg','[]','2024-03-11 00:14:07','2024-03-11 00:14:07',NULL),(28,0,'13-1','13-1',3,'image/jpeg',9803,'products/13-1.jpg','[]','2024-03-11 00:14:07','2024-03-11 00:14:07',NULL),(29,0,'13','13',3,'image/jpeg',9803,'products/13.jpg','[]','2024-03-11 00:14:07','2024-03-11 00:14:07',NULL),(30,0,'14','14',3,'image/jpeg',9803,'products/14.jpg','[]','2024-03-11 00:14:07','2024-03-11 00:14:07',NULL),(31,0,'15-1','15-1',3,'image/jpeg',9803,'products/15-1.jpg','[]','2024-03-11 00:14:08','2024-03-11 00:14:08',NULL),(32,0,'15','15',3,'image/jpeg',9803,'products/15.jpg','[]','2024-03-11 00:14:08','2024-03-11 00:14:08',NULL),(33,0,'16','16',3,'image/jpeg',9803,'products/16.jpg','[]','2024-03-11 00:14:08','2024-03-11 00:14:08',NULL),(34,0,'17-1','17-1',3,'image/jpeg',9803,'products/17-1.jpg','[]','2024-03-11 00:14:08','2024-03-11 00:14:08',NULL),(35,0,'17-2','17-2',3,'image/jpeg',9803,'products/17-2.jpg','[]','2024-03-11 00:14:08','2024-03-11 00:14:08',NULL),(36,0,'17-3','17-3',3,'image/jpeg',9803,'products/17-3.jpg','[]','2024-03-11 00:14:08','2024-03-11 00:14:08',NULL),(37,0,'17','17',3,'image/jpeg',9803,'products/17.jpg','[]','2024-03-11 00:14:08','2024-03-11 00:14:08',NULL),(38,0,'18-1','18-1',3,'image/jpeg',9803,'products/18-1.jpg','[]','2024-03-11 00:14:08','2024-03-11 00:14:08',NULL),(39,0,'18-2','18-2',3,'image/jpeg',9803,'products/18-2.jpg','[]','2024-03-11 00:14:08','2024-03-11 00:14:08',NULL),(40,0,'18-3','18-3',3,'image/jpeg',9803,'products/18-3.jpg','[]','2024-03-11 00:14:08','2024-03-11 00:14:08',NULL),(41,0,'18','18',3,'image/jpeg',9803,'products/18.jpg','[]','2024-03-11 00:14:08','2024-03-11 00:14:08',NULL),(42,0,'19-1','19-1',3,'image/jpeg',9803,'products/19-1.jpg','[]','2024-03-11 00:14:08','2024-03-11 00:14:08',NULL),(43,0,'19-2','19-2',3,'image/jpeg',9803,'products/19-2.jpg','[]','2024-03-11 00:14:08','2024-03-11 00:14:08',NULL),(44,0,'19-3','19-3',3,'image/jpeg',9803,'products/19-3.jpg','[]','2024-03-11 00:14:08','2024-03-11 00:14:08',NULL),(45,0,'19','19',3,'image/jpeg',9803,'products/19.jpg','[]','2024-03-11 00:14:08','2024-03-11 00:14:08',NULL),(46,0,'2-1','2-1',3,'image/jpeg',9803,'products/2-1.jpg','[]','2024-03-11 00:14:08','2024-03-11 00:14:08',NULL),(47,0,'2-2','2-2',3,'image/jpeg',9803,'products/2-2.jpg','[]','2024-03-11 00:14:08','2024-03-11 00:14:08',NULL),(48,0,'2-3','2-3',3,'image/jpeg',9803,'products/2-3.jpg','[]','2024-03-11 00:14:09','2024-03-11 00:14:09',NULL),(49,0,'2','2',3,'image/jpeg',9803,'products/2.jpg','[]','2024-03-11 00:14:09','2024-03-11 00:14:09',NULL),(50,0,'20-1','20-1',3,'image/jpeg',9803,'products/20-1.jpg','[]','2024-03-11 00:14:09','2024-03-11 00:14:09',NULL),(51,0,'20-2','20-2',3,'image/jpeg',9803,'products/20-2.jpg','[]','2024-03-11 00:14:09','2024-03-11 00:14:09',NULL),(52,0,'20-3','20-3',3,'image/jpeg',9803,'products/20-3.jpg','[]','2024-03-11 00:14:09','2024-03-11 00:14:09',NULL),(53,0,'20','20',3,'image/jpeg',9803,'products/20.jpg','[]','2024-03-11 00:14:09','2024-03-11 00:14:09',NULL),(54,0,'21-1','21-1',3,'image/jpeg',9803,'products/21-1.jpg','[]','2024-03-11 00:14:09','2024-03-11 00:14:09',NULL),(55,0,'21-2','21-2',3,'image/jpeg',9803,'products/21-2.jpg','[]','2024-03-11 00:14:09','2024-03-11 00:14:09',NULL),(56,0,'21','21',3,'image/jpeg',9803,'products/21.jpg','[]','2024-03-11 00:14:09','2024-03-11 00:14:09',NULL),(57,0,'22-1','22-1',3,'image/jpeg',9803,'products/22-1.jpg','[]','2024-03-11 00:14:09','2024-03-11 00:14:09',NULL),(58,0,'22-2','22-2',3,'image/jpeg',9803,'products/22-2.jpg','[]','2024-03-11 00:14:09','2024-03-11 00:14:09',NULL),(59,0,'22-3','22-3',3,'image/jpeg',9803,'products/22-3.jpg','[]','2024-03-11 00:14:09','2024-03-11 00:14:09',NULL),(60,0,'22','22',3,'image/jpeg',9803,'products/22.jpg','[]','2024-03-11 00:14:09','2024-03-11 00:14:09',NULL),(61,0,'23-1','23-1',3,'image/jpeg',9803,'products/23-1.jpg','[]','2024-03-11 00:14:09','2024-03-11 00:14:09',NULL),(62,0,'23-2','23-2',3,'image/jpeg',9803,'products/23-2.jpg','[]','2024-03-11 00:14:09','2024-03-11 00:14:09',NULL),(63,0,'23-3','23-3',3,'image/jpeg',9803,'products/23-3.jpg','[]','2024-03-11 00:14:09','2024-03-11 00:14:09',NULL),(64,0,'23','23',3,'image/jpeg',9803,'products/23.jpg','[]','2024-03-11 00:14:09','2024-03-11 00:14:09',NULL),(65,0,'3','3',3,'image/jpeg',9803,'products/3.jpg','[]','2024-03-11 00:14:10','2024-03-11 00:14:10',NULL),(66,0,'4-1','4-1',3,'image/jpeg',9803,'products/4-1.jpg','[]','2024-03-11 00:14:10','2024-03-11 00:14:10',NULL),(67,0,'4-2','4-2',3,'image/jpeg',9803,'products/4-2.jpg','[]','2024-03-11 00:14:10','2024-03-11 00:14:10',NULL),(68,0,'4-3','4-3',3,'image/jpeg',9803,'products/4-3.jpg','[]','2024-03-11 00:14:10','2024-03-11 00:14:10',NULL),(69,0,'4','4',3,'image/jpeg',9803,'products/4.jpg','[]','2024-03-11 00:14:10','2024-03-11 00:14:10',NULL),(70,0,'5-1','5-1',3,'image/jpeg',9803,'products/5-1.jpg','[]','2024-03-11 00:14:10','2024-03-11 00:14:10',NULL),(71,0,'5-2','5-2',3,'image/jpeg',9803,'products/5-2.jpg','[]','2024-03-11 00:14:10','2024-03-11 00:14:10',NULL),(72,0,'5-3','5-3',3,'image/jpeg',9803,'products/5-3.jpg','[]','2024-03-11 00:14:10','2024-03-11 00:14:10',NULL),(73,0,'5','5',3,'image/jpeg',9803,'products/5.jpg','[]','2024-03-11 00:14:10','2024-03-11 00:14:10',NULL),(74,0,'6','6',3,'image/jpeg',9803,'products/6.jpg','[]','2024-03-11 00:14:10','2024-03-11 00:14:10',NULL),(75,0,'7','7',3,'image/jpeg',9803,'products/7.jpg','[]','2024-03-11 00:14:10','2024-03-11 00:14:10',NULL),(76,0,'8-1','8-1',3,'image/jpeg',9803,'products/8-1.jpg','[]','2024-03-11 00:14:10','2024-03-11 00:14:10',NULL),(77,0,'8-2','8-2',3,'image/jpeg',9803,'products/8-2.jpg','[]','2024-03-11 00:14:10','2024-03-11 00:14:10',NULL),(78,0,'8-3','8-3',3,'image/jpeg',9803,'products/8-3.jpg','[]','2024-03-11 00:14:10','2024-03-11 00:14:10',NULL),(79,0,'8','8',3,'image/jpeg',9803,'products/8.jpg','[]','2024-03-11 00:14:10','2024-03-11 00:14:10',NULL),(80,0,'9-1','9-1',3,'image/jpeg',9803,'products/9-1.jpg','[]','2024-03-11 00:14:10','2024-03-11 00:14:10',NULL),(81,0,'9-2','9-2',3,'image/jpeg',9803,'products/9-2.jpg','[]','2024-03-11 00:14:10','2024-03-11 00:14:10',NULL),(82,0,'9','9',3,'image/jpeg',9803,'products/9.jpg','[]','2024-03-11 00:14:10','2024-03-11 00:14:10',NULL),(83,0,'1','1',4,'image/jpeg',9803,'customers/1.jpg','[]','2024-03-11 00:14:13','2024-03-11 00:14:13',NULL),(84,0,'10','10',4,'image/jpeg',9803,'customers/10.jpg','[]','2024-03-11 00:14:13','2024-03-11 00:14:13',NULL),(85,0,'2','2',4,'image/jpeg',9803,'customers/2.jpg','[]','2024-03-11 00:14:13','2024-03-11 00:14:13',NULL),(86,0,'3','3',4,'image/jpeg',9803,'customers/3.jpg','[]','2024-03-11 00:14:13','2024-03-11 00:14:13',NULL),(87,0,'4','4',4,'image/jpeg',9803,'customers/4.jpg','[]','2024-03-11 00:14:13','2024-03-11 00:14:13',NULL),(88,0,'5','5',4,'image/jpeg',9803,'customers/5.jpg','[]','2024-03-11 00:14:13','2024-03-11 00:14:13',NULL),(89,0,'6','6',4,'image/jpeg',9803,'customers/6.jpg','[]','2024-03-11 00:14:13','2024-03-11 00:14:13',NULL),(90,0,'7','7',4,'image/jpeg',9803,'customers/7.jpg','[]','2024-03-11 00:14:13','2024-03-11 00:14:13',NULL),(91,0,'8','8',4,'image/jpeg',9803,'customers/8.jpg','[]','2024-03-11 00:14:13','2024-03-11 00:14:13',NULL),(92,0,'9','9',4,'image/jpeg',9803,'customers/9.jpg','[]','2024-03-11 00:14:13','2024-03-11 00:14:13',NULL),(93,0,'1','1',5,'image/jpeg',9803,'news/1.jpg','[]','2024-03-11 00:14:17','2024-03-11 00:14:17',NULL),(94,0,'10','10',5,'image/jpeg',9803,'news/10.jpg','[]','2024-03-11 00:14:17','2024-03-11 00:14:17',NULL),(95,0,'11','11',5,'image/jpeg',9803,'news/11.jpg','[]','2024-03-11 00:14:17','2024-03-11 00:14:17',NULL),(96,0,'2','2',5,'image/jpeg',9803,'news/2.jpg','[]','2024-03-11 00:14:17','2024-03-11 00:14:17',NULL),(97,0,'3','3',5,'image/jpeg',9803,'news/3.jpg','[]','2024-03-11 00:14:17','2024-03-11 00:14:17',NULL),(98,0,'4','4',5,'image/jpeg',9803,'news/4.jpg','[]','2024-03-11 00:14:17','2024-03-11 00:14:17',NULL),(99,0,'5','5',5,'image/jpeg',9803,'news/5.jpg','[]','2024-03-11 00:14:17','2024-03-11 00:14:17',NULL),(100,0,'6','6',5,'image/jpeg',9803,'news/6.jpg','[]','2024-03-11 00:14:17','2024-03-11 00:14:17',NULL),(101,0,'7','7',5,'image/jpeg',9803,'news/7.jpg','[]','2024-03-11 00:14:17','2024-03-11 00:14:17',NULL),(102,0,'8','8',5,'image/jpeg',9803,'news/8.jpg','[]','2024-03-11 00:14:17','2024-03-11 00:14:17',NULL),(103,0,'9','9',5,'image/jpeg',9803,'news/9.jpg','[]','2024-03-11 00:14:17','2024-03-11 00:14:17',NULL),(104,0,'1-lg','1-lg',6,'image/jpeg',8828,'sliders/1-lg.jpg','[]','2024-03-11 00:14:18','2024-03-11 00:14:18',NULL),(105,0,'1-md','1-md',6,'image/jpeg',8828,'sliders/1-md.jpg','[]','2024-03-11 00:14:18','2024-03-11 00:14:18',NULL),(106,0,'1-sm','1-sm',6,'image/jpeg',8828,'sliders/1-sm.jpg','[]','2024-03-11 00:14:18','2024-03-11 00:14:18',NULL),(107,0,'2-lg','2-lg',6,'image/jpeg',8828,'sliders/2-lg.jpg','[]','2024-03-11 00:14:18','2024-03-11 00:14:18',NULL),(108,0,'2-md','2-md',6,'image/jpeg',8828,'sliders/2-md.jpg','[]','2024-03-11 00:14:18','2024-03-11 00:14:18',NULL),(109,0,'2-sm','2-sm',6,'image/jpeg',8828,'sliders/2-sm.jpg','[]','2024-03-11 00:14:18','2024-03-11 00:14:18',NULL),(110,0,'3-lg','3-lg',6,'image/jpeg',8828,'sliders/3-lg.jpg','[]','2024-03-11 00:14:18','2024-03-11 00:14:18',NULL),(111,0,'3-md','3-md',6,'image/jpeg',8828,'sliders/3-md.jpg','[]','2024-03-11 00:14:18','2024-03-11 00:14:18',NULL),(112,0,'3-sm','3-sm',6,'image/jpeg',8828,'sliders/3-sm.jpg','[]','2024-03-11 00:14:18','2024-03-11 00:14:18',NULL),(113,0,'1','1',7,'image/jpeg',3613,'promotion/1.jpg','[]','2024-03-11 00:14:18','2024-03-11 00:14:18',NULL),(114,0,'2','2',7,'image/jpeg',3613,'promotion/2.jpg','[]','2024-03-11 00:14:18','2024-03-11 00:14:18',NULL),(115,0,'3','3',7,'image/jpeg',5391,'promotion/3.jpg','[]','2024-03-11 00:14:18','2024-03-11 00:14:18',NULL),(116,0,'4','4',7,'image/jpeg',5391,'promotion/4.jpg','[]','2024-03-11 00:14:18','2024-03-11 00:14:18',NULL),(117,0,'5','5',7,'image/jpeg',5391,'promotion/5.jpg','[]','2024-03-11 00:14:19','2024-03-11 00:14:19',NULL),(118,0,'6','6',7,'image/jpeg',5391,'promotion/6.jpg','[]','2024-03-11 00:14:19','2024-03-11 00:14:19',NULL),(119,0,'7','7',7,'image/jpeg',5391,'promotion/7.jpg','[]','2024-03-11 00:14:19','2024-03-11 00:14:19',NULL),(120,0,'8','8',7,'image/jpeg',5391,'promotion/8.jpg','[]','2024-03-11 00:14:19','2024-03-11 00:14:19',NULL),(121,0,'9','9',7,'image/jpeg',5391,'promotion/9.jpg','[]','2024-03-11 00:14:19','2024-03-11 00:14:19',NULL),(122,0,'app','app',8,'image/png',8667,'general/app.png','[]','2024-03-11 00:14:19','2024-03-11 00:14:19',NULL),(123,0,'coming-soon','coming-soon',8,'image/jpeg',22253,'general/coming-soon.jpg','[]','2024-03-11 00:14:19','2024-03-11 00:14:19',NULL),(124,0,'favicon','favicon',8,'image/png',5060,'general/favicon.png','[]','2024-03-11 00:14:19','2024-03-11 00:14:19',NULL),(125,0,'logo-dark','logo-dark',8,'image/png',1484,'general/logo-dark.png','[]','2024-03-11 00:14:19','2024-03-11 00:14:19',NULL),(126,0,'logo-light','logo-light',8,'image/png',1572,'general/logo-light.png','[]','2024-03-11 00:14:19','2024-03-11 00:14:19',NULL),(127,0,'logo','logo',8,'image/png',1363,'general/logo.png','[]','2024-03-11 00:14:19','2024-03-11 00:14:19',NULL),(128,0,'newsletter','newsletter',8,'image/jpeg',9778,'general/newsletter.jpg','[]','2024-03-11 00:14:19','2024-03-11 00:14:19',NULL),(129,0,'payment-method-1','payment-method-1',8,'image/jpeg',1128,'general/payment-method-1.jpg','[]','2024-03-11 00:14:19','2024-03-11 00:14:19',NULL),(130,0,'payment-method-2','payment-method-2',8,'image/jpeg',1184,'general/payment-method-2.jpg','[]','2024-03-11 00:14:19','2024-03-11 00:14:19',NULL),(131,0,'payment-method-3','payment-method-3',8,'image/jpeg',1109,'general/payment-method-3.jpg','[]','2024-03-11 00:14:19','2024-03-11 00:14:19',NULL),(132,0,'payment-method-4','payment-method-4',8,'image/jpeg',944,'general/payment-method-4.jpg','[]','2024-03-11 00:14:19','2024-03-11 00:14:19',NULL),(133,0,'payment-method-5','payment-method-5',8,'image/jpeg',964,'general/payment-method-5.jpg','[]','2024-03-11 00:14:19','2024-03-11 00:14:19',NULL),(134,0,'1','1',9,'image/png',9133,'stores/1.png','[]','2024-03-11 00:14:19','2024-03-11 00:14:19',NULL),(135,0,'10','10',9,'image/png',4263,'stores/10.png','[]','2024-03-11 00:14:19','2024-03-11 00:14:19',NULL),(136,0,'11','11',9,'image/png',4420,'stores/11.png','[]','2024-03-11 00:14:20','2024-03-11 00:14:20',NULL),(137,0,'12','12',9,'image/png',4908,'stores/12.png','[]','2024-03-11 00:14:20','2024-03-11 00:14:20',NULL),(138,0,'13','13',9,'image/png',3441,'stores/13.png','[]','2024-03-11 00:14:20','2024-03-11 00:14:20',NULL),(139,0,'14','14',9,'image/png',4209,'stores/14.png','[]','2024-03-11 00:14:20','2024-03-11 00:14:20',NULL),(140,0,'15','15',9,'image/png',5113,'stores/15.png','[]','2024-03-11 00:14:20','2024-03-11 00:14:20',NULL),(141,0,'16','16',9,'image/png',4563,'stores/16.png','[]','2024-03-11 00:14:20','2024-03-11 00:14:20',NULL),(142,0,'17','17',9,'image/png',4896,'stores/17.png','[]','2024-03-11 00:14:20','2024-03-11 00:14:20',NULL),(143,0,'2','2',9,'image/png',9008,'stores/2.png','[]','2024-03-11 00:14:20','2024-03-11 00:14:20',NULL),(144,0,'3','3',9,'image/png',8006,'stores/3.png','[]','2024-03-11 00:14:20','2024-03-11 00:14:20',NULL),(145,0,'4','4',9,'image/png',8728,'stores/4.png','[]','2024-03-11 00:14:20','2024-03-11 00:14:20',NULL),(146,0,'5','5',9,'image/png',10689,'stores/5.png','[]','2024-03-11 00:14:20','2024-03-11 00:14:20',NULL),(147,0,'6','6',9,'image/png',10989,'stores/6.png','[]','2024-03-11 00:14:20','2024-03-11 00:14:20',NULL),(148,0,'7','7',9,'image/png',3730,'stores/7.png','[]','2024-03-11 00:14:20','2024-03-11 00:14:20',NULL),(149,0,'8','8',9,'image/png',4030,'stores/8.png','[]','2024-03-11 00:14:20','2024-03-11 00:14:20',NULL),(150,0,'9','9',9,'image/png',3810,'stores/9.png','[]','2024-03-11 00:14:20','2024-03-11 00:14:20',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands',NULL,'brands',0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL),(2,0,'product-categories',NULL,'product-categories',0,'2024-03-11 00:14:06','2024-03-11 00:14:06',NULL),(3,0,'products',NULL,'products',0,'2024-03-11 00:14:07','2024-03-11 00:14:07',NULL),(4,0,'customers',NULL,'customers',0,'2024-03-11 00:14:13','2024-03-11 00:14:13',NULL),(5,0,'news',NULL,'news',0,'2024-03-11 00:14:17','2024-03-11 00:14:17',NULL),(6,0,'sliders',NULL,'sliders',0,'2024-03-11 00:14:18','2024-03-11 00:14:18',NULL),(7,0,'promotion',NULL,'promotion',0,'2024-03-11 00:14:18','2024-03-11 00:14:18',NULL),(8,0,'general',NULL,'general',0,'2024-03-11 00:14:19','2024-03-11 00:14:19',NULL),(9,0,'stores',NULL,'stores',0,'2024-03-11 00:14:19','2024-03-11 00:14:19',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-03-11 00:14:19','2024-03-11 00:14:19');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(2,1,0,NULL,NULL,'#',NULL,0,'Pages',NULL,'_self',1,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(3,1,2,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(4,1,2,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(5,1,2,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(6,1,2,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(7,1,2,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Coming soon',NULL,'_self',0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(9,1,8,NULL,NULL,'/products',NULL,0,'All products',NULL,'_self',0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(10,1,8,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Products Of Category',NULL,'_self',0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(11,1,8,NULL,NULL,'/products/beat-headphone',NULL,0,'Product Single',NULL,'_self',0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(12,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(13,1,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(14,1,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(15,1,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(16,2,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(17,2,0,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(18,2,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(19,2,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(20,2,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(21,3,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(22,3,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Affiliate',NULL,'_self',0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(23,3,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Career',NULL,'_self',0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(24,3,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(25,4,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Our blog',NULL,'_self',0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(26,4,0,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(27,4,0,NULL,NULL,'/customer/overview',NULL,0,'My account',NULL,'_self',0,'2024-03-11 00:14:19','2024-03-11 00:14:19'),(28,4,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',0,'2024-03-11 00:14:19','2024-03-11 00:14:19');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-03-11 00:14:19','2024-03-11 00:14:19'),(2,'Quick links','quick-links','published','2024-03-11 00:14:19','2024-03-11 00:14:19'),(3,'Company','company','published','2024-03-11 00:14:19','2024-03-11 00:14:19'),(4,'Business','business','published','2024-03-11 00:14:19','2024-03-11 00:14:19');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"icon-star\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2024-03-11 00:14:06','2024-03-11 00:14:06'),(2,'icon','[\"icon-laundry\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2024-03-11 00:14:06','2024-03-11 00:14:06'),(3,'icon','[\"icon-shirt\"]',16,'Botble\\Ecommerce\\Models\\ProductCategory','2024-03-11 00:14:06','2024-03-11 00:14:06'),(4,'icon','[\"icon-desktop\"]',17,'Botble\\Ecommerce\\Models\\ProductCategory','2024-03-11 00:14:06','2024-03-11 00:14:06'),(5,'icon','[\"icon-lampshade\"]',28,'Botble\\Ecommerce\\Models\\ProductCategory','2024-03-11 00:14:06','2024-03-11 00:14:06'),(6,'icon','[\"icon-heart-pulse\"]',29,'Botble\\Ecommerce\\Models\\ProductCategory','2024-03-11 00:14:06','2024-03-11 00:14:06'),(7,'icon','[\"icon-diamond2\"]',30,'Botble\\Ecommerce\\Models\\ProductCategory','2024-03-11 00:14:06','2024-03-11 00:14:06'),(8,'icon','[\"icon-desktop\"]',31,'Botble\\Ecommerce\\Models\\ProductCategory','2024-03-11 00:14:06','2024-03-11 00:14:06'),(9,'icon','[\"icon-smartphone\"]',32,'Botble\\Ecommerce\\Models\\ProductCategory','2024-03-11 00:14:06','2024-03-11 00:14:06'),(10,'icon','[\"icon-baby-bottle\"]',33,'Botble\\Ecommerce\\Models\\ProductCategory','2024-03-11 00:14:06','2024-03-11 00:14:06'),(11,'icon','[\"icon-baseball\"]',34,'Botble\\Ecommerce\\Models\\ProductCategory','2024-03-11 00:14:06','2024-03-11 00:14:06'),(12,'icon','[\"icon-book2\"]',35,'Botble\\Ecommerce\\Models\\ProductCategory','2024-03-11 00:14:06','2024-03-11 00:14:06'),(13,'icon','[\"icon-car-siren\"]',36,'Botble\\Ecommerce\\Models\\ProductCategory','2024-03-11 00:14:07','2024-03-11 00:14:07'),(14,'icon','[\"icon-wrench\"]',37,'Botble\\Ecommerce\\Models\\ProductCategory','2024-03-11 00:14:07','2024-03-11 00:14:07'),(15,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:14:11','2024-03-11 00:14:11'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:14:11','2024-03-11 00:14:11'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:14:11','2024-03-11 00:14:11'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:14:11','2024-03-11 00:14:11'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:14:11','2024-03-11 00:14:11'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:14:11','2024-03-11 00:14:11'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:14:11','2024-03-11 00:14:11'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:14:11','2024-03-11 00:14:11'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:14:11','2024-03-11 00:14:11'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:14:11','2024-03-11 00:14:11'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:14:11','2024-03-11 00:14:11'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:14:11','2024-03-11 00:14:11'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:14:11','2024-03-11 00:14:11'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:14:11','2024-03-11 00:14:11'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:14:11','2024-03-11 00:14:11'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:14:11','2024-03-11 00:14:11'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:14:11','2024-03-11 00:14:11'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:14:11','2024-03-11 00:14:11'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:14:11','2024-03-11 00:14:11'),(34,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:14:11','2024-03-11 00:14:11'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:14:11','2024-03-11 00:14:11'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:14:11','2024-03-11 00:14:11'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:14:11','2024-03-11 00:14:11'),(38,'tablet_image','[\"sliders\\/1-md.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-03-11 00:14:18','2024-03-11 00:14:18'),(39,'mobile_image','[\"sliders\\/1-sm.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-03-11 00:14:18','2024-03-11 00:14:18'),(40,'tablet_image','[\"sliders\\/2-md.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-03-11 00:14:18','2024-03-11 00:14:18'),(41,'mobile_image','[\"sliders\\/2-sm.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-03-11 00:14:18','2024-03-11 00:14:18'),(42,'tablet_image','[\"sliders\\/3-md.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-03-11 00:14:18','2024-03-11 00:14:18'),(43,'mobile_image','[\"sliders\\/3-sm.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-03-11 00:14:18','2024-03-11 00:14:18');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2021_08_02_084121_fix_old_shortcode',1),(17,'2022_04_20_100851_add_index_to_media_table',1),(18,'2022_04_20_101046_add_index_to_menu_table',1),(19,'2022_07_10_034813_move_lang_folder_to_root',1),(20,'2022_08_04_051940_add_missing_column_expires_at',1),(21,'2022_09_01_000001_create_admin_notifications_tables',1),(22,'2022_10_14_024629_drop_column_is_featured',1),(23,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(24,'2022_12_02_093615_update_slug_index_columns',1),(25,'2023_01_30_024431_add_alt_to_media_table',1),(26,'2023_02_16_042611_drop_table_password_resets',1),(27,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(28,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(29,'2023_08_21_090810_make_page_content_nullable',1),(30,'2023_09_14_021936_update_index_for_slugs_table',1),(31,'2023_12_06_100448_change_random_hash_for_media',1),(32,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(33,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(34,'2020_11_18_150916_ads_create_ads_table',2),(35,'2021_12_02_035301_add_ads_translations_table',2),(36,'2023_04_17_062645_add_open_in_new_tab',2),(37,'2023_11_07_023805_add_tablet_mobile_image',2),(38,'2015_06_29_025744_create_audit_history',3),(39,'2023_11_14_033417_change_request_column_in_table_audit_histories',3),(40,'2015_06_18_033822_create_blog_table',4),(41,'2021_02_16_092633_remove_default_value_for_author_type',4),(42,'2021_12_03_030600_create_blog_translations',4),(43,'2022_04_19_113923_add_index_to_table_posts',4),(44,'2023_08_29_074620_make_column_author_id_nullable',4),(45,'2016_06_17_091537_create_contacts_table',5),(46,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',5),(47,'2020_03_05_041139_create_ecommerce_tables',6),(48,'2021_01_01_044147_ecommerce_create_flash_sale_table',6),(49,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',6),(50,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',6),(51,'2021_02_18_073505_update_table_ec_reviews',6),(52,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',6),(53,'2021_03_10_025153_change_column_tax_amount',6),(54,'2021_03_20_033103_add_column_availability_to_table_ec_products',6),(55,'2021_04_28_074008_ecommerce_create_product_label_table',6),(56,'2021_05_31_173037_ecommerce_create_ec_products_translations',6),(57,'2021_08_17_105016_remove_column_currency_id_in_some_tables',6),(58,'2021_08_30_142128_add_images_column_to_ec_reviews_table',6),(59,'2021_10_04_030050_add_column_created_by_to_table_ec_products',6),(60,'2021_10_05_122616_add_status_column_to_ec_customers_table',6),(61,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',6),(62,'2021_11_23_071403_correct_languages_for_product_variations',6),(63,'2021_11_28_031808_add_product_tags_translations',6),(64,'2021_12_01_031123_add_featured_image_to_ec_products',6),(65,'2022_01_01_033107_update_table_ec_shipments',6),(66,'2022_02_16_042457_improve_product_attribute_sets',6),(67,'2022_03_22_075758_correct_product_name',6),(68,'2022_04_19_113334_add_index_to_ec_products',6),(69,'2022_04_28_144405_remove_unused_table',6),(70,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',6),(71,'2022_05_18_143720_add_index_to_table_ec_product_categories',6),(72,'2022_06_16_095633_add_index_to_some_tables',6),(73,'2022_06_30_035148_create_order_referrals_table',6),(74,'2022_07_24_153815_add_completed_at_to_ec_orders_table',6),(75,'2022_08_14_032836_create_ec_order_returns_table',6),(76,'2022_08_14_033554_create_ec_order_return_items_table',6),(77,'2022_08_15_040324_add_billing_address',6),(78,'2022_08_30_091114_support_digital_products_table',6),(79,'2022_09_13_095744_create_options_table',6),(80,'2022_09_13_104347_create_option_value_table',6),(81,'2022_10_05_163518_alter_table_ec_order_product',6),(82,'2022_10_12_041517_create_invoices_table',6),(83,'2022_10_12_142226_update_orders_table',6),(84,'2022_10_13_024916_update_table_order_returns',6),(85,'2022_10_21_030830_update_columns_in_ec_shipments_table',6),(86,'2022_10_28_021046_update_columns_in_ec_shipments_table',6),(87,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',6),(88,'2022_11_19_041643_add_ec_tax_product_table',6),(89,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',6),(90,'2022_12_17_041532_fix_address_in_order_invoice',6),(91,'2022_12_26_070329_create_ec_product_views_table',6),(92,'2023_01_04_033051_fix_product_categories',6),(93,'2023_01_09_050400_add_ec_global_options_translations_table',6),(94,'2023_01_10_093754_add_missing_option_value_id',6),(95,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',6),(96,'2023_01_26_021854_add_ec_customer_used_coupons_table',6),(97,'2023_02_08_015900_update_options_column_in_ec_order_product_table',6),(98,'2023_02_27_095752_remove_duplicate_reviews',6),(99,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',6),(100,'2023_04_21_082427_create_ec_product_categorizables_table',6),(101,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',6),(102,'2023_05_17_025812_fix_invoice_issue',6),(103,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',6),(104,'2023_05_27_144611_fix_exchange_rate_setting',6),(105,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',6),(106,'2023_06_30_042512_create_ec_order_tax_information_table',6),(107,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',6),(108,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',6),(109,'2023_08_15_064505_create_ec_tax_rules_table',6),(110,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',6),(111,'2023_08_22_094114_drop_unique_for_barcode',6),(112,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',6),(113,'2023_09_07_094312_add_index_to_product_sku_and_translations',6),(114,'2023_09_19_024955_create_discount_product_categories_table',6),(115,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',6),(116,'2023_11_22_154643_add_unique_in_table_ec_products_variations',6),(117,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',6),(118,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',6),(119,'2023_12_25_040604_ec_create_review_replies_table',6),(120,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',6),(121,'2024_01_16_070706_fix_translation_tables',6),(122,'2024_01_23_075227_add_proof_file_to_ec_orders_table',6),(123,'2018_07_09_221238_create_faq_table',7),(124,'2021_12_03_082134_create_faq_translations',7),(125,'2023_11_17_063408_add_description_column_to_faq_categories_table',7),(126,'2016_10_03_032336_create_languages_table',8),(127,'2023_09_14_022423_add_index_for_language_table',8),(128,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(129,'2021_12_03_075608_create_page_translations',9),(130,'2023_07_06_011444_create_slug_translations_table',9),(131,'2019_11_18_061011_create_country_table',10),(132,'2021_12_03_084118_create_location_translations',10),(133,'2021_12_03_094518_migrate_old_location_data',10),(134,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',10),(135,'2022_01_16_085908_improve_plugin_location',10),(136,'2022_08_04_052122_delete_location_backup_tables',10),(137,'2023_04_23_061847_increase_state_translations_abbreviation_column',10),(138,'2023_07_26_041451_add_more_columns_to_location_table',10),(139,'2023_07_27_041451_add_more_columns_to_location_translation_table',10),(140,'2023_08_15_073307_drop_unique_in_states_cities_translations',10),(141,'2023_10_21_065016_make_state_id_in_table_cities_nullable',10),(142,'2021_07_06_030002_create_marketplace_table',11),(143,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',11),(144,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',11),(145,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',11),(146,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',11),(147,'2021_12_06_031304_update_table_mp_customer_revenues',11),(148,'2022_10_19_152916_add_columns_to_mp_stores_table',11),(149,'2022_10_20_062849_create_mp_category_sale_commissions_table',11),(150,'2022_11_02_071413_add_more_info_for_store',11),(151,'2022_11_02_080444_add_tax_info',11),(152,'2023_02_01_062030_add_store_translations',11),(153,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',11),(154,'2023_02_17_023648_fix_store_prefix',11),(155,'2017_10_24_154832_create_newsletter_table',12),(156,'2017_05_18_080441_create_payment_tables',13),(157,'2021_03_27_144913_add_customer_type_into_table_payments',13),(158,'2021_05_24_034720_make_column_currency_nullable',13),(159,'2021_08_09_161302_add_metadata_column_to_payments_table',13),(160,'2021_10_19_020859_update_metadata_field',13),(161,'2022_06_28_151901_activate_paypal_stripe_plugin',13),(162,'2022_07_07_153354_update_charge_id_in_table_payments',13),(163,'2017_07_11_140018_create_simple_slider_table',14),(164,'2016_10_07_193005_create_translations_table',15),(165,'2023_12_12_105220_drop_translations_table',15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,8,4,5811.00,0.00,5811.00,0.00,'USD',NULL,'2024-03-06 20:14:30','2024-03-06 20:14:30',0,'add-amount'),(2,8,5,5670.00,0.00,5670.00,5811.00,'USD',NULL,'2024-03-06 12:14:31','2024-03-06 12:14:31',0,'add-amount'),(3,8,7,40.00,0.00,40.00,11481.00,'USD',NULL,'2024-03-10 08:14:31','2024-03-10 08:14:31',0,'add-amount'),(4,8,11,2538.75,0.00,2538.75,11521.00,'USD',NULL,'2024-03-08 00:14:32','2024-03-08 00:14:32',0,'add-amount'),(5,4,15,936.00,0.00,936.00,0.00,'USD',NULL,'2024-02-28 00:14:32','2024-02-28 00:14:32',0,'add-amount'),(6,2,25,1920.00,0.00,1920.00,0.00,'USD',NULL,'2024-02-24 20:14:33','2024-02-24 20:14:33',0,'add-amount'),(7,8,26,2342.00,0.00,2342.00,14059.75,'USD',NULL,'2024-03-04 06:14:33','2024-03-04 06:14:33',0,'add-amount'),(8,3,27,1798.00,0.00,1798.00,0.00,'USD',NULL,'2024-03-06 08:14:34','2024-03-06 08:14:34',0,'add-amount'),(9,3,28,1044.00,0.00,1044.00,1798.00,'USD',NULL,'2024-03-06 04:14:35','2024-03-06 04:14:35',0,'add-amount'),(10,2,31,1212.00,0.00,1212.00,1920.00,'USD',NULL,'2024-03-08 08:14:35','2024-03-08 08:14:35',0,'add-amount'),(11,8,32,3378.00,0.00,3378.00,16401.75,'USD',NULL,'2024-03-02 18:14:36','2024-03-02 18:14:36',0,'add-amount'),(12,8,37,1688.00,0.00,1688.00,19779.75,'USD',NULL,'2024-02-24 04:14:36','2024-02-24 04:14:36',0,'add-amount'),(13,8,38,1080.00,0.00,1080.00,21467.75,'USD',NULL,'2024-02-07 12:14:37','2024-02-07 12:14:37',0,'add-amount'),(14,8,40,1189.00,0.00,1189.00,22547.75,'USD',NULL,'2024-02-29 18:14:37','2024-02-29 18:14:37',0,'add-amount'),(15,4,41,936.00,0.00,936.00,936.00,'USD',NULL,'2024-03-04 00:14:38','2024-03-04 00:14:38',0,'add-amount'),(16,2,42,2058.00,0.00,2058.00,3132.00,'USD',NULL,'2024-02-18 12:14:38','2024-02-18 12:14:38',0,'add-amount'),(17,4,43,4917.00,0.00,4917.00,1872.00,'USD',NULL,'2024-02-10 16:14:39','2024-02-10 16:14:39',0,'add-amount');
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,2,0.00,33.00,5190.00,'USD','','{\"name\":\"Maude DuBuque I\",\"number\":\"+13619584833\",\"full_name\":\"Reginald Reichel\",\"description\":\"Eugenia Rice\"}',NULL,0,'processing',NULL,'2024-03-11 00:14:40','2024-03-11 00:14:40',NULL),(2,2,0.00,1228.00,5157.00,'USD','','{\"name\":\"Maude DuBuque I\",\"number\":\"+13619584833\",\"full_name\":\"Reginald Reichel\",\"description\":\"Eugenia Rice\"}',NULL,0,'completed',NULL,'2024-03-11 00:14:40','2024-03-11 00:14:40',NULL),(3,3,0.00,884.00,2842.00,'USD','','{\"name\":\"Prof. Mark DuBuque III\",\"number\":\"+12346957512\",\"full_name\":\"Dr. Jerald King\",\"description\":\"Kayla Corwin\"}',NULL,0,'completed',NULL,'2024-03-11 00:14:41','2024-03-11 00:14:41',NULL),(4,3,0.00,614.00,1958.00,'USD','','{\"name\":\"Prof. Mark DuBuque III\",\"number\":\"+12346957512\",\"full_name\":\"Dr. Jerald King\",\"description\":\"Kayla Corwin\"}',NULL,0,'completed',NULL,'2024-03-11 00:14:41','2024-03-11 00:14:41',NULL),(5,4,0.00,518.00,6789.00,'USD','','{\"name\":\"Hildegard Dietrich\",\"number\":\"+12768431048\",\"full_name\":\"Krystina VonRueden\",\"description\":\"Valerie Fadel\"}',NULL,0,'pending',NULL,'2024-03-11 00:14:42','2024-03-11 00:14:42',NULL),(6,4,0.00,82.00,6271.00,'USD','','{\"name\":\"Hildegard Dietrich\",\"number\":\"+12768431048\",\"full_name\":\"Krystina VonRueden\",\"description\":\"Valerie Fadel\"}',NULL,0,'completed',NULL,'2024-03-11 00:14:42','2024-03-11 00:14:42',NULL),(7,4,0.00,247.00,6189.00,'USD','','{\"name\":\"Hildegard Dietrich\",\"number\":\"+12768431048\",\"full_name\":\"Krystina VonRueden\",\"description\":\"Valerie Fadel\"}',NULL,0,'processing',NULL,'2024-03-11 00:14:43','2024-03-11 00:14:43',NULL),(8,4,0.00,801.00,5942.00,'USD','','{\"name\":\"Hildegard Dietrich\",\"number\":\"+12768431048\",\"full_name\":\"Krystina VonRueden\",\"description\":\"Valerie Fadel\"}',NULL,0,'completed',NULL,'2024-03-11 00:14:44','2024-03-11 00:14:44',NULL),(9,8,0.00,7165.00,23736.75,'USD','','{\"name\":\"Dr. Devin Gerlach III\",\"number\":\"+15019560334\",\"full_name\":\"Mrs. Aryanna Daugherty\",\"description\":\"Toy Johnston\"}',NULL,0,'processing',NULL,'2024-03-11 00:14:44','2024-03-11 00:14:44',NULL),(10,8,0.00,2720.00,16571.75,'USD','','{\"name\":\"Dr. Devin Gerlach III\",\"number\":\"+15019560334\",\"full_name\":\"Mrs. Aryanna Daugherty\",\"description\":\"Toy Johnston\"}',NULL,0,'pending',NULL,'2024-03-11 00:14:45','2024-03-11 00:14:45',NULL),(11,8,0.00,1705.00,13851.75,'USD','','{\"name\":\"Dr. Devin Gerlach III\",\"number\":\"+15019560334\",\"full_name\":\"Mrs. Aryanna Daugherty\",\"description\":\"Toy Johnston\"}',NULL,0,'processing',NULL,'2024-03-11 00:14:45','2024-03-11 00:14:45',NULL),(12,8,0.00,1694.00,12146.75,'USD','','{\"name\":\"Dr. Devin Gerlach III\",\"number\":\"+15019560334\",\"full_name\":\"Mrs. Aryanna Daugherty\",\"description\":\"Toy Johnston\"}',NULL,0,'processing',NULL,'2024-03-11 00:14:46','2024-03-11 00:14:46',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','enos.abbott@example.net','+12483897800','51307 Fay Shoals','VE','Indiana','East Rollinfort',2,'stores/1.png','Omnis doloremque eveniet dolor fugiat.','Quia veniam sunt quia fugit. Recusandae saepe eveniet id. Earum fuga consequatur qui tempora id sit dolor magni.','published',NULL,'2024-03-11 00:14:21','2024-03-11 00:14:21',NULL,NULL),(2,'Global Office','ettie.lindgren@example.com','+17744221528','573 Marques Row Suite 813','IT','New York','Champlinburgh',3,'stores/2.png','Eum et deserunt et ut natus aut.','Illo velit consequuntur mollitia pariatur nisi rerum sed. Ea debitis non est sed.','published',NULL,'2024-03-11 00:14:21','2024-03-11 00:14:21',NULL,NULL),(3,'Young Shop','qchristiansen@example.net','+19806162523','251 Vella Lodge Suite 506','CU','Oklahoma','Carterberg',4,'stores/3.png','Magnam delectus voluptas voluptatem dolore.','Aut corrupti hic eaque soluta aperiam minima. Doloribus consequuntur et et non odio quidem et. Ut ducimus incidunt saepe et assumenda est.','published',NULL,'2024-03-11 00:14:21','2024-03-11 00:14:21',NULL,NULL),(4,'Global Store','leda98@example.com','+14696167270','165 Ezekiel Orchard Suite 882','MA','New Mexico','O\'Connellbury',8,'stores/4.png','Ut modi distinctio et cumque sequi et.','Soluta explicabo iusto sint odio sed aut. Officia qui facere consequatur culpa eum eos. Aspernatur ut iusto tenetur itaque.','published',NULL,'2024-03-11 00:14:21','2024-03-11 00:14:21',NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,3929.00,0.00,5190.00,'$2y$12$JUGzAtWsH8.cVNBvKh6pxOahuRkrt.KQYiKdYEQ0c3JiTgXEB1fH6','{\"name\":\"Maude DuBuque I\",\"number\":\"+13619584833\",\"full_name\":\"Reginald Reichel\",\"description\":\"Eugenia Rice\"}','2024-03-11 00:14:20','2024-03-11 00:14:41','bank_transfer',NULL),(2,3,1344.00,0.00,2842.00,'$2y$12$wPAhxHzqti2UjT3rsb0Vk.IjRUe0qLprC33zi5fLan8tlQ59COZAy','{\"name\":\"Prof. Mark DuBuque III\",\"number\":\"+12346957512\",\"full_name\":\"Dr. Jerald King\",\"description\":\"Kayla Corwin\"}','2024-03-11 00:14:21','2024-03-11 00:14:42','bank_transfer',NULL),(3,4,5141.00,0.00,6789.00,'$2y$12$Ne/ALgksRxxPq32uiBfZ0.r1DNrWNCZs9UqF1a2Nh/3jVmqwhQ2rC','{\"name\":\"Hildegard Dietrich\",\"number\":\"+12768431048\",\"full_name\":\"Krystina VonRueden\",\"description\":\"Valerie Fadel\"}','2024-03-11 00:14:21','2024-03-11 00:14:44','bank_transfer',NULL),(4,8,10452.75,0.00,23736.75,'$2y$12$Jjnfa14LvaqiA8LpA5ILWeRkzeYwUOJNSEYQxQHHQor.2sVKbCRwu','{\"name\":\"Dr. Devin Gerlach III\",\"number\":\"+15019560334\",\"full_name\":\"Mrs. Aryanna Daugherty\",\"description\":\"Toy Johnston\"}','2024-03-11 00:14:21','2024-03-11 00:14:46','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Free Delivery\" subtitle1=\"For all orders over $99\" icon2=\"icon-sync\" title2=\"90 Days Return\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Secure Payment\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"24/7 Support\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Gift Service\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Download Martfury App Now!\" subtitle=\"Shopping fastly and easily more with our app. Get a link to download the app on your phone.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Subscribe to get information about products and coupons\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2024-03-11 00:14:18','2024-03-11 00:14:18'),(2,'About us','<p>Alice quietly said, just as she heard one of the jurymen. \'It isn\'t a letter, after all: it\'s a set of verses.\' \'Are they in the chimney as she ran; but the Dodo solemnly presented the thimble, looking as solemn as she went on to the Cheshire Cat: now I shall be late!\' (when she thought it would not open any of them. \'I\'m sure those are not attending!\' said the Caterpillar. \'Well, I can\'t understand it myself to begin at HIS time of life. The King\'s argument was, that she tipped over the.</p><p>Alice, and she tried to say when I breathe\"!\' \'It IS the use of repeating all that stuff,\' the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. \'I wasn\'t asleep,\' he said to Alice. \'What sort of chance of getting up and down in a frightened tone. \'The Queen will hear you! You see, she came upon a time she had got so close to her, \'if we had the dish as its share of the other guinea-pig cheered, and was coming to, but it just now.\' \'It\'s the Cheshire Cat: now I shall.</p><p>For anything tougher than suet; Yet you finished the goose, with the edge with each hand. \'And now which is which?\' she said this, she came upon a time there were no arches left, and all of them attempted to explain the mistake it had come back and see how the Dodo suddenly called out \'The Queen! The Queen!\' and the little golden key was too late to wish that! She went on growing, and very soon finished it off. \'If everybody minded their own business!\' \'Ah, well! It means much the same as they.</p><p>March Hare. \'Yes, please do!\' but the great wonder is, that there\'s any one of the party sat silent for a long silence after this, and Alice was not a VERY unpleasant state of mind, she turned the corner, but the Dodo said, \'EVERYBODY has won, and all the same, the next verse,\' the Gryphon in an offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you, will you, won\'t you, will you, won\'t you, will you, won\'t you, will you, won\'t you, will you join the dance?.</p>',1,NULL,'default',NULL,'published','2024-03-11 00:14:18','2024-03-11 00:14:18'),(3,'Terms Of Use','<p>I am so VERY nearly at the moment, \'My dear! I shall ever see such a neck as that! No, no! You\'re a serpent; and there\'s no room to grow up again! Let me see: I\'ll give them a railway station.) However, she got to come before that!\' \'Call the next thing is, to get out again. That\'s all.\' \'Thank you,\' said the White Rabbit, jumping up in great fear lest she should chance to be sure; but I think you\'d better ask HER about it.\' \'She\'s in prison,\' the Queen furiously, throwing an inkstand at the.</p><p>I grow up, I\'ll write one--but I\'m grown up now,\' she added in a game of croquet she was about a whiting to a day-school, too,\' said Alice; \'I must be getting home; the night-air doesn\'t suit my throat!\' and a crash of broken glass, from which she found this a very curious to see the Queen. \'I never thought about it,\' added the Queen. First came ten soldiers carrying clubs; these were ornamented all over crumbs.\' \'You\'re wrong about the whiting!\' \'Oh, as to size,\' Alice hastily replied; \'only.</p><p>These were the two creatures got so much already, that it made no mark; but he now hastily began again, using the ink, that was sitting on a crimson velvet cushion; and, last of all this time. \'I want a clean cup,\' interrupted the Hatter: \'but you could manage it?) \'And what an ignorant little girl she\'ll think me for asking! No, it\'ll never do to ask: perhaps I shall have some fun now!\' thought Alice. \'I wonder what was going to dive in among the trees upon her face. \'Very,\' said Alice.</p><p>Alice said to herself in a confused way, \'Prizes! Prizes!\' Alice had not gone much farther before she had not gone (We know it to be lost: away went Alice like the tone of great curiosity. \'It\'s a Cheshire cat,\' said the Mock Turtle said with a little door about fifteen inches high: she tried to curtsey as she said this, she looked down, was an old conger-eel, that used to it in her head, she tried another question. \'What sort of way, \'Do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for.</p>',1,NULL,'default',NULL,'published','2024-03-11 00:14:18','2024-03-11 00:14:18'),(4,'Terms &amp; Conditions','<p>It\'s by far the most curious thing I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s head. \'Is that all?\' said Alice, rather doubtfully, as she spoke, but no result seemed to be no use speaking to a lobster--\' (Alice began to tremble. Alice looked all round the hall, but they were nowhere to be otherwise.\"\' \'I think I could, if I shall see it trot away quietly into the garden at once; but, alas for poor Alice! when she first saw the Mock Turtle: \'crumbs would all wash off in.</p><p>March Hare. Alice was a bright brass plate with the Lory, with a round face, and large eyes full of the house, \"Let us both go to on the same size for going through the door, and tried to speak, and no more to come, so she went on again:-- \'You may go,\' said the Gryphon, and the beak-- Pray how did you ever eat a little shaking among the trees as well as she could. \'The Dormouse is asleep again,\' said the King. \'Nothing whatever,\' said Alice. \'You must be,\' said the Pigeon. \'I can see you\'re.</p><p>Alice considered a little anxiously. \'Yes,\' said Alice, swallowing down her anger as well be at school at once.\' And in she went. Once more she found herself in a shrill, passionate voice. \'Would YOU like cats if you like,\' said the Mock Turtle repeated thoughtfully. \'I should like to go among mad people,\' Alice remarked. \'Oh, you can\'t be Mabel, for I know is, something comes at me like a telescope.\' And so she bore it as you say pig, or fig?\' said the Hatter; \'so I should like to have been a.</p><p>I don\'t believe there\'s an atom of meaning in it, and very neatly and simply arranged; the only difficulty was, that she hardly knew what she did, she picked her way out. \'I shall do nothing of the jury wrote it down into its mouth again, and Alice looked up, and began to cry again. \'You ought to eat her up in a hurry that she had somehow fallen into the open air. \'IF I don\'t think,\' Alice went on in the same as the other.\' As soon as the March Hare moved into the court, by the officers of the.</p>',1,NULL,'default',NULL,'published','2024-03-11 00:14:18','2024-03-11 00:14:18'),(5,'Refund Policy','<p>THESE?\' said the Duchess: \'flamingoes and mustard both bite. And the executioner myself,\' said the King. (The jury all looked puzzled.) \'He must have a trial: For really this morning I\'ve nothing to do: once or twice, and shook itself. Then it got down off the fire, and at last in the shade: however, the moment she quite forgot how to spell \'stupid,\' and that makes people hot-tempered,\' she went on to the Gryphon. \'Well, I hardly know--No more, thank ye; I\'m better now--but I\'m a deal faster.</p><p>Alice quite hungry to look down and make one repeat lessons!\' thought Alice; \'I must be a person of authority over Alice. \'Stand up and down in a trembling voice, \'Let us get to the Dormouse, and repeated her question. \'Why did you begin?\' The Hatter was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! I shall have some fun now!\' thought Alice. \'I wonder what CAN have happened to you? Tell us all about it!\' and he checked himself suddenly: the others took the.</p><p>Cheshire cat,\' said the Dormouse, and repeated her question. \'Why did they draw?\' said Alice, surprised at this, but at any rate I\'ll never go THERE again!\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it here, lad!--Here, put \'em up at the Queen, and Alice, were in custody and under sentence of execution. Then the Queen to-day?\' \'I should like it very much,\' said Alice, who always took a minute or two the Caterpillar contemptuously. \'Who are YOU?\' Which brought them.</p><p>Alice could think of nothing else to do, so Alice soon began talking again. \'Dinah\'ll miss me very much pleased at having found out that one of the other side, the puppy made another rush at the end of the trial.\' \'Stupid things!\' Alice began to say which), and they went on muttering over the wig, (look at the place of the others took the watch and looked at the Queen, the royal children; there were ten of them, with her head to feel very uneasy: to be a comfort, one way--never to be done, I.</p>',1,NULL,'default',NULL,'published','2024-03-11 00:14:18','2024-03-11 00:14:18'),(6,'Blog','<p>---</p>',1,NULL,'blog-sidebar',NULL,'published','2024-03-11 00:14:18','2024-03-11 00:14:18'),(7,'FAQs','<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>',1,NULL,'default',NULL,'published','2024-03-11 00:14:18','2024-03-11 00:14:18'),(8,'Contact','<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>',1,NULL,'full-width',NULL,'published','2024-03-11 00:14:18','2024-03-11 00:14:18'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-03-11 00:14:18','2024-03-11 00:14:18'),(10,'Affiliate','<p>What happened to me! When I used to it!\' pleaded poor Alice. \'But you\'re so easily offended, you know!\' The Mouse did not feel encouraged to ask his neighbour to tell you--all I know I do!\' said Alice in a pleased tone. \'Pray don\'t trouble yourself to say a word, but slowly followed her back to her: its face to see the earth takes twenty-four hours to turn into a sort of knot, and then dipped suddenly down, so suddenly that Alice could not remember the simple and loving heart of her ever.</p><p>CHAPTER III. A Caucus-Race and a scroll of parchment in the common way. So she tucked it away under her arm, and timidly said \'Consider, my dear: she is such a puzzled expression that she had brought herself down to them, and was just beginning to feel a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I can\'t understand it myself to begin with; and being ordered about by mice and rabbits. I almost wish I hadn\'t begun my tea--not above a week or so--and what with the.</p><p>Dormouse, without considering at all a pity. I said \"What for?\"\' \'She boxed the Queen\'s voice in the distance, sitting sad and lonely on a branch of a bottle. They all sat down and looked very uncomfortable. The first thing she heard the Queen\'s ears--\' the Rabbit just under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you haven\'t found it made Alice quite jumped; but she had a vague sort of present!\' thought Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' said Alice, rather alarmed at the.</p><p>VERY remarkable in that; nor did Alice think it would be worth the trouble of getting her hands on her toes when they liked, and left foot, so as to prevent its undoing itself,) she carried it off. \'If everybody minded their own business!\' \'Ah, well! It means much the most curious thing I know. Silence all round, if you drink much from a Caterpillar The Caterpillar and Alice guessed who it was, even before she came suddenly upon an open place, with a sigh. \'I only took the hookah out of sight.</p>',1,NULL,'default',NULL,'published','2024-03-11 00:14:18','2024-03-11 00:14:18'),(11,'Career','<p>Alice. \'Well, then,\' the Gryphon interrupted in a great many more than that, if you hold it too long; and that you have just been picked up.\' \'What\'s in it?\' said the Caterpillar took the watch and looked anxiously at the Cat\'s head began fading away the time. Alice had begun to repeat it, but her voice sounded hoarse and strange, and the sounds will take care of themselves.\"\' \'How fond she is only a child!\' The Queen smiled and passed on. \'Who ARE you talking to?\' said the King. \'Then it.</p><p>Alice was beginning very angrily, but the Hatter went on, \'that they\'d let Dinah stop in the morning, just time to go, for the immediate adoption of more broken glass.) \'Now tell me, please, which way she put it. She stretched herself up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t write it, and on it except a tiny golden key, and Alice\'s first thought was that you have of putting things!\' \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'--where\'s the Duchess?\'.</p><p>NOT marked \'poison,\' it is you hate--C and D,\' she added aloud. \'Do you play croquet with the edge of the bread-and-butter. Just at this moment the door began sneezing all at once. The Dormouse shook itself, and was going on within--a constant howling and sneezing, and every now and then the Mock Turtle recovered his voice, and, with tears running down his face, as long as you can--\' \'Swim after them!\' screamed the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice.</p><p>He says it kills all the time it vanished quite slowly, beginning with the dream of Wonderland of long ago: and how she would catch a bad cold if she did not sneeze, were the two sides of it; so, after hunting all about it!\' and he checked himself suddenly: the others took the opportunity of taking it away. She did it so quickly that the best of educations--in fact, we went to school in the distance. \'And yet what a Gryphon is, look at all this grand procession, came THE KING AND QUEEN OF.</p>',1,NULL,'default',NULL,'published','2024-03-11 00:14:18','2024-03-11 00:14:18'),(12,'Coming soon','<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"2025-03-11 07:14:18\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>',1,NULL,'coming-soon',NULL,'published','2024-03-11 00:14:18','2024-03-11 00:14:18');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'RALY5DMXG0','stripe',NULL,4757.00,1,'completed','confirm',6,NULL,NULL,'2024-03-11 00:14:21','2024-03-11 00:14:21','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'VA6J997SVR','stripe',NULL,1199.00,2,'completed','confirm',6,NULL,NULL,'2024-03-11 00:14:22','2024-03-11 00:14:22','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'RVEINOSQRU','cod',NULL,1266.00,3,'pending','confirm',9,NULL,NULL,'2024-03-11 00:14:22','2024-03-11 00:14:22','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'WQMF2MIG3J','paypal',NULL,5811.00,4,'completed','confirm',9,NULL,NULL,'2024-03-11 00:14:22','2024-03-11 00:14:22','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'A4IW8HVDBE','paypal',NULL,5670.00,5,'completed','confirm',9,NULL,NULL,'2024-03-11 00:14:22','2024-03-11 00:14:22','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'1XC3ZJOEXT','bank_transfer',NULL,1614.00,6,'pending','confirm',9,NULL,NULL,'2024-03-11 00:14:22','2024-03-11 00:14:22','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'RDP0FXEGVJ','razorpay',NULL,40.00,7,'completed','confirm',5,NULL,NULL,'2024-03-11 00:14:23','2024-03-11 00:14:23','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'W641BV8D3V','paystack',NULL,2020.00,8,'completed','confirm',5,NULL,NULL,'2024-03-11 00:14:23','2024-03-11 00:14:23','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'OOGCDEPEE8','bank_transfer',NULL,1044.00,9,'pending','confirm',5,NULL,NULL,'2024-03-11 00:14:23','2024-03-11 00:14:23','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'LXREMDQOED','sslcommerz',NULL,5836.00,10,'completed','confirm',5,NULL,NULL,'2024-03-11 00:14:23','2024-03-11 00:14:23','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'35PUOLMN32','paypal',NULL,2538.75,11,'completed','confirm',9,NULL,NULL,'2024-03-11 00:14:23','2024-03-11 00:14:23','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'353TELDTHY','bank_transfer',NULL,1040.00,12,'pending','confirm',9,NULL,NULL,'2024-03-11 00:14:24','2024-03-11 00:14:24','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'6WISV8WRFW','paystack',NULL,659.50,13,'completed','confirm',1,NULL,NULL,'2024-03-11 00:14:24','2024-03-11 00:14:24','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'FKNAG6GYIP','paystack',NULL,2232.00,14,'completed','confirm',1,NULL,NULL,'2024-03-11 00:14:24','2024-03-11 00:14:24','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'IUXQO9UR1B','paypal',NULL,936.00,15,'completed','confirm',1,NULL,NULL,'2024-03-11 00:14:24','2024-03-11 00:14:24','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'WGUSDSL96O','bank_transfer',NULL,1565.00,16,'pending','confirm',7,NULL,NULL,'2024-03-11 00:14:24','2024-03-11 00:14:24','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'9SJRSYUTMC','stripe',NULL,404.00,17,'completed','confirm',7,NULL,NULL,'2024-03-11 00:14:24','2024-03-11 00:14:24','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'QMLXXYQUPG','cod',NULL,520.00,18,'pending','confirm',7,NULL,NULL,'2024-03-11 00:14:25','2024-03-11 00:14:25','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'JPWWPKDFPB','stripe',NULL,4796.00,19,'completed','confirm',9,NULL,NULL,'2024-03-11 00:14:25','2024-03-11 00:14:25','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'AP5EVXLEUY','paypal',NULL,1008.00,20,'completed','confirm',9,NULL,NULL,'2024-03-11 00:14:25','2024-03-11 00:14:25','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'0UEPV6YPAQ','bank_transfer',NULL,1149.00,21,'pending','confirm',7,NULL,NULL,'2024-03-11 00:14:25','2024-03-11 00:14:25','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'KXUF4TYIK7','stripe',NULL,3833.00,22,'completed','confirm',7,NULL,NULL,'2024-03-11 00:14:25','2024-03-11 00:14:25','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'U3HLZHLITR','cod',NULL,2808.00,23,'pending','confirm',7,NULL,NULL,'2024-03-11 00:14:26','2024-03-11 00:14:26','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'MWJNZM1AT8','razorpay',NULL,5206.00,24,'completed','confirm',9,NULL,NULL,'2024-03-11 00:14:26','2024-03-11 00:14:26','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'8NSZJ8IAWY','stripe',NULL,1920.00,25,'completed','confirm',9,NULL,NULL,'2024-03-11 00:14:26','2024-03-11 00:14:26','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'FDFOUZWPQM','stripe',NULL,2342.00,26,'completed','confirm',9,NULL,NULL,'2024-03-11 00:14:26','2024-03-11 00:14:26','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'82M7TF6EYA','stripe',NULL,1798.00,27,'completed','confirm',9,NULL,NULL,'2024-03-11 00:14:26','2024-03-11 00:14:26','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'ZBKBAMRL0I','mollie',NULL,1044.00,28,'completed','confirm',1,NULL,NULL,'2024-03-11 00:14:27','2024-03-11 00:14:27','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'63KYXDDK0V','paypal',NULL,1266.00,29,'completed','confirm',1,NULL,NULL,'2024-03-11 00:14:27','2024-03-11 00:14:27','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'TEKJF7WVVS','mollie',NULL,1015.00,30,'completed','confirm',1,NULL,NULL,'2024-03-11 00:14:27','2024-03-11 00:14:27','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'PQ6AEHY2V4','mollie',NULL,1212.00,31,'completed','confirm',5,NULL,NULL,'2024-03-11 00:14:27','2024-03-11 00:14:27','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'NF7KQCTN4T','paypal',NULL,3378.00,32,'completed','confirm',5,NULL,NULL,'2024-03-11 00:14:27','2024-03-11 00:14:27','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'TCQBEGE823','paypal',NULL,1560.00,33,'completed','confirm',5,NULL,NULL,'2024-03-11 00:14:27','2024-03-11 00:14:27','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'KGLHMLMZFT','paypal',NULL,538.00,34,'completed','confirm',5,NULL,NULL,'2024-03-11 00:14:28','2024-03-11 00:14:28','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'ZVAREWTUKG','stripe',NULL,2138.00,35,'completed','confirm',5,NULL,NULL,'2024-03-11 00:14:28','2024-03-11 00:14:28','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'NPTKNB4AYP','cod',NULL,2702.00,36,'pending','confirm',10,NULL,NULL,'2024-03-11 00:14:28','2024-03-11 00:14:28','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'MXIPEFTPAN','razorpay',NULL,1688.00,37,'completed','confirm',10,NULL,NULL,'2024-03-11 00:14:28','2024-03-11 00:14:28','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'D6KGSNPABF','paystack',NULL,1080.00,38,'completed','confirm',6,NULL,NULL,'2024-03-11 00:14:28','2024-03-11 00:14:28','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'XBNIUUITGT','razorpay',NULL,3502.00,39,'completed','confirm',6,NULL,NULL,'2024-03-11 00:14:29','2024-03-11 00:14:29','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'734CSVXZIV','mollie',NULL,1189.00,40,'completed','confirm',9,NULL,NULL,'2024-03-11 00:14:29','2024-03-11 00:14:29','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'WRMPPQ8YGO','sslcommerz',NULL,936.00,41,'completed','confirm',9,NULL,NULL,'2024-03-11 00:14:29','2024-03-11 00:14:29','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'XZHXAFHGJU','sslcommerz',NULL,2058.00,42,'completed','confirm',6,NULL,NULL,'2024-03-11 00:14:29','2024-03-11 00:14:29','Botble\\Ecommerce\\Models\\Customer',NULL),(43,'USD',0,'HCTMQQW6UP','mollie',NULL,4917.00,43,'completed','confirm',6,NULL,NULL,'2024-03-11 00:14:29','2024-03-11 00:14:29','Botble\\Ecommerce\\Models\\Customer',NULL),(44,'USD',0,'0HBMJCW1TR','sslcommerz',NULL,504.00,44,'completed','confirm',5,NULL,NULL,'2024-03-11 00:14:30','2024-03-11 00:14:30','Botble\\Ecommerce\\Models\\Customer',NULL),(45,'USD',0,'YULSDU8YI8','paypal',NULL,899.00,45,'completed','confirm',5,NULL,NULL,'2024-03-11 00:14:30','2024-03-11 00:14:30','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `post_categories` VALUES (1,1),(3,1),(2,2),(3,2),(2,3),(3,3),(2,4),(4,4),(2,5),(3,5),(1,6),(3,6),(2,7),(4,7),(1,8),(4,8),(2,9),(3,9),(2,10),(4,10),(2,11),(3,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',2136,NULL,'2024-03-11 00:14:17','2024-03-11 00:14:17'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1631,NULL,'2024-03-11 00:14:18','2024-03-11 00:14:18'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',618,NULL,'2024-03-11 00:14:18','2024-03-11 00:14:18'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',1720,NULL,'2024-03-11 00:14:18','2024-03-11 00:14:18'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',2116,NULL,'2024-03-11 00:14:18','2024-03-11 00:14:18'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',1834,NULL,'2024-03-11 00:14:18','2024-03-11 00:14:18'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',2419,NULL,'2024-03-11 00:14:18','2024-03-11 00:14:18'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',582,NULL,'2024-03-11 00:14:18','2024-03-11 00:14:18'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',2230,NULL,'2024-03-11 00:14:18','2024-03-11 00:14:18'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',2215,NULL,'2024-03-11 00:14:18','2024-03-11 00:14:18'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',2238,NULL,'2024-03-11 00:14:18','2024-03-11 00:14:18');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"extensions.index\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.cronjob\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"plugins.captcha\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.settings\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"shipping_methods.index\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.general\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.settings\":true,\"marketplace.reports\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,1,1,'2024-03-11 00:14:17','2024-03-11 00:14:17');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (2,'api_enabled','0',NULL,'2024-03-11 00:14:19'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\"]',NULL,'2024-03-11 00:14:19'),(8,'language_hide_default','1',NULL,'2024-03-11 00:14:19'),(9,'language_switcher_display','dropdown',NULL,'2024-03-11 00:14:19'),(10,'language_display','all',NULL,'2024-03-11 00:14:19'),(11,'language_hide_languages','[]',NULL,'2024-03-11 00:14:19'),(12,'simple_slider_using_assets','0',NULL,NULL),(13,'media_random_hash','a76abfa350825eee1f3506ccb1f9dee5',NULL,'2024-03-11 00:14:19'),(14,'payment_cod_status','1',NULL,'2024-03-11 00:14:19'),(15,'payment_bank_transfer_status','1',NULL,'2024-03-11 00:14:19'),(16,'theme','martfury',NULL,'2024-03-11 00:14:19'),(17,'show_admin_bar','1',NULL,'2024-03-11 00:14:19'),(18,'admin_favicon','general/favicon.png',NULL,'2024-03-11 00:14:19'),(19,'admin_logo','general/logo-light.png',NULL,'2024-03-11 00:14:19'),(20,'permalink-botble-blog-models-post','blog',NULL,'2024-03-11 00:14:19'),(21,'permalink-botble-blog-models-category','blog',NULL,'2024-03-11 00:14:19'),(22,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2024-03-11 00:14:19'),(23,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2024-03-11 00:14:19'),(24,'payment_stripe_payment_type','stripe_checkout',NULL,'2024-03-11 00:14:19'),(25,'plugins_ecommerce_customer_new_order_status','0',NULL,'2024-03-11 00:14:19'),(26,'plugins_ecommerce_admin_new_order_status','0',NULL,'2024-03-11 00:14:19'),(27,'ecommerce_is_enabled_support_digital_products','1',NULL,'2024-03-11 00:14:19'),(28,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2024-03-11 00:14:19'),(29,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,'2024-03-11 00:14:19'),(30,'ecommerce_product_sku_format','MF-2443-[%S]',NULL,'2024-03-11 00:14:19'),(31,'ecommerce_store_name','Martfury',NULL,NULL),(32,'ecommerce_store_phone','1800979769',NULL,NULL),(33,'ecommerce_store_address','502 New Street',NULL,NULL),(34,'ecommerce_store_state','Brighton VIC',NULL,NULL),(35,'ecommerce_store_city','Brighton VIC',NULL,NULL),(36,'ecommerce_store_country','AU',NULL,NULL),(37,'theme-martfury-site_title','MartFury - Laravel Ecommerce system',NULL,NULL),(38,'theme-martfury-seo_description','MartFury is a clean & modern Laravel Ecommerce System for multipurpose online stores. With design clean and trendy, MartFury will make your online store look more impressive and attractive to viewers.',NULL,NULL),(39,'theme-martfury-copyright','© 2024 MartFury. All Rights Reserved.',NULL,NULL),(40,'theme-martfury-favicon','general/favicon.png',NULL,NULL),(41,'theme-martfury-logo','general/logo.png',NULL,NULL),(42,'theme-martfury-welcome_message','Welcome to MartFury Online Shopping Store!',NULL,NULL),(43,'theme-martfury-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(44,'theme-martfury-hotline','1800 97 97 69',NULL,NULL),(45,'theme-martfury-email','contact@martfury.co',NULL,NULL),(46,'theme-martfury-newsletter_image','general/newsletter.jpg',NULL,NULL),(47,'theme-martfury-homepage_id','1',NULL,NULL),(48,'theme-martfury-blog_page_id','6',NULL,NULL),(49,'theme-martfury-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(50,'theme-martfury-cookie_consent_learn_more_url','/cookie-policy',NULL,NULL),(51,'theme-martfury-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(52,'theme-martfury-number_of_products_per_page','42',NULL,NULL),(53,'theme-martfury-product_feature_1_title','Shipping worldwide',NULL,NULL),(54,'theme-martfury-product_feature_1_icon','icon-network',NULL,NULL),(55,'theme-martfury-product_feature_2_title','Free 7-day return if eligible, so easy',NULL,NULL),(56,'theme-martfury-product_feature_2_icon','icon-3d-rotate',NULL,NULL),(57,'theme-martfury-product_feature_3_title','Supplier give bills for this product.',NULL,NULL),(58,'theme-martfury-product_feature_3_icon','icon-receipt',NULL,NULL),(59,'theme-martfury-product_feature_4_title','Pay online or when receiving goods',NULL,NULL),(60,'theme-martfury-product_feature_4_icon','icon-credit-card',NULL,NULL),(61,'theme-martfury-contact_info_box_1_title','Contact Directly',NULL,NULL),(62,'theme-martfury-contact_info_box_1_subtitle','contact@martfury.com',NULL,NULL),(63,'theme-martfury-contact_info_box_1_details','(+004) 912-3548-07',NULL,NULL),(64,'theme-martfury-contact_info_box_2_title','Headquarters',NULL,NULL),(65,'theme-martfury-contact_info_box_2_subtitle','17 Queen St, South bank, Melbourne 10560, Australia',NULL,NULL),(66,'theme-martfury-contact_info_box_2_details','',NULL,NULL),(67,'theme-martfury-contact_info_box_3_title','Work With Us',NULL,NULL),(68,'theme-martfury-contact_info_box_3_subtitle','Send your CV to our email:',NULL,NULL),(69,'theme-martfury-contact_info_box_3_details','career@martfury.com',NULL,NULL),(70,'theme-martfury-contact_info_box_4_title','Customer Service',NULL,NULL),(71,'theme-martfury-contact_info_box_4_subtitle','customercare@martfury.com',NULL,NULL),(72,'theme-martfury-contact_info_box_4_details','(800) 843-2446',NULL,NULL),(73,'theme-martfury-contact_info_box_5_title','Media Relations',NULL,NULL),(74,'theme-martfury-contact_info_box_5_subtitle','media@martfury.com',NULL,NULL),(75,'theme-martfury-contact_info_box_5_details','(801) 947-3564',NULL,NULL),(76,'theme-martfury-contact_info_box_6_title','Vendor Support',NULL,NULL),(77,'theme-martfury-contact_info_box_6_subtitle','vendorsupport@martfury.com',NULL,NULL),(78,'theme-martfury-contact_info_box_6_details','(801) 947-3100',NULL,NULL),(79,'theme-martfury-number_of_cross_sale_product','7',NULL,NULL),(80,'theme-martfury-logo_in_the_checkout_page','general/logo-dark.png',NULL,NULL),(81,'theme-martfury-logo_in_invoices','general/logo-dark.png',NULL,NULL),(82,'theme-martfury-logo_vendor_dashboard','general/logo-dark.png',NULL,NULL),(83,'theme-martfury-primary_font','Work Sans',NULL,NULL),(84,'theme-martfury-payment_methods','[\"general\\/payment-method-1.jpg\",\"general\\/payment-method-2.jpg\",\"general\\/payment-method-3.jpg\",\"general\\/payment-method-4.jpg\",\"general\\/payment-method-5.jpg\"]',NULL,NULL),(85,'theme-martfury-social-name-1','Facebook',NULL,NULL),(86,'theme-martfury-social-url-1','https://www.facebook.com/',NULL,NULL),(87,'theme-martfury-social-icon-1','fab fa-facebook',NULL,NULL),(88,'theme-martfury-social-color-1','#3b5999',NULL,NULL),(89,'theme-martfury-social-name-2','Twitter',NULL,NULL),(90,'theme-martfury-social-url-2','https://www.twitter.com/',NULL,NULL),(91,'theme-martfury-social-icon-2','fab fa-twitter',NULL,NULL),(92,'theme-martfury-social-color-2','#55ACF9',NULL,NULL),(93,'theme-martfury-social-name-3','Instagram',NULL,NULL),(94,'theme-martfury-social-url-3','https://www.instagram.com/',NULL,NULL),(95,'theme-martfury-social-icon-3','fab fa-instagram',NULL,NULL),(96,'theme-martfury-social-color-3','#E1306C',NULL,NULL),(97,'theme-martfury-social-name-4','Youtube',NULL,NULL),(98,'theme-martfury-social-url-4','https://www.youtube.com/',NULL,NULL),(99,'theme-martfury-social-icon-4','fab fa-youtube',NULL,NULL),(100,'theme-martfury-social-color-4','#FF0000',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `simple_slider_items` VALUES (1,1,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2024-03-11 00:14:18','2024-03-11 00:14:18'),(2,1,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2024-03-11 00:14:18','2024-03-11 00:14:18'),(3,1,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2024-03-11 00:14:18','2024-03-11 00:14:18');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2024-03-11 00:14:18','2024-03-11 00:14:18');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-03-11 00:14:06','2024-03-11 00:14:06'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-03-11 00:14:06','2024-03-11 00:14:06'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-03-11 00:14:06','2024-03-11 00:14:06'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-03-11 00:14:06','2024-03-11 00:14:06'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-03-11 00:14:06','2024-03-11 00:14:06'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2024-03-11 00:14:06','2024-03-11 00:14:06'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2024-03-11 00:14:06','2024-03-11 00:14:06'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(10,'consumer-electronic',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(11,'home-audio-theaters',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(12,'tv-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(13,'camera-photos-videos',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(14,'cellphones-accessories',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(15,'headphones',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(16,'videos-games',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(17,'wireless-speakers',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(18,'office-electronic',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(19,'accessories-parts',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(20,'digital-cables',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(21,'audio-video-cables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(22,'batteries',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(23,'clothing',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(24,'computers',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(25,'computer-technologies',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(26,'computer-tablets',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(27,'laptop',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(28,'monitors',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(29,'computer-components',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(30,'networking',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(31,'drive-storages',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(32,'gaming-laptop',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(33,'security-protection',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(34,'accessories',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(35,'home-kitchen',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(36,'health-beauty',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(37,'jewelry-watch',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(38,'technology-toys',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(39,'phones',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(40,'babies-moms',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(41,'sport-outdoor',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(42,'books-office',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(43,'cars-motorcycles',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:06','2024-03-11 00:14:06'),(44,'home-improvements',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:14:07','2024-03-11 00:14:07'),(45,'dual-camera-20mp-digital',1,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:11','2024-03-11 00:14:46'),(46,'smart-watches',2,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:11','2024-03-11 00:14:11'),(47,'beat-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:11','2024-03-11 00:14:11'),(48,'red-black-headphone',4,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:11','2024-03-11 00:14:11'),(49,'smart-watch-external-digital',5,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:11','2024-03-11 00:14:46'),(50,'nikon-hd-camera',6,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:11','2024-03-11 00:14:11'),(51,'audio-equipment',7,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:11','2024-03-11 00:14:11'),(52,'smart-televisions',8,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:11','2024-03-11 00:14:11'),(53,'samsung-smart-phone-digital',9,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:11','2024-03-11 00:14:46'),(54,'herschel-leather-duffle-bag-in-brown-color',10,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:11','2024-03-11 00:14:11'),(55,'xbox-one-wireless-controller-black-color',11,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:11','2024-03-11 00:14:11'),(56,'epsion-plaster-printer',12,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:11','2024-03-11 00:14:11'),(57,'sound-intone-i65-earphone-white-version-digital',13,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:11','2024-03-11 00:14:46'),(58,'bo-play-mini-bluetooth-speaker',14,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:11','2024-03-11 00:14:11'),(59,'apple-macbook-air-retina-133-inch-laptop',15,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:11','2024-03-11 00:14:11'),(60,'apple-macbook-air-retina-12-inch-laptop',16,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:11','2024-03-11 00:14:11'),(61,'samsung-gear-vr-virtual-reality-headset-digital',17,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:11','2024-03-11 00:14:46'),(62,'aveeno-moisturizing-body-shower-450ml',18,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:11','2024-03-11 00:14:11'),(63,'nyx-beauty-couton-pallete-makeup-12',19,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:11','2024-03-11 00:14:11'),(64,'nyx-beauty-couton-pallete-makeup-12',20,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:11','2024-03-11 00:14:11'),(65,'mvmth-classical-leather-watch-in-black-digital',21,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:11','2024-03-11 00:14:46'),(66,'baxter-care-hair-kit-for-bearded-mens',22,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:11','2024-03-11 00:14:11'),(67,'ciate-palemore-lipstick-bold-red-color',23,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:11','2024-03-11 00:14:11'),(68,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-03-11 00:14:16','2024-03-11 00:14:16'),(69,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-03-11 00:14:16','2024-03-11 00:14:16'),(70,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-03-11 00:14:16','2024-03-11 00:14:16'),(71,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-03-11 00:14:16','2024-03-11 00:14:16'),(72,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-03-11 00:14:16','2024-03-11 00:14:16'),(73,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-03-11 00:14:16','2024-03-11 00:14:16'),(74,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2024-03-11 00:14:17','2024-03-11 00:14:19'),(75,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-03-11 00:14:17','2024-03-11 00:14:19'),(76,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-03-11 00:14:17','2024-03-11 00:14:19'),(77,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-03-11 00:14:17','2024-03-11 00:14:19'),(78,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-03-11 00:14:17','2024-03-11 00:14:17'),(79,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-03-11 00:14:17','2024-03-11 00:14:17'),(80,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-03-11 00:14:17','2024-03-11 00:14:17'),(81,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-03-11 00:14:17','2024-03-11 00:14:17'),(82,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-03-11 00:14:17','2024-03-11 00:14:17'),(83,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-03-11 00:14:18','2024-03-11 00:14:19'),(84,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-03-11 00:14:18','2024-03-11 00:14:19'),(85,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-03-11 00:14:18','2024-03-11 00:14:19'),(86,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-03-11 00:14:18','2024-03-11 00:14:19'),(87,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-03-11 00:14:18','2024-03-11 00:14:19'),(88,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-03-11 00:14:18','2024-03-11 00:14:19'),(89,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-03-11 00:14:18','2024-03-11 00:14:19'),(90,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-03-11 00:14:18','2024-03-11 00:14:19'),(91,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-03-11 00:14:18','2024-03-11 00:14:19'),(92,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-03-11 00:14:18','2024-03-11 00:14:19'),(93,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-03-11 00:14:18','2024-03-11 00:14:19'),(94,'home',1,'Botble\\Page\\Models\\Page','','2024-03-11 00:14:18','2024-03-11 00:14:18'),(95,'about-us',2,'Botble\\Page\\Models\\Page','','2024-03-11 00:14:18','2024-03-11 00:14:18'),(96,'terms-of-use',3,'Botble\\Page\\Models\\Page','','2024-03-11 00:14:18','2024-03-11 00:14:18'),(97,'terms-conditions',4,'Botble\\Page\\Models\\Page','','2024-03-11 00:14:18','2024-03-11 00:14:18'),(98,'refund-policy',5,'Botble\\Page\\Models\\Page','','2024-03-11 00:14:18','2024-03-11 00:14:18'),(99,'blog',6,'Botble\\Page\\Models\\Page','','2024-03-11 00:14:18','2024-03-11 00:14:18'),(100,'faqs',7,'Botble\\Page\\Models\\Page','','2024-03-11 00:14:18','2024-03-11 00:14:18'),(101,'contact',8,'Botble\\Page\\Models\\Page','','2024-03-11 00:14:18','2024-03-11 00:14:18'),(102,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2024-03-11 00:14:18','2024-03-11 00:14:18'),(103,'affiliate',10,'Botble\\Page\\Models\\Page','','2024-03-11 00:14:18','2024-03-11 00:14:18'),(104,'career',11,'Botble\\Page\\Models\\Page','','2024-03-11 00:14:18','2024-03-11 00:14:18'),(105,'coming-soon',12,'Botble\\Page\\Models\\Page','','2024-03-11 00:14:18','2024-03-11 00:14:18'),(106,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2024-03-11 00:14:21','2024-03-11 00:14:21'),(107,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2024-03-11 00:14:21','2024-03-11 00:14:21'),(108,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2024-03-11 00:14:21','2024-03-11 00:14:21'),(109,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2024-03-11 00:14:21','2024-03-11 00:14:21'),(110,'dual-camera-20mp-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(111,'smart-watches',25,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(112,'smart-watches',26,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(113,'smart-watches',27,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(114,'beat-headphone',28,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(115,'beat-headphone',29,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(116,'beat-headphone',30,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(117,'red-black-headphone',31,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(118,'smart-watch-external-digital',32,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(119,'smart-watch-external-digital',33,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(120,'smart-watch-external-digital',34,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(121,'nikon-hd-camera',35,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(122,'nikon-hd-camera',36,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(123,'nikon-hd-camera',37,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(124,'audio-equipment',38,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(125,'audio-equipment',39,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(126,'audio-equipment',40,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(127,'audio-equipment',41,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(128,'audio-equipment',42,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(129,'smart-televisions',43,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(130,'smart-televisions',44,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(131,'smart-televisions',45,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(132,'samsung-smart-phone-digital',46,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(133,'samsung-smart-phone-digital',47,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(134,'samsung-smart-phone-digital',48,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(135,'herschel-leather-duffle-bag-in-brown-color',49,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(136,'herschel-leather-duffle-bag-in-brown-color',50,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(137,'herschel-leather-duffle-bag-in-brown-color',51,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(138,'herschel-leather-duffle-bag-in-brown-color',52,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(139,'herschel-leather-duffle-bag-in-brown-color',53,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(140,'xbox-one-wireless-controller-black-color',54,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(141,'xbox-one-wireless-controller-black-color',55,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(142,'xbox-one-wireless-controller-black-color',56,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(143,'xbox-one-wireless-controller-black-color',57,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(144,'xbox-one-wireless-controller-black-color',58,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(145,'epsion-plaster-printer',59,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(146,'epsion-plaster-printer',60,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(147,'epsion-plaster-printer',61,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(148,'sound-intone-i65-earphone-white-version-digital',62,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(149,'sound-intone-i65-earphone-white-version-digital',63,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(150,'bo-play-mini-bluetooth-speaker',64,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(151,'bo-play-mini-bluetooth-speaker',65,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(152,'apple-macbook-air-retina-133-inch-laptop',66,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(153,'apple-macbook-air-retina-133-inch-laptop',67,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(154,'apple-macbook-air-retina-12-inch-laptop',68,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(155,'apple-macbook-air-retina-12-inch-laptop',69,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(156,'samsung-gear-vr-virtual-reality-headset-digital',70,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(157,'samsung-gear-vr-virtual-reality-headset-digital',71,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(158,'aveeno-moisturizing-body-shower-450ml',72,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(159,'aveeno-moisturizing-body-shower-450ml',73,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(160,'aveeno-moisturizing-body-shower-450ml',74,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(161,'nyx-beauty-couton-pallete-makeup-12',75,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(162,'nyx-beauty-couton-pallete-makeup-12',76,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(163,'nyx-beauty-couton-pallete-makeup-12',77,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(164,'nyx-beauty-couton-pallete-makeup-12',78,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(165,'mvmth-classical-leather-watch-in-black-digital',79,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(166,'mvmth-classical-leather-watch-in-black-digital',80,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(167,'baxter-care-hair-kit-for-bearded-mens',81,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(168,'baxter-care-hair-kit-for-bearded-mens',82,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(169,'baxter-care-hair-kit-for-bearded-mens',83,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(170,'ciate-palemore-lipstick-bold-red-color',84,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46'),(171,'ciate-palemore-lipstick-bold-red-color',85,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:14:46','2024-03-11 00:14:46');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-03-11 00:14:17','2024-03-11 00:14:17'),(2,'Design',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-03-11 00:14:17','2024-03-11 00:14:17'),(3,'Fashion',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-03-11 00:14:17','2024-03-11 00:14:17'),(4,'Branding',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-03-11 00:14:17','2024-03-11 00:14:17'),(5,'Modern',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-03-11 00:14:17','2024-03-11 00:14:17');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `users` VALUES (1,'pfannerstill.rod@schinner.com',NULL,'$2y$12$hnz6Jac0XuDh9ktJOYICB.7/6WBaZPpxx/eXaNYO7rcC/AiPNymcu',NULL,'2024-03-11 00:14:17','2024-03-11 00:14:17','Moriah','Deckow','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','martfury',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2024-03-11 00:14:19','2024-03-11 00:14:19'),(2,'CustomMenuWidget','footer_sidebar','martfury',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2024-03-11 00:14:19','2024-03-11 00:14:19'),(3,'CustomMenuWidget','footer_sidebar','martfury',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}','2024-03-11 00:14:19','2024-03-11 00:14:19'),(4,'BlogSearchWidget','primary_sidebar','martfury',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2024-03-11 00:14:19','2024-03-11 00:14:19'),(5,'BlogCategoriesWidget','primary_sidebar','martfury',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2024-03-11 00:14:19','2024-03-11 00:14:19'),(6,'RecentPostsWidget','primary_sidebar','martfury',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2024-03-11 00:14:19','2024-03-11 00:14:19'),(7,'TagsWidget','primary_sidebar','martfury',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2024-03-11 00:14:19','2024-03-11 00:14:19'),(8,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}','2024-03-11 00:14:19','2024-03-11 00:14:19'),(9,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}','2024-03-11 00:14:19','2024-03-11 00:14:19'),(10,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}','2024-03-11 00:14:19','2024-03-11 00:14:19'),(11,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}','2024-03-11 00:14:19','2024-03-11 00:14:19'),(12,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}','2024-03-11 00:14:19','2024-03-11 00:14:19');
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

-- Dump completed on 2024-03-11 14:14:48
