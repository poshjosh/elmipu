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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment` (
  `appointmentid` smallint(2) NOT NULL AUTO_INCREMENT,
  `appointmentname` varchar(128) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `parentappointment` smallint(2) DEFAULT NULL,
  `timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`appointmentid`),
  UNIQUE KEY `appointmentname` (`appointmentname`),
  KEY `parentappointment` (`parentappointment`),
  CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`parentappointment`) REFERENCES `appointment` (`appointmentid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `courseid` int(8) NOT NULL AUTO_INCREMENT,
  `coursename` varchar(128) NOT NULL,
  `description` varchar(512) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date DEFAULT NULL,
  `timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`courseid`),
  UNIQUE KEY `coursename` (`coursename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document` (
  `documentid` int(8) NOT NULL AUTO_INCREMENT,
  `documentname` varchar(128) DEFAULT NULL,
  `subject` varchar(512) DEFAULT NULL,
  `mimetype` int(8) NOT NULL,
  `author` int(8) NOT NULL DEFAULT '1',
  `datesigned` date DEFAULT NULL,
  `referencenumber` varchar(256) DEFAULT NULL,
  `location` varchar(512) NOT NULL,
  `parentdocument` int(8) DEFAULT NULL,
  `timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`documentid`),
  UNIQUE KEY `location` (`location`),
  KEY `mimetype` (`mimetype`),
  KEY `author` (`author`),
  KEY `parentdocument` (`parentdocument`),
  CONSTRAINT `document_ibfk_1` FOREIGN KEY (`mimetype`) REFERENCES `mimetype` (`mimetypeid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `document_ibfk_2` FOREIGN KEY (`author`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `document_ibfk_3` FOREIGN KEY (`parentdocument`) REFERENCES `document` (`documentid`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `documentaccess`
--

DROP TABLE IF EXISTS `documentaccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentaccess` (
  `documentaccessid` int(8) NOT NULL AUTO_INCREMENT,
  `documentaccessinguser` int(8) DEFAULT NULL,
  `accesseddocument` int(8) NOT NULL,
  `accesstime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`documentaccessid`),
  KEY `documentaccessinguser` (`documentaccessinguser`),
  KEY `accesseddocument` (`accesseddocument`),
  CONSTRAINT `documentaccess_ibfk_1` FOREIGN KEY (`documentaccessinguser`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `documentaccess_ibfk_2` FOREIGN KEY (`accesseddocument`) REFERENCES `document` (`documentid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gender` (
  `genderid` smallint(2) NOT NULL AUTO_INCREMENT,
  `gendername` varchar(32) NOT NULL,
  `timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`genderid`),
  UNIQUE KEY `gendername` (`gendername`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `messageid` int(8) NOT NULL AUTO_INCREMENT,
  `type` smallint(2) NOT NULL DEFAULT '1',
  `mimetype` int(8) NOT NULL DEFAULT '1',
  `sender` int(8) NOT NULL DEFAULT '1',
  `subject` varchar(512) DEFAULT NULL,
  `content` varchar(20480) DEFAULT NULL,
  `repliedto` int(8) DEFAULT NULL,
  `status` smallint(2) NOT NULL DEFAULT '1',
  `timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`messageid`),
  KEY `type` (`type`),
  KEY `mimetype` (`mimetype`),
  KEY `sender` (`sender`),
  KEY `repliedto` (`repliedto`),
  KEY `status` (`status`),
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`type`) REFERENCES `messagetype` (`messagetypeid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `message_ibfk_2` FOREIGN KEY (`mimetype`) REFERENCES `mimetype` (`mimetypeid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `message_ibfk_3` FOREIGN KEY (`sender`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `message_ibfk_4` FOREIGN KEY (`repliedto`) REFERENCES `message` (`messageid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `message_ibfk_5` FOREIGN KEY (`status`) REFERENCES `messagestatus` (`messagestatusid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `messageaccess`
--

DROP TABLE IF EXISTS `messageaccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messageaccess` (
  `messageaccessid` int(8) NOT NULL AUTO_INCREMENT,
  `messageaccessinguser` int(8) DEFAULT NULL,
  `accessedmessage` int(8) NOT NULL,
  `accesstime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`messageaccessid`),
  KEY `messageaccessinguser` (`messageaccessinguser`),
  KEY `accessedmessage` (`accessedmessage`),
  CONSTRAINT `messageaccess_ibfk_1` FOREIGN KEY (`messageaccessinguser`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messageaccess_ibfk_2` FOREIGN KEY (`accessedmessage`) REFERENCES `message` (`messageid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `messageattachment`
--

DROP TABLE IF EXISTS `messageattachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messageattachment` (
  `attachmentmessage` int(8) NOT NULL,
  `messageattachment` int(8) NOT NULL,
  PRIMARY KEY (`attachmentmessage`,`messageattachment`),
  KEY `messageattachment` (`messageattachment`),
  CONSTRAINT `messageattachment_ibfk_1` FOREIGN KEY (`attachmentmessage`) REFERENCES `message` (`messageid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messageattachment_ibfk_2` FOREIGN KEY (`messageattachment`) REFERENCES `document` (`documentid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `messagerecipient`
--

DROP TABLE IF EXISTS `messagerecipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messagerecipient` (
  `receivedmessage` int(8) NOT NULL,
  `recipient` int(8) NOT NULL,
  PRIMARY KEY (`receivedmessage`,`recipient`),
  KEY `recipient` (`recipient`),
  CONSTRAINT `messagerecipient_ibfk_1` FOREIGN KEY (`receivedmessage`) REFERENCES `message` (`messageid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messagerecipient_ibfk_2` FOREIGN KEY (`recipient`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `messagestatus`
--

DROP TABLE IF EXISTS `messagestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messagestatus` (
  `messagestatusid` smallint(2) NOT NULL AUTO_INCREMENT,
  `messagestatusname` varchar(32) NOT NULL,
  `timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`messagestatusid`),
  UNIQUE KEY `messagestatusname` (`messagestatusname`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `messagetype`
--

DROP TABLE IF EXISTS `messagetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messagetype` (
  `messagetypeid` smallint(2) NOT NULL AUTO_INCREMENT,
  `messagetypename` varchar(32) NOT NULL,
  `timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`messagetypeid`),
  UNIQUE KEY `messagetypename` (`messagetypename`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mimetype`
--

DROP TABLE IF EXISTS `mimetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mimetype` (
  `mimetypeid` int(8) NOT NULL AUTO_INCREMENT,
  `mimetypename` varchar(128) NOT NULL,
  `extension` varchar(8) NOT NULL,
  `description` varchar(128) NOT NULL,
  `timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mimetypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `permissionid` int(8) NOT NULL AUTO_INCREMENT,
  `permissionname` varchar(128) NOT NULL,
  `description` varchar(512) NOT NULL,
  `timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`permissionid`),
  UNIQUE KEY `permissionname` (`permissionname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `roleid` int(8) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(128) NOT NULL,
  `description` varchar(512) NOT NULL,
  `timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`roleid`),
  UNIQUE KEY `rolename` (`rolename`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rolepermission`
--

DROP TABLE IF EXISTS `rolepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rolepermission` (
  `role` int(8) NOT NULL,
  `permission` int(8) NOT NULL,
  PRIMARY KEY (`role`,`permission`),
  KEY `permission` (`permission`),
  CONSTRAINT `rolepermission_ibfk_1` FOREIGN KEY (`role`) REFERENCES `role` (`roleid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rolepermission_ibfk_2` FOREIGN KEY (`permission`) REFERENCES `permission` (`permissionid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `course` int(8) NOT NULL,
  `student` int(8) NOT NULL,
  PRIMARY KEY (`course`,`student`),
  KEY `student` (`student`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`course`) REFERENCES `course` (`courseid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student_ibfk_2` FOREIGN KEY (`student`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `testid` int(8) NOT NULL AUTO_INCREMENT,
  `testname` varchar(128) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `starttime` timestamp NULL DEFAULT NULL,
  `durationinminutes` int(8) DEFAULT NULL,
  `otherdetails` varchar(1024) DEFAULT NULL,
  `timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`testid`),
  UNIQUE KEY `unique_testname_starttime` (`testname`,`starttime`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testcoordinator`
--

DROP TABLE IF EXISTS `testcoordinator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testcoordinator` (
  `assignedtest` int(8) NOT NULL,
  `coordinator` int(8) NOT NULL,
  PRIMARY KEY (`assignedtest`,`coordinator`),
  KEY `coordinator` (`coordinator`),
  CONSTRAINT `testcoordinator_ibfk_1` FOREIGN KEY (`assignedtest`) REFERENCES `test` (`testid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `testcoordinator_ibfk_2` FOREIGN KEY (`coordinator`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testdocument`
--

DROP TABLE IF EXISTS `testdocument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testdocument` (
  `testdocumentid` int(8) NOT NULL AUTO_INCREMENT,
  `documenttest` int(8) NOT NULL,
  `testdocument` int(8) NOT NULL,
  `documentresult` int(8) DEFAULT NULL,
  PRIMARY KEY (`testdocumentid`),
  UNIQUE KEY `testdocument` (`testdocument`),
  KEY `documenttest` (`documenttest`),
  KEY `testdocument_ibfk_3` (`documentresult`),
  CONSTRAINT `testdocument_ibfk_1` FOREIGN KEY (`documenttest`) REFERENCES `test` (`testid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `testdocument_ibfk_2` FOREIGN KEY (`testdocument`) REFERENCES `document` (`documentid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `testdocument_ibfk_3` FOREIGN KEY (`documentresult`) REFERENCES `document` (`documentid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testgroup`
--

DROP TABLE IF EXISTS `testgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testgroup` (
  `grouptest` int(8) NOT NULL,
  `testgroup` smallint(2) NOT NULL,
  PRIMARY KEY (`grouptest`,`testgroup`),
  KEY `testgroup` (`testgroup`),
  CONSTRAINT `testgroup_ibfk_1` FOREIGN KEY (`grouptest`) REFERENCES `test` (`testid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `testgroup_ibfk_2` FOREIGN KEY (`testgroup`) REFERENCES `unit` (`unitid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testsetting`
--

DROP TABLE IF EXISTS `testsetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testsetting` (
  `testsettingid` int(8) NOT NULL AUTO_INCREMENT,
  `settingtest` int(8) NOT NULL,
  `testsetting` int(8) NOT NULL,
  PRIMARY KEY (`testsettingid`),
  UNIQUE KEY `testsetting` (`testsetting`),
  KEY `settingtest` (`settingtest`),
  CONSTRAINT `testsetting_ibfk_1` FOREIGN KEY (`settingtest`) REFERENCES `test` (`testid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `testsetting_ibfk_2` FOREIGN KEY (`testsetting`) REFERENCES `document` (`documentid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unit` (
  `unitid` smallint(2) NOT NULL AUTO_INCREMENT,
  `unitname` varchar(128) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `parentunit` smallint(2) DEFAULT NULL,
  `timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`unitid`),
  UNIQUE KEY `unitname` (`unitname`),
  KEY `parentunit` (`parentunit`),
  CONSTRAINT `unit_ibfk_1` FOREIGN KEY (`parentunit`) REFERENCES `unit` (`unitid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userid` int(8) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `emailaddress` varchar(128) DEFAULT NULL,
  `password` varchar(1024) NOT NULL,
  `userstatus` smallint(2) NOT NULL DEFAULT '1',
  `unit` smallint(2) NOT NULL,
  `appointment` smallint(2) DEFAULT NULL,
  `gender` smallint(2) DEFAULT NULL,
  `lastname` varchar(128) DEFAULT NULL,
  `firstname` varchar(128) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `phonenumber1` varchar(32) DEFAULT NULL,
  `phonenumber2` varchar(32) DEFAULT NULL,
  `profileimage` varchar(256) DEFAULT NULL,
  `timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `emailaddress` (`emailaddress`),
  KEY `userstatus` (`userstatus`),
  KEY `unit` (`unit`),
  KEY `appointment` (`appointment`),
  KEY `gender` (`gender`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`userstatus`) REFERENCES `userstatus` (`userstatusid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`unit`) REFERENCES `unit` (`unitid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_ibfk_3` FOREIGN KEY (`appointment`) REFERENCES `appointment` (`appointmentid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_ibfk_4` FOREIGN KEY (`gender`) REFERENCES `gender` (`genderid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userrole` (
  `user` int(8) NOT NULL,
  `role` int(8) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user`,`role`),
  KEY `role` (`role`),
  CONSTRAINT `userrole_ibfk_1` FOREIGN KEY (`user`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `userrole_ibfk_2` FOREIGN KEY (`role`) REFERENCES `role` (`roleid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `userstatus`
--

DROP TABLE IF EXISTS `userstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userstatus` (
  `userstatusid` smallint(2) NOT NULL AUTO_INCREMENT,
  `userstatusname` varchar(32) NOT NULL,
  `timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`userstatusid`),
  UNIQUE KEY `userstatusname` (`userstatusname`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-16 20:15:14
