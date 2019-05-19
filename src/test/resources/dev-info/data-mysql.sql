-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: elmi
-- ------------------------------------------------------
-- Server version	5.7.12-log

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
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,'Comdt','Commandant - Armed Forces Command and Staff College',NULL,'2019-04-20 15:09:53','2019-04-20 15:09:53'),(2,'Dy Comdt','Deputy Commandant - Armed Forces Command and Staff College',1,'2019-04-20 15:09:53','2019-04-20 15:09:53'),(3,'Director','Director of a Branch',1,'2019-04-20 15:09:53','2019-04-20 15:09:53'),(4,'CI','Chief Instructor of a Department',3,'2019-04-20 15:09:53','2019-04-20 15:09:53'),(5,'SO1','Staff Officer 1 of a Department',3,'2019-04-20 15:09:53','2019-04-20 15:09:53'),(6,'TC','Term Coordinator of a Course in a Department',3,'2019-04-20 15:09:53','2019-04-20 15:09:53'),(7,'DS','Directing Staff of a Course in a Department',3,'2019-04-20 15:09:53','2019-04-20 15:09:53'),(8,'Student','Student of a Course in a Department',3,'2019-04-20 15:09:53','2019-04-20 15:09:53'),(9,'SO2','Staff Officer 2 of a Department',3,'2019-04-20 15:09:53','2019-04-20 15:09:53');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
INSERT INTO `document` VALUES (1,NULL,'MSkioskAntiMalpracticeApp__22__RIC Written Brief__DLW, SC Syndicate 1__STUDENT',14,3,'2019-05-06',NULL,'2019\\05\\MSkioskAntiMalpracticeApp__22__RIC Written Brief__DLW SC Syndicate 1__STUDENT__SHOP LS 57 LEGICCO SHOPPING PLAZA  Copy__1557165004560.docx',NULL,'2019-05-06 16:50:08','2019-05-06 16:50:08'),(2,NULL,'MSkioskAntiMalpracticeApp__22__RIC Written Brief__DLW, SC Syndicate 1__STUDENT',14,3,'2019-05-06',NULL,'2019\\05\\MSkioskAntiMalpracticeApp__22__RIC Written Brief__DLW SC Syndicate 1__STUDENT__Programme of Events NAF DAY 2019 Lecture and Gala Night  Copy__1557165004560.docx',NULL,'2019-05-06 16:50:10','2019-05-06 16:50:10'),(3,NULL,'MSkioskAntiMalpracticeApp__22__RIC Written Brief__DLW, SC Syndicate 1__STUDENT',14,3,'2019-05-07',NULL,'2019\\05\\MSkioskAntiMalpracticeApp__22__RIC Written Brief__DLW SC Syndicate 1__STUDENT__SHOP LS 57 LEGICCO SHOPPING PLAZA  Copy__1557269790878.docx',NULL,'2019-05-07 21:56:33','2019-05-07 21:56:33'),(4,NULL,'MSkioskAntiMalpracticeApp__22__RIC Written Brief__DLW, SC Syndicate 1__STUDENT',14,3,'2019-05-07',NULL,'2019\\05\\MSkioskAntiMalpracticeApp__22__RIC Written Brief__DLW SC Syndicate 1__STUDENT__Programme of Events NAF DAY 2019 Lecture and Gala Night  Copy__1557269790878.docx',NULL,'2019-05-07 21:56:35','2019-05-07 21:56:35'),(5,NULL,'MSkioskAntiMalpracticeApp__25__RIC Service Writing 1__DLW, SC Syndicate 1__b5d9dabf59c238ea6b81eafda3023b15',14,3,'2019-05-08',NULL,'2019\\05\\MSkioskAntiMalpracticeApp__25__RIC Service Writing 1__DLW SC Syndicate 1__b5d9dabf59c238ea6b81eafda3023b15__MAIN_DOCUS__1557284880000.docx',NULL,'2019-05-08 02:10:03','2019-05-08 02:10:03'),(6,NULL,'MSkioskAntiMalpracticeApp__25__RIC Service Writing 1__DLW, SC Syndicate 1__b5d9dabf59c238ea6b81eafda3023b15',14,3,'2019-05-08',NULL,'2019\\05\\MSkioskAntiMalpracticeApp__25__RIC Service Writing 1__DLW SC Syndicate 1__b5d9dabf59c238ea6b81eafda3023b15__ANNEX B__1557284880000.docx',5,'2019-05-08 02:10:04','2019-05-08 02:10:04'),(7,NULL,'MSkioskAntiMalpracticeApp__25__RIC Service Writing 1__DLW, SC Syndicate 1__b5d9dabf59c238ea6b81eafda3023b15',14,3,'2019-05-08',NULL,'2019\\05\\MSkioskAntiMalpracticeApp__25__RIC Service Writing 1__DLW SC Syndicate 1__b5d9dabf59c238ea6b81eafda3023b15__ANNEX A__1557284880000.docx',5,'2019-05-08 02:10:04','2019-05-08 02:10:04'),(23,NULL,NULL,14,5,NULL,NULL,'2019\\05\\Sample_Test Setting - 1.docx',NULL,'2019-05-15 15:58:23','2019-05-15 15:58:23'),(24,NULL,NULL,14,5,NULL,NULL,'2019\\05\\Sample_Test Setting - 2.docx',NULL,'2019-05-15 15:58:24','2019-05-15 15:58:24');
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `documentaccess`
--

LOCK TABLES `documentaccess` WRITE;
/*!40000 ALTER TABLE `documentaccess` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentaccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (1,'Male','2019-04-20 14:39:57','2019-04-20 14:39:57'),(2,'Female','2019-04-20 14:39:57','2019-04-20 14:39:57');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,1,19,3,'First Test Message dated: Sat May 11 15:25:12 WAT 2019','This is the content of the first test message dated: Sat May 11 15:25:11 WAT 2019',NULL,6,'2019-05-11 13:25:13','2019-05-11 13:25:13'),(2,1,19,3,'First Test Message dated: Sat May 11 15:42:02 WAT 2019','This is the content of the first test message dated: Sat May 11 15:42:02 WAT 2019',NULL,6,'2019-05-11 13:42:03','2019-05-11 13:42:03'),(3,1,19,3,'First Test Message dated: Sat May 11 22:15:21 WAT 2019','This is the content of the first test message dated: Sat May 11 22:15:21 WAT 2019',NULL,6,'2019-05-11 20:15:25','2019-05-11 20:15:25'),(4,1,19,3,'First Test Message dated: Sat May 11 22:24:42 WAT 2019','This is the content of the first test message dated: Sat May 11 22:24:42 WAT 2019',NULL,6,'2019-05-11 20:24:49','2019-05-11 20:24:49'),(5,1,19,3,'First Test Message dated: Sat May 11 22:35:53 WAT 2019','This is the content of the first test message dated: Sat May 11 22:35:53 WAT 2019',NULL,6,'2019-05-11 20:35:57','2019-05-11 20:35:57'),(6,1,19,3,'First Test Message dated: Sat May 11 22:40:49 WAT 2019','This is the content of the first test message dated: Sat May 11 22:40:49 WAT 2019',NULL,6,'2019-05-11 20:40:52','2019-05-11 20:40:52'),(7,1,19,3,'First Test Message dated: Sat May 11 22:42:52 WAT 2019','This is the content of the first test message dated: Sat May 11 22:42:52 WAT 2019',NULL,7,'2019-05-11 20:43:00','2019-05-11 20:43:00'),(8,1,19,5,'Mark these scripts bagger','<p>MSkioskAntiMalpracticeApp__25__RIC Service Writing 1__DLW SC Syndicate 1__b5d9dabf59c238ea6b81eafda3023b15__ANNEX A__1557284880000.docx</p><p>MSkioskAntiMalpracticeApp__25__RIC Service Writing 1__DLW SC Syndicate 1__b5d9dabf59c238ea6b81eafda3023b15__ANNEX B__1557284880000.docx</p><p>MSkioskAntiMalpracticeApp__25__RIC Service Writing 1__DLW SC Syndicate 1__b5d9dabf59c238ea6b81eafda3023b15__MAIN_DOCUS__1557284880000.docx</p><p><small>Message created on: Sun May 12 16:57:48 WAT 2019</small></p>',NULL,7,'2019-05-12 14:58:04','2019-05-12 14:58:04');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `messageaccess`
--

LOCK TABLES `messageaccess` WRITE;
/*!40000 ALTER TABLE `messageaccess` DISABLE KEYS */;
/*!40000 ALTER TABLE `messageaccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `messageattachment`
--

LOCK TABLES `messageattachment` WRITE;
/*!40000 ALTER TABLE `messageattachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `messageattachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `messagerecipient`
--

LOCK TABLES `messagerecipient` WRITE;
/*!40000 ALTER TABLE `messagerecipient` DISABLE KEYS */;
INSERT INTO `messagerecipient` VALUES (8,2),(7,3);
/*!40000 ALTER TABLE `messagerecipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `messagestatus`
--

LOCK TABLES `messagestatus` WRITE;
/*!40000 ALTER TABLE `messagestatus` DISABLE KEYS */;
INSERT INTO `messagestatus` VALUES (1,'Unsent','2019-04-20 14:40:00','2019-04-20 14:40:00'),(2,'Send Failed','2019-04-20 14:40:00','2019-04-20 14:40:00'),(3,'Partially Sent','2019-04-20 14:40:00','2019-04-20 14:40:00'),(4,'Sent','2019-04-20 14:40:00','2019-04-20 14:40:00'),(5,'Delivery Status Unknown','2019-04-20 14:40:00','2019-04-20 14:40:00'),(6,'Partially Delivered','2019-04-20 14:40:00','2019-05-10 20:23:01'),(7,'Delivered','2019-04-20 14:40:00','2019-05-10 20:23:01'),(8,'Read','2019-05-10 20:23:19','2019-05-10 20:23:19');
/*!40000 ALTER TABLE `messagestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `messagetype`
--

LOCK TABLES `messagetype` WRITE;
/*!40000 ALTER TABLE `messagetype` DISABLE KEYS */;
INSERT INTO `messagetype` VALUES (1,'Generic','2019-04-20 14:39:57','2019-05-09 10:19:06'),(2,'Email','2019-04-20 14:39:57','2019-05-09 10:19:06'),(3,'Chat','2019-04-20 14:39:57','2019-05-09 10:19:06'),(4,'Comment','2019-05-09 10:19:35','2019-05-09 10:19:35');
/*!40000 ALTER TABLE `messagetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mimetype`
--

LOCK TABLES `mimetype` WRITE;
/*!40000 ALTER TABLE `mimetype` DISABLE KEYS */;
INSERT INTO `mimetype` VALUES (1,'audio/aac','aac','AAC audio','2019-04-20 14:39:57','2019-04-20 14:39:57'),(2,'application/x-abiword','abw','AbiWord document','2019-04-20 14:39:57','2019-04-20 14:39:57'),(3,'application/x-freearc','arc','Archive document (multiple files embedded)','2019-04-20 14:39:57','2019-04-20 14:39:57'),(4,'video/x-msvideo','avi','AVI: Audio Video Interleave','2019-04-20 14:39:58','2019-04-20 14:39:58'),(5,'application/vnd.amazon.ebook','azw','Amazon Kindle eBook format','2019-04-20 14:39:58','2019-04-20 14:39:58'),(6,'application/octet-stream','bin','Any kind of binary data','2019-04-20 14:39:58','2019-04-20 14:39:58'),(7,'image/bmp','.bmp','Windows OS/2 Bitmap Graphics','2019-04-20 14:39:58','2019-04-20 14:39:58'),(8,'application/x-bzip','bz','BZip archive','2019-04-20 14:39:58','2019-04-20 14:39:58'),(9,'application/x-bzip2','bz2','BZip2 archive','2019-04-20 14:39:58','2019-04-20 14:39:58'),(10,'application/x-csh','csh','C-Shell script','2019-04-20 14:39:58','2019-04-20 14:39:58'),(11,'text/css','css','Cascading Style Sheets (CSS)','2019-04-20 14:39:58','2019-04-20 14:39:58'),(12,'text/csv','csv','Comma-separated values (CSV)','2019-04-20 14:39:58','2019-04-20 14:39:58'),(13,'application/msword','doc','Microsoft Word','2019-04-20 14:39:58','2019-04-20 14:39:58'),(14,'application/vnd.openxmlformats-officedocument.wordprocessingml.document','docx','Microsoft Word (OpenXML)','2019-04-20 14:39:58','2019-04-20 14:39:58'),(15,'application/vnd.ms-fontobject','eot','MS Embedded OpenType fonts','2019-04-20 14:39:58','2019-04-20 14:39:58'),(16,'application/epub+zip','epub','Electronic publication (EPUB)','2019-04-20 14:39:58','2019-04-20 14:39:58'),(17,'image/gif','gif','Graphics Interchange Format (GIF)','2019-04-20 14:39:58','2019-04-20 14:39:58'),(18,'text/html','htm','HyperText Markup Language (HTML)','2019-04-20 14:39:58','2019-04-20 14:39:58'),(19,'text/html','html','HyperText Markup Language (HTML)','2019-04-20 14:39:58','2019-04-20 14:39:58'),(20,'image/vnd.microsoft.icon','ico','Icon format','2019-04-20 14:39:58','2019-04-20 14:39:58'),(21,'text/calendar','ics','iCalendar format','2019-04-20 14:39:58','2019-04-20 14:39:58'),(22,'application/java-archive','jar','Java Archive (JAR)','2019-04-20 14:39:58','2019-04-20 14:39:58'),(23,'image/jpeg','jpeg','JPEG images','2019-04-20 14:39:58','2019-04-20 14:39:58'),(24,'image/jpeg','jpg','JPEG images','2019-04-20 14:39:58','2019-04-20 14:39:58'),(25,'text/javascript','js','JavaScript','2019-04-20 14:39:58','2019-04-20 14:39:58'),(26,'application/json','json','JSON format','2019-04-20 14:39:58','2019-04-20 14:39:58'),(27,'application/ld+json','jsonld','JSON-LD format','2019-04-20 14:39:58','2019-04-20 14:39:58'),(28,'audio/midi  audio/x-midi','mid','Musical Instrument Digital Interface (MIDI)','2019-04-20 14:39:58','2019-04-20 14:39:58'),(29,'audio/midi  audio/x-midi','midi','Musical Instrument Digital Interface (MIDI)','2019-04-20 14:39:58','2019-04-20 14:39:58'),(30,'text/javascript','mjs','JavaScript module','2019-04-20 14:39:59','2019-04-20 14:39:59'),(31,'audio/mpeg','mp3','MP3 audio','2019-04-20 14:39:59','2019-04-20 14:39:59'),(32,'video/mpeg','mpeg','MPEG Video','2019-04-20 14:39:59','2019-04-20 14:39:59'),(33,'application/vnd.apple.installer+xml','mpkg','Apple Installer Package','2019-04-20 14:39:59','2019-04-20 14:39:59'),(34,'application/vnd.oasis.opendocument.presentation','odp','OpenDocument presentation document','2019-04-20 14:39:59','2019-04-20 14:39:59'),(35,'application/vnd.oasis.opendocument.spreadsheet','ods','OpenDocument spreadsheet document','2019-04-20 14:39:59','2019-04-20 14:39:59'),(36,'application/vnd.oasis.opendocument.text','odt','OpenDocument text document','2019-04-20 14:39:59','2019-04-20 14:39:59'),(37,'audio/ogg','oga','OGG audio','2019-04-20 14:39:59','2019-04-20 14:39:59'),(38,'video/ogg','ogv','OGG video','2019-04-20 14:39:59','2019-04-20 14:39:59'),(39,'application/ogg','ogx','OGG','2019-04-20 14:39:59','2019-04-20 14:39:59'),(40,'font/otf','otf','OpenType font','2019-04-20 14:39:59','2019-04-20 14:39:59'),(41,'image/png','png','Portable Network Graphics','2019-04-20 14:39:59','2019-04-20 14:39:59'),(42,'application/pdf','pdf','Adobe Portable Document Format (PDF)','2019-04-20 14:39:59','2019-04-20 14:39:59'),(43,'application/vnd.ms-powerpoint','ppt','Microsoft PowerPoint','2019-04-20 14:39:59','2019-04-20 14:39:59'),(44,'application/vnd.openxmlformats-officedocument.presentationml.presentation','pptx','Microsoft PowerPoint (OpenXML)','2019-04-20 14:39:59','2019-04-20 14:39:59'),(45,'application/x-rar-compressed','rar','RAR archive','2019-04-20 14:39:59','2019-04-20 14:39:59'),(46,'application/rtf','rtf','Rich Text Format (RTF)','2019-04-20 14:39:59','2019-04-20 14:39:59'),(47,'application/x-sh','sh','Bourne shell script','2019-04-20 14:39:59','2019-04-20 14:39:59'),(48,'image/svg+xml','svg','Scalable Vector Graphics (SVG)','2019-04-20 14:39:59','2019-04-20 14:39:59'),(49,'application/x-shockwave-flash','swf','Small web format (SWF) or Adobe Flash document','2019-04-20 14:39:59','2019-04-20 14:39:59'),(50,'application/x-tar','tar','Tape Archive (TAR)','2019-04-20 14:39:59','2019-04-20 14:39:59'),(51,'image/tiff','tif','Tagged Image File Format (TIFF)','2019-04-20 14:39:59','2019-04-20 14:39:59'),(52,'image/tiff','tiff','Tagged Image File Format (TIFF)','2019-04-20 14:39:59','2019-04-20 14:39:59'),(53,'font/ttf','ttf','TrueType Font','2019-04-20 14:39:59','2019-04-20 14:39:59'),(54,'text/plain','txt','Text, (generally ASCII or ISO 8859- n )','2019-04-20 14:39:59','2019-04-20 14:39:59'),(55,'application/vnd.visio','vsd','Microsoft Visio','2019-04-20 14:39:59','2019-04-20 14:39:59'),(56,'audio/wav','wav','Waveform Audio Format','2019-04-20 14:39:59','2019-04-20 14:39:59'),(57,'audio/webm','weba','WEBM audio','2019-04-20 14:40:00','2019-04-20 14:40:00'),(58,'video/webm','webm','WEBM video','2019-04-20 14:40:00','2019-04-20 14:40:00'),(59,'image/webp','webp','WEBP image','2019-04-20 14:40:00','2019-04-20 14:40:00'),(60,'font/woff','woff','Web Open Font Format (WOFF)','2019-04-20 14:40:00','2019-04-20 14:40:00'),(61,'font/woff2','woff2','Web Open Font Format (WOFF)','2019-04-20 14:40:00','2019-04-20 14:40:00'),(62,'application/xhtml+xml','xhtml','XHTML','2019-04-20 14:40:00','2019-04-20 14:40:00'),(63,'application/vnd.ms-excel','xls','Microsoft Excel','2019-04-20 14:40:00','2019-04-20 14:40:00'),(64,'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet','xlsx','Microsoft Excel (OpenXML)','2019-04-20 14:40:00','2019-04-20 14:40:00'),(65,'text/xml','xml','Extensible Markup Language (XML) - If readable from casual users (RFC 3023, section 3)','2019-04-20 14:40:00','2019-04-20 14:40:00'),(66,'application/xml','xml','Extensible Markup Language (XML) - If not readable from casual users (RFC 3023, section 3)','2019-04-20 14:40:00','2019-04-20 14:40:00'),(67,'application/vnd.mozilla.xul+xml','xul','XUL','2019-04-20 14:40:00','2019-04-20 14:40:00'),(68,'application/zip','zip','ZIP archive','2019-04-20 14:40:00','2019-04-20 14:40:00'),(69,'video/3gpp','3gp','3GPP video container','2019-04-20 14:40:00','2019-04-20 14:40:00'),(70,'audio/3gpp','3gp','3GPP audio container','2019-04-20 14:40:00','2019-04-20 14:40:00'),(71,'video/3gpp2','3g2','3GPP2 video container','2019-04-20 14:40:00','2019-04-20 14:40:00'),(72,'audio/3gpp2','3g2','3GPP2 audio container','2019-04-20 14:40:00','2019-04-20 14:40:00'),(73,'application/x-7z-compressed','7z','7-zip archive','2019-04-20 14:40:00','2019-04-20 14:40:00');
/*!40000 ALTER TABLE `mimetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'USER','Access for user who is logged in','2019-04-20 15:09:51','2019-04-20 15:09:51'),(2,'SYSTEM','Super role, all permissions','2019-04-20 15:09:51','2019-04-20 15:09:51'),(3,'IT-ADMIN','Access for  IT-Admin','2019-04-20 15:09:51','2019-04-20 15:09:51'),(4,'DIRECTOR','Access for  academic directors','2019-04-20 15:09:51','2019-04-20 15:09:51'),(5,'CI-SC','Access for Chief Instructor - Senior Course','2019-04-20 15:09:51','2019-04-20 15:09:51'),(6,'CI-JC','Access for Chief Instructor - Junior Course','2019-04-20 15:09:51','2019-04-20 15:09:51'),(7,'TC-SC','Access for Term Coordinator - Senior Course','2019-04-20 15:09:52','2019-04-20 15:09:52'),(8,'TC-JC','Access for Term Coordinator - Junior Course','2019-04-20 15:09:52','2019-04-20 15:09:52'),(9,'DS-SC','Access for Directing Staff - Senior Course','2019-04-20 15:09:52','2019-04-20 15:09:52'),(10,'DS-JC','Access for Directing Staff - Junior Course','2019-04-20 15:09:52','2019-04-20 15:09:52'),(11,'STUDENT-SC','Access for Student - Senior Course','2019-04-20 15:09:52','2019-04-20 15:09:52'),(12,'STUDENT-JC','Access for Student - Junior Course','2019-04-20 15:09:52','2019-04-20 15:09:52');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `rolepermission`
--

LOCK TABLES `rolepermission` WRITE;
/*!40000 ALTER TABLE `rolepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `rolepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (2,'RIC International Relations',NULL,'2019-04-24 22:00:00',120,NULL,'2019-04-20 15:01:33','2019-04-21 19:35:03'),(3,'RIC Service Writing 1',NULL,'2019-04-30 22:00:00',120,NULL,'2019-05-01 14:58:40','2019-05-01 14:58:40'),(4,'RIC International Relations 1',NULL,'2019-05-01 15:45:00',120,NULL,'2019-05-01 15:11:37','2019-05-01 15:11:37'),(5,'RIC International Relations 1',NULL,'2019-05-01 16:00:00',120,NULL,'2019-05-01 15:30:21','2019-05-01 15:30:21'),(6,'RIC International Relations 1',NULL,'2019-05-01 16:30:00',120,NULL,'2019-05-01 15:53:40','2019-05-01 15:53:40'),(7,'RIC International Relations 2',NULL,'2019-05-01 17:55:00',120,NULL,'2019-05-01 16:26:11','2019-05-01 16:26:11'),(8,'RIC International Relations 3',NULL,'2019-05-01 17:55:00',120,NULL,'2019-05-01 17:22:43','2019-05-01 17:22:43'),(9,'RIC International Relations 4',NULL,'2019-05-01 18:30:00',120,NULL,'2019-05-01 18:03:33','2019-05-01 18:03:33'),(10,'RIC International Relations 5',NULL,'2019-05-01 21:30:00',120,NULL,'2019-05-01 20:05:39','2019-05-01 20:05:39'),(11,'RIC International Relations 6',NULL,'2019-05-01 21:30:00',120,NULL,'2019-05-01 20:11:31','2019-05-01 20:11:31'),(12,'RIC International Relations 7',NULL,'2019-05-01 22:30:00',120,NULL,'2019-05-01 20:55:36','2019-05-01 20:55:36'),(13,'teSt 1',NULL,'2019-05-02 12:00:00',120,NULL,'2019-05-02 11:33:50','2019-05-02 11:33:50'),(14,'TeSt 2',NULL,'2019-05-02 16:00:00',120,NULL,'2019-05-02 15:36:10','2019-05-02 15:36:10'),(15,'RIC 1',NULL,'2019-05-02 18:30:00',120,NULL,'2019-05-02 18:18:42','2019-05-02 18:18:42'),(16,'RIC 2',NULL,'2019-05-02 19:15:00',120,NULL,'2019-05-02 19:03:29','2019-05-02 19:03:29'),(17,'RIC 3',NULL,'2019-05-02 20:30:00',10,NULL,'2019-05-02 20:12:18','2019-05-02 20:12:18'),(18,'RIC 4',NULL,'2019-05-02 22:00:00',7,NULL,'2019-05-03 09:07:47','2019-05-03 09:07:47'),(19,'RIC 5',NULL,'2019-05-03 17:50:00',7,NULL,'2019-05-03 09:41:01','2019-05-03 17:42:42'),(20,'RIC 6',NULL,'2019-05-03 22:00:00',7,NULL,'2019-05-03 21:41:58','2019-05-03 21:41:58'),(21,'RIC 7',NULL,'2019-05-04 00:48:00',3,NULL,'2019-05-04 00:45:46','2019-05-04 00:45:46'),(22,'RIC Written Brief',NULL,'2019-05-04 03:53:00',2,NULL,'2019-05-04 03:51:12','2019-05-04 03:51:12'),(23,'RIC 8',NULL,'2019-05-04 23:30:00',4,NULL,'2019-05-04 23:07:35','2019-05-04 23:22:14'),(24,'RIC Written Brief 2',NULL,'2019-05-07 23:03:00',1,NULL,'2019-05-07 07:59:22','2019-05-07 23:01:46'),(25,'RIC Service Writing 1',NULL,'2019-05-08 02:08:00',2,NULL,'2019-05-08 02:05:41','2019-05-08 02:05:41'),(26,'RIC Service Writing 2',NULL,'2019-05-13 12:00:00',3,NULL,'2019-05-13 08:40:29','2019-05-13 08:40:29'),(27,'RIC Written Brief 3',NULL,'2019-05-13 13:45:00',4,NULL,'2019-05-13 12:56:41','2019-05-13 12:56:41'),(28,'RIC International Relations 3',NULL,'2019-05-16 09:30:00',4,NULL,'2019-05-13 13:06:29','2019-05-15 22:18:19');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `testcoordinator`
--

LOCK TABLES `testcoordinator` WRITE;
/*!40000 ALTER TABLE `testcoordinator` DISABLE KEYS */;
INSERT INTO `testcoordinator` VALUES (2,2);
/*!40000 ALTER TABLE `testcoordinator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `testdocument`
--

LOCK TABLES `testdocument` WRITE;
/*!40000 ALTER TABLE `testdocument` DISABLE KEYS */;
INSERT INTO `testdocument` VALUES (1,22,1,NULL),(2,22,2,NULL),(3,22,3,NULL),(4,22,4,NULL),(5,25,5,NULL),(6,25,6,NULL),(7,25,7,NULL);
/*!40000 ALTER TABLE `testdocument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `testgroup`
--

LOCK TABLES `testgroup` WRITE;
/*!40000 ALTER TABLE `testgroup` DISABLE KEYS */;
INSERT INTO `testgroup` VALUES (26,10),(27,10),(28,10),(2,16),(3,16),(4,16),(5,16),(6,16),(7,16),(8,16),(9,16),(10,16),(11,16),(12,16),(13,16),(14,16),(15,16),(16,16),(17,16),(18,16),(19,16),(20,16),(21,16),(22,16),(23,16),(24,16),(25,16),(2,17),(3,17),(4,17),(5,17),(6,17),(7,17),(8,17),(9,17),(10,17),(11,17),(12,17),(13,17),(14,17),(15,17),(16,17),(17,17),(18,17),(19,17),(20,17),(21,17),(22,17),(23,17),(24,17),(25,17);
/*!40000 ALTER TABLE `testgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `testsetting`
--

LOCK TABLES `testsetting` WRITE;
/*!40000 ALTER TABLE `testsetting` DISABLE KEYS */;
INSERT INTO `testsetting` VALUES (14,28,23),(15,28,24);
/*!40000 ALTER TABLE `testsetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `unit`
--

LOCK TABLES `unit` WRITE;
/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
INSERT INTO `unit` VALUES (1,'AFCSC HQ','Armed Forces Command and Staff College Headquarters',NULL,'2019-04-20 15:09:52','2019-04-20 15:09:52'),(2,'COORD','Coordination Branch',1,'2019-04-20 15:09:52','2019-04-20 15:09:52'),(3,'ADMIN','Administraction Branch',1,'2019-04-20 15:09:52','2019-04-20 15:09:52'),(4,'LOG','Logistics Branch',1,'2019-04-20 15:09:52','2019-04-20 15:09:52'),(5,'FIN','Finance Branch',1,'2019-04-20 15:09:52','2019-04-20 15:09:52'),(6,'DJS','Department of Joint Studies',1,'2019-04-20 15:09:52','2019-04-20 15:09:52'),(7,'DLW','Department of Land Warfare',1,'2019-04-20 15:09:52','2019-04-20 15:09:52'),(8,'DMW','Department of Maritime Warfare',1,'2019-04-20 15:09:52','2019-04-20 15:09:52'),(9,'DAW','Department of Air Warfare',1,'2019-04-20 15:09:52','2019-04-20 15:09:52'),(10,'DLW - SC','Senior Course - Department of Land Warfare',7,'2019-04-20 15:09:52','2019-04-20 15:09:52'),(11,'DLW - JC','Junior Course - Department of Land Warfare',7,'2019-04-20 15:09:52','2019-04-20 15:09:52'),(12,'DMW - SC','Senior Course - Department of Maritime Warfare',8,'2019-04-20 15:09:52','2019-04-20 15:09:52'),(13,'DMW - JC','Junior Course - Department of Maritime Warfare',8,'2019-04-20 15:09:52','2019-04-20 15:09:52'),(14,'DAW - SC','Senior Course - Department of Air Warfare',9,'2019-04-20 15:09:52','2019-04-20 15:09:52'),(15,'DAW - JC','Junior Course - Department of Air Warfare',9,'2019-04-20 15:09:52','2019-04-20 15:09:52'),(16,'DLW, SC Syndicate 1','Syndicate 1, Senior Course - Department of Land Warfare',10,'2019-04-20 15:09:52','2019-04-20 15:09:52'),(17,'DLW, SC Syndicate 2','Syndicate 2, Senior Course - Department of Land Warfare',10,'2019-04-20 15:09:53','2019-04-20 15:09:53');
/*!40000 ALTER TABLE `unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'ROOT',NULL,'$2a$10$K1qQmOwvLSCpOygO66b0Ne8dJvhJIvCeq0N/g26iWsUPnB9aZ8vWm',2,1,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,'2019-04-20 15:09:53','2019-04-20 15:09:53'),(2,'Kolo',NULL,'$2a$10$06FVzgqXuj6sPIjqjn4jCeASvoF.aDHPe19bpAMKea1YKUZ6.YPMW',2,10,6,1,NULL,NULL,NULL,NULL,NULL,NULL,'2019-04-20 14:18:18','2019-04-30 11:45:13'),(3,'STUDENT',NULL,'$2a$10$so5a7lchvhtIO8W2zxapP.8gAL7h8qeU7onZz90XyRO9K/SivmzKy',2,16,8,2,NULL,NULL,NULL,NULL,NULL,NULL,'2019-04-20 14:28:04','2019-04-30 11:46:40'),(4,'Jollof',NULL,'$2a$10$ApwYcB35gf3nGi0Kpxtv6.rRP1Ic/t7L6btJmAWDmtmd8PaxQIJHy',2,10,8,1,NULL,NULL,NULL,NULL,NULL,NULL,'2019-05-12 10:40:38','2019-05-12 11:14:26'),(5,'KanweJollof',NULL,'$2a$10$elAzptZJaRJpfdv.0vEWLezyvIpLTF9wZbJd0UZipEH55hzdKEKRK',2,10,7,1,NULL,NULL,NULL,NULL,NULL,NULL,'2019-05-12 10:41:18','2019-05-12 11:14:57');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `userrole`
--

LOCK TABLES `userrole` WRITE;
/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
INSERT INTO `userrole` VALUES (1,2),(2,7),(5,9),(3,11),(4,11);
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `userstatus`
--

LOCK TABLES `userstatus` WRITE;
/*!40000 ALTER TABLE `userstatus` DISABLE KEYS */;
INSERT INTO `userstatus` VALUES (1,'Unactivated','2019-04-20 14:39:57','2019-04-20 14:39:57'),(2,'Activated','2019-04-20 14:39:57','2019-04-20 14:39:57'),(3,'Deactivated','2019-04-20 14:39:57','2019-04-20 14:39:57');
/*!40000 ALTER TABLE `userstatus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-16 20:16:30
