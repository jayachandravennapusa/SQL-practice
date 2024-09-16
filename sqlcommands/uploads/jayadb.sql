-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: jayadb
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `committe`
--

DROP TABLE IF EXISTS `committe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `committe` (
  `committeid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`committeid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `committe`
--

LOCK TABLES `committe` WRITE;
/*!40000 ALTER TABLE `committe` DISABLE KEYS */;
INSERT INTO `committe` VALUES (1,'powerstar'),(2,'megapowerstar'),(3,'naturalstar'),(4,'superstar'),(5,'rebalstar'),(6,'bhAAi');
/*!40000 ALTER TABLE `committe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `Tables_in_classicm` text,
  `dels` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('Tables_in_classicm','dels'),('cust','mers'),('empl','yees'),('','ffices'),('','rderdetails'),('','rders'),('pr','ductlines'),('pr','ducts');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dept` (
  `DEPTNO` int NOT NULL COMMENT 'department number',
  `DNAME` varchar(20) NOT NULL COMMENT 'Name of the department ',
  `LOC` varchar(20) NOT NULL COMMENT 'location of the department',
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DEPTNO`),
  UNIQUE KEY `unique_email` (`email`),
  KEY `idx_dname` (`DNAME`),
  KEY `idx_loc` (`LOC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
INSERT INTO `dept` VALUES (10,'ACCOUNTING','NEWYORK','nani@tollywood.com'),(20,'RESEARCH','DALLAS','maheshbabu@tollywood.com'),(30,'SALES','CHAICGO','prabhas@tollywood.com'),(40,'OPERATIONS','BOSTAIN','pawankalyan@tollywood.com');
/*!40000 ALTER TABLE `dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp` (
  `EMPNO` int NOT NULL COMMENT 'Employees number',
  `ENAME` varchar(20) NOT NULL COMMENT 'empolyees name',
  `JOB` char(10) NOT NULL COMMENT 'Desigation',
  `MGR` int DEFAULT NULL COMMENT 'Respective managers EMPNO',
  `HIERDATE` date NOT NULL COMMENT 'Date of Joining ',
  `SAL` decimal(9,2) NOT NULL COMMENT 'Basic salary',
  `COMM` decimal(7,2) DEFAULT NULL COMMENT 'Commision',
  `DEPTNO` int NOT NULL COMMENT 'Department number',
  PRIMARY KEY (`EMPNO`),
  KEY `fk_EMP` (`DEPTNO`),
  CONSTRAINT `fk_EMP` FOREIGN KEY (`DEPTNO`) REFERENCES `dept` (`DEPTNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (7399,'SMITH','CLERK',7902,'1980-12-17',800.00,NULL,20),(7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600.00,300.00,30),(7521,'WARD','SALESMAN',7698,'1981-02-20',1250.00,500.00,30),(7566,'JONES','MANGER',7839,'1981-04-01',2975.00,NULL,20),(7654,'MARTIN','SALESMAN',7698,'1981-10-28',1260.00,1400.00,30),(7698,'BLAKE','MANGER',7839,'1980-05-02',2850.00,NULL,20),(7782,'CLARK','ANALYSIT',7566,'1982-12-09',3000.00,NULL,30),(7839,'KING','PRESIDENT',NULL,'1981-11-17',5000.00,1400.00,10),(7844,'TURNER','SALESMAN',7698,'1981-10-08',1500.00,NULL,30),(7876,'ADAMS','CLERK',7788,'1983-01-12',1100.00,NULL,20),(7900,'JAMES','CLERK',7698,'1981-12-03',950.00,NULL,30),(7902,'FORD','ALANYST',7566,'1983-12-04',3000.00,2300.00,20);
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `memberid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`memberid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'powerstar'),(2,'superstar'),(3,'megapowerstar'),(4,'burningstar'),(5,'naturalstar'),(6,'rowdy'),(7,'massmaharaja'),(8,'youngtiger');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydata`
--

DROP TABLE IF EXISTS `mydata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mydata` (
  `slno` int NOT NULL,
  `name` char(20) NOT NULL,
  `marks` int NOT NULL,
  PRIMARY KEY (`slno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydata`
--

LOCK TABLES `mydata` WRITE;
/*!40000 ALTER TABLE `mydata` DISABLE KEYS */;
INSERT INTO `mydata` VALUES (1,'a',10),(2,'a',20),(3,'b',30),(4,'c',40),(5,'c',50),(6,'b',90);
/*!40000 ALTER TABLE `mydata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderid` int NOT NULL AUTO_INCREMENT COMMENT 'order number',
  `ordername` varchar(20) NOT NULL COMMENT 'order name  ',
  `orderdate` date NOT NULL COMMENT 'order value',
  `ordervalue` int NOT NULL COMMENT 'date on which order was placed ',
  PRIMARY KEY (`orderid`),
  CONSTRAINT `orders_chk_1` CHECK ((`ordervalue` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (2,'kfc','2024-09-13',5),(3,'milk','2024-09-13',5),(4,'kabab','2024-09-13',9),(5,'palakpanner','2024-09-13',3),(7,'pannercurry','2024-09-13',1),(8,'panipuri','2024-09-13',1),(9,'boti','0000-00-00',1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `empid` int NOT NULL,
  `lastName` text,
  `fname` varchar(20) DEFAULT NULL,
  `extension` text,
  `email` varchar(50) DEFAULT NULL,
  `officeCode` int DEFAULT NULL,
  `reportsTo` text,
  `jobTitle` text,
  PRIMARY KEY (`empid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1002,'Murphy','Diane','x5800','dmurphy@classicmodelcars.com',1,NULL,'President'),(1005,'john','wick','x5667','johnywick@classic.com',7,'null','dierctor'),(1006,'jayre','rick','x76879','jhoy',2,NULL,'hero'),(1009,'jaaaa','hertw','q45678','chotabheem@classicmodel.com',4,'chota','joker'),(1056,'Patterson','Mary','x4611','mpatterso@classicmodelcars.com',1,'1002','VP Sales'),(1076,'Firrelli','Jeff','x9273','jfirrelli@classicmodelcars.com',1,'1002','VP Marketing'),(1088,'Patterson','William','x4871','wpatterson@classicmodelcars.com',6,'1056','Sales Manager (APAC)'),(1102,'Bondur','Gerard','x5408','gbondur@classicmodelcars.com',4,'1056','Sale Manager (EMEA)'),(1143,'Bow','Anthony','x5428','abow@classicmodelcars.com',1,'1056','Sales Manager (NA)'),(1165,'Jennings','Leslie','x3291','ljennings@classicmodelcars.com',1,'1143','Sales Rep'),(1166,'Thompson','Leslie','x4065','lthompson@classicmodelcars.com',1,'1143','Sales Rep'),(1188,'Firrelli','Julie','x2173','jfirrelli@classicmodelcars.com',2,'1143','Sales Rep'),(1216,'Patterson','Steve','x4334','spatterson@classicmodelcars.com',2,'1143','Sales Rep'),(1286,'Tseng','Foon Yue','x2248','ftseng@classicmodelcars.com',3,'1143','Sales Rep'),(1323,'Vanauf','George','x4102','gvanauf@classicmodelcars.com',3,'1143','Sales Rep'),(1337,'Bondur','Loui','x6493','lbondur@classicmodelcars.com',4,'1102','Sales Rep'),(1370,'Hernandez','Gerard','x2028','ghernande@classicmodelcars.com',4,'1102','Sales Rep'),(1401,'Castillo','Pamela','x2759','pcastillo@classicmodelcars.com',4,'1102','Sales Rep'),(1501,'Bott','Larry','x2311','lbott@classicmodelcars.com',7,'1102','Sales Rep'),(1504,'Jones','Barry','x102','bjones@classicmodelcars.com',7,'1102','Sales Rep'),(1611,'Fixter','Andy','x101','afixter@classicmodelcars.com',6,'1088','Sales Rep'),(1612,'Marsh','Peter','x102','pmarsh@classicmodelcars.com',6,'1088','Sales Rep'),(1619,'King','Tom','x103','tking@classicmodelcars.com',6,'1088','Sales Rep'),(1621,'Nishi','Mami','x101','mnishi@classicmodelcars.com',5,'1056','Sales Rep'),(1625,'Kato','Yoshimi','x102','ykato@classicmodelcars.com',5,'1621','Sales Rep'),(1702,'Gerard','Martin','x2312','mgerard@classicmodelcars.com',4,'1102','Sales Rep');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `user_view`
--

DROP TABLE IF EXISTS `user_view`;
/*!50001 DROP VIEW IF EXISTS `user_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_view` AS SELECT 
 1 AS `ename`,
 1 AS `job`,
 1 AS `sal`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `user_view`
--

/*!50001 DROP VIEW IF EXISTS `user_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_view` AS select `emp`.`ENAME` AS `ename`,`emp`.`JOB` AS `job`,`emp`.`SAL` AS `sal` from `emp` */;
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

-- Dump completed on 2024-09-16 10:55:56
