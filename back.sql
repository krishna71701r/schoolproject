-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.24.04.2

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'Library Members');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (2,1,25),(8,1,26),(9,1,27),(10,1,28),(11,1,29),(12,1,30),(13,1,31),(3,1,32),(4,1,33),(5,1,34),(6,1,35),(7,1,36),(1,1,45);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add author',7,'add_author'),(26,'Can change author',7,'change_author'),(27,'Can delete author',7,'delete_author'),(28,'Can view author',7,'view_author'),(29,'Can add book',8,'add_book'),(30,'Can change book',8,'change_book'),(31,'Can delete book',8,'delete_book'),(32,'Can view book',8,'view_book'),(33,'Can add book instance',9,'add_bookinstance'),(34,'Can change book instance',9,'change_bookinstance'),(35,'Can delete book instance',9,'delete_bookinstance'),(36,'Can view book instance',9,'view_bookinstance'),(37,'Can add genre',10,'add_genre'),(38,'Can change genre',10,'change_genre'),(39,'Can delete genre',10,'delete_genre'),(40,'Can view genre',10,'view_genre'),(41,'Can add language',11,'add_language'),(42,'Can change language',11,'change_language'),(43,'Can delete language',11,'delete_language'),(44,'Can view language',11,'view_language'),(45,'Set book as returned',9,'can_mark_returned');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$fkpFfYuBRyDbCiFFhkfmHJ$ecJYSkeaJ83OfmSny9MUmNSyYbPlyeTK0aQRqDV7OTs=','2024-11-09 01:26:06.581653',1,'csgeek','','','akkrishnayadav71701r@gmail.com',1,1,'2024-11-05 15:26:46.754550'),(2,'pbkdf2_sha256$870000$LYZKNHhdjTz12MrNNS9FdJ$1Xh8vl0gEBHkY0owzWwBgb3WihoVKrCgxMZNLQgh3RY=','2024-11-09 01:24:26.806662',0,'albertu','','','',1,1,'2024-11-05 15:46:03.000000'),(3,'pbkdf2_sha256$870000$g5HF6iC9P38Ql0e457Wqzw$MN9m0NaqwPYflPTIssMihR8N0UcnRCdTq75GeKsxDuI=','2024-11-07 07:31:56.917844',0,'krishna','','','',0,1,'2024-11-06 07:56:49.000000'),(4,'pbkdf2_sha256$870000$X9HA984gkwdNXdj73eRCIc$sMGNFck2xv43EGkxBW0LzQlWenI8aWN8hnBenM/kKk4=',NULL,0,'harshit','','','',0,1,'2024-11-09 01:18:57.482158');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,2,1),(2,3,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_author`
--

DROP TABLE IF EXISTS `catalog_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalog_author` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `date_of_death` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog_author`
--

LOCK TABLES `catalog_author` WRITE;
/*!40000 ALTER TABLE `catalog_author` DISABLE KEYS */;
INSERT INTO `catalog_author` VALUES (1,'मुंशी','प्रेमचंद','1880-07-31','1936-10-08'),(2,'Carl','Sagan','1934-11-09','1996-12-20'),(3,'J.K.','Rowling','1965-07-31',NULL),(4,'Shashi','Tharoor','1956-03-09',NULL),(5,'मन्नू','भंडारी','1931-04-03','2021-11-15'),(8,'Stephen','Hawking','1942-01-08','2018-03-14');
/*!40000 ALTER TABLE `catalog_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_book`
--

DROP TABLE IF EXISTS `catalog_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalog_book` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `summary` longtext NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `author_id` bigint DEFAULT NULL,
  `language_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `isbn` (`isbn`),
  KEY `catalog_book_author_id_b0849980_fk_catalog_author_id` (`author_id`),
  KEY `catalog_book_language_id_447f859e_fk_catalog_language_id` (`language_id`),
  CONSTRAINT `catalog_book_author_id_b0849980_fk_catalog_author_id` FOREIGN KEY (`author_id`) REFERENCES `catalog_author` (`id`),
  CONSTRAINT `catalog_book_language_id_447f859e_fk_catalog_language_id` FOREIGN KEY (`language_id`) REFERENCES `catalog_language` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog_book`
--

LOCK TABLES `catalog_book` WRITE;
/*!40000 ALTER TABLE `catalog_book` DISABLE KEYS */;
INSERT INTO `catalog_book` VALUES (1,'गोदान','गोदान में भारतीय किसान का संपूर्ण जीवन - उसकी आकांक्षा और निराशा, उसकी धर्मभीरुता और भारतपरायणता के साथ स्वार्थपरता ओर बैठकबाजी, उसकी बेबसी और निरीहता- का जीता जागता चित्र उपस्थित किया गया है। उसकी गर्दन जिस पैर के नीचे दबी है उसे सहलाता, क्लेश और वेदना को झुठलाता, \'मरजाद\' की झूठी भावना पर गर्व करता, ऋणग्रस्तता के अभिशाप में पिसता, तिल तिल शूलों भरे पथ पर आगे बढ़ता, भारतीय समाज का मेरुदंड यह किसान कितना शिथिल और जर्जर हो चुका है, यह गोदान में प्रत्यक्ष देखने को मिलता है। नगरों के कोलाहलमय चकाचौंध ने गाँवों की विभूति को कैसे ढँक लिया है, जमींदार, मिल मालिक, पत्रसंपादक, अध्यापक, पेशेवर वकील और डाक्टर, राजनीतिक नेता और राजकर्मचारी जोंक बने कैसे गाँव के इस निरीह किसान का शोषण कर रहे हैं और कैसे गाँव के ही महाजन और पुरोहित उनकी सहायता कर रहे हैं, गोदान में ये सभी तत्व नखदर्पण के समान प्रत्यक्ष हो गए हैं।','9789388810470',1,1),(2,'Harry Potter and the Philosopher\'s Stone','Harry Potter has never even heard of Hogwarts when the letters start dropping on the doormat at number four, Privet Drive. Addressed in green ink on yellowish parchment with a purple seal, they are swiftly confiscated by his grisly aunt and uncle. Then, on Harry\'s eleventh birthday, a great beetle-eyed giant of a man called Rubeus Hagrid bursts in with some astonishing news: Harry Potter is a wizard, and he has a place at Hogwarts School of Witchcraft and Wizardry. An incredible adventure is about to begin.','9781408855652',3,2),(5,'Theory of Everything','The \"Theory of Everything\" (TOE) is a hypothetical framework in theoretical physics that aims to unify all the fundamental forces of nature and explain the underlying principles governing the universe. The concept seeks to integrate the four known fundamental forces: gravity, electromagnetism, the strong nuclear force, and the weak nuclear force, into a single, cohesive theory.\r\nHistorically, physicists have developed separate theories to explain different forces. For instance, General Relativity, formulated by Albert Einstein, describes gravity, while Quantum Mechanics explains the other three forces at the subatomic level. However, these theories are not fully compatible with each other, particularly in extreme conditions such as those found in black holes or the early universe.\r\nEfforts to develop a TOE include string theory and loop quantum gravity. String theory posits that the fundamental particles are not point-like but rather one-dimensional \"strings\" that vibrate at different','1234567890123',8,2);
/*!40000 ALTER TABLE `catalog_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_book_genre`
--

DROP TABLE IF EXISTS `catalog_book_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalog_book_genre` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `book_id` bigint NOT NULL,
  `genre_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `catalog_book_genre_book_id_genre_id_d15f6922_uniq` (`book_id`,`genre_id`),
  KEY `catalog_book_genre_genre_id_77d7ffde_fk_catalog_genre_id` (`genre_id`),
  CONSTRAINT `catalog_book_genre_book_id_e5a77c43_fk_catalog_book_id` FOREIGN KEY (`book_id`) REFERENCES `catalog_book` (`id`),
  CONSTRAINT `catalog_book_genre_genre_id_77d7ffde_fk_catalog_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `catalog_genre` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog_book_genre`
--

LOCK TABLES `catalog_book_genre` WRITE;
/*!40000 ALTER TABLE `catalog_book_genre` DISABLE KEYS */;
INSERT INTO `catalog_book_genre` VALUES (1,1,1),(2,1,2),(3,2,2),(4,2,3),(5,2,4),(9,5,5);
/*!40000 ALTER TABLE `catalog_book_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_bookinstance`
--

DROP TABLE IF EXISTS `catalog_bookinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalog_bookinstance` (
  `id` char(32) NOT NULL,
  `imprint` varchar(200) NOT NULL,
  `due_back` date DEFAULT NULL,
  `status` varchar(1) NOT NULL,
  `book_id` bigint DEFAULT NULL,
  `borrower_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_bookinstance_book_id_69f93415_fk_catalog_book_id` (`book_id`),
  KEY `catalog_bookinstance_borrower_id_0d71c37c_fk_auth_user_id` (`borrower_id`),
  CONSTRAINT `catalog_bookinstance_book_id_69f93415_fk_catalog_book_id` FOREIGN KEY (`book_id`) REFERENCES `catalog_book` (`id`),
  CONSTRAINT `catalog_bookinstance_borrower_id_0d71c37c_fk_auth_user_id` FOREIGN KEY (`borrower_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog_bookinstance`
--

LOCK TABLES `catalog_bookinstance` WRITE;
/*!40000 ALTER TABLE `catalog_bookinstance` DISABLE KEYS */;
INSERT INTO `catalog_bookinstance` VALUES ('4d27e4044c4e4e058bbf1be4b2acfdc1','Bloomsbury Children\'s Books',NULL,'m',2,NULL),('5ced7a618c3646ac97f63f8fdd5f67a1','Fingerprint! Publishing (1 February 2019); Prakash Books India Pvt Ltd, 113A, Ansari Road, Daryaganj, New Delhi-110002, +9111-23265358','2024-11-08','o',1,4),('5dfd10b5d5db4cd6ad4699af4f90186b','Fingerprint! Publishing (1 February 2019); Prakash Books India Pvt Ltd, 113A, Ansari Road, Daryaganj, New Delhi-110002, +9111-23265358','2024-11-08','o',1,3),('62bedf0c463d4a00a727b45beb3b4d75','Bloomsbury Children\'s Books',NULL,'a',2,NULL),('80a41a09cade4a7aad1973d802491050','Fingerprint! Publishing (1 February 2019); Prakash Books India Pvt Ltd, 113A, Ansari Road, Daryaganj, New Delhi-110002, +9111-23265358',NULL,'m',1,NULL),('8fc82741932f40b98ff3c53cff3cb459','Fingerprint! Publishing (1 February 2019); Prakash Books India Pvt Ltd, 113A, Ansari Road, Daryaganj, New Delhi-110002, +9111-23265358',NULL,'a',1,NULL),('9b9c3aca10a0471eb5712ccf55299674','Fingerprint! Publishing (1 February 2019); Prakash Books India Pvt Ltd, 113A, Ansari Road, Daryaganj, New Delhi-110002, +9111-23265358',NULL,'r',1,1),('a2c500f320844de7b29b1d8921461d47','Jaico Publishing House; First Edition (25 September 2006); Jaico Pub House',NULL,'a',5,NULL),('b060cad1b89e4eba8d552f04ec5c54b0','Jaico Publishing House; First Edition (25 September 2006); Jaico Pub House','2024-11-18','o',5,4),('c82dd8f6490e403c9db62d26b1551cbf','Bloomsbury Children\'s Books','2024-11-27','o',2,1);
/*!40000 ALTER TABLE `catalog_bookinstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_genre`
--

DROP TABLE IF EXISTS `catalog_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalog_genre` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `genre_name_case_insensitive_unique` ((lower(`name`)))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog_genre`
--

LOCK TABLES `catalog_genre` WRITE;
/*!40000 ALTER TABLE `catalog_genre` DISABLE KEYS */;
INSERT INTO `catalog_genre` VALUES (4,'Children\'s literature'),(3,'Fantasy'),(2,'Fiction'),(1,'Novel'),(5,'Science and technology');
/*!40000 ALTER TABLE `catalog_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_language`
--

DROP TABLE IF EXISTS `catalog_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalog_language` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `language_name_case_insensitive_unique` ((lower(`name`)))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog_language`
--

LOCK TABLES `catalog_language` WRITE;
/*!40000 ALTER TABLE `catalog_language` DISABLE KEYS */;
INSERT INTO `catalog_language` VALUES (2,'English'),(1,'Hindi');
/*!40000 ALTER TABLE `catalog_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-11-05 15:37:07.969412','1','Library Members',1,'[{\"added\": {}}]',3,1),(2,'2024-11-05 15:46:03.945563','2','albertu',1,'[{\"added\": {}}]',4,1),(3,'2024-11-05 15:48:48.463742','2','albertu',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,1),(4,'2024-11-06 03:24:36.707114','1','प्रेमचंद, मुंशी',1,'[{\"added\": {}}]',7,1),(5,'2024-11-06 03:25:14.674285','1','Hindi',1,'[{\"added\": {}}]',11,1),(6,'2024-11-06 03:25:24.561150','2','English',1,'[{\"added\": {}}]',11,1),(7,'2024-11-06 03:34:24.752975','2','Sagan, Carl',1,'[{\"added\": {}}]',7,1),(8,'2024-11-06 03:40:29.414022','3','Rowling, J.K.',1,'[{\"added\": {}}]',7,1),(9,'2024-11-06 03:43:37.257698','4','Tharoor, Shashi',1,'[{\"added\": {}}]',7,1),(10,'2024-11-06 03:56:33.490669','5','भंडारी, मन्नू',1,'[{\"added\": {}}]',7,1),(11,'2024-11-06 04:11:22.485413','1','Novel',1,'[{\"added\": {}}]',10,1),(12,'2024-11-06 04:11:34.601502','2','Fiction',1,'[{\"added\": {}}]',10,1),(13,'2024-11-06 04:11:53.958702','1','गोदान',1,'[{\"added\": {}}]',8,1),(14,'2024-11-06 04:18:50.054188','3','Fantasy',1,'[{\"added\": {}}]',10,1),(15,'2024-11-06 04:19:21.238658','4','Children\'s literature',1,'[{\"added\": {}}]',10,1),(16,'2024-11-06 04:19:39.310554','2','Harry Potter and the Philosopher\'s Stone',1,'[{\"added\": {}}]',8,1),(17,'2024-11-06 04:23:15.449556','62bedf0c-463d-4a00-a727-b45beb3b4d75','62bedf0c-463d-4a00-a727-b45beb3b4d75 (Harry Potter and the Philosopher\'s Stone)',1,'[{\"added\": {}}]',9,1),(18,'2024-11-06 04:24:17.054116','c82dd8f6-490e-403c-9db6-2d26b1551cbf','c82dd8f6-490e-403c-9db6-2d26b1551cbf (Harry Potter and the Philosopher\'s Stone)',1,'[{\"added\": {}}]',9,1),(19,'2024-11-06 04:25:49.003234','4d27e404-4c4e-4e05-8bbf-1be4b2acfdc1','4d27e404-4c4e-4e05-8bbf-1be4b2acfdc1 (Harry Potter and the Philosopher\'s Stone)',1,'[{\"added\": {}}]',9,1),(20,'2024-11-06 04:26:35.833152','8fc82741-932f-40b9-8ff3-c53cff3cb459','8fc82741-932f-40b9-8ff3-c53cff3cb459 (गोदान)',1,'[{\"added\": {}}]',9,1),(21,'2024-11-06 04:35:32.546193','9b9c3aca-10a0-471e-b571-2ccf55299674','9b9c3aca-10a0-471e-b571-2ccf55299674 (गोदान)',1,'[{\"added\": {}}]',9,1),(22,'2024-11-06 05:42:36.793553','1','Library Members',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(23,'2024-11-06 07:56:50.187453','3','krishna',1,'[{\"added\": {}}]',4,1),(24,'2024-11-06 07:57:31.234372','3','krishna',2,'[]',4,1),(25,'2024-11-06 09:34:13.991741','2','albertu',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',4,1),(26,'2024-11-06 09:35:39.333995','3','krishna',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,1),(27,'2024-11-06 09:43:26.072279','1','Library Members',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(28,'2024-11-06 09:46:07.319178','6','fsddfs, dsff',3,'',7,1),(29,'2024-11-09 01:14:50.542815','5','Science',1,'[{\"added\": {}}]',10,1),(30,'2024-11-09 01:15:40.085379','5','Science and technology',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',10,1),(31,'2024-11-09 01:16:08.785295','5','Theory of Everything',2,'[{\"changed\": {\"fields\": [\"Genre\"]}}]',8,1),(32,'2024-11-09 01:17:02.814679','a2c500f3-2084-4de7-b29b-1d8921461d47','a2c500f3-2084-4de7-b29b-1d8921461d47 (Theory of Everything)',1,'[{\"added\": {}}]',9,1),(33,'2024-11-09 01:18:58.311923','4','harshit',1,'[{\"added\": {}}]',4,1),(34,'2024-11-09 01:20:18.750840','b060cad1-b89e-4eba-8d55-2f04ec5c54b0','b060cad1-b89e-4eba-8d55-2f04ec5c54b0 (Theory of Everything)',1,'[{\"added\": {}}]',9,1),(35,'2024-11-09 01:21:35.041358','5dfd10b5-d5db-4cd6-ad46-99af4f90186b','5dfd10b5-d5db-4cd6-ad46-99af4f90186b (गोदान)',1,'[{\"added\": {}}]',9,1),(36,'2024-11-09 01:22:57.783193','5ced7a61-8c36-46ac-97f6-3f8fdd5f67a1','5ced7a61-8c36-46ac-97f6-3f8fdd5f67a1 (गोदान)',1,'[{\"added\": {}}]',9,1),(37,'2024-11-09 01:23:11.793762','80a41a09-cade-4a7a-ad19-73d802491050','80a41a09-cade-4a7a-ad19-73d802491050 (गोदान)',1,'[{\"added\": {}}]',9,1),(38,'2024-11-09 01:26:45.507358','1','Library Members',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'catalog','author'),(8,'catalog','book'),(9,'catalog','bookinstance'),(10,'catalog','genre'),(11,'catalog','language'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-11-05 15:20:11.473211'),(2,'auth','0001_initial','2024-11-05 15:20:32.980268'),(3,'admin','0001_initial','2024-11-05 15:20:38.036679'),(4,'admin','0002_logentry_remove_auto_add','2024-11-05 15:20:38.175298'),(5,'admin','0003_logentry_add_action_flag_choices','2024-11-05 15:20:38.321340'),(6,'contenttypes','0002_remove_content_type_name','2024-11-05 15:20:40.263751'),(7,'auth','0002_alter_permission_name_max_length','2024-11-05 15:20:42.925562'),(8,'auth','0003_alter_user_email_max_length','2024-11-05 15:20:43.503720'),(9,'auth','0004_alter_user_username_opts','2024-11-05 15:20:43.620680'),(10,'auth','0005_alter_user_last_login_null','2024-11-05 15:20:45.432558'),(11,'auth','0006_require_contenttypes_0002','2024-11-05 15:20:45.585621'),(12,'auth','0007_alter_validators_add_error_messages','2024-11-05 15:20:45.770628'),(13,'auth','0008_alter_user_username_max_length','2024-11-05 15:20:48.405672'),(14,'auth','0009_alter_user_last_name_max_length','2024-11-05 15:20:50.800560'),(15,'auth','0010_alter_group_name_max_length','2024-11-05 15:20:51.188603'),(16,'auth','0011_update_proxy_permissions','2024-11-05 15:20:51.339140'),(17,'auth','0012_alter_user_first_name_max_length','2024-11-05 15:20:53.750584'),(18,'catalog','0001_initial','2024-11-05 15:21:09.339861'),(19,'catalog','0002_language_book_language','2024-11-05 15:21:15.431553'),(20,'sessions','0001_initial','2024-11-05 15:21:16.801276'),(21,'catalog','0003_bookinstance_borrower','2024-11-05 17:16:54.118203'),(22,'catalog','0004_alter_bookinstance_options','2024-11-06 05:31:15.320159');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('4gb7qiy52p48uktcuilnwjo700t1nvwp','eyJudW1fdmlzaXRzIjoxfQ:1t8LuI:FV5cjghA90RLV2EODTAN5ePbm-PlB_Xp_2Tz1FkqKy8','2024-11-19 15:55:50.233562'),('h90463u6bedeyyzcga5hnz4kfk42zesn','.eJxVjDkOwyAUBe9CHaEPAYxdpvcZ0GeLyQKSgTRR7h5bcpG0b-bNmxjsbTG9htUkTybCyOl3s-juIe_A3zBfC3UltzVZuiv0oJXOxYfH5XD_AgvWZXuPkkG0CjWA0GcEKRXnEBl4kE7EGPwgtWKcKSUQHQQRFXA-ajtw6wRu0dyf5pVqapVM7PMFFco8IQ:1t9aEo:Ter7SnS-4tFGY3FIJPPYx-US_nUzZKLVk7neRIQHgZA','2024-11-23 01:26:06.914906'),('wqakb8nrjn4uclab6a6ripw2ftj5c5fu','eyJudW1fdmlzaXRzIjoxfQ:1t8ts0:TRZLddiMM5-qNRBD3Tj5SEf0Ewg5SCCNxvdlOg4Ln8U','2024-11-21 04:11:44.353433');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-09  7:00:14
