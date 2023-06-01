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
-- Table structure for table `full-score_Challenges`
--

DROP TABLE IF EXISTS `full-score_Challenges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `full-score_Challenges` (
  `challenge_id` int NOT NULL,
  `hacker_id` int DEFAULT NULL,
  `difficulty_level` int DEFAULT NULL,
  PRIMARY KEY (`challenge_id`),
  KEY `FK_Challenges_Hackers` (`hacker_id`),
  KEY `FK_Challenges_Difficulty` (`difficulty_level`),
  CONSTRAINT `FK_Challenges_Difficulty` FOREIGN KEY (`difficulty_level`) REFERENCES `full-score_Difficulty` (`difficulty_level`),
  CONSTRAINT `FK_Challenges_Hackers` FOREIGN KEY (`hacker_id`) REFERENCES `full-score_Hackers` (`hacker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `full-score_Challenges`
--

LOCK TABLES `full-score_Challenges` WRITE;
/*!40000 ALTER TABLE `full-score_Challenges` DISABLE KEYS */;
INSERT INTO `full-score_Challenges` VALUES (4810,77726,4),(21089,27205,1),(36566,5580,7),(66730,52243,6),(71055,52243,2);
/*!40000 ALTER TABLE `full-score_Challenges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `full-score_Difficulty`
--

DROP TABLE IF EXISTS `full-score_Difficulty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `full-score_Difficulty` (
  `difficulty_level` int NOT NULL,
  `score` int DEFAULT NULL,
  PRIMARY KEY (`difficulty_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `full-score_Difficulty`
--

LOCK TABLES `full-score_Difficulty` WRITE;
/*!40000 ALTER TABLE `full-score_Difficulty` DISABLE KEYS */;
INSERT INTO `full-score_Difficulty` VALUES (1,20),(2,30),(3,40),(4,60),(5,80),(6,100),(7,120);
/*!40000 ALTER TABLE `full-score_Difficulty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `full-score_Hackers`
--

DROP TABLE IF EXISTS `full-score_Hackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `full-score_Hackers` (
  `hacker_id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`hacker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `full-score_Hackers`
--

LOCK TABLES `full-score_Hackers` WRITE;
/*!40000 ALTER TABLE `full-score_Hackers` DISABLE KEYS */;
INSERT INTO `full-score_Hackers` VALUES (5580,'Rose'),(8439,'Angela'),(27205,'Frank'),(52243,'Patrick'),(52348,'Lisa'),(57645,'Kimberly'),(77726,'Bonnle'),(83082,'Michael'),(86870,'Todd'),(90411,'Joe');
/*!40000 ALTER TABLE `full-score_Hackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `full-score_Submissions`
--

DROP TABLE IF EXISTS `full-score_Submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `full-score_Submissions` (
  `submission_id` int NOT NULL,
  `hacker_id` int DEFAULT NULL,
  `challenge_id` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  PRIMARY KEY (`submission_id`),
  KEY `FK_Submissions_Hackers` (`hacker_id`),
  KEY `FK_Submissions_Challenges` (`challenge_id`),
  CONSTRAINT `FK_Submissions_Challenges` FOREIGN KEY (`challenge_id`) REFERENCES `full-score_Challenges` (`challenge_id`),
  CONSTRAINT `FK_Submissions_Hackers` FOREIGN KEY (`hacker_id`) REFERENCES `full-score_Hackers` (`hacker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `full-score_Submissions`
--

LOCK TABLES `full-score_Submissions` WRITE;
/*!40000 ALTER TABLE `full-score_Submissions` DISABLE KEYS */;
INSERT INTO `full-score_Submissions` VALUES (523,5580,71055,4),(2721,8439,4810,36),(3924,8439,36566,80),(7344,8439,66730,92),(8941,27205,4810,4),(38355,27205,66730,35),(39784,27205,71055,23),(40326,52243,36566,77),(43353,52243,66730,0),(45788,52348,36566,0),(49105,52348,66730,0),(55385,52348,71055,20),(55877,57645,66730,80),(65300,77726,21089,10),(68628,77726,36566,30),(83554,77726,66730,30),(84162,83082,4810,40),(93058,86870,36566,30),(94613,86870,71055,30),(97397,90411,66730,100),(97431,90411,71055,30);
/*!40000 ALTER TABLE `full-score_Submissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-01 22:49:00
