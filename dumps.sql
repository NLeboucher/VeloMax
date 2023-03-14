-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: VeloMax
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `ListePieceFournisseur`
--
create database VeloMax;
use VeloMax;
DROP TABLE IF EXISTS `ListePieceFournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ListePieceFournisseur` (
  `index` bigint DEFAULT NULL,
  `Siret` int DEFAULT NULL,
  `NumProd` int DEFAULT NULL,
  `Prix` int DEFAULT NULL,
  `delaiDeLivraison` text,
  KEY `ix_ListePieceFournisseur_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ListePieceFournisseur`
--

LOCK TABLES `ListePieceFournisseur` WRITE;
/*!40000 ALTER TABLE `ListePieceFournisseur` DISABLE KEYS */;
INSERT INTO `ListePieceFournisseur` VALUES (0,600053,78,18,'3 semaines'),(1,600074,42,144,'6 semaines'),(2,600176,96,182,'2 jours'),(3,600054,72,164,'6 semaines'),(4,600114,93,61,'6 semaines'),(5,600050,84,131,'2 jours'),(6,600056,38,182,'2 jours'),(7,600163,67,45,'2 semaines'),(8,600101,50,133,'2 jours'),(9,600030,92,69,'2 semaines'),(10,600024,70,34,'6 semaines'),(11,600138,2,62,'5 semaines'),(12,600178,10,169,'5 semaines'),(13,600005,91,180,'2 semaines'),(14,600053,36,42,'4 semaines'),(15,600147,25,168,'5 semaines'),(16,600015,72,60,'5 semaines'),(17,600030,5,70,'4 semaines'),(18,600079,38,67,'2 semaines'),(19,600060,30,10,'2 jours'),(20,600024,28,53,'2 semaines'),(21,600157,23,114,'2 jours'),(22,600034,60,182,'2 semaines'),(23,600151,80,163,'1 semaine'),(24,600192,19,92,'2 jours'),(25,600019,21,90,'2 semaines'),(26,600176,31,87,'5 semaines'),(27,600009,2,153,'4 semaines'),(28,600077,51,86,'2 semaines'),(29,600098,13,148,'1 semaine'),(30,600127,79,47,'2 semaines'),(31,600017,83,129,'2 semaines'),(32,600124,18,52,'3 semaines'),(33,600025,79,142,'4 semaines'),(34,600151,91,199,'5 semaines'),(35,600032,56,167,'6 semaines'),(36,600064,63,61,'2 semaines'),(37,600052,94,35,'5 semaines'),(38,600045,56,84,'3 semaines'),(39,600142,79,187,'5 semaines');
/*!40000 ALTER TABLE `ListePieceFournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adresse` (
  `idAdresse` int NOT NULL,
  `rue` varchar(40) DEFAULT NULL,
  `ville` varchar(40) DEFAULT NULL,
  `codePostal` varchar(40) DEFAULT NULL,
  `province` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`idAdresse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresse`
--

LOCK TABLES `adresse` WRITE;
/*!40000 ALTER TABLE `adresse` DISABLE KEYS */;
INSERT INTO `adresse` VALUES (10005,'Susan','Port Amyside','50672','South Dakota'),(10007,'Linda','Sancheztown','89685','New Hampshire'),(10030,'Parker','Port Darren','59686','Idaho'),(10043,'George','Lindafurt','12305','Connecticut'),(10049,'Angela','Davidmouth','49561','Idaho'),(10073,'John','Brittanyshire','03912','New Jersey'),(10090,'Rowland','South April','02301','Hawaii'),(10092,'Palmer','Johnport','86947','Arizona'),(10108,'Jessica','Port Scott','54642','West Virginia'),(10117,'Green','Port Davidtown','09965','South Carolina'),(10132,'Conrad','East Michael','71978','Minnesota'),(10146,'Rachel','New Christopher','86556','Delaware'),(10154,'Smith','East Sarafort','61631','North Carolina'),(10160,'Bell','East Ginatown','72587','Oregon'),(10174,'Francisco','East Rebeccaton','36480','Texas'),(10183,'Roger','Jessicaborough','01807','Colorado'),(10190,'Gonzalez','Port David','87426','Oklahoma'),(10196,'Medina','South Stevenfurt','34636','Vermont'),(10220,'Ricky','East Nicholastown','45179','Texas'),(10227,'Brown','North Dana','01652','West Virginia'),(10238,'Megan','Lake Aaronton','45958','Wisconsin'),(10242,'Kelly','Ferrellton','59742','Missouri'),(10254,'Alyssa','Olsenville','48646','Washington'),(10255,'Pittman','Ryanstad','37905','South Dakota'),(10262,'David','Lynnport','60870','Oregon'),(10263,'Murray','South Edwardport','59454','Vermont'),(10269,'Bryan','Robinburgh','31961','West Virginia'),(10282,'Aaron','Herreraport','90491','Rhode Island'),(10288,'Powers','Rogerhaven','71339','Montana'),(10295,'Casey','East Dalton','33470','Ohio'),(10323,'Peter','Brittanyside','76243','Iowa'),(10326,'Maddox','Lake Vincent','08786','South Carolina'),(10327,'Henry','Lake Juliechester','21337','Michigan'),(10333,'Megan','North Benjaminberg','49804','North Carolina'),(10334,'Kirk','Angelafort','62540','New Hampshire'),(10348,'Ayers','New Annetteview','23668','Oklahoma'),(10385,'Katherine','South Christopherside','21686','Indiana'),(10421,'Cassidy','Boydfurt','57311','Nevada'),(10427,'Mcgrath','Travisborough','75426','Virginia'),(10434,'Livingston','Chelseaside','27130','Idaho'),(10445,'Matthew','West Adam','04442','Oklahoma'),(10455,'Patterson','Stephanieside','12362','New Hampshire'),(10456,'Becky','East Gina','22880','Indiana'),(10458,'Morgan','East Ernest','32211','Indiana'),(10462,'Tamara','Port Laura','93125','North Dakota'),(10466,'Alexander','West Paul','04010','Pennsylvania'),(10467,'Allen','West Christineville','66566','Vermont'),(10469,'Bradford','Sanchezborough','96325','Missouri'),(10492,'Davenport','Hatfieldville','71582','Mississippi'),(10511,'Brian','South Jameston','40370','Indiana'),(10521,'Deborah','Allisontown','10383','Utah'),(10531,'Andrew','North Janice','59182','Utah'),(10534,'Edwards','Mitchellborough','41049','Kentucky'),(10535,'Jeffrey','East David','13470','New Jersey'),(10538,'Mason','New Kimberlyberg','88583','Kentucky'),(10557,'Randy','West Kellyshire','48211','Maryland'),(10560,'Amy','Parrishborough','31071','Florida'),(10563,'Victoria','Jamesstad','23460','Delaware'),(10578,'Henderson','Port Alyssaton','46055','New Mexico'),(10579,'Steven','West Jay','89583','Pennsylvania'),(10584,'Michael','Arnoldstad','09003','Mississippi'),(10588,'Brittany','Howardview','11144','Montana'),(10599,'Sean','Ellismouth','55805','Massachusetts'),(10646,'Jack','Tiffanyland','65722','Connecticut'),(10653,'Robinson','Carterberg','66840','Kansas'),(10666,'Tyler','West Mark','90591','Michigan'),(10669,'Vega','North Justin','62827','California'),(10673,'Sanders','Kingtown','24730','Hawaii'),(10676,'Little','North Tyler','96996','Wyoming'),(10700,'Tiffany','East Cathystad','99598','New Hampshire'),(10709,'Megan','Lake Jeremy','14964','Wyoming'),(10711,'Hoffman','Parkermouth','62011','Nevada'),(10712,'Isaac','Snowtown','03917','North Carolina'),(10730,'Price','New Samuel','95499','Wyoming'),(10743,'Morales','Lake Williamland','02805','Wisconsin'),(10745,'Lisa','Hannahshire','92918','Wisconsin'),(10747,'Watkins','New Susan','15540','Oklahoma'),(10752,'Wilson','Port Christinaside','47628','Illinois'),(10766,'Duran','Lake David','51623','Tennessee'),(10777,'Chad','Lake Christopher','13559','Washington'),(10788,'Tonya','East Andrewview','34726','Ohio'),(10808,'Rivera','West Kimberlymouth','25548','South Carolina'),(10836,'Henry','Lindseyfort','50855','California'),(10840,'Lawson','West Matthewmouth','21927','Tennessee'),(10848,'Moore','Manningberg','03759','Wyoming'),(10857,'Brandon','Martinfurt','08387','Massachusetts'),(10864,'Melinda','Port Ronald','75015','Pennsylvania'),(10865,'Macdonald','North Aaron','52494','Idaho'),(10871,'Heather','Stephenstown','64232','West Virginia'),(10880,'Powell','Romeroside','46054','Massachusetts'),(10917,'Merritt','Andrewmouth','77664','Vermont'),(10923,'Cortez','South Tinaside','72805','Alabama'),(10930,'Maynard','Strongview','90695','Kansas'),(10938,'Brent','Foxberg','93581','Idaho'),(10943,'Aaron','Leemouth','00656','Michigan'),(10946,'Anthony','Jonathonshire','23038','Rhode Island'),(10956,'Cristina','New Davidmouth','49463','Mississippi'),(10973,'Stephanie','Lake Ashleyhaven','14343','Oregon'),(10979,'Parker','Shannonview','72119','Louisiana'),(10993,'Amanda','East Karenbury','67251','Georgia');
/*!40000 ALTER TABLE `adresse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bicyclette`
--

DROP TABLE IF EXISTS `bicyclette`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bicyclette` (
  `numProd` varchar(10) NOT NULL,
  `nom` varchar(40) DEFAULT NULL,
  `grandeur` varchar(40) DEFAULT NULL,
  `prixUnitaire` int DEFAULT NULL,
  `ligneProduit` varchar(40) DEFAULT NULL,
  `nbDispo` int DEFAULT NULL,
  `nbVendu` int DEFAULT NULL,
  PRIMARY KEY (`numProd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bicyclette`
--

LOCK TABLES `bicyclette` WRITE;
/*!40000 ALTER TABLE `bicyclette` DISABLE KEYS */;
INSERT INTO `bicyclette` VALUES ('101','Joe','Homme',755,'BMX',18,841),('106','Jennifer','Homme',1028,'Velo de Course',17,813),('111','Amy','Enfant',439,'VTT',12,516),('115','Brenda','Enfant',2674,'Velo de Course',19,787),('122','Brenda','Femme',1814,'Classique',11,711),('134','Caroline','Homme',727,'Velo de Course',5,103),('136','Timothy','Femme',87,'Velo de Course',17,174),('137','Kristin','Femme',349,'Velo de Course',8,964),('144','Adam','Femme',2389,'BMX',15,925),('147','Jamie','Homme',1559,'VTT',5,701),('153','Megan','Enfant',365,'BMX',19,394),('166','Crystal','Enfant',319,'Velo de Course',7,820),('182','Shawn','Homme',1741,'BMX',13,409),('187','Cameron','Enfant',1862,'VTT',16,971),('192','Vincent','Enfant',861,'BMX',12,596),('193','ffg','Homme',500,'BMX',100,0);
/*!40000 ALTER TABLE `bicyclette` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boutiquesSpecialisees`
--

DROP TABLE IF EXISTS `boutiquesSpecialisees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boutiquesSpecialisees` (
  `idClient` int NOT NULL,
  `nom` varchar(40) DEFAULT NULL,
  `prenom` varchar(40) DEFAULT NULL,
  `idAdresse` int DEFAULT NULL,
  `telephone` varchar(30) DEFAULT NULL,
  `courriel` varchar(100) DEFAULT NULL,
  `volumeDachats` float DEFAULT NULL,
  `remise` int DEFAULT NULL,
  PRIMARY KEY (`idClient`),
  UNIQUE KEY `telephone` (`telephone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boutiquesSpecialisees`
--

LOCK TABLES `boutiquesSpecialisees` WRITE;
/*!40000 ALTER TABLE `boutiquesSpecialisees` DISABLE KEYS */;
INSERT INTO `boutiquesSpecialisees` VALUES (900,'Reed','Steven Nguyen',10220,'750-881-1278','walkerrebecca@combs-ramos.com',47.0142,5),(907,'Wise','Sandra Mooney',10227,'923-202-0917x8398','frankwright@horton-wise.com',20.1202,5),(909,'Goodman','William Evans',10269,'001-879-871-3654x654','laurasmith@campbell.com',9.70882,12),(911,'Anderson','Brandon Parker',10445,'(782)730-4689','mooneyjeffrey@norman.com',16.777,5),(929,'Fleming','Jeffery Powell',10864,'+1-605-762-8764x3713','jennifer63@parks.com',37.147,10),(932,'Davis','Brandy Gordon',10288,'809-177-0999x9320','youngkatherine@king.com',8.78187,12),(938,'Harris','Thomas Peters',10146,'+1-320-800-0031x59389','nwatson@rojas.com',24.6599,12),(945,'Green','Deborah Romero',10673,'(991)485-2352x198','brendaortega@miller.info',21.2157,10),(946,'Bailey','David Ray',10711,'(372)987-4144x4894','mcculloughjoseph@hernandez.com',11.7859,5),(949,'Becker','Amber Odonnell',10979,'345.407.7511','smithtyler@arnold-jones.com',19.2939,12);
/*!40000 ALTER TABLE `boutiquesSpecialisees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commande` (
  `idCommande` int NOT NULL,
  `dateCommande` datetime DEFAULT NULL,
  `idClient` int DEFAULT NULL,
  PRIMARY KEY (`idCommande`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande`
--

LOCK TABLES `commande` WRITE;
/*!40000 ALTER TABLE `commande` DISABLE KEYS */;
INSERT INTO `commande` VALUES (13008,'2022-04-06 00:00:00',993),(13010,'2022-03-04 00:00:00',931),(13014,'2022-09-15 00:00:00',932),(13021,'2022-09-07 00:00:00',929),(13024,'2022-11-14 00:00:00',938),(13035,'2022-04-23 00:00:00',945),(13036,'2022-09-10 00:00:00',929),(13042,'2022-11-16 00:00:00',949),(13046,'2022-04-02 00:00:00',930),(13051,'2022-06-26 00:00:00',934),(13053,'2022-03-18 00:00:00',972),(13056,'2022-02-18 00:00:00',946),(13067,'2022-09-22 00:00:00',907),(13071,'2022-02-04 00:00:00',911),(13074,'2022-08-24 00:00:00',900),(13077,'2022-07-08 00:00:00',968),(13081,'2022-11-01 00:00:00',935),(13087,'2022-11-22 00:00:00',909),(13091,'2022-02-05 00:00:00',996),(13093,'2022-04-03 00:00:00',969);
/*!40000 ALTER TABLE `commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commandeFournisseur`
--

DROP TABLE IF EXISTS `commandeFournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commandeFournisseur` (
  `idCommande` int NOT NULL,
  `dateCommande` datetime DEFAULT NULL,
  PRIMARY KEY (`idCommande`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commandeFournisseur`
--

LOCK TABLES `commandeFournisseur` WRITE;
/*!40000 ALTER TABLE `commandeFournisseur` DISABLE KEYS */;
INSERT INTO `commandeFournisseur` VALUES (13507,'2022-09-03 00:00:00'),(13519,'2022-06-10 00:00:00'),(13522,'2022-04-20 00:00:00'),(13528,'2022-06-23 00:00:00'),(13534,'2022-04-27 00:00:00'),(13536,'2022-07-16 00:00:00'),(13543,'2022-02-03 00:00:00'),(13551,'2022-09-11 00:00:00'),(13563,'2022-04-16 00:00:00'),(13575,'2022-05-03 00:00:00');
/*!40000 ALTER TABLE `commandeFournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fournisseur` (
  `siret` varchar(40) NOT NULL,
  `idAdresse` int DEFAULT NULL,
  `telephone` varchar(40) DEFAULT NULL,
  `courriel` varchar(40) DEFAULT NULL,
  `nomContact` varchar(40) DEFAULT NULL,
  `qualite` int DEFAULT NULL,
  PRIMARY KEY (`siret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournisseur`
--

LOCK TABLES `fournisseur` WRITE;
/*!40000 ALTER TABLE `fournisseur` DISABLE KEYS */;
INSERT INTO `fournisseur` VALUES ('600045',10049,'001-745-889-9694','chelseaprince@example.org','Stephanie Davis',4),('600054',10005,'721-892-4705x758','daltonkiara@example.net','Kayla Golden',2),('600077',10154,'298-783-1774x6983','mmassey@example.org','Lucas Miller',1),('600101',10579,'+1-158-198-2052','eric95@example.org','Tina Potts',3),('600124',10282,'001-602-572-7834x3940','nichole94@example.org','Charles Sanders',1),('600138',10323,'565-617-7054x716','jessica44@example.com','Jeremy Vincent',2),('600147',10466,'(180)936-3185','aprilsmith@example.com','Cassandra Torres',2);
/*!40000 ALTER TABLE `fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `individu`
--

DROP TABLE IF EXISTS `individu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `individu` (
  `idClient` int NOT NULL,
  `nom` varchar(40) DEFAULT NULL,
  `prenom` varchar(40) DEFAULT NULL,
  `idAdresse` int DEFAULT NULL,
  `telephone` varchar(40) DEFAULT NULL,
  `courriel` varchar(100) DEFAULT NULL,
  `noProgramme` int DEFAULT NULL,
  `dateAdhesionProgrammeFidelio` datetime DEFAULT NULL,
  PRIMARY KEY (`idClient`),
  UNIQUE KEY `idClient` (`idClient`),
  UNIQUE KEY `telephone` (`telephone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `individu`
--

LOCK TABLES `individu` WRITE;
/*!40000 ALTER TABLE `individu` DISABLE KEYS */;
INSERT INTO `individu` VALUES (925,'Henry','Shannon',10766,'975.452.6975x60689','nflowers@example.com',1,'2021-06-19 00:00:00'),(926,'Brown','Kyle',10146,'001-025-944-2152x2738','dgreen@example.net',2,'2021-05-17 00:00:00'),(929,'Abbott','George',10511,'6614220670','annmaxwell@example.org',3,'2021-01-01 00:00:00'),(930,'Thomas','Cindy',10262,'(397)510-9505x03109','michellegrant@example.com',1,'2021-01-27 00:00:00'),(931,'Morgan','Pamela',10711,'+1-100-209-6798x671','alexanderamy@example.com',4,'2021-02-07 00:00:00'),(933,'Welch','Ellen',10676,'001-130-035-0368x532','ashley79@example.com',3,'2021-09-19 00:00:00'),(934,'Alvarez','Elizabeth',10788,'(981)595-2273x32565','stephanie94@example.net',3,'2021-10-16 00:00:00'),(935,'Gordon','Ana',10848,'9614831404','robertsonmichael@example.org',4,'2021-11-13 00:00:00'),(936,'Montoya','Bryan',10385,'001-619-921-9809','xlopez@example.net',3,'2021-01-07 00:00:00'),(937,'Weber','Jeffrey',10445,'245-745-7592x872','amanda56@example.org',3,'2021-01-12 00:00:00'),(938,'Pearson','Anne',10456,'+1-408-625-7385x33927','qrobinson@example.org',3,'2021-07-12 00:00:00'),(942,'Brown','Thomas',10242,'4353560071','willisanna@example.net',4,'2021-05-24 00:00:00'),(943,'Jensen','Melanie',10864,'451.820.5261','pughhayden@example.org',3,'2021-03-07 00:00:00'),(944,'Smith','Jeanette',10190,'519-977-6275','vargasjonathan@example.net',4,'2021-10-18 00:00:00'),(946,'Larsen','Vicki',10467,'291-437-1393x2617','mossrichard@example.net',3,'2021-03-22 00:00:00'),(947,'Ryan','Todd',10030,'(617)827-4722','katherinefuller@example.com',3,'2021-05-27 00:00:00'),(948,'Osborne','Sarah',10434,'(830)852-8641','jamieperry@example.com',1,'2021-01-05 00:00:00'),(949,'Cantu','Kristi',10108,'(330)062-9699x047','michaeloliver@example.org',4,'2021-04-19 00:00:00'),(950,'Branch','Sandra',10730,'+1-789-875-0714','briansmith@example.net',1,'2021-05-05 00:00:00'),(951,'Rodriguez','Jennifer',10521,'630.857.6757','rodriguezbill@example.com',2,'2021-11-24 00:00:00'),(953,'Aguilar','William',10993,'+1-685-536-5525x526','jessica43@example.com',4,'2021-10-25 00:00:00'),(954,'Schmitt','Carla',10777,'9278446284','margaret45@example.org',3,'2021-07-18 00:00:00'),(957,'Robertson','Susan',10132,'584.216.8941x9736','elizabethanderson@example.org',2,'2021-06-14 00:00:00'),(958,'Trujillo','Edward',10469,'+1-470-825-2620x35232','gonzalezlinda@example.org',2,'2021-10-03 00:00:00'),(959,'Lee','Jacob',10282,'(515)290-9890x776','hjackson@example.com',3,'2021-03-06 00:00:00'),(960,'Meyer','Jason',10220,'517.068.4067','zmartinez@example.com',2,'2021-07-23 00:00:00'),(962,'Swanson','Robin',10154,'710.379.3081x038','michaelcook@example.com',3,'2021-11-13 00:00:00'),(963,'Bates','Shawn',10455,'337-776-9176x36786','renee86@example.com',4,'2021-11-21 00:00:00'),(965,'Anderson','Jerry',10092,'+1-652-673-8885x86817','christinejacobs@example.org',2,'2021-04-20 00:00:00'),(967,'Williams','Timothy',10263,'+1-884-750-1180x621','jennifer30@example.org',3,'2021-09-19 00:00:00'),(968,'Clark','Michael',10238,'622-158-8029x741','ashleyhorton@example.net',2,'2021-01-24 00:00:00'),(969,'Maxwell','Barbara',10323,'408.133.5141x96097','anna78@example.net',4,'2021-11-03 00:00:00'),(970,'Callahan','Andrew',10579,'681.645.8211x8755','mpowell@example.net',2,'2021-04-05 00:00:00'),(971,'Dunn','Tracey',10458,'204.786.4648x331','jeremy47@example.net',4,'2021-09-10 00:00:00'),(972,'Williams','Kyle',10117,'+1-462-081-0354x7055','jessicaross@example.net',3,'2021-03-20 00:00:00'),(978,'Mcguire','Kathryn',10492,'(594)439-9085x7568','ronaldlynch@example.net',3,'2021-04-01 00:00:00'),(979,'Andrews','Xavier',10049,'001-797-047-3361x7931','shernandez@example.net',2,'2021-11-09 00:00:00'),(980,'Bradley','Clifford',10930,'(189)123-5615','jimhanson@example.net',4,'2021-01-18 00:00:00'),(983,'Wilson','Amanda',10808,'182-763-9133','allison79@example.com',1,'2021-03-21 00:00:00'),(984,'Hart','Devon',10840,'001-971-703-8534x88871','adrian25@example.org',1,'2021-01-23 00:00:00'),(985,'Gray','Gabrielle',10943,'981-433-6798x41562','nguyensherri@example.net',2,'2021-06-10 00:00:00'),(986,'Jesse','Pamela',10531,'7737186345','jennifer57@example.org',2,'2021-10-03 00:00:00'),(987,'Peters','David',10073,'335.676.5820x2001','heathersmith@example.net',1,'2021-02-12 00:00:00'),(988,'Green','Christine',10857,'001-569-979-8970x9798','fwolf@example.net',2,'2021-04-08 00:00:00'),(992,'Bass','Derek',10584,'768-814-9439x3839','adavis@example.net',4,'2021-10-24 00:00:00'),(993,'Sexton','Paul',10288,'163.777.5512x03333','misty15@example.net',2,'2021-07-06 00:00:00'),(994,'Owens','Sarah',10427,'001-552-513-3306x977','jason86@example.net',1,'2021-07-11 00:00:00'),(995,'Thompson','Christine',10871,'001-123-440-3386x8460','crystal43@example.org',2,'2021-11-05 00:00:00'),(996,'Johnston','Michelle',10160,'548.786.5514x54765','vincentbanks@example.net',2,'2021-04-14 00:00:00'),(997,'Alvarez','Kathleen',10646,'(318)877-8853x67474','fisherstacy@example.net',4,'2021-03-14 00:00:00');
/*!40000 ALTER TABLE `individu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ligneCommandePiece`
--

DROP TABLE IF EXISTS `ligneCommandePiece`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ligneCommandePiece` (
  `idCommande` int DEFAULT NULL,
  `numProd` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ligneCommandePiece`
--

LOCK TABLES `ligneCommandePiece` WRITE;
/*!40000 ALTER TABLE `ligneCommandePiece` DISABLE KEYS */;
INSERT INTO `ligneCommandePiece` VALUES (13042,'43'),(13046,'18'),(13093,'6'),(13035,'58'),(13093,'20'),(13014,'91'),(13087,'0'),(13035,'26'),(13093,'23'),(13077,'38'),(13021,'57'),(13093,'53'),(13021,'60'),(13036,'63'),(13077,'91');
/*!40000 ALTER TABLE `ligneCommandePiece` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ligneCommandePieceFournisseur`
--

DROP TABLE IF EXISTS `ligneCommandePieceFournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ligneCommandePieceFournisseur` (
  `idCommande` int DEFAULT NULL,
  `numProd` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ligneCommandePieceFournisseur`
--

LOCK TABLES `ligneCommandePieceFournisseur` WRITE;
/*!40000 ALTER TABLE `ligneCommandePieceFournisseur` DISABLE KEYS */;
INSERT INTO `ligneCommandePieceFournisseur` VALUES (13522,'51'),(13507,'30'),(13528,'72'),(13543,'91'),(13528,'31');
/*!40000 ALTER TABLE `ligneCommandePieceFournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ligneCommandeVelo`
--

DROP TABLE IF EXISTS `ligneCommandeVelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ligneCommandeVelo` (
  `idCommande` int DEFAULT NULL,
  `numProd` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ligneCommandeVelo`
--

LOCK TABLES `ligneCommandeVelo` WRITE;
/*!40000 ALTER TABLE `ligneCommandeVelo` DISABLE KEYS */;
INSERT INTO `ligneCommandeVelo` VALUES (13008,'153'),(13021,'137'),(13056,'106'),(13056,'182'),(13081,'111'),(13087,'122'),(13081,'136'),(13081,'122'),(13074,'166'),(13091,'101'),(13042,'106'),(13051,'122'),(13087,'122'),(13021,'147'),(13071,'187');
/*!40000 ALTER TABLE `ligneCommandeVelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listeMontagePiecesBicyclette`
--

DROP TABLE IF EXISTS `listeMontagePiecesBicyclette`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listeMontagePiecesBicyclette` (
  `numProd` varchar(10) DEFAULT NULL,
  `cadre` varchar(10) DEFAULT NULL,
  `guidon` varchar(10) DEFAULT NULL,
  `freins` varchar(10) DEFAULT NULL,
  `selle` varchar(10) DEFAULT NULL,
  `derailleurAvant` varchar(10) DEFAULT NULL,
  `derailleurArriere` varchar(10) DEFAULT NULL,
  `roueAvant` varchar(10) DEFAULT NULL,
  `roueArriere` varchar(10) DEFAULT NULL,
  `reflecteurs` varchar(10) DEFAULT NULL,
  `pedalier` varchar(10) DEFAULT NULL,
  `ordinateur` varchar(10) DEFAULT NULL,
  `panier` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listeMontagePiecesBicyclette`
--

LOCK TABLES `listeMontagePiecesBicyclette` WRITE;
/*!40000 ALTER TABLE `listeMontagePiecesBicyclette` DISABLE KEYS */;
INSERT INTO `listeMontagePiecesBicyclette` VALUES ('147','60','33','50','64','98','28','53','29','91','90','54','90'),('115','44','17','72','23','45','43','68','12','9','74','21','74'),('136','1','93','32','63','47','49','4','71','57','8','6','8'),('134','37','85','70','22','20','39','84','27','94','13','76','13'),('101','62',NULL,'61','35','78','87','88','86',NULL,'2','10','2'),('122','30',NULL,'7','97','95','25','41','38',NULL,'51','99','51'),('182',NULL,NULL,'65','55','92','59','3','48',NULL,'31','81','31'),('144',NULL,NULL,'83','58','16','46','34',NULL,NULL,'80','24','80'),('166',NULL,NULL,'40','52','56','69','73',NULL,NULL,'26',NULL,'26'),('111',NULL,NULL,NULL,'67',NULL,NULL,'5',NULL,NULL,'19',NULL,'19'),('137',NULL,NULL,NULL,'77',NULL,NULL,'75',NULL,NULL,'15',NULL,'15'),('106',NULL,NULL,NULL,'36',NULL,NULL,'89',NULL,NULL,NULL,NULL,NULL),('192',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL),('153',NULL,NULL,NULL,NULL,NULL,NULL,'11',NULL,NULL,NULL,NULL,NULL),('187',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `listeMontagePiecesBicyclette` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listePieceFournisseur`
--

DROP TABLE IF EXISTS `listePieceFournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listePieceFournisseur` (
  `siret` varchar(40) DEFAULT NULL,
  `numprod` varchar(10) DEFAULT NULL,
  `prix` float DEFAULT NULL,
  `delaiDeLivraison` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listePieceFournisseur`
--

LOCK TABLES `listePieceFournisseur` WRITE;
/*!40000 ALTER TABLE `listePieceFournisseur` DISABLE KEYS */;
/*!40000 ALTER TABLE `listePieceFournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piece`
--

DROP TABLE IF EXISTS `piece`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `piece` (
  `numProd` varchar(10) NOT NULL,
  `description` text,
  `dateIntroduction` date DEFAULT NULL,
  `dateDiscont` date DEFAULT NULL,
  `prixUnitaire` int DEFAULT NULL,
  `nbDispo` int DEFAULT NULL,
  `categorie` varchar(40) DEFAULT NULL,
  `nbVendu` int DEFAULT NULL,
  PRIMARY KEY (`numProd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piece`
--

LOCK TABLES `piece` WRITE;
/*!40000 ALTER TABLE `piece` DISABLE KEYS */;
INSERT INTO `piece` VALUES ('0','Neuf','2020-10-17','2022-05-21',132,9,'roueAvant',467),('1','Neuf','2019-02-11','2022-07-05',272,12,'cadre',120),('10','comme neuf','2019-09-06','2022-07-14',81,13,'ordinateur',745),('11','Neuf','2019-01-03','2022-08-25',293,17,'roueAvant',36),('12','comme neuf','2019-05-23','2022-08-22',274,18,'roueArriere',440),('13','comme neuf','2020-05-07','2022-10-16',43,5,'panier',738),('14','Neuf','2020-03-27','2022-03-11',186,6,'pedalier',430),('15','occasion','2020-08-08','2022-02-05',121,18,'panier',818),('16','occasion','2020-08-08','2022-05-09',163,17,'derailleurAvant',841),('17','comme neuf','2020-04-03','2022-02-03',80,9,'guidon',514),('18','occasion','2020-06-11','2022-03-05',25,9,'pedalier',294),('19','occasion','2019-10-01','2022-05-13',144,16,'panier',68),('2','Neuf','2020-10-24','2022-01-07',236,9,'panier',789),('20','comme neuf','2020-02-07','2022-07-24',68,7,'derailleurAvant',957),('21','occasion','2019-10-23','2022-11-18',266,14,'ordinateur',322),('22','Neuf','2019-06-21','2022-01-08',23,10,'selle',392),('23','comme neuf','2020-11-12','2022-04-21',224,14,'selle',425),('24','comme neuf','2019-11-23','2022-09-19',104,4,'ordinateur',234),('25','Neuf','2020-10-24','2022-03-04',223,16,'derailleurArriere',845),('26','comme neuf','2019-01-14','2022-08-04',228,12,'panier',193),('27','occasion','2019-02-03','2022-02-22',180,4,'roueArriere',290),('28','comme neuf','2019-05-01','2022-06-10',28,8,'derailleurArriere',254),('29','occasion','2019-04-25','2022-10-17',68,8,'roueArriere',492),('3','occasion','2019-02-08','2022-02-21',160,17,'roueAvant',253),('30','occasion','2019-11-06','2022-08-02',47,19,'cadre',144),('31','Neuf','2020-07-21','2022-11-18',25,6,'panier',662),('32','occasion','2019-01-01','2022-08-18',206,15,'freins',440),('33','occasion','2020-09-14','2022-11-13',168,10,'guidon',985),('34','Neuf','2020-05-25','2022-11-17',169,18,'roueAvant',288),('35','Neuf','2019-07-04','2022-01-02',159,10,'selle',516),('36','comme neuf','2019-02-24','2022-03-20',42,13,'selle',977),('37','occasion','2020-11-24','2022-04-21',187,18,'cadre',354),('38','Neuf','2020-03-01','2022-11-14',32,17,'roueArriere',239),('39','comme neuf','2020-11-11','2022-09-11',159,10,'derailleurArriere',63),('4','comme neuf','2020-11-24','2022-01-16',291,17,'roueAvant',818),('40','comme neuf','2020-03-18','2022-07-27',142,10,'freins',498),('41','occasion','2020-01-07','2022-09-19',221,6,'roueAvant',792),('42','occasion','2019-02-17','2022-05-08',55,14,'pedalier',588),('43','comme neuf','2020-03-24','2022-04-10',153,12,'derailleurArriere',621),('44','occasion','2020-08-27','2022-04-14',112,10,'cadre',972),('45','Neuf','2020-06-22','2022-10-18',34,14,'derailleurAvant',257),('46','occasion','2020-05-23','2022-01-24',28,17,'derailleurArriere',354),('47','comme neuf','2020-07-08','2022-09-18',184,10,'derailleurAvant',802),('48','Neuf','2020-01-22','2022-09-27',77,4,'roueArriere',540),('49','comme neuf','2020-11-25','2022-11-25',116,4,'derailleurArriere',291),('5','Neuf','2020-02-17','2022-01-05',148,5,'roueAvant',516),('50','occasion','2020-10-21','2022-11-15',29,14,'freins',122),('51','Neuf','2020-10-12','2022-04-19',273,4,'panier',323),('52','occasion','2019-01-02','2022-03-13',167,19,'selle',352),('53','comme neuf','2019-03-11','2022-03-17',187,8,'roueAvant',24),('54','occasion','2020-01-25','2022-06-14',201,14,'ordinateur',962),('55','Neuf','2019-04-07','2022-09-17',22,12,'selle',715),('56','comme neuf','2020-01-16','2022-11-15',262,17,'derailleurAvant',636),('57','comme neuf','2020-05-26','2022-11-14',57,11,'reflecteurs',263),('58','comme neuf','2019-03-23','2022-08-14',78,17,'selle',107),('59','Neuf','2019-04-05','2022-07-10',235,5,'derailleurArriere',464),('6','occasion','2019-02-18','2022-10-17',70,8,'ordinateur',671),('60','occasion','2019-01-18','2022-10-24',37,18,'cadre',216),('61','occasion','2019-09-08','2022-01-18',76,18,'freins',635),('62','occasion','2020-07-27','2022-08-24',128,4,'cadre',88),('63','occasion','2019-05-07','2022-02-02',256,19,'selle',664),('64','Neuf','2020-05-16','2022-05-22',21,12,'selle',575),('65','comme neuf','2020-05-02','2022-05-20',225,18,'freins',50),('66','Neuf','2020-04-05','2022-03-01',259,13,'pedalier',66),('67','Neuf','2020-06-03','2022-03-07',135,15,'selle',78),('68','comme neuf','2019-09-07','2022-05-09',54,18,'roueAvant',575),('69','occasion','2019-03-06','2022-09-04',190,18,'derailleurArriere',557),('7','occasion','2019-01-10','2022-06-26',135,16,'freins',389),('70','Neuf','2020-04-16','2022-02-19',121,12,'freins',598),('71','Neuf','2019-07-16','2022-11-22',44,11,'roueArriere',288),('72','comme neuf','2019-02-04','2022-02-18',138,17,'freins',8),('73','comme neuf','2019-04-15','2022-05-17',92,5,'roueAvant',226),('74','comme neuf','2020-08-17','2022-08-16',285,19,'panier',73),('75','occasion','2020-09-27','2022-05-03',16,14,'roueAvant',265),('76','Neuf','2020-06-25','2022-05-12',119,18,'ordinateur',614),('77','occasion','2020-09-26','2022-04-09',20,4,'selle',228),('78','comme neuf','2020-05-16','2022-11-11',179,14,'derailleurAvant',775),('79','occasion','2019-09-27','2022-03-27',27,5,'pedalier',503),('8','comme neuf','2019-02-27','2022-10-19',177,11,'panier',726),('80','occasion','2020-07-25','2022-05-09',32,16,'panier',612),('81','comme neuf','2020-07-27','2022-01-14',167,5,'ordinateur',428),('82','occasion','2020-10-09','2022-04-17',144,11,'pedalier',225),('83','comme neuf','2019-06-16','2022-07-04',246,15,'freins',480),('84','Neuf','2020-08-11','2022-05-12',145,19,'roueAvant',199),('85','Neuf','2020-02-14','2022-01-04',257,18,'guidon',624),('86','comme neuf','2019-09-08','2022-02-12',15,7,'roueArriere',187),('87','occasion','2019-07-10','2022-05-18',88,8,'derailleurArriere',505),('88','comme neuf','2020-03-07','2022-10-27',38,15,'roueAvant',997),('89','occasion','2020-08-14','2022-05-10',227,4,'roueAvant',166),('9','occasion','2019-02-19','2022-11-24',81,13,'reflecteurs',363),('90','Neuf','2020-09-22','2022-01-05',43,17,'panier',136),('91','Neuf','2020-01-01','2022-08-04',199,10,'reflecteurs',261),('92','comme neuf','2020-05-24','2022-10-04',107,11,'derailleurAvant',278),('93','occasion','2019-08-22','2022-03-23',295,18,'guidon',673),('94','Neuf','2020-07-02','2022-05-17',239,6,'reflecteurs',463),('95','occasion','2019-02-26','2022-08-27',280,9,'derailleurAvant',957),('96','Neuf','2019-08-17','2022-01-16',232,15,'pedalier',676),('97','Neuf','2019-09-23','2022-09-12',141,11,'selle',944),('98','comme neuf','2019-06-17','2022-05-07',41,17,'derailleurAvant',937),('99','Neuf','2020-11-04','2022-08-07',129,14,'ordinateur',929);
/*!40000 ALTER TABLE `piece` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programme`
--

DROP TABLE IF EXISTS `programme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `programme` (
  `noProgramme` int NOT NULL,
  `nom` varchar(40) DEFAULT NULL,
  `cout` int DEFAULT NULL,
  `duree` datetime DEFAULT NULL,
  `rabais` int DEFAULT NULL,
  PRIMARY KEY (`noProgramme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programme`
--

LOCK TABLES `programme` WRITE;
/*!40000 ALTER TABLE `programme` DISABLE KEYS */;
INSERT INTO `programme` VALUES (1,'Fidelio',15,'0001-01-01 00:00:00',5),(2,'Fidelio Or',25,'0001-01-02 00:00:00',8),(3,'Fidelio Platine',60,'0001-01-02 00:00:00',10),(4,'Fidelio Max',100,'0001-01-03 00:00:00',12);
/*!40000 ALTER TABLE `programme` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-19 11:22:34
