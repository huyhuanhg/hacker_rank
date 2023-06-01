-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: hacker_rank
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `harry-potter-and-wands_Wands`
--

DROP TABLE IF EXISTS `harry-potter-and-wands_Wands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `harry-potter-and-wands_Wands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` int NOT NULL,
  `coins_needed` int NOT NULL,
  `power` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `harry-potter-and-wands_Wands`
--

LOCK TABLES `harry-potter-and-wands_Wands` WRITE;
/*!40000 ALTER TABLE `harry-potter-and-wands_Wands` DISABLE KEYS */;
INSERT INTO `harry-potter-and-wands_Wands` VALUES (1,4,3688,8),(2,3,9365,3),(3,3,7187,10),(4,3,734,8),(5,1,6020,2),(6,2,6773,7),(7,3,9873,9),(8,3,7721,7),(9,1,1647,10),(10,4,504,5),(11,2,7587,5),(12,5,9897,10),(13,3,4651,8),(14,2,5408,1),(15,2,6018,7),(16,4,7710,5),(17,2,8798,7),(18,2,3312,3),(19,4,7651,6),(20,5,5689,3);
/*!40000 ALTER TABLE `harry-potter-and-wands_Wands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `harry-potter-and-wands_Wands_Property`
--

DROP TABLE IF EXISTS `harry-potter-and-wands_Wands_Property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `harry-potter-and-wands_Wands_Property` (
  `code` int NOT NULL,
  `age` int NOT NULL,
  `is_evil` tinyint NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `harry-potter-and-wands_Wands_Property`
--

LOCK TABLES `harry-potter-and-wands_Wands_Property` WRITE;
/*!40000 ALTER TABLE `harry-potter-and-wands_Wands_Property` DISABLE KEYS */;
INSERT INTO `harry-potter-and-wands_Wands_Property` VALUES (1,45,0),(2,40,0),(3,4,1),(4,20,0),(5,17,0);
/*!40000 ALTER TABLE `harry-potter-and-wands_Wands_Property` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-01 23:04:13
