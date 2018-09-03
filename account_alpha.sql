-- MySQL dump 10.13  Distrib 5.6.34, for FreeBSD9.3 (amd64)
--
-- Host: localhost    Database: account_alpha
-- ------------------------------------------------------
-- Server version	5.6.34

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) CHARACTER SET ascii NOT NULL DEFAULT '',
  `password` varchar(45) CHARACTER SET ascii NOT NULL DEFAULT '',
  `real_name` varchar(16) CHARACTER SET ascii DEFAULT '',
  `social_id` varchar(13) CHARACTER SET ascii NOT NULL DEFAULT '',
  `email` varchar(64) CHARACTER SET ascii NOT NULL DEFAULT '',
  `phone1` varchar(16) CHARACTER SET ascii DEFAULT NULL,
  `phone2` varchar(16) CHARACTER SET ascii DEFAULT NULL,
  `address` varchar(128) CHARACTER SET ascii DEFAULT NULL,
  `zipcode` varchar(7) CHARACTER SET ascii DEFAULT '',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `question1` varchar(48) CHARACTER SET ascii DEFAULT NULL,
  `answer1` varchar(48) CHARACTER SET ascii DEFAULT NULL,
  `question2` varchar(48) CHARACTER SET ascii DEFAULT NULL,
  `answer2` varchar(48) CHARACTER SET ascii DEFAULT NULL,
  `is_testor` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(8) CHARACTER SET ascii NOT NULL DEFAULT 'OK',
  `securitycode` varchar(192) CHARACTER SET ascii DEFAULT '',
  `newsletter` tinyint(1) DEFAULT '0',
  `empire` tinyint(4) NOT NULL DEFAULT '0',
  `name_checked` tinyint(1) NOT NULL DEFAULT '0',
  `availDt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mileage` int(11) NOT NULL DEFAULT '0',
  `cash` int(11) NOT NULL DEFAULT '0',
  `gold_expire` datetime NOT NULL DEFAULT '2020-12-30 17:42:26',
  `silver_expire` datetime NOT NULL DEFAULT '2020-12-30 17:42:26',
  `safebox_expire` datetime NOT NULL DEFAULT '2020-12-30 17:42:26',
  `autoloot_expire` datetime NOT NULL DEFAULT '2020-12-30 17:42:26',
  `fish_mind_expire` datetime NOT NULL DEFAULT '2020-12-30 17:42:26',
  `marriage_fast_expire` datetime NOT NULL DEFAULT '2020-12-30 17:42:26',
  `money_drop_rate_expire` datetime NOT NULL DEFAULT '2020-12-30 17:42:26',
  `ttl_cash` int(11) NOT NULL DEFAULT '0',
  `ttl_mileage` int(11) NOT NULL DEFAULT '0',
  `channel_company` varchar(30) CHARACTER SET ascii NOT NULL DEFAULT '',
  `last_play` datetime DEFAULT NULL,
  `coins` int(11) NOT NULL DEFAULT '0',
  `web_admin` int(1) NOT NULL DEFAULT '0',
  `web_ip` varchar(15) CHARACTER SET ascii DEFAULT NULL,
  `web_aktiviert` varchar(32) CHARACTER SET ascii DEFAULT NULL,
  `rang` tinyint(4) DEFAULT '1',
  `last_vote` text CHARACTER SET big5,
  `vote` int(11) DEFAULT '0',
  `ip` varchar(20) CHARACTER SET big5 DEFAULT NULL,
  `active` varchar(15) CHARACTER SET big5 DEFAULT NULL,
  `motif_ban` varchar(150) CHARACTER SET big5 DEFAULT NULL,
  `ticket` int(11) DEFAULT '0',
  `ip2` varchar(20) CHARACTER SET big5 DEFAULT NULL,
  `last_vote2` text CHARACTER SET big5,
  `ip3` varchar(20) CHARACTER SET big5 DEFAULT NULL,
  `last_vote3` text CHARACTER SET big5,
  `ip4` varchar(20) CHARACTER SET big5 DEFAULT NULL,
  `last_vote4` text CHARACTER SET big5,
  `connect` int(11) DEFAULT '0',
  `mac` text,
  `source` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`),
  KEY `social_id` (`social_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1337 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'centos','*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9','','1234567','',NULL,NULL,NULL,'','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,0,'OK','',0,0,0,'0000-00-00 00:00:00',50297,662993,'2020-12-30 17:42:26','2020-12-30 17:42:26','2020-12-30 17:42:26','2020-12-30 17:42:26','2020-12-30 17:42:26','2020-12-30 17:42:26','2020-12-30 17:42:26',0,0,'','2018-09-02 17:39:14',0,0,'','',4,'16-12-02 00:52:38',9,'127.0.0.1','','',0,'','16-12-02 00:53:26','','  ',' ',' ',0,'0ee9fd4eb03f9d87b3dc4232a9edc679',NULL);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_email`
--

DROP TABLE IF EXISTS `account_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `compteID` int(11) DEFAULT '0',
  `titreEmail` text,
  `texteEmail` text,
  `statutEmail` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_email`
--

LOCK TABLES `account_email` WRITE;
/*!40000 ALTER TABLE `account_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL DEFAULT '0',
  `admin` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ban_log`
--

DROP TABLE IF EXISTS `ban_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ban_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned NOT NULL,
  `account_id` int(10) unsigned NOT NULL,
  `zeitpunkt` datetime NOT NULL,
  `grund` varchar(200) NOT NULL,
  `typ` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ban_log`
--

LOCK TABLES `ban_log` WRITE;
/*!40000 ALTER TABLE `ban_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ban_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block_exception`
--

DROP TABLE IF EXISTS `block_exception`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_exception` (
  `login` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_exception`
--

LOCK TABLES `block_exception` WRITE;
/*!40000 ALTER TABLE `block_exception` DISABLE KEYS */;
/*!40000 ALTER TABLE `block_exception` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gametime`
--

DROP TABLE IF EXISTS `gametime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gametime` (
  `UserID` varchar(50) NOT NULL DEFAULT '',
  `paymenttype` tinyint(2) NOT NULL DEFAULT '1',
  `LimitTime` int(11) DEFAULT '0',
  `LimitDt` datetime DEFAULT '1990-01-01 00:00:00',
  `Scores` int(11) DEFAULT '0',
  PRIMARY KEY (`UserID`)
) ENGINE=MyISAM DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gametime`
--

LOCK TABLES `gametime` WRITE;
/*!40000 ALTER TABLE `gametime` DISABLE KEYS */;
/*!40000 ALTER TABLE `gametime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gametimeip`
--

DROP TABLE IF EXISTS `gametimeip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gametimeip` (
  `ipid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `ip` varchar(11) NOT NULL DEFAULT '000.000.000',
  `startIP` int(11) NOT NULL DEFAULT '0',
  `endIP` int(11) NOT NULL DEFAULT '255',
  `paymenttype` tinyint(2) NOT NULL DEFAULT '1',
  `LimitTime` int(11) NOT NULL DEFAULT '0',
  `LimitDt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `readme` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ipid`),
  UNIQUE KEY `ip_uniq` (`ip`,`startIP`,`endIP`),
  KEY `ip_idx` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gametimeip`
--

LOCK TABLES `gametimeip` WRITE;
/*!40000 ALTER TABLE `gametimeip` DISABLE KEYS */;
/*!40000 ALTER TABLE `gametimeip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gametimelog`
--

DROP TABLE IF EXISTS `gametimelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gametimelog` (
  `login` varchar(16) DEFAULT NULL,
  `type` enum('IP_FREE','FREE','IP_TIME','IP_DAY','TIME','DAY') DEFAULT NULL,
  `logon_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logout_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `use_time` int(11) DEFAULT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '000.000.000.000',
  `server` varchar(32) NOT NULL DEFAULT '',
  KEY `login_key` (`login`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gametimelog`
--

LOCK TABLES `gametimelog` WRITE;
/*!40000 ALTER TABLE `gametimelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `gametimelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hwidban`
--

DROP TABLE IF EXISTS `hwidban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hwidban` (
  `Hwid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hwidban`
--

LOCK TABLES `hwidban` WRITE;
/*!40000 ALTER TABLE `hwidban` DISABLE KEYS */;
INSERT INTO `hwidban` VALUES ('');
/*!40000 ALTER TABLE `hwidban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iptocountry`
--

DROP TABLE IF EXISTS `iptocountry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iptocountry` (
  `IP_FROM` varchar(16) DEFAULT NULL,
  `IP_TO` varchar(16) DEFAULT NULL,
  `COUNTRY_NAME` varchar(16) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iptocountry`
--

LOCK TABLES `iptocountry` WRITE;
/*!40000 ALTER TABLE `iptocountry` DISABLE KEYS */;
INSERT INTO `iptocountry` VALUES ('192.168.1.100','192.168.1.255','localhost');
/*!40000 ALTER TABLE `iptocountry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `macban`
--

DROP TABLE IF EXISTS `macban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `macban` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mac` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `macban`
--

LOCK TABLES `macban` WRITE;
/*!40000 ALTER TABLE `macban` DISABLE KEYS */;
INSERT INTO `macban` VALUES (1,'544529541602b92562227b220e08b907'),(2,'62227b220e08b907'),(3,'18ff0db12cf9a2f5c70ffa798c6f4b2c'),(4,'85f835dff373bc9dcf8acde7aa05858e'),(5,'1eed0b0248808c9cf290d52ce368edfb');
/*!40000 ALTER TABLE `macban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monarch`
--

DROP TABLE IF EXISTS `monarch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monarch` (
  `empire` int(10) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned DEFAULT '0',
  `name` varchar(16) DEFAULT NULL,
  `windate` datetime DEFAULT '0000-00-00 00:00:00',
  `money` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`empire`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monarch`
--

LOCK TABLES `monarch` WRITE;
/*!40000 ALTER TABLE `monarch` DISABLE KEYS */;
/*!40000 ALTER TABLE `monarch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psc_log`
--

DROP TABLE IF EXISTS `psc_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psc_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `card_type` varchar(20) NOT NULL,
  `waehrung` varchar(10) NOT NULL,
  `psc_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `psc_betrag` decimal(5,2) NOT NULL,
  `psc_pass` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL,
  `kommentar` varchar(200) NOT NULL,
  `datum` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psc_log`
--

LOCK TABLES `psc_log` WRITE;
/*!40000 ALTER TABLE `psc_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `psc_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_vote`
--

DROP TABLE IF EXISTS `record_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_metin2pserver` int(11) DEFAULT '0',
  `vote_topmetin` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_vote`
--

LOCK TABLES `record_vote` WRITE;
/*!40000 ALTER TABLE `record_vote` DISABLE KEYS */;
INSERT INTO `record_vote` VALUES (1,302,1488);
/*!40000 ALTER TABLE `record_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `send_notice`
--

DROP TABLE IF EXISTS `send_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `send_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `server` varchar(3) NOT NULL DEFAULT '',
  `show_check` tinyint(2) NOT NULL DEFAULT '0',
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `send_notice`
--

LOCK TABLES `send_notice` WRITE;
/*!40000 ALTER TABLE `send_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `send_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_settings`
--

DROP TABLE IF EXISTS `server_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variable` varchar(20) NOT NULL,
  `beschreibung` varchar(100) NOT NULL,
  `typ` enum('CHA','BOO','INT','DEC') NOT NULL,
  `value` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `variable` (`variable`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_settings`
--

LOCK TABLES `server_settings` WRITE;
/*!40000 ALTER TABLE `server_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snnban`
--

DROP TABLE IF EXISTS `snnban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snnban` (
  `Snn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snnban`
--

LOCK TABLES `snnban` WRITE;
/*!40000 ALTER TABLE `snnban` DISABLE KEYS */;
INSERT INTO `snnban` VALUES ('S21PNXAG682368J  \r');
/*!40000 ALTER TABLE `snnban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `string`
--

DROP TABLE IF EXISTS `string`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `string` (
  `name` varchar(11) NOT NULL DEFAULT '',
  `text` varchar(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`,`text`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `string`
--

LOCK TABLES `string` WRITE;
/*!40000 ALTER TABLE `string` DISABLE KEYS */;
/*!40000 ALTER TABLE `string` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tele_block`
--

DROP TABLE IF EXISTS `tele_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tele_block` (
  `account_id` int(11) NOT NULL DEFAULT '0',
  `lastlogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tele_block` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tele_block`
--

LOCK TABLES `tele_block` WRITE;
/*!40000 ALTER TABLE `tele_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `tele_block` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-03 11:34:13
