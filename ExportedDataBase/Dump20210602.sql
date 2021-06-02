-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: accountsdatabase
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `__efmigrationshistory`
--

DROP TABLE IF EXISTS `__efmigrationshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__efmigrationshistory`
--

LOCK TABLES `__efmigrationshistory` WRITE;
/*!40000 ALTER TABLE `__efmigrationshistory` DISABLE KEYS */;
INSERT INTO `__efmigrationshistory` VALUES ('20210523120940_AddIdentity','5.0.6');
/*!40000 ALTER TABLE `__efmigrationshistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetroleclaims`
--

DROP TABLE IF EXISTS `aspnetroleclaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetroleclaims` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `RoleId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ClaimType` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ClaimValue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetroleclaims`
--

LOCK TABLES `aspnetroleclaims` WRITE;
/*!40000 ALTER TABLE `aspnetroleclaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetroleclaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetroles`
--

DROP TABLE IF EXISTS `aspnetroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetroles` (
  `Id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ConcurrencyStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `RoleNameIndex` (`NormalizedName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetroles`
--

LOCK TABLES `aspnetroles` WRITE;
/*!40000 ALTER TABLE `aspnetroles` DISABLE KEYS */;
INSERT INTO `aspnetroles` VALUES ('2e3ac490-06be-4ce3-aad5-3dcd6ff72d17','Administrator','ADMINISTRATOR','ba5ce087-96b6-4fe1-9833-616659366eb5'),('432d117e-2447-4bf7-a1aa-c9ba4e438be3','Accountant','ACCOUNTANT','dfc78917-31d2-48e7-b806-95499bb44a8e'),('a976a575-3f59-4302-a5b1-18e85902a325','Guest','GUEST','3f2c7b65-2b16-4140-9043-45edbb1eda2b'),('c16a1b78-7aea-4826-bcb9-d311f83549ea','Employee','EMPLOYEE','298ad673-7a4f-4ef3-9abc-00013655ec57');
/*!40000 ALTER TABLE `aspnetroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserclaims`
--

DROP TABLE IF EXISTS `aspnetuserclaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetuserclaims` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ClaimType` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ClaimValue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetUserClaims_UserId` (`UserId`),
  CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserclaims`
--

LOCK TABLES `aspnetuserclaims` WRITE;
/*!40000 ALTER TABLE `aspnetuserclaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetuserclaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserlogins`
--

DROP TABLE IF EXISTS `aspnetuserlogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProviderKey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProviderDisplayName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  KEY `IX_AspNetUserLogins_UserId` (`UserId`),
  CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserlogins`
--

LOCK TABLES `aspnetuserlogins` WRITE;
/*!40000 ALTER TABLE `aspnetuserlogins` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetuserlogins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserroles`
--

DROP TABLE IF EXISTS `aspnetuserroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `RoleId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`UserId`,`RoleId`),
  KEY `IX_AspNetUserRoles_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserroles`
--

LOCK TABLES `aspnetuserroles` WRITE;
/*!40000 ALTER TABLE `aspnetuserroles` DISABLE KEYS */;
INSERT INTO `aspnetuserroles` VALUES ('63c35ae6-41eb-410e-a7bb-e70e2a9b3da5','2e3ac490-06be-4ce3-aad5-3dcd6ff72d17'),('15bf21c3-03a6-428e-8588-bcfd58e48080','432d117e-2447-4bf7-a1aa-c9ba4e438be3'),('d1664a22-d32a-4485-8013-44c364653762','a976a575-3f59-4302-a5b1-18e85902a325'),('c20731ea-e318-4601-a0cf-761017e6ef58','c16a1b78-7aea-4826-bcb9-d311f83549ea');
/*!40000 ALTER TABLE `aspnetuserroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetusers`
--

DROP TABLE IF EXISTS `aspnetusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetusers` (
  `Id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UserName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedUserName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Email` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedEmail` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `SecurityStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ConcurrencyStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PhoneNumber` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  KEY `EmailIndex` (`NormalizedEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetusers`
--

LOCK TABLES `aspnetusers` WRITE;
/*!40000 ALTER TABLE `aspnetusers` DISABLE KEYS */;
INSERT INTO `aspnetusers` VALUES ('15bf21c3-03a6-428e-8588-bcfd58e48080','Accountant3@itcompany.com','ACCOUNTANT3@ITCOMPANY.COM','Accountant3@itcompany.com','ACCOUNTANT3@ITCOMPANY.COM',0,'AQAAAAEAACcQAAAAEOMaS7OdPNvdOZfP0LmjIe9bcqoPOR5hySvJpGsGZFBdet/MomjnUfD7uGFjE+N3MQ==','C27LASCKZHF7RQORUCRLISG2555Q7IFX','5ff5e8e4-3dc1-4be9-8e38-46a66427c814',NULL,0,0,NULL,1,0),('63c35ae6-41eb-410e-a7bb-e70e2a9b3da5','Admin1@itcompany.com','ADMIN1@ITCOMPANY.COM','Admin1@itcompany.com','ADMIN1@ITCOMPANY.COM',0,'AQAAAAEAACcQAAAAEPym1ihM2dSI0ftRY4NambAwgXwRI3kSZIxOR+Adwiks7euSSeD0/Y9YEgdw3MK/9w==','7CAKWUVZGHJVACW2Q5QUJ3PEZ2J5UR5H','c9a0d1a6-234f-440b-ab31-80127f25e35f',NULL,0,0,NULL,1,0),('c20731ea-e318-4601-a0cf-761017e6ef58','Employee2@itcompany.com','EMPLOYEE2@ITCOMPANY.COM','Employee2@itcompany.com','EMPLOYEE2@ITCOMPANY.COM',0,'AQAAAAEAACcQAAAAEOnk114kUoY5oVq7Aos3DeNiGyESDPXTix43/qYmJ4PWvH3eAdxBxJ75wOQ/t7QWRA==','LIADMRYOSLBG233A7NXBKY52OFWLKOSM','11adf731-37cd-45b9-b869-b50f352ebe16',NULL,0,0,NULL,1,0),('d1664a22-d32a-4485-8013-44c364653762','Guest4@itcompany.com','GUEST4@ITCOMPANY.COM','Guest4@itcompany.com','GUEST4@ITCOMPANY.COM',0,'AQAAAAEAACcQAAAAEBGVHSN5W0OOm/5ifVENNolnBaBZFE4KkY0Rn1WCB80lQoojwlSTmAcujZS5udLz4Q==','HRLOWSNAUAA6XLSNKAH7IISNKXQDU3VJ','c372e83d-a7a5-47a7-927c-98d92eca94a4',NULL,0,0,NULL,1,0);
/*!40000 ALTER TABLE `aspnetusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetusertokens`
--

DROP TABLE IF EXISTS `aspnetusertokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `LoginProvider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`UserId`,`LoginProvider`,`Name`),
  CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetusertokens`
--

LOCK TABLES `aspnetusertokens` WRITE;
/*!40000 ALTER TABLE `aspnetusertokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetusertokens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-02 12:47:51
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: employeesdatabase
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Age` int NOT NULL,
  `Salary` int NOT NULL,
  `JobTitle` varchar(255) NOT NULL,
  `Position` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Jan','Kowalski',33,3200,'C# Developer','Junior'),(2,'Paweł','Nowak',24,2700,'C# Developer','Mid'),(3,'Maja','Krajewska',43,3500,'Accountant','Specialist'),(4,'Jakub','Pająk',19,2100,'C# Developer','Junior'),(5,'Aleksandra','Urbańska',27,3300,'Accountant','Specialist'),(6,'Wiktor','Kowalewski',40,7000,'Administrator','Expert'),(7,'Daria','Wiśniewski',43,7200,'Manager','Specialist'),(8,'Filip','Czajka',25,4100,'C# Developer','Mid'),(9,'Urszula','Leśniak',27,4300,'C# Developer','Junior'),(10,'Fryderyk','Dziedzic',32,3900,'Accountant','Specialist'),(11,'Dominik','Małek',24,2500,'C# Developer','Junior'),(12,'Maksymilian','Nowicki',38,8500,'Administrator','Expert'),(13,'Jarosław','Andrzej',22,1900,'Apprentice','Student'),(14,'Lidia','Stefańska',32,3700,'Rectuiter','Specialist'),(15,'Tomasz','Baran',20,2000,'Apprentice','Student'),(16,'Szymon','Lewandowski',30,4000,'C# Developer','Mid'),(17,'Daniel','Nowakowski',33,5100,'Recruiter','Specialist'),(18,'Maja','Borkowska',28,3000,'C# Developer','Junior'),(19,'Martyna','Lis',26,3200,'C# Developer','Junior'),(20,'Miłosz','Fabiański',35,2100,'Apprentice','Student'),(21,'Zdzisław','Łęcina',34,5500,'C# Developer','Senior'),(22,'Karolina','Krawczyk',29,3000,'Rectuiter','Specialist'),(23,'Karolina','Krawczyk',29,3000,'Rectuiter','Specialist'),(24,'Maciej','Kalinowski',52,9000,'Administrator','Expert'),(25,'Wiktor','Nawrocki',30,4000,'C# Developer','Mid'),(26,'Sebastian ','Ziomalski',35,7300,'C# Developer','Senior'),(27,'Karol','Kotkowski',29,3700,'C# Developer','Mid'),(28,'Maria','Laskowska',31,3500,'C# Developer','Mid'),(29,'Kinga','Grabowska',32,4000,'C# Developer','Mid'),(30,'Marta','Witkowska',26,3000,'C# Developer','Junior'),(31,'Mateusz','Grzyb',40,8200,'Administrator','Expert'),(32,'Katarzyna','Cieślak',32,3700,'Secretary','Specialist'),(33,'Grażyna','Sadowska',24,2700,'Apprentice','Student'),(34,'Henryk','Ogórek',62,2200,'Security','Pensioner'),(35,'Helena','Kowalska',42,6200,'C# Developer','Senior'),(36,'Stanisław','Zając',61,2800,'Cleaner','Pensioner'),(37,'Szymon','Wieczór',63,2400,'Security','Pensioner'),(38,'Lena','Mazur',46,7300,'Manager','Specialist'),(39,'Maja','Białek',38,5300,'Lawyer','Specialist'),(40,'Aleksander','Chojnacki',26,3300,'C# Developer','Junior'),(41,'Łukasz','Bukowski',29,4300,'C# Developer','Mid'),(42,'Barbara','Piotrowska',57,3300,'Cleaner','Pensioner'),(43,'Natalia','Jaworska',25,2400,'Secretary','Student'),(44,'Oliwia','Tomaszewska',36,4800,'Lawyer','Specialist'),(45,'Piotr','Stankiewicz',26,4100,'C# Developer','Mid'),(46,'Zuzanna','Wrona',24,2400,'C# Developer','Student'),(47,'Michał','Błaszczyk',54,9300,'Manager','Expert'),(48,'Ignacy','Durowski',34,6300,'C# Developer','Senior'),(49,'Wiktoria','Sikorska',42,6800,'Lawyer','Specialist'),(50,'Marcin','Adamczyk',36,4800,'Marketer','Specialist'),(51,'Konrad','Woziński',34,3400,'C# Developer','Junior'),(52,'Hanna','Paluch',51,4500,'Marketer','Specialist'),(53,'Kacper','Machalik',34,4500,'C# Developer','Mid'),(54,'Antoni','Urbański',29,3800,'C# Developer','Junior'),(55,'Dawid','Bednarski',29,2000,'Accountant','Student'),(56,'Natalia','Wasilewska',39,5100,'C# Developer','Mid'),(58,'Radosław','Rumian',36,5100,'C# Developer','Mid'),(60,'Sebastian','Ziomalski',35,7300,'C# Developer','Senior');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-02 12:47:51
