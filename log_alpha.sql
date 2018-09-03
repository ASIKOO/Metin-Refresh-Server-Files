-- MySQL dump 10.13  Distrib 5.6.34, for FreeBSD9.3 (amd64)
--
-- Host: localhost    Database: log_alpha
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
-- Table structure for table `acce`
--

DROP TABLE IF EXISTS `acce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acce` (
  `pid` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `x` int(1) NOT NULL,
  `y` int(1) NOT NULL,
  `item_vnum` int(11) NOT NULL,
  `item_uid` int(11) NOT NULL,
  `item_count` smallint(3) NOT NULL,
  `item_abs_chance` smallint(3) NOT NULL,
  `success` varbinary(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acce`
--

LOCK TABLES `acce` WRITE;
/*!40000 ALTER TABLE `acce` DISABLE KEYS */;
/*!40000 ALTER TABLE `acce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootlog`
--

DROP TABLE IF EXISTS `bootlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootlog` (
  `time` datetime DEFAULT NULL,
  `hostname` varchar(255) COLLATE big5_bin DEFAULT NULL,
  `channel` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=big5 COLLATE=big5_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootlog`
--

LOCK TABLES `bootlog` WRITE;
/*!40000 ALTER TABLE `bootlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `change_name`
--

DROP TABLE IF EXISTS `change_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `change_name` (
  `pid` int(20) NOT NULL DEFAULT '0',
  `old_name` varchar(30) DEFAULT NULL,
  `new_name` varchar(30) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `change_name`
--

LOCK TABLES `change_name` WRITE;
/*!40000 ALTER TABLE `change_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `change_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clanlog`
--

DROP TABLE IF EXISTS `clanlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clanlog` (
  `account_id` varchar(20) NOT NULL DEFAULT '',
  `char_name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`account_id`,`char_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clanlog`
--

LOCK TABLES `clanlog` WRITE;
/*!40000 ALTER TABLE `clanlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `clanlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `command_log`
--

DROP TABLE IF EXISTS `command_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `command_log` (
  `userid` int(11) DEFAULT NULL,
  `server` int(11) DEFAULT NULL,
  `ip` text,
  `port` int(11) DEFAULT NULL,
  `username` varchar(12) NOT NULL DEFAULT 'NONAME',
  `command` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `command_log`
--

LOCK TABLES `command_log` WRITE;
/*!40000 ALTER TABLE `command_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `command_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cube`
--

DROP TABLE IF EXISTS `cube`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `x` int(11) unsigned NOT NULL DEFAULT '0',
  `y` int(11) unsigned NOT NULL DEFAULT '0',
  `item_vnum` int(11) unsigned NOT NULL DEFAULT '0',
  `item_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `item_count` int(5) unsigned NOT NULL DEFAULT '0',
  `success` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `item_vnum` (`item_vnum`),
  KEY `item_uid` (`item_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=490 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cube`
--

LOCK TABLES `cube` WRITE;
/*!40000 ALTER TABLE `cube` DISABLE KEYS */;
/*!40000 ALTER TABLE `cube` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dragon_slay_log`
--

DROP TABLE IF EXISTS `dragon_slay_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dragon_slay_log` (
  `1` varchar(255) NOT NULL,
  `2` varchar(255) NOT NULL,
  `3` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `4` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dragon_slay_log`
--

LOCK TABLES `dragon_slay_log` WRITE;
/*!40000 ALTER TABLE `dragon_slay_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `dragon_slay_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fish_log`
--

DROP TABLE IF EXISTS `fish_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fish_log` (
  `1` int(11) DEFAULT NULL,
  `2` int(11) DEFAULT NULL,
  `3` int(11) DEFAULT NULL,
  `4` int(11) DEFAULT NULL,
  `5` int(11) DEFAULT NULL,
  `6` int(11) DEFAULT NULL,
  `7` int(11) DEFAULT NULL,
  `8` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=big5 COLLATE=big5_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fish_log`
--

LOCK TABLES `fish_log` WRITE;
/*!40000 ALTER TABLE `fish_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `fish_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gmhost`
--

DROP TABLE IF EXISTS `gmhost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gmhost` (
  `mIP` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`mIP`)
) ENGINE=MyISAM DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gmhost`
--

LOCK TABLES `gmhost` WRITE;
/*!40000 ALTER TABLE `gmhost` DISABLE KEYS */;
/*!40000 ALTER TABLE `gmhost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gmlist`
--

DROP TABLE IF EXISTS `gmlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gmlist` (
  `mID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mAccount` varchar(16) NOT NULL DEFAULT '',
  `mName` varchar(16) NOT NULL DEFAULT '',
  `mContactIP` varchar(16) NOT NULL DEFAULT '',
  `mServerIP` varchar(16) NOT NULL DEFAULT 'ALL',
  `mAuthority` enum('IMPLEMENTOR','HIGH_WIZARD','GOD','LOW_WIZARD','PLAYER') DEFAULT 'PLAYER',
  PRIMARY KEY (`mID`)
) ENGINE=MyISAM DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gmlist`
--

LOCK TABLES `gmlist` WRITE;
/*!40000 ALTER TABLE `gmlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `gmlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goldlog`
--

DROP TABLE IF EXISTS `goldlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goldlog` (
  `date` varchar(10) NOT NULL DEFAULT '0000-00-00',
  `time` varchar(8) NOT NULL DEFAULT '00:00:00',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `what` int(11) NOT NULL DEFAULT '0',
  `how` set('BUY','SELL','SHOP_SELL','SHOP_BUY','EXCHANGE_ TAKE','EXCHANGE_GIVE','QUEST') DEFAULT NULL,
  `hint` varchar(50) DEFAULT NULL,
  KEY `date_idx` (`date`),
  KEY `pid_idx` (`pid`),
  KEY `what_idx` (`what`),
  KEY `how_idx` (`how`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goldlog`
--

LOCK TABLES `goldlog` WRITE;
/*!40000 ALTER TABLE `goldlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `goldlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hack_crc_log`
--

DROP TABLE IF EXISTS `hack_crc_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hack_crc_log` (
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login` char(16) NOT NULL DEFAULT '',
  `name` char(24) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `server` char(100) NOT NULL DEFAULT '',
  `why` char(255) NOT NULL DEFAULT '',
  `crc` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hack_crc_log`
--

LOCK TABLES `hack_crc_log` WRITE;
/*!40000 ALTER TABLE `hack_crc_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `hack_crc_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hack_log`
--

DROP TABLE IF EXISTS `hack_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hack_log` (
  `time` datetime DEFAULT NULL,
  `login` longtext COLLATE big5_bin,
  `name` varchar(11) COLLATE big5_bin DEFAULT NULL,
  `ip` text CHARACTER SET latin1,
  `server` varchar(11) COLLATE big5_bin DEFAULT NULL,
  `why` varchar(22) COLLATE big5_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=big5 COLLATE=big5_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hack_log`
--

LOCK TABLES `hack_log` WRITE;
/*!40000 ALTER TABLE `hack_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `hack_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hackshield_log`
--

DROP TABLE IF EXISTS `hackshield_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hackshield_log` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `account_id` int(255) NOT NULL,
  `login` varchar(30) NOT NULL,
  `pid` int(255) NOT NULL,
  `name` varchar(30) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hackshield_log`
--

LOCK TABLES `hackshield_log` WRITE;
/*!40000 ALTER TABLE `hackshield_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `hackshield_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingame_ban_log`
--

DROP TABLE IF EXISTS `ingame_ban_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingame_ban_log` (
  `ban_time` datetime DEFAULT NULL,
  `who` varchar(255) COLLATE big5_bin DEFAULT NULL,
  `GM` varchar(255) COLLATE big5_bin DEFAULT NULL,
  `cause` varchar(255) COLLATE big5_bin DEFAULT NULL,
  `until` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=big5 COLLATE=big5_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingame_ban_log`
--

LOCK TABLES `ingame_ban_log` WRITE;
/*!40000 ALTER TABLE `ingame_ban_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingame_ban_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levellog`
--

DROP TABLE IF EXISTS `levellog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `levellog` (
  `name` varchar(50) COLLATE big5_bin DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `playtime` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT '0',
  `pid` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=big5 COLLATE=big5_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levellog`
--

LOCK TABLES `levellog` WRITE;
/*!40000 ALTER TABLE `levellog` DISABLE KEYS */;
/*!40000 ALTER TABLE `levellog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locale`
--

DROP TABLE IF EXISTS `locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locale` (
  `mKey` varchar(255) NOT NULL DEFAULT '',
  `mValue` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`mKey`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locale`
--

LOCK TABLES `locale` WRITE;
/*!40000 ALTER TABLE `locale` DISABLE KEYS */;
/*!40000 ALTER TABLE `locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locale_bug`
--

DROP TABLE IF EXISTS `locale_bug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locale_bug` (
  `mKey` varchar(255) NOT NULL DEFAULT '',
  `mValue` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`mKey`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locale_bug`
--

LOCK TABLES `locale_bug` WRITE;
/*!40000 ALTER TABLE `locale_bug` DISABLE KEYS */;
/*!40000 ALTER TABLE `locale_bug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `type` enum('ITEM','CHARACTER') CHARACTER SET latin1 NOT NULL DEFAULT 'ITEM',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `who` int(10) unsigned NOT NULL DEFAULT '0',
  `x` int(10) unsigned NOT NULL DEFAULT '0',
  `y` int(10) unsigned NOT NULL DEFAULT '0',
  `what` int(11) NOT NULL DEFAULT '0',
  `how` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `hint` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `ip` char(15) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `vnum` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=big5 COLLATE=big5_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginlog`
--

DROP TABLE IF EXISTS `loginlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginlog` (
  `type` enum('LOGIN','LOGOUT') DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `channel` tinyint(4) DEFAULT NULL,
  `account_id` int(10) unsigned DEFAULT NULL,
  `pid` int(10) unsigned DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  `job` tinyint(4) DEFAULT NULL,
  `playtime` int(10) unsigned DEFAULT NULL,
  KEY `pid` (`pid`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginlog`
--

LOCK TABLES `loginlog` WRITE;
/*!40000 ALTER TABLE `loginlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `loginlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginlog2`
--

DROP TABLE IF EXISTS `loginlog2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginlog2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text,
  `is_gm` varchar(11) DEFAULT 'N',
  `login_time` datetime DEFAULT NULL,
  `channel` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `client_version` text,
  `ip` text,
  `logout_time` datetime DEFAULT NULL,
  `playtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=319943 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginlog2`
--

LOCK TABLES `loginlog2` WRITE;
/*!40000 ALTER TABLE `loginlog2` DISABLE KEYS */;
/*!40000 ALTER TABLE `loginlog2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money_log`
--

DROP TABLE IF EXISTS `money_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money_log` (
  `VALUES` int(11) DEFAULT NULL,
  `DELAYED` int(11) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `vnum` int(11) DEFAULT '0',
  `pid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_log`
--

LOCK TABLES `money_log` WRITE;
/*!40000 ALTER TABLE `money_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `money_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `okay_event`
--

DROP TABLE IF EXISTS `okay_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `okay_event` (
  `pid` int(11) DEFAULT NULL,
  `name` varchar(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `okay_event`
--

LOCK TABLES `okay_event` WRITE;
/*!40000 ALTER TABLE `okay_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `okay_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pcbang_loginlog`
--

DROP TABLE IF EXISTS `pcbang_loginlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pcbang_loginlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL,
  `pcbang_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '000.000.000.000',
  `pid` int(10) unsigned DEFAULT NULL,
  `play_time` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `pcbang_id` (`pcbang_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pcbang_loginlog`
--

LOCK TABLES `pcbang_loginlog` WRITE;
/*!40000 ALTER TABLE `pcbang_loginlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `pcbang_loginlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_reward_log`
--

DROP TABLE IF EXISTS `quest_reward_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quest_reward_log` (
  `1` varchar(50) COLLATE big5_bin DEFAULT NULL,
  `2` int(11) DEFAULT NULL,
  `3` int(11) DEFAULT NULL,
  `4` int(11) DEFAULT NULL,
  `5` int(11) DEFAULT NULL,
  `6` int(11) DEFAULT NULL,
  `7` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=big5 COLLATE=big5_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest_reward_log`
--

LOCK TABLES `quest_reward_log` WRITE;
/*!40000 ALTER TABLE `quest_reward_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_reward_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questlog`
--

DROP TABLE IF EXISTS `questlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questlog` (
  `name` varchar(11) NOT NULL DEFAULT '',
  `level` varchar(12) NOT NULL DEFAULT '0',
  `channel` varchar(12) NOT NULL DEFAULT '',
  `account_id` varchar(20) NOT NULL DEFAULT '',
  `auswahl` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`,`level`,`channel`,`account_id`,`auswahl`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questlog`
--

LOCK TABLES `questlog` WRITE;
/*!40000 ALTER TABLE `questlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `questlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratelog`
--

DROP TABLE IF EXISTS `ratelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratelog` (
  `account_id` varchar(20) NOT NULL DEFAULT '',
  `char_name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`account_id`,`char_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratelog`
--

LOCK TABLES `ratelog` WRITE;
/*!40000 ALTER TABLE `ratelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `ratelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinelog`
--

DROP TABLE IF EXISTS `refinelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinelog` (
  `Id` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `item_name` varchar(50) COLLATE big5_bin DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `step` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `is_success` int(11) DEFAULT NULL,
  `setType` varchar(50) COLLATE big5_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=big5 COLLATE=big5_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinelog`
--

LOCK TABLES `refinelog` WRITE;
/*!40000 ALTER TABLE `refinelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `refinelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shout_log`
--

DROP TABLE IF EXISTS `shout_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shout_log` (
  `1` datetime DEFAULT NULL,
  `2` int(11) DEFAULT NULL,
  `3` int(11) DEFAULT NULL,
  `4` varchar(50) COLLATE big5_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=big5 COLLATE=big5_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shout_log`
--

LOCK TABLES `shout_log` WRITE;
/*!40000 ALTER TABLE `shout_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `shout_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speed_hack`
--

DROP TABLE IF EXISTS `speed_hack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `speed_hack` (
  `pid` int(11) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `hack_count` varchar(20) COLLATE big5_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=big5 COLLATE=big5_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speed_hack`
--

LOCK TABLES `speed_hack` WRITE;
/*!40000 ALTER TABLE `speed_hack` DISABLE KEYS */;
/*!40000 ALTER TABLE `speed_hack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_log`
--

DROP TABLE IF EXISTS `voucher_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(10) unsigned NOT NULL,
  `pocet` int(10) unsigned NOT NULL,
  `cas` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1816 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_log`
--

LOCK TABLES `voucher_log` WRITE;
/*!40000 ALTER TABLE `voucher_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `voucher_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-03 11:34:42
