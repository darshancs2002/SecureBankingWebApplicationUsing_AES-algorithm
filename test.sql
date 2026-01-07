-- MySQL dump 10.13  Distrib 5.5.13, for Win32 (x86)
--
-- Host: localhost    Database: test1
-- ------------------------------------------------------
-- Server version	5.5.13

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
-- Table structure for table `accopen`
--

DROP TABLE IF EXISTS `accopen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accopen` (
  `first` varchar(50) DEFAULT NULL,
  `second` varchar(50) DEFAULT NULL,
  `father` varchar(50) DEFAULT NULL,
  `mother` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `acctype` varchar(50) DEFAULT NULL,
  `photo` longblob,
  `password` varchar(50) DEFAULT NULL,
  `pan` varchar(50) DEFAULT NULL,
  `adhar` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `add1` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `add2` varchar(50) DEFAULT NULL,
  `postcode` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accopen`
--

LOCK TABLES `accopen` WRITE;
/*!40000 ALTER TABLE `accopen` DISABLE KEYS */;
INSERT INTO `accopen` VALUES ('Darshan','CS','Samueal','anitha ','male','2023-07-12','savings','img1.png','4567','RED015BHP','998715277923','789963332','darsh@gmail.com','Bangalore','karnataka','tolgate','560073','bangluru','india');
/*!40000 ALTER TABLE `accopen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activeuser`
--

DROP TABLE IF EXISTS `activeuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activeuser` (
  `random` varchar(50) DEFAULT NULL,
  `first` varchar(50) DEFAULT NULL,
  `second` varchar(50) DEFAULT NULL,
  `father` varchar(50) DEFAULT NULL,
  `mother` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `acctype` varchar(50) DEFAULT NULL,
  `photo` longblob,
  `password` varchar(50) DEFAULT NULL,
  `pan` varchar(50) DEFAULT NULL,
  `adhar` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `add1` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `add2` varchar(50) DEFAULT NULL,
  `postcode` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activeuser`
--

LOCK TABLES `activeuser` WRITE;
/*!40000 ALTER TABLE `activeuser` DISABLE KEYS */;
INSERT INTO `activeuser` VALUES ('null','ramu','reddy','Samueal','asfasfsa','null','2023-06-02','savings','null','1234','RED015BHP','998715277923','789963332','darsh@gmail.com','rtcvybhjnkjkhbvc','karnataka','tolgate','560073','bangluru','india'),('null','govardhan','reddy','asghdiash','asfasfsa','male','2023-06-15','current','null','235','hhh1123456','998715277923','789963332','darsh357345@gmail.com','rtcvybhjnkjkhbvc','karnataka','Bangalore','560073','bangluru','india'),('1234505780','Stara','Buelin','','','null','','null','null','234','hhh1123456','998715277923','855203629','stara@gmail.com','tolgate','karantaka','tolgate','560073','bangluru','india'),('1234223646','govardhan','reddy','bhaskar reddy','Rachel','male','2023-06-07','current','null','1234','hhh1123456','202822621198','789963332','reddy@gmail.com','Bangalore','karnataka','Bangalore','560073','bangluru','india'),('1234448125','Stara','Buelin','bhaskar reddy','anitha ','male','2023-07-06','current','Sat Jul 01 2023 20:22:16 GMT+0530 (India Standard Time)','123','hhh1123456','202822621198','855203629','stara@gmail.com','null','karantaka','Bangalore','560073','bangluru','india');
/*!40000 ALTER TABLE `activeuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activeusers`
--

DROP TABLE IF EXISTS `activeusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activeusers` (
  `first` varchar(50) DEFAULT NULL,
  `second` varchar(50) DEFAULT NULL,
  `father` varchar(50) DEFAULT NULL,
  `mother` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `acctype` varchar(50) DEFAULT NULL,
  `photo` longblob,
  `pan` varchar(50) DEFAULT NULL,
  `adhar` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `add1` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `add2` varchar(50) DEFAULT NULL,
  `postcode` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `random` varchar(50) DEFAULT NULL,
  `date` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activeusers`
--

LOCK TABLES `activeusers` WRITE;
/*!40000 ALTER TABLE `activeusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `activeusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activeuserss`
--

DROP TABLE IF EXISTS `activeuserss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activeuserss` (
  `random` varchar(50) DEFAULT NULL,
  `first` varchar(50) DEFAULT NULL,
  `second` varchar(50) DEFAULT NULL,
  `father` varchar(50) DEFAULT NULL,
  `mother` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `acctype` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `date` longblob,
  `balance` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activeuserss`
--



--
-- Table structure for table `adminlog`
--

DROP TABLE IF EXISTS `adminlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminlog` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlog`
--

LOCK TABLES `adminlog` WRITE;
/*!40000 ALTER TABLE `adminlog` DISABLE KEYS */;
INSERT INTO `adminlog` VALUES ('admin','admin');
/*!40000 ALTER TABLE `adminlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaints`
--

DROP TABLE IF EXISTS `complaints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaints` (
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `random` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaints`
--

LOCK TABLES `complaints` WRITE;
/*!40000 ALTER TABLE `complaints` DISABLE KEYS */;
INSERT INTO `complaints` VALUES ('Transaction Failed','transaction problem ',NULL,NULL),('Transaction Failed','transaction problem ','','1234699914'),('Transaction Failed','transaction problem ','Wed Jul 05 2023 09:14:44 GMT+0530 (India Standard Time)','1234699914'),('Server Problem','server problem ','Tue Jul 11 2023 13:50:03 GMT+0530 (India Standard Time)','1234699914');
/*!40000 ALTER TABLE `complaints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `example`
--

DROP TABLE IF EXISTS `example`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `example` (
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `example`
--

LOCK TABLES `example` WRITE;
/*!40000 ALTER TABLE `example` DISABLE KEYS */;
/*!40000 ALTER TABLE `example` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reject`
--

DROP TABLE IF EXISTS `reject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reject` (
  `first` varchar(50) DEFAULT NULL,
  `second` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reject`
--

LOCK TABLES `reject` WRITE;
/*!40000 ALTER TABLE `reject` DISABLE KEYS */;
INSERT INTO `reject` VALUES ('Likith','BU','bu1234@gmail.com','789963332','karnataka'),('Stara','Buelin','stara@gmail.com','855203629','karantaka');
/*!40000 ALTER TABLE `reject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--




--
-- Dumping data for table `transactions`
--


--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userlog` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlog`
--

LOCK TABLES `userlog` WRITE;
/*!40000 ALTER TABLE `userlog` DISABLE KEYS */;
INSERT INTO `userlog` VALUES ('user','123'),('null','null'),('null','null'),('reddy@gmail.com','1234'),('null','null'),('stara@gmail.com','0000'),('null','null'),('reddy@gmail.com','1234'),('adqwA@FADJBA','123'),('null','null'),('bu@gmail.com','1234'),('null','null'),('reddy123@gmail.com','1234'),('null','null'),('reddy123@gmail.com','1234'),('null','null'),('reddy123@gmail.com','1234'),('BRAVO@gmail.com','1234'),('null','null'),('reddy@gmail.com','admin'),('reddy@gmail.com','1234'),('null','null'),('reddy321@gmail.com','1234'),('reddy4567@gmail.com','1234'),('reddy@gmail.com','1234'),('darsh@gmail.com','1234'),('darsh357345@gmail.com','235'),('stara@gmail.com','234'),('reddy@gmail.com','1234'),('stara@gmail.com','123'),('stara@gmail.com','123'),('reddy@gmail.com','1234'),('reddy@gmail.com','1234'),('reddy@gmail.com','1234'),('reddy@gmail.com','1234'),('null','null'),('reddy@gmail.com','1234'),('bu@gmail.com','1234'),('bu@gmail.com','1234'),('bu@gmail.com','1234'),('bu@gmail.com','1234'),('reddy@gmail.com','1234'),('reddy@gmail.com','1234'),('reddy@gmail.com','1234'),('bu@gmail.com','1234'),('reddy@gmail.com','1234'),('bu@gmail.com','1234'),('reddy@gmail.com','1234'),('stara@gmail.com','1234'),('reddy@gmail.com','1234'),('null','123'),('bu@gmail.com','2345');
/*!40000 ALTER TABLE `userlog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-11 17:23:21
