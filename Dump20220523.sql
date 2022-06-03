CREATE DATABASE  IF NOT EXISTS `games_friends` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `games_friends`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: games_friends
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `avatars`
--

DROP TABLE IF EXISTS `avatars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avatars` (
  `id_avatar` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_avatar`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avatars`
--

LOCK TABLES `avatars` WRITE;
/*!40000 ALTER TABLE `avatars` DISABLE KEYS */;
INSERT INTO `avatars` VALUES (1,'https://th.bing.com/th/id/R.eaa2cf09c59097b1b574bf7100d6670c?rik=w8GgqF7tC7e%2fqg&pid=ImgRaw&r=0'),(2,'https://img.freepik.com/vector-gratis/mujer-avatar-mujer-negocios_38295-63.jpg');
/*!40000 ALTER TABLE `avatars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_game` varchar(30) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (1,'Apex Legends','https://media.contentapi.ea.com/content/dam/apex-legends/images/2019/01/apex-featured-image-16x9.jpg.adapt.crop191x100.1200w.jpg'),(2,'League of Legends','https://cdn1.epicgames.com/salesEvent/salesEvent/EGS_LeagueofLegends_RiotGames_S1_2560x1440-ee500721c06da3ec1e5535a88588c77f'),(3,'Clash Royal','https://i0.wp.com/hipertextual.com/wp-content/uploads/2016/03/Clash-Royale.jpg?fit=1920%2C1080&ssl=1'),(4,'Destiny 2','https://i0.wp.com/hipertextual.com/wp-content/uploads/2017/07/destiny-2-art.jpg?fit=1900%2C1068&ssl=1'),(5,'Fortnite','https://cdn2.unrealengine.com/7up-3840x2160-c93d04c02c26.jpg'),(6,'CoD Warzone','https://i.blogs.es/b2ec36/warzone/1366_2000.jpeg'),(7,'Forza Horizon','https://as01.epimg.net/meristation/imagenes/2021/08/24/avances/1629800665_344472_1629831999_noticia_normal.jpg'),(8,'Among Us','https://cdn1.epicgames.com/salesEvent/salesEvent/amoguslandscape_2560x1440-3fac17e8bb45d81ec9b2c24655758075'),(9,'Dauntless','https://cdn1.epicgames.com/offer/jackal/EGS_LIVEFORTHEHUNT_PhoenixLabs_S1_2560x1440-31d4f38bafdc9cb1185c2d52786e6c70');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id_post` int NOT NULL AUTO_INCREMENT,
  `post` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int NOT NULL,
  `game_id` int NOT NULL,
  PRIMARY KEY (`id_post`),
  KEY `user_id` (`user_id`),
  KEY `game_id` (`game_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`game_id`) REFERENCES `games` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Mi primer mensaje','2001-12-25 00:00:00',4,1),(2,'Hola','2001-12-25 00:00:00',4,1),(3,'Holas','2001-12-25 00:00:00',4,1),(4,'Vamos','2001-12-25 00:00:00',4,1),(5,'no sirve el fetch','2001-12-25 00:00:00',4,1),(6,'mensaje desde postman','2001-12-25 00:00:00',4,1),(7,'web','2001-12-25 00:00:00',4,1),(8,'web','2001-12-25 00:00:00',4,1),(9,'Segundo mensaje en web','2001-12-25 00:00:00',4,1),(10,'tercer mensaje web','2001-12-25 00:00:00',4,1),(11,'Promise','2001-12-25 00:00:00',4,1),(12,'Promise resolved','2001-12-25 00:00:00',4,1),(13,'Promise resolved','2001-12-25 00:00:00',4,1),(14,'mmm','2001-12-25 00:00:00',4,1),(15,'Hola soy Kevin','2001-12-25 00:00:00',4,1),(16,'Hola soy Kevin','2001-12-25 00:00:00',4,1),(17,'Prueba','2001-12-25 00:00:00',4,1),(18,'Emmm','2001-12-25 00:00:00',4,1),(19,'pero','2001-12-25 00:00:00',4,1),(20,'ok','2001-12-25 00:00:00',4,1),(21,'ola','2001-12-25 00:00:00',4,1),(22,'a sio','2001-12-25 00:00:00',4,1),(23,'Mensaje desde clash royal','2001-12-25 00:00:00',4,3),(24,'Soy el admin','2001-12-25 00:00:00',6,3);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nickname` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `avatar_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `avatar_id` (`avatar_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`avatar_id`) REFERENCES `avatars` (`id_avatar`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'kevin','312312312','kevin.baron@educar.com.co','$2b$10$DqRhr3SYxkIz7.p54MH99uuwDdv2xGf8jUau15mMzJCpaqLO8SyqW',1),(6,'admin','3134652605','prueba@gmail.com','$2b$10$.Wru5TszdRoRtp1bkUM9z.l8.zNzVP9TByhkjjn/wndzh3VnYqmUC',2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-23 16:04:55
