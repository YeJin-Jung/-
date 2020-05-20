-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hometraining
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `train_middle`
--

DROP TABLE IF EXISTS `train_middle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `train_middle` (
  `name` varchar(100) NOT NULL,
  `purpose` varchar(45) NOT NULL,
  `part` varchar(20) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit` varchar(10) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `video` varchar(200) DEFAULT NULL,
  `sett` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `toSelect` (`purpose`,`part`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train_middle`
--

LOCK TABLES `train_middle` WRITE;
/*!40000 ALTER TABLE `train_middle` DISABLE KEYS */;
INSERT INTO `train_middle` VALUES ('Alternting Lunges','다이어트','하체',20,'초',NULL,NULL,2),('Circle Plank','근력향상','상체',6,'개',NULL,NULL,5),('Inchworm Push Up','근력향상','상체',6,'개',NULL,NULL,5),('Lateral Leg Lifts','다이어트','하체',20,'초',NULL,NULL,2),('Plie Squats','다이어트','하체',20,'초',NULL,NULL,2),('Push Up Shoulder Taps','근력향상','상체',6,'개',NULL,NULL,5),('Side Lunges','다이어트','하체',20,'초',NULL,NULL,2),('Squats','다이어트','하체',20,'초',NULL,NULL,2),('니 업','근력향상','유산소',30,'초',NULL,NULL,3),('더블암 풀다운','다이어트','상체',30,'초',NULL,NULL,2),('덩키킥','근력향상','하체',15,'개',NULL,NULL,3),('러시안 트위스트','근력향상','유산소',30,'초',NULL,NULL,3),('런지니업','지구력 강화','종합',40,'초',NULL,NULL,3),('마운틴클라이머','지구력 강화','종합',40,'초',NULL,NULL,3),('버피','지구력 강화','종합',40,'초',NULL,NULL,3),('사이드 런지','근력향상','하체',15,'개',NULL,NULL,3),('스위밍 포즈','다이어트','상체',30,'초',NULL,NULL,2),('스쿼트','근력향상','하체',15,'개',NULL,NULL,3),('스쿼트(지구력 강화)','지구력 강화','종합',40,'초',NULL,NULL,3),('슬라이딩 포어암','다이어트','상체',30,'초',NULL,NULL,2),('슬로우 버피','다이어트','유산소',100,'개',NULL,NULL,2),('슬로우 버피(근력향상)','근력향상','유산소',30,'초',NULL,NULL,3),('시티드트위스트','지구력 강화','종합',40,'초',NULL,NULL,3),('싯업','지구력 강화','종합',40,'초',NULL,NULL,3),('암 서클','다이어트','상체',30,'초',NULL,NULL,2),('암 펑스','다이어트','상체',30,'초',NULL,NULL,2),('와이드 스쿼트','근력향상','하체',15,'개',NULL,NULL,3),('점핑잭','지구력 강화','종합',40,'초',NULL,NULL,3),('체스트 플라이','다이어트','상체',30,'초',NULL,NULL,2),('크램','근력향상','하체',15,'개',NULL,NULL,3),('크리스 크로스','근력향상','유산소',30,'초',NULL,NULL,3),('트레블링 로우','다이어트','상체',30,'초',NULL,NULL,2),('트위스트 니 업','근력향상','유산소',30,'초',NULL,NULL,3),('플랭크','지구력 강화','종합',40,'초',NULL,NULL,3),('플러터 킥','근력향상','유산소',30,'초',NULL,NULL,3),('하이니','지구력 강화','종합',40,'초',NULL,NULL,3),('핸드 하프서클','다이어트','상체',30,'초',NULL,NULL,2);
/*!40000 ALTER TABLE `train_middle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-21  0:02:41
