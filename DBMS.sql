-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: Project
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.17.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Chk_Driver`
--

DROP TABLE IF EXISTS `Chk_Driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Chk_Driver` (
  `D_Id` varchar(30) DEFAULT NULL,
  `Availability` varchar(10) DEFAULT NULL,
  KEY `D_Id` (`D_Id`),
  CONSTRAINT `Chk_Driver_ibfk_1` FOREIGN KEY (`D_Id`) REFERENCES `Driver_Details` (`D_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Chk_Driver`
--

LOCK TABLES `Chk_Driver` WRITE;
/*!40000 ALTER TABLE `Chk_Driver` DISABLE KEYS */;
INSERT INTO `Chk_Driver` VALUES ('D001','n'),('D002','y'),('D003','y'),('D004','y'),('D005','y'),('D006','y'),('D008','y'),('D007','y'),('D009','y'),('D010','y');
/*!40000 ALTER TABLE `Chk_Driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Company_Details`
--

DROP TABLE IF EXISTS `Company_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Company_Details` (
  `C_Id` varchar(30) NOT NULL,
  `C_Name` char(30) NOT NULL,
  `Location` varchar(30) NOT NULL,
  `C_Phone` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`C_Id`),
  UNIQUE KEY `C_Phone` (`C_Phone`),
  UNIQUE KEY `C_Phone_2` (`C_Phone`),
  UNIQUE KEY `C_Phone_3` (`C_Phone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company_Details`
--

LOCK TABLES `Company_Details` WRITE;
/*!40000 ALTER TABLE `Company_Details` DISABLE KEYS */;
INSERT INTO `Company_Details` VALUES ('C001','MTR','Karnataka',9900879055),('C002','DST','Goa',8899768900),('C003','HNT','Bihar',9987667899),('C004','KJI','TamilNadu',88988765),('C005','MTR','Karnataka',9900879955),('C006','KJI','AndraPradesh',8898876577),('C007','MKJ','Assam',788098832),('C008','OPK','Kerala',779822376),('C009','QWE','Telangana',9909455867),('C010','SAA','Banglore',864384);
/*!40000 ALTER TABLE `Company_Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Driver_Details`
--

DROP TABLE IF EXISTS `Driver_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Driver_Details` (
  `D_Id` varchar(30) NOT NULL,
  `D_Name` char(30) NOT NULL,
  `D_Address` varchar(30) NOT NULL,
  `D_Phone` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`D_Id`),
  UNIQUE KEY `D_Phone` (`D_Phone`),
  UNIQUE KEY `D_Phone_2` (`D_Phone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Driver_Details`
--

LOCK TABLES `Driver_Details` WRITE;
/*!40000 ALTER TABLE `Driver_Details` DISABLE KEYS */;
INSERT INTO `Driver_Details` VALUES ('D001','Daamodar','Karnataka',9900876578),('D002','Faaraj','Bihar',9987677887),('D003','Maadhav','Hyderabad',7765887769),('D004','Paavan','AndraPradesh',9905443887),('D005','Sadeepan','Maharashtra',8897554398),('D006','Baahubali','Manipur',7798446587),('D007','Xavier','Sikkim',7788679956),('D008','Ucathya','TamilNadu',9909885678),('D009','Zaahid','Chhattisgarh',9988760098),('D010','Naadir','Karnataka',9987898876),('D11','Rahim','ECity',883883);
/*!40000 ALTER TABLE `Driver_Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fish_Cost`
--

DROP TABLE IF EXISTS `Fish_Cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fish_Cost` (
  `P_Id` varchar(30) NOT NULL,
  `F_Type` char(30) NOT NULL,
  `F_Cost` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fish_Cost`
--

LOCK TABLES `Fish_Cost` WRITE;
/*!40000 ALTER TABLE `Fish_Cost` DISABLE KEYS */;
INSERT INTO `Fish_Cost` VALUES ('P001','PRAWNS',250),('P002','PRAWNS',245),('P003','PRAWNS',265),('P004','PRAWNS',230),('P005','PRAWNS',256),('P006','PRAWNS',250),('P007','PRAWNS',235),('P008','PRAWNS',250),('P009','PRAWNS',262),('P001','MACKEREL',200),('P002','MACKEREL',190),('P003','MACKEREL',210),('P004','MACKEREL',205),('P005','MACKEREL',190),('P006','MACKEREL',220),('P007','MACKEREL',230),('P008','MACKEREL',185),('P009','MACKEREL',195),('P001','SARDINE',300),('P002','SARDINE',310),('P003','SARDINE',320),('P004','SARDINE',310),('P005','SARDINE',290),('P006','SARDINE',295),('P007','SARDINE',285),('P008','SARDINE',300),('P009','SARDINE',310),('P001','POMFRET',400),('P002','POMFRET',420),('P003','POMFRET',410),('P004','POMFRET',390),('P005','POMFRET',405),('P006','POMFRET',395),('P007','POMFRET',380),('P008','POMFRET',400),('P009','POMFRET',389);
/*!40000 ALTER TABLE `Fish_Cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fish_Details`
--

DROP TABLE IF EXISTS `Fish_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fish_Details` (
  `P_Id` varchar(30) NOT NULL,
  `PRAWNS` int(10) DEFAULT NULL,
  `MACKEREL` int(10) DEFAULT NULL,
  `SARDINE` int(10) DEFAULT NULL,
  `POMFRET` int(10) DEFAULT NULL,
  `Total` int(11) DEFAULT NULL,
  PRIMARY KEY (`P_Id`),
  CONSTRAINT `Fish_Details_ibfk_1` FOREIGN KEY (`P_Id`) REFERENCES `Parties` (`P_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fish_Details`
--

LOCK TABLES `Fish_Details` WRITE;
/*!40000 ALTER TABLE `Fish_Details` DISABLE KEYS */;
INSERT INTO `Fish_Details` VALUES ('P001',1109,4543,1009,1221,7882),('P002',992,899,1200,1308,4399),('P003',2274,1090,2213,1203,6780),('P004',556,2134,2091,1000,5781),('P005',1300,1233,2189,2100,6822),('P006',2011,1298,2013,1123,6445),('P007',113,2978,1512,1890,6493),('P008',2211,2101,1108,1209,6629),('P009',1987,2127,2227,1271,7612);
/*!40000 ALTER TABLE `Fish_Details` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `amount_of_fishes` AFTER UPDATE ON `Fish_Details` FOR EACH ROW BEGIN
	IF new.PRAWNS < 0 THEN
    	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'No availability of PRAWNS' ;
    END if;
    IF new.MACKEREL < 0 THEN
    	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'No availability of MACKEREL' ;
    END if;
    
	IF new.SARDINE < 0 THEN
    	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'No availability of SARDINE' ;
    END if;
   	IF new.POMFRET < 0 THEN
    	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'No availability of POMFRET' ;
    END if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Fisherman_Details`
--

DROP TABLE IF EXISTS `Fisherman_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fisherman_Details` (
  `F_Id` varchar(30) NOT NULL,
  `F_Name` char(30) NOT NULL,
  `P_Id` varchar(30) NOT NULL,
  `F_Phone` bigint(20) DEFAULT NULL,
  `F_Address` varchar(30) NOT NULL,
  PRIMARY KEY (`F_Id`,`P_Id`),
  UNIQUE KEY `F_Phone` (`F_Phone`),
  UNIQUE KEY `F_Phone_2` (`F_Phone`),
  KEY `P_Id` (`P_Id`),
  CONSTRAINT `Fisherman_Details_ibfk_1` FOREIGN KEY (`P_Id`) REFERENCES `Parties` (`P_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fisherman_Details`
--

LOCK TABLES `Fisherman_Details` WRITE;
/*!40000 ALTER TABLE `Fisherman_Details` DISABLE KEYS */;
INSERT INTO `Fisherman_Details` VALUES ('F001','Aadarsh','P001',9987756788,'Kerala'),('F002','Ram','P002',9989887656,'Karnataka'),('F003','Bhima','P003',8876578988,'Assam'),('F004','Rahim','P004',8878988609,'Nagaland'),('F005','Aadidev','P005',9987898867,'Rajasthan'),('F006','Qaisar','P006',9989876657,'Chhattisgarh'),('F007','Obalesh','P007',8898788678,'Meghalaya'),('F008','Vacaspati','P008',8899098765,'Maharashtra'),('F009','Pacata','P009',8878988765,'Bihar');
/*!40000 ALTER TABLE `Fisherman_Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ord_Details`
--

DROP TABLE IF EXISTS `Ord_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ord_Details` (
  `C_Id` varchar(30) DEFAULT NULL,
  `D_Id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ord_Details`
--

LOCK TABLES `Ord_Details` WRITE;
/*!40000 ALTER TABLE `Ord_Details` DISABLE KEYS */;
INSERT INTO `Ord_Details` VALUES ('8230','4321'),('8230','4421'),('C001','D001');
/*!40000 ALTER TABLE `Ord_Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Parties`
--

DROP TABLE IF EXISTS `Parties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Parties` (
  `P_Name` varchar(30) NOT NULL,
  `P_Id` varchar(30) NOT NULL,
  `P_Phone` bigint(20) DEFAULT NULL,
  `C_Id` varchar(30) NOT NULL,
  `P_Address` varchar(30) NOT NULL,
  PRIMARY KEY (`P_Id`),
  UNIQUE KEY `P_Phone` (`P_Phone`),
  UNIQUE KEY `P_Phone_2` (`P_Phone`),
  KEY `C_Id` (`C_Id`),
  CONSTRAINT `Parties_ibfk_1` FOREIGN KEY (`C_Id`) REFERENCES `Company_Details` (`C_Id`),
  CONSTRAINT `Parties_ibfk_2` FOREIGN KEY (`C_Id`) REFERENCES `Company_Details` (`C_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Parties`
--

LOCK TABLES `Parties` WRITE;
/*!40000 ALTER TABLE `Parties` DISABLE KEYS */;
INSERT INTO `Parties` VALUES ('DOK','P001',9989876654,'C001','Haryana'),('MKK','P002',8898455789,'C002','Jharkhand'),('ASK','P003',8896744109,'C003','Gujarat'),('POK','P004',9889456781,'C004','Tripura'),('SSE','P005',8890334681,'C005','Uttaranchal'),('DSE','P006',9989004578,'C006','Sikkim'),('WSD','P007',9989445675,'C007','Karnataka'),('JHJ','P008',7788675677,'C008','Karnataka'),('AXH','P009',8878905564,'C009','Karnataka'),('PP','P012',232,'C001','kk');
/*!40000 ALTER TABLE `Parties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transportation_Details`
--

DROP TABLE IF EXISTS `Transportation_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transportation_Details` (
  `V_Number` varchar(30) NOT NULL,
  `P_Id` varchar(30) NOT NULL,
  `Date_In` date DEFAULT NULL,
  `Date_Out` date DEFAULT NULL,
  `Destination` varchar(30) NOT NULL,
  `F_Amount` int(10) NOT NULL,
  KEY `P_Id` (`P_Id`),
  KEY `Destination` (`Destination`),
  CONSTRAINT `Transportation_Details_ibfk_1` FOREIGN KEY (`P_Id`) REFERENCES `Parties` (`P_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Transportation_Details_ibfk_3` FOREIGN KEY (`Destination`) REFERENCES `Company_Details` (`C_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transportation_Details`
--

LOCK TABLES `Transportation_Details` WRITE;
/*!40000 ALTER TABLE `Transportation_Details` DISABLE KEYS */;
INSERT INTO `Transportation_Details` VALUES ('KA19B999','P005','2017-11-23','2017-11-30','C001',10),('KA19B999','P004','2017-11-23','2017-11-30','C001',10),('KA19B999','P004','2017-11-23','2017-11-30','C001',30),('KA19B999','P006','2017-11-24','2017-11-30','C002',2000),('KA01W009','P003','2017-11-24','2017-11-24','C003',1200),('XYZ391','P004','2017-11-24','2017-11-24','C004',1200),('KA01W009','P004','2017-11-24','2017-11-24','C003',1000),('XYZ391','P006','2017-11-24','2017-11-24','C005',1000),('KA01W009','P007','2017-11-24','2017-11-24','C005',1000),('XYZ391','P002','2017-11-24','2017-11-24','C005',1000),('XYZ391','P001','2012-11-10','2017-11-30','C001',20000),('KA01W009','P007','2017-11-24','2017-11-24','C004',1000),('KA01W009','P004','2017-11-24','2017-11-24','C008',1200),('KA01W009','P004','2017-11-25','2017-11-30','C001',1000),('XYZ391','P005','2017-11-25','2017-11-30','C006',1250),('555-QD','P007','2017-11-30','2017-11-30','C002',20000),('KA19B999','P008','2017-11-30','2017-11-30','C001',100),('KA19B999','P004','2017-11-30','2017-11-30','C001',200),('KA19B999','P001','2017-11-30','2017-11-30','C001',5000),('KA19B999','P004','2017-11-30','2017-11-30','C001',1000),('KA19B999','P007','2018-01-14',NULL,'C001',1000);
/*!40000 ALTER TABLE `Transportation_Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vehicle_Details`
--

DROP TABLE IF EXISTS `Vehicle_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Vehicle_Details` (
  `V_Number` varchar(30) NOT NULL,
  `V_Name` char(30) NOT NULL,
  `Capacity` int(10) NOT NULL,
  `D_Id` varchar(30) NOT NULL,
  `Route` char(30) NOT NULL,
  PRIMARY KEY (`V_Number`),
  KEY `D_Id` (`D_Id`),
  CONSTRAINT `Vehicle_Details_ibfk_1` FOREIGN KEY (`D_Id`) REFERENCES `Driver_Details` (`D_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vehicle_Details`
--

LOCK TABLES `Vehicle_Details` WRITE;
/*!40000 ALTER TABLE `Vehicle_Details` DISABLE KEYS */;
INSERT INTO `Vehicle_Details` VALUES ('555-QD','Plane',3000,'D004','Air'),('ABC-123','Plane',3000,'D005','Air'),('AP14MJ934','Truck',3000,'D007','Road'),('KA01W009','Boat',3500,'D002','water'),('KA19B999','Bus',3000,'D001','Road'),('KL49DS222','Bus',3000,'D009','Road'),('MH12DE876','Truck',3000,'D006','Road'),('MP34DS345','Bus',3000,'D010','Road'),('TN09AD229','Truck',3000,'D008','Road'),('XYZ391','Plane',3000,'D003','Air');
/*!40000 ALTER TABLE `Vehicle_Details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-07 20:03:35
