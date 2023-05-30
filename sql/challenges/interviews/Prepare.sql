-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hacker_rank
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
-- Table structure for table `challenges/interviews_Challenges`
--

DROP TABLE IF EXISTS `challenges/interviews_Challenges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `challenges/interviews_Challenges` (
  `challenge_id` int NOT NULL,
  `college_id` int NOT NULL,
  PRIMARY KEY (`challenge_id`),
  KEY `Challenges_Colleges_idx` (`college_id`),
  CONSTRAINT `Challenges_Colleges` FOREIGN KEY (`college_id`) REFERENCES `challenges/interviews_Colleges` (`college_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `challenges/interviews_Challenges`
--

LOCK TABLES `challenges/interviews_Challenges` WRITE;
/*!40000 ALTER TABLE `challenges/interviews_Challenges` DISABLE KEYS */;
INSERT INTO `challenges/interviews_Challenges` VALUES (18765,11219),(47127,11219),(60292,32473),(72974,56685);
/*!40000 ALTER TABLE `challenges/interviews_Challenges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `challenges/interviews_Colleges`
--

DROP TABLE IF EXISTS `challenges/interviews_Colleges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `challenges/interviews_Colleges` (
  `college_id` int NOT NULL,
  `contest_id` int NOT NULL,
  PRIMARY KEY (`college_id`),
  KEY `Colleges_Contests_idx` (`contest_id`),
  CONSTRAINT `Colleges_Contests` FOREIGN KEY (`contest_id`) REFERENCES `challenges/interviews_Contests` (`contest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `challenges/interviews_Colleges`
--

LOCK TABLES `challenges/interviews_Colleges` WRITE;
/*!40000 ALTER TABLE `challenges/interviews_Colleges` DISABLE KEYS */;
INSERT INTO `challenges/interviews_Colleges` VALUES (11219,66406),(32473,66556),(56685,94828);
/*!40000 ALTER TABLE `challenges/interviews_Colleges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `challenges/interviews_Contests`
--

DROP TABLE IF EXISTS `challenges/interviews_Contests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `challenges/interviews_Contests` (
  `contest_id` int NOT NULL,
  `hacker_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`contest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `challenges/interviews_Contests`
--

LOCK TABLES `challenges/interviews_Contests` WRITE;
/*!40000 ALTER TABLE `challenges/interviews_Contests` DISABLE KEYS */;
INSERT INTO `challenges/interviews_Contests` VALUES (66406,17973,'Rose'),(66556,79153,'Angela'),(94828,80275,'Frank');
/*!40000 ALTER TABLE `challenges/interviews_Contests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `challenges/interviews_Submission_Stats`
--

DROP TABLE IF EXISTS `challenges/interviews_Submission_Stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `challenges/interviews_Submission_Stats` (
  `challenge_id` int NOT NULL,
  `total_submissions` int NOT NULL,
  `total_accepted_submission` int NOT NULL,
  KEY `Submission_Stats_Challenges_idx` (`challenge_id`),
  CONSTRAINT `Submission_Stats_Challenges` FOREIGN KEY (`challenge_id`) REFERENCES `challenges/interviews_Challenges` (`challenge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `challenges/interviews_Submission_Stats`
--

LOCK TABLES `challenges/interviews_Submission_Stats` WRITE;
/*!40000 ALTER TABLE `challenges/interviews_Submission_Stats` DISABLE KEYS */;
INSERT INTO `challenges/interviews_Submission_Stats` VALUES (47127,27,10),(47127,56,18),(72974,68,24),(72974,82,14),(47127,28,11);
/*!40000 ALTER TABLE `challenges/interviews_Submission_Stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `challenges/interviews_View_Stats`
--

DROP TABLE IF EXISTS `challenges/interviews_View_Stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `challenges/interviews_View_Stats` (
  `challenge_id` int NOT NULL,
  `total_views` int NOT NULL,
  `total_unique_views` int NOT NULL,
  KEY `View_Stats_Challenges_idx` (`challenge_id`),
  CONSTRAINT `View_Stats_Challenges` FOREIGN KEY (`challenge_id`) REFERENCES `challenges/interviews_Challenges` (`challenge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `challenges/interviews_View_Stats`
--

LOCK TABLES `challenges/interviews_View_Stats` WRITE;
/*!40000 ALTER TABLE `challenges/interviews_View_Stats` DISABLE KEYS */;
INSERT INTO `challenges/interviews_View_Stats` VALUES (47127,26,19),(47127,15,14),(18765,43,10),(18765,72,13),(60292,11,10),(72974,41,15);
/*!40000 ALTER TABLE `challenges/interviews_View_Stats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-29 10:28:26
