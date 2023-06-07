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
-- Table structure for table `15-days-of-learning-sql_Hackers`
--

DROP TABLE IF EXISTS `15-days-of-learning-sql_Hackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `15-days-of-learning-sql_Hackers` (
  `hacker_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`hacker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `15-days-of-learning-sql_Hackers`
--

LOCK TABLES `15-days-of-learning-sql_Hackers` WRITE;
/*!40000 ALTER TABLE `15-days-of-learning-sql_Hackers` DISABLE KEYS */;
INSERT INTO `15-days-of-learning-sql_Hackers` VALUES (15758,'Rose'),(20703,'Angela'),(36396,'Frank'),(38289,'Patrick'),(44065,'Lisa'),(53473,'Kimberly'),(62529,'Bonnie'),(79722,'Michael');
/*!40000 ALTER TABLE `15-days-of-learning-sql_Hackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `15-days-of-learning-sql_Submissions`
--

DROP TABLE IF EXISTS `15-days-of-learning-sql_Submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `15-days-of-learning-sql_Submissions` (
  `submission_id` int NOT NULL,
  `submission_date` date NOT NULL,
  `hacker_id` int NOT NULL,
  `score` int NOT NULL,
  PRIMARY KEY (`submission_id`),
  KEY `fk_15-days-of-learning-sql_Submissions_Hackers_idx` (`hacker_id`),
  CONSTRAINT `fk_15-days-of-learning-sql_Submissions_Hackers` FOREIGN KEY (`hacker_id`) REFERENCES `15-days-of-learning-sql_Hackers` (`hacker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `15-days-of-learning-sql_Submissions`
--

LOCK TABLES `15-days-of-learning-sql_Submissions` WRITE;
/*!40000 ALTER TABLE `15-days-of-learning-sql_Submissions` DISABLE KEYS */;
INSERT INTO `15-days-of-learning-sql_Submissions` VALUES (8494,'2016-03-01',20703,0),(8495,'2016-03-01',53473,15),(8496,'2016-03-01',79722,60),(8497,'2016-03-01',36396,70),(8498,'2016-03-02',20703,0),(8499,'2016-03-02',15758,60),(8500,'2016-03-02',79722,25),(8501,'2016-03-02',79722,60),(8502,'2016-03-03',20703,0),(8503,'2016-03-03',36396,70),(8504,'2016-03-03',79722,5),(8505,'2016-03-04',20703,0),(8506,'2016-03-04',44065,90),(8507,'2016-03-04',53473,65),(8508,'2016-03-04',79722,45),(8509,'2016-03-05',20703,0),(8510,'2016-03-05',38289,0),(8511,'2016-03-05',62529,0),(8512,'2016-03-05',36396,10),(8513,'2016-03-05',36396,40),(8514,'2016-03-06',20703,0);
/*!40000 ALTER TABLE `15-days-of-learning-sql_Submissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-08  1:01:52
