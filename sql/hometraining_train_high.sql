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
-- Table structure for table `train_high`
--

DROP TABLE IF EXISTS `train_high`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `train_high` (
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
-- Dumping data for table `train_high`
--

LOCK TABLES `train_high` WRITE;
/*!40000 ALTER TABLE `train_high` DISABLE KEYS */;
INSERT INTO `train_high` VALUES ('Narrow Squat','근력향상','하체',10,'개',NULL,NULL,2),('Plie Squat','근력향상','하체',10,'개',NULL,NULL,2),('더블 레그 스트레치','다이어트','상체',15,'개',NULL,NULL,3),('러시안 트위스트','근력향상','상체',15,'개',NULL,NULL,2),('런지 & 니킥','근력향상','유산소',40,'초',NULL,NULL,2),('런지 잭','다이어트','유산소',40,'초',NULL,NULL,2),('레그 써클','다이어트','상체',15,'개',NULL,NULL,3),('롤리 폴리','근력향상','유산소',40,'초',NULL,NULL,2),('마운틴 클라이머','다이어트','유산소',40,'초',NULL,NULL,2),('바이시클 크런치(근력향상)','근력향상','상체',15,'개',NULL,NULL,2),('바이시클 크런치(다이어트)','다이어트','유산소',40,'초',NULL,NULL,2),('백 바우','근력향상','상체',15,'개',NULL,NULL,2),('백 익스텐션','근력향상','유산소',40,'초',NULL,NULL,2),('밴트럴 잭','다이어트','유산소',40,'초',NULL,NULL,2),('벤트 오버 로우','근력향상','상체',15,'개',NULL,NULL,2),('벨리 니업','근력향상','유산소',40,'초',NULL,NULL,2),('사이드 레그레이즈','다이어트','유산소',40,'초',NULL,NULL,2),('사이드 스쿼트','근력향상','하체',10,'개',NULL,NULL,2),('사이드 원 암 푸쉬업','다이어트','상체',15,'개',NULL,NULL,3),('사이드 플랭크 & 레그 레이즈','다이어트','상체',15,'개',NULL,NULL,3),('스케이터 홉스','다이어트','유산소',40,'초',NULL,NULL,2),('스쿼트 & 런지','근력향상','유산소',40,'초',NULL,NULL,2),('스쿼트 & 레그 레이즈','근력향상','하체',10,'개',NULL,NULL,2),('스쿼트 & 트위스트','근력향상','유산소',40,'초',NULL,NULL,2),('스쿼트 잭','근력향상','하체',10,'개',NULL,NULL,2),('스쿼트 홀드','근력향상','하체',10,'개',NULL,NULL,2),('스쿼트(근력향상)','근력향상','하체',10,'개',NULL,NULL,2),('스쿼트(다이어트)','다이어트','유산소',40,'초',NULL,NULL,2),('스탠딩 백킥','다이어트','하체',20,'개',NULL,NULL,3),('스탠스 잭','다이어트','유산소',40,'초',NULL,NULL,2),('스테이터 홉스','근력향상','유산소',40,'초',NULL,NULL,2),('슬로우 버피(근력 향상)','근력향상','유산소',40,'초',NULL,NULL,2),('슬로우 버피(다이어트)','다이어트','유산소',40,'초',NULL,NULL,2),('암 워킹','근력향상','유산소',40,'초',NULL,NULL,2),('업&다운 포인트','근력향상','유산소',40,'초',NULL,NULL,2),('엘보우 플랭크','다이어트','유산소',40,'초',NULL,NULL,2),('와이드 스쿼트(근력향상)','근력향상','하체',10,'개',NULL,NULL,2),('와이드 스쿼트(다이어트)','다이어트','하체',20,'개',NULL,NULL,3),('점프 & 암폴드','근력향상','유산소',40,'초',NULL,NULL,2),('점프 스쿼트','근력향상','하체',10,'개',NULL,NULL,2),('점핑 잭','다이어트','유산소',40,'초',NULL,NULL,2),('점핑잭 노점프','근력향상','유산소',40,'초',NULL,NULL,2),('쿨다운','근력향상','유산소',40,'초',NULL,NULL,2),('타바타 운동','지구력 강화','종합',480,'초',NULL,NULL,1),('탭스텝 & 암레이즈','근력향상','유산소',40,'초',NULL,NULL,2),('토 터치 크런치','근력향상','상체',15,'개',NULL,NULL,2),('토터치 킥','다이어트','유산소',40,'초',NULL,NULL,2),('트리플 딥 스쿼트','근력향상','하체',10,'개',NULL,NULL,2),('트위스트 니','다이어트','유산소',40,'초',NULL,NULL,2),('플라이 잭','다이어트','유산소',40,'초',NULL,NULL,2),('플랭크 & 레그리프트','다이어트','유산소',40,'초',NULL,NULL,2),('플리에 & 핸드 클랩','근력향상','유산소',40,'초',NULL,NULL,2),('하이니 잭','다이어트','유산소',40,'초',NULL,NULL,2),('힙레이즈','근력향상','상체',15,'개',NULL,NULL,2);
/*!40000 ALTER TABLE `train_high` ENABLE KEYS */;
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
