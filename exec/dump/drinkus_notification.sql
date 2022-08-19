-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: i7b306.p.ssafy.io    Database: drinkus
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `notification_id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,'2022-08-16 14:10:14','2022-08-16 14:10:14','가나다라마님의 글에 댓글이 달렸습니다.',3),(2,'2022-08-16 14:11:46','2022-08-16 14:11:46','유연한 코끼리인형님의 일정에 누군가가 참여했습니다',15),(3,'2022-08-16 14:12:55','2022-08-16 14:12:55','유연한 코끼리인형님의 일정에 누군가가 참여했습니다',15),(4,'2022-08-16 14:17:59','2022-08-16 14:17:59','거짓말 못하는 문돌이님의 글에 댓글이 달렸습니다.',16),(5,'2022-08-16 14:27:30','2022-08-16 14:27:30','나약해빠진 곽철용님의 일정에 누군가가 참여했습니다',25),(6,'2022-08-16 14:45:00','2022-08-16 14:45:00','가나다라마님의 일정에 누군가가 참여했습니다',3),(7,'2022-08-16 15:09:44','2022-08-16 15:09:44','기력없는 인기남님의 일정에 누군가가 참여했습니다',26),(8,'2022-08-16 15:28:34','2022-08-16 15:28:34','로또 매일 사는 아이폰님의 일정에 누군가가 참여했습니다',24),(9,'2022-08-16 15:30:14','2022-08-16 15:30:14','로또 매일 사는 아이폰님의 일정에 누군가가 참여했습니다',24),(10,'2022-08-16 15:30:19','2022-08-16 15:30:19','로또 매일 사는 아이폰님의 일정에 누군가가 참여했습니다',24),(11,'2022-08-16 15:36:11','2022-08-16 15:36:11','로또 매일 사는 아이폰님의 일정에 누군가가 참여했습니다',24),(12,'2022-08-16 15:36:17','2022-08-16 15:36:17','로또 매일 사는 아이폰님의 일정에 누군가가 참여했습니다',24),(13,'2022-08-16 15:37:41','2022-08-16 15:37:41','나약해빠진 곽철용님의 일정에 누군가가 참여했습니다',25),(14,'2022-08-16 15:37:48','2022-08-16 15:37:48','나약해빠진 곽철용님의 일정에 누군가가 참여했습니다',25),(15,'2022-08-16 15:38:02','2022-08-16 15:38:02','로또 매일 사는 아이폰님의 일정에 누군가가 참여했습니다',24),(16,'2022-08-16 15:38:28','2022-08-16 15:38:28','로또 매일 사는 아이폰님의 일정에 누군가가 참여했습니다',24),(17,'2022-08-16 15:38:39','2022-08-16 15:38:39','로또 매일 사는 아이폰님의 일정에 누군가가 참여했습니다',24),(18,'2022-08-16 15:40:02','2022-08-16 15:40:02','로또 매일 사는 아이폰님의 일정에 누군가가 참여했습니다',24),(19,'2022-08-16 15:44:49','2022-08-16 15:44:49','로또 매일 사는 아이폰님의 일정에 누군가가 참여했습니다',24),(20,'2022-08-16 15:47:53','2022-08-16 15:47:53','로또 매일 사는 아이폰님의 일정에 누군가가 참여했습니다',24),(21,'2022-08-16 15:50:26','2022-08-16 15:50:26','로또 매일 사는 아이폰님의 일정에 누군가가 참여했습니다',24),(22,'2022-08-16 15:50:32','2022-08-16 15:50:32','로또 매일 사는 아이폰님의 일정에 누군가가 참여했습니다',24),(23,'2022-08-16 15:50:54','2022-08-16 15:50:54','로또 매일 사는 아이폰님의 일정에 누군가가 참여했습니다',24),(24,'2022-08-16 15:51:04','2022-08-16 15:51:04','로또 매일 사는 아이폰님의 일정에 누군가가 참여했습니다',24),(25,'2022-08-16 15:57:03','2022-08-16 15:57:03','나약해빠진 바다거북님의 일정에 누군가가 참여했습니다',1),(26,'2022-08-16 15:59:23','2022-08-16 15:59:23','로또 매일 사는 아이폰님의 일정에 누군가가 참여했습니다',24),(27,'2022-08-16 15:59:40','2022-08-16 15:59:40','로또 매일 사는 아이폰님의 일정에 누군가가 참여했습니다',24),(28,'2022-08-16 16:02:18','2022-08-16 16:02:18','자세히보면 착한 초가집님의 일정에 누군가가 참여했습니다',5),(29,'2022-08-16 18:02:03','2022-08-16 18:02:03','가나다라마님의 일정에 누군가가 참여했습니다',3),(30,'2022-08-16 20:32:07','2022-08-16 20:32:07','거짓말 못하는 문돌이님의 글에 댓글이 달렸습니다.',16),(31,'2022-08-16 20:33:51','2022-08-16 20:33:51','나약해빠진 바다거북님의 일정에 누군가가 참여했습니다',1),(32,'2022-08-16 20:34:06','2022-08-16 20:34:06','가나다라마님의 일정에 누군가가 참여했습니다',3),(33,'2022-08-16 20:34:36','2022-08-16 20:34:36','나약해빠진 바다거북님의 일정에 누군가가 참여했습니다',1),(34,'2022-08-16 21:02:41','2022-08-16 21:02:41','기력없는 인기남님의 일정에 누군가가 참여했습니다',26),(35,'2022-08-16 21:03:15','2022-08-16 21:03:15','기력없는 인기남님의 일정에 누군가가 참여했습니다',26),(36,'2022-08-16 21:18:31','2022-08-16 21:18:31','기력없는 인기남님의 일정에 누군가가 참여했습니다',26),(37,'2022-08-17 02:23:18','2022-08-17 02:23:18','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(38,'2022-08-17 02:25:04','2022-08-17 02:25:04','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(39,'2022-08-17 02:25:58','2022-08-17 02:25:58','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(40,'2022-08-17 02:26:32','2022-08-17 02:26:32','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(41,'2022-08-17 02:27:01','2022-08-17 02:27:01','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(42,'2022-08-17 02:27:20','2022-08-17 02:27:20','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(43,'2022-08-17 02:29:14','2022-08-17 02:29:14','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(44,'2022-08-17 02:29:31','2022-08-17 02:29:31','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(45,'2022-08-17 02:30:04','2022-08-17 02:30:04','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(46,'2022-08-17 02:31:50','2022-08-17 02:31:50','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(47,'2022-08-17 02:34:41','2022-08-17 02:34:41','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(48,'2022-08-17 02:35:41','2022-08-17 02:35:41','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(49,'2022-08-17 02:37:23','2022-08-17 02:37:23','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(50,'2022-08-17 02:37:33','2022-08-17 02:37:33','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(51,'2022-08-17 02:38:40','2022-08-17 02:38:40','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(52,'2022-08-17 02:38:58','2022-08-17 02:38:58','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(53,'2022-08-17 02:39:06','2022-08-17 02:39:06','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(54,'2022-08-17 02:39:09','2022-08-17 02:39:09','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(55,'2022-08-17 02:42:59','2022-08-17 02:42:59','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(56,'2022-08-17 02:43:28','2022-08-17 02:43:28','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(57,'2022-08-17 02:48:38','2022-08-17 02:48:38','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(58,'2022-08-17 02:48:45','2022-08-17 02:48:45','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(59,'2022-08-17 02:51:55','2022-08-17 02:51:55','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(60,'2022-08-17 02:55:28','2022-08-17 02:55:28','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(61,'2022-08-17 02:56:45','2022-08-17 02:56:45','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(62,'2022-08-17 02:59:04','2022-08-17 02:59:04','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(63,'2022-08-17 02:59:13','2022-08-17 02:59:13','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(64,'2022-08-17 03:11:16','2022-08-17 03:11:16','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(65,'2022-08-17 03:11:38','2022-08-17 03:11:38','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(66,'2022-08-17 03:22:37','2022-08-17 03:22:37','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(67,'2022-08-17 03:42:42','2022-08-17 03:42:42','자세히보면 착한 초가집님의 일정에 누군가가 참여했습니다',5),(68,'2022-08-17 03:43:17','2022-08-17 03:43:17','자세히보면 착한 초가집님의 일정에 누군가가 참여했습니다',5),(69,'2022-08-17 03:44:19','2022-08-17 03:44:19','자세히보면 착한 초가집님의 일정에 누군가가 참여했습니다',5),(70,'2022-08-17 03:45:28','2022-08-17 03:45:28','자세히보면 착한 초가집님의 일정에 누군가가 참여했습니다',5),(71,'2022-08-17 03:46:51','2022-08-17 03:46:51','나약해빠진 바다거북님의 일정에 누군가가 참여했습니다',1),(72,'2022-08-17 04:38:07','2022-08-17 04:38:07','자세히보면 착한 초가집님의 일정에 누군가가 참여했습니다',5),(73,'2022-08-17 13:47:49','2022-08-17 13:47:49','수석입학한 솜이불님의 글에 댓글이 달렸습니다.',2),(74,'2022-08-17 13:51:07','2022-08-17 13:51:07','고구마치즈불닭님의 일정에 누군가가 참여했습니다',3),(75,'2022-08-17 14:34:51','2022-08-17 14:34:51','수석입학한 솜이불님의 글에 댓글이 달렸습니다.',2),(76,'2022-08-17 14:34:52','2022-08-17 14:34:52','수석입학한 솜이불님의 글에 댓글이 달렸습니다.',2),(77,'2022-08-17 14:35:06','2022-08-17 14:35:06','수석입학한 솜이불님의 글에 댓글이 달렸습니다.',2),(78,'2022-08-17 14:38:46','2022-08-17 14:38:46','유연한 코끼리인형님의 글에 댓글이 달렸습니다.',15),(79,'2022-08-17 14:38:51','2022-08-17 14:38:51','유연한 코끼리인형님의 글에 댓글이 달렸습니다.',15),(80,'2022-08-17 14:38:52','2022-08-17 14:38:52','유연한 코끼리인형님의 글에 댓글이 달렸습니다.',15),(81,'2022-08-17 14:54:15','2022-08-17 14:54:15','수석입학한 솜이불님의 글에 댓글이 달렸습니다.',2),(82,'2022-08-17 14:59:52','2022-08-17 14:59:52','수석입학한 솜이불님의 글에 댓글이 달렸습니다.',2),(83,'2022-08-17 14:59:54','2022-08-17 14:59:54','수석입학한 솜이불님의 글에 댓글이 달렸습니다.',2),(84,'2022-08-17 14:59:54','2022-08-17 14:59:54','수석입학한 솜이불님의 글에 댓글이 달렸습니다.',2),(85,'2022-08-17 15:03:23','2022-08-17 15:03:23','배터리가 다 닳은 쿠키님의 일정에 누군가가 참여했습니다',6),(86,'2022-08-17 15:04:27','2022-08-17 15:04:27','수석입학한 솜이불님의 글에 댓글이 달렸습니다.',2),(87,'2022-08-17 15:07:31','2022-08-17 15:07:31','수석입학한 솜이불님의 글에 댓글이 달렸습니다.',2),(88,'2022-08-17 15:08:04','2022-08-17 15:08:04','수석입학한 솜이불님의 글에 댓글이 달렸습니다.',2),(89,'2022-08-17 15:09:06','2022-08-17 15:09:06','수석입학한 솜이불님의 글에 댓글이 달렸습니다.',2),(90,'2022-08-17 16:03:01','2022-08-17 16:03:01','수석입학한 솜이불님의 글에 댓글이 달렸습니다.',2),(91,'2022-08-17 16:03:04','2022-08-17 16:03:04','수석입학한 솜이불님의 글에 댓글이 달렸습니다.',2),(92,'2022-08-17 16:19:40','2022-08-17 16:19:40','수석입학한 솜이불님의 글에 댓글이 달렸습니다.',2),(93,'2022-08-17 16:19:43','2022-08-17 16:19:43','수석입학한 솜이불님의 글에 댓글이 달렸습니다.',2),(94,'2022-08-17 16:19:47','2022-08-17 16:19:47','수석입학한 솜이불님의 글에 댓글이 달렸습니다.',2),(95,'2022-08-17 17:01:14','2022-08-17 17:01:14','수석입학한 솜이불님의 글에 댓글이 달렸습니다.',2),(96,'2022-08-17 17:02:50','2022-08-17 17:02:50','수석입학한 솜이불님의 글에 댓글이 달렸습니다.',2),(97,'2022-08-17 17:33:21','2022-08-17 17:33:21','수석입학한 솜이불님의 글에 댓글이 달렸습니다.',2),(98,'2022-08-17 17:33:48','2022-08-17 17:33:48','수석입학한 솜이불님의 글에 댓글이 달렸습니다.',2),(99,'2022-08-17 17:42:58','2022-08-17 17:42:58','수석입학한 솜이불님의 글에 댓글이 달렸습니다.',2),(100,'2022-08-17 17:44:01','2022-08-17 17:44:01','수석입학한 솜이불님의 글에 댓글이 달렸습니다.',2),(101,'2022-08-17 20:18:56','2022-08-17 20:18:56','고구마치즈불닭님의 일정에 누군가가 참여했습니다',3),(102,'2022-08-17 20:32:14','2022-08-17 20:32:14','고구마치즈불닭님의 일정에 누군가가 참여했습니다',3),(103,'2022-08-17 20:32:26','2022-08-17 20:32:26','고구마치즈불닭님의 일정에 누군가가 참여했습니다',3),(104,'2022-08-17 20:33:16','2022-08-17 20:33:16','자세히보면 착한 초가집님의 일정에 누군가가 참여했습니다',5),(105,'2022-08-17 20:33:21','2022-08-17 20:33:21','자세히보면 착한 초가집님의 일정에 누군가가 참여했습니다',5),(106,'2022-08-17 20:48:48','2022-08-17 20:48:48','기력없는 인기남님의 글에 댓글이 달렸습니다.',26),(107,'2022-08-17 21:57:08','2022-08-17 21:57:08','드링커스짱님의 일정에 누군가가 참여했습니다',34),(108,'2022-08-17 23:02:10','2022-08-17 23:02:10','드링커스짱님의 일정에 누군가가 참여했습니다',34),(109,'2022-08-17 23:02:16','2022-08-17 23:02:16','드링커스짱님의 일정에 누군가가 참여했습니다',34),(110,'2022-08-17 23:02:23','2022-08-17 23:02:23','자세히보면 착한 초가집님의 일정에 누군가가 참여했습니다',5),(111,'2022-08-17 23:02:33','2022-08-17 23:02:33','자세히보면 착한 초가집님의 일정에 누군가가 참여했습니다',5),(112,'2022-08-17 23:02:38','2022-08-17 23:02:38','배터리가 다 닳은 쿠키님의 일정에 누군가가 참여했습니다',6),(113,'2022-08-17 23:04:33','2022-08-17 23:04:33','드링커스짱님의 일정에 누군가가 참여했습니다',34),(114,'2022-08-17 23:04:54','2022-08-17 23:04:54','드링커스짱님의 일정에 누군가가 참여했습니다',34),(115,'2022-08-17 23:06:06','2022-08-17 23:06:06','나약해빠진 바다거북님의 일정에 누군가가 참여했습니다',1),(116,'2022-08-17 23:07:34','2022-08-17 23:07:34','나약해빠진 바다거북님의 일정에 누군가가 참여했습니다',1),(117,'2022-08-17 23:10:12','2022-08-17 23:10:12','나약해빠진 바다거북님의 일정에 누군가가 참여했습니다',1),(118,'2022-08-17 23:10:23','2022-08-17 23:10:23','나약해빠진 바다거북님의 일정에 누군가가 참여했습니다',1),(119,'2022-08-17 23:11:28','2022-08-17 23:11:28','자세히보면 착한 초가집님의 일정에 누군가가 참여했습니다',5),(120,'2022-08-17 23:11:36','2022-08-17 23:11:36','자세히보면 착한 초가집님의 일정에 누군가가 참여했습니다',5),(121,'2022-08-17 23:20:04','2022-08-17 23:20:04','자세히보면 착한 초가집님의 일정에 누군가가 참여했습니다',5),(122,'2022-08-17 23:23:04','2022-08-17 23:23:04','나약해빠진 바다거북님의 일정에 누군가가 참여했습니다',1),(123,'2022-08-17 23:23:18','2022-08-17 23:23:18','나약해빠진 바다거북님의 일정에 누군가가 참여했습니다',1),(124,'2022-08-17 23:23:29','2022-08-17 23:23:29','나약해빠진 바다거북님의 일정에 누군가가 참여했습니다',1),(125,'2022-08-17 23:32:44','2022-08-17 23:32:44','고구마치즈불닭님의 일정에 누군가가 참여했습니다',3),(126,'2022-08-18 00:07:44','2022-08-18 00:07:44','수석입학한 솜이불님의 글에 댓글이 달렸습니다.',2),(127,'2022-08-18 00:07:47','2022-08-18 00:07:47','수석입학한 솜이불님의 글에 댓글이 달렸습니다.',2),(128,'2022-08-18 03:28:42','2022-08-18 03:28:42','거짓말 못하는 문돌이님의 글에 댓글이 달렸습니다.',16),(129,'2022-08-18 03:28:45','2022-08-18 03:28:45','거짓말 못하는 문돌이님의 글에 댓글이 달렸습니다.',16),(130,'2022-08-18 08:50:58','2022-08-18 08:50:58','나약해빠진 바다거북님의 일정에 누군가가 참여했습니다',1),(131,'2022-08-18 09:07:12','2022-08-18 09:07:12','고구마치즈불닭님의 일정에 누군가가 참여했습니다',3),(132,'2022-08-18 09:10:55','2022-08-18 09:10:55','나약해빠진 바다거북님의 글에 댓글이 달렸습니다.',1),(133,'2022-08-18 09:35:59','2022-08-18 09:35:59','배터리가 다 닳은 쿠키님의 일정에 누군가가 참여했습니다',6),(134,'2022-08-18 09:36:06','2022-08-18 09:36:06','배터리가 다 닳은 쿠키님의 일정에 누군가가 참여했습니다',6),(135,'2022-08-18 09:36:12','2022-08-18 09:36:12','배터리가 다 닳은 쿠키님의 일정에 누군가가 참여했습니다',6),(136,'2022-08-18 09:36:54','2022-08-18 09:36:54','자세히보면 착한 초가집님의 일정에 누군가가 참여했습니다',5),(137,'2022-08-18 09:39:34','2022-08-18 09:39:34','배터리가 다 닳은 쿠키님의 일정에 누군가가 참여했습니다',6),(138,'2022-08-18 09:57:38','2022-08-18 09:57:38','수석입학한 솜이불님의 일정에 누군가가 참여했습니다',2),(139,'2022-08-18 09:59:57','2022-08-18 09:59:57','배터리가 다 닳은 쿠키님의 일정에 누군가가 참여했습니다',6),(140,'2022-08-18 10:02:39','2022-08-18 10:02:39','과제하는 엽기토끼님의 글에 댓글이 달렸습니다.',43),(141,'2022-08-18 10:04:49','2022-08-18 10:04:49','배터리가 다 닳은 쿠키님의 일정에 누군가가 참여했습니다',6),(142,'2022-08-18 10:14:42','2022-08-18 10:14:42','유달래님의 일정에 누군가가 참여했습니다',15),(143,'2022-08-18 10:47:44','2022-08-18 10:47:44','도믿맨님의 글에 댓글이 달렸습니다.',43),(144,'2022-08-18 13:26:36','2022-08-18 13:26:36','배터리가 다 닳은 쿠키님의 글에 댓글이 달렸습니다.',6),(145,'2022-08-18 13:28:11','2022-08-18 13:28:11','배터리가 다 닳은 쿠키님의 글에 댓글이 달렸습니다.',6),(146,'2022-08-18 13:28:49','2022-08-18 13:28:49','드링커스짱님의 글에 댓글이 달렸습니다.',34),(147,'2022-08-18 13:32:37','2022-08-18 13:32:37','도믿맨님의 글에 댓글이 달렸습니다.',43),(148,'2022-08-18 13:34:37','2022-08-18 13:34:37','배터리가 다 닳은 쿠키님의 글에 댓글이 달렸습니다.',6),(149,'2022-08-18 13:41:13','2022-08-18 13:41:13','유달래님의 일정에 누군가가 참여했습니다',15),(150,'2022-08-18 14:18:49','2022-08-18 14:18:49','유달래님의 일정에 누군가가 참여했습니다',15),(151,'2022-08-18 15:16:56','2022-08-18 15:16:56','도믿맨님의 일정에 누군가가 참여했습니다',43),(152,'2022-08-18 15:18:18','2022-08-18 15:18:18','유달래님의 일정에 누군가가 참여했습니다',15),(153,'2022-08-18 15:18:35','2022-08-18 15:18:35','도믿맨님의 일정에 누군가가 참여했습니다',43),(154,'2022-08-18 15:23:25','2022-08-18 15:23:25','거짓말 못하는 문돌이님의 글에 댓글이 달렸습니다.',16),(155,'2022-08-18 15:25:01','2022-08-18 15:25:01','배터리가 다 닳은 쿠키님의 글에 댓글이 달렸습니다.',6),(156,'2022-08-18 15:26:59','2022-08-18 15:26:59','도믿맨님의 일정에 누군가가 참여했습니다',43),(157,'2022-08-18 15:27:04','2022-08-18 15:27:04','도믿맨님의 일정에 누군가가 참여했습니다',43),(158,'2022-08-18 15:27:32','2022-08-18 15:27:32','도믿맨님의 일정에 누군가가 참여했습니다',43),(159,'2022-08-18 15:41:00','2022-08-18 15:41:00','거짓말 못하는 문돌이님의 글에 댓글이 달렸습니다.',16),(160,'2022-08-18 15:41:04','2022-08-18 15:41:04','유달래님의 글에 댓글이 달렸습니다.',15),(161,'2022-08-18 17:33:23','2022-08-18 17:33:23','수석입학한 솜이불님의 일정에 누군가가 참여했습니다',2),(162,'2022-08-18 17:44:16','2022-08-18 17:44:16','나약해빠진 바다거북님의 일정에 누군가가 참여했습니다',1),(163,'2022-08-18 20:57:43','2022-08-18 20:57:43','도믿맨님의 글에 댓글이 달렸습니다.',43),(164,'2022-08-18 20:57:53','2022-08-18 20:57:53','유달래님의 글에 댓글이 달렸습니다.',15),(165,'2022-08-18 21:05:02','2022-08-18 21:05:02','치타보다 빠른 훈제계란님의 일정에 누군가가 참여했습니다',9),(166,'2022-08-18 21:14:12','2022-08-18 21:14:12','블랑조아님의 글에 댓글이 달렸습니다.',46),(167,'2022-08-18 21:30:27','2022-08-18 21:30:27','이케아 출신 안경잡이님의 일정에 누군가가 참여했습니다',10),(168,'2022-08-18 22:28:59','2022-08-18 22:28:59','유달래님의 글에 댓글이 달렸습니다.',15),(169,'2022-08-18 22:35:09','2022-08-18 22:35:09','고구마치즈불닭님의 일정에 누군가가 참여했습니다',3),(170,'2022-08-18 22:36:13','2022-08-18 22:36:13','고구마치즈불닭님의 일정에 누군가가 참여했습니다',3),(171,'2022-08-18 22:36:13','2022-08-18 22:36:13','고구마치즈불닭님의 일정에 누군가가 참여했습니다',3),(172,'2022-08-18 22:36:23','2022-08-18 22:36:23','블랑조아님의 일정에 누군가가 참여했습니다',46),(173,'2022-08-18 22:36:43','2022-08-18 22:36:43','유달래님의 일정에 누군가가 참여했습니다',15),(174,'2022-08-18 22:36:58','2022-08-18 22:36:58','블랑조아님의 일정에 누군가가 참여했습니다',46),(175,'2022-08-18 22:37:41','2022-08-18 22:37:41','고구마치즈불닭님의 일정에 누군가가 참여했습니다',3),(176,'2022-08-18 22:37:47','2022-08-18 22:37:47','고구마치즈불닭님의 일정에 누군가가 참여했습니다',3),(177,'2022-08-18 22:37:49','2022-08-18 22:37:49','고구마치즈불닭님의 일정에 누군가가 참여했습니다',3),(178,'2022-08-18 22:37:52','2022-08-18 22:37:52','고구마치즈불닭님의 일정에 누군가가 참여했습니다',3),(179,'2022-08-18 22:37:55','2022-08-18 22:37:55','고구마치즈불닭님의 일정에 누군가가 참여했습니다',3),(180,'2022-08-18 22:40:34','2022-08-18 22:40:34','거짓말 못하는 문돌이님의 글에 댓글이 달렸습니다.',16),(181,'2022-08-18 22:53:12','2022-08-18 22:53:12','이케아 출신 안경잡이님의 일정에 누군가가 참여했습니다',10),(182,'2022-08-18 22:53:36','2022-08-18 22:53:36','블랑조아님의 일정에 누군가가 참여했습니다',46),(183,'2022-08-19 08:52:19','2022-08-19 08:52:19','거짓말 못하는 문돌이님의 일정에 누군가가 참여했습니다',16),(184,'2022-08-19 08:52:33','2022-08-19 08:52:33','유달래님의 일정에 누군가가 참여했습니다',15),(185,'2022-08-19 08:53:00','2022-08-19 08:53:00','자세히보면 착한 초가집님의 일정에 누군가가 참여했습니다',5),(186,'2022-08-19 08:53:41','2022-08-19 08:53:41','거짓말 못하는 문돌이님의 일정에 누군가가 참여했습니다',16),(187,'2022-08-19 10:56:15','2022-08-19 10:56:15','이케아 출신 안경잡이님의 일정에 누군가가 참여했습니다',10);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-19 11:58:45
