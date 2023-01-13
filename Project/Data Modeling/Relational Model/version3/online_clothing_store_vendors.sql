-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: online_clothing_store
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
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors` (
  `vendor_id` bigint NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `storename` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `ratings` int DEFAULT '0',
  `password` varchar(255) NOT NULL,
  `registeredAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`vendor_id`),
  UNIQUE KEY `uq_mobile` (`mobile_number`),
  UNIQUE KEY `uq_email` (`email`),
  UNIQUE KEY `uq_username` (`storename`),
  CONSTRAINT `check_vendor_password_length` CHECK ((char_length(`password`) >= 11))
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES (1,'Danny','','Ralph','2-866-240-0502','Danny_Ralph384@muall.tech','Medhurst, McClure and Armstrong','Woodland Alley, 3715','Delaware',4,'82a7324f-7afd-4b57-9c38-1ef72d9ea837','2020-03-20 12:33:00','2007-10-28 08:43:00'),(2,'Felicity','','Ramsey','3-766-311-6472','Felicity_Ramsey2659@naiker.bi','Stiedemann, Ondricka and Streich','Blenkarne  Hill, 9838','Maine',1,'293ee8e7-d0ad-47cb-9b10-0d00bffd3466','2020-02-03 12:28:00','2013-09-26 15:47:00'),(3,'Denny','','Pearce','7-637-287-3815','Denny_Pearce2371@deons.tech','Jacobs-Dare','Linden Route, 3524','Missouri',1,'bc7f093b-e421-46c2-9d1d-3dbac7a68359','2003-02-12 05:13:00','2003-09-27 20:58:00'),(4,'Emerald','','Larkin','0-123-431-0517','Emerald_Larkin716@nimogy.bi','DuBuque, Keefe and Mraz','Baltic  Pass, 3397','Illinois',2,'3b88d4cd-5feb-4f6f-bed3-1ad0532a10fa','2001-03-16 06:23:00','2007-07-29 14:46:00'),(5,'Enoch','','Lambert','7-134-077-7820','Enoch_Lambert5281@fuliss.net','Reinger-Gutkowski','Oxford Tunnel, 2734','Tennessee',2,'2852ff7c-ee99-4e91-a477-a7d48f302b4f','2017-12-16 14:09:00','2010-10-24 15:57:00'),(6,'Carl','','Jordan','6-720-823-1845','Carl_Jordan4452@hourpy.bi','Runolfsdottir-Effertz','Durweston   Street, 9875','New York',3,'bf0dde1f-2a03-4be2-87e1-7f9307ee3945','2022-02-12 08:58:00','2005-01-01 15:27:00'),(7,'Noah','','Hamilton','0-702-562-2083','Noah_Hamilton3583@twipet.com','Connell-Langosh','Cliffords  Lane, 2685','Mississippi',4,'bfb5ef8b-0c23-47f8-809f-d42ec8dee01f','2021-03-21 07:12:00','2018-02-08 18:52:00'),(8,'Carmen','','Osmond','1-845-567-2462','Carmen_Osmond5207@famism.bi','Schaden, Bogisich and Simonis','Fawn Rue, 2040','Massachusetts',3,'a4251ba2-0a2f-4666-907b-c4930a05739a','2015-05-19 01:17:00','2016-11-27 19:42:00'),(9,'Evelynn','','Foxley','7-642-374-1135','Evelynn_Foxley2886@eirey.tech','Weimann, Sipes and Hilll','Tilson  Alley, 8670','California',1,'38c0c4f1-5e34-41bc-99c5-11ab765c8785','2019-07-12 09:51:00','2009-09-21 19:01:00'),(10,'Nick','','Devonport','4-763-755-2767','Nick_Devonport4378@twipet.com','Anderson, Swaniawski and Boyer','Rosewood Pass, 6619','California',3,'119576a3-291c-418c-8189-697706a782d8','2009-05-15 08:32:00','2011-03-12 21:02:00'),(11,'Charlie','','Thompson','2-500-446-7418','Charlie_Thompson3540@sveldo.bi','Kozey-Beier','Union  Boulevard, 9578','Alaska',2,'13d96b0b-9603-49b7-9e4a-f9ed5bb3ae01','2000-12-25 13:14:00','2021-12-07 21:01:00'),(12,'Benny','','Ebden','8-604-623-4282','Benny_Ebden894@gembat.bi','Fadel, Rau and Kuhic','Balham   Rue, 8759','Wisconsin',3,'b5d8a0ba-4f05-45a2-ae96-366a7cf9ec26','2001-07-27 12:02:00','2003-05-05 00:35:00'),(13,'Rihanna','','Johnson','0-888-500-5052','Rihanna_Johnson585@famism.bi','Metz, Zieme and Thompson','Oxford Crossroad, 4826','Kentucky',2,'d8691621-accb-4fc9-b645-080db18e2b15','2009-01-21 21:06:00','2015-09-28 20:36:00'),(14,'Alexia','','Nicholls','0-072-124-4577','Alexia_Nicholls5948@irrepsy.com','Farrell Inc','York Road, 8636','Alabama',4,'4f7b3aae-37b8-47e4-9fdf-fb817ad1a49e','2013-05-05 10:06:00','2005-11-26 21:27:00'),(15,'Elijah','','Shaw','4-832-020-0581','Elijah_Shaw7291@vetan.org','Trantow, Ondricka and Batz','English   Road, 4564','Nevada',3,'66ec9612-6a0e-435a-b2b0-a21c69b34b53','2000-05-11 14:23:00','2016-12-20 22:13:00'),(16,'Aleksandra','','Bright','4-313-600-8677','Aleksandra_Bright1569@vetan.org','Rogahn Group','Charnwood   Street, 1630','Vermont',2,'b827bd2a-debf-4631-a92c-0dcc0f53c17d','2018-04-26 04:25:00','2022-04-14 02:18:00'),(17,'Cristal','','Harrison','3-545-236-7838','Cristal_Harrison8203@nanoff.bi','Waters and Sons','Thomas More   Drive, 4867','West Virginia',1,'aa5ec5b5-5e3d-445d-b404-911ea92c6a45','2008-02-07 21:12:00','2005-09-15 02:12:00'),(18,'Lillian','','Stone','1-014-405-0635','Lillian_Stone5075@gmail.com','Boyle-Kilback','Norfolk  Road, 2201','Nebraska',2,'81396308-ee4e-4f95-8ddd-fd0940cbcd0c','2003-11-12 14:44:00','2017-05-31 03:25:00'),(19,'Elijah','','Ellison','4-467-702-6875','Elijah_Ellison2613@bungar.bi','Johnson-Zulauf','Paris   Walk, 233','New York',1,'082c52b9-577e-4f76-9430-ad4f6b25bd2c','2022-06-23 09:02:00','2003-05-02 09:35:00'),(20,'Mike','','Webster','8-580-864-7881','Mike_Webster4232@bretoux.com','Bartoletti Inc','Andsell    Grove, 4041','New Mexico',3,'aeee1d61-6a16-4d15-b145-ce06bb0dd924','2006-02-16 01:54:00','2000-09-17 09:16:00'),(21,'Marla','','Brock','5-175-682-6156','Marla_Brock2275@famism.bi','Blick Inc','Under  Drive, 752','Hawaii',1,'afab64bc-2c01-4c9e-85c2-a5d549a4ebd6','2021-12-25 19:28:00','2000-07-26 00:20:00'),(22,'Ethan','','Flack','5-284-243-7416','Ethan_Flack5030@nimogy.bi','Dare-Kassulke','Tilson  Vale, 7251','Maryland',2,'788a5fdd-6173-4527-8291-400f5d52f219','2010-03-04 09:03:00','2001-12-20 02:36:00'),(23,'Estrella','','Simpson','0-840-807-2351','Estrella_Simpson6388@typill.bi','Bartell-Kessler','Thomas  Walk, 6590','Delaware',1,'71857d87-98b6-4966-a785-2be61830d600','2004-09-19 21:20:00','2015-04-25 12:36:00'),(24,'Boris','','Ring','4-456-412-6084','Boris_Ring9040@typill.bi','Dach-Gorczany','Boadicea   Crossroad, 9524','California',4,'ae73d39d-163f-4638-87c7-8460d13a1171','2002-07-12 06:08:00','2014-01-27 15:13:00'),(25,'Chester','','Franks','5-676-113-3534','Chester_Franks808@jiman.org','Lueilwitz LLC','Bocking   Lane, 3937','Missouri',3,'0b26f83c-b845-4748-bc04-9eecae4b803a','2021-07-31 05:52:00','2012-02-17 07:37:00'),(26,'Lucas','','Notman','4-857-105-2546','Lucas_Notman1991@brety.org','Wiegand Inc','Cavell   Hill, 1418','Washington',2,'665099a6-d6fb-4650-be83-177020e64b9b','2009-05-08 10:33:00','2002-11-11 17:04:00'),(27,'Wade','','Hill','0-160-166-2877','Wade_Hill676@elnee.tech','Blick, Spinka and McKenzie','Castlereagh   Lane, 7911','Virginia',1,'1fd7fe7e-f8cb-4cdf-a5d0-1979fccc884f','2019-02-18 18:00:00','2005-10-24 20:44:00'),(28,'Boris','','Taylor','6-315-005-8748','Boris_Taylor4239@iatim.tech','Stracke Group','Rosewood Walk, 5927','North Dakota',1,'3a4720c2-2469-4291-8e45-39c67e858708','2010-11-22 02:26:00','2014-02-16 02:11:00'),(29,'Leroy','','Welsch','1-141-528-6712','Leroy_Welsch2077@gmail.com','Parker Inc','Hammersmith  Route, 6502','Illinois',4,'ba076f6c-8c72-44cd-9fd3-0393a5ff6791','2019-03-31 22:56:00','2002-09-13 06:03:00'),(30,'Mary','','Yang','5-577-204-7463','Mary_Yang3222@acrit.org','Spencer, Jaskolski and Botsford','Thomas More   Road, 8277','Wisconsin',4,'7c2a2fc4-ef5c-4b15-b0b0-42ee01771bba','2017-06-23 18:24:00','2014-11-05 03:52:00'),(31,'Rocco','','Shepherd','7-266-548-2214','Rocco_Shepherd5127@nanoff.bi','Wilderman and Sons','Cockspur  Lane, 3057','Rhode Island',1,'775db13d-5d45-41b6-84b4-54b13d75eeb4','2015-01-25 00:00:00','2014-06-05 03:12:00'),(32,'Adina','','Cadman','2-524-050-5481','Adina_Cadman5057@mafthy.com','Rempel, Shanahan and Koelpin','Gathorne   Tunnel, 756','Georgia',4,'2f731bbb-eba9-4e06-abce-79c370ab60cf','2002-12-20 19:31:00','2007-10-08 19:21:00'),(33,'Nate','','Goldsmith','8-651-770-4223','Nate_Goldsmith5707@bauros.bi','Breitenberg-Hackett','Gautrey  Tunnel, 3186','Virginia',4,'0ac6dcbc-654d-4f4c-bfaa-ce270c4ce7ca','2002-07-23 04:22:00','2017-03-19 17:28:00'),(34,'Rose','','Thompson','2-162-701-0308','Rose_Thompson7277@guentu.bi','Dare Group','Canal  Route, 5029','New Hampshire',1,'b3929ef3-8eae-47d7-9633-682140615ae8','2016-07-09 07:25:00','2000-07-28 12:10:00'),(35,'Michaela','','Mcgregor','7-570-305-6212','Michaela_Mcgregor5629@deons.tech','Stehr, Rath and Bartoletti','Cardinal Way, 2686','Nebraska',1,'737eec54-3af4-4d5f-8acf-b2c79784c72f','2010-09-14 07:36:00','2002-08-13 19:53:00'),(36,'Barry','','Mooney','5-451-003-4386','Barry_Mooney8704@womeona.net','Boyle, Blick and White','Bigland  Vale, 8422','Nevada',3,'5e24a42f-362f-481a-9ebc-9fcce35dbe8c','2012-03-31 13:19:00','2001-05-03 04:44:00'),(37,'Sabina','','Waterson','0-045-038-5472','Sabina_Waterson7191@gompie.com','Haley and Sons','Ely  Route, 13','Ohio',3,'13773c6f-1d01-4b74-8a4a-9f76674496e3','2019-01-15 18:04:00','2002-05-26 06:07:00'),(38,'Ivette','','Allen','8-886-704-7672','Ivette_Allen556@nickia.com','Johns-Hegmann','Victorian  Crossroad, 4418','Indiana',2,'a8444455-39fa-4a98-a5de-8cfdbc8127d8','2015-02-28 06:46:00','2002-11-25 21:19:00'),(39,'Harvey','','Morrison','2-062-658-8241','Harvey_Morrison119@extex.org','Mayert Inc','Blanchard  Road, 8152','New Jersey',2,'c9bfbc80-ae46-41b3-937e-252ac95d0cb5','2003-09-26 13:55:00','2019-03-31 04:27:00'),(40,'Goldie','','Harrison','8-880-888-7244','Goldie_Harrison695@nanoff.bi','Hackett-Berge','Cephas  Hill, 6718','Nevada',2,'28749453-ca22-4bb4-8bf1-9420b74be870','2013-02-24 14:36:00','2008-06-18 06:18:00'),(41,'Kamila','','Craig','3-622-003-0077','Kamila_Craig197@nickia.com','Borer Group','Apsley    Way, 7045','Illinois',4,'8d617694-8e0f-4dc7-96a0-01ad5d2c0e2d','2004-07-16 18:11:00','2013-03-15 06:16:00'),(42,'Sabrina','','May','5-521-378-6427','Sabrina_May2292@brety.org','Bashirian, Bernier and Carroll','Elba  Drive, 3023','Indiana',3,'ffe618ff-8caa-4ab4-a2b7-62231c1258da','2004-04-08 17:21:00','2008-11-05 04:37:00'),(43,'Keira','','Bryant','3-002-338-4676','Keira_Bryant4607@guentu.bi','Stanton, Altenwerth and Ondricka','Lake Boulevard, 7966','South Carolina',2,'e3ccf8ec-2b90-40dd-8a61-453dc24f887a','2004-11-27 08:56:00','2001-03-20 05:05:00'),(44,'Charlie','','Walsh','7-764-165-1538','Charlie_Walsh9804@joiniaa.com','Paucek, Heller and Goldner','Gathorne   Way, 4371','Utah',2,'46fd3ae6-34cb-44c7-b6a8-338d0bc61190','2021-01-28 04:30:00','2004-12-13 09:12:00'),(45,'Nick','','Lunt','6-577-514-7524','Nick_Lunt6865@hourpy.bi','Amore LLC','Lake Grove, 23','Pennsylvania',2,'9a4974b7-66b2-4749-81b0-a10c2d0e56cf','2010-07-26 17:25:00','2017-11-14 08:30:00'),(46,'Mason','','Norton','7-131-352-2483','Mason_Norton6394@nimogy.bi','Bayer Group','Caslon   Avenue, 8041','New Mexico',4,'c7d4c9c6-4392-41ea-ae1c-3c11bbed1a86','2022-08-24 14:51:00','2004-03-27 07:23:00'),(47,'Martin','','Wood','7-856-431-5760','Martin_Wood373@corti.com','Jast, Hayes and Schuster','Apollo  Avenue, 1225','Michigan',1,'8c03077c-4db5-4301-a59c-32381aecb79c','2016-03-15 13:10:00','2021-06-15 21:07:00'),(48,'Miriam','','Fox','2-755-508-2157','Miriam_Fox9559@liret.org','Adams and Sons','Chart   Avenue, 8220','Georgia',4,'e9aa5fd9-5311-4e68-aff4-9582b6f1f301','2019-10-21 20:03:00','2018-02-12 15:19:00'),(49,'Javier','','Stone','5-186-287-1412','Javier_Stone 8885@twace.org','Gorczany-Ward','Fieldstone Grove, 3471','Arkansas',3,'ade1c7c9-7d92-46e0-ad65-207f35857000','2009-07-17 08:06:00','2020-01-09 04:52:00'),(50,'Mara','','Dowson','7-822-627-5503','Mara_Dowson3925@nickia.com','Wisozk, Schaden and Swift','Garfield Walk, 582','New Mexico',4,'1a805e75-f515-4fca-af2b-88821f9e9908','2008-05-07 16:46:00','2022-08-31 11:26:00');
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-14  9:27:57