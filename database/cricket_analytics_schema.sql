CREATE DATABASE  IF NOT EXISTS `cricket_analytics_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cricket_analytics_db`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: cricket_analytics_db
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `ball_by_ball`
--

DROP TABLE IF EXISTS `ball_by_ball`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ball_by_ball` (
  `ball_id` int NOT NULL AUTO_INCREMENT,
  `match_id` int DEFAULT NULL,
  `innings_number` int DEFAULT NULL,
  `over_number` int DEFAULT NULL,
  `ball_number` int DEFAULT NULL,
  `batting_team_id` int DEFAULT NULL,
  `bowling_team_id` int DEFAULT NULL,
  `striker_id` int DEFAULT NULL,
  `non_striker_id` int DEFAULT NULL,
  `bowler_id` int DEFAULT NULL,
  `runs_scored` int DEFAULT '0',
  `extras` int DEFAULT '0',
  `extra_type` varchar(30) DEFAULT NULL,
  `wicket_flag` tinyint(1) DEFAULT '0',
  `wicket_type` varchar(40) DEFAULT NULL,
  `fielder_id` int DEFAULT NULL,
  PRIMARY KEY (`ball_id`),
  UNIQUE KEY `match_id` (`match_id`,`innings_number`,`over_number`,`ball_number`),
  KEY `batting_team_id` (`batting_team_id`),
  KEY `bowling_team_id` (`bowling_team_id`),
  KEY `non_striker_id` (`non_striker_id`),
  KEY `fielder_id` (`fielder_id`),
  KEY `idx_bbb_striker` (`striker_id`),
  KEY `idx_bbb_bowler` (`bowler_id`),
  KEY `idx_bbb_match` (`match_id`),
  KEY `idx_bbb_match_innings` (`match_id`,`innings_number`),
  KEY `idx_bbb_over` (`over_number`),
  KEY `idx_bbb_match_over` (`match_id`,`over_number`),
  CONSTRAINT `ball_by_ball_ibfk_1` FOREIGN KEY (`match_id`) REFERENCES `matches` (`match_id`),
  CONSTRAINT `ball_by_ball_ibfk_2` FOREIGN KEY (`batting_team_id`) REFERENCES `teams` (`team_id`),
  CONSTRAINT `ball_by_ball_ibfk_3` FOREIGN KEY (`bowling_team_id`) REFERENCES `teams` (`team_id`),
  CONSTRAINT `ball_by_ball_ibfk_4` FOREIGN KEY (`striker_id`) REFERENCES `players` (`player_id`),
  CONSTRAINT `ball_by_ball_ibfk_5` FOREIGN KEY (`non_striker_id`) REFERENCES `players` (`player_id`),
  CONSTRAINT `ball_by_ball_ibfk_6` FOREIGN KEY (`bowler_id`) REFERENCES `players` (`player_id`),
  CONSTRAINT `ball_by_ball_ibfk_7` FOREIGN KEY (`fielder_id`) REFERENCES `players` (`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ball_by_ball`
--

LOCK TABLES `ball_by_ball` WRITE;
/*!40000 ALTER TABLE `ball_by_ball` DISABLE KEYS */;
INSERT INTO `ball_by_ball` VALUES (1,1,1,1,1,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(2,1,1,1,2,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(3,1,1,1,3,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(4,1,1,1,4,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(5,1,1,1,5,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(6,1,1,1,6,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(7,1,1,2,1,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(8,1,1,2,2,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(9,1,1,2,3,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(10,1,1,2,4,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(11,1,1,2,5,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(12,1,1,2,6,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(13,1,1,3,1,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(14,1,1,3,2,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(15,1,1,3,3,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(16,1,1,3,4,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(17,1,1,3,5,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(18,1,1,3,6,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(19,1,1,4,1,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(20,1,1,4,2,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(21,1,1,4,3,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(22,1,1,4,4,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(23,1,1,4,5,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(24,1,1,4,6,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(25,1,1,5,1,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(26,1,1,5,2,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(27,1,1,5,3,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(28,1,1,5,4,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(29,1,1,5,5,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(30,1,1,5,6,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(31,1,1,6,1,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(32,1,1,6,2,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(33,1,1,6,3,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(34,1,1,6,4,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(35,1,1,6,5,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(36,1,1,6,6,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(37,1,1,7,1,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(38,1,1,7,2,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(39,1,1,7,3,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(40,1,1,7,4,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(41,1,1,7,5,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(42,1,1,7,6,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(43,1,1,8,1,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(44,1,1,8,2,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(45,1,1,8,3,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(46,1,1,8,4,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(47,1,1,8,5,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(48,1,1,8,6,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(49,1,1,9,1,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(50,1,1,9,2,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(51,1,1,9,3,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(52,1,1,9,4,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(53,1,1,9,5,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(54,1,1,9,6,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(55,1,1,10,1,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(56,1,1,10,2,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(57,1,1,10,3,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(58,1,1,10,4,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(59,1,1,10,5,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(60,1,1,10,6,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(61,1,1,11,1,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(62,1,1,11,2,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(63,1,1,11,3,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(64,1,1,11,4,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(65,1,1,11,5,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(66,1,1,11,6,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(67,1,1,12,1,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(68,1,1,12,2,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(69,1,1,12,3,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(70,1,1,12,4,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(71,1,1,12,5,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(72,1,1,12,6,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(73,1,1,13,1,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(74,1,1,13,2,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(75,1,1,13,3,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(76,1,1,13,4,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(77,1,1,13,5,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(78,1,1,13,6,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(79,1,1,14,1,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(80,1,1,14,2,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(81,1,1,14,3,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(82,1,1,14,4,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(83,1,1,14,5,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(84,1,1,14,6,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(85,1,1,15,1,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(86,1,1,15,2,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(87,1,1,15,3,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(88,1,1,15,4,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(89,1,1,15,5,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(90,1,1,15,6,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(91,1,1,16,1,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(92,1,1,16,2,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(93,1,1,16,3,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(94,1,1,16,4,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(95,1,1,16,5,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(96,1,1,16,6,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(97,1,1,17,1,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(98,1,1,17,2,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(99,1,1,17,3,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(100,1,1,17,4,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(101,1,1,17,5,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(102,1,1,17,6,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(103,1,1,18,1,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(104,1,1,18,2,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(105,1,1,18,3,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(106,1,1,18,4,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(107,1,1,18,5,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(108,1,1,18,6,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(109,1,1,19,1,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(110,1,1,19,2,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(111,1,1,19,3,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(112,1,1,19,4,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(113,1,1,19,5,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(114,1,1,19,6,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(115,1,1,20,1,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(116,1,1,20,2,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(117,1,1,20,3,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(118,1,1,20,4,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(119,1,1,20,5,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(120,1,1,20,6,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(121,1,1,21,1,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(122,1,1,21,2,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(123,1,1,21,3,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(124,1,1,21,4,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(125,1,1,21,5,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(126,1,1,21,6,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(127,1,1,22,1,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(128,1,1,22,2,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(129,1,1,22,3,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(130,1,1,22,4,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(131,1,1,22,5,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(132,1,1,22,6,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(133,1,1,23,1,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(134,1,1,23,2,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(135,1,1,23,3,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(136,1,1,23,4,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(137,1,1,23,5,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(138,1,1,23,6,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(139,1,1,24,1,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(140,1,1,24,2,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(141,1,1,24,3,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(142,1,1,24,4,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(143,1,1,24,5,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(144,1,1,24,6,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(145,1,1,25,1,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(146,1,1,25,2,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(147,1,1,25,3,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(148,1,1,25,4,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(149,1,1,25,5,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(150,1,1,25,6,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(151,1,1,26,1,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(152,1,1,26,2,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(153,1,1,26,3,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(154,1,1,26,4,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(155,1,1,26,5,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(156,1,1,26,6,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(157,1,1,27,1,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(158,1,1,27,2,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(159,1,1,27,3,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(160,1,1,27,4,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(161,1,1,27,5,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(162,1,1,27,6,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(163,1,1,28,1,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(164,1,1,28,2,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(165,1,1,28,3,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(166,1,1,28,4,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(167,1,1,28,5,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(168,1,1,28,6,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(169,1,1,29,1,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(170,1,1,29,2,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(171,1,1,29,3,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(172,1,1,29,4,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(173,1,1,29,5,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(174,1,1,29,6,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(175,1,1,30,1,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(176,1,1,30,2,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(177,1,1,30,3,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(178,1,1,30,4,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(179,1,1,30,5,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(180,1,1,30,6,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(181,1,1,31,1,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(182,1,1,31,2,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(183,1,1,31,3,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(184,1,1,31,4,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(185,1,1,31,5,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(186,1,1,31,6,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(187,1,1,32,1,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(188,1,1,32,2,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(189,1,1,32,3,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(190,1,1,32,4,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(191,1,1,32,5,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(192,1,1,32,6,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(193,1,1,33,1,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(194,1,1,33,2,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(195,1,1,33,3,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(196,1,1,33,4,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(197,1,1,33,5,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(198,1,1,33,6,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(199,1,1,34,1,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(200,1,1,34,2,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(201,1,1,34,3,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(202,1,1,34,4,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(203,1,1,34,5,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(204,1,1,34,6,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(205,1,1,35,1,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(206,1,1,35,2,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(207,1,1,35,3,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(208,1,1,35,4,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(209,1,1,35,5,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(210,1,1,35,6,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(211,1,1,36,1,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(212,1,1,36,2,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(213,1,1,36,3,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(214,1,1,36,4,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(215,1,1,36,5,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(216,1,1,36,6,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(217,1,1,37,1,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(218,1,1,37,2,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(219,1,1,37,3,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(220,1,1,37,4,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(221,1,1,37,5,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(222,1,1,37,6,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(223,1,1,38,1,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(224,1,1,38,2,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(225,1,1,38,3,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(226,1,1,38,4,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(227,1,1,38,5,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(228,1,1,38,6,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(229,1,1,39,1,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(230,1,1,39,2,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(231,1,1,39,3,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(232,1,1,39,4,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(233,1,1,39,5,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(234,1,1,39,6,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(235,1,1,40,1,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(236,1,1,40,2,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(237,1,1,40,3,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(238,1,1,40,4,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(239,1,1,40,5,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(240,1,1,40,6,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(241,1,1,41,1,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(242,1,1,41,2,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(243,1,1,41,3,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(244,1,1,41,4,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(245,1,1,41,5,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(246,1,1,41,6,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(247,1,1,42,1,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(248,1,1,42,2,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(249,1,1,42,3,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(250,1,1,42,4,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(251,1,1,42,5,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(252,1,1,42,6,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(253,1,1,43,1,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(254,1,1,43,2,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(255,1,1,43,3,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(256,1,1,43,4,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(257,1,1,43,5,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(258,1,1,43,6,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(259,1,1,44,1,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(260,1,1,44,2,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(261,1,1,44,3,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(262,1,1,44,4,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(263,1,1,44,5,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(264,1,1,44,6,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(265,1,1,45,1,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(266,1,1,45,2,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(267,1,1,45,3,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(268,1,1,45,4,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(269,1,1,45,5,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(270,1,1,45,6,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(271,1,1,46,1,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(272,1,1,46,2,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(273,1,1,46,3,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(274,1,1,46,4,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(275,1,1,46,5,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(276,1,1,46,6,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(277,1,1,47,1,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(278,1,1,47,2,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(279,1,1,47,3,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(280,1,1,47,4,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(281,1,1,47,5,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(282,1,1,47,6,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(283,1,1,48,1,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(284,1,1,48,2,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(285,1,1,48,3,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(286,1,1,48,4,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(287,1,1,48,5,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(288,1,1,48,6,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(289,1,1,49,1,1,5,1,15,22,4,0,NULL,0,NULL,NULL),(290,1,1,49,2,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(291,1,1,49,3,1,5,1,15,22,6,0,NULL,0,NULL,NULL),(292,1,1,49,4,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(293,1,1,49,5,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(294,1,1,49,6,1,5,1,15,22,5,0,NULL,0,NULL,NULL),(295,1,1,50,1,1,5,1,15,22,1,0,NULL,0,NULL,NULL),(296,1,1,50,2,1,5,1,15,22,3,0,NULL,0,NULL,NULL),(297,1,1,50,3,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(298,1,1,50,4,1,5,1,15,22,0,0,NULL,0,NULL,NULL),(299,1,1,50,5,1,5,1,15,22,2,0,NULL,0,NULL,NULL),(300,1,1,50,6,1,5,1,15,22,1,0,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `ball_by_ball` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batting_scorecard`
--

DROP TABLE IF EXISTS `batting_scorecard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batting_scorecard` (
  `batting_id` int NOT NULL AUTO_INCREMENT,
  `match_id` int NOT NULL,
  `player_id` int NOT NULL,
  `team_id` int NOT NULL,
  `innings_number` int NOT NULL,
  `batting_position` int DEFAULT NULL,
  `runs_scored` int DEFAULT '0',
  `balls_faced` int DEFAULT '0',
  `fours` int DEFAULT '0',
  `sixes` int DEFAULT '0',
  `strike_rate` decimal(5,2) DEFAULT NULL,
  `dismissal_type` varchar(40) DEFAULT NULL,
  `bowler_id` int DEFAULT NULL,
  `fielder_id` int DEFAULT NULL,
  `minutes_batted` int DEFAULT NULL,
  PRIMARY KEY (`batting_id`),
  UNIQUE KEY `unique_batting_entry` (`match_id`,`player_id`,`innings_number`),
  KEY `team_id` (`team_id`),
  KEY `bowler_id` (`bowler_id`),
  KEY `fielder_id` (`fielder_id`),
  KEY `idx_batting_player` (`player_id`),
  CONSTRAINT `batting_scorecard_ibfk_1` FOREIGN KEY (`match_id`) REFERENCES `matches` (`match_id`),
  CONSTRAINT `batting_scorecard_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`),
  CONSTRAINT `batting_scorecard_ibfk_3` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`),
  CONSTRAINT `batting_scorecard_ibfk_4` FOREIGN KEY (`bowler_id`) REFERENCES `players` (`player_id`),
  CONSTRAINT `batting_scorecard_ibfk_5` FOREIGN KEY (`fielder_id`) REFERENCES `players` (`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batting_scorecard`
--

LOCK TABLES `batting_scorecard` WRITE;
/*!40000 ALTER TABLE `batting_scorecard` DISABLE KEYS */;
INSERT INTO `batting_scorecard` VALUES (12,1,1,1,1,1,45,60,5,1,75.00,NULL,NULL,NULL,NULL),(13,1,15,1,1,2,32,40,4,0,80.00,NULL,NULL,NULL,NULL),(14,1,28,1,1,3,67,58,8,2,115.52,NULL,NULL,NULL,NULL),(15,1,16,1,1,4,72,65,7,2,110.76,NULL,NULL,NULL,NULL),(16,1,27,1,1,5,21,19,2,1,110.53,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `batting_scorecard` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `validate_batting_team` BEFORE INSERT ON `batting_scorecard` FOR EACH ROW BEGIN
    DECLARE player_team INT;
    SELECT team_id INTO player_team
    FROM players
    WHERE player_id=NEW.player_id;
    
    IF player_team != nEW.team_id THEN 
         SIGNAL SQLSTATE '45000'
         SET MESSAGE_TEXT= 'Player does not belong to this team';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `calculate_strike_rate` BEFORE INSERT ON `batting_scorecard` FOR EACH ROW BEGIN
     IF NEW.balls_faced > 0 THEN
         SET NEW.strike_rate = (NEW.runs_scored/NEW.balls_faced)*100;
	 ELSE
         SET NEW.strike_rate=0;
	 END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_career_runs` AFTER INSERT ON `batting_scorecard` FOR EACH ROW BEGIN
    UPDATE player_career_stats
    SET total_runs = total_runs + NEW.runs_scored,
        matches_played = matches_played + 1
    WHERE player_id = NEW.player_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `bowling_scorecard`
--

DROP TABLE IF EXISTS `bowling_scorecard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bowling_scorecard` (
  `bowling_id` int NOT NULL AUTO_INCREMENT,
  `match_id` int DEFAULT NULL,
  `player_id` int DEFAULT NULL,
  `team_id` int DEFAULT NULL,
  `innings_number` int DEFAULT NULL,
  `overs_bowled` decimal(4,1) DEFAULT NULL,
  `maidens` int DEFAULT '0',
  `runs_conceded` int DEFAULT '0',
  `wickets_taken` int DEFAULT '0',
  `economy_rate` decimal(5,2) DEFAULT NULL,
  `dot_balls` int DEFAULT '0',
  `wides` int DEFAULT '0',
  `no_balls` int DEFAULT '0',
  PRIMARY KEY (`bowling_id`),
  UNIQUE KEY `match_id` (`match_id`,`player_id`,`innings_number`),
  KEY `player_id` (`player_id`),
  KEY `team_id` (`team_id`),
  KEY `idx_bowling_match_player` (`match_id`,`player_id`),
  CONSTRAINT `bowling_scorecard_ibfk_1` FOREIGN KEY (`match_id`) REFERENCES `matches` (`match_id`),
  CONSTRAINT `bowling_scorecard_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`),
  CONSTRAINT `bowling_scorecard_ibfk_3` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`),
  CONSTRAINT `bowling_scorecard_chk_1` CHECK ((`overs_bowled` <= 50))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bowling_scorecard`
--

LOCK TABLES `bowling_scorecard` WRITE;
/*!40000 ALTER TABLE `bowling_scorecard` DISABLE KEYS */;
INSERT INTO `bowling_scorecard` VALUES (6,1,22,5,1,10.0,1,45,3,4.50,0,0,0),(7,1,25,5,1,10.0,0,60,2,6.00,0,0,0),(8,1,29,5,1,10.0,0,55,1,5.50,0,0,0),(9,1,30,5,1,10.0,0,62,2,6.20,0,0,0),(10,1,31,5,1,10.0,0,48,1,4.80,0,0,0);
/*!40000 ALTER TABLE `bowling_scorecard` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `validate_bowling_team` BEFORE INSERT ON `bowling_scorecard` FOR EACH ROW BEGIN
    DECLARE player_team INT;
    SELECT team_id INTO player_team
    FROM players
    WHERE player_id = NEW.player_id;

    IF player_team != NEW.team_id THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Bowler does not belong to this team';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `calculate_economy_rate` BEFORE INSERT ON `bowling_scorecard` FOR EACH ROW BEGIN
     IF NEW.overs_bowled > 0 THEN
		SET NEW.economy_rate = NEW.runs_conceded/NEW.overs_bowled;
	 ELSE
        SET NEW.economy_rate=0;
	 END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_career_wickets` AFTER INSERT ON `bowling_scorecard` FOR EACH ROW BEGIN
    UPDATE player_career_stats
    SET total_wickets = total_wickets + NEW.wickets_taken
    WHERE player_id = NEW.player_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `match_players`
--

DROP TABLE IF EXISTS `match_players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `match_players` (
  `match_player_id` int NOT NULL AUTO_INCREMENT,
  `match_id` int DEFAULT NULL,
  `player_id` int DEFAULT NULL,
  `team_id` int DEFAULT NULL,
  `batting_position` int DEFAULT NULL,
  `is_captain` tinyint(1) DEFAULT '0',
  `is_wicketkeeper` tinyint(1) DEFAULT '0',
  `substitute_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`match_player_id`),
  UNIQUE KEY `match_id` (`match_id`,`player_id`),
  KEY `player_id` (`player_id`),
  KEY `team_id` (`team_id`),
  CONSTRAINT `match_players_ibfk_1` FOREIGN KEY (`match_id`) REFERENCES `matches` (`match_id`),
  CONSTRAINT `match_players_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`),
  CONSTRAINT `match_players_ibfk_3` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`),
  CONSTRAINT `match_players_chk_1` CHECK ((`batting_position` between 1 and 11))
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match_players`
--

LOCK TABLES `match_players` WRITE;
/*!40000 ALTER TABLE `match_players` DISABLE KEYS */;
INSERT INTO `match_players` VALUES (45,1,1,1,1,0,0,0),(46,1,15,1,2,0,0,0),(47,1,28,1,3,0,0,0),(48,1,16,1,4,1,1,0),(49,1,27,1,5,0,0,0),(50,1,7,1,6,0,0,0),(51,1,26,1,7,0,0,0),(52,1,18,1,8,0,0,0),(53,1,19,1,9,0,0,0),(54,1,20,1,10,0,0,0),(55,1,23,1,11,0,0,0),(56,1,5,5,1,0,0,0),(57,1,13,5,2,0,0,0),(58,1,14,5,3,0,0,0),(59,1,39,5,4,1,0,0),(60,1,35,5,5,0,1,0),(61,1,22,5,6,0,0,0),(62,1,25,5,7,0,0,0),(63,1,29,5,8,0,0,0),(64,1,30,5,9,0,0,0),(65,1,31,5,10,0,0,0),(66,1,32,5,11,0,0,0);
/*!40000 ALTER TABLE `match_players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matches`
--

DROP TABLE IF EXISTS `matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matches` (
  `match_id` int NOT NULL AUTO_INCREMENT,
  `match_date` date DEFAULT NULL,
  `venue_id` int DEFAULT NULL,
  `team1_id` int DEFAULT NULL,
  `team2_id` int DEFAULT NULL,
  `toss_winner_team_id` int DEFAULT NULL,
  `toss_decision` varchar(20) DEFAULT NULL,
  `match_type` enum('TEST','ODI','T20') DEFAULT NULL,
  `match_status` enum('Completed','Abandoned','No Result','Tie') DEFAULT NULL,
  `match_result` varchar(120) DEFAULT NULL,
  `winning_team_id` int DEFAULT NULL,
  `match_referee` varchar(50) DEFAULT NULL,
  `umpire1` varchar(50) DEFAULT NULL,
  `umpire2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`match_id`),
  KEY `venue_id` (`venue_id`),
  KEY `team1_id` (`team1_id`),
  KEY `team2_id` (`team2_id`),
  KEY `toss_winner_team_id` (`toss_winner_team_id`),
  KEY `winning_team_id` (`winning_team_id`),
  CONSTRAINT `matches_ibfk_1` FOREIGN KEY (`venue_id`) REFERENCES `venues` (`venue_id`),
  CONSTRAINT `matches_ibfk_2` FOREIGN KEY (`team1_id`) REFERENCES `teams` (`team_id`),
  CONSTRAINT `matches_ibfk_3` FOREIGN KEY (`team2_id`) REFERENCES `teams` (`team_id`),
  CONSTRAINT `matches_ibfk_4` FOREIGN KEY (`toss_winner_team_id`) REFERENCES `teams` (`team_id`),
  CONSTRAINT `matches_ibfk_5` FOREIGN KEY (`winning_team_id`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matches`
--

LOCK TABLES `matches` WRITE;
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
INSERT INTO `matches` VALUES (1,'2010-02-24',1,1,5,1,'bat','ODI','Completed','India won by 57 runs',1,'Ranjan Madugalle','Aleem Dar','Billy Bowden'),(2,'2010-06-12',9,3,2,3,'field','ODI','Completed','England won by 6 wickets',3,'Jeff Crowe','Ian Gould','Simon Taufel'),(3,'2011-04-02',2,1,9,9,'field','ODI','Completed','India won by 6 wickets',1,'Jeff Crowe','Simon Taufel','Aleem Dar'),(4,'2011-12-26',7,2,3,2,'bat','TEST','Completed','Australia won by 122 runs',2,'Ranjan Madugalle','Tony Hill','Rod Tucker'),(5,'2012-03-18',11,5,3,5,'bat','ODI','Completed','South Africa won by 45 runs',5,'Chris Broad','Aleem Dar','Bruce Oxenford'),(6,'2012-09-19',15,8,7,7,'field','T20','Completed','Sri Lanka won by 8 wickets',7,'Jeff Crowe','Marais Erasmus','Ian Gould'),(7,'2013-01-11',13,6,5,6,'bat','ODI','Completed','Pakistan won by 3 wickets',6,'Ranjan Madugalle','Billy Bowden','Rod Tucker'),(8,'2013-06-23',10,3,1,3,'field','ODI','Completed','India won by 5 runs',1,'Chris Broad','Aleem Dar','Marais Erasmus'),(9,'2014-02-16',20,7,8,8,'field','T20','Completed','Sri Lanka won by 4 wickets',7,'Jeff Crowe','Bruce Oxenford','Ian Gould'),(10,'2014-12-17',7,2,4,4,'bat','ODI','Completed','New Zealand won by 1 wicket',4,'Ranjan Madugalle','Aleem Dar','Rod Tucker'),(11,'2015-02-14',7,4,7,4,'bat','ODI','Completed','New Zealand won by 98 runs',4,'Jeff Crowe','Ian Gould','Marais Erasmus'),(12,'2015-02-15',1,1,5,5,'field','ODI','Completed','South Africa won by 130 runs',5,'Ranjan Madugalle','Aleem Dar','Bruce Oxenford'),(13,'2015-03-19',7,4,9,9,'field','ODI','Completed','New Zealand won by 143 runs',4,'Jeff Crowe','Billy Bowden','Rod Tucker'),(14,'2015-03-24',2,1,8,1,'bat','ODI','Completed','India won by 109 runs',1,'Chris Broad','Aleem Dar','Marais Erasmus'),(15,'2015-03-26',7,4,5,4,'bat','ODI','Completed','New Zealand won by 4 wickets',4,'Jeff Crowe','Ian Gould','Bruce Oxenford');
/*!40000 ALTER TABLE `matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `numbers`
--

DROP TABLE IF EXISTS `numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `numbers` (
  `n` int NOT NULL,
  PRIMARY KEY (`n`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `numbers`
--

LOCK TABLES `numbers` WRITE;
/*!40000 ALTER TABLE `numbers` DISABLE KEYS */;
INSERT INTO `numbers` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99),(100),(101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(111),(112),(113),(114),(115),(116),(117),(118),(119),(120),(121),(122),(123),(124),(125),(126),(127),(128),(129),(130),(131),(132),(133),(134),(135),(136),(137),(138),(139),(140),(141),(142),(143),(144),(145),(146),(147),(148),(149),(150),(151),(152),(153),(154),(155),(156),(157),(158),(159),(160),(161),(162),(163),(164),(165),(166),(167),(168),(169),(170),(171),(172),(173),(174),(175),(176),(177),(178),(179),(180),(181),(182),(183),(184),(185),(186),(187),(188),(189),(190),(191),(192),(193),(194),(195),(196),(197),(198),(199),(200),(201),(202),(203),(204),(205),(206),(207),(208),(209),(210),(211),(212),(213),(214),(215),(216),(217),(218),(219),(220),(221),(222),(223),(224),(225),(226),(227),(228),(229),(230),(231),(232),(233),(234),(235),(236),(237),(238),(239),(240),(241),(242),(243),(244),(245),(246),(247),(248),(249),(250),(251),(252),(253),(254),(255),(256),(257),(258),(259),(260),(261),(262),(263),(264),(265),(266),(267),(268),(269),(270),(271),(272),(273),(274),(275),(276),(277),(278),(279),(280),(281),(282),(283),(284),(285),(286),(287),(288),(289),(290),(291),(292),(293),(294),(295),(296),(297),(298),(299),(300);
/*!40000 ALTER TABLE `numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `player_batting_summary`
--

DROP TABLE IF EXISTS `player_batting_summary`;
/*!50001 DROP VIEW IF EXISTS `player_batting_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `player_batting_summary` AS SELECT 
 1 AS `player_id`,
 1 AS `total_runs`,
 1 AS `innings`,
 1 AS `total_balls`,
 1 AS `batting_average`,
 1 AS `strike_rate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `player_bowling_summary`
--

DROP TABLE IF EXISTS `player_bowling_summary`;
/*!50001 DROP VIEW IF EXISTS `player_bowling_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `player_bowling_summary` AS SELECT 
 1 AS `player_id`,
 1 AS `innings_bowled`,
 1 AS `total_overs`,
 1 AS `runs_conceded`,
 1 AS `total_wickets`,
 1 AS `bowling_average`,
 1 AS `economy_rate`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `player_career_stats`
--

DROP TABLE IF EXISTS `player_career_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_career_stats` (
  `player_id` int NOT NULL,
  `matches_played` int DEFAULT '0',
  `total_runs` int DEFAULT '0',
  `batting_average` decimal(5,2) DEFAULT NULL,
  `strike_rate` decimal(5,2) DEFAULT NULL,
  `total_wickets` int DEFAULT '0',
  `bowling_average` decimal(5,2) DEFAULT NULL,
  `economy_rate` decimal(4,2) DEFAULT NULL,
  `total_catches` int DEFAULT '0',
  `total_stumpings` int DEFAULT '0',
  PRIMARY KEY (`player_id`),
  CONSTRAINT `player_career_stats_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_career_stats`
--

LOCK TABLES `player_career_stats` WRITE;
/*!40000 ALTER TABLE `player_career_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_career_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `player_id` int NOT NULL,
  `player_name` varchar(60) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `batting_style` varchar(30) DEFAULT NULL,
  `bowling_style` varchar(30) DEFAULT NULL,
  `player_role` varchar(30) DEFAULT NULL,
  `nationality` varchar(30) DEFAULT NULL,
  `debut_date` date DEFAULT NULL,
  `height_cm` int DEFAULT NULL,
  `weight_kg` int DEFAULT NULL,
  `team_id` int DEFAULT NULL,
  PRIMARY KEY (`player_id`),
  KEY `fk_player_team` (`team_id`),
  CONSTRAINT `fk_player_team` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Virat Kohli','1988-11-05','Right-hand Bat','Right-arm Medium','Batsman','India','2008-08-18',175,69,1),(2,'Steve Smith','1989-06-02','Right-hand Bat','Right-arm Legbreak','Batsman','Australia','2010-02-19',176,80,2),(3,'Joe Root','1990-12-30','Right-hand Bat','Right-arm Offbreak','Batsman','England','2012-12-13',183,72,3),(4,'Kane Williamson','1990-08-08','Right-hand Bat','Right-arm Offbreak','Batsman','New Zealand','2010-08-10',173,65,4),(5,'AB de Villiers','1984-02-17','Right-hand Bat','Right-arm Medium','Wicketkeeper','South Africa','2004-12-17',178,75,5),(6,'Babar Azam','1994-10-15','Right-hand Bat','Right-arm Offbreak','Batsman','Pakistan','2015-05-31',180,68,6),(7,'Angelo Mathews','1987-06-02','Right-hand Bat','Right-arm Medium Fast','All-rounder','Sri Lanka','2008-11-28',183,78,7),(8,'Shakib Al Hasan','1987-03-24','Left-hand Bat','Left-arm Orthodox','All-rounder','Bangladesh','2006-08-06',175,70,8),(9,'Chris Gayle','1979-09-21','Left-hand Bat','Right-arm Offbreak','Batsman','West Indies','1999-09-11',188,98,9),(10,'Rashid Khan','1998-09-20','Right-hand Bat','Right-arm Legbreak','Bowler','Afghanistan','2015-10-18',168,65,10),(11,'Eoin Morgan','1986-09-10','Left-hand Bat','Right-arm Medium','Batsman','England','2009-08-28',178,75,3),(12,'Brendon McCullum','1981-09-27','Right-hand Bat','Right-arm Medium','Wicketkeeper','New Zealand','2002-01-17',172,80,4),(13,'Hashim Amla','1983-03-31','Right-hand Bat','Right-arm Medium','Batsman','South Africa','2004-11-28',180,76,5),(14,'Faf du Plessis','1984-07-13','Right-hand Bat','Right-arm Legbreak','Batsman','South Africa','2011-01-18',180,78,5),(15,'Rohit Sharma','1987-04-30','Right-hand Bat','Right-arm Offbreak','Batsman','India','2007-06-23',170,72,1),(16,'MS Dhoni','1981-07-07','Right-hand Bat','Right-arm Medium','Wicketkeeper','India','2004-12-23',175,75,1),(17,'David Warner','1986-10-27','Left-hand Bat','Right-arm Legbreak','Batsman','Australia','2009-01-11',170,72,2),(18,'Mitchell Starc','1990-01-30','Left-hand Bat','Left-arm Fast','Bowler','Australia','2010-10-20',197,92,2),(19,'James Anderson','1982-07-30','Left-hand Bat','Right-arm Fast','Bowler','England','2002-12-15',188,82,3),(20,'Stuart Broad','1986-06-24','Right-hand Bat','Right-arm Fast','Bowler','England','2007-08-28',198,94,3),(21,'Lasith Malinga','1983-08-28','Right-hand Bat','Right-arm Fast','Bowler','Sri Lanka','2004-07-01',173,76,7),(22,'Dale Steyn','1983-06-27','Right-hand Bat','Right-arm Fast','Bowler','South Africa','2004-12-17',179,75,5),(23,'Trent Boult','1989-07-22','Right-hand Bat','Left-arm Fast','Bowler','New Zealand','2011-07-11',180,77,4),(24,'Tim Southee','1988-12-11','Right-hand Bat','Right-arm Fast','Bowler','New Zealand','2008-03-05',193,87,4),(25,'Imran Tahir','1979-03-27','Right-hand Bat','Right-arm Legbreak','Bowler','South Africa','2011-02-24',178,80,5),(26,'Ben Stokes','1991-06-04','Left-hand Bat','Right-arm Fast Medium','All-rounder','England','2011-08-25',185,78,3),(27,'Hardik Pandya','1993-10-11','Right-hand Bat','Right-arm Fast Medium','All-rounder','India','2016-01-27',183,76,1),(28,'Yuvraj Singh','1981-12-12','Left-hand Bat','Left-arm Orthodox','All-rounder','India','2000-10-03',188,80,1),(29,'Kieron Pollard','1987-05-12','Right-hand Bat','Right-arm Medium','All-rounder','West Indies','2007-04-10',196,98,9),(30,'Andre Russell','1988-04-29','Right-hand Bat','Right-arm Fast','All-rounder','West Indies','2010-03-11',185,95,9),(31,'Shoaib Malik','1982-02-01','Right-hand Bat','Right-arm Offbreak','All-rounder','Pakistan','1999-10-14',178,70,6),(32,'Mohammad Hafeez','1980-10-17','Right-hand Bat','Right-arm Offbreak','All-rounder','Pakistan','2003-04-03',178,73,6),(33,'Ross Taylor','1984-03-08','Right-hand Bat','Right-arm Offbreak','Batsman','New Zealand','2006-03-01',183,80,4),(34,'Martin Guptill','1986-09-30','Right-hand Bat','Right-arm Offbreak','Batsman','New Zealand','2009-01-10',189,85,4),(35,'Quinton de Kock','1992-12-17','Left-hand Bat','None','Wicketkeeper','South Africa','2012-12-23',170,72,5),(36,'Mushfiqur Rahim','1987-05-09','Right-hand Bat','None','Wicketkeeper','Bangladesh','2005-05-26',160,60,8),(37,'Tamim Iqbal','1989-03-20','Left-hand Bat','Right-arm Offbreak','Batsman','Bangladesh','2007-02-09',180,78,8),(38,'Alastair Cook','1984-12-25','Left-hand Bat','None','Batsman','England','2006-03-01',188,82,3),(39,'Graeme Smith','1981-02-01','Left-hand Bat','Right-arm Offbreak','Batsman','South Africa','2002-03-08',190,92,5),(40,'Misbah-ul-Haq','1974-05-28','Right-hand Bat','Right-arm Legbreak','Batsman','Pakistan','2002-04-25',180,75,6);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `team_id` int NOT NULL,
  `country` varchar(30) DEFAULT NULL,
  `founded_year` int DEFAULT NULL,
  `home_venue_id` int DEFAULT NULL,
  `team_coach` varchar(30) DEFAULT NULL,
  `icc_ranking` int DEFAULT NULL,
  `total_matches_played` int DEFAULT NULL,
  `team_captain_id` int DEFAULT NULL,
  PRIMARY KEY (`team_id`),
  KEY `fk_home_venue` (`home_venue_id`),
  CONSTRAINT `fk_home_venue` FOREIGN KEY (`home_venue_id`) REFERENCES `venues` (`venue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'India',1928,2,'Duncan Fletcher',16,2,16),(2,'Australia',1905,7,'Darren Lehmann',17,4,2),(3,'England',1903,9,'Peter Moores',11,3,11),(4,'New Zealand',1926,7,'Mike Hesson',12,5,12),(5,'South Africa',1889,11,'Russell Domingo',39,1,39),(6,'Pakistan',1952,13,'Waqar Younis',40,6,40),(7,'Sri Lanka',1981,20,'Marvan Atapattu',21,7,7),(8,'Bangladesh',2000,15,'Chandika Hathurusingha',36,9,36),(9,'West Indies',1928,19,'Ottis Gibson',9,8,9),(10,'Afghanistan',2017,17,'Kabir Khan',10,11,10);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venues`
--

DROP TABLE IF EXISTS `venues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venues` (
  `venue_id` int NOT NULL,
  `stadium_name` varchar(50) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `seating_capacity` int DEFAULT NULL,
  `pitch_type` varchar(30) DEFAULT NULL,
  `boundary_length_meters` int DEFAULT NULL,
  `established_year` int DEFAULT NULL,
  PRIMARY KEY (`venue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venues`
--

LOCK TABLES `venues` WRITE;
/*!40000 ALTER TABLE `venues` DISABLE KEYS */;
INSERT INTO `venues` VALUES (1,'Eden Gardens','Kolkata','India',68000,'Batting Friendly',70,1864),(2,'Wankhede Stadium','Mumbai','India',33000,'Batting Friendly',68,1974),(3,'MA Chidambaram Stadium','Chennai','India',50000,'Spin Friendly',69,1916),(4,'M Chinnaswamy Stadium','Bengaluru','India',40000,'Batting Friendly',64,1969),(5,'Arun Jaitley Stadium','Delhi','India',41000,'Balanced',65,1883),(6,'Narendra Modi Stadium','Ahmedabad','India',132000,'Balanced',75,1982),(7,'Melbourne Cricket Ground','Melbourne','Australia',100024,'Balanced',82,1853),(8,'Sydney Cricket Ground','Sydney','Australia',48000,'Spin Friendly',74,1848),(9,'Lord\'s Cricket Ground','London','England',30000,'Bowling Friendly',65,1814),(10,'The Oval','London','England',25500,'Balanced',67,1845),(11,'Newlands Cricket Ground','Cape Town','South Africa',25000,'Bowling Friendly',68,1888),(12,'Wanderers Stadium','Johannesburg','South Africa',34000,'Fast Bowling',72,1956),(13,'Gaddafi Stadium','Lahore','Pakistan',27000,'Balanced',70,1959),(14,'National Stadium','Karachi','Pakistan',34000,'Batting Friendly',73,1955),(15,'Sher-e-Bangla Stadium','Dhaka','Bangladesh',26000,'Spin Friendly',66,2006),(16,'Dubai International Cricket Stadium','Dubai','UAE',25000,'Balanced',75,2009),(17,'Sheikh Zayed Stadium','Abu Dhabi','UAE',20000,'Balanced',76,2004),(18,'Queens Park Oval','Port of Spain','West Indies',20000,'Spin Friendly',68,1896),(19,'Kensington Oval','Bridgetown','West Indies',28000,'Fast Bowling',70,1882),(20,'Pallekele International Cricket Stadium','Kandy','Sri Lanka',35000,'Balanced',71,2009);
/*!40000 ALTER TABLE `venues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cricket_analytics_db'
--

--
-- Dumping routines for database 'cricket_analytics_db'
--
/*!50003 DROP PROCEDURE IF EXISTS `get_match_scorecard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_match_scorecard`(IN p_match_id INT)
BEGIN
     SELECT
       m.match_id,
       m.match_date,
       t1.country AS team1,
       t2.country AS team2,
       v.stadium_name,
       m.match_result
FROM matches m
JOIN teams t1 ON m.team1_id = t1.team_id
JOIN teams t2 ON m.team2_id = t2.team_id
JOIN venues v ON m.venue_id = v.venue_id
WHERE m.match_id = p_match_id;

SELECT
     p.player_name,
     t.country AS team_name,
     b.innings_number,
     b.batting_position,
     b.runs_scored,
     b.balls_faced,
     b.fours,
     b.sixes,
     b.strike_rate,
     b.dismissal_type
FROM batting_scorecard b
JOIN players p ON b.player_id = p.player_id
JOIN teams t ON b.team_id=t.team_id
WHERE b.match_id = p_match_id
ORDER BY b.innings_number, b.batting_position;

SELECT 
    p.player_name,
    t.country AS team_name,
    bw.innings_number,
    bw.overs_bowled,
    bw.maidens,
    bw.runs_conceded,
    bw.wickets_taken,
    bw.economy_rate
FROM bowling_scorecard bw
JOIN players p ON bw.player_id = p.player_id
JOIN teams t ON bw.team_id=t.team_id
WHERE bw.match_id = p_match_id
ORDER BY bw.innings_number;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_player_career_stats` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_player_career_stats`(IN p_player_id INT)
BEGIN
    SELECT
        p.player_name,
        b.innings AS matches_played,
        b.total_runs,
        b.batting_average,
        b.strike_rate,
        bw.total_wickets,
        bw.economy_rate
	FROM players p
    LEFT JOIN player_batting_summary b
         ON p.player_id=b.player_id
	LEFT JOIN player_bowling_summary bw
         ON p.player_id=bw.player_id
	WHERE p.player_id =p_player_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `player_batting_summary`
--

/*!50001 DROP VIEW IF EXISTS `player_batting_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `player_batting_summary` AS select `batting_scorecard`.`player_id` AS `player_id`,sum(`batting_scorecard`.`runs_scored`) AS `total_runs`,count(0) AS `innings`,sum(`batting_scorecard`.`balls_faced`) AS `total_balls`,round((sum(`batting_scorecard`.`runs_scored`) / count(0)),2) AS `batting_average`,round(((sum(`batting_scorecard`.`runs_scored`) / sum(`batting_scorecard`.`balls_faced`)) * 100),2) AS `strike_rate` from `batting_scorecard` group by `batting_scorecard`.`player_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `player_bowling_summary`
--

/*!50001 DROP VIEW IF EXISTS `player_bowling_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `player_bowling_summary` AS select `bowling_scorecard`.`player_id` AS `player_id`,count(0) AS `innings_bowled`,sum(`bowling_scorecard`.`overs_bowled`) AS `total_overs`,sum(`bowling_scorecard`.`runs_conceded`) AS `runs_conceded`,sum(`bowling_scorecard`.`wickets_taken`) AS `total_wickets`,round((sum(`bowling_scorecard`.`runs_conceded`) / sum(`bowling_scorecard`.`wickets_taken`)),2) AS `bowling_average`,round((sum(`bowling_scorecard`.`runs_conceded`) / sum(`bowling_scorecard`.`overs_bowled`)),2) AS `economy_rate` from `bowling_scorecard` group by `bowling_scorecard`.`player_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-13 18:30:08
