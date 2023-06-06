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
-- Table structure for table `the-report_Grades`
--

DROP TABLE IF EXISTS `the-report_Grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `the-report_Grades` (
  `Grade` int NOT NULL,
  `Min_Mark` int NOT NULL,
  `Max_Mark` varchar(45) NOT NULL,
  PRIMARY KEY (`Grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `the-report_Grades`
--

LOCK TABLES `the-report_Grades` WRITE;
/*!40000 ALTER TABLE `the-report_Grades` DISABLE KEYS */;
INSERT INTO `the-report_Grades` VALUES (1,0,'9'),(2,10,'19'),(3,20,'29'),(4,30,'39'),(5,40,'49'),(6,50,'59'),(7,60,'69'),(8,70,'79'),(9,80,'89'),(10,90,'100');
/*!40000 ALTER TABLE `the-report_Grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `the-report_Students`
--

DROP TABLE IF EXISTS `the-report_Students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `the-report_Students` (
  `ID` int NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Marks` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `the-report_Students`
--

LOCK TABLES `the-report_Students` WRITE;
/*!40000 ALTER TABLE `the-report_Students` DISABLE KEYS */;
INSERT INTO `the-report_Students` VALUES (1,'Maria',99),(2,'Jane',81),(3,'Julia',88),(4,'Scarlet',78);
/*!40000 ALTER TABLE `the-report_Students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-30 11:16:02
