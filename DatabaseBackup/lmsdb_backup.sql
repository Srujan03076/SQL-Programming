-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: lmsdb
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_parameters`
--

DROP TABLE IF EXISTS `app_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_parameters` (
  `id` int NOT NULL,
  `key_type` varchar(20) NOT NULL,
  `key_value` varchar(20) NOT NULL,
  `key_text` varchar(80) DEFAULT NULL,
  `cur_status` char(1) DEFAULT NULL,
  `lastupd_user` int DEFAULT NULL,
  `lastupd_stamp` datetime DEFAULT NULL,
  `creator_stamp` datetime DEFAULT NULL,
  `creator_user` int DEFAULT NULL,
  `seq_num` int DEFAULT NULL,
  KEY `app_parameters_1` (`key_type`,`key_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_parameters`
--

LOCK TABLES `app_parameters` WRITE;
/*!40000 ALTER TABLE `app_parameters` DISABLE KEYS */;
INSERT INTO `app_parameters` VALUES (1,'Type1','fine','Execellent','Y',1,NULL,NULL,1,1),(2,'Type2','fine','Execellent','Y',2,NULL,NULL,2,2),(3,'Type3','fine','Execellent','Y',3,NULL,NULL,3,3),(4,'Type4','fine','Execellent','Y',4,NULL,NULL,4,4),(5,'Type5','fine','Execellent','Y',5,NULL,NULL,5,5);
/*!40000 ALTER TABLE `app_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate` (
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES ('Ganesh','Mishra','ganesh@gmail.com '),('Gyanesh','Mahajan','gyanesh@gmail.com '),('Gayatri','Pandey','gayatrih@gmail.com '),('Gaju','Singh','gaju@gmail.com '),('Subodh','Mahajan','subodh@gmail.com '),('Subash','Mahajan','subodh@gmail.com ');
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_bank_det`
--

DROP TABLE IF EXISTS `candidate_bank_det`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_bank_det` (
  `id` int NOT NULL,
  `candidate_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `account_num` int NOT NULL,
  `is_account_num_verified` int DEFAULT '0',
  `ifsc_code` varchar(20) NOT NULL,
  `is_ifsc_code_verified` int DEFAULT '0',
  `pan_number` varchar(10) DEFAULT NULL,
  `is_pan_number_verified` int DEFAULT '0',
  `addhaar_num` int NOT NULL,
  `is_addhaar_num_verified` int DEFAULT '0',
  `creator_stamp` datetime DEFAULT NULL,
  `creator_user` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_candidate_bank_det_candidate_id` (`candidate_id`),
  CONSTRAINT `FK_candidate_bank_det_candidate_id` FOREIGN KEY (`candidate_id`) REFERENCES `fellowship_candidates` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_bank_det`
--

LOCK TABLES `candidate_bank_det` WRITE;
/*!40000 ALTER TABLE `candidate_bank_det` DISABLE KEYS */;
INSERT INTO `candidate_bank_det` VALUES (1,1,'Ganesh',22447955,1,'RRWEFG45F1DG',1,'SQDERT444',1,78488967,1,'2022-01-09 00:00:00',10),(2,2,'Akshay',22444445,1,'RRSQAG45F1DG',1,'SQDXYT333',1,78456784,1,'2021-03-06 00:00:00',12),(3,3,'Shubham',22444444,1,'RRSQAG22222',1,'SQDXYT333',1,78456784,1,'2021-03-06 00:00:00',11),(4,4,'Shaunak',55444444,1,'RRSQAG21111',1,'SQDXYT332',1,78456784,1,'2021-03-06 00:00:00',31),(5,5,'Kapil',55444444,1,'RRSQAG21111',1,'SQDYT3324',1,78453456,1,'2021-03-06 00:00:00',14);
/*!40000 ALTER TABLE `candidate_bank_det` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_AfterInsertcandidatebankcheck` AFTER INSERT ON `candidate_bank_det` FOR EACH ROW BEGIN
		INSERT INTO user_roles(user_id,role_name) VALUES(6,'RAXY');
	END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `candidate_biodata`
--

DROP TABLE IF EXISTS `candidate_biodata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_biodata` (
  `id` int NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile_num` bigint NOT NULL,
  `hired_city` varchar(50) NOT NULL,
  `hired_date` datetime NOT NULL,
  `degree` varchar(100) NOT NULL,
  `permanent_pincode` int DEFAULT NULL,
  `hired_lab` varchar(20) DEFAULT NULL,
  `attitude_remark` varchar(15) DEFAULT NULL,
  `communication_remark` varchar(15) DEFAULT NULL,
  `knowledge_remark` varchar(15) DEFAULT NULL,
  `aggregate_remark` varchar(15) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `creator_stamp` datetime DEFAULT NULL,
  `creator_user` int DEFAULT NULL,
  PRIMARY KEY (`id`,`hired_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
/*!50100 PARTITION BY RANGE (year(`hired_date`))
(PARTITION p0 VALUES LESS THAN (2015) ENGINE = InnoDB,
 PARTITION p1 VALUES LESS THAN (2016) ENGINE = InnoDB,
 PARTITION p2 VALUES LESS THAN (2017) ENGINE = InnoDB,
 PARTITION p3 VALUES LESS THAN (2018) ENGINE = InnoDB) */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_biodata`
--

LOCK TABLES `candidate_biodata` WRITE;
/*!40000 ALTER TABLE `candidate_biodata` DISABLE KEYS */;
INSERT INTO `candidate_biodata` VALUES (1,'Srujan','Sudhakar','Mahajan','sm@gmail.com',88479555555,'Jalna','2015-05-05 14:20:56','Btech',442255,'EasyRewarz','Great Vision','Excellent','Excellent','Excellent','active','2022-01-01 12:20:56',1),(4,'Mrunal',NULL,'Deshmukh','md@gmail.com',8577994455,'Jaipur','2015-04-07 14:20:56','Btech',222255,'Happiest Minds','Great Vocab','Excellent','Excellent','Excellent','active','2022-04-07 14:20:56',5),(2,'Shubham',NULL,'Mule','sm@gmail.com',8007994455,'Gudgoan','2016-01-08 12:20:56','MCA',448255,'EasyRewarz','Great Vocab','Excellent','Excellent','Excellent','active','2022-01-08 12:20:56',3),(6,'sangeeta',NULL,'Mishra','sm@gmail.com',8878894455,'Pune','2016-04-07 14:20:56','Btech',245255,'Bifin Minds','Great Vision','Excellent','Excellent','Excellent','active','2022-04-07 14:20:56',5),(3,'Ashok',NULL,'Mahajan','am@gmail.com',9977994455,'Mumbai','2017-04-03 14:20:56','Btech',442255,'Bifin','Great Vocab','Excellent','Excellent','Excellent','active','2022-04-03 14:20:56',4),(5,'subodh',NULL,'Mishra','sm@gmail.com',8877994455,'Pune','2017-04-07 14:20:56','Btech',222255,'Happiest Minds','Great Vision','Excellent','Excellent','Excellent','active','2022-04-07 14:20:56',5);
/*!40000 ALTER TABLE `candidate_biodata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_docs`
--

DROP TABLE IF EXISTS `candidate_docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_docs` (
  `id` int NOT NULL,
  `candidate_id` int NOT NULL,
  `doc_type` varchar(20) DEFAULT NULL,
  `doc_path` varchar(500) DEFAULT NULL,
  `status` int DEFAULT '1',
  `creator_stamp` datetime DEFAULT NULL,
  `creator_user` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_candidate_docs_candidate_id` (`candidate_id`),
  CONSTRAINT `FK_candidate_docs_candidate_id` FOREIGN KEY (`candidate_id`) REFERENCES `fellowship_candidates` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_docs`
--

LOCK TABLES `candidate_docs` WRITE;
/*!40000 ALTER TABLE `candidate_docs` DISABLE KEYS */;
INSERT INTO `candidate_docs` VALUES (1,1,' doc 1',' doc 1',1,NULL,1),(2,2,' doc 2',' doc 2',1,NULL,2),(3,3,' doc 3',' doc 3',1,NULL,1),(4,4,' doc 4',' doc 4',1,NULL,4),(5,5,' doc 5',' doc 5',1,NULL,4);
/*!40000 ALTER TABLE `candidate_docs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_qualification`
--

DROP TABLE IF EXISTS `candidate_qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_qualification` (
  `id` int NOT NULL,
  `candidate_id` int NOT NULL,
  `diploma` int DEFAULT '0',
  `degree_name` varchar(10) NOT NULL,
  `is_degree_name_verified` int DEFAULT '0',
  `employee_decipline` varchar(100) NOT NULL,
  `is_employee_decipline_verified` int DEFAULT '0',
  `passing_year` int NOT NULL,
  `is_passing_year_verified` int DEFAULT '0',
  `aggr_per` double DEFAULT NULL,
  `final_year_per` double DEFAULT NULL,
  `is_final_year_per_verified` int DEFAULT '0',
  `training_institute` varchar(20) NOT NULL,
  `is_training_institute_verified` int DEFAULT '0',
  `training_duration_month` int DEFAULT NULL,
  `is_training_duration_month_verified` int DEFAULT '0',
  `other_training` varchar(255) DEFAULT NULL,
  `is_other_training_verified` int DEFAULT '0',
  `creator_stamp` datetime DEFAULT NULL,
  `creator_user` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_candidate_qual_candidate_id` (`candidate_id`),
  CONSTRAINT `FK_candidate_qual_candidate_id` FOREIGN KEY (`candidate_id`) REFERENCES `fellowship_candidates` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_qualification`
--

LOCK TABLES `candidate_qualification` WRITE;
/*!40000 ALTER TABLE `candidate_qualification` DISABLE KEYS */;
INSERT INTO `candidate_qualification` VALUES (1,1,1,'B.E',1,'lazy',1,2021,1,84.2,82.1,1,'Bajaj Pune',1,2,1,'Bajaj Wrdha',1,'2022-05-25 00:00:00',2),(2,2,1,'B.E',1,'Punctual',1,2021,1,74.2,92.1,1,'Bajaj Pune',1,2,1,'Bajaj Wrdha',1,'2022-05-25 00:00:00',3),(3,3,1,'B.E',1,'focused',1,2021,1,73.2,91.1,1,'DMIETR Wardha',1,2,1,'MIT Pune',1,'2022-05-25 00:00:00',3),(4,4,1,'B.E',1,'focused',1,2021,1,73.2,91.1,1,'SOS Wardha',1,2,1,'Alponsa Pune',1,'2022-05-25 00:00:00',5),(5,5,1,'B.E',1,'focused',1,2021,1,73.2,91.1,1,'SOS Wardha',1,2,1,'Alponsa Pune',1,'2022-05-25 00:00:00',5);
/*!40000 ALTER TABLE `candidate_qualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_techstack_assignment`
--

DROP TABLE IF EXISTS `candidate_techstack_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_techstack_assignment` (
  `id` int NOT NULL,
  `requirement_id` int NOT NULL,
  `candidate_id` int NOT NULL,
  `assign_date` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `creator_stamp` datetime DEFAULT NULL,
  `creator_user` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_candidate_techstack_assignment_requirement_id` (`requirement_id`),
  KEY `FK_candidate_candidate_id` (`candidate_id`),
  CONSTRAINT `candidate_techstack_assignment_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `fellowship_candidates` (`id`),
  CONSTRAINT `FK_candidate_techstack_assignment_requirement_id` FOREIGN KEY (`requirement_id`) REFERENCES `company_requirement` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_techstack_assignment`
--

LOCK TABLES `candidate_techstack_assignment` WRITE;
/*!40000 ALTER TABLE `candidate_techstack_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_techstack_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidates_education_det_check`
--

DROP TABLE IF EXISTS `candidates_education_det_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidates_education_det_check` (
  `id` int NOT NULL,
  `candidate_id` int NOT NULL,
  `field_name` int NOT NULL,
  `is_verified` int DEFAULT NULL,
  `lastupd_stamp` datetime DEFAULT NULL,
  `lastupd_user` int DEFAULT NULL,
  `creator_stamp` datetime DEFAULT NULL,
  `creator_user` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidates_education_det_check`
--

LOCK TABLES `candidates_education_det_check` WRITE;
/*!40000 ALTER TABLE `candidates_education_det_check` DISABLE KEYS */;
INSERT INTO `candidates_education_det_check` VALUES (1,1,2,1,'2021-06-28 00:00:00',2,'2021-06-28 00:00:00',3),(2,2,3,1,'2021-07-29 00:00:00',2,'2021-05-27 00:00:00',4),(3,3,2,1,'2021-04-28 00:00:00',2,'2021-04-28 00:00:00',7),(4,4,3,1,'2021-03-29 00:00:00',2,'2021-05-27 00:00:00',6),(5,5,2,1,'2021-04-28 00:00:00',2,'2021-04-28 00:00:00',9),(6,6,3,1,'2021-07-29 00:00:00',2,'2021-05-27 00:00:00',4),(6,6,3,1,'2021-07-29 00:00:00',2,'2021-05-27 00:00:00',4),(7,7,3,1,'2021-07-29 00:00:00',2,'2021-05-27 00:00:00',4),(7,7,3,1,'2021-07-29 00:00:00',2,'2021-05-27 00:00:00',4),(8,8,3,1,'2021-07-29 00:00:00',2,'2021-05-27 00:00:00',4),(9,9,3,1,'2021-07-29 00:00:00',2,'2021-05-27 00:00:00',4),(9,9,3,1,'2021-07-29 00:00:00',2,'2021-05-27 00:00:00',4);
/*!40000 ALTER TABLE `candidates_education_det_check` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_AfterInsertvalucandidateseducationdetcheck` AFTER INSERT ON `candidates_education_det_check` FOR EACH ROW BEGIN
		INSERT INTO user_roles(user_id,role_name) VALUES(6,'RAXY');
	END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `candidates_personal_det_check`
--

DROP TABLE IF EXISTS `candidates_personal_det_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidates_personal_det_check` (
  `id` int NOT NULL,
  `candidate_id` int NOT NULL,
  `field_name` int NOT NULL,
  `is_verified` int DEFAULT NULL,
  `lastupd_stamp` datetime DEFAULT NULL,
  `lastupd_user` int DEFAULT NULL,
  `creator_stamp` datetime DEFAULT NULL,
  `creator_user` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidates_personal_det_check`
--

LOCK TABLES `candidates_personal_det_check` WRITE;
/*!40000 ALTER TABLE `candidates_personal_det_check` DISABLE KEYS */;
INSERT INTO `candidates_personal_det_check` VALUES (1,1,5,1,'2020-04-04 01:03:00',5,'2022-05-25 00:00:00',53),(2,2,5,1,'2020-04-04 01:03:00',5,'2022-05-25 00:00:00',31),(3,3,5,1,'2020-04-04 01:03:00',5,'2022-05-25 00:00:00',12),(4,4,5,1,'2020-04-04 01:03:00',5,'2022-05-25 00:00:00',30),(5,5,5,1,'2020-04-04 01:03:00',5,'2022-05-25 00:00:00',14),(6,6,5,1,'2020-04-04 01:03:00',5,'2022-05-25 00:00:00',53),(7,7,5,1,'2020-04-04 01:03:00',5,'2022-05-25 00:00:00',53),(7,7,5,1,'2020-04-04 01:03:00',5,'2022-05-25 00:00:00',53);
/*!40000 ALTER TABLE `candidates_personal_det_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `id` int NOT NULL,
  `name` varchar(11) NOT NULL,
  `address` varchar(150) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `status` int DEFAULT '1',
  `creator_stamp` datetime DEFAULT NULL,
  `creator_user` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'EasyRewardz','Rudra Complex, Near Railway Station','Gurgaon',1,NULL,1),(2,'KPMG','City Center','Banglore',1,NULL,1),(3,'PWC','City Center','Banglore',1,NULL,1),(4,'TATA','Rudra Complex, Near Railway Station','Gurgaon',1,NULL,1);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `deleted_company` AFTER DELETE ON `company` FOR EACH ROW BEGIN
		INSERT INTO company_trash(company_name, date_deleted) VALUES(old.name, localtime());
	END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `company_requirement`
--

DROP TABLE IF EXISTS `company_requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_requirement` (
  `id` int NOT NULL,
  `company_id` int NOT NULL,
  `candidate_id` int NOT NULL,
  `requested_month` varchar(20) NOT NULL,
  `city` varchar(20) DEFAULT NULL,
  `is_doc_verification` int DEFAULT '1',
  `requirement_doc_path` varchar(500) DEFAULT NULL,
  `no_of_engg` int NOT NULL,
  `tech_stack_id` int NOT NULL,
  `tech_type_id` int NOT NULL,
  `maker_programs_id` int NOT NULL,
  `lead_id` int NOT NULL,
  `ideateion_engg_id` int DEFAULT NULL,
  `buddy_engg_id` int DEFAULT NULL,
  `special_remark` text,
  `status` int DEFAULT '1',
  `creator_stamp` datetime DEFAULT NULL,
  `creator_user` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_candidate_candidate_id` (`candidate_id`),
  CONSTRAINT `FK_candidate_candidate_id` FOREIGN KEY (`candidate_id`) REFERENCES `fellowship_candidates` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_requirement`
--

LOCK TABLES `company_requirement` WRITE;
/*!40000 ALTER TABLE `company_requirement` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_requirement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_trash`
--

DROP TABLE IF EXISTS `company_trash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_trash` (
  `company_name` varchar(60) NOT NULL,
  `date_deleted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_trash`
--

LOCK TABLES `company_trash` WRITE;
/*!40000 ALTER TABLE `company_trash` DISABLE KEYS */;
INSERT INTO `company_trash` VALUES ('1','2022-01-23'),('TATA','2022-01-23'),('TATA','2022-01-24'),('WIPRO','2022-01-24'),('TATA','2022-01-24'),('TATA','2022-01-25');
/*!40000 ALTER TABLE `company_trash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `companyassigned`
--

DROP TABLE IF EXISTS `companyassigned`;
/*!50001 DROP VIEW IF EXISTS `companyassigned`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `companyassigned` AS SELECT 
 1 AS `id`,
 1 AS `first_name`,
 1 AS `companyAssigned`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `fellowship_candidates`
--

DROP TABLE IF EXISTS `fellowship_candidates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fellowship_candidates` (
  `id` int NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile_num` bigint NOT NULL,
  `hired_city` varchar(50) NOT NULL,
  `hired_date` datetime NOT NULL,
  `degree` varchar(50) NOT NULL,
  `permanent_pincode` int DEFAULT NULL,
  `hired_lab` varchar(20) DEFAULT NULL,
  `attitude_remark` varchar(15) DEFAULT NULL,
  `communication_remark` varchar(15) DEFAULT NULL,
  `knowledge_remark` varchar(15) DEFAULT NULL,
  `aggregate_remark` varchar(15) DEFAULT NULL,
  `birth_date` date NOT NULL,
  `is_birth_date_verified` int DEFAULT '0',
  `parent_name` varchar(50) DEFAULT NULL,
  `parent_occupation` varchar(100) NOT NULL,
  `parent_mobile_num` bigint NOT NULL,
  `parent_annual_sal` double DEFAULT NULL,
  `local_addr` varchar(255) NOT NULL,
  `permanent_addr` varchar(250) DEFAULT NULL,
  `photo_path` varchar(500) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `candidate_status` varchar(20) NOT NULL,
  `personal_info_filled` int DEFAULT '0',
  `bank_info_filled` int DEFAULT '0',
  `educational_info_filled` int DEFAULT '0',
  `doc_status` varchar(20) DEFAULT NULL,
  `remark` varchar(150) DEFAULT NULL,
  `creator_stamp` datetime DEFAULT NULL,
  `creator_user` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lastname` (`last_name`),
  KEY `idx_id` (`id`,`email`),
  KEY `salary_index` (`parent_annual_sal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fellowship_candidates`
--

LOCK TABLES `fellowship_candidates` WRITE;
/*!40000 ALTER TABLE `fellowship_candidates` DISABLE KEYS */;
INSERT INTO `fellowship_candidates` VALUES (1,'Ganesh','Prabhakar','Mishra','ganesh@gmail.com ',8956748596,'Delhi','2019-12-13 00:00:00','B.E',277303,'EasyRewardz','Good','Good','Good','good','1999-12-13',1,'Arun','Farmer',7584962547,400000,'Ballia','Ballia','photo_path','2019-12-13','Good',1,1,1,'Correct','Good',NULL,1),(2,'Gyanesh','Prabhu','Mahajan','gyanesh@gmail.com ',8956767890,'Mumbai','2019-12-13 00:00:00','B.E',277303,'TATA','Good','Good','Good','good','1999-12-13',1,'Arun','Farmer',7584962547,150000,'Kolhapur','Kolhapur','photo_path','2019-12-13','Good',1,1,1,'Correct','Good',NULL,1),(3,'Gayatri','Gajanan','Pandey','gayatrih@gmail.com ',8956767890,'Mumbai','2019-12-13 00:00:00','B.E',277303,'TATA','Good','Good','Good','good','1999-12-13',1,'Arun','Farmer',7556789056,300000,'Kolhapur','Kolhapur','photo_path','2019-12-13','Good',1,1,1,'Correct','Good',NULL,1),(4,'Gaju','Gajanan','Singh','gaju@gmail.com ',8956767890,'Mumbai','2019-12-13 00:00:00','B.E',277303,'TATA','Good','Good','Good','good','1999-12-13',1,'Arun','Farmer',7556789056,410000,'Kolhapur','Kolhapur','photo_path','2019-12-13','Good',1,1,1,'Correct','Good',NULL,1),(5,'Subodh','Sudhakar','Mahajan','subodh@gmail.com ',8956767890,'Mumbai','2019-12-13 00:00:00','B.E',277303,'TATA','Good','Good','Good','good','1999-12-13',1,'Arun','Farmer',7556789056,420000,'Kolhapur','Kolhapur','photo_path','2019-12-13','Good',1,1,1,'Correct','Good',NULL,1),(6,'Subash','Sudhakar','Mahajan','subodh@gmail.com ',8956767890,'Mumbai','2019-12-13 00:00:00','B.E',277303,'TATA','Good','Good','Good','good','1999-12-13',1,'Sudhakar','Farmer',7556789056,300000,'Kolhapur','Kolhapur','photo_path','2019-12-13','Good',1,1,1,'Correct','Good',NULL,1);
/*!40000 ALTER TABLE `fellowship_candidates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `full_name`
--

DROP TABLE IF EXISTS `full_name`;
/*!50001 DROP VIEW IF EXISTS `full_name`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `full_name` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `hired_candidate`
--

DROP TABLE IF EXISTS `hired_candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hired_candidate` (
  `id` int NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `mobile_number` bigint NOT NULL,
  `hired_city` varchar(50) NOT NULL,
  `degree` varchar(50) NOT NULL,
  `hired_date` datetime NOT NULL,
  `permanent_pincode` int DEFAULT NULL,
  `hired_lab` varchar(50) DEFAULT NULL,
  `attitude` varchar(50) DEFAULT NULL,
  `communication_remark` varchar(30) DEFAULT NULL,
  `knowledge_remark` varchar(30) DEFAULT NULL,
  `aggregate_remark` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `creator_stamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hired_candidate`
--

LOCK TABLES `hired_candidate` WRITE;
/*!40000 ALTER TABLE `hired_candidate` DISABLE KEYS */;
INSERT INTO `hired_candidate` VALUES (1,'Ganesh','Prabhakar','Mishra','ganesh@gmail.com',8847992225,'Banglore','M.SC','2022-05-05 14:20:56',277303,'EasyRewarz','creative','Excellent','Excellent','Excellent','active','2022-01-01 12:20:56'),(2,'Srujan','Sudhakar','Mahajan','sm@gmail.com',8847994444,'Pune','B.SC','2022-05-05 14:20:56',277313,'EasyRewarz','Creative','Excellent','Excellent','Excellent','active','2022-01-01 12:20:56'),(3,'Shaunak','Sudhakar','Wankhade','sw@gmail.com',8847994333,'Pune','M.Com','2022-05-05 14:20:56',277313,'EasyRewarz','Creative','Excellent','Excellent','Excellent','active','2022-01-01 12:20:56'),(4,'Subodh','Sudhakar','Mahajan','sm@gmail.com',88479967894,'Pune','B.SC','2022-05-05 14:20:56',277313,'EasyRewarz','Creative','Excellent','Excellent','Excellent','active','2022-01-01 12:20:56'),(5,'Shaurya','Sushant','Wankhade','ssw@gmail.com',8984799433,'Chennai','M.Com','2022-05-05 14:20:56',277313,'EasyRewarz','Creative','Excellent','Excellent','Excellent','active','2022-01-01 12:20:56'),(6,'Ganesh','Prabhakar','Mishra','ganesh@gmail.com',8847992225,'Banglore','M.SC','2022-05-05 14:20:56',277403,'EasyRewarz','creative','Excellent','Excellent','Excellent','active','2022-01-01 12:20:56');
/*!40000 ALTER TABLE `hired_candidate` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `cl_trigger` BEFORE INSERT ON `hired_candidate` FOR EACH ROW SET new.email_id=new.email_id+100 */;;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `clg_trigger` BEFORE INSERT ON `hired_candidate` FOR EACH ROW SET new.email_id=new.email_id+xyz */;;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `sample_trigger` BEFORE INSERT ON `hired_candidate` FOR EACH ROW SET new.permanent_pincode=new.permanent_pincode+100 */;;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_AfterInsert` AFTER INSERT ON `hired_candidate` FOR EACH ROW BEGIN
		INSERT INTO user_roles(user_id,role_name) VALUES(6,'RAXY');
	END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `lab`
--

DROP TABLE IF EXISTS `lab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lab` (
  `id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` int DEFAULT '1',
  `creator_stamp` datetime DEFAULT NULL,
  `creator_user` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab`
--

LOCK TABLES `lab` WRITE;
/*!40000 ALTER TABLE `lab` DISABLE KEYS */;
INSERT INTO `lab` VALUES (1,'SQL','Mumbai','ANdheri',1,NULL,1),(2,'Srujan','Mumbai','ANdheri',2,NULL,1),(3,'Frondend','Mumbai','ANdheri,West',3,NULL,1),(4,'Frondend','Mumbai','ANdheri,West',3,NULL,1),(5,'Frondend','Mumbai','ANdheri,West',3,NULL,1);
/*!40000 ALTER TABLE `lab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lab_threshold`
--

DROP TABLE IF EXISTS `lab_threshold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lab_threshold` (
  `id` int NOT NULL,
  `lab_id` int NOT NULL,
  `lab_capacity` varchar(50) DEFAULT NULL,
  `lead_threshold` int DEFAULT NULL,
  `ideation_engg_threshold` int DEFAULT NULL,
  `buddy_engg_threshold` int DEFAULT NULL,
  `status` int DEFAULT '1',
  `creator_stamp` datetime DEFAULT NULL,
  `creator_user` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_lab_lab_id` (`lab_id`),
  CONSTRAINT `FK_lab_lab_id` FOREIGN KEY (`lab_id`) REFERENCES `lab` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab_threshold`
--

LOCK TABLES `lab_threshold` WRITE;
/*!40000 ALTER TABLE `lab_threshold` DISABLE KEYS */;
/*!40000 ALTER TABLE `lab_threshold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `maker_plan`
--

DROP TABLE IF EXISTS `maker_plan`;
/*!50001 DROP VIEW IF EXISTS `maker_plan`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `maker_plan` AS SELECT 
 1 AS `id`,
 1 AS `program_name`,
 1 AS `program_type`,
 1 AS `program_link`,
 1 AS `tech_stack_id`,
 1 AS `tech_type_id`,
 1 AS `is_program_approved`,
 1 AS `description`,
 1 AS `status`,
 1 AS `creator_stamp`,
 1 AS `creator_user`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `maker_program`
--

DROP TABLE IF EXISTS `maker_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maker_program` (
  `id` int NOT NULL,
  `program_name` int NOT NULL,
  `program_type` varchar(10) DEFAULT NULL,
  `program_link` text,
  `tech_stack_id` int DEFAULT NULL,
  `tech_type_id` int DEFAULT NULL,
  `is_program_approved` int DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `creator_stamp` datetime DEFAULT NULL,
  `creator_user` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_maker_program_tech_stack_id` (`tech_stack_id`),
  KEY `FK_maker_program_tech_type_id` (`tech_type_id`),
  CONSTRAINT `FK_maker_program_tech_stack_id` FOREIGN KEY (`tech_stack_id`) REFERENCES `tech_stack` (`id`),
  CONSTRAINT `FK_maker_program_tech_type_id` FOREIGN KEY (`tech_type_id`) REFERENCES `tech_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maker_program`
--

LOCK TABLES `maker_program` WRITE;
/*!40000 ALTER TABLE `maker_program` DISABLE KEYS */;
INSERT INTO `maker_program` VALUES (1,55,'Paid','Audience',1,1,1,'approved',1,'2022-02-05 00:00:00',22),(2,55,'Paid','Audience',2,2,1,'approved',1,'2022-02-05 00:00:00',23),(3,55,'Paid','Audience',3,3,1,'approved',1,'2022-02-05 00:00:00',24),(4,551,'Paid','Audience',4,4,1,'approved',1,'2022-02-05 00:00:00',25),(5,550,'Paid','Audience',3,3,1,'approved',1,'2022-02-05 00:00:00',27);
/*!40000 ALTER TABLE `maker_program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentor`
--

DROP TABLE IF EXISTS `mentor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentor` (
  `id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `mentor_type` varchar(20) DEFAULT NULL,
  `lab_id` int NOT NULL,
  `status` int DEFAULT '1',
  `creator_stamp` datetime DEFAULT NULL,
  `creator_user` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_mentor_lab_id` (`lab_id`),
  CONSTRAINT `FK_mentor_lab_id` FOREIGN KEY (`lab_id`) REFERENCES `mentor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor`
--

LOCK TABLES `mentor` WRITE;
/*!40000 ALTER TABLE `mentor` DISABLE KEYS */;
INSERT INTO `mentor` VALUES (1,'Srujan Singh','Mentor',1,1,NULL,1),(2,'Gurkeerat Singh','Mentor',1,1,NULL,1),(3,'Khuswant Singh','Mentor',1,1,NULL,1),(4,'Balwant Singh','Mentor',1,1,NULL,1),(5,'Subodh Singh','Mentor',1,1,NULL,1);
/*!40000 ALTER TABLE `mentor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentor_ideation_map`
--

DROP TABLE IF EXISTS `mentor_ideation_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentor_ideation_map` (
  `id` int NOT NULL,
  `mentor_id` int NOT NULL,
  `status` int DEFAULT '1',
  `creator_stamp` datetime DEFAULT NULL,
  `creator_user` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_mentor_ideation_map_mentor_id` (`mentor_id`),
  CONSTRAINT `FK_mentor_ideation_map_mentor_id` FOREIGN KEY (`mentor_id`) REFERENCES `mentor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor_ideation_map`
--

LOCK TABLES `mentor_ideation_map` WRITE;
/*!40000 ALTER TABLE `mentor_ideation_map` DISABLE KEYS */;
INSERT INTO `mentor_ideation_map` VALUES (1,1,1,NULL,1),(2,2,1,NULL,1),(3,3,1,NULL,1),(4,4,1,NULL,1),(5,5,1,NULL,1);
/*!40000 ALTER TABLE `mentor_ideation_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentor_techstack`
--

DROP TABLE IF EXISTS `mentor_techstack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentor_techstack` (
  `id` int NOT NULL,
  `mentor_id` int NOT NULL,
  `tech_stack_id` int NOT NULL,
  `status` int DEFAULT '1',
  `creator_stamp` datetime DEFAULT NULL,
  `creator_user` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_mentor_mentor_id` (`mentor_id`),
  KEY `FK_mentor_tech_stack_id` (`tech_stack_id`),
  CONSTRAINT `FK_mentor_mentor_id` FOREIGN KEY (`mentor_id`) REFERENCES `mentor` (`id`),
  CONSTRAINT `FK_mentor_tech_stack_id` FOREIGN KEY (`tech_stack_id`) REFERENCES `tech_stack` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor_techstack`
--

LOCK TABLES `mentor_techstack` WRITE;
/*!40000 ALTER TABLE `mentor_techstack` DISABLE KEYS */;
INSERT INTO `mentor_techstack` VALUES (1,1,1,1,NULL,1),(2,1,1,1,NULL,4),(3,1,1,1,NULL,5),(4,1,1,1,NULL,6),(5,1,1,1,NULL,7);
/*!40000 ALTER TABLE `mentor_techstack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_info`
--

DROP TABLE IF EXISTS `personal_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_info` (
  `id` int NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `degree` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_info`
--

LOCK TABLES `personal_info` WRITE;
/*!40000 ALTER TABLE `personal_info` DISABLE KEYS */;
INSERT INTO `personal_info` VALUES (2,'Gyanesh','Mahajan','B.E'),(3,'Gayatri','Pandey','B.E'),(4,'Gaju','Singh','B.E'),(5,'Subodh','Mahajan','B.E'),(6,'Subash','Mahajan','B.E');
/*!40000 ALTER TABLE `personal_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `cust_name` varchar(40) DEFAULT NULL,
  `bill_no` varchar(20) NOT NULL,
  `store_id` int NOT NULL,
  `bill_date` date NOT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
/*!50100 PARTITION BY LIST (`store_id`)
(PARTITION pEast VALUES IN (101,103,105) ENGINE = InnoDB,
 PARTITION pWest VALUES IN (102,104,106) ENGINE = InnoDB,
 PARTITION pNorth VALUES IN (107,109,111) ENGINE = InnoDB,
 PARTITION pSouth VALUES IN (108,110,112) ENGINE = InnoDB) */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES ('Vikas','122',101,'2016-02-12',45000),('Saranjeet','122',103,'2016-02-12',45000),('Satish','122',105,'2016-02-12',45000),('sujeet','122',102,'2016-02-12',45000),('Sujjet','122',104,'2016-02-12',45000),('Sangeeta','122',106,'2016-02-12',45000),('Shreyas','122',107,'2016-02-12',45000),('Subodh','122',109,'2016-02-12',45000),('Sejal','122',111,'2016-02-12',45000),('Srujan','122',108,'2016-02-12',45000),('Sayali','122',110,'2016-02-12',45000),('Shruti','122',112,'2016-02-12',450000);
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `studentnames`
--

DROP TABLE IF EXISTS `studentnames`;
/*!50001 DROP VIEW IF EXISTS `studentnames`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `studentnames` AS SELECT 
 1 AS `id`,
 1 AS `first_name`,
 1 AS `last_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tech_stack`
--

DROP TABLE IF EXISTS `tech_stack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tech_stack` (
  `id` int NOT NULL,
  `tech_name` varchar(50) NOT NULL,
  `image_path` varchar(500) DEFAULT NULL,
  `framework` text,
  `cur_status` char(1) DEFAULT NULL,
  `creator_stamp` datetime DEFAULT NULL,
  `creator_user` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tech_stack`
--

LOCK TABLES `tech_stack` WRITE;
/*!40000 ALTER TABLE `tech_stack` DISABLE KEYS */;
INSERT INTO `tech_stack` VALUES (1,'DOT.NET','image1','Entity','T',NULL,1),(2,'DOT.NET','image2','Aspnet core','S',NULL,2),(3,'DOT.NET','image3','Entity','T',NULL,3),(4,'DOT.NET','image2','Aspnet core','S',NULL,4),(5,'DOT.NET','image5','Entity','T',NULL,5);
/*!40000 ALTER TABLE `tech_stack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tech_type`
--

DROP TABLE IF EXISTS `tech_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tech_type` (
  `id` int NOT NULL,
  `type_name` varchar(50) NOT NULL,
  `cur_status` char(1) DEFAULT NULL,
  `creator_stamp` datetime DEFAULT NULL,
  `creator_user` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tech_type`
--

LOCK TABLES `tech_type` WRITE;
/*!40000 ALTER TABLE `tech_type` DISABLE KEYS */;
INSERT INTO `tech_type` VALUES (1,'BootCamp','P','2022-01-01 00:00:00',22),(2,'BootCamp','A','2022-01-01 00:00:00',23),(3,'RFP','P','2022-01-01 00:00:00',25),(4,'CFP','P','2022-01-01 00:00:00',26),(5,'CFP','A','2022-01-01 00:00:00',26);
/*!40000 ALTER TABLE `tech_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporary_mis`
--

DROP TABLE IF EXISTS `temporary_mis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temporary_mis` (
  `Date_Time` date NOT NULL,
  `Cpu_Count` int NOT NULL,
  `Cpu_Working_Time` double(11,3) NOT NULL,
  `Cpu_idle_Time` double(11,3) NOT NULL,
  `cpu_percent` double(11,3) NOT NULL,
  `Usage_cpu_count` int NOT NULL,
  `number_of_software_interrupts_since_boot` double(11,3) NOT NULL,
  `number_of_system_calls_since_boot` int NOT NULL,
  `number_of_interrupts_since_boot` int NOT NULL,
  `cpu_avg_load_over_1_min` double(11,3) NOT NULL,
  `cpu_avg_load_over_5_min` double(11,3) NOT NULL,
  `cpu_avg_load_over_15_min` double(11,3) NOT NULL,
  `system_total_memory` bigint NOT NULL,
  `system_used_memory` bigint NOT NULL,
  `system_free_memory` bigint NOT NULL,
  `system_active_memory` bigint NOT NULL,
  `system_inactive_memory` bigint NOT NULL,
  `system_buffers_memory` bigint NOT NULL,
  `system_cached_memory` bigint NOT NULL,
  `system_shared_memory` bigint NOT NULL,
  `system_avalible_memory` bigint NOT NULL,
  `disk_total_memory` bigint NOT NULL,
  `disk_used_memory` bigint NOT NULL,
  `disk_free_memory` bigint NOT NULL,
  `disk_read_count` bigint NOT NULL,
  `disk_write_count` bigint NOT NULL,
  `disk_read_bytes` bigint NOT NULL,
  `disk_write_bytes` bigint NOT NULL,
  `time_spent_reading_from_disk` bigint NOT NULL,
  `time_spent_writing_to_disk` bigint NOT NULL,
  `time_spent_doing_actual_Input_Output` bigint NOT NULL,
  `number_of_bytes_sent` bigint NOT NULL,
  `number_of_bytes_received` bigint NOT NULL,
  `number_of_packets_sent` bigint NOT NULL,
  `number_of_packets_recived` bigint NOT NULL,
  `total_number_of_errors_while_receiving` bigint NOT NULL,
  `total_number_of_errors_while_sending` bigint NOT NULL,
  `total_number_of_incoming_packets_which_were_dropped` bigint NOT NULL,
  `total_number_of_outgoing_packets_which_were_dropped` bigint NOT NULL,
  `boot_time` varchar(100) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `keyboard` int NOT NULL,
  `mouse` int NOT NULL,
  `technology` varchar(100) NOT NULL,
  `files_changed` int NOT NULL,
  PRIMARY KEY (`boot_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporary_mis`
--

LOCK TABLES `temporary_mis` WRITE;
/*!40000 ALTER TABLE `temporary_mis` DISABLE KEYS */;
/*!40000 ALTER TABLE `temporary_mis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_part`
--

DROP TABLE IF EXISTS `test_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_part` (
  `A` int DEFAULT NULL,
  `B` char(5) DEFAULT NULL,
  `C` int DEFAULT NULL,
  `D` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
/*!50500 PARTITION BY RANGE  COLUMNS(A,B,C)
(PARTITION p0 VALUES LESS THAN (50,'test1',100) ENGINE = InnoDB,
 PARTITION p1 VALUES LESS THAN (100,'test2',200) ENGINE = InnoDB,
 PARTITION p2 VALUES LESS THAN (150,'test3',300) ENGINE = InnoDB,
 PARTITION p3 VALUES LESS THAN (MAXVALUE,MAXVALUE,MAXVALUE) ENGINE = InnoDB) */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_part`
--

LOCK TABLES `test_part` WRITE;
/*!40000 ALTER TABLE `test_part` DISABLE KEYS */;
INSERT INTO `test_part` VALUES (50,'test1',100,140),(100,'test2',200,101),(150,'test3',300,103);
/*!40000 ALTER TABLE `test_part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_details` (
  `id` int NOT NULL,
  `email` varchar(50) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `password` varchar(15) NOT NULL DEFAULT 'abc@123',
  `contact_number` bigint NOT NULL,
  `verified` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_4d9rdl7d52k8x3etihxlaujvh` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (1,'ganesh@gamil.com','Ganesh','Mishra','abc123',9944556677,_binary ''),(2,'shatru@gamil.com','Shatru','Sinha','shatru@123',9123456789,_binary ''),(3,'iamsrk@gamil.com','Shah','Khan','srujan',9987654321,_binary ''),(4,'kamal@gamil.com','Kamal','Hassan','yy',9246810467,_binary ''),(5,'salman@gamil.com','Salman','Khan','salman@34',9246810444,_binary '');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_before_update_password` BEFORE UPDATE ON `user_details` FOR EACH ROW BEGIN
	DECLARE error_msg1 Varchar(600);
	DECLARE error_msg2 Varchar(600);
	SET error_msg1=('Password cannot be empty');
	SET error_msg2=('New Password Should Be Defferent From Old Password.');
	IF
		new.password = '' THEN signal sqlstate '45000' set message_text=error_msg1;
	ELSEIF
		new.password = old.password THEN signal sqlstate '44000' set message_text=error_msg2;  # 44000=The INSERT or UPDATE is not allowed, because a resulting row does not satisfy the view definition.
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` int NOT NULL,
  `role_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,'doctor'),(2,'engineer'),(3,'pilot'),(4,'engineer'),(5,'compounder'),(6,'RAXY'),(6,'RAXY'),(6,'RAXY'),(6,'RAXY'),(7,'bodybuilder'),(7,'bodybuilder'),(7,'bodybuilder'),(7,'bodybuilder'),(7,'bodybuilder'),(7,'bodybuilder'),(7,'bodybuilder'),(7,'bodybuilder'),(7,'bodybuilder'),(7,'bodybuilder'),(7,'bodybuilder'),(7,'bodybuilder'),(7,'bodybuilder'),(7,'bodybuilder'),(7,'bodybuilder'),(7,'bodybuilder'),(7,'bodybuilder'),(7,'bodybuilder'),(6,'RAXY');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `companyassigned`
--

/*!50001 DROP VIEW IF EXISTS `companyassigned`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `companyassigned` AS select `fellowship_candidates`.`id` AS `id`,`fellowship_candidates`.`first_name` AS `first_name`,`company`.`name` AS `companyAssigned` from (`fellowship_candidates` join `company` on((`fellowship_candidates`.`id` = `company`.`name`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `full_name`
--

/*!50001 DROP VIEW IF EXISTS `full_name`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `full_name` AS select `fellowship_candidates`.`first_name` AS `first_name`,`fellowship_candidates`.`last_name` AS `last_name` from `fellowship_candidates` where (`fellowship_candidates`.`hired_city` = 'Mumbai') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `maker_plan`
--

/*!50001 DROP VIEW IF EXISTS `maker_plan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `maker_plan` AS select `maker_program`.`id` AS `id`,`maker_program`.`program_name` AS `program_name`,`maker_program`.`program_type` AS `program_type`,`maker_program`.`program_link` AS `program_link`,`maker_program`.`tech_stack_id` AS `tech_stack_id`,`maker_program`.`tech_type_id` AS `tech_type_id`,`maker_program`.`is_program_approved` AS `is_program_approved`,`maker_program`.`description` AS `description`,`maker_program`.`status` AS `status`,`maker_program`.`creator_stamp` AS `creator_stamp`,`maker_program`.`creator_user` AS `creator_user` from `maker_program` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `studentnames`
--

/*!50001 DROP VIEW IF EXISTS `studentnames`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `studentnames` AS select `hired_candidate`.`id` AS `id`,`hired_candidate`.`first_name` AS `first_name`,`hired_candidate`.`last_name` AS `last_name` from `hired_candidate` where (`hired_candidate`.`degree` = 'M.Com') */;
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

-- Dump completed on 2022-01-27 10:02:18
