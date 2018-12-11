-- MySQL dump 10.17  Distrib 10.4.0-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ava_base
-- ------------------------------------------------------
-- Server version	10.4.0-MariaDB-1:10.4.0+maria~bionic

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mdl_analytics_indicator_calc`
--

DROP TABLE IF EXISTS `mdl_analytics_indicator_calc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_analytics_indicator_calc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `starttime` bigint(10) NOT NULL,
  `endtime` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `sampleorigin` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `sampleid` bigint(10) NOT NULL,
  `indicator` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `value` decimal(10,2) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_analindicalc_staendcon_ix` (`starttime`,`endtime`,`contextid`),
  KEY `mdl_analindicalc_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stored indicator calculations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_indicator_calc`
--

LOCK TABLES `mdl_analytics_indicator_calc` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_indicator_calc` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_indicator_calc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_models`
--

DROP TABLE IF EXISTS `mdl_analytics_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_analytics_models` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `trained` tinyint(1) NOT NULL DEFAULT 0,
  `target` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `indicators` longtext COLLATE utf8mb4_bin NOT NULL,
  `timesplitting` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `version` bigint(10) NOT NULL,
  `timecreated` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_analmode_enatra_ix` (`enabled`,`trained`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Analytic models.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_models`
--

LOCK TABLES `mdl_analytics_models` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_models` DISABLE KEYS */;
INSERT INTO `mdl_analytics_models` VALUES (1,0,0,'\\core\\analytics\\target\\course_dropout','[\"\\\\mod_assign\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_assign\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_book\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_book\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_chat\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_chat\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_choice\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_choice\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_data\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_data\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_feedback\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_feedback\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_folder\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_folder\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_forum\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_forum\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_glossary\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_glossary\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_imscp\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_imscp\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_label\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_label\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_lesson\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_lesson\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_lti\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_lti\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_page\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_page\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_quiz\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_quiz\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_resource\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_resource\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_scorm\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_scorm\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_survey\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_survey\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_url\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_url\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_wiki\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_wiki\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_workshop\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_workshop\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\core_course\\\\analytics\\\\indicator\\\\completion_enabled\",\"\\\\core_course\\\\analytics\\\\indicator\\\\potential_cognitive_depth\",\"\\\\core_course\\\\analytics\\\\indicator\\\\potential_social_breadth\",\"\\\\core\\\\analytics\\\\indicator\\\\any_access_after_end\",\"\\\\core\\\\analytics\\\\indicator\\\\any_access_before_start\",\"\\\\core\\\\analytics\\\\indicator\\\\any_write_action_in_course\",\"\\\\core\\\\analytics\\\\indicator\\\\read_actions\"]',NULL,1543609746,1543609746,1543609746,0),(2,1,1,'\\core\\analytics\\target\\no_teaching','[\"\\\\core_course\\\\analytics\\\\indicator\\\\no_teacher\",\"\\\\core_course\\\\analytics\\\\indicator\\\\no_student\"]','\\core\\analytics\\time_splitting\\single_range',1543609746,1543609746,1543609746,0);
/*!40000 ALTER TABLE `mdl_analytics_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_models_log`
--

DROP TABLE IF EXISTS `mdl_analytics_models_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_analytics_models_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `modelid` bigint(10) NOT NULL,
  `version` bigint(10) NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `indicators` longtext COLLATE utf8mb4_bin NOT NULL,
  `timesplitting` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `score` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `info` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `dir` longtext COLLATE utf8mb4_bin NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_analmodelog_mod_ix` (`modelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Analytic models changes during evaluation.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_models_log`
--

LOCK TABLES `mdl_analytics_models_log` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_models_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_models_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_predict_samples`
--

DROP TABLE IF EXISTS `mdl_analytics_predict_samples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_analytics_predict_samples` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `modelid` bigint(10) NOT NULL,
  `analysableid` bigint(10) NOT NULL,
  `timesplitting` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `rangeindex` bigint(10) NOT NULL,
  `sampleids` longtext COLLATE utf8mb4_bin NOT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_analpredsamp_modanatimr_ix` (`modelid`,`analysableid`,`timesplitting`,`rangeindex`),
  KEY `mdl_analpredsamp_mod_ix` (`modelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Samples already used for predictions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_predict_samples`
--

LOCK TABLES `mdl_analytics_predict_samples` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_predict_samples` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_predict_samples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_prediction_actions`
--

DROP TABLE IF EXISTS `mdl_analytics_prediction_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_analytics_prediction_actions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `predictionid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `actionname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_analpredacti_preuseact_ix` (`predictionid`,`userid`,`actionname`),
  KEY `mdl_analpredacti_pre_ix` (`predictionid`),
  KEY `mdl_analpredacti_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Register of user actions over predictions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_prediction_actions`
--

LOCK TABLES `mdl_analytics_prediction_actions` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_prediction_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_prediction_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_predictions`
--

DROP TABLE IF EXISTS `mdl_analytics_predictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_analytics_predictions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `modelid` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `sampleid` bigint(10) NOT NULL,
  `rangeindex` mediumint(5) NOT NULL,
  `prediction` decimal(10,2) NOT NULL,
  `predictionscore` decimal(10,5) NOT NULL,
  `calculations` longtext COLLATE utf8mb4_bin NOT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timestart` bigint(10) DEFAULT NULL,
  `timeend` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_analpred_modcon_ix` (`modelid`,`contextid`),
  KEY `mdl_analpred_mod_ix` (`modelid`),
  KEY `mdl_analpred_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Predictions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_predictions`
--

LOCK TABLES `mdl_analytics_predictions` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_predictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_predictions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_train_samples`
--

DROP TABLE IF EXISTS `mdl_analytics_train_samples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_analytics_train_samples` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `modelid` bigint(10) NOT NULL,
  `analysableid` bigint(10) NOT NULL,
  `timesplitting` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `fileid` bigint(10) NOT NULL,
  `sampleids` longtext COLLATE utf8mb4_bin NOT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_analtraisamp_modanatim_ix` (`modelid`,`analysableid`,`timesplitting`),
  KEY `mdl_analtraisamp_mod_ix` (`modelid`),
  KEY `mdl_analtraisamp_fil_ix` (`fileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Samples used for training';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_train_samples`
--

LOCK TABLES `mdl_analytics_train_samples` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_train_samples` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_train_samples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_used_analysables`
--

DROP TABLE IF EXISTS `mdl_analytics_used_analysables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_analytics_used_analysables` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `modelid` bigint(10) NOT NULL,
  `action` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `analysableid` bigint(10) NOT NULL,
  `timeanalysed` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_analusedanal_modact_ix` (`modelid`,`action`),
  KEY `mdl_analusedanal_mod_ix` (`modelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='List of analysables used by each model';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_used_analysables`
--

LOCK TABLES `mdl_analytics_used_analysables` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_used_analysables` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_used_analysables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_used_files`
--

DROP TABLE IF EXISTS `mdl_analytics_used_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_analytics_used_files` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `modelid` bigint(10) NOT NULL DEFAULT 0,
  `fileid` bigint(10) NOT NULL DEFAULT 0,
  `action` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `time` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_analusedfile_modactfil_ix` (`modelid`,`action`,`fileid`),
  KEY `mdl_analusedfile_mod_ix` (`modelid`),
  KEY `mdl_analusedfile_fil_ix` (`fileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Files that have already been used for training and predictio';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_used_files`
--

LOCK TABLES `mdl_analytics_used_files` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_used_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_used_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign`
--

DROP TABLE IF EXISTS `mdl_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assign` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_bin NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `alwaysshowdescription` tinyint(2) NOT NULL DEFAULT 0,
  `nosubmissions` tinyint(2) NOT NULL DEFAULT 0,
  `submissiondrafts` tinyint(2) NOT NULL DEFAULT 0,
  `sendnotifications` tinyint(2) NOT NULL DEFAULT 0,
  `sendlatenotifications` tinyint(2) NOT NULL DEFAULT 0,
  `duedate` bigint(10) NOT NULL DEFAULT 0,
  `allowsubmissionsfromdate` bigint(10) NOT NULL DEFAULT 0,
  `grade` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `requiresubmissionstatement` tinyint(2) NOT NULL DEFAULT 0,
  `completionsubmit` tinyint(2) NOT NULL DEFAULT 0,
  `cutoffdate` bigint(10) NOT NULL DEFAULT 0,
  `gradingduedate` bigint(10) NOT NULL DEFAULT 0,
  `teamsubmission` tinyint(2) NOT NULL DEFAULT 0,
  `requireallteammemberssubmit` tinyint(2) NOT NULL DEFAULT 0,
  `teamsubmissiongroupingid` bigint(10) NOT NULL DEFAULT 0,
  `blindmarking` tinyint(2) NOT NULL DEFAULT 0,
  `revealidentities` tinyint(2) NOT NULL DEFAULT 0,
  `attemptreopenmethod` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT 'none',
  `maxattempts` mediumint(6) NOT NULL DEFAULT -1,
  `markingworkflow` tinyint(2) NOT NULL DEFAULT 0,
  `markingallocation` tinyint(2) NOT NULL DEFAULT 0,
  `sendstudentnotifications` tinyint(2) NOT NULL DEFAULT 1,
  `preventsubmissionnotingroup` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assi_cou_ix` (`course`),
  KEY `mdl_assi_tea_ix` (`teamsubmissiongroupingid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='This table saves information about an instance of mod_assign';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign`
--

LOCK TABLES `mdl_assign` WRITE;
/*!40000 ALTER TABLE `mdl_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_grades`
--

DROP TABLE IF EXISTS `mdl_assign_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assign_grades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `grader` bigint(10) NOT NULL DEFAULT 0,
  `grade` decimal(10,5) DEFAULT 0.00000,
  `attemptnumber` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_assigrad_assuseatt_uix` (`assignment`,`userid`,`attemptnumber`),
  KEY `mdl_assigrad_use_ix` (`userid`),
  KEY `mdl_assigrad_att_ix` (`attemptnumber`),
  KEY `mdl_assigrad_ass_ix` (`assignment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Grading information about a single assignment submission.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_grades`
--

LOCK TABLES `mdl_assign_grades` WRITE;
/*!40000 ALTER TABLE `mdl_assign_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_overrides`
--

DROP TABLE IF EXISTS `mdl_assign_overrides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assign_overrides` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) DEFAULT NULL,
  `userid` bigint(10) DEFAULT NULL,
  `sortorder` bigint(10) DEFAULT NULL,
  `allowsubmissionsfromdate` bigint(10) DEFAULT NULL,
  `duedate` bigint(10) DEFAULT NULL,
  `cutoffdate` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_assiover_ass_ix` (`assignid`),
  KEY `mdl_assiover_gro_ix` (`groupid`),
  KEY `mdl_assiover_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='The overrides to assign settings.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_overrides`
--

LOCK TABLES `mdl_assign_overrides` WRITE;
/*!40000 ALTER TABLE `mdl_assign_overrides` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign_overrides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_plugin_config`
--

DROP TABLE IF EXISTS `mdl_assign_plugin_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assign_plugin_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `plugin` varchar(28) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `subtype` varchar(28) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `name` varchar(28) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_assiplugconf_plu_ix` (`plugin`),
  KEY `mdl_assiplugconf_sub_ix` (`subtype`),
  KEY `mdl_assiplugconf_nam_ix` (`name`),
  KEY `mdl_assiplugconf_ass_ix` (`assignment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Config data for an instance of a plugin in an assignment.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_plugin_config`
--

LOCK TABLES `mdl_assign_plugin_config` WRITE;
/*!40000 ALTER TABLE `mdl_assign_plugin_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign_plugin_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_submission`
--

DROP TABLE IF EXISTS `mdl_assign_submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assign_submission` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `status` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `attemptnumber` bigint(10) NOT NULL DEFAULT 0,
  `latest` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_assisubm_assusegroatt_uix` (`assignment`,`userid`,`groupid`,`attemptnumber`),
  KEY `mdl_assisubm_use_ix` (`userid`),
  KEY `mdl_assisubm_att_ix` (`attemptnumber`),
  KEY `mdl_assisubm_assusegrolat_ix` (`assignment`,`userid`,`groupid`,`latest`),
  KEY `mdl_assisubm_ass_ix` (`assignment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='This table keeps information about student interactions with';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_submission`
--

LOCK TABLES `mdl_assign_submission` WRITE;
/*!40000 ALTER TABLE `mdl_assign_submission` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign_submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_user_flags`
--

DROP TABLE IF EXISTS `mdl_assign_user_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assign_user_flags` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `locked` bigint(10) NOT NULL DEFAULT 0,
  `mailed` smallint(4) NOT NULL DEFAULT 0,
  `extensionduedate` bigint(10) NOT NULL DEFAULT 0,
  `workflowstate` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `allocatedmarker` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assiuserflag_mai_ix` (`mailed`),
  KEY `mdl_assiuserflag_use_ix` (`userid`),
  KEY `mdl_assiuserflag_ass_ix` (`assignment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='List of flags that can be set for a single user in a single ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_user_flags`
--

LOCK TABLES `mdl_assign_user_flags` WRITE;
/*!40000 ALTER TABLE `mdl_assign_user_flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign_user_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_user_mapping`
--

DROP TABLE IF EXISTS `mdl_assign_user_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assign_user_mapping` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assiusermapp_ass_ix` (`assignment`),
  KEY `mdl_assiusermapp_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Map an assignment specific id number to a user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_user_mapping`
--

LOCK TABLES `mdl_assign_user_mapping` WRITE;
/*!40000 ALTER TABLE `mdl_assign_user_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign_user_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignfeedback_comments`
--

DROP TABLE IF EXISTS `mdl_assignfeedback_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignfeedback_comments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `grade` bigint(10) NOT NULL DEFAULT 0,
  `commenttext` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `commentformat` smallint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assicomm_ass_ix` (`assignment`),
  KEY `mdl_assicomm_gra_ix` (`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Text feedback for submitted assignments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignfeedback_comments`
--

LOCK TABLES `mdl_assignfeedback_comments` WRITE;
/*!40000 ALTER TABLE `mdl_assignfeedback_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignfeedback_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignfeedback_editpdf_annot`
--

DROP TABLE IF EXISTS `mdl_assignfeedback_editpdf_annot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignfeedback_editpdf_annot` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `gradeid` bigint(10) NOT NULL DEFAULT 0,
  `pageno` bigint(10) NOT NULL DEFAULT 0,
  `x` bigint(10) DEFAULT 0,
  `y` bigint(10) DEFAULT 0,
  `endx` bigint(10) DEFAULT 0,
  `endy` bigint(10) DEFAULT 0,
  `path` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `type` varchar(10) COLLATE utf8mb4_bin DEFAULT 'line',
  `colour` varchar(10) COLLATE utf8mb4_bin DEFAULT 'black',
  `draft` tinyint(2) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `mdl_assieditanno_grapag_ix` (`gradeid`,`pageno`),
  KEY `mdl_assieditanno_gra_ix` (`gradeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='stores annotations added to pdfs submitted by students';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignfeedback_editpdf_annot`
--

LOCK TABLES `mdl_assignfeedback_editpdf_annot` WRITE;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_annot` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_annot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignfeedback_editpdf_cmnt`
--

DROP TABLE IF EXISTS `mdl_assignfeedback_editpdf_cmnt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignfeedback_editpdf_cmnt` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `gradeid` bigint(10) NOT NULL DEFAULT 0,
  `x` bigint(10) DEFAULT 0,
  `y` bigint(10) DEFAULT 0,
  `width` bigint(10) DEFAULT 120,
  `rawtext` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `pageno` bigint(10) NOT NULL DEFAULT 0,
  `colour` varchar(10) COLLATE utf8mb4_bin DEFAULT 'black',
  `draft` tinyint(2) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `mdl_assieditcmnt_grapag_ix` (`gradeid`,`pageno`),
  KEY `mdl_assieditcmnt_gra_ix` (`gradeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores comments added to pdfs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignfeedback_editpdf_cmnt`
--

LOCK TABLES `mdl_assignfeedback_editpdf_cmnt` WRITE;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_cmnt` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_cmnt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignfeedback_editpdf_queue`
--

DROP TABLE IF EXISTS `mdl_assignfeedback_editpdf_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignfeedback_editpdf_queue` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `submissionid` bigint(10) NOT NULL,
  `submissionattempt` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Queue for processing.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignfeedback_editpdf_queue`
--

LOCK TABLES `mdl_assignfeedback_editpdf_queue` WRITE;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignfeedback_editpdf_quick`
--

DROP TABLE IF EXISTS `mdl_assignfeedback_editpdf_quick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignfeedback_editpdf_quick` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `rawtext` longtext COLLATE utf8mb4_bin NOT NULL,
  `width` bigint(10) NOT NULL DEFAULT 120,
  `colour` varchar(10) COLLATE utf8mb4_bin DEFAULT 'yellow',
  PRIMARY KEY (`id`),
  KEY `mdl_assieditquic_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores teacher specified quicklist comments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignfeedback_editpdf_quick`
--

LOCK TABLES `mdl_assignfeedback_editpdf_quick` WRITE;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_quick` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_quick` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignfeedback_file`
--

DROP TABLE IF EXISTS `mdl_assignfeedback_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignfeedback_file` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `grade` bigint(10) NOT NULL DEFAULT 0,
  `numfiles` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assifile_ass2_ix` (`assignment`),
  KEY `mdl_assifile_gra_ix` (`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores info about the number of files submitted by a student';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignfeedback_file`
--

LOCK TABLES `mdl_assignfeedback_file` WRITE;
/*!40000 ALTER TABLE `mdl_assignfeedback_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignfeedback_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignment`
--

DROP TABLE IF EXISTS `mdl_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignment` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_bin NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `assignmenttype` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `resubmit` tinyint(2) NOT NULL DEFAULT 0,
  `preventlate` tinyint(2) NOT NULL DEFAULT 0,
  `emailteachers` tinyint(2) NOT NULL DEFAULT 0,
  `var1` bigint(10) DEFAULT 0,
  `var2` bigint(10) DEFAULT 0,
  `var3` bigint(10) DEFAULT 0,
  `var4` bigint(10) DEFAULT 0,
  `var5` bigint(10) DEFAULT 0,
  `maxbytes` bigint(10) NOT NULL DEFAULT 100000,
  `timedue` bigint(10) NOT NULL DEFAULT 0,
  `timeavailable` bigint(10) NOT NULL DEFAULT 0,
  `grade` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assi_cou2_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Defines assignments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignment`
--

LOCK TABLES `mdl_assignment` WRITE;
/*!40000 ALTER TABLE `mdl_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignment_submissions`
--

DROP TABLE IF EXISTS `mdl_assignment_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignment_submissions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `numfiles` bigint(10) NOT NULL DEFAULT 0,
  `data1` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `data2` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `grade` bigint(11) NOT NULL DEFAULT 0,
  `submissioncomment` longtext COLLATE utf8mb4_bin NOT NULL,
  `format` smallint(4) NOT NULL DEFAULT 0,
  `teacher` bigint(10) NOT NULL DEFAULT 0,
  `timemarked` bigint(10) NOT NULL DEFAULT 0,
  `mailed` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assisubm_use2_ix` (`userid`),
  KEY `mdl_assisubm_mai_ix` (`mailed`),
  KEY `mdl_assisubm_tim_ix` (`timemarked`),
  KEY `mdl_assisubm_ass2_ix` (`assignment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Info about submitted assignments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignment_submissions`
--

LOCK TABLES `mdl_assignment_submissions` WRITE;
/*!40000 ALTER TABLE `mdl_assignment_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignment_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignment_upgrade`
--

DROP TABLE IF EXISTS `mdl_assignment_upgrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignment_upgrade` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `oldcmid` bigint(10) NOT NULL DEFAULT 0,
  `oldinstance` bigint(10) NOT NULL DEFAULT 0,
  `newcmid` bigint(10) NOT NULL DEFAULT 0,
  `newinstance` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assiupgr_old_ix` (`oldcmid`),
  KEY `mdl_assiupgr_old2_ix` (`oldinstance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Info about upgraded assignments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignment_upgrade`
--

LOCK TABLES `mdl_assignment_upgrade` WRITE;
/*!40000 ALTER TABLE `mdl_assignment_upgrade` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignment_upgrade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignsubmission_file`
--

DROP TABLE IF EXISTS `mdl_assignsubmission_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignsubmission_file` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `submission` bigint(10) NOT NULL DEFAULT 0,
  `numfiles` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assifile_ass_ix` (`assignment`),
  KEY `mdl_assifile_sub_ix` (`submission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Info about file submissions for assignments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignsubmission_file`
--

LOCK TABLES `mdl_assignsubmission_file` WRITE;
/*!40000 ALTER TABLE `mdl_assignsubmission_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignsubmission_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignsubmission_onlinetext`
--

DROP TABLE IF EXISTS `mdl_assignsubmission_onlinetext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_assignsubmission_onlinetext` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `submission` bigint(10) NOT NULL DEFAULT 0,
  `onlinetext` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `onlineformat` smallint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assionli_ass_ix` (`assignment`),
  KEY `mdl_assionli_sub_ix` (`submission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Info about onlinetext submission';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignsubmission_onlinetext`
--

LOCK TABLES `mdl_assignsubmission_onlinetext` WRITE;
/*!40000 ALTER TABLE `mdl_assignsubmission_onlinetext` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignsubmission_onlinetext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_auth_oauth2_linked_login`
--

DROP TABLE IF EXISTS `mdl_auth_oauth2_linked_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_auth_oauth2_linked_login` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `issuerid` bigint(10) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `email` longtext COLLATE utf8mb4_bin NOT NULL,
  `confirmtoken` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `confirmtokenexpires` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_authoautlinklogi_useis_uix` (`userid`,`issuerid`,`username`),
  KEY `mdl_authoautlinklogi_issuse_ix` (`issuerid`,`username`),
  KEY `mdl_authoautlinklogi_use_ix` (`usermodified`),
  KEY `mdl_authoautlinklogi_use2_ix` (`userid`),
  KEY `mdl_authoautlinklogi_iss_ix` (`issuerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Accounts linked to a users Moodle account.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_auth_oauth2_linked_login`
--

LOCK TABLES `mdl_auth_oauth2_linked_login` WRITE;
/*!40000 ALTER TABLE `mdl_auth_oauth2_linked_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_auth_oauth2_linked_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_backup_controllers`
--

DROP TABLE IF EXISTS `mdl_backup_controllers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_backup_controllers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `backupid` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `operation` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'backup',
  `type` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `format` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `interactive` smallint(4) NOT NULL,
  `purpose` smallint(4) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `status` smallint(4) NOT NULL,
  `execution` smallint(4) NOT NULL,
  `executiontime` bigint(10) NOT NULL,
  `checksum` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `controller` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_backcont_bac_uix` (`backupid`),
  KEY `mdl_backcont_typite_ix` (`type`,`itemid`),
  KEY `mdl_backcont_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='To store the backup_controllers as they are used';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_backup_controllers`
--

LOCK TABLES `mdl_backup_controllers` WRITE;
/*!40000 ALTER TABLE `mdl_backup_controllers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_backup_controllers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_backup_courses`
--

DROP TABLE IF EXISTS `mdl_backup_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_backup_courses` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `laststarttime` bigint(10) NOT NULL DEFAULT 0,
  `lastendtime` bigint(10) NOT NULL DEFAULT 0,
  `laststatus` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '5',
  `nextstarttime` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_backcour_cou_uix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='To store every course backup status';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_backup_courses`
--

LOCK TABLES `mdl_backup_courses` WRITE;
/*!40000 ALTER TABLE `mdl_backup_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_backup_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_backup_logs`
--

DROP TABLE IF EXISTS `mdl_backup_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_backup_logs` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `backupid` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `loglevel` smallint(4) NOT NULL,
  `message` longtext COLLATE utf8mb4_bin NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_backlogs_bacid_uix` (`backupid`,`id`),
  KEY `mdl_backlogs_bac_ix` (`backupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='To store all the logs from backup and restore operations (by';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_backup_logs`
--

LOCK TABLES `mdl_backup_logs` WRITE;
/*!40000 ALTER TABLE `mdl_backup_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_backup_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge`
--

DROP TABLE IF EXISTS `mdl_badge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_badge` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `usercreated` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `issuername` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `issuerurl` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `issuercontact` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `expiredate` bigint(10) DEFAULT NULL,
  `expireperiod` bigint(10) DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1,
  `courseid` bigint(10) DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_bin NOT NULL,
  `messagesubject` longtext COLLATE utf8mb4_bin NOT NULL,
  `attachment` tinyint(1) NOT NULL DEFAULT 1,
  `notification` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `nextcron` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_badg_typ_ix` (`type`),
  KEY `mdl_badg_cou_ix` (`courseid`),
  KEY `mdl_badg_use_ix` (`usermodified`),
  KEY `mdl_badg_use2_ix` (`usercreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Defines badge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge`
--

LOCK TABLES `mdl_badge` WRITE;
/*!40000 ALTER TABLE `mdl_badge` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_backpack`
--

DROP TABLE IF EXISTS `mdl_badge_backpack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_badge_backpack` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `email` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `backpackurl` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `backpackuid` bigint(10) NOT NULL,
  `autosync` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_badgback_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Defines settings for connecting external backpack';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_backpack`
--

LOCK TABLES `mdl_badge_backpack` WRITE;
/*!40000 ALTER TABLE `mdl_badge_backpack` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_backpack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_criteria`
--

DROP TABLE IF EXISTS `mdl_badge_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_badge_criteria` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `badgeid` bigint(10) NOT NULL DEFAULT 0,
  `criteriatype` bigint(10) DEFAULT NULL,
  `method` tinyint(1) NOT NULL DEFAULT 1,
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_badgcrit_badcri_uix` (`badgeid`,`criteriatype`),
  KEY `mdl_badgcrit_cri_ix` (`criteriatype`),
  KEY `mdl_badgcrit_bad_ix` (`badgeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Defines criteria for issuing badges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_criteria`
--

LOCK TABLES `mdl_badge_criteria` WRITE;
/*!40000 ALTER TABLE `mdl_badge_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_criteria_met`
--

DROP TABLE IF EXISTS `mdl_badge_criteria_met`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_badge_criteria_met` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `issuedid` bigint(10) DEFAULT NULL,
  `critid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `datemet` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_badgcritmet_cri_ix` (`critid`),
  KEY `mdl_badgcritmet_use_ix` (`userid`),
  KEY `mdl_badgcritmet_iss_ix` (`issuedid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Defines criteria that were met for an issued badge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_criteria_met`
--

LOCK TABLES `mdl_badge_criteria_met` WRITE;
/*!40000 ALTER TABLE `mdl_badge_criteria_met` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_criteria_met` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_criteria_param`
--

DROP TABLE IF EXISTS `mdl_badge_criteria_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_badge_criteria_param` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `critid` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_badgcritpara_cri_ix` (`critid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Defines parameters for badges criteria';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_criteria_param`
--

LOCK TABLES `mdl_badge_criteria_param` WRITE;
/*!40000 ALTER TABLE `mdl_badge_criteria_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_criteria_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_external`
--

DROP TABLE IF EXISTS `mdl_badge_external`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_badge_external` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `backpackid` bigint(10) NOT NULL,
  `collectionid` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_badgexte_bac_ix` (`backpackid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Setting for external badges display';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_external`
--

LOCK TABLES `mdl_badge_external` WRITE;
/*!40000 ALTER TABLE `mdl_badge_external` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_external` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_issued`
--

DROP TABLE IF EXISTS `mdl_badge_issued`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_badge_issued` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `badgeid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `uniquehash` longtext COLLATE utf8mb4_bin NOT NULL,
  `dateissued` bigint(10) NOT NULL DEFAULT 0,
  `dateexpire` bigint(10) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 0,
  `issuernotified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_badgissu_baduse_uix` (`badgeid`,`userid`),
  KEY `mdl_badgissu_bad_ix` (`badgeid`),
  KEY `mdl_badgissu_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Defines issued badges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_issued`
--

LOCK TABLES `mdl_badge_issued` WRITE;
/*!40000 ALTER TABLE `mdl_badge_issued` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_issued` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_manual_award`
--

DROP TABLE IF EXISTS `mdl_badge_manual_award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_badge_manual_award` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `badgeid` bigint(10) NOT NULL,
  `recipientid` bigint(10) NOT NULL,
  `issuerid` bigint(10) NOT NULL,
  `issuerrole` bigint(10) NOT NULL,
  `datemet` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_badgmanuawar_bad_ix` (`badgeid`),
  KEY `mdl_badgmanuawar_rec_ix` (`recipientid`),
  KEY `mdl_badgmanuawar_iss_ix` (`issuerid`),
  KEY `mdl_badgmanuawar_iss2_ix` (`issuerrole`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Track manual award criteria for badges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_manual_award`
--

LOCK TABLES `mdl_badge_manual_award` WRITE;
/*!40000 ALTER TABLE `mdl_badge_manual_award` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_manual_award` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block`
--

DROP TABLE IF EXISTS `mdl_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_block` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `cron` bigint(10) NOT NULL DEFAULT 0,
  `lastcron` bigint(10) NOT NULL DEFAULT 0,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_bloc_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='contains all installed blocks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block`
--

LOCK TABLES `mdl_block` WRITE;
/*!40000 ALTER TABLE `mdl_block` DISABLE KEYS */;
INSERT INTO `mdl_block` VALUES (1,'activity_modules',0,0,1),(2,'activity_results',0,0,1),(3,'admin_bookmarks',0,0,1),(4,'badges',0,0,1),(5,'blog_menu',0,0,1),(6,'blog_recent',0,0,1),(7,'blog_tags',0,0,1),(8,'calendar_month',0,0,1),(9,'calendar_upcoming',0,0,1),(10,'comments',0,0,1),(11,'community',0,0,1),(12,'completionstatus',0,0,1),(13,'course_list',0,0,1),(14,'course_summary',0,0,1),(15,'feedback',0,0,1),(16,'globalsearch',0,0,1),(17,'glossary_random',0,0,1),(18,'html',0,0,1),(19,'login',0,0,1),(20,'lp',0,0,1),(21,'mentees',0,0,1),(22,'mnet_hosts',0,0,1),(23,'myoverview',0,0,1),(24,'myprofile',0,0,1),(25,'navigation',0,0,1),(26,'news_items',0,0,1),(27,'online_users',0,0,1),(28,'participants',0,0,1),(29,'private_files',0,0,1),(30,'quiz_results',0,0,0),(31,'recent_activity',86400,0,1),(32,'rss_client',300,0,1),(33,'search_forums',0,0,1),(34,'section_links',0,0,1),(35,'selfcompletion',0,0,1),(36,'settings',0,0,1),(37,'site_main_menu',0,0,1),(38,'social_activities',0,0,1),(39,'tag_flickr',0,0,1),(40,'tag_youtube',0,0,0),(41,'tags',0,0,1);
/*!40000 ALTER TABLE `mdl_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_community`
--

DROP TABLE IF EXISTS `mdl_block_community`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_block_community` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `coursename` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `coursedescription` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `courseurl` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imageurl` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Community block';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block_community`
--

LOCK TABLES `mdl_block_community` WRITE;
/*!40000 ALTER TABLE `mdl_block_community` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_block_community` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_instances`
--

DROP TABLE IF EXISTS `mdl_block_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_block_instances` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `blockname` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `parentcontextid` bigint(10) NOT NULL,
  `showinsubcontexts` smallint(4) NOT NULL,
  `requiredbytheme` smallint(4) NOT NULL DEFAULT 0,
  `pagetypepattern` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `subpagepattern` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL,
  `defaultregion` varchar(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `defaultweight` bigint(10) NOT NULL,
  `configdata` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_blocinst_parshopagsub_ix` (`parentcontextid`,`showinsubcontexts`,`pagetypepattern`,`subpagepattern`),
  KEY `mdl_blocinst_tim_ix` (`timemodified`),
  KEY `mdl_blocinst_par_ix` (`parentcontextid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='This table stores block instances. The type of block this is';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block_instances`
--

LOCK TABLES `mdl_block_instances` WRITE;
/*!40000 ALTER TABLE `mdl_block_instances` DISABLE KEYS */;
INSERT INTO `mdl_block_instances` VALUES (1,'admin_bookmarks',1,0,0,'admin-*',NULL,'side-pre',2,'',1543610044,1543610044),(2,'private_files',1,0,0,'my-index','2','side-post',0,'',1543610045,1543610045),(3,'online_users',1,0,0,'my-index','2','side-post',1,'',1543610046,1543610046),(4,'badges',1,0,0,'my-index','2','side-post',2,'',1543610047,1543610047),(5,'calendar_month',1,0,0,'my-index','2','side-post',3,'',1543610047,1543610047),(6,'calendar_upcoming',1,0,0,'my-index','2','side-post',4,'',1543610047,1543610047),(7,'lp',1,0,0,'my-index','2','content',0,'',1543610047,1543610047),(8,'myoverview',1,0,0,'my-index','2','content',1,'',1543610048,1543610048),(9,'private_files',5,0,0,'my-index','3','side-post',0,'',1543610556,1543610556),(10,'online_users',5,0,0,'my-index','3','side-post',1,'',1543610556,1543610556),(11,'badges',5,0,0,'my-index','3','side-post',2,'',1543610556,1543610556),(12,'calendar_month',5,0,0,'my-index','3','side-post',3,'',1543610557,1543610557),(13,'calendar_upcoming',5,0,0,'my-index','3','side-post',4,'',1543610558,1543610558),(14,'lp',5,0,0,'my-index','3','content',0,'',1543610559,1543610559),(15,'myoverview',5,0,0,'my-index','3','content',1,'',1543610559,1543610559);
/*!40000 ALTER TABLE `mdl_block_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_positions`
--

DROP TABLE IF EXISTS `mdl_block_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_block_positions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `blockinstanceid` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `pagetype` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `subpage` varchar(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `visible` smallint(4) NOT NULL,
  `region` varchar(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `weight` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_blocposi_bloconpagsub_uix` (`blockinstanceid`,`contextid`,`pagetype`,`subpage`),
  KEY `mdl_blocposi_blo_ix` (`blockinstanceid`),
  KEY `mdl_blocposi_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores the position of a sticky block_instance on a another ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block_positions`
--

LOCK TABLES `mdl_block_positions` WRITE;
/*!40000 ALTER TABLE `mdl_block_positions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_block_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_recent_activity`
--

DROP TABLE IF EXISTS `mdl_block_recent_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_block_recent_activity` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `cmid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `action` tinyint(1) NOT NULL,
  `modname` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_blocreceacti_coutim_ix` (`courseid`,`timecreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Recent activity block';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block_recent_activity`
--

LOCK TABLES `mdl_block_recent_activity` WRITE;
/*!40000 ALTER TABLE `mdl_block_recent_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_block_recent_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_rss_client`
--

DROP TABLE IF EXISTS `mdl_block_rss_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_block_rss_client` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `title` longtext COLLATE utf8mb4_bin NOT NULL,
  `preferredtitle` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_bin NOT NULL,
  `shared` tinyint(2) NOT NULL DEFAULT 0,
  `url` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `skiptime` bigint(10) NOT NULL DEFAULT 0,
  `skipuntil` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Remote news feed information. Contains the news feed id, the';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block_rss_client`
--

LOCK TABLES `mdl_block_rss_client` WRITE;
/*!40000 ALTER TABLE `mdl_block_rss_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_block_rss_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_blog_association`
--

DROP TABLE IF EXISTS `mdl_blog_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_blog_association` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `blogid` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_blogasso_con_ix` (`contextid`),
  KEY `mdl_blogasso_blo_ix` (`blogid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Associations of blog entries with courses and module instanc';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_blog_association`
--

LOCK TABLES `mdl_blog_association` WRITE;
/*!40000 ALTER TABLE `mdl_blog_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_blog_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_blog_external`
--

DROP TABLE IF EXISTS `mdl_blog_external`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_blog_external` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `url` longtext COLLATE utf8mb4_bin NOT NULL,
  `filtertags` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `failedlastsync` tinyint(1) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) DEFAULT NULL,
  `timefetched` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_blogexte_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='External blog links used for RSS copying of blog entries to ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_blog_external`
--

LOCK TABLES `mdl_blog_external` WRITE;
/*!40000 ALTER TABLE `mdl_blog_external` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_blog_external` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_book`
--

DROP TABLE IF EXISTS `mdl_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_book` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `numbering` smallint(4) NOT NULL DEFAULT 0,
  `navstyle` smallint(4) NOT NULL DEFAULT 1,
  `customtitles` tinyint(2) NOT NULL DEFAULT 0,
  `revision` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Defines book';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_book`
--

LOCK TABLES `mdl_book` WRITE;
/*!40000 ALTER TABLE `mdl_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_book_chapters`
--

DROP TABLE IF EXISTS `mdl_book_chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_book_chapters` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `bookid` bigint(10) NOT NULL DEFAULT 0,
  `pagenum` bigint(10) NOT NULL DEFAULT 0,
  `subchapter` bigint(10) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `content` longtext COLLATE utf8mb4_bin NOT NULL,
  `contentformat` smallint(4) NOT NULL DEFAULT 0,
  `hidden` tinyint(2) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `importsrc` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Defines book_chapters';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_book_chapters`
--

LOCK TABLES `mdl_book_chapters` WRITE;
/*!40000 ALTER TABLE `mdl_book_chapters` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_book_chapters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_cache_filters`
--

DROP TABLE IF EXISTS `mdl_cache_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_cache_filters` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `filter` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `version` bigint(10) NOT NULL DEFAULT 0,
  `md5key` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `rawtext` longtext COLLATE utf8mb4_bin NOT NULL,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_cachfilt_filmd5_ix` (`filter`,`md5key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='For keeping information about cached data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_cache_filters`
--

LOCK TABLES `mdl_cache_filters` WRITE;
/*!40000 ALTER TABLE `mdl_cache_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_cache_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_cache_flags`
--

DROP TABLE IF EXISTS `mdl_cache_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_cache_flags` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `flagtype` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `value` longtext COLLATE utf8mb4_bin NOT NULL,
  `expiry` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_cachflag_fla_ix` (`flagtype`),
  KEY `mdl_cachflag_nam_ix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Cache of time-sensitive flags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_cache_flags`
--

LOCK TABLES `mdl_cache_flags` WRITE;
/*!40000 ALTER TABLE `mdl_cache_flags` DISABLE KEYS */;
INSERT INTO `mdl_cache_flags` VALUES (1,'userpreferenceschanged','2',1544538591,'1',1544545791),(2,'userpreferenceschanged','3',1544462692,'1',1544469892);
/*!40000 ALTER TABLE `mdl_cache_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_capabilities`
--

DROP TABLE IF EXISTS `mdl_capabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_capabilities` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `captype` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `contextlevel` bigint(10) NOT NULL DEFAULT 0,
  `component` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `riskbitmask` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_capa_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=604 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='this defines all capabilities';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_capabilities`
--

LOCK TABLES `mdl_capabilities` WRITE;
/*!40000 ALTER TABLE `mdl_capabilities` DISABLE KEYS */;
INSERT INTO `mdl_capabilities` VALUES (1,'moodle/site:config','write',10,'moodle',62),(2,'moodle/site:configview','read',10,'moodle',0),(3,'moodle/site:readallmessages','read',10,'moodle',8),(4,'moodle/site:manageallmessaging','write',10,'moodle',8),(5,'moodle/site:deleteanymessage','write',10,'moodle',32),(6,'moodle/site:sendmessage','write',10,'moodle',16),(7,'moodle/site:deleteownmessage','write',10,'moodle',0),(8,'moodle/site:approvecourse','write',10,'moodle',4),(9,'moodle/backup:backupcourse','write',50,'moodle',28),(10,'moodle/backup:backupsection','write',50,'moodle',28),(11,'moodle/backup:backupactivity','write',70,'moodle',28),(12,'moodle/backup:backuptargethub','write',50,'moodle',28),(13,'moodle/backup:backuptargetimport','write',50,'moodle',28),(14,'moodle/backup:downloadfile','write',50,'moodle',28),(15,'moodle/backup:configure','write',50,'moodle',28),(16,'moodle/backup:userinfo','read',50,'moodle',8),(17,'moodle/backup:anonymise','read',50,'moodle',8),(18,'moodle/restore:restorecourse','write',50,'moodle',28),(19,'moodle/restore:restoresection','write',50,'moodle',28),(20,'moodle/restore:restoreactivity','write',50,'moodle',28),(21,'moodle/restore:viewautomatedfilearea','write',50,'moodle',28),(22,'moodle/restore:restoretargethub','write',50,'moodle',28),(23,'moodle/restore:restoretargetimport','write',50,'moodle',28),(24,'moodle/restore:uploadfile','write',50,'moodle',28),(25,'moodle/restore:configure','write',50,'moodle',28),(26,'moodle/restore:rolldates','write',50,'moodle',0),(27,'moodle/restore:userinfo','write',50,'moodle',30),(28,'moodle/restore:createuser','write',10,'moodle',24),(29,'moodle/site:manageblocks','write',80,'moodle',20),(30,'moodle/site:accessallgroups','read',50,'moodle',0),(31,'moodle/site:viewfullnames','read',50,'moodle',0),(32,'moodle/site:viewuseridentity','read',50,'moodle',0),(33,'moodle/site:viewreports','read',50,'moodle',8),(34,'moodle/site:trustcontent','write',50,'moodle',4),(35,'moodle/site:uploadusers','write',10,'moodle',24),(36,'moodle/filter:manage','write',50,'moodle',0),(37,'moodle/user:create','write',10,'moodle',24),(38,'moodle/user:delete','write',10,'moodle',40),(39,'moodle/user:update','write',10,'moodle',24),(40,'moodle/user:viewdetails','read',50,'moodle',0),(41,'moodle/user:viewalldetails','read',30,'moodle',8),(42,'moodle/user:viewlastip','read',30,'moodle',8),(43,'moodle/user:viewhiddendetails','read',50,'moodle',8),(44,'moodle/user:loginas','write',50,'moodle',30),(45,'moodle/user:managesyspages','write',10,'moodle',0),(46,'moodle/user:manageblocks','write',30,'moodle',0),(47,'moodle/user:manageownblocks','write',10,'moodle',0),(48,'moodle/user:manageownfiles','write',10,'moodle',0),(49,'moodle/user:ignoreuserquota','write',10,'moodle',0),(50,'moodle/my:configsyspages','write',10,'moodle',0),(51,'moodle/role:assign','write',50,'moodle',28),(52,'moodle/role:review','read',50,'moodle',8),(53,'moodle/role:override','write',50,'moodle',28),(54,'moodle/role:safeoverride','write',50,'moodle',16),(55,'moodle/role:manage','write',10,'moodle',28),(56,'moodle/role:switchroles','read',50,'moodle',12),(57,'moodle/category:manage','write',40,'moodle',4),(58,'moodle/category:viewhiddencategories','read',40,'moodle',0),(59,'moodle/cohort:manage','write',40,'moodle',0),(60,'moodle/cohort:assign','write',40,'moodle',0),(61,'moodle/cohort:view','read',50,'moodle',0),(62,'moodle/course:create','write',40,'moodle',4),(63,'moodle/course:request','write',10,'moodle',0),(64,'moodle/course:delete','write',50,'moodle',32),(65,'moodle/course:update','write',50,'moodle',4),(66,'moodle/course:view','read',50,'moodle',0),(67,'moodle/course:enrolreview','read',50,'moodle',8),(68,'moodle/course:enrolconfig','write',50,'moodle',8),(69,'moodle/course:reviewotherusers','read',50,'moodle',0),(70,'moodle/course:bulkmessaging','write',50,'moodle',16),(71,'moodle/course:viewhiddenuserfields','read',50,'moodle',8),(72,'moodle/course:viewhiddencourses','read',50,'moodle',0),(73,'moodle/course:visibility','write',50,'moodle',0),(74,'moodle/course:managefiles','write',50,'moodle',4),(75,'moodle/course:ignoreavailabilityrestrictions','read',70,'moodle',0),(76,'moodle/course:ignorefilesizelimits','write',50,'moodle',0),(77,'moodle/course:manageactivities','write',70,'moodle',4),(78,'moodle/course:activityvisibility','write',70,'moodle',0),(79,'moodle/course:viewhiddenactivities','write',70,'moodle',0),(80,'moodle/course:viewparticipants','read',50,'moodle',0),(81,'moodle/course:changefullname','write',50,'moodle',4),(82,'moodle/course:changeshortname','write',50,'moodle',4),(83,'moodle/course:renameroles','write',50,'moodle',0),(84,'moodle/course:changeidnumber','write',50,'moodle',4),(85,'moodle/course:changecategory','write',50,'moodle',4),(86,'moodle/course:changesummary','write',50,'moodle',4),(87,'moodle/course:setforcedlanguage','write',50,'moodle',0),(88,'moodle/site:viewparticipants','read',10,'moodle',0),(89,'moodle/course:isincompletionreports','read',50,'moodle',0),(90,'moodle/course:viewscales','read',50,'moodle',0),(91,'moodle/course:managescales','write',50,'moodle',0),(92,'moodle/course:managegroups','write',50,'moodle',0),(93,'moodle/course:reset','write',50,'moodle',32),(94,'moodle/course:viewsuspendedusers','read',10,'moodle',0),(95,'moodle/course:tag','write',50,'moodle',16),(96,'moodle/blog:view','read',10,'moodle',0),(97,'moodle/blog:search','read',10,'moodle',0),(98,'moodle/blog:viewdrafts','read',10,'moodle',8),(99,'moodle/blog:create','write',10,'moodle',16),(100,'moodle/blog:manageentries','write',10,'moodle',16),(101,'moodle/blog:manageexternal','write',10,'moodle',16),(102,'moodle/calendar:manageownentries','write',50,'moodle',16),(103,'moodle/calendar:managegroupentries','write',50,'moodle',16),(104,'moodle/calendar:manageentries','write',50,'moodle',16),(105,'moodle/user:editprofile','write',30,'moodle',24),(106,'moodle/user:editownprofile','write',10,'moodle',16),(107,'moodle/user:changeownpassword','write',10,'moodle',0),(108,'moodle/user:readuserposts','read',30,'moodle',0),(109,'moodle/user:readuserblogs','read',30,'moodle',0),(110,'moodle/user:viewuseractivitiesreport','read',30,'moodle',8),(111,'moodle/user:editmessageprofile','write',30,'moodle',16),(112,'moodle/user:editownmessageprofile','write',10,'moodle',0),(113,'moodle/question:managecategory','write',50,'moodle',20),(114,'moodle/question:add','write',50,'moodle',20),(115,'moodle/question:editmine','write',50,'moodle',20),(116,'moodle/question:editall','write',50,'moodle',20),(117,'moodle/question:viewmine','read',50,'moodle',0),(118,'moodle/question:viewall','read',50,'moodle',0),(119,'moodle/question:usemine','read',50,'moodle',0),(120,'moodle/question:useall','read',50,'moodle',0),(121,'moodle/question:movemine','write',50,'moodle',0),(122,'moodle/question:moveall','write',50,'moodle',0),(123,'moodle/question:config','write',10,'moodle',2),(124,'moodle/question:flag','write',50,'moodle',0),(125,'moodle/question:tagmine','write',50,'moodle',0),(126,'moodle/question:tagall','write',50,'moodle',0),(127,'moodle/site:doclinks','read',10,'moodle',0),(128,'moodle/course:sectionvisibility','write',50,'moodle',0),(129,'moodle/course:useremail','write',50,'moodle',0),(130,'moodle/course:viewhiddensections','write',50,'moodle',0),(131,'moodle/course:setcurrentsection','write',50,'moodle',0),(132,'moodle/course:movesections','write',50,'moodle',0),(133,'moodle/site:mnetlogintoremote','read',10,'moodle',0),(134,'moodle/grade:viewall','read',50,'moodle',8),(135,'moodle/grade:view','read',50,'moodle',0),(136,'moodle/grade:viewhidden','read',50,'moodle',8),(137,'moodle/grade:import','write',50,'moodle',12),(138,'moodle/grade:export','read',50,'moodle',8),(139,'moodle/grade:manage','write',50,'moodle',12),(140,'moodle/grade:edit','write',50,'moodle',12),(141,'moodle/grade:managegradingforms','write',50,'moodle',12),(142,'moodle/grade:sharegradingforms','write',10,'moodle',4),(143,'moodle/grade:managesharedforms','write',10,'moodle',4),(144,'moodle/grade:manageoutcomes','write',50,'moodle',0),(145,'moodle/grade:manageletters','write',50,'moodle',0),(146,'moodle/grade:hide','write',50,'moodle',0),(147,'moodle/grade:lock','write',50,'moodle',0),(148,'moodle/grade:unlock','write',50,'moodle',0),(149,'moodle/my:manageblocks','write',10,'moodle',0),(150,'moodle/notes:view','read',50,'moodle',0),(151,'moodle/notes:manage','write',50,'moodle',16),(152,'moodle/tag:manage','write',10,'moodle',16),(153,'moodle/tag:edit','write',10,'moodle',16),(154,'moodle/tag:flag','write',10,'moodle',16),(155,'moodle/tag:editblocks','write',10,'moodle',0),(156,'moodle/block:view','read',80,'moodle',0),(157,'moodle/block:edit','write',80,'moodle',20),(158,'moodle/portfolio:export','read',10,'moodle',0),(159,'moodle/comment:view','read',50,'moodle',0),(160,'moodle/comment:post','write',50,'moodle',24),(161,'moodle/comment:delete','write',50,'moodle',32),(162,'moodle/webservice:createtoken','write',10,'moodle',62),(163,'moodle/webservice:managealltokens','write',10,'moodle',42),(164,'moodle/webservice:createmobiletoken','write',10,'moodle',24),(165,'moodle/rating:view','read',50,'moodle',0),(166,'moodle/rating:viewany','read',50,'moodle',8),(167,'moodle/rating:viewall','read',50,'moodle',8),(168,'moodle/rating:rate','write',50,'moodle',0),(169,'moodle/course:publish','write',10,'moodle',24),(170,'moodle/course:markcomplete','write',50,'moodle',0),(171,'moodle/course:overridecompletion','write',50,'moodle',0),(172,'moodle/community:add','write',10,'moodle',0),(173,'moodle/community:download','write',10,'moodle',0),(174,'moodle/badges:manageglobalsettings','write',10,'moodle',34),(175,'moodle/badges:viewbadges','read',50,'moodle',0),(176,'moodle/badges:manageownbadges','write',30,'moodle',0),(177,'moodle/badges:viewotherbadges','read',30,'moodle',0),(178,'moodle/badges:earnbadge','write',50,'moodle',0),(179,'moodle/badges:createbadge','write',50,'moodle',16),(180,'moodle/badges:deletebadge','write',50,'moodle',32),(181,'moodle/badges:configuredetails','write',50,'moodle',16),(182,'moodle/badges:configurecriteria','write',50,'moodle',4),(183,'moodle/badges:configuremessages','write',50,'moodle',16),(184,'moodle/badges:awardbadge','write',50,'moodle',16),(185,'moodle/badges:revokebadge','write',50,'moodle',16),(186,'moodle/badges:viewawarded','read',50,'moodle',8),(187,'moodle/site:forcelanguage','read',10,'moodle',0),(188,'moodle/search:query','read',10,'moodle',0),(189,'moodle/competency:competencymanage','write',40,'moodle',0),(190,'moodle/competency:competencyview','read',40,'moodle',0),(191,'moodle/competency:competencygrade','write',50,'moodle',0),(192,'moodle/competency:coursecompetencymanage','write',50,'moodle',0),(193,'moodle/competency:coursecompetencyconfigure','write',70,'moodle',0),(194,'moodle/competency:coursecompetencygradable','read',50,'moodle',0),(195,'moodle/competency:coursecompetencyview','read',50,'moodle',0),(196,'moodle/competency:evidencedelete','write',30,'moodle',0),(197,'moodle/competency:planmanage','write',30,'moodle',0),(198,'moodle/competency:planmanagedraft','write',30,'moodle',0),(199,'moodle/competency:planmanageown','write',30,'moodle',0),(200,'moodle/competency:planmanageowndraft','write',30,'moodle',0),(201,'moodle/competency:planview','read',30,'moodle',0),(202,'moodle/competency:planviewdraft','read',30,'moodle',0),(203,'moodle/competency:planviewown','read',30,'moodle',0),(204,'moodle/competency:planviewowndraft','read',30,'moodle',0),(205,'moodle/competency:planrequestreview','write',30,'moodle',0),(206,'moodle/competency:planrequestreviewown','write',30,'moodle',0),(207,'moodle/competency:planreview','write',30,'moodle',0),(208,'moodle/competency:plancomment','write',30,'moodle',0),(209,'moodle/competency:plancommentown','write',30,'moodle',0),(210,'moodle/competency:usercompetencyview','read',30,'moodle',0),(211,'moodle/competency:usercompetencyrequestreview','write',30,'moodle',0),(212,'moodle/competency:usercompetencyrequestreviewown','write',30,'moodle',0),(213,'moodle/competency:usercompetencyreview','write',30,'moodle',0),(214,'moodle/competency:usercompetencycomment','write',30,'moodle',0),(215,'moodle/competency:usercompetencycommentown','write',30,'moodle',0),(216,'moodle/competency:templatemanage','write',40,'moodle',0),(217,'moodle/analytics:listinsights','read',50,'moodle',8),(218,'moodle/analytics:managemodels','write',10,'moodle',2),(219,'moodle/competency:templateview','read',40,'moodle',0),(220,'moodle/competency:userevidencemanage','write',30,'moodle',0),(221,'moodle/competency:userevidencemanageown','write',30,'moodle',0),(222,'moodle/competency:userevidenceview','read',30,'moodle',0),(223,'moodle/site:maintenanceaccess','write',10,'moodle',0),(224,'mod/assign:view','read',70,'mod_assign',0),(225,'mod/assign:submit','write',70,'mod_assign',0),(226,'mod/assign:grade','write',70,'mod_assign',4),(227,'mod/assign:exportownsubmission','read',70,'mod_assign',0),(228,'mod/assign:addinstance','write',50,'mod_assign',4),(229,'mod/assign:editothersubmission','write',70,'mod_assign',41),(230,'mod/assign:grantextension','write',70,'mod_assign',0),(231,'mod/assign:revealidentities','write',70,'mod_assign',0),(232,'mod/assign:reviewgrades','write',70,'mod_assign',0),(233,'mod/assign:releasegrades','write',70,'mod_assign',0),(234,'mod/assign:managegrades','write',70,'mod_assign',0),(235,'mod/assign:manageallocations','write',70,'mod_assign',0),(236,'mod/assign:viewgrades','read',70,'mod_assign',0),(237,'mod/assign:viewblinddetails','write',70,'mod_assign',8),(238,'mod/assign:receivegradernotifications','read',70,'mod_assign',0),(239,'mod/assign:manageoverrides','write',70,'mod_assign',0),(240,'mod/assignment:view','read',70,'mod_assignment',0),(241,'mod/assignment:addinstance','write',50,'mod_assignment',4),(242,'mod/assignment:submit','write',70,'mod_assignment',0),(243,'mod/assignment:grade','write',70,'mod_assignment',4),(244,'mod/assignment:exportownsubmission','read',70,'mod_assignment',0),(245,'mod/book:addinstance','write',50,'mod_book',4),(246,'mod/book:read','read',70,'mod_book',0),(247,'mod/book:viewhiddenchapters','read',70,'mod_book',0),(248,'mod/book:edit','write',70,'mod_book',4),(249,'mod/chat:addinstance','write',50,'mod_chat',4),(250,'mod/chat:chat','write',70,'mod_chat',16),(251,'mod/chat:readlog','read',70,'mod_chat',0),(252,'mod/chat:deletelog','write',70,'mod_chat',0),(253,'mod/chat:exportparticipatedsession','read',70,'mod_chat',8),(254,'mod/chat:exportsession','read',70,'mod_chat',8),(255,'mod/chat:view','read',70,'mod_chat',0),(256,'mod/choice:addinstance','write',50,'mod_choice',4),(257,'mod/choice:choose','write',70,'mod_choice',0),(258,'mod/choice:readresponses','read',70,'mod_choice',0),(259,'mod/choice:deleteresponses','write',70,'mod_choice',0),(260,'mod/choice:downloadresponses','read',70,'mod_choice',0),(261,'mod/choice:view','read',70,'mod_choice',0),(262,'mod/data:addinstance','write',50,'mod_data',4),(263,'mod/data:viewentry','read',70,'mod_data',0),(264,'mod/data:writeentry','write',70,'mod_data',16),(265,'mod/data:comment','write',70,'mod_data',16),(266,'mod/data:rate','write',70,'mod_data',0),(267,'mod/data:viewrating','read',70,'mod_data',0),(268,'mod/data:viewanyrating','read',70,'mod_data',8),(269,'mod/data:viewallratings','read',70,'mod_data',8),(270,'mod/data:approve','write',70,'mod_data',16),(271,'mod/data:manageentries','write',70,'mod_data',16),(272,'mod/data:managecomments','write',70,'mod_data',16),(273,'mod/data:managetemplates','write',70,'mod_data',20),(274,'mod/data:viewalluserpresets','read',70,'mod_data',0),(275,'mod/data:manageuserpresets','write',70,'mod_data',20),(276,'mod/data:exportentry','read',70,'mod_data',8),(277,'mod/data:exportownentry','read',70,'mod_data',0),(278,'mod/data:exportallentries','read',70,'mod_data',8),(279,'mod/data:exportuserinfo','read',70,'mod_data',8),(280,'mod/data:view','read',70,'mod_data',0),(281,'mod/feedback:addinstance','write',50,'mod_feedback',4),(282,'mod/feedback:view','read',70,'mod_feedback',0),(283,'mod/feedback:complete','write',70,'mod_feedback',16),(284,'mod/feedback:viewanalysepage','read',70,'mod_feedback',8),(285,'mod/feedback:deletesubmissions','write',70,'mod_feedback',0),(286,'mod/feedback:mapcourse','write',70,'mod_feedback',0),(287,'mod/feedback:edititems','write',70,'mod_feedback',20),(288,'mod/feedback:createprivatetemplate','write',70,'mod_feedback',16),(289,'mod/feedback:createpublictemplate','write',70,'mod_feedback',16),(290,'mod/feedback:deletetemplate','write',70,'mod_feedback',0),(291,'mod/feedback:viewreports','read',70,'mod_feedback',8),(292,'mod/feedback:receivemail','read',70,'mod_feedback',8),(293,'mod/folder:addinstance','write',50,'mod_folder',4),(294,'mod/folder:view','read',70,'mod_folder',0),(295,'mod/folder:managefiles','write',70,'mod_folder',16),(296,'mod/forum:addinstance','write',50,'mod_forum',4),(297,'mod/forum:viewdiscussion','read',70,'mod_forum',0),(298,'mod/forum:viewhiddentimedposts','read',70,'mod_forum',0),(299,'mod/forum:startdiscussion','write',70,'mod_forum',16),(300,'mod/forum:replypost','write',70,'mod_forum',16),(301,'mod/forum:addnews','write',70,'mod_forum',16),(302,'mod/forum:replynews','write',70,'mod_forum',16),(303,'mod/forum:viewrating','read',70,'mod_forum',0),(304,'mod/forum:viewanyrating','read',70,'mod_forum',8),(305,'mod/forum:viewallratings','read',70,'mod_forum',8),(306,'mod/forum:rate','write',70,'mod_forum',0),(307,'mod/forum:createattachment','write',70,'mod_forum',16),(308,'mod/forum:deleteownpost','read',70,'mod_forum',0),(309,'mod/forum:deleteanypost','read',70,'mod_forum',0),(310,'mod/forum:splitdiscussions','read',70,'mod_forum',0),(311,'mod/forum:movediscussions','read',70,'mod_forum',0),(312,'mod/forum:pindiscussions','write',70,'mod_forum',0),(313,'mod/forum:editanypost','write',70,'mod_forum',16),(314,'mod/forum:viewqandawithoutposting','read',70,'mod_forum',0),(315,'mod/forum:viewsubscribers','read',70,'mod_forum',0),(316,'mod/forum:managesubscriptions','read',70,'mod_forum',16),(317,'mod/forum:postwithoutthrottling','write',70,'mod_forum',16),(318,'mod/forum:exportdiscussion','read',70,'mod_forum',8),(319,'mod/forum:exportpost','read',70,'mod_forum',8),(320,'mod/forum:exportownpost','read',70,'mod_forum',8),(321,'mod/forum:addquestion','write',70,'mod_forum',16),(322,'mod/forum:allowforcesubscribe','read',70,'mod_forum',0),(323,'mod/forum:canposttomygroups','write',70,'mod_forum',0),(324,'mod/forum:canoverridediscussionlock','write',70,'mod_forum',0),(325,'mod/glossary:addinstance','write',50,'mod_glossary',4),(326,'mod/glossary:view','read',70,'mod_glossary',0),(327,'mod/glossary:write','write',70,'mod_glossary',16),(328,'mod/glossary:manageentries','write',70,'mod_glossary',16),(329,'mod/glossary:managecategories','write',70,'mod_glossary',16),(330,'mod/glossary:comment','write',70,'mod_glossary',16),(331,'mod/glossary:managecomments','write',70,'mod_glossary',16),(332,'mod/glossary:import','write',70,'mod_glossary',16),(333,'mod/glossary:export','read',70,'mod_glossary',0),(334,'mod/glossary:approve','write',70,'mod_glossary',16),(335,'mod/glossary:rate','write',70,'mod_glossary',0),(336,'mod/glossary:viewrating','read',70,'mod_glossary',0),(337,'mod/glossary:viewanyrating','read',70,'mod_glossary',8),(338,'mod/glossary:viewallratings','read',70,'mod_glossary',8),(339,'mod/glossary:exportentry','read',70,'mod_glossary',8),(340,'mod/glossary:exportownentry','read',70,'mod_glossary',0),(341,'mod/imscp:view','read',70,'mod_imscp',0),(342,'mod/imscp:addinstance','write',50,'mod_imscp',4),(343,'mod/label:addinstance','write',50,'mod_label',4),(344,'mod/label:view','read',70,'mod_label',0),(345,'mod/lesson:addinstance','write',50,'mod_lesson',4),(346,'mod/lesson:edit','write',70,'mod_lesson',4),(347,'mod/lesson:grade','write',70,'mod_lesson',20),(348,'mod/lesson:viewreports','read',70,'mod_lesson',8),(349,'mod/lesson:manage','write',70,'mod_lesson',0),(350,'mod/lesson:manageoverrides','write',70,'mod_lesson',0),(351,'mod/lesson:view','read',70,'mod_lesson',0),(352,'mod/lti:view','read',70,'mod_lti',0),(353,'mod/lti:addinstance','write',50,'mod_lti',4),(354,'mod/lti:manage','write',70,'mod_lti',8),(355,'mod/lti:admin','write',70,'mod_lti',8),(356,'mod/lti:addcoursetool','write',50,'mod_lti',0),(357,'mod/lti:requesttooladd','write',50,'mod_lti',0),(358,'mod/page:view','read',70,'mod_page',0),(359,'mod/page:addinstance','write',50,'mod_page',4),(360,'mod/quiz:view','read',70,'mod_quiz',0),(361,'mod/quiz:addinstance','write',50,'mod_quiz',4),(362,'mod/quiz:attempt','write',70,'mod_quiz',16),(363,'mod/quiz:reviewmyattempts','read',70,'mod_quiz',0),(364,'mod/quiz:manage','write',70,'mod_quiz',16),(365,'mod/quiz:manageoverrides','write',70,'mod_quiz',0),(366,'mod/quiz:preview','write',70,'mod_quiz',0),(367,'mod/quiz:grade','write',70,'mod_quiz',20),(368,'mod/quiz:regrade','write',70,'mod_quiz',16),(369,'mod/quiz:viewreports','read',70,'mod_quiz',8),(370,'mod/quiz:deleteattempts','write',70,'mod_quiz',32),(371,'mod/quiz:ignoretimelimits','read',70,'mod_quiz',0),(372,'mod/quiz:emailconfirmsubmission','read',70,'mod_quiz',0),(373,'mod/quiz:emailnotifysubmission','read',70,'mod_quiz',0),(374,'mod/quiz:emailwarnoverdue','read',70,'mod_quiz',0),(375,'mod/resource:view','read',70,'mod_resource',0),(376,'mod/resource:addinstance','write',50,'mod_resource',4),(377,'mod/scorm:addinstance','write',50,'mod_scorm',4),(378,'mod/scorm:viewreport','read',70,'mod_scorm',0),(379,'mod/scorm:skipview','read',70,'mod_scorm',0),(380,'mod/scorm:savetrack','write',70,'mod_scorm',0),(381,'mod/scorm:viewscores','read',70,'mod_scorm',0),(382,'mod/scorm:deleteresponses','write',70,'mod_scorm',0),(383,'mod/scorm:deleteownresponses','write',70,'mod_scorm',0),(384,'mod/survey:addinstance','write',50,'mod_survey',4),(385,'mod/survey:participate','read',70,'mod_survey',0),(386,'mod/survey:readresponses','read',70,'mod_survey',0),(387,'mod/survey:download','read',70,'mod_survey',0),(388,'mod/url:view','read',70,'mod_url',0),(389,'mod/url:addinstance','write',50,'mod_url',4),(390,'mod/wiki:addinstance','write',50,'mod_wiki',4),(391,'mod/wiki:viewpage','read',70,'mod_wiki',0),(392,'mod/wiki:editpage','write',70,'mod_wiki',16),(393,'mod/wiki:createpage','write',70,'mod_wiki',16),(394,'mod/wiki:viewcomment','read',70,'mod_wiki',0),(395,'mod/wiki:editcomment','write',70,'mod_wiki',16),(396,'mod/wiki:managecomment','write',70,'mod_wiki',0),(397,'mod/wiki:managefiles','write',70,'mod_wiki',0),(398,'mod/wiki:overridelock','write',70,'mod_wiki',0),(399,'mod/wiki:managewiki','write',70,'mod_wiki',0),(400,'mod/workshop:view','read',70,'mod_workshop',0),(401,'mod/workshop:addinstance','write',50,'mod_workshop',4),(402,'mod/workshop:switchphase','write',70,'mod_workshop',0),(403,'mod/workshop:editdimensions','write',70,'mod_workshop',4),(404,'mod/workshop:submit','write',70,'mod_workshop',0),(405,'mod/workshop:peerassess','write',70,'mod_workshop',0),(406,'mod/workshop:manageexamples','write',70,'mod_workshop',0),(407,'mod/workshop:allocate','write',70,'mod_workshop',0),(408,'mod/workshop:publishsubmissions','write',70,'mod_workshop',0),(409,'mod/workshop:viewauthornames','read',70,'mod_workshop',0),(410,'mod/workshop:viewreviewernames','read',70,'mod_workshop',0),(411,'mod/workshop:viewallsubmissions','read',70,'mod_workshop',0),(412,'mod/workshop:viewpublishedsubmissions','read',70,'mod_workshop',0),(413,'mod/workshop:viewauthorpublished','read',70,'mod_workshop',0),(414,'mod/workshop:viewallassessments','read',70,'mod_workshop',0),(415,'mod/workshop:overridegrades','write',70,'mod_workshop',0),(416,'mod/workshop:ignoredeadlines','write',70,'mod_workshop',0),(417,'mod/workshop:deletesubmissions','write',70,'mod_workshop',0),(418,'mod/workshop:exportsubmissions','read',70,'mod_workshop',0),(419,'auth/oauth2:managelinkedlogins','write',30,'auth_oauth2',0),(420,'enrol/category:synchronised','write',10,'enrol_category',0),(421,'enrol/category:config','write',50,'enrol_category',0),(422,'enrol/cohort:config','write',50,'enrol_cohort',0),(423,'enrol/cohort:unenrol','write',50,'enrol_cohort',0),(424,'enrol/database:unenrol','write',50,'enrol_database',0),(425,'enrol/database:config','write',50,'enrol_database',0),(426,'enrol/flatfile:manage','write',50,'enrol_flatfile',0),(427,'enrol/flatfile:unenrol','write',50,'enrol_flatfile',0),(428,'enrol/guest:config','write',50,'enrol_guest',0),(429,'enrol/imsenterprise:config','write',50,'enrol_imsenterprise',0),(430,'enrol/ldap:manage','write',50,'enrol_ldap',0),(431,'enrol/lti:config','write',50,'enrol_lti',0),(432,'enrol/lti:unenrol','write',50,'enrol_lti',0),(433,'enrol/manual:config','write',50,'enrol_manual',0),(434,'enrol/manual:enrol','write',50,'enrol_manual',0),(435,'enrol/manual:manage','write',50,'enrol_manual',0),(436,'enrol/manual:unenrol','write',50,'enrol_manual',0),(437,'enrol/manual:unenrolself','write',50,'enrol_manual',0),(438,'enrol/meta:config','write',50,'enrol_meta',0),(439,'enrol/meta:selectaslinked','read',50,'enrol_meta',0),(440,'enrol/meta:unenrol','write',50,'enrol_meta',0),(441,'enrol/mnet:config','write',50,'enrol_mnet',0),(442,'enrol/paypal:config','write',50,'enrol_paypal',0),(443,'enrol/paypal:manage','write',50,'enrol_paypal',0),(444,'enrol/paypal:unenrol','write',50,'enrol_paypal',0),(445,'enrol/paypal:unenrolself','write',50,'enrol_paypal',0),(446,'enrol/self:config','write',50,'enrol_self',0),(447,'enrol/self:manage','write',50,'enrol_self',0),(448,'enrol/self:holdkey','write',50,'enrol_self',0),(449,'enrol/self:unenrolself','write',50,'enrol_self',0),(450,'enrol/self:unenrol','write',50,'enrol_self',0),(451,'message/airnotifier:managedevice','write',10,'message_airnotifier',0),(452,'block/activity_modules:addinstance','write',80,'block_activity_modules',20),(453,'block/activity_results:addinstance','write',80,'block_activity_results',20),(454,'block/admin_bookmarks:myaddinstance','write',10,'block_admin_bookmarks',0),(455,'block/admin_bookmarks:addinstance','write',80,'block_admin_bookmarks',20),(456,'block/badges:addinstance','read',80,'block_badges',0),(457,'block/badges:myaddinstance','read',10,'block_badges',8),(458,'block/blog_menu:addinstance','write',80,'block_blog_menu',20),(459,'block/blog_recent:addinstance','write',80,'block_blog_recent',20),(460,'block/blog_tags:addinstance','write',80,'block_blog_tags',20),(461,'block/calendar_month:myaddinstance','write',10,'block_calendar_month',0),(462,'block/calendar_month:addinstance','write',80,'block_calendar_month',20),(463,'block/calendar_upcoming:myaddinstance','write',10,'block_calendar_upcoming',0),(464,'block/calendar_upcoming:addinstance','write',80,'block_calendar_upcoming',20),(465,'block/comments:myaddinstance','write',10,'block_comments',0),(466,'block/comments:addinstance','write',80,'block_comments',20),(467,'block/community:myaddinstance','write',10,'block_community',0),(468,'block/community:addinstance','write',80,'block_community',20),(469,'block/completionstatus:addinstance','write',80,'block_completionstatus',20),(470,'block/course_list:myaddinstance','write',10,'block_course_list',0),(471,'block/course_list:addinstance','write',80,'block_course_list',20),(472,'block/course_summary:addinstance','write',80,'block_course_summary',20),(473,'block/feedback:addinstance','write',80,'block_feedback',20),(474,'block/globalsearch:myaddinstance','write',10,'block_globalsearch',0),(475,'block/globalsearch:addinstance','write',80,'block_globalsearch',0),(476,'block/glossary_random:myaddinstance','write',10,'block_glossary_random',0),(477,'block/glossary_random:addinstance','write',80,'block_glossary_random',20),(478,'block/html:myaddinstance','write',10,'block_html',0),(479,'block/html:addinstance','write',80,'block_html',20),(480,'block/login:addinstance','write',80,'block_login',20),(481,'block/lp:addinstance','write',10,'block_lp',0),(482,'block/lp:myaddinstance','write',10,'block_lp',0),(483,'block/lp:view','read',10,'block_lp',0),(484,'block/mentees:myaddinstance','write',10,'block_mentees',0),(485,'block/mentees:addinstance','write',80,'block_mentees',20),(486,'block/mnet_hosts:myaddinstance','write',10,'block_mnet_hosts',0),(487,'block/mnet_hosts:addinstance','write',80,'block_mnet_hosts',20),(488,'block/myoverview:myaddinstance','write',10,'block_myoverview',0),(489,'block/myoverview:addinstance','write',80,'block_myoverview',20),(490,'block/myprofile:myaddinstance','write',10,'block_myprofile',0),(491,'block/myprofile:addinstance','write',80,'block_myprofile',20),(492,'block/navigation:myaddinstance','write',10,'block_navigation',0),(493,'block/navigation:addinstance','write',80,'block_navigation',20),(494,'block/news_items:myaddinstance','write',10,'block_news_items',0),(495,'block/news_items:addinstance','write',80,'block_news_items',20),(496,'block/online_users:myaddinstance','write',10,'block_online_users',0),(497,'block/online_users:addinstance','write',80,'block_online_users',20),(498,'block/online_users:viewlist','read',80,'block_online_users',0),(499,'block/participants:addinstance','write',80,'block_participants',20),(500,'block/private_files:myaddinstance','write',10,'block_private_files',0),(501,'block/private_files:addinstance','write',80,'block_private_files',20),(502,'block/quiz_results:addinstance','write',80,'block_quiz_results',20),(503,'block/recent_activity:addinstance','write',80,'block_recent_activity',20),(504,'block/recent_activity:viewaddupdatemodule','read',50,'block_recent_activity',0),(505,'block/recent_activity:viewdeletemodule','read',50,'block_recent_activity',0),(506,'block/rss_client:myaddinstance','write',10,'block_rss_client',0),(507,'block/rss_client:addinstance','write',80,'block_rss_client',20),(508,'block/rss_client:manageownfeeds','write',80,'block_rss_client',0),(509,'block/rss_client:manageanyfeeds','write',80,'block_rss_client',16),(510,'block/search_forums:addinstance','write',80,'block_search_forums',20),(511,'block/section_links:addinstance','write',80,'block_section_links',20),(512,'block/selfcompletion:addinstance','write',80,'block_selfcompletion',20),(513,'block/settings:myaddinstance','write',10,'block_settings',0),(514,'block/settings:addinstance','write',80,'block_settings',20),(515,'block/site_main_menu:addinstance','write',80,'block_site_main_menu',20),(516,'block/social_activities:addinstance','write',80,'block_social_activities',20),(517,'block/tag_flickr:addinstance','write',80,'block_tag_flickr',20),(518,'block/tag_youtube:addinstance','write',80,'block_tag_youtube',20),(519,'block/tags:myaddinstance','write',10,'block_tags',0),(520,'block/tags:addinstance','write',80,'block_tags',20),(521,'report/completion:view','read',50,'report_completion',8),(522,'report/courseoverview:view','read',10,'report_courseoverview',8),(523,'report/log:view','read',50,'report_log',8),(524,'report/log:viewtoday','read',50,'report_log',8),(525,'report/loglive:view','read',50,'report_loglive',8),(526,'report/outline:view','read',50,'report_outline',8),(527,'report/outline:viewuserreport','read',50,'report_outline',8),(528,'report/participation:view','read',50,'report_participation',8),(529,'report/performance:view','read',10,'report_performance',2),(530,'report/progress:view','read',50,'report_progress',8),(531,'report/questioninstances:view','read',10,'report_questioninstances',0),(532,'report/security:view','read',10,'report_security',2),(533,'report/stats:view','read',50,'report_stats',8),(534,'report/usersessions:manageownsessions','write',30,'report_usersessions',0),(535,'gradeexport/ods:view','read',50,'gradeexport_ods',8),(536,'gradeexport/ods:publish','read',50,'gradeexport_ods',8),(537,'gradeexport/txt:view','read',50,'gradeexport_txt',8),(538,'gradeexport/txt:publish','read',50,'gradeexport_txt',8),(539,'gradeexport/xls:view','read',50,'gradeexport_xls',8),(540,'gradeexport/xls:publish','read',50,'gradeexport_xls',8),(541,'gradeexport/xml:view','read',50,'gradeexport_xml',8),(542,'gradeexport/xml:publish','read',50,'gradeexport_xml',8),(543,'gradeimport/csv:view','write',50,'gradeimport_csv',0),(544,'gradeimport/direct:view','write',50,'gradeimport_direct',0),(545,'gradeimport/xml:view','write',50,'gradeimport_xml',0),(546,'gradeimport/xml:publish','write',50,'gradeimport_xml',0),(547,'gradereport/grader:view','read',50,'gradereport_grader',8),(548,'gradereport/history:view','read',50,'gradereport_history',8),(549,'gradereport/outcomes:view','read',50,'gradereport_outcomes',8),(550,'gradereport/overview:view','read',50,'gradereport_overview',8),(551,'gradereport/singleview:view','read',50,'gradereport_singleview',8),(552,'gradereport/user:view','read',50,'gradereport_user',8),(553,'webservice/rest:use','read',50,'webservice_rest',0),(554,'webservice/soap:use','read',50,'webservice_soap',0),(555,'webservice/xmlrpc:use','read',50,'webservice_xmlrpc',0),(556,'repository/areafiles:view','read',70,'repository_areafiles',0),(557,'repository/boxnet:view','read',70,'repository_boxnet',0),(558,'repository/coursefiles:view','read',70,'repository_coursefiles',0),(559,'repository/dropbox:view','read',70,'repository_dropbox',0),(560,'repository/equella:view','read',70,'repository_equella',0),(561,'repository/filesystem:view','read',70,'repository_filesystem',0),(562,'repository/flickr:view','read',70,'repository_flickr',0),(563,'repository/flickr_public:view','read',70,'repository_flickr_public',0),(564,'repository/googledocs:view','read',70,'repository_googledocs',0),(565,'repository/local:view','read',70,'repository_local',0),(566,'repository/merlot:view','read',70,'repository_merlot',0),(567,'repository/onedrive:view','read',70,'repository_onedrive',0),(568,'repository/picasa:view','read',70,'repository_picasa',0),(569,'repository/recent:view','read',70,'repository_recent',0),(570,'repository/s3:view','read',70,'repository_s3',0),(571,'repository/skydrive:view','read',70,'repository_skydrive',0),(572,'repository/upload:view','read',70,'repository_upload',0),(573,'repository/url:view','read',70,'repository_url',0),(574,'repository/user:view','read',70,'repository_user',0),(575,'repository/webdav:view','read',70,'repository_webdav',0),(576,'repository/wikimedia:view','read',70,'repository_wikimedia',0),(577,'repository/youtube:view','read',70,'repository_youtube',0),(578,'tool/customlang:view','read',10,'tool_customlang',2),(579,'tool/customlang:edit','write',10,'tool_customlang',6),(580,'tool/dataprivacy:managedatarequests','write',10,'tool_dataprivacy',60),(581,'tool/dataprivacy:managedataregistry','write',10,'tool_dataprivacy',60),(582,'tool/dataprivacy:makedatarequestsforchildren','write',30,'tool_dataprivacy',24),(583,'tool/dataprivacy:downloadownrequest','read',30,'tool_dataprivacy',0),(584,'tool/dataprivacy:downloadallrequests','read',30,'tool_dataprivacy',8),(585,'tool/lpmigrate:frameworksmigrate','write',10,'tool_lpmigrate',0),(586,'tool/monitor:subscribe','read',50,'tool_monitor',8),(587,'tool/monitor:managerules','write',50,'tool_monitor',4),(588,'tool/monitor:managetool','write',10,'tool_monitor',4),(589,'tool/policy:accept','write',10,'tool_policy',0),(590,'tool/policy:acceptbehalf','write',30,'tool_policy',8),(591,'tool/policy:managedocs','write',10,'tool_policy',0),(592,'tool/policy:viewacceptances','read',10,'tool_policy',0),(593,'tool/recyclebin:deleteitems','write',50,'tool_recyclebin',32),(594,'tool/recyclebin:restoreitems','write',50,'tool_recyclebin',0),(595,'tool/recyclebin:viewitems','read',50,'tool_recyclebin',0),(596,'tool/uploaduser:uploaduserpictures','write',10,'tool_uploaduser',16),(597,'tool/usertours:managetours','write',10,'tool_usertours',4),(598,'booktool/exportimscp:export','read',70,'booktool_exportimscp',0),(599,'booktool/importhtml:import','write',70,'booktool_importhtml',4),(600,'booktool/print:print','read',70,'booktool_print',0),(601,'quiz/grading:viewstudentnames','read',70,'quiz_grading',0),(602,'quiz/grading:viewidnumber','read',70,'quiz_grading',0),(603,'quiz/statistics:view','read',70,'quiz_statistics',0);
/*!40000 ALTER TABLE `mdl_capabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_chat`
--

DROP TABLE IF EXISTS `mdl_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_chat` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_bin NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `keepdays` bigint(11) NOT NULL DEFAULT 0,
  `studentlogs` smallint(4) NOT NULL DEFAULT 0,
  `chattime` bigint(10) NOT NULL DEFAULT 0,
  `schedule` smallint(4) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_chat_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Each of these is a chat room';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_chat`
--

LOCK TABLES `mdl_chat` WRITE;
/*!40000 ALTER TABLE `mdl_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_chat_messages`
--

DROP TABLE IF EXISTS `mdl_chat_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_chat_messages` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `chatid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `issystem` tinyint(1) NOT NULL DEFAULT 0,
  `message` longtext COLLATE utf8mb4_bin NOT NULL,
  `timestamp` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_chatmess_use_ix` (`userid`),
  KEY `mdl_chatmess_gro_ix` (`groupid`),
  KEY `mdl_chatmess_timcha_ix` (`timestamp`,`chatid`),
  KEY `mdl_chatmess_cha_ix` (`chatid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores all the actual chat messages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_chat_messages`
--

LOCK TABLES `mdl_chat_messages` WRITE;
/*!40000 ALTER TABLE `mdl_chat_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_chat_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_chat_messages_current`
--

DROP TABLE IF EXISTS `mdl_chat_messages_current`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_chat_messages_current` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `chatid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `issystem` tinyint(1) NOT NULL DEFAULT 0,
  `message` longtext COLLATE utf8mb4_bin NOT NULL,
  `timestamp` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_chatmesscurr_use_ix` (`userid`),
  KEY `mdl_chatmesscurr_gro_ix` (`groupid`),
  KEY `mdl_chatmesscurr_timcha_ix` (`timestamp`,`chatid`),
  KEY `mdl_chatmesscurr_cha_ix` (`chatid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores current session';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_chat_messages_current`
--

LOCK TABLES `mdl_chat_messages_current` WRITE;
/*!40000 ALTER TABLE `mdl_chat_messages_current` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_chat_messages_current` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_chat_users`
--

DROP TABLE IF EXISTS `mdl_chat_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_chat_users` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `chatid` bigint(11) NOT NULL DEFAULT 0,
  `userid` bigint(11) NOT NULL DEFAULT 0,
  `groupid` bigint(11) NOT NULL DEFAULT 0,
  `version` varchar(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `ip` varchar(45) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `firstping` bigint(10) NOT NULL DEFAULT 0,
  `lastping` bigint(10) NOT NULL DEFAULT 0,
  `lastmessageping` bigint(10) NOT NULL DEFAULT 0,
  `sid` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `course` bigint(10) NOT NULL DEFAULT 0,
  `lang` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_chatuser_use_ix` (`userid`),
  KEY `mdl_chatuser_las_ix` (`lastping`),
  KEY `mdl_chatuser_gro_ix` (`groupid`),
  KEY `mdl_chatuser_cha_ix` (`chatid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Keeps track of which users are in which chat rooms';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_chat_users`
--

LOCK TABLES `mdl_chat_users` WRITE;
/*!40000 ALTER TABLE `mdl_chat_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_chat_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_choice`
--

DROP TABLE IF EXISTS `mdl_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_choice` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_bin NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `publish` tinyint(2) NOT NULL DEFAULT 0,
  `showresults` tinyint(2) NOT NULL DEFAULT 0,
  `display` smallint(4) NOT NULL DEFAULT 0,
  `allowupdate` tinyint(2) NOT NULL DEFAULT 0,
  `allowmultiple` tinyint(2) NOT NULL DEFAULT 0,
  `showunanswered` tinyint(2) NOT NULL DEFAULT 0,
  `includeinactive` tinyint(2) NOT NULL DEFAULT 1,
  `limitanswers` tinyint(2) NOT NULL DEFAULT 0,
  `timeopen` bigint(10) NOT NULL DEFAULT 0,
  `timeclose` bigint(10) NOT NULL DEFAULT 0,
  `showpreview` tinyint(2) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `completionsubmit` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_choi_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Available choices are stored here';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_choice`
--

LOCK TABLES `mdl_choice` WRITE;
/*!40000 ALTER TABLE `mdl_choice` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_choice_answers`
--

DROP TABLE IF EXISTS `mdl_choice_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_choice_answers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `choiceid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `optionid` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_choiansw_use_ix` (`userid`),
  KEY `mdl_choiansw_cho_ix` (`choiceid`),
  KEY `mdl_choiansw_opt_ix` (`optionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='choices performed by users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_choice_answers`
--

LOCK TABLES `mdl_choice_answers` WRITE;
/*!40000 ALTER TABLE `mdl_choice_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_choice_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_choice_options`
--

DROP TABLE IF EXISTS `mdl_choice_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_choice_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `choiceid` bigint(10) NOT NULL DEFAULT 0,
  `text` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `maxanswers` bigint(10) DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_choiopti_cho_ix` (`choiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='available options to choice';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_choice_options`
--

LOCK TABLES `mdl_choice_options` WRITE;
/*!40000 ALTER TABLE `mdl_choice_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_choice_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_cohort`
--

DROP TABLE IF EXISTS `mdl_cohort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_cohort` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `name` varchar(254) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `idnumber` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `component` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `theme` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_coho_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Each record represents one cohort (aka site-wide group).';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_cohort`
--

LOCK TABLES `mdl_cohort` WRITE;
/*!40000 ALTER TABLE `mdl_cohort` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_cohort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_cohort_members`
--

DROP TABLE IF EXISTS `mdl_cohort_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_cohort_members` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `cohortid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `timeadded` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_cohomemb_cohuse_uix` (`cohortid`,`userid`),
  KEY `mdl_cohomemb_coh_ix` (`cohortid`),
  KEY `mdl_cohomemb_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Link a user to a cohort.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_cohort_members`
--

LOCK TABLES `mdl_cohort_members` WRITE;
/*!40000 ALTER TABLE `mdl_cohort_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_cohort_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_comments`
--

DROP TABLE IF EXISTS `mdl_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_comments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `component` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `commentarea` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `content` longtext COLLATE utf8mb4_bin NOT NULL,
  `format` tinyint(2) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_comm_concomite_ix` (`contextid`,`commentarea`,`itemid`),
  KEY `mdl_comm_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='moodle comments module';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_comments`
--

LOCK TABLES `mdl_comments` WRITE;
/*!40000 ALTER TABLE `mdl_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency`
--

DROP TABLE IF EXISTS `mdl_competency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `descriptionformat` smallint(4) NOT NULL DEFAULT 0,
  `idnumber` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `competencyframeworkid` bigint(10) NOT NULL,
  `parentid` bigint(10) NOT NULL DEFAULT 0,
  `path` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `sortorder` bigint(10) NOT NULL,
  `ruletype` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `ruleoutcome` tinyint(2) NOT NULL DEFAULT 0,
  `ruleconfig` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `scaleid` bigint(10) DEFAULT NULL,
  `scaleconfiguration` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_comp_comidn_uix` (`competencyframeworkid`,`idnumber`),
  KEY `mdl_comp_rul_ix` (`ruleoutcome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='This table contains the master record of each competency in ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency`
--

LOCK TABLES `mdl_competency` WRITE;
/*!40000 ALTER TABLE `mdl_competency` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_coursecomp`
--

DROP TABLE IF EXISTS `mdl_competency_coursecomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_coursecomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `ruleoutcome` tinyint(2) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compcour_coucom_uix` (`courseid`,`competencyid`),
  KEY `mdl_compcour_courul_ix` (`courseid`,`ruleoutcome`),
  KEY `mdl_compcour_cou2_ix` (`courseid`),
  KEY `mdl_compcour_com_ix` (`competencyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Link a competency to a course.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_coursecomp`
--

LOCK TABLES `mdl_competency_coursecomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_coursecomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_coursecomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_coursecompsetting`
--

DROP TABLE IF EXISTS `mdl_competency_coursecompsetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_coursecompsetting` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `pushratingstouserplans` tinyint(2) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compcour_cou_uix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='This table contains the course specific settings for compete';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_coursecompsetting`
--

LOCK TABLES `mdl_competency_coursecompsetting` WRITE;
/*!40000 ALTER TABLE `mdl_competency_coursecompsetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_coursecompsetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_evidence`
--

DROP TABLE IF EXISTS `mdl_competency_evidence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_evidence` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `usercompetencyid` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `action` tinyint(2) NOT NULL,
  `actionuserid` bigint(10) DEFAULT NULL,
  `descidentifier` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `desccomponent` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `desca` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `grade` bigint(10) DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_compevid_use_ix` (`usercompetencyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='The evidence linked to a user competency';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_evidence`
--

LOCK TABLES `mdl_competency_evidence` WRITE;
/*!40000 ALTER TABLE `mdl_competency_evidence` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_evidence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_framework`
--

DROP TABLE IF EXISTS `mdl_competency_framework`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_framework` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `contextid` bigint(10) NOT NULL,
  `idnumber` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `descriptionformat` smallint(4) NOT NULL DEFAULT 0,
  `scaleid` bigint(11) DEFAULT NULL,
  `scaleconfiguration` longtext COLLATE utf8mb4_bin NOT NULL,
  `visible` tinyint(2) NOT NULL DEFAULT 1,
  `taxonomies` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compfram_idn_uix` (`idnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='List of competency frameworks.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_framework`
--

LOCK TABLES `mdl_competency_framework` WRITE;
/*!40000 ALTER TABLE `mdl_competency_framework` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_framework` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_modulecomp`
--

DROP TABLE IF EXISTS `mdl_competency_modulecomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_modulecomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `cmid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `ruleoutcome` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compmodu_cmicom_uix` (`cmid`,`competencyid`),
  KEY `mdl_compmodu_cmirul_ix` (`cmid`,`ruleoutcome`),
  KEY `mdl_compmodu_cmi_ix` (`cmid`),
  KEY `mdl_compmodu_com_ix` (`competencyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Link a competency to a module.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_modulecomp`
--

LOCK TABLES `mdl_competency_modulecomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_modulecomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_modulecomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_plan`
--

DROP TABLE IF EXISTS `mdl_competency_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_plan` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `descriptionformat` smallint(4) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL,
  `templateid` bigint(10) DEFAULT NULL,
  `origtemplateid` bigint(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `duedate` bigint(10) DEFAULT 0,
  `reviewerid` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_compplan_usesta_ix` (`userid`,`status`),
  KEY `mdl_compplan_tem_ix` (`templateid`),
  KEY `mdl_compplan_stadue_ix` (`status`,`duedate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Learning plans';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_plan`
--

LOCK TABLES `mdl_competency_plan` WRITE;
/*!40000 ALTER TABLE `mdl_competency_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_plancomp`
--

DROP TABLE IF EXISTS `mdl_competency_plancomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_plancomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `planid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `sortorder` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compplan_placom_uix` (`planid`,`competencyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Plan competencies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_plancomp`
--

LOCK TABLES `mdl_competency_plancomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_plancomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_plancomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_relatedcomp`
--

DROP TABLE IF EXISTS `mdl_competency_relatedcomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_relatedcomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `competencyid` bigint(10) NOT NULL,
  `relatedcompetencyid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Related competencies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_relatedcomp`
--

LOCK TABLES `mdl_competency_relatedcomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_relatedcomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_relatedcomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_template`
--

DROP TABLE IF EXISTS `mdl_competency_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_template` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `contextid` bigint(10) NOT NULL,
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `descriptionformat` smallint(4) NOT NULL DEFAULT 0,
  `visible` tinyint(2) NOT NULL DEFAULT 1,
  `duedate` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Learning plan templates.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_template`
--

LOCK TABLES `mdl_competency_template` WRITE;
/*!40000 ALTER TABLE `mdl_competency_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_templatecohort`
--

DROP TABLE IF EXISTS `mdl_competency_templatecohort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_templatecohort` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `templateid` bigint(10) NOT NULL,
  `cohortid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_comptemp_temcoh_uix` (`templateid`,`cohortid`),
  KEY `mdl_comptemp_tem2_ix` (`templateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Default comment for the table, please edit me';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_templatecohort`
--

LOCK TABLES `mdl_competency_templatecohort` WRITE;
/*!40000 ALTER TABLE `mdl_competency_templatecohort` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_templatecohort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_templatecomp`
--

DROP TABLE IF EXISTS `mdl_competency_templatecomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_templatecomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `templateid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `sortorder` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_comptemp_tem_ix` (`templateid`),
  KEY `mdl_comptemp_com_ix` (`competencyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Link a competency to a learning plan template.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_templatecomp`
--

LOCK TABLES `mdl_competency_templatecomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_templatecomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_templatecomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_usercomp`
--

DROP TABLE IF EXISTS `mdl_competency_usercomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_usercomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `reviewerid` bigint(10) DEFAULT NULL,
  `proficiency` tinyint(2) DEFAULT NULL,
  `grade` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compuser_usecom_uix` (`userid`,`competencyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='User competencies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_usercomp`
--

LOCK TABLES `mdl_competency_usercomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_usercomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_usercomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_usercompcourse`
--

DROP TABLE IF EXISTS `mdl_competency_usercompcourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_usercompcourse` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `courseid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `proficiency` tinyint(2) DEFAULT NULL,
  `grade` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compuser_usecoucom_uix` (`userid`,`courseid`,`competencyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='User competencies in a course';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_usercompcourse`
--

LOCK TABLES `mdl_competency_usercompcourse` WRITE;
/*!40000 ALTER TABLE `mdl_competency_usercompcourse` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_usercompcourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_usercompplan`
--

DROP TABLE IF EXISTS `mdl_competency_usercompplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_usercompplan` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `planid` bigint(10) NOT NULL,
  `proficiency` tinyint(2) DEFAULT NULL,
  `grade` bigint(10) DEFAULT NULL,
  `sortorder` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compuser_usecompla_uix` (`userid`,`competencyid`,`planid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='User competencies plans';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_usercompplan`
--

LOCK TABLES `mdl_competency_usercompplan` WRITE;
/*!40000 ALTER TABLE `mdl_competency_usercompplan` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_usercompplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_userevidence`
--

DROP TABLE IF EXISTS `mdl_competency_userevidence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_userevidence` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_bin NOT NULL,
  `descriptionformat` tinyint(1) NOT NULL,
  `url` longtext COLLATE utf8mb4_bin NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_compuser_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='The evidence of prior learning';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_userevidence`
--

LOCK TABLES `mdl_competency_userevidence` WRITE;
/*!40000 ALTER TABLE `mdl_competency_userevidence` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_userevidence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_userevidencecomp`
--

DROP TABLE IF EXISTS `mdl_competency_userevidencecomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_competency_userevidencecomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userevidenceid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compuser_usecom2_uix` (`userevidenceid`,`competencyid`),
  KEY `mdl_compuser_use2_ix` (`userevidenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Relationship between user evidence and competencies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_userevidencecomp`
--

LOCK TABLES `mdl_competency_userevidencecomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_userevidencecomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_userevidencecomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_config`
--

DROP TABLE IF EXISTS `mdl_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_conf_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=464 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Moodle configuration variables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_config`
--

LOCK TABLES `mdl_config` WRITE;
/*!40000 ALTER TABLE `mdl_config` DISABLE KEYS */;
INSERT INTO `mdl_config` VALUES (2,'rolesactive','1'),(3,'auth','email'),(4,'enrol_plugins_enabled','manual,guest,self,cohort'),(5,'theme','boost'),(6,'filter_multilang_converted','1'),(7,'siteidentifier','jcnXon3iTbAgclY7pEmrtbebkZnP8zWzlocalhost'),(8,'backup_version','2008111700'),(9,'backup_release','2.0 dev'),(10,'mnet_dispatcher_mode','off'),(11,'sessiontimeout','7200'),(12,'stringfilters',''),(13,'filterall','0'),(14,'texteditors','atto,tinymce,textarea'),(15,'antiviruses',''),(16,'media_plugins_sortorder','videojs,youtube,swf'),(17,'upgrade_extracreditweightsstepignored','1'),(18,'upgrade_calculatedgradeitemsignored','1'),(19,'upgrade_letterboundarycourses','1'),(20,'mnet_localhost_id','1'),(21,'mnet_all_hosts_id','2'),(22,'siteguest','1'),(23,'siteadmins','2'),(24,'themerev','1543610247'),(25,'jsrev','1543610247'),(26,'gdversion','2'),(27,'licenses','unknown,allrightsreserved,public,cc,cc-nd,cc-nc-nd,cc-nc,cc-nc-sa,cc-sa'),(28,'version','2018051703.05'),(29,'enableoutcomes','0'),(30,'usecomments','1'),(31,'usetags','1'),(32,'enablenotes','1'),(33,'enableportfolios','0'),(34,'enablewebservices','1'),(35,'messaging','1'),(36,'messagingdeletereadnotificationsdelay','604800'),(37,'messagingallowemailoverride','0'),(38,'enablestats','0'),(39,'enablerssfeeds','0'),(40,'enableblogs','1'),(41,'enablecompletion','1'),(42,'completiondefault','1'),(43,'enableavailability','1'),(44,'enableplagiarism','0'),(45,'enablebadges','1'),(46,'enableglobalsearch','0'),(47,'allowstealth','0'),(48,'defaultpreference_maildisplay','2'),(49,'defaultpreference_mailformat','1'),(50,'defaultpreference_maildigest','0'),(51,'defaultpreference_autosubscribe','1'),(52,'defaultpreference_trackforums','0'),(53,'autologinguests','0'),(54,'hiddenuserfields',''),(55,'showuseridentity','email'),(56,'fullnamedisplay','language'),(57,'alternativefullnameformat','language'),(58,'maxusersperpage','100'),(59,'enablegravatar','0'),(60,'gravatardefaulturl','mm'),(61,'agedigitalconsentverification','0'),(62,'agedigitalconsentmap','*, 16\nAT, 14\nES, 14\nUS, 13'),(63,'sitepolicy',''),(64,'sitepolicyguest',''),(65,'enablecourserequests','0'),(66,'defaultrequestcategory','1'),(67,'requestcategoryselection','0'),(68,'courserequestnotify',''),(69,'grade_profilereport','user'),(70,'grade_aggregationposition','1'),(71,'grade_includescalesinaggregation','1'),(72,'grade_hiddenasdate','0'),(73,'gradepublishing','0'),(74,'grade_export_exportfeedback','0'),(75,'grade_export_displaytype','1'),(76,'grade_export_decimalpoints','2'),(77,'grade_navmethod','1'),(78,'grade_export_userprofilefields','firstname,lastname,idnumber,institution,department,email'),(79,'grade_export_customprofilefields',''),(80,'recovergradesdefault','0'),(81,'gradeexport',''),(82,'unlimitedgrades','0'),(83,'grade_report_showmin','1'),(84,'gradepointmax','100'),(85,'gradepointdefault','100'),(86,'grade_minmaxtouse','1'),(87,'grade_mygrades_report','overview'),(88,'gradereport_mygradeurl',''),(89,'grade_hideforcedsettings','1'),(90,'grade_aggregation','13'),(91,'grade_aggregation_flag','0'),(92,'grade_aggregations_visible','13'),(93,'grade_aggregateonlygraded','1'),(94,'grade_aggregateonlygraded_flag','2'),(95,'grade_aggregateoutcomes','0'),(96,'grade_aggregateoutcomes_flag','2'),(97,'grade_keephigh','0'),(98,'grade_keephigh_flag','3'),(99,'grade_droplow','0'),(100,'grade_droplow_flag','2'),(101,'grade_overridecat','1'),(102,'grade_displaytype','1'),(103,'grade_decimalpoints','2'),(104,'grade_item_advanced','iteminfo,idnumber,gradepass,plusfactor,multfactor,display,decimals,hiddenuntil,locktime'),(105,'grade_report_studentsperpage','100'),(106,'grade_report_showonlyactiveenrol','1'),(107,'grade_report_quickgrading','1'),(108,'grade_report_showquickfeedback','0'),(109,'grade_report_meanselection','1'),(110,'grade_report_enableajax','0'),(111,'grade_report_showcalculations','1'),(112,'grade_report_showeyecons','0'),(113,'grade_report_showaverages','1'),(114,'grade_report_showlocks','0'),(115,'grade_report_showranges','0'),(116,'grade_report_showanalysisicon','1'),(117,'grade_report_showuserimage','1'),(118,'grade_report_showactivityicons','1'),(119,'grade_report_shownumberofgrades','0'),(120,'grade_report_averagesdisplaytype','inherit'),(121,'grade_report_rangesdisplaytype','inherit'),(122,'grade_report_averagesdecimalpoints','inherit'),(123,'grade_report_rangesdecimalpoints','inherit'),(124,'grade_report_historyperpage','50'),(125,'grade_report_overview_showrank','0'),(126,'grade_report_overview_showtotalsifcontainhidden','0'),(127,'grade_report_user_showrank','0'),(128,'grade_report_user_showpercentage','1'),(129,'grade_report_user_showgrade','1'),(130,'grade_report_user_showfeedback','1'),(131,'grade_report_user_showrange','1'),(132,'grade_report_user_showweight','1'),(133,'grade_report_user_showaverage','0'),(134,'grade_report_user_showlettergrade','0'),(135,'grade_report_user_rangedecimals','0'),(136,'grade_report_user_showhiddenitems','1'),(137,'grade_report_user_showtotalsifcontainhidden','0'),(138,'grade_report_user_showcontributiontocoursetotal','1'),(139,'badges_defaultissuername',''),(140,'badges_defaultissuercontact',''),(141,'badges_badgesalt','badges1543609691'),(142,'badges_allowexternalbackpack','1'),(143,'badges_allowcoursebadges','1'),(144,'timezone','Europe/London'),(145,'forcetimezone','99'),(146,'country','0'),(147,'defaultcity',''),(148,'geoip2file','/var/www/moodledata/geoip/GeoLite2-City.mmdb'),(149,'googlemapkey3',''),(150,'allcountrycodes',''),(151,'autolang','1'),(152,'lang','pt_br'),(153,'langmenu','1'),(154,'langlist',''),(155,'langrev','1544462015'),(156,'langcache','1'),(157,'langstringcache','1'),(158,'locale',''),(159,'latinexcelexport','0'),(160,'requiremodintro','0'),(161,'registerauth',''),(162,'authloginviaemail','0'),(163,'allowaccountssameemail','0'),(164,'authpreventaccountcreation','0'),(165,'loginpageautofocus','0'),(166,'guestloginbutton','1'),(167,'limitconcurrentlogins','0'),(168,'alternateloginurl',''),(169,'forgottenpasswordurl',''),(170,'auth_instructions',''),(171,'allowemailaddresses',''),(172,'denyemailaddresses',''),(173,'verifychangedemail','1'),(174,'recaptchapublickey',''),(175,'recaptchaprivatekey',''),(176,'filteruploadedfiles','0'),(177,'filtermatchoneperpage','0'),(178,'filtermatchonepertext','0'),(179,'sitedefaultlicense','allrightsreserved'),(180,'media_default_width','400'),(181,'media_default_height','300'),(182,'portfolio_moderate_filesize_threshold','1048576'),(183,'portfolio_high_filesize_threshold','5242880'),(184,'portfolio_moderate_db_threshold','20'),(185,'portfolio_high_db_threshold','50'),(186,'repositorycacheexpire','120'),(187,'repositorygetfiletimeout','30'),(188,'repositorysyncfiletimeout','1'),(189,'repositorysyncimagetimeout','3'),(190,'repositoryallowexternallinks','1'),(191,'legacyfilesinnewcourses','0'),(192,'legacyfilesaddallowed','1'),(193,'searchengine','simpledb'),(194,'searchindexwhendisabled','0'),(195,'searchindextime','600'),(196,'searchallavailablecourses','0'),(197,'enablewsdocumentation','1'),(198,'allowbeforeblock','0'),(199,'allowedip',''),(200,'blockedip',''),(201,'protectusernames','1'),(202,'forcelogin','0'),(203,'forceloginforprofiles','1'),(204,'forceloginforprofileimage','0'),(205,'opentogoogle','0'),(206,'allowindexing','0'),(207,'maxbytes','0'),(208,'userquota','104857600'),(209,'allowobjectembed','0'),(210,'enabletrusttext','0'),(211,'maxeditingtime','1800'),(212,'extendedusernamechars','0'),(213,'keeptagnamecase','1'),(214,'profilesforenrolledusersonly','1'),(215,'cronclionly','1'),(216,'cronremotepassword',''),(217,'lockoutthreshold','0'),(218,'lockoutwindow','1800'),(219,'lockoutduration','1800'),(220,'passwordpolicy','1'),(221,'minpasswordlength','8'),(222,'minpassworddigits','1'),(223,'minpasswordlower','1'),(224,'minpasswordupper','1'),(225,'minpasswordnonalphanum','1'),(226,'maxconsecutiveidentchars','0'),(227,'passwordreuselimit','0'),(228,'pwresettime','1800'),(229,'passwordchangelogout','0'),(230,'passwordchangetokendeletion','0'),(231,'tokenduration','7257600'),(232,'groupenrolmentkeypolicy','1'),(233,'disableuserimages','0'),(234,'emailchangeconfirmation','1'),(235,'rememberusername','2'),(236,'strictformsrequired','0'),(237,'cookiesecure','1'),(238,'cookiehttponly','0'),(239,'allowframembedding','0'),(240,'curlsecurityblockedhosts',''),(241,'curlsecurityallowedport',''),(242,'displayloginfailures','0'),(243,'notifyloginfailures',''),(244,'notifyloginthreshold','10'),(245,'themelist',''),(246,'themedesignermode','0'),(247,'allowuserthemes','0'),(248,'allowcoursethemes','0'),(249,'allowcategorythemes','0'),(250,'allowcohortthemes','0'),(251,'allowthemechangeonurl','0'),(252,'allowuserblockhiding','1'),(253,'allowblockstodock','1'),(254,'custommenuitems',''),(255,'customusermenuitems','grades,grades|/grade/report/mygrades.php|grades\nmessages,message|/message/index.php|message\npreferences,moodle|/user/preferences.php|preferences'),(256,'enabledevicedetection','1'),(257,'devicedetectregex','[]'),(258,'calendartype','gregorian'),(259,'calendar_adminseesall','0'),(260,'calendar_site_timeformat','0'),(261,'calendar_startwday','1'),(262,'calendar_weekend','65'),(263,'calendar_lookahead','21'),(264,'calendar_maxevents','10'),(265,'enablecalendarexport','1'),(266,'calendar_customexport','1'),(267,'calendar_exportlookahead','365'),(268,'calendar_exportlookback','5'),(269,'calendar_exportsalt','sbRMkp029ZKFR7nOATCCGM7AmmjnaBEgJeBUAu2D0xMjrrCxHTFOwqmeOsgd'),(270,'calendar_showicalsource','1'),(271,'useblogassociations','1'),(272,'bloglevel','4'),(273,'useexternalblogs','1'),(274,'externalblogcrontime','86400'),(275,'maxexternalblogsperuser','1'),(276,'blogusecomments','1'),(277,'blogshowcommentscount','1'),(278,'defaulthomepage','1'),(279,'allowguestmymoodle','1'),(280,'navshowfullcoursenames','0'),(281,'navshowcategories','1'),(282,'navshowmycoursecategories','0'),(283,'navshowallcourses','0'),(284,'navsortmycoursessort','sortorder'),(285,'navcourselimit','10'),(286,'usesitenameforsitepages','0'),(287,'linkadmincategories','1'),(288,'linkcoursesections','1'),(289,'navshowfrontpagemods','1'),(290,'navadduserpostslinks','1'),(291,'formatstringstriptags','1'),(292,'emoticons','[{\"text\":\":-)\",\"imagename\":\"s\\/smiley\",\"imagecomponent\":\"core\",\"altidentifier\":\"smiley\",\"altcomponent\":\"core_pix\"},{\"text\":\":)\",\"imagename\":\"s\\/smiley\",\"imagecomponent\":\"core\",\"altidentifier\":\"smiley\",\"altcomponent\":\"core_pix\"},{\"text\":\":-D\",\"imagename\":\"s\\/biggrin\",\"imagecomponent\":\"core\",\"altidentifier\":\"biggrin\",\"altcomponent\":\"core_pix\"},{\"text\":\";-)\",\"imagename\":\"s\\/wink\",\"imagecomponent\":\"core\",\"altidentifier\":\"wink\",\"altcomponent\":\"core_pix\"},{\"text\":\":-\\/\",\"imagename\":\"s\\/mixed\",\"imagecomponent\":\"core\",\"altidentifier\":\"mixed\",\"altcomponent\":\"core_pix\"},{\"text\":\"V-.\",\"imagename\":\"s\\/thoughtful\",\"imagecomponent\":\"core\",\"altidentifier\":\"thoughtful\",\"altcomponent\":\"core_pix\"},{\"text\":\":-P\",\"imagename\":\"s\\/tongueout\",\"imagecomponent\":\"core\",\"altidentifier\":\"tongueout\",\"altcomponent\":\"core_pix\"},{\"text\":\":-p\",\"imagename\":\"s\\/tongueout\",\"imagecomponent\":\"core\",\"altidentifier\":\"tongueout\",\"altcomponent\":\"core_pix\"},{\"text\":\"B-)\",\"imagename\":\"s\\/cool\",\"imagecomponent\":\"core\",\"altidentifier\":\"cool\",\"altcomponent\":\"core_pix\"},{\"text\":\"^-)\",\"imagename\":\"s\\/approve\",\"imagecomponent\":\"core\",\"altidentifier\":\"approve\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-)\",\"imagename\":\"s\\/wideeyes\",\"imagecomponent\":\"core\",\"altidentifier\":\"wideeyes\",\"altcomponent\":\"core_pix\"},{\"text\":\":o)\",\"imagename\":\"s\\/clown\",\"imagecomponent\":\"core\",\"altidentifier\":\"clown\",\"altcomponent\":\"core_pix\"},{\"text\":\":-(\",\"imagename\":\"s\\/sad\",\"imagecomponent\":\"core\",\"altidentifier\":\"sad\",\"altcomponent\":\"core_pix\"},{\"text\":\":(\",\"imagename\":\"s\\/sad\",\"imagecomponent\":\"core\",\"altidentifier\":\"sad\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-.\",\"imagename\":\"s\\/shy\",\"imagecomponent\":\"core\",\"altidentifier\":\"shy\",\"altcomponent\":\"core_pix\"},{\"text\":\":-I\",\"imagename\":\"s\\/blush\",\"imagecomponent\":\"core\",\"altidentifier\":\"blush\",\"altcomponent\":\"core_pix\"},{\"text\":\":-X\",\"imagename\":\"s\\/kiss\",\"imagecomponent\":\"core\",\"altidentifier\":\"kiss\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-o\",\"imagename\":\"s\\/surprise\",\"imagecomponent\":\"core\",\"altidentifier\":\"surprise\",\"altcomponent\":\"core_pix\"},{\"text\":\"P-|\",\"imagename\":\"s\\/blackeye\",\"imagecomponent\":\"core\",\"altidentifier\":\"blackeye\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-[\",\"imagename\":\"s\\/angry\",\"imagecomponent\":\"core\",\"altidentifier\":\"angry\",\"altcomponent\":\"core_pix\"},{\"text\":\"(grr)\",\"imagename\":\"s\\/angry\",\"imagecomponent\":\"core\",\"altidentifier\":\"angry\",\"altcomponent\":\"core_pix\"},{\"text\":\"xx-P\",\"imagename\":\"s\\/dead\",\"imagecomponent\":\"core\",\"altidentifier\":\"dead\",\"altcomponent\":\"core_pix\"},{\"text\":\"|-.\",\"imagename\":\"s\\/sleepy\",\"imagecomponent\":\"core\",\"altidentifier\":\"sleepy\",\"altcomponent\":\"core_pix\"},{\"text\":\"}-]\",\"imagename\":\"s\\/evil\",\"imagecomponent\":\"core\",\"altidentifier\":\"evil\",\"altcomponent\":\"core_pix\"},{\"text\":\"(h)\",\"imagename\":\"s\\/heart\",\"imagecomponent\":\"core\",\"altidentifier\":\"heart\",\"altcomponent\":\"core_pix\"},{\"text\":\"(heart)\",\"imagename\":\"s\\/heart\",\"imagecomponent\":\"core\",\"altidentifier\":\"heart\",\"altcomponent\":\"core_pix\"},{\"text\":\"(y)\",\"imagename\":\"s\\/yes\",\"imagecomponent\":\"core\",\"altidentifier\":\"yes\",\"altcomponent\":\"core\"},{\"text\":\"(n)\",\"imagename\":\"s\\/no\",\"imagecomponent\":\"core\",\"altidentifier\":\"no\",\"altcomponent\":\"core\"},{\"text\":\"(martin)\",\"imagename\":\"s\\/martin\",\"imagecomponent\":\"core\",\"altidentifier\":\"martin\",\"altcomponent\":\"core_pix\"},{\"text\":\"( )\",\"imagename\":\"s\\/egg\",\"imagecomponent\":\"core\",\"altidentifier\":\"egg\",\"altcomponent\":\"core_pix\"}]'),(293,'docroot','https://docs.moodle.org'),(294,'doclang',''),(295,'doctonewwindow','0'),(296,'courselistshortnames','0'),(297,'coursesperpage','20'),(298,'courseswithsummarieslimit','10'),(299,'courseoverviewfileslimit','1'),(300,'courseoverviewfilesext','.jpg,.gif,.png'),(301,'useexternalyui','0'),(302,'yuicomboloading','1'),(303,'cachejs','1'),(304,'modchooserdefault','1'),(305,'additionalhtmlhead',''),(306,'additionalhtmltopofbody',''),(307,'additionalhtmlfooter',''),(308,'pathtodu',''),(309,'aspellpath',''),(310,'pathtodot',''),(311,'pathtogs','/usr/bin/gs'),(312,'pathtopython',''),(313,'supportname','Admin User'),(314,'supportemail',''),(315,'supportpage',''),(316,'dbsessions','0'),(317,'sessioncookie',''),(318,'sessioncookiepath',''),(319,'sessioncookiedomain',''),(320,'statsfirstrun','none'),(321,'statsmaxruntime','0'),(322,'statsruntimedays','31'),(323,'statsuserthreshold','0'),(324,'slasharguments','1'),(325,'getremoteaddrconf','0'),(326,'proxyhost',''),(327,'proxyport','0'),(328,'proxytype','HTTP'),(329,'proxyuser',''),(330,'proxypassword',''),(331,'proxybypass','localhost, 127.0.0.1'),(332,'maintenance_enabled','0'),(333,'maintenance_message',''),(334,'deleteunconfirmed','168'),(335,'deleteincompleteusers','0'),(336,'disablegradehistory','0'),(337,'gradehistorylifetime','0'),(338,'tempdatafoldercleanup','168'),(339,'extramemorylimit','512M'),(340,'maxtimelimit','0'),(341,'curlcache','120'),(342,'curltimeoutkbitrate','56'),(343,'smtphosts',''),(344,'smtpsecure',''),(345,'smtpauthtype','LOGIN'),(346,'smtpuser',''),(347,'smtppass',''),(348,'smtpmaxbulk','1'),(349,'allowedemaildomains',''),(350,'sitemailcharset','0'),(351,'allowusermailcharset','0'),(352,'allowattachments','1'),(353,'mailnewline','LF'),(354,'emailfromvia','1'),(355,'updateautocheck','1'),(356,'updateminmaturity','200'),(357,'updatenotifybuilds','0'),(358,'enablesafebrowserintegration','0'),(359,'dndallowtextandlinks','0'),(360,'pathtosassc',''),(361,'forceclean','0'),(362,'debug','0'),(363,'debugdisplay','1'),(364,'debugsmtp','0'),(365,'perfdebug','7'),(366,'debugstringids','0'),(367,'debugvalidators','0'),(368,'debugpageinfo','0'),(369,'profilingenabled','0'),(370,'profilingincluded',''),(371,'profilingexcluded',''),(372,'profilingautofrec','0'),(373,'profilingallowme','0'),(374,'profilingallowall','0'),(375,'profilinglifetime','1440'),(376,'profilingimportprefix','(I)'),(377,'release','3.5.3+ (Build: 20181128)'),(378,'branch','35'),(379,'localcachedirpurged','1543610247'),(380,'scheduledtaskreset','1543610247'),(381,'allversionshash','1120adad30093ab2185987cc8634e8ac129b3320'),(382,'notloggedinroleid','6'),(383,'guestroleid','6'),(384,'defaultuserroleid','7'),(385,'creatornewroleid','3'),(386,'restorernewroleid','3'),(387,'sitepolicyhandler',''),(388,'gradebookroles','5'),(389,'chat_method','ajax'),(390,'chat_refresh_userlist','10'),(391,'chat_old_ping','35'),(392,'chat_refresh_room','5'),(393,'chat_normal_updatemode','jsupdate'),(394,'chat_serverhost','localhost'),(395,'chat_serverip','127.0.0.1'),(396,'chat_serverport','9111'),(397,'chat_servermax','100'),(398,'data_enablerssfeeds','0'),(399,'feedback_allowfullanonymous','0'),(400,'forum_displaymode','3'),(401,'forum_shortpost','300'),(402,'forum_longpost','600'),(403,'forum_manydiscussions','100'),(404,'forum_maxbytes','512000'),(405,'forum_maxattachments','9'),(406,'forum_subscription','0'),(407,'forum_trackingtype','1'),(408,'forum_trackreadposts','1'),(409,'forum_allowforcedreadtracking','0'),(410,'forum_oldpostdays','14'),(411,'forum_usermarksread','0'),(412,'forum_cleanreadtime','2'),(413,'digestmailtime','17'),(414,'forum_enablerssfeeds','0'),(415,'forum_enabletimedposts','1'),(416,'glossary_entbypage','10'),(417,'glossary_dupentries','0'),(418,'glossary_allowcomments','0'),(419,'glossary_linkbydefault','1'),(420,'glossary_defaultapproval','1'),(421,'glossary_enablerssfeeds','0'),(422,'glossary_linkentries','0'),(423,'glossary_casesensitive','0'),(424,'glossary_fullmatch','0'),(425,'block_course_list_adminview','all'),(426,'block_course_list_hideallcourseslink','0'),(427,'block_html_allowcssclasses','0'),(428,'block_online_users_timetosee','5'),(429,'block_rss_client_num_entries','5'),(430,'block_rss_client_timeout','30'),(431,'pathtounoconv','/usr/bin/unoconv'),(432,'filter_multilang_force_old','0'),(433,'filter_censor_badwords',''),(434,'logguests','1'),(435,'loglifetime','0'),(436,'jabberhost',''),(437,'jabberserver',''),(438,'jabberusername',''),(439,'jabberpassword',''),(440,'jabberport','5222'),(441,'airnotifierurl','https://messages.moodle.net'),(442,'airnotifierport','443'),(443,'airnotifiermobileappname','com.moodle.moodlemobile'),(444,'airnotifierappname','commoodlemoodlemobile'),(445,'airnotifieraccesskey',''),(446,'profileroles','5,4,3'),(447,'coursecontact','3'),(448,'frontpage','6'),(449,'frontpageloggedin','6'),(450,'maxcategorydepth','2'),(451,'frontpagecourselimit','200'),(452,'commentsperpage','15'),(453,'defaultfrontpageroleid','8'),(454,'messageinbound_enabled','0'),(455,'messageinbound_mailbox',''),(456,'messageinbound_domain',''),(457,'messageinbound_host',''),(458,'messageinbound_hostssl','ssl'),(459,'messageinbound_hostuser',''),(460,'messageinbound_hostpass',''),(461,'enablemobilewebservice','0'),(462,'registrationpending','0'),(463,'webserviceprotocols','rest');
/*!40000 ALTER TABLE `mdl_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_config_log`
--

DROP TABLE IF EXISTS `mdl_config_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_config_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `plugin` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `oldvalue` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_conflog_tim_ix` (`timemodified`),
  KEY `mdl_conflog_use_ix` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=1606 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Changes done in server configuration through admin UI';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_config_log`
--

LOCK TABLES `mdl_config_log` WRITE;
/*!40000 ALTER TABLE `mdl_config_log` DISABLE KEYS */;
INSERT INTO `mdl_config_log` VALUES (1,0,1543609773,NULL,'enableoutcomes','0',NULL),(2,0,1543609773,NULL,'usecomments','1',NULL),(3,0,1543609773,NULL,'usetags','1',NULL),(4,0,1543609773,NULL,'enablenotes','1',NULL),(5,0,1543609773,NULL,'enableportfolios','0',NULL),(6,0,1543609773,NULL,'enablewebservices','0',NULL),(7,0,1543609773,NULL,'messaging','1',NULL),(8,0,1543609773,NULL,'messagingdeletereadnotificationsdelay','604800',NULL),(9,0,1543609774,NULL,'messagingallowemailoverride','0',NULL),(10,0,1543609774,NULL,'enablestats','0',NULL),(11,0,1543609774,NULL,'enablerssfeeds','0',NULL),(12,0,1543609774,NULL,'enableblogs','1',NULL),(13,0,1543609774,NULL,'enablecompletion','1',NULL),(14,0,1543609774,NULL,'completiondefault','1',NULL),(15,0,1543609774,NULL,'enableavailability','1',NULL),(16,0,1543609775,NULL,'enableplagiarism','0',NULL),(17,0,1543609775,NULL,'enablebadges','1',NULL),(18,0,1543609775,NULL,'enableglobalsearch','0',NULL),(19,0,1543609775,NULL,'allowstealth','0',NULL),(20,0,1543609775,NULL,'defaultpreference_maildisplay','2',NULL),(21,0,1543609775,NULL,'defaultpreference_mailformat','1',NULL),(22,0,1543609775,NULL,'defaultpreference_maildigest','0',NULL),(23,0,1543609775,NULL,'defaultpreference_autosubscribe','1',NULL),(24,0,1543609775,NULL,'defaultpreference_trackforums','0',NULL),(25,0,1543609775,NULL,'autologinguests','0',NULL),(26,0,1543609775,NULL,'hiddenuserfields','',NULL),(27,0,1543609775,NULL,'showuseridentity','email',NULL),(28,0,1543609776,NULL,'fullnamedisplay','language',NULL),(29,0,1543609776,NULL,'alternativefullnameformat','language',NULL),(30,0,1543609776,NULL,'maxusersperpage','100',NULL),(31,0,1543609776,NULL,'enablegravatar','0',NULL),(32,0,1543609776,NULL,'gravatardefaulturl','mm',NULL),(33,0,1543609776,NULL,'agedigitalconsentverification','0',NULL),(34,0,1543609776,NULL,'agedigitalconsentmap','*, 16\nAT, 14\nES, 14\nUS, 13',NULL),(35,0,1543609777,NULL,'sitepolicy','',NULL),(36,0,1543609777,NULL,'sitepolicyguest','',NULL),(37,0,1543609778,'moodlecourse','visible','1',NULL),(38,0,1543609779,'moodlecourse','format','topics',NULL),(39,0,1543609780,'moodlecourse','maxsections','52',NULL),(40,0,1543609780,'moodlecourse','numsections','4',NULL),(41,0,1543609781,'moodlecourse','hiddensections','0',NULL),(42,0,1543609781,'moodlecourse','coursedisplay','0',NULL),(43,0,1543609782,'moodlecourse','courseenddateenabled','1',NULL),(44,0,1543609783,'moodlecourse','courseduration','31536000',NULL),(45,0,1543609783,'moodlecourse','lang','',NULL),(46,0,1543609784,'moodlecourse','newsitems','5',NULL),(47,0,1543609785,'moodlecourse','showgrades','1',NULL),(48,0,1543609786,'moodlecourse','showreports','0',NULL),(49,0,1543609787,'moodlecourse','maxbytes','0',NULL),(50,0,1543609787,'moodlecourse','enablecompletion','1',NULL),(51,0,1543609788,'moodlecourse','groupmode','0',NULL),(52,0,1543609788,'moodlecourse','groupmodeforce','0',NULL),(53,0,1543609788,NULL,'enablecourserequests','0',NULL),(54,0,1543609788,NULL,'defaultrequestcategory','1',NULL),(55,0,1543609788,NULL,'requestcategoryselection','0',NULL),(56,0,1543609789,NULL,'courserequestnotify','',NULL),(57,0,1543609790,'backup','loglifetime','30',NULL),(58,0,1543609790,'backup','backup_general_users','1',NULL),(59,0,1543609790,'backup','backup_general_users_locked','',NULL),(60,0,1543609791,'backup','backup_general_anonymize','0',NULL),(61,0,1543609791,'backup','backup_general_anonymize_locked','',NULL),(62,0,1543609791,'backup','backup_general_role_assignments','1',NULL),(63,0,1543609791,'backup','backup_general_role_assignments_locked','',NULL),(64,0,1543609792,'backup','backup_general_activities','1',NULL),(65,0,1543609792,'backup','backup_general_activities_locked','',NULL),(66,0,1543609792,'backup','backup_general_blocks','1',NULL),(67,0,1543609792,'backup','backup_general_blocks_locked','',NULL),(68,0,1543609792,'backup','backup_general_filters','1',NULL),(69,0,1543609792,'backup','backup_general_filters_locked','',NULL),(70,0,1543609792,'backup','backup_general_comments','1',NULL),(71,0,1543609792,'backup','backup_general_comments_locked','',NULL),(72,0,1543609792,'backup','backup_general_badges','1',NULL),(73,0,1543609792,'backup','backup_general_badges_locked','',NULL),(74,0,1543609792,'backup','backup_general_calendarevents','1',NULL),(75,0,1543609792,'backup','backup_general_calendarevents_locked','',NULL),(76,0,1543609793,'backup','backup_general_userscompletion','1',NULL),(77,0,1543609793,'backup','backup_general_userscompletion_locked','',NULL),(78,0,1543609793,'backup','backup_general_logs','0',NULL),(79,0,1543609793,'backup','backup_general_logs_locked','',NULL),(80,0,1543609793,'backup','backup_general_histories','0',NULL),(81,0,1543609793,'backup','backup_general_histories_locked','',NULL),(82,0,1543609793,'backup','backup_general_questionbank','1',NULL),(83,0,1543609793,'backup','backup_general_questionbank_locked','',NULL),(84,0,1543609793,'backup','backup_general_groups','1',NULL),(85,0,1543609793,'backup','backup_general_groups_locked','',NULL),(86,0,1543609793,'backup','backup_general_competencies','1',NULL),(87,0,1543609794,'backup','backup_general_competencies_locked','',NULL),(88,0,1543609794,'backup','import_general_maxresults','10',NULL),(89,0,1543609794,'backup','import_general_duplicate_admin_allowed','0',NULL),(90,0,1543609794,'backup','backup_import_activities','1',NULL),(91,0,1543609794,'backup','backup_import_activities_locked','',NULL),(92,0,1543609794,'backup','backup_import_blocks','1',NULL),(93,0,1543609794,'backup','backup_import_blocks_locked','',NULL),(94,0,1543609794,'backup','backup_import_filters','1',NULL),(95,0,1543609794,'backup','backup_import_filters_locked','',NULL),(96,0,1543609794,'backup','backup_import_calendarevents','1',NULL),(97,0,1543609794,'backup','backup_import_calendarevents_locked','',NULL),(98,0,1543609794,'backup','backup_import_questionbank','1',NULL),(99,0,1543609794,'backup','backup_import_questionbank_locked','',NULL),(100,0,1543609795,'backup','backup_import_groups','1',NULL),(101,0,1543609795,'backup','backup_import_groups_locked','',NULL),(102,0,1543609795,'backup','backup_import_competencies','1',NULL),(103,0,1543609795,'backup','backup_import_competencies_locked','',NULL),(104,0,1543609795,'backup','backup_auto_active','0',NULL),(105,0,1543609795,'backup','backup_auto_weekdays','0000000',NULL),(106,0,1543609795,'backup','backup_auto_hour','0',NULL),(107,0,1543609795,'backup','backup_auto_minute','0',NULL),(108,0,1543609795,'backup','backup_auto_storage','0',NULL),(109,0,1543609795,'backup','backup_auto_destination','',NULL),(110,0,1543609795,'backup','backup_auto_max_kept','1',NULL),(111,0,1543609795,'backup','backup_auto_delete_days','0',NULL),(112,0,1543609796,'backup','backup_auto_min_kept','0',NULL),(113,0,1543609796,'backup','backup_shortname','0',NULL),(114,0,1543609796,'backup','backup_auto_skip_hidden','1',NULL),(115,0,1543609796,'backup','backup_auto_skip_modif_days','30',NULL),(116,0,1543609796,'backup','backup_auto_skip_modif_prev','0',NULL),(117,0,1543609796,'backup','backup_auto_users','1',NULL),(118,0,1543609796,'backup','backup_auto_role_assignments','1',NULL),(119,0,1543609796,'backup','backup_auto_activities','1',NULL),(120,0,1543609797,'backup','backup_auto_blocks','1',NULL),(121,0,1543609797,'backup','backup_auto_filters','1',NULL),(122,0,1543609797,'backup','backup_auto_comments','1',NULL),(123,0,1543609797,'backup','backup_auto_badges','1',NULL),(124,0,1543609797,'backup','backup_auto_calendarevents','1',NULL),(125,0,1543609797,'backup','backup_auto_userscompletion','1',NULL),(126,0,1543609797,'backup','backup_auto_logs','0',NULL),(127,0,1543609797,'backup','backup_auto_histories','0',NULL),(128,0,1543609797,'backup','backup_auto_questionbank','1',NULL),(129,0,1543609797,'backup','backup_auto_groups','1',NULL),(130,0,1543609797,'backup','backup_auto_competencies','1',NULL),(131,0,1543609797,'restore','restore_general_users','1',NULL),(132,0,1543609798,'restore','restore_general_users_locked','',NULL),(133,0,1543609798,'restore','restore_general_enrolments','1',NULL),(134,0,1543609798,'restore','restore_general_enrolments_locked','',NULL),(135,0,1543609798,'restore','restore_general_role_assignments','1',NULL),(136,0,1543609798,'restore','restore_general_role_assignments_locked','',NULL),(137,0,1543609798,'restore','restore_general_activities','1',NULL),(138,0,1543609798,'restore','restore_general_activities_locked','',NULL),(139,0,1543609798,'restore','restore_general_blocks','1',NULL),(140,0,1543609798,'restore','restore_general_blocks_locked','',NULL),(141,0,1543609798,'restore','restore_general_filters','1',NULL),(142,0,1543609798,'restore','restore_general_filters_locked','',NULL),(143,0,1543609798,'restore','restore_general_comments','1',NULL),(144,0,1543609798,'restore','restore_general_comments_locked','',NULL),(145,0,1543609799,'restore','restore_general_badges','1',NULL),(146,0,1543609799,'restore','restore_general_badges_locked','',NULL),(147,0,1543609799,'restore','restore_general_calendarevents','1',NULL),(148,0,1543609799,'restore','restore_general_calendarevents_locked','',NULL),(149,0,1543609799,'restore','restore_general_userscompletion','1',NULL),(150,0,1543609799,'restore','restore_general_userscompletion_locked','',NULL),(151,0,1543609799,'restore','restore_general_logs','1',NULL),(152,0,1543609799,'restore','restore_general_logs_locked','',NULL),(153,0,1543609799,'restore','restore_general_histories','1',NULL),(154,0,1543609799,'restore','restore_general_histories_locked','',NULL),(155,0,1543609799,'restore','restore_general_groups','1',NULL),(156,0,1543609799,'restore','restore_general_groups_locked','',NULL),(157,0,1543609800,'restore','restore_general_competencies','1',NULL),(158,0,1543609800,'restore','restore_general_competencies_locked','',NULL),(159,0,1543609800,'restore','restore_merge_overwrite_conf','0',NULL),(160,0,1543609800,'restore','restore_merge_overwrite_conf_locked','',NULL),(161,0,1543609800,'restore','restore_merge_course_fullname','1',NULL),(162,0,1543609800,'restore','restore_merge_course_fullname_locked','',NULL),(163,0,1543609800,'restore','restore_merge_course_shortname','1',NULL),(164,0,1543609800,'restore','restore_merge_course_shortname_locked','',NULL),(165,0,1543609800,'restore','restore_merge_course_startdate','1',NULL),(166,0,1543609800,'restore','restore_merge_course_startdate_locked','',NULL),(167,0,1543609800,'restore','restore_replace_overwrite_conf','0',NULL),(168,0,1543609800,'restore','restore_replace_overwrite_conf_locked','',NULL),(169,0,1543609801,'restore','restore_replace_course_fullname','1',NULL),(170,0,1543609801,'restore','restore_replace_course_fullname_locked','',NULL),(171,0,1543609801,'restore','restore_replace_course_shortname','1',NULL),(172,0,1543609801,'restore','restore_replace_course_shortname_locked','',NULL),(173,0,1543609801,'restore','restore_replace_course_startdate','1',NULL),(174,0,1543609801,'restore','restore_replace_course_startdate_locked','',NULL),(175,0,1543609801,'restore','restore_replace_keep_roles_and_enrolments','0',NULL),(176,0,1543609801,'restore','restore_replace_keep_roles_and_enrolments_locked','',NULL),(177,0,1543609801,'restore','restore_replace_keep_groups_and_groupings','0',NULL),(178,0,1543609802,'restore','restore_replace_keep_groups_and_groupings_locked','',NULL),(179,0,1543609802,NULL,'grade_profilereport','user',NULL),(180,0,1543609802,NULL,'grade_aggregationposition','1',NULL),(181,0,1543609802,NULL,'grade_includescalesinaggregation','1',NULL),(182,0,1543609802,NULL,'grade_hiddenasdate','0',NULL),(183,0,1543609802,NULL,'gradepublishing','0',NULL),(184,0,1543609802,NULL,'grade_export_exportfeedback','0',NULL),(185,0,1543609802,NULL,'grade_export_displaytype','1',NULL),(186,0,1543609802,NULL,'grade_export_decimalpoints','2',NULL),(187,0,1543609803,NULL,'grade_navmethod','1',NULL),(188,0,1543609803,NULL,'grade_export_userprofilefields','firstname,lastname,idnumber,institution,department,email',NULL),(189,0,1543609803,NULL,'grade_export_customprofilefields','',NULL),(190,0,1543609803,NULL,'recovergradesdefault','0',NULL),(191,0,1543609803,NULL,'gradeexport','',NULL),(192,0,1543609803,NULL,'unlimitedgrades','0',NULL),(193,0,1543609803,NULL,'grade_report_showmin','1',NULL),(194,0,1543609803,NULL,'gradepointmax','100',NULL),(195,0,1543609803,NULL,'gradepointdefault','100',NULL),(196,0,1543609803,NULL,'grade_minmaxtouse','1',NULL),(197,0,1543609803,NULL,'grade_mygrades_report','overview',NULL),(198,0,1543609803,NULL,'gradereport_mygradeurl','',NULL),(199,0,1543609804,NULL,'grade_hideforcedsettings','1',NULL),(200,0,1543609804,NULL,'grade_aggregation','13',NULL),(201,0,1543609804,NULL,'grade_aggregation_flag','0',NULL),(202,0,1543609804,NULL,'grade_aggregations_visible','13',NULL),(203,0,1543609804,NULL,'grade_aggregateonlygraded','1',NULL),(204,0,1543609804,NULL,'grade_aggregateonlygraded_flag','2',NULL),(205,0,1543609804,NULL,'grade_aggregateoutcomes','0',NULL),(206,0,1543609804,NULL,'grade_aggregateoutcomes_flag','2',NULL),(207,0,1543609804,NULL,'grade_keephigh','0',NULL),(208,0,1543609804,NULL,'grade_keephigh_flag','3',NULL),(209,0,1543609804,NULL,'grade_droplow','0',NULL),(210,0,1543609804,NULL,'grade_droplow_flag','2',NULL),(211,0,1543609804,NULL,'grade_overridecat','1',NULL),(212,0,1543609805,NULL,'grade_displaytype','1',NULL),(213,0,1543609805,NULL,'grade_decimalpoints','2',NULL),(214,0,1543609805,NULL,'grade_item_advanced','iteminfo,idnumber,gradepass,plusfactor,multfactor,display,decimals,hiddenuntil,locktime',NULL),(215,0,1543609805,NULL,'grade_report_studentsperpage','100',NULL),(216,0,1543609805,NULL,'grade_report_showonlyactiveenrol','1',NULL),(217,0,1543609805,NULL,'grade_report_quickgrading','1',NULL),(218,0,1543609805,NULL,'grade_report_showquickfeedback','0',NULL),(219,0,1543609805,NULL,'grade_report_meanselection','1',NULL),(220,0,1543609805,NULL,'grade_report_enableajax','0',NULL),(221,0,1543609805,NULL,'grade_report_showcalculations','1',NULL),(222,0,1543609805,NULL,'grade_report_showeyecons','0',NULL),(223,0,1543609805,NULL,'grade_report_showaverages','1',NULL),(224,0,1543609805,NULL,'grade_report_showlocks','0',NULL),(225,0,1543609806,NULL,'grade_report_showranges','0',NULL),(226,0,1543609806,NULL,'grade_report_showanalysisicon','1',NULL),(227,0,1543609806,NULL,'grade_report_showuserimage','1',NULL),(228,0,1543609806,NULL,'grade_report_showactivityicons','1',NULL),(229,0,1543609806,NULL,'grade_report_shownumberofgrades','0',NULL),(230,0,1543609806,NULL,'grade_report_averagesdisplaytype','inherit',NULL),(231,0,1543609806,NULL,'grade_report_rangesdisplaytype','inherit',NULL),(232,0,1543609806,NULL,'grade_report_averagesdecimalpoints','inherit',NULL),(233,0,1543609806,NULL,'grade_report_rangesdecimalpoints','inherit',NULL),(234,0,1543609807,NULL,'grade_report_historyperpage','50',NULL),(235,0,1543609807,NULL,'grade_report_overview_showrank','0',NULL),(236,0,1543609807,NULL,'grade_report_overview_showtotalsifcontainhidden','0',NULL),(237,0,1543609807,NULL,'grade_report_user_showrank','0',NULL),(238,0,1543609807,NULL,'grade_report_user_showpercentage','1',NULL),(239,0,1543609807,NULL,'grade_report_user_showgrade','1',NULL),(240,0,1543609807,NULL,'grade_report_user_showfeedback','1',NULL),(241,0,1543609808,NULL,'grade_report_user_showrange','1',NULL),(242,0,1543609808,NULL,'grade_report_user_showweight','1',NULL),(243,0,1543609808,NULL,'grade_report_user_showaverage','0',NULL),(244,0,1543609808,NULL,'grade_report_user_showlettergrade','0',NULL),(245,0,1543609808,NULL,'grade_report_user_rangedecimals','0',NULL),(246,0,1543609808,NULL,'grade_report_user_showhiddenitems','1',NULL),(247,0,1543609808,NULL,'grade_report_user_showtotalsifcontainhidden','0',NULL),(248,0,1543609808,NULL,'grade_report_user_showcontributiontocoursetotal','1',NULL),(249,0,1543609808,'analytics','predictionsprocessor','\\mlbackend_php\\processor',NULL),(250,0,1543609808,'analytics','timesplittings','\\core\\analytics\\time_splitting\\quarters_accum,\\core\\analytics\\time_splitting\\quarters,\\core\\analytics\\time_splitting\\single_range',NULL),(251,0,1543609808,'analytics','modeloutputdir','/var/www/moodledata/models',NULL),(252,0,1543609808,'analytics','onlycli','1',NULL),(253,0,1543609808,'analytics','modeltimelimit','1200',NULL),(254,0,1543609809,'core_competency','enabled','1',NULL),(255,0,1543609809,'core_competency','pushcourseratingstouserplans','1',NULL),(256,0,1543609809,NULL,'badges_defaultissuername','',NULL),(257,0,1543609809,NULL,'badges_defaultissuercontact','',NULL),(258,0,1543609809,NULL,'badges_badgesalt','badges1543609691',NULL),(259,0,1543609809,NULL,'badges_allowexternalbackpack','1',NULL),(260,0,1543609809,NULL,'badges_allowcoursebadges','1',NULL),(261,0,1543609810,NULL,'timezone','Europe/London',NULL),(262,0,1543609810,NULL,'forcetimezone','99',NULL),(263,0,1543609810,NULL,'country','0',NULL),(264,0,1543609810,NULL,'defaultcity','',NULL),(265,0,1543609810,NULL,'geoip2file','/var/www/moodledata/geoip/GeoLite2-City.mmdb',NULL),(266,0,1543609811,NULL,'googlemapkey3','',NULL),(267,0,1543609811,NULL,'allcountrycodes','',NULL),(268,0,1543609811,NULL,'autolang','1',NULL),(269,0,1543609811,NULL,'lang','en',NULL),(270,0,1543609811,NULL,'langmenu','1',NULL),(271,0,1543609811,NULL,'langlist','',NULL),(272,0,1543609811,NULL,'langcache','1',NULL),(273,0,1543609811,NULL,'langstringcache','1',NULL),(274,0,1543609811,NULL,'locale','',NULL),(275,0,1543609811,NULL,'latinexcelexport','0',NULL),(276,0,1543609812,NULL,'requiremodintro','0',NULL),(277,0,1543609812,NULL,'registerauth','',NULL),(278,0,1543609812,NULL,'authloginviaemail','0',NULL),(279,0,1543609812,NULL,'allowaccountssameemail','0',NULL),(280,0,1543609812,NULL,'authpreventaccountcreation','0',NULL),(281,0,1543609812,NULL,'loginpageautofocus','0',NULL),(282,0,1543609812,NULL,'guestloginbutton','1',NULL),(283,0,1543609812,NULL,'limitconcurrentlogins','0',NULL),(284,0,1543609813,NULL,'alternateloginurl','',NULL),(285,0,1543609813,NULL,'forgottenpasswordurl','',NULL),(286,0,1543609813,NULL,'auth_instructions','',NULL),(287,0,1543609813,NULL,'allowemailaddresses','',NULL),(288,0,1543609813,NULL,'denyemailaddresses','',NULL),(289,0,1543609813,NULL,'verifychangedemail','1',NULL),(290,0,1543609813,NULL,'recaptchapublickey','',NULL),(291,0,1543609813,NULL,'recaptchaprivatekey','',NULL),(292,0,1543609813,'cachestore_apcu','testperformance','0',NULL),(293,0,1543609813,'cachestore_memcache','testservers','',NULL),(294,0,1543609813,'cachestore_memcached','testservers','',NULL),(295,0,1543609813,'cachestore_mongodb','testserver','',NULL),(296,0,1543609814,'cachestore_redis','test_server','',NULL),(297,0,1543609814,'cachestore_redis','test_password','',NULL),(298,0,1543609814,'cachestore_redis','test_serializer','1',NULL),(299,0,1543609814,NULL,'filteruploadedfiles','0',NULL),(300,0,1543609814,NULL,'filtermatchoneperpage','0',NULL),(301,0,1543609814,NULL,'filtermatchonepertext','0',NULL),(302,0,1543609814,NULL,'sitedefaultlicense','allrightsreserved',NULL),(303,0,1543609814,NULL,'media_default_width','400',NULL),(304,0,1543609814,NULL,'media_default_height','300',NULL),(305,0,1543609814,NULL,'portfolio_moderate_filesize_threshold','1048576',NULL),(306,0,1543609814,NULL,'portfolio_high_filesize_threshold','5242880',NULL),(307,0,1543609814,NULL,'portfolio_moderate_db_threshold','20',NULL),(308,0,1543609814,NULL,'portfolio_high_db_threshold','50',NULL),(309,0,1543609815,'question_preview','behaviour','deferredfeedback',NULL),(310,0,1543609815,'question_preview','correctness','1',NULL),(311,0,1543609815,'question_preview','marks','2',NULL),(312,0,1543609815,'question_preview','markdp','2',NULL),(313,0,1543609815,'question_preview','feedback','1',NULL),(314,0,1543609815,'question_preview','generalfeedback','1',NULL),(315,0,1543609815,'question_preview','rightanswer','1',NULL),(316,0,1543609815,'question_preview','history','0',NULL),(317,0,1543609815,NULL,'repositorycacheexpire','120',NULL),(318,0,1543609815,NULL,'repositorygetfiletimeout','30',NULL),(319,0,1543609815,NULL,'repositorysyncfiletimeout','1',NULL),(320,0,1543609816,NULL,'repositorysyncimagetimeout','3',NULL),(321,0,1543609816,NULL,'repositoryallowexternallinks','1',NULL),(322,0,1543609816,NULL,'legacyfilesinnewcourses','0',NULL),(323,0,1543609816,NULL,'legacyfilesaddallowed','1',NULL),(324,0,1543609816,NULL,'searchengine','simpledb',NULL),(325,0,1543609816,NULL,'searchindexwhendisabled','0',NULL),(326,0,1543609817,NULL,'searchindextime','600',NULL),(327,0,1543609817,NULL,'searchallavailablecourses','0',NULL),(328,0,1543609817,NULL,'enablewsdocumentation','0',NULL),(329,0,1543609817,NULL,'allowbeforeblock','0',NULL),(330,0,1543609817,NULL,'allowedip','',NULL),(331,0,1543609817,NULL,'blockedip','',NULL),(332,0,1543609817,NULL,'protectusernames','1',NULL),(333,0,1543609818,NULL,'forcelogin','0',NULL),(334,0,1543609818,NULL,'forceloginforprofiles','1',NULL),(335,0,1543609818,NULL,'forceloginforprofileimage','0',NULL),(336,0,1543609818,NULL,'opentogoogle','0',NULL),(337,0,1543609818,NULL,'allowindexing','0',NULL),(338,0,1543609818,NULL,'maxbytes','0',NULL),(339,0,1543609818,NULL,'userquota','104857600',NULL),(340,0,1543609818,NULL,'allowobjectembed','0',NULL),(341,0,1543609818,NULL,'enabletrusttext','0',NULL),(342,0,1543609818,NULL,'maxeditingtime','1800',NULL),(343,0,1543609818,NULL,'extendedusernamechars','0',NULL),(344,0,1543609819,NULL,'keeptagnamecase','1',NULL),(345,0,1543609819,NULL,'profilesforenrolledusersonly','1',NULL),(346,0,1543609819,NULL,'cronclionly','1',NULL),(347,0,1543609819,NULL,'cronremotepassword','',NULL),(348,0,1543609819,'tool_task','enablerunnow','1',NULL),(349,0,1543609819,NULL,'lockoutthreshold','0',NULL),(350,0,1543609819,NULL,'lockoutwindow','1800',NULL),(351,0,1543609819,NULL,'lockoutduration','1800',NULL),(352,0,1543609819,NULL,'passwordpolicy','1',NULL),(353,0,1543609819,NULL,'minpasswordlength','8',NULL),(354,0,1543609819,NULL,'minpassworddigits','1',NULL),(355,0,1543609819,NULL,'minpasswordlower','1',NULL),(356,0,1543609820,NULL,'minpasswordupper','1',NULL),(357,0,1543609820,NULL,'minpasswordnonalphanum','1',NULL),(358,0,1543609820,NULL,'maxconsecutiveidentchars','0',NULL),(359,0,1543609820,NULL,'passwordreuselimit','0',NULL),(360,0,1543609820,NULL,'pwresettime','1800',NULL),(361,0,1543609820,NULL,'passwordchangelogout','0',NULL),(362,0,1543609820,NULL,'passwordchangetokendeletion','0',NULL),(363,0,1543609820,NULL,'tokenduration','7257600',NULL),(364,0,1543609820,NULL,'groupenrolmentkeypolicy','1',NULL),(365,0,1543609820,NULL,'disableuserimages','0',NULL),(366,0,1543609821,NULL,'emailchangeconfirmation','1',NULL),(367,0,1543609821,NULL,'rememberusername','2',NULL),(368,0,1543609821,NULL,'strictformsrequired','0',NULL),(369,0,1543609821,NULL,'cookiesecure','1',NULL),(370,0,1543609821,NULL,'cookiehttponly','0',NULL),(371,0,1543609821,NULL,'allowframembedding','0',NULL),(372,0,1543609821,NULL,'curlsecurityblockedhosts','',NULL),(373,0,1543609821,NULL,'curlsecurityallowedport','',NULL),(374,0,1543609821,NULL,'displayloginfailures','0',NULL),(375,0,1543609821,NULL,'notifyloginfailures','',NULL),(376,0,1543609822,NULL,'notifyloginthreshold','10',NULL),(377,0,1543609822,NULL,'themelist','',NULL),(378,0,1543609822,NULL,'themedesignermode','0',NULL),(379,0,1543609822,NULL,'allowuserthemes','0',NULL),(380,0,1543609822,NULL,'allowcoursethemes','0',NULL),(381,0,1543609822,NULL,'allowcategorythemes','0',NULL),(382,0,1543609822,NULL,'allowcohortthemes','0',NULL),(383,0,1543609822,NULL,'allowthemechangeonurl','0',NULL),(384,0,1543609822,NULL,'allowuserblockhiding','1',NULL),(385,0,1543609822,NULL,'allowblockstodock','1',NULL),(386,0,1543609822,NULL,'custommenuitems','',NULL),(387,0,1543609823,NULL,'customusermenuitems','grades,grades|/grade/report/mygrades.php|grades\nmessages,message|/message/index.php|message\npreferences,moodle|/user/preferences.php|preferences',NULL),(388,0,1543609823,NULL,'enabledevicedetection','1',NULL),(389,0,1543609823,NULL,'devicedetectregex','[]',NULL),(390,0,1543609823,'theme_boost','preset','default.scss',NULL),(391,0,1543609823,'theme_boost','presetfiles','',NULL),(392,0,1543609823,'theme_boost','backgroundimage','',NULL),(393,0,1543609823,'theme_boost','brandcolor','',NULL),(394,0,1543609823,'theme_boost','scsspre','',NULL),(395,0,1543609823,'theme_boost','scss','',NULL),(396,0,1543609823,'theme_clean','invert','0',NULL),(397,0,1543609823,'theme_clean','logo','',NULL),(398,0,1543609824,'theme_clean','smalllogo','',NULL),(399,0,1543609824,'theme_clean','sitename','1',NULL),(400,0,1543609824,'theme_clean','customcss','',NULL),(401,0,1543609824,'theme_clean','footnote','',NULL),(402,0,1543609824,'theme_more','textcolor','#333366',NULL),(403,0,1543609824,'theme_more','linkcolor','#FF6500',NULL),(404,0,1543609824,'theme_more','bodybackground','',NULL),(405,0,1543609824,'theme_more','backgroundimage','',NULL),(406,0,1543609824,'theme_more','backgroundrepeat','repeat',NULL),(407,0,1543609824,'theme_more','backgroundposition','0',NULL),(408,0,1543609824,'theme_more','backgroundfixed','0',NULL),(409,0,1543609824,'theme_more','contentbackground','#FFFFFF',NULL),(410,0,1543609825,'theme_more','secondarybackground','#FFFFFF',NULL),(411,0,1543609825,'theme_more','invert','1',NULL),(412,0,1543609825,'theme_more','logo','',NULL),(413,0,1543609825,'theme_more','smalllogo','',NULL),(414,0,1543609825,'theme_more','sitename','1',NULL),(415,0,1543609825,'theme_more','customcss','',NULL),(416,0,1543609825,'theme_more','footnote','',NULL),(417,0,1543609825,'core_admin','logo','',NULL),(418,0,1543609825,'core_admin','logocompact','',NULL),(419,0,1543609825,NULL,'calendartype','gregorian',NULL),(420,0,1543609825,NULL,'calendar_adminseesall','0',NULL),(421,0,1543609825,NULL,'calendar_site_timeformat','0',NULL),(422,0,1543609826,NULL,'calendar_startwday','1',NULL),(423,0,1543609826,NULL,'calendar_weekend','65',NULL),(424,0,1543609826,NULL,'calendar_lookahead','21',NULL),(425,0,1543609826,NULL,'calendar_maxevents','10',NULL),(426,0,1543609826,NULL,'enablecalendarexport','1',NULL),(427,0,1543609826,NULL,'calendar_customexport','1',NULL),(428,0,1543609826,NULL,'calendar_exportlookahead','365',NULL),(429,0,1543609826,NULL,'calendar_exportlookback','5',NULL),(430,0,1543609826,NULL,'calendar_exportsalt','84j0ZlYOzecAys6CLLLRDfoOSOQY3R1xRajFOtKBsAOHAigOOwmdy2UrlxvM',NULL),(431,0,1543609826,NULL,'calendar_showicalsource','1',NULL),(432,0,1543609826,NULL,'useblogassociations','1',NULL),(433,0,1543609827,NULL,'bloglevel','4',NULL),(434,0,1543609827,NULL,'useexternalblogs','1',NULL),(435,0,1543609827,NULL,'externalblogcrontime','86400',NULL),(436,0,1543609827,NULL,'maxexternalblogsperuser','1',NULL),(437,0,1543609827,NULL,'blogusecomments','1',NULL),(438,0,1543609827,NULL,'blogshowcommentscount','1',NULL),(439,0,1543609827,NULL,'defaulthomepage','1',NULL),(440,0,1543609827,NULL,'allowguestmymoodle','1',NULL),(441,0,1543609828,NULL,'navshowfullcoursenames','0',NULL),(442,0,1543609828,NULL,'navshowcategories','1',NULL),(443,0,1543609828,NULL,'navshowmycoursecategories','0',NULL),(444,0,1543609828,NULL,'navshowallcourses','0',NULL),(445,0,1543609828,NULL,'navsortmycoursessort','sortorder',NULL),(446,0,1543609828,NULL,'navcourselimit','10',NULL),(447,0,1543609828,NULL,'usesitenameforsitepages','0',NULL),(448,0,1543609828,NULL,'linkadmincategories','1',NULL),(449,0,1543609828,NULL,'linkcoursesections','1',NULL),(450,0,1543609828,NULL,'navshowfrontpagemods','1',NULL),(451,0,1543609828,NULL,'navadduserpostslinks','1',NULL),(452,0,1543609828,NULL,'formatstringstriptags','1',NULL),(453,0,1543609828,NULL,'emoticons','[{\"text\":\":-)\",\"imagename\":\"s\\/smiley\",\"imagecomponent\":\"core\",\"altidentifier\":\"smiley\",\"altcomponent\":\"core_pix\"},{\"text\":\":)\",\"imagename\":\"s\\/smiley\",\"imagecomponent\":\"core\",\"altidentifier\":\"smiley\",\"altcomponent\":\"core_pix\"},{\"text\":\":-D\",\"imagename\":\"s\\/biggrin\",\"imagecomponent\":\"core\",\"altidentifier\":\"biggrin\",\"altcomponent\":\"core_pix\"},{\"text\":\";-)\",\"imagename\":\"s\\/wink\",\"imagecomponent\":\"core\",\"altidentifier\":\"wink\",\"altcomponent\":\"core_pix\"},{\"text\":\":-\\/\",\"imagename\":\"s\\/mixed\",\"imagecomponent\":\"core\",\"altidentifier\":\"mixed\",\"altcomponent\":\"core_pix\"},{\"text\":\"V-.\",\"imagename\":\"s\\/thoughtful\",\"imagecomponent\":\"core\",\"altidentifier\":\"thoughtful\",\"altcomponent\":\"core_pix\"},{\"text\":\":-P\",\"imagename\":\"s\\/tongueout\",\"imagecomponent\":\"core\",\"altidentifier\":\"tongueout\",\"altcomponent\":\"core_pix\"},{\"text\":\":-p\",\"imagename\":\"s\\/tongueout\",\"imagecomponent\":\"core\",\"altidentifier\":\"tongueout\",\"altcomponent\":\"core_pix\"},{\"text\":\"B-)\",\"imagename\":\"s\\/cool\",\"imagecomponent\":\"core\",\"altidentifier\":\"cool\",\"altcomponent\":\"core_pix\"},{\"text\":\"^-)\",\"imagename\":\"s\\/approve\",\"imagecomponent\":\"core\",\"altidentifier\":\"approve\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-)\",\"imagename\":\"s\\/wideeyes\",\"imagecomponent\":\"core\",\"altidentifier\":\"wideeyes\",\"altcomponent\":\"core_pix\"},{\"text\":\":o)\",\"imagename\":\"s\\/clown\",\"imagecomponent\":\"core\",\"altidentifier\":\"clown\",\"altcomponent\":\"core_pix\"},{\"text\":\":-(\",\"imagename\":\"s\\/sad\",\"imagecomponent\":\"core\",\"altidentifier\":\"sad\",\"altcomponent\":\"core_pix\"},{\"text\":\":(\",\"imagename\":\"s\\/sad\",\"imagecomponent\":\"core\",\"altidentifier\":\"sad\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-.\",\"imagename\":\"s\\/shy\",\"imagecomponent\":\"core\",\"altidentifier\":\"shy\",\"altcomponent\":\"core_pix\"},{\"text\":\":-I\",\"imagename\":\"s\\/blush\",\"imagecomponent\":\"core\",\"altidentifier\":\"blush\",\"altcomponent\":\"core_pix\"},{\"text\":\":-X\",\"imagename\":\"s\\/kiss\",\"imagecomponent\":\"core\",\"altidentifier\":\"kiss\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-o\",\"imagename\":\"s\\/surprise\",\"imagecomponent\":\"core\",\"altidentifier\":\"surprise\",\"altcomponent\":\"core_pix\"},{\"text\":\"P-|\",\"imagename\":\"s\\/blackeye\",\"imagecomponent\":\"core\",\"altidentifier\":\"blackeye\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-[\",\"imagename\":\"s\\/angry\",\"imagecomponent\":\"core\",\"altidentifier\":\"angry\",\"altcomponent\":\"core_pix\"},{\"text\":\"(grr)\",\"imagename\":\"s\\/angry\",\"imagecomponent\":\"core\",\"altidentifier\":\"angry\",\"altcomponent\":\"core_pix\"},{\"text\":\"xx-P\",\"imagename\":\"s\\/dead\",\"imagecomponent\":\"core\",\"altidentifier\":\"dead\",\"altcomponent\":\"core_pix\"},{\"text\":\"|-.\",\"imagename\":\"s\\/sleepy\",\"imagecomponent\":\"core\",\"altidentifier\":\"sleepy\",\"altcomponent\":\"core_pix\"},{\"text\":\"}-]\",\"imagename\":\"s\\/evil\",\"imagecomponent\":\"core\",\"altidentifier\":\"evil\",\"altcomponent\":\"core_pix\"},{\"text\":\"(h)\",\"imagename\":\"s\\/heart\",\"imagecomponent\":\"core\",\"altidentifier\":\"heart\",\"altcomponent\":\"core_pix\"},{\"text\":\"(heart)\",\"imagename\":\"s\\/heart\",\"imagecomponent\":\"core\",\"altidentifier\":\"heart\",\"altcomponent\":\"core_pix\"},{\"text\":\"(y)\",\"imagename\":\"s\\/yes\",\"imagecomponent\":\"core\",\"altidentifier\":\"yes\",\"altcomponent\":\"core\"},{\"text\":\"(n)\",\"imagename\":\"s\\/no\",\"imagecomponent\":\"core\",\"altidentifier\":\"no\",\"altcomponent\":\"core\"},{\"text\":\"(martin)\",\"imagename\":\"s\\/martin\",\"imagecomponent\":\"core\",\"altidentifier\":\"martin\",\"altcomponent\":\"core_pix\"},{\"text\":\"( )\",\"imagename\":\"s\\/egg\",\"imagecomponent\":\"core\",\"altidentifier\":\"egg\",\"altcomponent\":\"core_pix\"}]',NULL),(454,0,1543609829,NULL,'docroot','https://docs.moodle.org',NULL),(455,0,1543609829,NULL,'doclang','',NULL),(456,0,1543609829,NULL,'doctonewwindow','0',NULL),(457,0,1543609829,NULL,'courselistshortnames','0',NULL),(458,0,1543609829,NULL,'coursesperpage','20',NULL),(459,0,1543609829,NULL,'courseswithsummarieslimit','10',NULL),(460,0,1543609829,NULL,'courseoverviewfileslimit','1',NULL),(461,0,1543609830,NULL,'courseoverviewfilesext','.jpg,.gif,.png',NULL),(462,0,1543609830,NULL,'useexternalyui','0',NULL),(463,0,1543609830,NULL,'yuicomboloading','1',NULL),(464,0,1543609830,NULL,'cachejs','1',NULL),(465,0,1543609830,NULL,'modchooserdefault','1',NULL),(466,0,1543609830,NULL,'additionalhtmlhead','',NULL),(467,0,1543609830,NULL,'additionalhtmltopofbody','',NULL),(468,0,1543609830,NULL,'additionalhtmlfooter','',NULL),(469,0,1543609830,NULL,'pathtodu','',NULL),(470,0,1543609830,NULL,'aspellpath','',NULL),(471,0,1543609830,NULL,'pathtodot','',NULL),(472,0,1543609831,NULL,'pathtogs','/usr/bin/gs',NULL),(473,0,1543609831,NULL,'pathtopython','',NULL),(474,0,1543609831,NULL,'supportname','Admin User',NULL),(475,0,1543609831,NULL,'supportemail','',NULL),(476,0,1543609831,NULL,'supportpage','',NULL),(477,0,1543609831,NULL,'dbsessions','0',NULL),(478,0,1543609831,NULL,'sessioncookie','',NULL),(479,0,1543609831,NULL,'sessioncookiepath','',NULL),(480,0,1543609831,NULL,'sessioncookiedomain','',NULL),(481,0,1543609831,NULL,'statsfirstrun','none',NULL),(482,0,1543609831,NULL,'statsmaxruntime','0',NULL),(483,0,1543609831,NULL,'statsruntimedays','31',NULL),(484,0,1543609831,NULL,'statsuserthreshold','0',NULL),(485,0,1543609831,NULL,'slasharguments','1',NULL),(486,0,1543609832,NULL,'getremoteaddrconf','0',NULL),(487,0,1543609832,NULL,'proxyhost','',NULL),(488,0,1543609832,NULL,'proxyport','0',NULL),(489,0,1543609832,NULL,'proxytype','HTTP',NULL),(490,0,1543609832,NULL,'proxyuser','',NULL),(491,0,1543609832,NULL,'proxypassword','',NULL),(492,0,1543609832,NULL,'proxybypass','localhost, 127.0.0.1',NULL),(493,0,1543609832,NULL,'maintenance_enabled','0',NULL),(494,0,1543609832,NULL,'maintenance_message','',NULL),(495,0,1543609833,NULL,'deleteunconfirmed','168',NULL),(496,0,1543609833,NULL,'deleteincompleteusers','0',NULL),(497,0,1543609833,NULL,'disablegradehistory','0',NULL),(498,0,1543609833,NULL,'gradehistorylifetime','0',NULL),(499,0,1543609833,NULL,'tempdatafoldercleanup','168',NULL),(500,0,1543609833,NULL,'extramemorylimit','512M',NULL),(501,0,1543609833,NULL,'maxtimelimit','0',NULL),(502,0,1543609833,NULL,'curlcache','120',NULL),(503,0,1543609833,NULL,'curltimeoutkbitrate','56',NULL),(504,0,1543609833,NULL,'smtphosts','','mailhog:1025'),(505,0,1543609833,NULL,'smtpsecure','',NULL),(506,0,1543609833,NULL,'smtpauthtype','LOGIN',NULL),(507,0,1543609834,NULL,'smtpuser','',NULL),(508,0,1543609834,NULL,'smtppass','',NULL),(509,0,1543609834,NULL,'smtpmaxbulk','1',NULL),(510,0,1543609834,NULL,'allowedemaildomains','',NULL),(511,0,1543609834,NULL,'sitemailcharset','0',NULL),(512,0,1543609834,NULL,'allowusermailcharset','0',NULL),(513,0,1543609834,NULL,'allowattachments','1',NULL),(514,0,1543609834,NULL,'mailnewline','LF',NULL),(515,0,1543609834,NULL,'emailfromvia','1',NULL),(516,0,1543609834,NULL,'updateautocheck','1',NULL),(517,0,1543609834,NULL,'updateminmaturity','200',NULL),(518,0,1543609834,NULL,'updatenotifybuilds','0',NULL),(519,0,1543609835,NULL,'enablesafebrowserintegration','0',NULL),(520,0,1543609835,NULL,'dndallowtextandlinks','0',NULL),(521,0,1543609835,NULL,'pathtosassc','',NULL),(522,0,1543609835,NULL,'forceclean','0',NULL),(523,0,1543609835,NULL,'debug','0',NULL),(524,0,1543609835,NULL,'debugdisplay','1',NULL),(525,0,1543609835,NULL,'debugsmtp','0',NULL),(526,0,1543609835,NULL,'perfdebug','7',NULL),(527,0,1543609835,NULL,'debugstringids','0',NULL),(528,0,1543609835,NULL,'debugvalidators','0',NULL),(529,0,1543609835,NULL,'debugpageinfo','0',NULL),(530,0,1543609836,NULL,'profilingenabled','0',NULL),(531,0,1543609836,NULL,'profilingincluded','',NULL),(532,0,1543609836,NULL,'profilingexcluded','',NULL),(533,0,1543609836,NULL,'profilingautofrec','0',NULL),(534,0,1543609836,NULL,'profilingallowme','0',NULL),(535,0,1543609836,NULL,'profilingallowall','0',NULL),(536,0,1543609836,NULL,'profilinglifetime','1440',NULL),(537,0,1543609836,NULL,'profilingimportprefix','(I)',NULL),(538,0,1543610050,'activitynames','filter_active','1',''),(539,0,1543610053,'mathjaxloader','filter_active','1',''),(540,0,1543610054,'mediaplugin','filter_active','1',''),(541,2,1543610257,NULL,'notloggedinroleid','6',NULL),(542,2,1543610258,NULL,'guestroleid','6',NULL),(543,2,1543610258,NULL,'defaultuserroleid','7',NULL),(544,2,1543610258,NULL,'creatornewroleid','3',NULL),(545,2,1543610259,NULL,'restorernewroleid','3',NULL),(546,2,1543610259,'tool_dataprivacy','contactdataprotectionofficer','0',NULL),(547,2,1543610259,'tool_dataprivacy','automaticdeletionrequests','0',NULL),(548,2,1543610259,'tool_dataprivacy','privacyrequestexpiry','604800',NULL),(549,2,1543610259,'tool_dataprivacy','requireallenddatesforuserdeletion','1',NULL),(550,2,1543610259,'tool_dataprivacy','showdataretentionsummary','1',NULL),(551,2,1543610259,'tool_log','exportlog','1',NULL),(552,2,1543610260,NULL,'sitepolicyhandler','',NULL),(553,2,1543610260,NULL,'gradebookroles','5',NULL),(554,2,1543610260,'analytics','logstore','logstore_standard',NULL),(555,2,1543610261,'assign','feedback_plugin_for_gradebook','assignfeedback_comments',NULL),(556,2,1543610261,'assign','showrecentsubmissions','0',NULL),(557,2,1543610261,'assign','submissionreceipts','1',NULL),(558,2,1543610261,'assign','submissionstatement','This assignment is my own work, except where I have acknowledged the use of the works of other people.',NULL),(559,2,1543610261,'assign','maxperpage','-1',NULL),(560,2,1543610261,'assign','alwaysshowdescription','1',NULL),(561,2,1543610261,'assign','alwaysshowdescription_adv','',NULL),(562,2,1543610261,'assign','alwaysshowdescription_locked','',NULL),(563,2,1543610262,'assign','allowsubmissionsfromdate','0',NULL),(564,2,1543610262,'assign','allowsubmissionsfromdate_enabled','1',NULL),(565,2,1543610262,'assign','allowsubmissionsfromdate_adv','',NULL),(566,2,1543610262,'assign','duedate','604800',NULL),(567,2,1543610262,'assign','duedate_enabled','1',NULL),(568,2,1543610262,'assign','duedate_adv','',NULL),(569,2,1543610262,'assign','cutoffdate','1209600',NULL),(570,2,1543610262,'assign','cutoffdate_enabled','',NULL),(571,2,1543610262,'assign','cutoffdate_adv','',NULL),(572,2,1543610262,'assign','gradingduedate','1209600',NULL),(573,2,1543610262,'assign','gradingduedate_enabled','1',NULL),(574,2,1543610262,'assign','gradingduedate_adv','',NULL),(575,2,1543610262,'assign','submissiondrafts','0',NULL),(576,2,1543610263,'assign','submissiondrafts_adv','',NULL),(577,2,1543610263,'assign','submissiondrafts_locked','',NULL),(578,2,1543610263,'assign','requiresubmissionstatement','0',NULL),(579,2,1543610263,'assign','requiresubmissionstatement_adv','',NULL),(580,2,1543610263,'assign','requiresubmissionstatement_locked','',NULL),(581,2,1543610263,'assign','attemptreopenmethod','none',NULL),(582,2,1543610263,'assign','attemptreopenmethod_adv','',NULL),(583,2,1543610263,'assign','attemptreopenmethod_locked','',NULL),(584,2,1543610263,'assign','maxattempts','-1',NULL),(585,2,1543610263,'assign','maxattempts_adv','',NULL),(586,2,1543610264,'assign','maxattempts_locked','',NULL),(587,2,1543610264,'assign','teamsubmission','0',NULL),(588,2,1543610264,'assign','teamsubmission_adv','',NULL),(589,2,1543610264,'assign','teamsubmission_locked','',NULL),(590,2,1543610264,'assign','preventsubmissionnotingroup','0',NULL),(591,2,1543610264,'assign','preventsubmissionnotingroup_adv','',NULL),(592,2,1543610264,'assign','preventsubmissionnotingroup_locked','',NULL),(593,2,1543610264,'assign','requireallteammemberssubmit','0',NULL),(594,2,1543610264,'assign','requireallteammemberssubmit_adv','',NULL),(595,2,1543610264,'assign','requireallteammemberssubmit_locked','',NULL),(596,2,1543610264,'assign','teamsubmissiongroupingid','',NULL),(597,2,1543610264,'assign','teamsubmissiongroupingid_adv','',NULL),(598,2,1543610264,'assign','sendnotifications','0',NULL),(599,2,1543610265,'assign','sendnotifications_adv','',NULL),(600,2,1543610265,'assign','sendnotifications_locked','',NULL),(601,2,1543610265,'assign','sendlatenotifications','0',NULL),(602,2,1543610265,'assign','sendlatenotifications_adv','',NULL),(603,2,1543610265,'assign','sendlatenotifications_locked','',NULL),(604,2,1543610265,'assign','sendstudentnotifications','1',NULL),(605,2,1543610265,'assign','sendstudentnotifications_adv','',NULL),(606,2,1543610266,'assign','sendstudentnotifications_locked','',NULL),(607,2,1543610266,'assign','blindmarking','0',NULL),(608,2,1543610266,'assign','blindmarking_adv','',NULL),(609,2,1543610266,'assign','blindmarking_locked','',NULL),(610,2,1543610266,'assign','markingworkflow','0',NULL),(611,2,1543610266,'assign','markingworkflow_adv','',NULL),(612,2,1543610266,'assign','markingworkflow_locked','',NULL),(613,2,1543610266,'assign','markingallocation','0',NULL),(614,2,1543610266,'assign','markingallocation_adv','',NULL),(615,2,1543610266,'assign','markingallocation_locked','',NULL),(616,2,1543610266,'assignsubmission_file','default','1',NULL),(617,2,1543610266,'assignsubmission_file','maxfiles','20',NULL),(618,2,1543610266,'assignsubmission_file','filetypes','',NULL),(619,2,1543610267,'assignsubmission_file','maxbytes','0',NULL),(620,2,1543610267,'assignsubmission_onlinetext','default','0',NULL),(621,2,1543610267,'assignfeedback_comments','default','1',NULL),(622,2,1543610267,'assignfeedback_comments','inline','0',NULL),(623,2,1543610267,'assignfeedback_comments','inline_adv','',NULL),(624,2,1543610267,'assignfeedback_comments','inline_locked','',NULL),(625,2,1543610267,'assignfeedback_editpdf','default','1',NULL),(626,2,1543610267,'assignfeedback_editpdf','stamps','',NULL),(627,2,1543610267,'assignfeedback_file','default','0',NULL),(628,2,1543610267,'assignfeedback_offline','default','0',NULL),(629,2,1543610267,'book','numberingoptions','0,1,2,3',NULL),(630,2,1543610267,'book','navoptions','0,1,2',NULL),(631,2,1543610267,'book','numbering','1',NULL),(632,2,1543610268,'book','navstyle','1',NULL),(633,2,1543610268,NULL,'chat_method','ajax',NULL),(634,2,1543610268,NULL,'chat_refresh_userlist','10',NULL),(635,2,1543610268,NULL,'chat_old_ping','35',NULL),(636,2,1543610268,NULL,'chat_refresh_room','5',NULL),(637,2,1543610268,NULL,'chat_normal_updatemode','jsupdate',NULL),(638,2,1543610268,NULL,'chat_serverhost','localhost',NULL),(639,2,1543610268,NULL,'chat_serverip','127.0.0.1',NULL),(640,2,1543610268,NULL,'chat_serverport','9111',NULL),(641,2,1543610268,NULL,'chat_servermax','100',NULL),(642,2,1543610269,NULL,'data_enablerssfeeds','0',NULL),(643,2,1543610269,NULL,'feedback_allowfullanonymous','0',NULL),(644,2,1543610269,'resource','framesize','130',NULL),(645,2,1543610269,'resource','displayoptions','0,1,4,5,6',NULL),(646,2,1543610269,'resource','printintro','1',NULL),(647,2,1543610269,'resource','display','0',NULL),(648,2,1543610269,'resource','showsize','0',NULL),(649,2,1543610269,'resource','showtype','0',NULL),(650,2,1543610269,'resource','showdate','0',NULL),(651,2,1543610270,'resource','popupwidth','620',NULL),(652,2,1543610270,'resource','popupheight','450',NULL),(653,2,1543610270,'resource','filterfiles','0',NULL),(654,2,1543610270,'folder','showexpanded','1',NULL),(655,2,1543610270,'folder','maxsizetodownload','0',NULL),(656,2,1543610270,NULL,'forum_displaymode','3',NULL),(657,2,1543610270,NULL,'forum_shortpost','300',NULL),(658,2,1543610270,NULL,'forum_longpost','600',NULL),(659,2,1543610270,NULL,'forum_manydiscussions','100',NULL),(660,2,1543610271,NULL,'forum_maxbytes','512000',NULL),(661,2,1543610271,NULL,'forum_maxattachments','9',NULL),(662,2,1543610271,NULL,'forum_subscription','0',NULL),(663,2,1543610271,NULL,'forum_trackingtype','1',NULL),(664,2,1543610271,NULL,'forum_trackreadposts','1',NULL),(665,2,1543610271,NULL,'forum_allowforcedreadtracking','0',NULL),(666,2,1543610271,NULL,'forum_oldpostdays','14',NULL),(667,2,1543610271,NULL,'forum_usermarksread','0',NULL),(668,2,1543610271,NULL,'forum_cleanreadtime','2',NULL),(669,2,1543610271,NULL,'digestmailtime','17',NULL),(670,2,1543610271,NULL,'forum_enablerssfeeds','0',NULL),(671,2,1543610271,NULL,'forum_enabletimedposts','1',NULL),(672,2,1543610271,NULL,'glossary_entbypage','10',NULL),(673,2,1543610272,NULL,'glossary_dupentries','0',NULL),(674,2,1543610272,NULL,'glossary_allowcomments','0',NULL),(675,2,1543610272,NULL,'glossary_linkbydefault','1',NULL),(676,2,1543610272,NULL,'glossary_defaultapproval','1',NULL),(677,2,1543610272,NULL,'glossary_enablerssfeeds','0',NULL),(678,2,1543610272,NULL,'glossary_linkentries','0',NULL),(679,2,1543610272,NULL,'glossary_casesensitive','0',NULL),(680,2,1543610272,NULL,'glossary_fullmatch','0',NULL),(681,2,1543610272,'imscp','keepold','1',NULL),(682,2,1543610272,'imscp','keepold_adv','',NULL),(683,2,1543610272,'label','dndmedia','1',NULL),(684,2,1543610272,'label','dndresizewidth','400',NULL),(685,2,1543610273,'label','dndresizeheight','400',NULL),(686,2,1543610273,'mod_lesson','mediafile','',NULL),(687,2,1543610273,'mod_lesson','mediafile_adv','1',NULL),(688,2,1543610273,'mod_lesson','mediawidth','640',NULL),(689,2,1543610273,'mod_lesson','mediaheight','480',NULL),(690,2,1543610273,'mod_lesson','mediaclose','0',NULL),(691,2,1543610273,'mod_lesson','progressbar','0',NULL),(692,2,1543610273,'mod_lesson','progressbar_adv','',NULL),(693,2,1543610273,'mod_lesson','ongoing','0',NULL),(694,2,1543610273,'mod_lesson','ongoing_adv','1',NULL),(695,2,1543610273,'mod_lesson','displayleftmenu','0',NULL),(696,2,1543610273,'mod_lesson','displayleftmenu_adv','',NULL),(697,2,1543610274,'mod_lesson','displayleftif','0',NULL),(698,2,1543610274,'mod_lesson','displayleftif_adv','1',NULL),(699,2,1543610274,'mod_lesson','slideshow','0',NULL),(700,2,1543610274,'mod_lesson','slideshow_adv','1',NULL),(701,2,1543610274,'mod_lesson','slideshowwidth','640',NULL),(702,2,1543610274,'mod_lesson','slideshowheight','480',NULL),(703,2,1543610274,'mod_lesson','slideshowbgcolor','#FFFFFF',NULL),(704,2,1543610274,'mod_lesson','maxanswers','5',NULL),(705,2,1543610274,'mod_lesson','maxanswers_adv','1',NULL),(706,2,1543610274,'mod_lesson','defaultfeedback','0',NULL),(707,2,1543610274,'mod_lesson','defaultfeedback_adv','1',NULL),(708,2,1543610274,'mod_lesson','activitylink','',NULL),(709,2,1543610275,'mod_lesson','activitylink_adv','1',NULL),(710,2,1543610275,'mod_lesson','timelimit','0',NULL),(711,2,1543610275,'mod_lesson','timelimit_adv','',NULL),(712,2,1543610275,'mod_lesson','password','0',NULL),(713,2,1543610275,'mod_lesson','password_adv','1',NULL),(714,2,1543610275,'mod_lesson','modattempts','0',NULL),(715,2,1543610275,'mod_lesson','modattempts_adv','',NULL),(716,2,1543610275,'mod_lesson','displayreview','0',NULL),(717,2,1543610276,'mod_lesson','displayreview_adv','',NULL),(718,2,1543610276,'mod_lesson','maximumnumberofattempts','1',NULL),(719,2,1543610276,'mod_lesson','maximumnumberofattempts_adv','',NULL),(720,2,1543610276,'mod_lesson','defaultnextpage','0',NULL),(721,2,1543610276,'mod_lesson','defaultnextpage_adv','1',NULL),(722,2,1543610276,'mod_lesson','numberofpagestoshow','1',NULL),(723,2,1543610277,'mod_lesson','numberofpagestoshow_adv','1',NULL),(724,2,1543610277,'mod_lesson','practice','0',NULL),(725,2,1543610278,'mod_lesson','practice_adv','',NULL),(726,2,1543610278,'mod_lesson','customscoring','1',NULL),(727,2,1543610279,'mod_lesson','customscoring_adv','1',NULL),(728,2,1543610279,'mod_lesson','retakesallowed','0',NULL),(729,2,1543610279,'mod_lesson','retakesallowed_adv','',NULL),(730,2,1543610279,'mod_lesson','handlingofretakes','0',NULL),(731,2,1543610279,'mod_lesson','handlingofretakes_adv','1',NULL),(732,2,1543610279,'mod_lesson','minimumnumberofquestions','0',NULL),(733,2,1543610279,'mod_lesson','minimumnumberofquestions_adv','1',NULL),(734,2,1543610279,'page','displayoptions','5',NULL),(735,2,1543610280,'page','printheading','1',NULL),(736,2,1543610280,'page','printintro','0',NULL),(737,2,1543610280,'page','display','5',NULL),(738,2,1543610280,'page','popupwidth','620',NULL),(739,2,1543610281,'page','popupheight','450',NULL),(740,2,1543610281,'quiz','timelimit','0',NULL),(741,2,1543610281,'quiz','timelimit_adv','',NULL),(742,2,1543610282,'quiz','overduehandling','autosubmit',NULL),(743,2,1543610282,'quiz','overduehandling_adv','',NULL),(744,2,1543610283,'quiz','graceperiod','86400',NULL),(745,2,1543610283,'quiz','graceperiod_adv','',NULL),(746,2,1543610283,'quiz','graceperiodmin','60',NULL),(747,2,1543610283,'quiz','attempts','0',NULL),(748,2,1543610283,'quiz','attempts_adv','',NULL),(749,2,1543610284,'quiz','grademethod','1',NULL),(750,2,1543610284,'quiz','grademethod_adv','',NULL),(751,2,1543610284,'quiz','maximumgrade','10',NULL),(752,2,1543610284,'quiz','questionsperpage','1',NULL),(753,2,1543610284,'quiz','questionsperpage_adv','',NULL),(754,2,1543610284,'quiz','navmethod','free',NULL),(755,2,1543610284,'quiz','navmethod_adv','1',NULL),(756,2,1543610284,'quiz','shuffleanswers','1',NULL),(757,2,1543610285,'quiz','shuffleanswers_adv','',NULL),(758,2,1543610285,'quiz','preferredbehaviour','deferredfeedback',NULL),(759,2,1543610285,'quiz','canredoquestions','0',NULL),(760,2,1543610285,'quiz','canredoquestions_adv','1',NULL),(761,2,1543610285,'quiz','attemptonlast','0',NULL),(762,2,1543610285,'quiz','attemptonlast_adv','1',NULL),(763,2,1543610285,'quiz','reviewattempt','69904',NULL),(764,2,1543610285,'quiz','reviewcorrectness','69904',NULL),(765,2,1543610285,'quiz','reviewmarks','69904',NULL),(766,2,1543610285,'quiz','reviewspecificfeedback','69904',NULL),(767,2,1543610285,'quiz','reviewgeneralfeedback','69904',NULL),(768,2,1543610286,'quiz','reviewrightanswer','69904',NULL),(769,2,1543610286,'quiz','reviewoverallfeedback','4368',NULL),(770,2,1543610286,'quiz','showuserpicture','0',NULL),(771,2,1543610286,'quiz','showuserpicture_adv','',NULL),(772,2,1543610286,'quiz','decimalpoints','2',NULL),(773,2,1543610286,'quiz','decimalpoints_adv','',NULL),(774,2,1543610286,'quiz','questiondecimalpoints','-1',NULL),(775,2,1543610286,'quiz','questiondecimalpoints_adv','1',NULL),(776,2,1543610286,'quiz','showblocks','0',NULL),(777,2,1543610286,'quiz','showblocks_adv','1',NULL),(778,2,1543610286,'quiz','password','',NULL),(779,2,1543610287,'quiz','password_adv','',NULL),(780,2,1543610287,'quiz','subnet','',NULL),(781,2,1543610287,'quiz','subnet_adv','1',NULL),(782,2,1543610287,'quiz','delay1','0',NULL),(783,2,1543610287,'quiz','delay1_adv','1',NULL),(784,2,1543610287,'quiz','delay2','0',NULL),(785,2,1543610287,'quiz','delay2_adv','1',NULL),(786,2,1543610287,'quiz','browsersecurity','-',NULL),(787,2,1543610287,'quiz','browsersecurity_adv','1',NULL),(788,2,1543610287,'quiz','initialnumfeedbacks','2',NULL),(789,2,1543610288,'quiz','autosaveperiod','60',NULL),(790,2,1543610288,'scorm','displaycoursestructure','0',NULL),(791,2,1543610288,'scorm','displaycoursestructure_adv','',NULL),(792,2,1543610288,'scorm','popup','0',NULL),(793,2,1543610288,'scorm','popup_adv','',NULL),(794,2,1543610288,'scorm','displayactivityname','1',NULL),(795,2,1543610288,'scorm','framewidth','100',NULL),(796,2,1543610288,'scorm','framewidth_adv','1',NULL),(797,2,1543610288,'scorm','frameheight','500',NULL),(798,2,1543610288,'scorm','frameheight_adv','1',NULL),(799,2,1543610289,'scorm','winoptgrp_adv','1',NULL),(800,2,1543610289,'scorm','scrollbars','0',NULL),(801,2,1543610289,'scorm','directories','0',NULL),(802,2,1543610289,'scorm','location','0',NULL),(803,2,1543610289,'scorm','menubar','0',NULL),(804,2,1543610289,'scorm','toolbar','0',NULL),(805,2,1543610289,'scorm','status','0',NULL),(806,2,1543610289,'scorm','skipview','0',NULL),(807,2,1543610289,'scorm','skipview_adv','1',NULL),(808,2,1543610289,'scorm','hidebrowse','0',NULL),(809,2,1543610289,'scorm','hidebrowse_adv','1',NULL),(810,2,1543610289,'scorm','hidetoc','0',NULL),(811,2,1543610290,'scorm','hidetoc_adv','1',NULL),(812,2,1543610290,'scorm','nav','1',NULL),(813,2,1543610290,'scorm','nav_adv','1',NULL),(814,2,1543610290,'scorm','navpositionleft','-100',NULL),(815,2,1543610290,'scorm','navpositionleft_adv','1',NULL),(816,2,1543610290,'scorm','navpositiontop','-100',NULL),(817,2,1543610290,'scorm','navpositiontop_adv','1',NULL),(818,2,1543610290,'scorm','collapsetocwinsize','767',NULL),(819,2,1543610291,'scorm','collapsetocwinsize_adv','1',NULL),(820,2,1543610291,'scorm','displayattemptstatus','1',NULL),(821,2,1543610291,'scorm','displayattemptstatus_adv','',NULL),(822,2,1543610291,'scorm','grademethod','1',NULL),(823,2,1543610291,'scorm','maxgrade','100',NULL),(824,2,1543610291,'scorm','maxattempt','0',NULL),(825,2,1543610291,'scorm','whatgrade','0',NULL),(826,2,1543610291,'scorm','forcecompleted','0',NULL),(827,2,1543610291,'scorm','forcenewattempt','0',NULL),(828,2,1543610291,'scorm','autocommit','0',NULL),(829,2,1543610291,'scorm','masteryoverride','1',NULL),(830,2,1543610291,'scorm','lastattemptlock','0',NULL),(831,2,1543610292,'scorm','auto','0',NULL),(832,2,1543610292,'scorm','updatefreq','0',NULL),(833,2,1543610292,'scorm','scormstandard','0',NULL),(834,2,1543610292,'scorm','allowtypeexternal','0',NULL),(835,2,1543610292,'scorm','allowtypelocalsync','0',NULL),(836,2,1543610292,'scorm','allowtypeexternalaicc','0',NULL),(837,2,1543610292,'scorm','allowaicchacp','0',NULL),(838,2,1543610292,'scorm','aicchacptimeout','30',NULL),(839,2,1543610292,'scorm','aicchacpkeepsessiondata','1',NULL),(840,2,1543610292,'scorm','aiccuserid','1',NULL),(841,2,1543610292,'scorm','forcejavascript','1',NULL),(842,2,1543610293,'scorm','allowapidebug','0',NULL),(843,2,1543610293,'scorm','apidebugmask','.*',NULL),(844,2,1543610293,'scorm','protectpackagedownloads','0',NULL),(845,2,1543610293,'url','framesize','130',NULL),(846,2,1543610293,'url','secretphrase','',NULL),(847,2,1543610293,'url','rolesinparams','0',NULL),(848,2,1543610293,'url','displayoptions','0,1,5,6',NULL),(849,2,1543610293,'url','printintro','1',NULL),(850,2,1543610293,'url','display','0',NULL),(851,2,1543610293,'url','popupwidth','620',NULL),(852,2,1543610293,'url','popupheight','450',NULL),(853,2,1543610294,'workshop','grade','80',NULL),(854,2,1543610294,'workshop','gradinggrade','20',NULL),(855,2,1543610294,'workshop','gradedecimals','0',NULL),(856,2,1543610294,'workshop','maxbytes','0',NULL),(857,2,1543610294,'workshop','strategy','accumulative',NULL),(858,2,1543610294,'workshop','examplesmode','0',NULL),(859,2,1543610294,'workshopallocation_random','numofreviews','5',NULL),(860,2,1543610294,'workshopform_numerrors','grade0','No',NULL),(861,2,1543610294,'workshopform_numerrors','grade1','Yes',NULL),(862,2,1543610294,'workshopeval_best','comparison','5',NULL),(863,2,1543610295,'tool_recyclebin','coursebinenable','1',NULL),(864,2,1543610295,'tool_recyclebin','coursebinexpiry','604800',NULL),(865,2,1543610295,'tool_recyclebin','categorybinenable','1',NULL),(866,2,1543610295,'tool_recyclebin','categorybinexpiry','604800',NULL),(867,2,1543610295,'tool_recyclebin','autohide','1',NULL),(868,2,1543610295,'antivirus_clamav','runningmethod','commandline',NULL),(869,2,1543610295,'antivirus_clamav','pathtoclam','',NULL),(870,2,1543610295,'antivirus_clamav','pathtounixsocket','',NULL),(871,2,1543610295,'antivirus_clamav','clamfailureonupload','donothing',NULL),(872,2,1543610296,'auth_cas','hostname','',NULL),(873,2,1543610296,'auth_cas','baseuri','',NULL),(874,2,1543610296,'auth_cas','port','0',NULL),(875,2,1543610296,'auth_cas','casversion','2.0',NULL),(876,2,1543610296,'auth_cas','language','CAS_Languages_English',NULL),(877,2,1543610296,'auth_cas','proxycas','0',NULL),(878,2,1543610296,'auth_cas','logoutcas','0',NULL),(879,2,1543610296,'auth_cas','multiauth','0',NULL),(880,2,1543610296,'auth_cas','certificate_check','0',NULL),(881,2,1543610296,'auth_cas','certificate_path','',NULL),(882,2,1543610296,'auth_cas','curl_ssl_version','',NULL),(883,2,1543610296,'auth_cas','logout_return_url','',NULL),(884,2,1543610296,'auth_cas','host_url','',NULL),(885,2,1543610297,'auth_cas','ldap_version','3',NULL),(886,2,1543610297,'auth_cas','start_tls','0',NULL),(887,2,1543610297,'auth_cas','ldapencoding','utf-8',NULL),(888,2,1543610297,'auth_cas','pagesize','250',NULL),(889,2,1543610297,'auth_cas','bind_dn','',NULL),(890,2,1543610297,'auth_cas','bind_pw','',NULL),(891,2,1543610297,'auth_cas','user_type','default',NULL),(892,2,1543610297,'auth_cas','contexts','',NULL),(893,2,1543610297,'auth_cas','search_sub','0',NULL),(894,2,1543610297,'auth_cas','opt_deref','0',NULL),(895,2,1543610297,'auth_cas','user_attribute','',NULL),(896,2,1543610297,'auth_cas','memberattribute','',NULL),(897,2,1543610298,'auth_cas','memberattribute_isdn','',NULL),(898,2,1543610298,'auth_cas','objectclass','',NULL),(899,2,1543610298,'auth_cas','attrcreators','',NULL),(900,2,1543610298,'auth_cas','groupecreators','',NULL),(901,2,1543610298,'auth_cas','removeuser','0',NULL),(902,2,1543610298,'auth_cas','field_map_firstname','',NULL),(903,2,1543610298,'auth_cas','field_updatelocal_firstname','oncreate',NULL),(904,2,1543610298,'auth_cas','field_updateremote_firstname','0',NULL),(905,2,1543610298,'auth_cas','field_lock_firstname','unlocked',NULL),(906,2,1543610298,'auth_cas','field_map_lastname','',NULL),(907,2,1543610299,'auth_cas','field_updatelocal_lastname','oncreate',NULL),(908,2,1543610299,'auth_cas','field_updateremote_lastname','0',NULL),(909,2,1543610299,'auth_cas','field_lock_lastname','unlocked',NULL),(910,2,1543610299,'auth_cas','field_map_email','',NULL),(911,2,1543610299,'auth_cas','field_updatelocal_email','oncreate',NULL),(912,2,1543610299,'auth_cas','field_updateremote_email','0',NULL),(913,2,1543610299,'auth_cas','field_lock_email','unlocked',NULL),(914,2,1543610299,'auth_cas','field_map_city','',NULL),(915,2,1543610299,'auth_cas','field_updatelocal_city','oncreate',NULL),(916,2,1543610299,'auth_cas','field_updateremote_city','0',NULL),(917,2,1543610299,'auth_cas','field_lock_city','unlocked',NULL),(918,2,1543610299,'auth_cas','field_map_country','',NULL),(919,2,1543610300,'auth_cas','field_updatelocal_country','oncreate',NULL),(920,2,1543610300,'auth_cas','field_updateremote_country','0',NULL),(921,2,1543610300,'auth_cas','field_lock_country','unlocked',NULL),(922,2,1543610300,'auth_cas','field_map_lang','',NULL),(923,2,1543610300,'auth_cas','field_updatelocal_lang','oncreate',NULL),(924,2,1543610300,'auth_cas','field_updateremote_lang','0',NULL),(925,2,1543610300,'auth_cas','field_lock_lang','unlocked',NULL),(926,2,1543610300,'auth_cas','field_map_description','',NULL),(927,2,1543610300,'auth_cas','field_updatelocal_description','oncreate',NULL),(928,2,1543610301,'auth_cas','field_updateremote_description','0',NULL),(929,2,1543610301,'auth_cas','field_lock_description','unlocked',NULL),(930,2,1543610301,'auth_cas','field_map_url','',NULL),(931,2,1543610301,'auth_cas','field_updatelocal_url','oncreate',NULL),(932,2,1543610301,'auth_cas','field_updateremote_url','0',NULL),(933,2,1543610301,'auth_cas','field_lock_url','unlocked',NULL),(934,2,1543610301,'auth_cas','field_map_idnumber','',NULL),(935,2,1543610301,'auth_cas','field_updatelocal_idnumber','oncreate',NULL),(936,2,1543610302,'auth_cas','field_updateremote_idnumber','0',NULL),(937,2,1543610302,'auth_cas','field_lock_idnumber','unlocked',NULL),(938,2,1543610302,'auth_cas','field_map_institution','',NULL),(939,2,1543610302,'auth_cas','field_updatelocal_institution','oncreate',NULL),(940,2,1543610302,'auth_cas','field_updateremote_institution','0',NULL),(941,2,1543610302,'auth_cas','field_lock_institution','unlocked',NULL),(942,2,1543610302,'auth_cas','field_map_department','',NULL),(943,2,1543610302,'auth_cas','field_updatelocal_department','oncreate',NULL),(944,2,1543610302,'auth_cas','field_updateremote_department','0',NULL),(945,2,1543610302,'auth_cas','field_lock_department','unlocked',NULL),(946,2,1543610302,'auth_cas','field_map_phone1','',NULL),(947,2,1543610302,'auth_cas','field_updatelocal_phone1','oncreate',NULL),(948,2,1543610303,'auth_cas','field_updateremote_phone1','0',NULL),(949,2,1543610303,'auth_cas','field_lock_phone1','unlocked',NULL),(950,2,1543610303,'auth_cas','field_map_phone2','',NULL),(951,2,1543610303,'auth_cas','field_updatelocal_phone2','oncreate',NULL),(952,2,1543610303,'auth_cas','field_updateremote_phone2','0',NULL),(953,2,1543610303,'auth_cas','field_lock_phone2','unlocked',NULL),(954,2,1543610303,'auth_cas','field_map_address','',NULL),(955,2,1543610303,'auth_cas','field_updatelocal_address','oncreate',NULL),(956,2,1543610303,'auth_cas','field_updateremote_address','0',NULL),(957,2,1543610303,'auth_cas','field_lock_address','unlocked',NULL),(958,2,1543610304,'auth_cas','field_map_firstnamephonetic','',NULL),(959,2,1543610304,'auth_cas','field_updatelocal_firstnamephonetic','oncreate',NULL),(960,2,1543610304,'auth_cas','field_updateremote_firstnamephonetic','0',NULL),(961,2,1543610304,'auth_cas','field_lock_firstnamephonetic','unlocked',NULL),(962,2,1543610304,'auth_cas','field_map_lastnamephonetic','',NULL),(963,2,1543610304,'auth_cas','field_updatelocal_lastnamephonetic','oncreate',NULL),(964,2,1543610304,'auth_cas','field_updateremote_lastnamephonetic','0',NULL),(965,2,1543610304,'auth_cas','field_lock_lastnamephonetic','unlocked',NULL),(966,2,1543610304,'auth_cas','field_map_middlename','',NULL),(967,2,1543610304,'auth_cas','field_updatelocal_middlename','oncreate',NULL),(968,2,1543610304,'auth_cas','field_updateremote_middlename','0',NULL),(969,2,1543610304,'auth_cas','field_lock_middlename','unlocked',NULL),(970,2,1543610305,'auth_cas','field_map_alternatename','',NULL),(971,2,1543610305,'auth_cas','field_updatelocal_alternatename','oncreate',NULL),(972,2,1543610305,'auth_cas','field_updateremote_alternatename','0',NULL),(973,2,1543610305,'auth_cas','field_lock_alternatename','unlocked',NULL),(974,2,1543610305,'auth_email','recaptcha','0',NULL),(975,2,1543610305,'auth_email','field_lock_firstname','unlocked',NULL),(976,2,1543610305,'auth_email','field_lock_lastname','unlocked',NULL),(977,2,1543610305,'auth_email','field_lock_email','unlocked',NULL),(978,2,1543610305,'auth_email','field_lock_city','unlocked',NULL),(979,2,1543610306,'auth_email','field_lock_country','unlocked',NULL),(980,2,1543610306,'auth_email','field_lock_lang','unlocked',NULL),(981,2,1543610306,'auth_email','field_lock_description','unlocked',NULL),(982,2,1543610306,'auth_email','field_lock_url','unlocked',NULL),(983,2,1543610306,'auth_email','field_lock_idnumber','unlocked',NULL),(984,2,1543610306,'auth_email','field_lock_institution','unlocked',NULL),(985,2,1543610306,'auth_email','field_lock_department','unlocked',NULL),(986,2,1543610306,'auth_email','field_lock_phone1','unlocked',NULL),(987,2,1543610306,'auth_email','field_lock_phone2','unlocked',NULL),(988,2,1543610306,'auth_email','field_lock_address','unlocked',NULL),(989,2,1543610306,'auth_email','field_lock_firstnamephonetic','unlocked',NULL),(990,2,1543610306,'auth_email','field_lock_lastnamephonetic','unlocked',NULL),(991,2,1543610307,'auth_email','field_lock_middlename','unlocked',NULL),(992,2,1543610307,'auth_email','field_lock_alternatename','unlocked',NULL),(993,2,1543610307,'auth_db','host','127.0.0.1',NULL),(994,2,1543610307,'auth_db','type','mysqli',NULL),(995,2,1543610307,'auth_db','sybasequoting','0',NULL),(996,2,1543610307,'auth_db','name','',NULL),(997,2,1543610307,'auth_db','user','',NULL),(998,2,1543610307,'auth_db','pass','',NULL),(999,2,1543610307,'auth_db','table','',NULL),(1000,2,1543610307,'auth_db','fielduser','',NULL),(1001,2,1543610307,'auth_db','fieldpass','',NULL),(1002,2,1543610307,'auth_db','passtype','plaintext',NULL),(1003,2,1543610307,'auth_db','extencoding','utf-8',NULL),(1004,2,1543610308,'auth_db','setupsql','',NULL),(1005,2,1543610308,'auth_db','debugauthdb','0',NULL),(1006,2,1543610308,'auth_db','changepasswordurl','',NULL),(1007,2,1543610308,'auth_db','removeuser','0',NULL),(1008,2,1543610308,'auth_db','updateusers','0',NULL),(1009,2,1543610308,'auth_db','field_map_firstname','',NULL),(1010,2,1543610308,'auth_db','field_updatelocal_firstname','oncreate',NULL),(1011,2,1543610308,'auth_db','field_updateremote_firstname','0',NULL),(1012,2,1543610308,'auth_db','field_lock_firstname','unlocked',NULL),(1013,2,1543610308,'auth_db','field_map_lastname','',NULL),(1014,2,1543610308,'auth_db','field_updatelocal_lastname','oncreate',NULL),(1015,2,1543610308,'auth_db','field_updateremote_lastname','0',NULL),(1016,2,1543610308,'auth_db','field_lock_lastname','unlocked',NULL),(1017,2,1543610309,'auth_db','field_map_email','',NULL),(1018,2,1543610309,'auth_db','field_updatelocal_email','oncreate',NULL),(1019,2,1543610309,'auth_db','field_updateremote_email','0',NULL),(1020,2,1543610309,'auth_db','field_lock_email','unlocked',NULL),(1021,2,1543610309,'auth_db','field_map_city','',NULL),(1022,2,1543610309,'auth_db','field_updatelocal_city','oncreate',NULL),(1023,2,1543610309,'auth_db','field_updateremote_city','0',NULL),(1024,2,1543610310,'auth_db','field_lock_city','unlocked',NULL),(1025,2,1543610310,'auth_db','field_map_country','',NULL),(1026,2,1543610310,'auth_db','field_updatelocal_country','oncreate',NULL),(1027,2,1543610310,'auth_db','field_updateremote_country','0',NULL),(1028,2,1543610310,'auth_db','field_lock_country','unlocked',NULL),(1029,2,1543610310,'auth_db','field_map_lang','',NULL),(1030,2,1543610310,'auth_db','field_updatelocal_lang','oncreate',NULL),(1031,2,1543610310,'auth_db','field_updateremote_lang','0',NULL),(1032,2,1543610311,'auth_db','field_lock_lang','unlocked',NULL),(1033,2,1543610311,'auth_db','field_map_description','',NULL),(1034,2,1543610311,'auth_db','field_updatelocal_description','oncreate',NULL),(1035,2,1543610312,'auth_db','field_updateremote_description','0',NULL),(1036,2,1543610312,'auth_db','field_lock_description','unlocked',NULL),(1037,2,1543610312,'auth_db','field_map_url','',NULL),(1038,2,1543610312,'auth_db','field_updatelocal_url','oncreate',NULL),(1039,2,1543610312,'auth_db','field_updateremote_url','0',NULL),(1040,2,1543610312,'auth_db','field_lock_url','unlocked',NULL),(1041,2,1543610312,'auth_db','field_map_idnumber','',NULL),(1042,2,1543610312,'auth_db','field_updatelocal_idnumber','oncreate',NULL),(1043,2,1543610313,'auth_db','field_updateremote_idnumber','0',NULL),(1044,2,1543610313,'auth_db','field_lock_idnumber','unlocked',NULL),(1045,2,1543610313,'auth_db','field_map_institution','',NULL),(1046,2,1543610313,'auth_db','field_updatelocal_institution','oncreate',NULL),(1047,2,1543610313,'auth_db','field_updateremote_institution','0',NULL),(1048,2,1543610313,'auth_db','field_lock_institution','unlocked',NULL),(1049,2,1543610313,'auth_db','field_map_department','',NULL),(1050,2,1543610313,'auth_db','field_updatelocal_department','oncreate',NULL),(1051,2,1543610313,'auth_db','field_updateremote_department','0',NULL),(1052,2,1543610313,'auth_db','field_lock_department','unlocked',NULL),(1053,2,1543610313,'auth_db','field_map_phone1','',NULL),(1054,2,1543610313,'auth_db','field_updatelocal_phone1','oncreate',NULL),(1055,2,1543610314,'auth_db','field_updateremote_phone1','0',NULL),(1056,2,1543610314,'auth_db','field_lock_phone1','unlocked',NULL),(1057,2,1543610314,'auth_db','field_map_phone2','',NULL),(1058,2,1543610314,'auth_db','field_updatelocal_phone2','oncreate',NULL),(1059,2,1543610314,'auth_db','field_updateremote_phone2','0',NULL),(1060,2,1543610314,'auth_db','field_lock_phone2','unlocked',NULL),(1061,2,1543610314,'auth_db','field_map_address','',NULL),(1062,2,1543610314,'auth_db','field_updatelocal_address','oncreate',NULL),(1063,2,1543610314,'auth_db','field_updateremote_address','0',NULL),(1064,2,1543610314,'auth_db','field_lock_address','unlocked',NULL),(1065,2,1543610314,'auth_db','field_map_firstnamephonetic','',NULL),(1066,2,1543610314,'auth_db','field_updatelocal_firstnamephonetic','oncreate',NULL),(1067,2,1543610315,'auth_db','field_updateremote_firstnamephonetic','0',NULL),(1068,2,1543610315,'auth_db','field_lock_firstnamephonetic','unlocked',NULL),(1069,2,1543610315,'auth_db','field_map_lastnamephonetic','',NULL),(1070,2,1543610315,'auth_db','field_updatelocal_lastnamephonetic','oncreate',NULL),(1071,2,1543610315,'auth_db','field_updateremote_lastnamephonetic','0',NULL),(1072,2,1543610315,'auth_db','field_lock_lastnamephonetic','unlocked',NULL),(1073,2,1543610315,'auth_db','field_map_middlename','',NULL),(1074,2,1543610315,'auth_db','field_updatelocal_middlename','oncreate',NULL),(1075,2,1543610315,'auth_db','field_updateremote_middlename','0',NULL),(1076,2,1543610315,'auth_db','field_lock_middlename','unlocked',NULL),(1077,2,1543610316,'auth_db','field_map_alternatename','',NULL),(1078,2,1543610316,'auth_db','field_updatelocal_alternatename','oncreate',NULL),(1079,2,1543610316,'auth_db','field_updateremote_alternatename','0',NULL),(1080,2,1543610316,'auth_db','field_lock_alternatename','unlocked',NULL),(1081,2,1543610316,'auth_ldap','host_url','',NULL),(1082,2,1543610316,'auth_ldap','ldap_version','3',NULL),(1083,2,1543610316,'auth_ldap','start_tls','0',NULL),(1084,2,1543610317,'auth_ldap','ldapencoding','utf-8',NULL),(1085,2,1543610317,'auth_ldap','pagesize','250',NULL),(1086,2,1543610317,'auth_ldap','preventpassindb','0',NULL),(1087,2,1543610317,'auth_ldap','bind_dn','',NULL),(1088,2,1543610317,'auth_ldap','bind_pw','',NULL),(1089,2,1543610317,'auth_ldap','user_type','default',NULL),(1090,2,1543610317,'auth_ldap','contexts','',NULL),(1091,2,1543610317,'auth_ldap','search_sub','0',NULL),(1092,2,1543610317,'auth_ldap','opt_deref','0',NULL),(1093,2,1543610318,'auth_ldap','user_attribute','',NULL),(1094,2,1543610318,'auth_ldap','suspended_attribute','',NULL),(1095,2,1543610318,'auth_ldap','memberattribute','',NULL),(1096,2,1543610318,'auth_ldap','memberattribute_isdn','',NULL),(1097,2,1543610318,'auth_ldap','objectclass','',NULL),(1098,2,1543610318,'auth_ldap','forcechangepassword','0',NULL),(1099,2,1543610318,'auth_ldap','stdchangepassword','0',NULL),(1100,2,1543610318,'auth_ldap','passtype','plaintext',NULL),(1101,2,1543610318,'auth_ldap','changepasswordurl','',NULL),(1102,2,1543610318,'auth_ldap','expiration','0',NULL),(1103,2,1543610318,'auth_ldap','expiration_warning','',NULL),(1104,2,1543610318,'auth_ldap','expireattr','',NULL),(1105,2,1543610318,'auth_ldap','gracelogins','0',NULL),(1106,2,1543610319,'auth_ldap','graceattr','',NULL),(1107,2,1543610319,'auth_ldap','auth_user_create','0',NULL),(1108,2,1543610319,'auth_ldap','create_context','',NULL),(1109,2,1543610319,'auth_ldap','managercontext','',NULL),(1110,2,1543610319,'auth_ldap','coursecreatorcontext','',NULL),(1111,2,1543610319,'auth_ldap','removeuser','0',NULL),(1112,2,1543610319,'auth_ldap','sync_suspended','0',NULL),(1113,2,1543610319,'auth_ldap','ntlmsso_enabled','0',NULL),(1114,2,1543610319,'auth_ldap','ntlmsso_subnet','',NULL),(1115,2,1543610319,'auth_ldap','ntlmsso_ie_fastpath','0',NULL),(1116,2,1543610319,'auth_ldap','ntlmsso_type','ntlm',NULL),(1117,2,1543610319,'auth_ldap','ntlmsso_remoteuserformat','',NULL),(1118,2,1543610319,'auth_ldap','field_map_firstname','',NULL),(1119,2,1543610320,'auth_ldap','field_updatelocal_firstname','oncreate',NULL),(1120,2,1543610320,'auth_ldap','field_updateremote_firstname','0',NULL),(1121,2,1543610320,'auth_ldap','field_lock_firstname','unlocked',NULL),(1122,2,1543610320,'auth_ldap','field_map_lastname','',NULL),(1123,2,1543610320,'auth_ldap','field_updatelocal_lastname','oncreate',NULL),(1124,2,1543610320,'auth_ldap','field_updateremote_lastname','0',NULL),(1125,2,1543610320,'auth_ldap','field_lock_lastname','unlocked',NULL),(1126,2,1543610320,'auth_ldap','field_map_email','',NULL),(1127,2,1543610320,'auth_ldap','field_updatelocal_email','oncreate',NULL),(1128,2,1543610320,'auth_ldap','field_updateremote_email','0',NULL),(1129,2,1543610320,'auth_ldap','field_lock_email','unlocked',NULL),(1130,2,1543610320,'auth_ldap','field_map_city','',NULL),(1131,2,1543610321,'auth_ldap','field_updatelocal_city','oncreate',NULL),(1132,2,1543610321,'auth_ldap','field_updateremote_city','0',NULL),(1133,2,1543610321,'auth_ldap','field_lock_city','unlocked',NULL),(1134,2,1543610321,'auth_ldap','field_map_country','',NULL),(1135,2,1543610321,'auth_ldap','field_updatelocal_country','oncreate',NULL),(1136,2,1543610321,'auth_ldap','field_updateremote_country','0',NULL),(1137,2,1543610321,'auth_ldap','field_lock_country','unlocked',NULL),(1138,2,1543610322,'auth_ldap','field_map_lang','',NULL),(1139,2,1543610322,'auth_ldap','field_updatelocal_lang','oncreate',NULL),(1140,2,1543610322,'auth_ldap','field_updateremote_lang','0',NULL),(1141,2,1543610322,'auth_ldap','field_lock_lang','unlocked',NULL),(1142,2,1543610322,'auth_ldap','field_map_description','',NULL),(1143,2,1543610322,'auth_ldap','field_updatelocal_description','oncreate',NULL),(1144,2,1543610322,'auth_ldap','field_updateremote_description','0',NULL),(1145,2,1543610322,'auth_ldap','field_lock_description','unlocked',NULL),(1146,2,1543610322,'auth_ldap','field_map_url','',NULL),(1147,2,1543610322,'auth_ldap','field_updatelocal_url','oncreate',NULL),(1148,2,1543610322,'auth_ldap','field_updateremote_url','0',NULL),(1149,2,1543610323,'auth_ldap','field_lock_url','unlocked',NULL),(1150,2,1543610323,'auth_ldap','field_map_idnumber','',NULL),(1151,2,1543610323,'auth_ldap','field_updatelocal_idnumber','oncreate',NULL),(1152,2,1543610323,'auth_ldap','field_updateremote_idnumber','0',NULL),(1153,2,1543610323,'auth_ldap','field_lock_idnumber','unlocked',NULL),(1154,2,1543610323,'auth_ldap','field_map_institution','',NULL),(1155,2,1543610323,'auth_ldap','field_updatelocal_institution','oncreate',NULL),(1156,2,1543610324,'auth_ldap','field_updateremote_institution','0',NULL),(1157,2,1543610324,'auth_ldap','field_lock_institution','unlocked',NULL),(1158,2,1543610324,'auth_ldap','field_map_department','',NULL),(1159,2,1543610324,'auth_ldap','field_updatelocal_department','oncreate',NULL),(1160,2,1543610324,'auth_ldap','field_updateremote_department','0',NULL),(1161,2,1543610324,'auth_ldap','field_lock_department','unlocked',NULL),(1162,2,1543610324,'auth_ldap','field_map_phone1','',NULL),(1163,2,1543610324,'auth_ldap','field_updatelocal_phone1','oncreate',NULL),(1164,2,1543610324,'auth_ldap','field_updateremote_phone1','0',NULL),(1165,2,1543610324,'auth_ldap','field_lock_phone1','unlocked',NULL),(1166,2,1543610324,'auth_ldap','field_map_phone2','',NULL),(1167,2,1543610324,'auth_ldap','field_updatelocal_phone2','oncreate',NULL),(1168,2,1543610324,'auth_ldap','field_updateremote_phone2','0',NULL),(1169,2,1543610325,'auth_ldap','field_lock_phone2','unlocked',NULL),(1170,2,1543610325,'auth_ldap','field_map_address','',NULL),(1171,2,1543610325,'auth_ldap','field_updatelocal_address','oncreate',NULL),(1172,2,1543610325,'auth_ldap','field_updateremote_address','0',NULL),(1173,2,1543610325,'auth_ldap','field_lock_address','unlocked',NULL),(1174,2,1543610325,'auth_ldap','field_map_firstnamephonetic','',NULL),(1175,2,1543610325,'auth_ldap','field_updatelocal_firstnamephonetic','oncreate',NULL),(1176,2,1543610325,'auth_ldap','field_updateremote_firstnamephonetic','0',NULL),(1177,2,1543610325,'auth_ldap','field_lock_firstnamephonetic','unlocked',NULL),(1178,2,1543610325,'auth_ldap','field_map_lastnamephonetic','',NULL),(1179,2,1543610325,'auth_ldap','field_updatelocal_lastnamephonetic','oncreate',NULL),(1180,2,1543610325,'auth_ldap','field_updateremote_lastnamephonetic','0',NULL),(1181,2,1543610325,'auth_ldap','field_lock_lastnamephonetic','unlocked',NULL),(1182,2,1543610326,'auth_ldap','field_map_middlename','',NULL),(1183,2,1543610326,'auth_ldap','field_updatelocal_middlename','oncreate',NULL),(1184,2,1543610326,'auth_ldap','field_updateremote_middlename','0',NULL),(1185,2,1543610326,'auth_ldap','field_lock_middlename','unlocked',NULL),(1186,2,1543610326,'auth_ldap','field_map_alternatename','',NULL),(1187,2,1543610326,'auth_ldap','field_updatelocal_alternatename','oncreate',NULL),(1188,2,1543610326,'auth_ldap','field_updateremote_alternatename','0',NULL),(1189,2,1543610326,'auth_ldap','field_lock_alternatename','unlocked',NULL),(1190,2,1543610326,'auth_manual','expiration','0',NULL),(1191,2,1543610326,'auth_manual','expirationtime','30',NULL),(1192,2,1543610326,'auth_manual','expiration_warning','0',NULL),(1193,2,1543610326,'auth_manual','field_lock_firstname','unlocked',NULL),(1194,2,1543610326,'auth_manual','field_lock_lastname','unlocked',NULL),(1195,2,1543610327,'auth_manual','field_lock_email','unlocked',NULL),(1196,2,1543610327,'auth_manual','field_lock_city','unlocked',NULL),(1197,2,1543610327,'auth_manual','field_lock_country','unlocked',NULL),(1198,2,1543610327,'auth_manual','field_lock_lang','unlocked',NULL),(1199,2,1543610327,'auth_manual','field_lock_description','unlocked',NULL),(1200,2,1543610327,'auth_manual','field_lock_url','unlocked',NULL),(1201,2,1543610327,'auth_manual','field_lock_idnumber','unlocked',NULL),(1202,2,1543610327,'auth_manual','field_lock_institution','unlocked',NULL),(1203,2,1543610327,'auth_manual','field_lock_department','unlocked',NULL),(1204,2,1543610327,'auth_manual','field_lock_phone1','unlocked',NULL),(1205,2,1543610327,'auth_manual','field_lock_phone2','unlocked',NULL),(1206,2,1543610327,'auth_manual','field_lock_address','unlocked',NULL),(1207,2,1543610327,'auth_manual','field_lock_firstnamephonetic','unlocked',NULL),(1208,2,1543610327,'auth_manual','field_lock_lastnamephonetic','unlocked',NULL),(1209,2,1543610328,'auth_manual','field_lock_middlename','unlocked',NULL),(1210,2,1543610328,'auth_manual','field_lock_alternatename','unlocked',NULL),(1211,2,1543610328,'auth_mnet','rpc_negotiation_timeout','30',NULL),(1212,2,1543610328,'auth_none','field_lock_firstname','unlocked',NULL),(1213,2,1543610328,'auth_none','field_lock_lastname','unlocked',NULL),(1214,2,1543610328,'auth_none','field_lock_email','unlocked',NULL),(1215,2,1543610328,'auth_none','field_lock_city','unlocked',NULL),(1216,2,1543610328,'auth_none','field_lock_country','unlocked',NULL),(1217,2,1543610329,'auth_none','field_lock_lang','unlocked',NULL),(1218,2,1543610329,'auth_none','field_lock_description','unlocked',NULL),(1219,2,1543610329,'auth_none','field_lock_url','unlocked',NULL),(1220,2,1543610329,'auth_none','field_lock_idnumber','unlocked',NULL),(1221,2,1543610329,'auth_none','field_lock_institution','unlocked',NULL),(1222,2,1543610329,'auth_none','field_lock_department','unlocked',NULL),(1223,2,1543610329,'auth_none','field_lock_phone1','unlocked',NULL),(1224,2,1543610329,'auth_none','field_lock_phone2','unlocked',NULL),(1225,2,1543610330,'auth_none','field_lock_address','unlocked',NULL),(1226,2,1543610330,'auth_none','field_lock_firstnamephonetic','unlocked',NULL),(1227,2,1543610330,'auth_none','field_lock_lastnamephonetic','unlocked',NULL),(1228,2,1543610330,'auth_none','field_lock_middlename','unlocked',NULL),(1229,2,1543610330,'auth_none','field_lock_alternatename','unlocked',NULL),(1230,2,1543610330,'auth_oauth2','field_lock_firstname','unlocked',NULL),(1231,2,1543610330,'auth_oauth2','field_lock_lastname','unlocked',NULL),(1232,2,1543610330,'auth_oauth2','field_lock_email','unlocked',NULL),(1233,2,1543610330,'auth_oauth2','field_lock_city','unlocked',NULL),(1234,2,1543610330,'auth_oauth2','field_lock_country','unlocked',NULL),(1235,2,1543610331,'auth_oauth2','field_lock_lang','unlocked',NULL),(1236,2,1543610331,'auth_oauth2','field_lock_description','unlocked',NULL),(1237,2,1543610331,'auth_oauth2','field_lock_url','unlocked',NULL),(1238,2,1543610331,'auth_oauth2','field_lock_idnumber','unlocked',NULL),(1239,2,1543610331,'auth_oauth2','field_lock_institution','unlocked',NULL),(1240,2,1543610331,'auth_oauth2','field_lock_department','unlocked',NULL),(1241,2,1543610331,'auth_oauth2','field_lock_phone1','unlocked',NULL),(1242,2,1543610331,'auth_oauth2','field_lock_phone2','unlocked',NULL),(1243,2,1543610331,'auth_oauth2','field_lock_address','unlocked',NULL),(1244,2,1543610331,'auth_oauth2','field_lock_firstnamephonetic','unlocked',NULL),(1245,2,1543610332,'auth_oauth2','field_lock_lastnamephonetic','unlocked',NULL),(1246,2,1543610332,'auth_oauth2','field_lock_middlename','unlocked',NULL),(1247,2,1543610332,'auth_oauth2','field_lock_alternatename','unlocked',NULL),(1248,2,1543610332,'auth_shibboleth','user_attribute','',NULL),(1249,2,1543610332,'auth_shibboleth','convert_data','',NULL),(1250,2,1543610332,'auth_shibboleth','alt_login','off',NULL),(1251,2,1543610332,'auth_shibboleth','organization_selection','urn:mace:organization1:providerID, Example Organization 1\n        https://another.idp-id.com/shibboleth, Other Example Organization, /Shibboleth.sso/DS/SWITCHaai\n        urn:mace:organization2:providerID, Example Organization 2, /Shibboleth.sso/WAYF/SWITCHaai',NULL),(1252,2,1543610332,'auth_shibboleth','logout_handler','',NULL),(1253,2,1543610332,'auth_shibboleth','logout_return_url','',NULL),(1254,2,1543610332,'auth_shibboleth','login_name','Shibboleth Login',NULL),(1255,2,1543610333,'auth_shibboleth','auth_instructions','Use the <a href=\"http://localhost/ava/auth/shibboleth/index.php\">Shibboleth login</a> to get access via Shibboleth, if your institution supports it.<br />Otherwise, use the normal login form shown here.',NULL),(1256,2,1543610333,'auth_shibboleth','changepasswordurl','',NULL),(1257,2,1543610333,'auth_shibboleth','field_map_firstname','',NULL),(1258,2,1543610333,'auth_shibboleth','field_updatelocal_firstname','oncreate',NULL),(1259,2,1543610333,'auth_shibboleth','field_lock_firstname','unlocked',NULL),(1260,2,1543610333,'auth_shibboleth','field_map_lastname','',NULL),(1261,2,1543610333,'auth_shibboleth','field_updatelocal_lastname','oncreate',NULL),(1262,2,1543610333,'auth_shibboleth','field_lock_lastname','unlocked',NULL),(1263,2,1543610334,'auth_shibboleth','field_map_email','',NULL),(1264,2,1543610334,'auth_shibboleth','field_updatelocal_email','oncreate',NULL),(1265,2,1543610334,'auth_shibboleth','field_lock_email','unlocked',NULL),(1266,2,1543610334,'auth_shibboleth','field_map_city','',NULL),(1267,2,1543610334,'auth_shibboleth','field_updatelocal_city','oncreate',NULL),(1268,2,1543610334,'auth_shibboleth','field_lock_city','unlocked',NULL),(1269,2,1543610334,'auth_shibboleth','field_map_country','',NULL),(1270,2,1543610334,'auth_shibboleth','field_updatelocal_country','oncreate',NULL),(1271,2,1543610334,'auth_shibboleth','field_lock_country','unlocked',NULL),(1272,2,1543610334,'auth_shibboleth','field_map_lang','',NULL),(1273,2,1543610334,'auth_shibboleth','field_updatelocal_lang','oncreate',NULL),(1274,2,1543610334,'auth_shibboleth','field_lock_lang','unlocked',NULL),(1275,2,1543610334,'auth_shibboleth','field_map_description','',NULL),(1276,2,1543610335,'auth_shibboleth','field_updatelocal_description','oncreate',NULL),(1277,2,1543610335,'auth_shibboleth','field_lock_description','unlocked',NULL),(1278,2,1543610335,'auth_shibboleth','field_map_url','',NULL),(1279,2,1543610335,'auth_shibboleth','field_updatelocal_url','oncreate',NULL),(1280,2,1543610335,'auth_shibboleth','field_lock_url','unlocked',NULL),(1281,2,1543610335,'auth_shibboleth','field_map_idnumber','',NULL),(1282,2,1543610335,'auth_shibboleth','field_updatelocal_idnumber','oncreate',NULL),(1283,2,1543610335,'auth_shibboleth','field_lock_idnumber','unlocked',NULL),(1284,2,1543610335,'auth_shibboleth','field_map_institution','',NULL),(1285,2,1543610335,'auth_shibboleth','field_updatelocal_institution','oncreate',NULL),(1286,2,1543610335,'auth_shibboleth','field_lock_institution','unlocked',NULL),(1287,2,1543610335,'auth_shibboleth','field_map_department','',NULL),(1288,2,1543610335,'auth_shibboleth','field_updatelocal_department','oncreate',NULL),(1289,2,1543610336,'auth_shibboleth','field_lock_department','unlocked',NULL),(1290,2,1543610336,'auth_shibboleth','field_map_phone1','',NULL),(1291,2,1543610336,'auth_shibboleth','field_updatelocal_phone1','oncreate',NULL),(1292,2,1543610336,'auth_shibboleth','field_lock_phone1','unlocked',NULL),(1293,2,1543610336,'auth_shibboleth','field_map_phone2','',NULL),(1294,2,1543610336,'auth_shibboleth','field_updatelocal_phone2','oncreate',NULL),(1295,2,1543610336,'auth_shibboleth','field_lock_phone2','unlocked',NULL),(1296,2,1543610336,'auth_shibboleth','field_map_address','',NULL),(1297,2,1543610336,'auth_shibboleth','field_updatelocal_address','oncreate',NULL),(1298,2,1543610336,'auth_shibboleth','field_lock_address','unlocked',NULL),(1299,2,1543610336,'auth_shibboleth','field_map_firstnamephonetic','',NULL),(1300,2,1543610336,'auth_shibboleth','field_updatelocal_firstnamephonetic','oncreate',NULL),(1301,2,1543610337,'auth_shibboleth','field_lock_firstnamephonetic','unlocked',NULL),(1302,2,1543610337,'auth_shibboleth','field_map_lastnamephonetic','',NULL),(1303,2,1543610337,'auth_shibboleth','field_updatelocal_lastnamephonetic','oncreate',NULL),(1304,2,1543610337,'auth_shibboleth','field_lock_lastnamephonetic','unlocked',NULL),(1305,2,1543610337,'auth_shibboleth','field_map_middlename','',NULL),(1306,2,1543610337,'auth_shibboleth','field_updatelocal_middlename','oncreate',NULL),(1307,2,1543610337,'auth_shibboleth','field_lock_middlename','unlocked',NULL),(1308,2,1543610337,'auth_shibboleth','field_map_alternatename','',NULL),(1309,2,1543610337,'auth_shibboleth','field_updatelocal_alternatename','oncreate',NULL),(1310,2,1543610337,'auth_shibboleth','field_lock_alternatename','unlocked',NULL),(1311,2,1543610337,'block_activity_results','config_showbest','3',NULL),(1312,2,1543610337,'block_activity_results','config_showbest_locked','',NULL),(1313,2,1543610338,'block_activity_results','config_showworst','0',NULL),(1314,2,1543610338,'block_activity_results','config_showworst_locked','',NULL),(1315,2,1543610338,'block_activity_results','config_usegroups','0',NULL),(1316,2,1543610338,'block_activity_results','config_usegroups_locked','',NULL),(1317,2,1543610338,'block_activity_results','config_nameformat','1',NULL),(1318,2,1543610338,'block_activity_results','config_nameformat_locked','',NULL),(1319,2,1543610338,'block_activity_results','config_gradeformat','1',NULL),(1320,2,1543610338,'block_activity_results','config_gradeformat_locked','',NULL),(1321,2,1543610338,'block_activity_results','config_decimalpoints','2',NULL),(1322,2,1543610338,'block_activity_results','config_decimalpoints_locked','',NULL),(1323,2,1543610339,'block_myoverview','defaulttab','timeline',NULL),(1324,2,1543610339,NULL,'block_course_list_adminview','all',NULL),(1325,2,1543610339,NULL,'block_course_list_hideallcourseslink','0',NULL),(1326,2,1543610339,NULL,'block_html_allowcssclasses','0',NULL),(1327,2,1543610339,NULL,'block_online_users_timetosee','5',NULL),(1328,2,1543610339,NULL,'block_rss_client_num_entries','5',NULL),(1329,2,1543610339,NULL,'block_rss_client_timeout','30',NULL),(1330,2,1543610339,'block_section_links','numsections1','22',NULL),(1331,2,1543610339,'block_section_links','incby1','2',NULL),(1332,2,1543610339,'block_section_links','numsections2','40',NULL),(1333,2,1543610339,'block_section_links','incby2','5',NULL),(1334,2,1543610339,'block_tag_youtube','apikey','',NULL),(1335,2,1543610340,'format_singleactivity','activitytype','forum',NULL),(1336,2,1543610340,'fileconverter_googledrive','issuerid','',NULL),(1337,2,1543610340,NULL,'pathtounoconv','/usr/bin/unoconv',NULL),(1338,2,1543610340,'enrol_cohort','roleid','5',NULL),(1339,2,1543610340,'enrol_cohort','unenrolaction','0',NULL),(1340,2,1543610340,'enrol_meta','nosyncroleids','',NULL),(1341,2,1543610340,'enrol_meta','syncall','1',NULL),(1342,2,1543610341,'enrol_meta','unenrolaction','3',NULL),(1343,2,1543610343,'enrol_meta','coursesort','sortorder',NULL),(1344,2,1543610344,'enrol_database','dbtype','',NULL),(1345,2,1543610344,'enrol_database','dbhost','localhost',NULL),(1346,2,1543610345,'enrol_database','dbuser','',NULL),(1347,2,1543610345,'enrol_database','dbpass','',NULL),(1348,2,1543610346,'enrol_database','dbname','',NULL),(1349,2,1543610346,'enrol_database','dbencoding','utf-8',NULL),(1350,2,1543610346,'enrol_database','dbsetupsql','',NULL),(1351,2,1543610346,'enrol_database','dbsybasequoting','0',NULL),(1352,2,1543610346,'enrol_database','debugdb','0',NULL),(1353,2,1543610346,'enrol_database','localcoursefield','idnumber',NULL),(1354,2,1543610346,'enrol_database','localuserfield','idnumber',NULL),(1355,2,1543610346,'enrol_database','localrolefield','shortname',NULL),(1356,2,1543610347,'enrol_database','localcategoryfield','id',NULL),(1357,2,1543610347,'enrol_database','remoteenroltable','',NULL),(1358,2,1543610347,'enrol_database','remotecoursefield','',NULL),(1359,2,1543610347,'enrol_database','remoteuserfield','',NULL),(1360,2,1543610347,'enrol_database','remoterolefield','',NULL),(1361,2,1543610347,'enrol_database','remoteotheruserfield','',NULL),(1362,2,1543610347,'enrol_database','defaultrole','5',NULL),(1363,2,1543610347,'enrol_database','ignorehiddencourses','0',NULL),(1364,2,1543610347,'enrol_database','unenrolaction','0',NULL),(1365,2,1543610347,'enrol_database','newcoursetable','',NULL),(1366,2,1543610347,'enrol_database','newcoursefullname','fullname',NULL),(1367,2,1543610347,'enrol_database','newcourseshortname','shortname',NULL),(1368,2,1543610348,'enrol_database','newcourseidnumber','idnumber',NULL),(1369,2,1543610348,'enrol_database','newcoursecategory','',NULL),(1370,2,1543610348,'enrol_database','defaultcategory','1',NULL),(1371,2,1543610348,'enrol_database','templatecourse','',NULL),(1372,2,1543610348,'enrol_flatfile','location','',NULL),(1373,2,1543610348,'enrol_flatfile','encoding','UTF-8',NULL),(1374,2,1543610348,'enrol_flatfile','mailstudents','0',NULL),(1375,2,1543610348,'enrol_flatfile','mailteachers','0',NULL),(1376,2,1543610349,'enrol_flatfile','mailadmins','0',NULL),(1377,2,1543610349,'enrol_flatfile','unenrolaction','3',NULL),(1378,2,1543610349,'enrol_flatfile','expiredaction','3',NULL),(1379,2,1543610349,'enrol_guest','requirepassword','0',NULL),(1380,2,1543610349,'enrol_guest','usepasswordpolicy','0',NULL),(1381,2,1543610349,'enrol_guest','showhint','0',NULL),(1382,2,1543610349,'enrol_guest','defaultenrol','1',NULL),(1383,2,1543610349,'enrol_guest','status','1',NULL),(1384,2,1543610349,'enrol_guest','status_adv','',NULL),(1385,2,1543610349,'enrol_imsenterprise','imsfilelocation','',NULL),(1386,2,1543610349,'enrol_imsenterprise','logtolocation','',NULL),(1387,2,1543610350,'enrol_imsenterprise','mailadmins','0',NULL),(1388,2,1543610350,'enrol_imsenterprise','createnewusers','0',NULL),(1389,2,1543610350,'enrol_imsenterprise','imsupdateusers','0',NULL),(1390,2,1543610350,'enrol_imsenterprise','imsdeleteusers','0',NULL),(1391,2,1543610350,'enrol_imsenterprise','fixcaseusernames','0',NULL),(1392,2,1543610350,'enrol_imsenterprise','fixcasepersonalnames','0',NULL),(1393,2,1543610350,'enrol_imsenterprise','imssourcedidfallback','0',NULL),(1394,2,1543610350,'enrol_imsenterprise','imsrolemap01','5',NULL),(1395,2,1543610350,'enrol_imsenterprise','imsrolemap02','3',NULL),(1396,2,1543610350,'enrol_imsenterprise','imsrolemap03','3',NULL),(1397,2,1543610350,'enrol_imsenterprise','imsrolemap04','5',NULL),(1398,2,1543610350,'enrol_imsenterprise','imsrolemap05','0',NULL),(1399,2,1543610350,'enrol_imsenterprise','imsrolemap06','4',NULL),(1400,2,1543610351,'enrol_imsenterprise','imsrolemap07','0',NULL),(1401,2,1543610351,'enrol_imsenterprise','imsrolemap08','4',NULL),(1402,2,1543610351,'enrol_imsenterprise','truncatecoursecodes','0',NULL),(1403,2,1543610351,'enrol_imsenterprise','createnewcourses','0',NULL),(1404,2,1543610351,'enrol_imsenterprise','updatecourses','0',NULL),(1405,2,1543610351,'enrol_imsenterprise','createnewcategories','0',NULL),(1406,2,1543610351,'enrol_imsenterprise','nestedcategories','0',NULL),(1407,2,1543610351,'enrol_imsenterprise','categoryidnumber','0',NULL),(1408,2,1543610351,'enrol_imsenterprise','categoryseparator','',NULL),(1409,2,1543610351,'enrol_imsenterprise','imsunenrol','0',NULL),(1410,2,1543610351,'enrol_imsenterprise','imscoursemapshortname','coursecode',NULL),(1411,2,1543610351,'enrol_imsenterprise','imscoursemapfullname','short',NULL),(1412,2,1543610351,'enrol_imsenterprise','imscoursemapsummary','ignore',NULL),(1413,2,1543610352,'enrol_imsenterprise','imsrestricttarget','',NULL),(1414,2,1543610352,'enrol_imsenterprise','imscapitafix','0',NULL),(1415,2,1543610352,'enrol_ldap','host_url','',NULL),(1416,2,1543610352,'enrol_ldap','start_tls','0',NULL),(1417,2,1543610352,'enrol_ldap','ldap_version','3',NULL),(1418,2,1543610352,'enrol_ldap','ldapencoding','utf-8',NULL),(1419,2,1543610352,'enrol_ldap','pagesize','250',NULL),(1420,2,1543610352,'enrol_ldap','bind_dn','',NULL),(1421,2,1543610352,'enrol_ldap','bind_pw','',NULL),(1422,2,1543610353,'enrol_ldap','course_search_sub','0',NULL),(1423,2,1543610353,'enrol_ldap','memberattribute_isdn','0',NULL),(1424,2,1543610353,'enrol_ldap','user_contexts','',NULL),(1425,2,1543610353,'enrol_ldap','user_search_sub','0',NULL),(1426,2,1543610353,'enrol_ldap','user_type','default',NULL),(1427,2,1543610353,'enrol_ldap','opt_deref','0',NULL),(1428,2,1543610353,'enrol_ldap','idnumber_attribute','',NULL),(1429,2,1543610353,'enrol_ldap','objectclass','',NULL),(1430,2,1543610353,'enrol_ldap','course_idnumber','',NULL),(1431,2,1543610353,'enrol_ldap','course_shortname','',NULL),(1432,2,1543610353,'enrol_ldap','course_fullname','',NULL),(1433,2,1543610353,'enrol_ldap','course_summary','',NULL),(1434,2,1543610354,'enrol_ldap','ignorehiddencourses','0',NULL),(1435,2,1543610354,'enrol_ldap','unenrolaction','0',NULL),(1436,2,1543610354,'enrol_ldap','autocreate','0',NULL),(1437,2,1543610354,'enrol_ldap','category','1',NULL),(1438,2,1543610354,'enrol_ldap','template','',NULL),(1439,2,1543610354,'enrol_ldap','course_shortname_updateonsync','0',NULL),(1440,2,1543610354,'enrol_ldap','course_fullname_updateonsync','0',NULL),(1441,2,1543610354,'enrol_ldap','course_summary_updateonsync','0',NULL),(1442,2,1543610354,'enrol_ldap','nested_groups','0',NULL),(1443,2,1543610354,'enrol_ldap','group_memberofattribute','',NULL),(1444,2,1543610354,'enrol_manual','expiredaction','1',NULL),(1445,2,1543610354,'enrol_manual','expirynotifyhour','6',NULL),(1446,2,1543610355,'enrol_manual','defaultenrol','1',NULL),(1447,2,1543610355,'enrol_manual','status','0',NULL),(1448,2,1543610355,'enrol_manual','roleid','5',NULL),(1449,2,1543610355,'enrol_manual','enrolstart','4',NULL),(1450,2,1543610355,'enrol_manual','enrolperiod','0',NULL),(1451,2,1543610355,'enrol_manual','expirynotify','0',NULL),(1452,2,1543610355,'enrol_manual','expirythreshold','86400',NULL),(1453,2,1543610355,'enrol_mnet','roleid','5',NULL),(1454,2,1543610355,'enrol_mnet','roleid_adv','1',NULL),(1455,2,1543610355,'enrol_paypal','paypalbusiness','',NULL),(1456,2,1543610355,'enrol_paypal','mailstudents','0',NULL),(1457,2,1543610355,'enrol_paypal','mailteachers','0',NULL),(1458,2,1543610356,'enrol_paypal','mailadmins','0',NULL),(1459,2,1543610356,'enrol_paypal','expiredaction','3',NULL),(1460,2,1543610356,'enrol_paypal','status','1',NULL),(1461,2,1543610356,'enrol_paypal','cost','0',NULL),(1462,2,1543610356,'enrol_paypal','currency','USD',NULL),(1463,2,1543610356,'enrol_paypal','roleid','5',NULL),(1464,2,1543610356,'enrol_paypal','enrolperiod','0',NULL),(1465,2,1543610356,'enrol_lti','emaildisplay','2',NULL),(1466,2,1543610356,'enrol_lti','city','',NULL),(1467,2,1543610356,'enrol_lti','country','',NULL),(1468,2,1543610356,'enrol_lti','timezone','99',NULL),(1469,2,1543610356,'enrol_lti','lang','en',NULL),(1470,2,1543610356,'enrol_lti','institution','',NULL),(1471,2,1543610357,'enrol_self','requirepassword','0',NULL),(1472,2,1543610357,'enrol_self','usepasswordpolicy','0',NULL),(1473,2,1543610357,'enrol_self','showhint','0',NULL),(1474,2,1543610357,'enrol_self','expiredaction','1',NULL),(1475,2,1543610357,'enrol_self','expirynotifyhour','6',NULL),(1476,2,1543610357,'enrol_self','defaultenrol','1',NULL),(1477,2,1543610357,'enrol_self','status','1',NULL),(1478,2,1543610357,'enrol_self','newenrols','1',NULL),(1479,2,1543610358,'enrol_self','groupkey','0',NULL),(1480,2,1543610358,'enrol_self','roleid','5',NULL),(1481,2,1543610358,'enrol_self','enrolperiod','0',NULL),(1482,2,1543610358,'enrol_self','expirynotify','0',NULL),(1483,2,1543610358,'enrol_self','expirythreshold','86400',NULL),(1484,2,1543610358,'enrol_self','longtimenosee','0',NULL),(1485,2,1543610358,'enrol_self','maxenrolled','0',NULL),(1486,2,1543610358,'enrol_self','sendcoursewelcomemessage','1',NULL),(1487,2,1543610359,'filter_urltolink','formats','0',NULL),(1488,2,1543610359,'filter_urltolink','embedimages','1',NULL),(1489,2,1543610359,'filter_emoticon','formats','1,4,0',NULL),(1490,2,1543610359,'filter_mathjaxloader','httpsurl','https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.2/MathJax.js',NULL),(1491,2,1543610359,'filter_mathjaxloader','texfiltercompatibility','0',NULL),(1492,2,1543610359,'filter_mathjaxloader','mathjaxconfig','\nMathJax.Hub.Config({\n    config: [\"Accessible.js\", \"Safe.js\"],\n    errorSettings: { message: [\"!\"] },\n    skipStartupTypeset: true,\n    messageStyle: \"none\"\n});\n',NULL),(1493,2,1543610359,'filter_mathjaxloader','additionaldelimiters','',NULL),(1494,2,1543610359,NULL,'filter_multilang_force_old','0',NULL),(1495,2,1543610359,'filter_tex','latexpreamble','\\usepackage[latin1]{inputenc}\n\\usepackage{amsmath}\n\\usepackage{amsfonts}\n\\RequirePackage{amsmath,amssymb,latexsym}\n',NULL),(1496,2,1543610359,'filter_tex','latexbackground','#FFFFFF',NULL),(1497,2,1543610359,'filter_tex','density','120',NULL),(1498,2,1543610359,'filter_tex','pathlatex','/usr/bin/latex',NULL),(1499,2,1543610360,'filter_tex','pathdvips','/usr/bin/dvips',NULL),(1500,2,1543610360,'filter_tex','pathconvert','/usr/bin/convert',NULL),(1501,2,1543610360,'filter_tex','pathdvisvgm','/usr/bin/dvisvgm',NULL),(1502,2,1543610360,'filter_tex','pathmimetex','',NULL),(1503,2,1543610360,'filter_tex','convertformat','gif',NULL),(1504,2,1543610360,NULL,'filter_censor_badwords','',NULL),(1505,2,1543610360,'logstore_database','dbdriver','',NULL),(1506,2,1543610360,'logstore_database','dbhost','',NULL),(1507,2,1543610360,'logstore_database','dbuser','',NULL),(1508,2,1543610360,'logstore_database','dbpass','',NULL),(1509,2,1543610360,'logstore_database','dbname','',NULL),(1510,2,1543610360,'logstore_database','dbtable','',NULL),(1511,2,1543610360,'logstore_database','dbpersist','0',NULL),(1512,2,1543610360,'logstore_database','dbsocket','',NULL),(1513,2,1543610361,'logstore_database','dbport','',NULL),(1514,2,1543610361,'logstore_database','dbschema','',NULL),(1515,2,1543610361,'logstore_database','dbcollation','',NULL),(1516,2,1543610361,'logstore_database','dbhandlesoptions','0',NULL),(1517,2,1543610361,'logstore_database','buffersize','50',NULL),(1518,2,1543610361,'logstore_database','logguests','0',NULL),(1519,2,1543610361,'logstore_database','includelevels','1,2,0',NULL),(1520,2,1543610361,'logstore_database','includeactions','c,r,u,d',NULL),(1521,2,1543610361,'logstore_legacy','loglegacy','0',NULL),(1522,2,1543610361,NULL,'logguests','1',NULL),(1523,2,1543610361,NULL,'loglifetime','0',NULL),(1524,2,1543610362,'logstore_standard','logguests','1',NULL),(1525,2,1543610362,'logstore_standard','loglifetime','0',NULL),(1526,2,1543610362,'logstore_standard','buffersize','50',NULL),(1527,2,1543610362,'media_videojs','videoextensions','html_video,.f4v,.flv',NULL),(1528,2,1543610362,'media_videojs','audioextensions','html_audio',NULL),(1529,2,1543610362,'media_videojs','rtmp','0',NULL),(1530,2,1543610362,'media_videojs','useflash','0',NULL),(1531,2,1543610362,'media_videojs','youtube','1',NULL),(1532,2,1543610363,'media_videojs','videocssclass','video-js',NULL),(1533,2,1543610363,'media_videojs','audiocssclass','video-js',NULL),(1534,2,1543610363,'media_videojs','limitsize','1',NULL),(1535,2,1543610363,NULL,'jabberhost','',NULL),(1536,2,1543610363,NULL,'jabberserver','',NULL),(1537,2,1543610363,NULL,'jabberusername','',NULL),(1538,2,1543610363,NULL,'jabberpassword','',NULL),(1539,2,1543610363,NULL,'jabberport','5222',NULL),(1540,2,1543610363,NULL,'airnotifierurl','https://messages.moodle.net',NULL),(1541,2,1543610363,NULL,'airnotifierport','443',NULL),(1542,2,1543610363,NULL,'airnotifiermobileappname','com.moodle.moodlemobile',NULL),(1543,2,1543610363,NULL,'airnotifierappname','commoodlemoodlemobile',NULL),(1544,2,1543610364,NULL,'airnotifieraccesskey','',NULL),(1545,2,1543610364,'qtype_multichoice','answerhowmany','1',NULL),(1546,2,1543610364,'qtype_multichoice','shuffleanswers','1',NULL),(1547,2,1543610364,'qtype_multichoice','answernumbering','abc',NULL),(1548,2,1543610364,'search_solr','server_hostname','127.0.0.1',NULL),(1549,2,1543610364,'search_solr','indexname','',NULL),(1550,2,1543610364,'search_solr','secure','0',NULL),(1551,2,1543610364,'search_solr','server_port','8983',NULL),(1552,2,1543610364,'search_solr','server_username','',NULL),(1553,2,1543610364,'search_solr','server_password','',NULL),(1554,2,1543610365,'search_solr','server_timeout','30',NULL),(1555,2,1543610365,'search_solr','ssl_cert','',NULL),(1556,2,1543610365,'search_solr','ssl_key','',NULL),(1557,2,1543610365,'search_solr','ssl_keypassword','',NULL),(1558,2,1543610365,'search_solr','ssl_cainfo','',NULL),(1559,2,1543610365,'search_solr','ssl_capath','',NULL),(1560,2,1543610365,'search_solr','fileindexing','1',NULL),(1561,2,1543610365,'search_solr','maxindexfilekb','2097152',NULL),(1562,2,1543610365,'editor_atto','toolbar','collapse = collapse\nstyle1 = title, bold, italic\nlist = unorderedlist, orderedlist\nlinks = link\nfiles = image, media, recordrtc, managefiles\nstyle2 = underline, strike, subscript, superscript\nalign = align\nindent = indent\ninsert = equation, charmap, table, clear\nundo = undo\naccessibility = accessibilitychecker, accessibilityhelper\nother = html',NULL),(1563,2,1543610365,'editor_atto','autosavefrequency','60',NULL),(1564,2,1543610365,'atto_collapse','showgroups','5',NULL),(1565,2,1543610365,'atto_equation','librarygroup1','\n\\cdot\n\\times\n\\ast\n\\div\n\\diamond\n\\pm\n\\mp\n\\oplus\n\\ominus\n\\otimes\n\\oslash\n\\odot\n\\circ\n\\bullet\n\\asymp\n\\equiv\n\\subseteq\n\\supseteq\n\\leq\n\\geq\n\\preceq\n\\succeq\n\\sim\n\\simeq\n\\approx\n\\subset\n\\supset\n\\ll\n\\gg\n\\prec\n\\succ\n\\infty\n\\in\n\\ni\n\\forall\n\\exists\n\\neq\n',NULL),(1566,2,1543610366,'atto_equation','librarygroup2','\n\\leftarrow\n\\rightarrow\n\\uparrow\n\\downarrow\n\\leftrightarrow\n\\nearrow\n\\searrow\n\\swarrow\n\\nwarrow\n\\Leftarrow\n\\Rightarrow\n\\Uparrow\n\\Downarrow\n\\Leftrightarrow\n',NULL),(1567,2,1543610366,'atto_equation','librarygroup3','\n\\alpha\n\\beta\n\\gamma\n\\delta\n\\epsilon\n\\zeta\n\\eta\n\\theta\n\\iota\n\\kappa\n\\lambda\n\\mu\n\\nu\n\\xi\n\\pi\n\\rho\n\\sigma\n\\tau\n\\upsilon\n\\phi\n\\chi\n\\psi\n\\omega\n\\Gamma\n\\Delta\n\\Theta\n\\Lambda\n\\Xi\n\\Pi\n\\Sigma\n\\Upsilon\n\\Phi\n\\Psi\n\\Omega\n',NULL),(1568,2,1543610366,'atto_equation','librarygroup4','\n\\sum{a,b}\n\\sqrt[a]{b+c}\n\\int_{a}^{b}{c}\n\\iint_{a}^{b}{c}\n\\iiint_{a}^{b}{c}\n\\oint{a}\n(a)\n[a]\n\\lbrace{a}\\rbrace\n\\left| \\begin{matrix} a_1 & a_2 \\ a_3 & a_4 \\end{matrix} \\right|\n\\frac{a}{b+c}\n\\vec{a}\n\\binom {a} {b}\n{a \\brack b}\n{a \\brace b}\n',NULL),(1569,2,1543610366,'atto_recordrtc','allowedtypes','both',NULL),(1570,2,1543610366,'atto_recordrtc','audiobitrate','128000',NULL),(1571,2,1543610366,'atto_recordrtc','videobitrate','2500000',NULL),(1572,2,1543610366,'atto_recordrtc','timelimit','120',NULL),(1573,2,1543610366,'atto_table','allowborders','0',NULL),(1574,2,1543610366,'atto_table','allowbackgroundcolour','0',NULL),(1575,2,1543610366,'atto_table','allowwidth','0',NULL),(1576,2,1543610366,'editor_tinymce','customtoolbar','wrap,formatselect,wrap,bold,italic,wrap,bullist,numlist,wrap,link,unlink,wrap,image\n\nundo,redo,wrap,underline,strikethrough,sub,sup,wrap,justifyleft,justifycenter,justifyright,wrap,outdent,indent,wrap,forecolor,backcolor,wrap,ltr,rtl\n\nfontselect,fontsizeselect,wrap,code,search,replace,wrap,nonbreaking,charmap,table,wrap,cleanup,removeformat,pastetext,pasteword,wrap,fullscreen',NULL),(1577,2,1543610367,'editor_tinymce','fontselectlist','Trebuchet=Trebuchet MS,Verdana,Arial,Helvetica,sans-serif;Arial=arial,helvetica,sans-serif;Courier New=courier new,courier,monospace;Georgia=georgia,times new roman,times,serif;Tahoma=tahoma,arial,helvetica,sans-serif;Times New Roman=times new roman,times,serif;Verdana=verdana,arial,helvetica,sans-serif;Impact=impact;Wingdings=wingdings',NULL),(1578,2,1543610367,'editor_tinymce','customconfig','',NULL),(1579,2,1543610367,'tinymce_moodleemoticon','requireemoticon','1',NULL),(1580,2,1543610367,'tinymce_spellchecker','spellengine','',NULL),(1581,2,1543610367,'tinymce_spellchecker','spelllanguagelist','+English=en,Danish=da,Dutch=nl,Finnish=fi,French=fr,German=de,Italian=it,Polish=pl,Portuguese=pt,Spanish=es,Swedish=sv',NULL),(1582,2,1543610367,NULL,'profileroles','5,4,3',NULL),(1583,2,1543610368,NULL,'calendar_exportsalt','4MQs5z3uHe0khEGuZJRkEcTbHgcDHQEIK9vVmleUDGs9oLmnOllJPDoadVJc','84j0ZlYOzecAys6CLLLRDfoOSOQY3R1xRajFOtKBsAOHAigOOwmdy2UrlxvM'),(1584,2,1543610368,NULL,'coursecontact','3',NULL),(1585,2,1543610368,NULL,'frontpage','6',NULL),(1586,2,1543610368,NULL,'frontpageloggedin','6',NULL),(1587,2,1543610368,NULL,'maxcategorydepth','2',NULL),(1588,2,1543610368,NULL,'frontpagecourselimit','200',NULL),(1589,2,1543610368,NULL,'commentsperpage','15',NULL),(1590,2,1543610368,NULL,'defaultfrontpageroleid','8',NULL),(1591,2,1543610368,NULL,'smtphosts','','mailhog:1025'),(1592,2,1543610369,NULL,'messageinbound_enabled','0',NULL),(1593,2,1543610369,NULL,'messageinbound_mailbox','',NULL),(1594,2,1543610369,NULL,'messageinbound_domain','',NULL),(1595,2,1543610369,NULL,'messageinbound_host','',NULL),(1596,2,1543610369,NULL,'messageinbound_hostssl','ssl',NULL),(1597,2,1543610369,NULL,'messageinbound_hostuser','',NULL),(1598,2,1543610369,NULL,'messageinbound_hostpass','',NULL),(1599,2,1543610369,NULL,'enablemobilewebservice','0',NULL),(1600,2,1543610369,'tool_mobile','apppolicy','',NULL),(1601,2,1543610375,NULL,'calendar_exportsalt','sbRMkp029ZKFR7nOATCCGM7AmmjnaBEgJeBUAu2D0xMjrrCxHTFOwqmeOsgd','4MQs5z3uHe0khEGuZJRkEcTbHgcDHQEIK9vVmleUDGs9oLmnOllJPDoadVJc'),(1602,2,1543610376,NULL,'smtphosts','','mailhog:1025'),(1603,2,1544462015,NULL,'lang','pt_br','en'),(1604,2,1544462331,NULL,'enablewebservices','1','0'),(1605,2,1544462399,NULL,'enablewsdocumentation','1','0');
/*!40000 ALTER TABLE `mdl_config_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_config_plugins`
--

DROP TABLE IF EXISTS `mdl_config_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_config_plugins` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `plugin` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT 'core',
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_confplug_plunam_uix` (`plugin`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1881 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Moodle modules and plugins configuration variables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_config_plugins`
--

LOCK TABLES `mdl_config_plugins` WRITE;
/*!40000 ALTER TABLE `mdl_config_plugins` DISABLE KEYS */;
INSERT INTO `mdl_config_plugins` VALUES (1,'question','multichoice_sortorder','1'),(2,'question','truefalse_sortorder','2'),(3,'question','match_sortorder','3'),(4,'question','shortanswer_sortorder','4'),(5,'question','numerical_sortorder','5'),(6,'question','essay_sortorder','6'),(7,'moodlecourse','visible','1'),(8,'moodlecourse','format','topics'),(9,'moodlecourse','maxsections','52'),(10,'moodlecourse','numsections','4'),(11,'moodlecourse','hiddensections','0'),(12,'moodlecourse','coursedisplay','0'),(13,'moodlecourse','courseenddateenabled','1'),(14,'moodlecourse','courseduration','31536000'),(15,'moodlecourse','lang',''),(16,'moodlecourse','newsitems','5'),(17,'moodlecourse','showgrades','1'),(18,'moodlecourse','showreports','0'),(19,'moodlecourse','maxbytes','0'),(20,'moodlecourse','enablecompletion','1'),(21,'moodlecourse','groupmode','0'),(22,'moodlecourse','groupmodeforce','0'),(23,'backup','loglifetime','30'),(24,'backup','backup_general_users','1'),(25,'backup','backup_general_users_locked',''),(26,'backup','backup_general_anonymize','0'),(27,'backup','backup_general_anonymize_locked',''),(28,'backup','backup_general_role_assignments','1'),(29,'backup','backup_general_role_assignments_locked',''),(30,'backup','backup_general_activities','1'),(31,'backup','backup_general_activities_locked',''),(32,'backup','backup_general_blocks','1'),(33,'backup','backup_general_blocks_locked',''),(34,'backup','backup_general_filters','1'),(35,'backup','backup_general_filters_locked',''),(36,'backup','backup_general_comments','1'),(37,'backup','backup_general_comments_locked',''),(38,'backup','backup_general_badges','1'),(39,'backup','backup_general_badges_locked',''),(40,'backup','backup_general_calendarevents','1'),(41,'backup','backup_general_calendarevents_locked',''),(42,'backup','backup_general_userscompletion','1'),(43,'backup','backup_general_userscompletion_locked',''),(44,'backup','backup_general_logs','0'),(45,'backup','backup_general_logs_locked',''),(46,'backup','backup_general_histories','0'),(47,'backup','backup_general_histories_locked',''),(48,'backup','backup_general_questionbank','1'),(49,'backup','backup_general_questionbank_locked',''),(50,'backup','backup_general_groups','1'),(51,'backup','backup_general_groups_locked',''),(52,'backup','backup_general_competencies','1'),(53,'backup','backup_general_competencies_locked',''),(54,'backup','import_general_maxresults','10'),(55,'backup','import_general_duplicate_admin_allowed','0'),(56,'backup','backup_import_activities','1'),(57,'backup','backup_import_activities_locked',''),(58,'backup','backup_import_blocks','1'),(59,'backup','backup_import_blocks_locked',''),(60,'backup','backup_import_filters','1'),(61,'backup','backup_import_filters_locked',''),(62,'backup','backup_import_calendarevents','1'),(63,'backup','backup_import_calendarevents_locked',''),(64,'backup','backup_import_questionbank','1'),(65,'backup','backup_import_questionbank_locked',''),(66,'backup','backup_import_groups','1'),(67,'backup','backup_import_groups_locked',''),(68,'backup','backup_import_competencies','1'),(69,'backup','backup_import_competencies_locked',''),(70,'backup','backup_auto_active','0'),(71,'backup','backup_auto_weekdays','0000000'),(72,'backup','backup_auto_hour','0'),(73,'backup','backup_auto_minute','0'),(74,'backup','backup_auto_storage','0'),(75,'backup','backup_auto_destination',''),(76,'backup','backup_auto_max_kept','1'),(77,'backup','backup_auto_delete_days','0'),(78,'backup','backup_auto_min_kept','0'),(79,'backup','backup_shortname','0'),(80,'backup','backup_auto_skip_hidden','1'),(81,'backup','backup_auto_skip_modif_days','30'),(82,'backup','backup_auto_skip_modif_prev','0'),(83,'backup','backup_auto_users','1'),(84,'backup','backup_auto_role_assignments','1'),(85,'backup','backup_auto_activities','1'),(86,'backup','backup_auto_blocks','1'),(87,'backup','backup_auto_filters','1'),(88,'backup','backup_auto_comments','1'),(89,'backup','backup_auto_badges','1'),(90,'backup','backup_auto_calendarevents','1'),(91,'backup','backup_auto_userscompletion','1'),(92,'backup','backup_auto_logs','0'),(93,'backup','backup_auto_histories','0'),(94,'backup','backup_auto_questionbank','1'),(95,'backup','backup_auto_groups','1'),(96,'backup','backup_auto_competencies','1'),(97,'restore','restore_general_users','1'),(98,'restore','restore_general_users_locked',''),(99,'restore','restore_general_enrolments','1'),(100,'restore','restore_general_enrolments_locked',''),(101,'restore','restore_general_role_assignments','1'),(102,'restore','restore_general_role_assignments_locked',''),(103,'restore','restore_general_activities','1'),(104,'restore','restore_general_activities_locked',''),(105,'restore','restore_general_blocks','1'),(106,'restore','restore_general_blocks_locked',''),(107,'restore','restore_general_filters','1'),(108,'restore','restore_general_filters_locked',''),(109,'restore','restore_general_comments','1'),(110,'restore','restore_general_comments_locked',''),(111,'restore','restore_general_badges','1'),(112,'restore','restore_general_badges_locked',''),(113,'restore','restore_general_calendarevents','1'),(114,'restore','restore_general_calendarevents_locked',''),(115,'restore','restore_general_userscompletion','1'),(116,'restore','restore_general_userscompletion_locked',''),(117,'restore','restore_general_logs','1'),(118,'restore','restore_general_logs_locked',''),(119,'restore','restore_general_histories','1'),(120,'restore','restore_general_histories_locked',''),(121,'restore','restore_general_groups','1'),(122,'restore','restore_general_groups_locked',''),(123,'restore','restore_general_competencies','1'),(124,'restore','restore_general_competencies_locked',''),(125,'restore','restore_merge_overwrite_conf','0'),(126,'restore','restore_merge_overwrite_conf_locked',''),(127,'restore','restore_merge_course_fullname','1'),(128,'restore','restore_merge_course_fullname_locked',''),(129,'restore','restore_merge_course_shortname','1'),(130,'restore','restore_merge_course_shortname_locked',''),(131,'restore','restore_merge_course_startdate','1'),(132,'restore','restore_merge_course_startdate_locked',''),(133,'restore','restore_replace_overwrite_conf','0'),(134,'restore','restore_replace_overwrite_conf_locked',''),(135,'restore','restore_replace_course_fullname','1'),(136,'restore','restore_replace_course_fullname_locked',''),(137,'restore','restore_replace_course_shortname','1'),(138,'restore','restore_replace_course_shortname_locked',''),(139,'restore','restore_replace_course_startdate','1'),(140,'restore','restore_replace_course_startdate_locked',''),(141,'restore','restore_replace_keep_roles_and_enrolments','0'),(142,'restore','restore_replace_keep_roles_and_enrolments_locked',''),(143,'restore','restore_replace_keep_groups_and_groupings','0'),(144,'restore','restore_replace_keep_groups_and_groupings_locked',''),(145,'analytics','predictionsprocessor','\\mlbackend_php\\processor'),(146,'analytics','timesplittings','\\core\\analytics\\time_splitting\\quarters_accum,\\core\\analytics\\time_splitting\\quarters,\\core\\analytics\\time_splitting\\single_range'),(147,'analytics','modeloutputdir','/var/www/moodledata/models'),(148,'analytics','onlycli','1'),(149,'analytics','modeltimelimit','1200'),(150,'core_competency','enabled','1'),(151,'core_competency','pushcourseratingstouserplans','1'),(152,'cachestore_apcu','testperformance','0'),(153,'cachestore_memcache','testservers',''),(154,'cachestore_memcached','testservers',''),(155,'cachestore_mongodb','testserver',''),(156,'cachestore_redis','test_server',''),(157,'cachestore_redis','test_password',''),(158,'cachestore_redis','test_serializer','1'),(159,'question_preview','behaviour','deferredfeedback'),(160,'question_preview','correctness','1'),(161,'question_preview','marks','2'),(162,'question_preview','markdp','2'),(163,'question_preview','feedback','1'),(164,'question_preview','generalfeedback','1'),(165,'question_preview','rightanswer','1'),(166,'question_preview','history','0'),(167,'tool_task','enablerunnow','1'),(168,'theme_boost','preset','default.scss'),(169,'theme_boost','presetfiles',''),(170,'theme_boost','backgroundimage',''),(171,'theme_boost','brandcolor',''),(172,'theme_boost','scsspre',''),(173,'theme_boost','scss',''),(174,'theme_clean','invert','0'),(175,'theme_clean','logo',''),(176,'theme_clean','smalllogo',''),(177,'theme_clean','sitename','1'),(178,'theme_clean','customcss',''),(179,'theme_clean','footnote',''),(180,'theme_more','textcolor','#333366'),(181,'theme_more','linkcolor','#FF6500'),(182,'theme_more','bodybackground',''),(183,'theme_more','backgroundimage',''),(184,'theme_more','backgroundrepeat','repeat'),(185,'theme_more','backgroundposition','0'),(186,'theme_more','backgroundfixed','0'),(187,'theme_more','contentbackground','#FFFFFF'),(188,'theme_more','secondarybackground','#FFFFFF'),(189,'theme_more','invert','1'),(190,'theme_more','logo',''),(191,'theme_more','smalllogo',''),(192,'theme_more','sitename','1'),(193,'theme_more','customcss',''),(194,'theme_more','footnote',''),(195,'core_admin','logo',''),(196,'core_admin','logocompact',''),(197,'antivirus_clamav','version','2018051400'),(198,'availability_completion','version','2018051400'),(199,'availability_date','version','2018051400'),(200,'availability_grade','version','2018051400'),(201,'availability_group','version','2018051400'),(202,'availability_grouping','version','2018051400'),(203,'availability_profile','version','2018051400'),(204,'qtype_calculated','version','2018051400'),(205,'qtype_calculatedmulti','version','2018051400'),(206,'qtype_calculatedsimple','version','2018051400'),(207,'qtype_ddimageortext','version','2018051400'),(208,'qtype_ddmarker','version','2018051400'),(209,'qtype_ddwtos','version','2018051400'),(210,'qtype_description','version','2018051400'),(211,'qtype_essay','version','2018051400'),(212,'qtype_gapselect','version','2018051400'),(213,'qtype_match','version','2018051400'),(214,'qtype_missingtype','version','2018051400'),(215,'qtype_multianswer','version','2018051400'),(216,'qtype_multichoice','version','2018051400'),(217,'qtype_numerical','version','2018051400'),(218,'qtype_random','version','2018051400'),(219,'qtype_randomsamatch','version','2018051400'),(220,'qtype_shortanswer','version','2018051400'),(221,'qtype_truefalse','version','2018051400'),(222,'mod_assign','version','2018051400'),(223,'mod_assignment','version','2018051400'),(225,'mod_book','version','2018051400'),(226,'mod_chat','version','2018051400'),(227,'mod_choice','version','2018051400'),(228,'mod_data','version','2018051400'),(229,'mod_feedback','version','2018051400'),(231,'mod_folder','version','2018051400'),(233,'mod_forum','version','2018051400'),(234,'mod_glossary','version','2018051401'),(235,'mod_imscp','version','2018051400'),(237,'mod_label','version','2018051400'),(238,'mod_lesson','version','2018051400'),(239,'mod_lti','version','2018051400'),(240,'mod_page','version','2018051400'),(242,'mod_quiz','version','2018051400'),(243,'mod_resource','version','2018051400'),(244,'mod_scorm','version','2018051400'),(245,'mod_survey','version','2018051400'),(247,'mod_url','version','2018051400'),(249,'mod_wiki','version','2018051400'),(251,'mod_workshop','version','2018051400'),(252,'auth_cas','version','2018051400'),(254,'auth_db','version','2018051400'),(256,'auth_email','version','2018051400'),(257,'auth_ldap','version','2018051400'),(259,'auth_lti','version','2018051400'),(260,'auth_manual','version','2018051400'),(261,'auth_mnet','version','2018051400'),(263,'auth_nologin','version','2018051400'),(264,'auth_none','version','2018051400'),(265,'auth_oauth2','version','2018051400'),(266,'auth_shibboleth','version','2018051400'),(268,'auth_webservice','version','2018051400'),(269,'calendartype_gregorian','version','2018051400'),(270,'enrol_category','version','2018051400'),(272,'enrol_cohort','version','2018051400'),(273,'enrol_database','version','2018051400'),(275,'enrol_flatfile','version','2018051400'),(277,'enrol_flatfile','map_1','manager'),(278,'enrol_flatfile','map_2','coursecreator'),(279,'enrol_flatfile','map_3','editingteacher'),(280,'enrol_flatfile','map_4','teacher'),(281,'enrol_flatfile','map_5','student'),(282,'enrol_flatfile','map_6','guest'),(283,'enrol_flatfile','map_7','user'),(284,'enrol_flatfile','map_8','frontpage'),(285,'enrol_guest','version','2018051400'),(286,'enrol_imsenterprise','version','2018051400'),(288,'enrol_ldap','version','2018051400'),(290,'enrol_lti','version','2018051400'),(291,'enrol_manual','version','2018051400'),(293,'enrol_meta','version','2018051400'),(295,'enrol_mnet','version','2018051400'),(296,'enrol_paypal','version','2018051405'),(297,'enrol_self','version','2018051400'),(299,'message_airnotifier','version','2018051400'),(301,'message','airnotifier_provider_enrol_flatfile_flatfile_enrolment_permitted','permitted'),(302,'message','airnotifier_provider_enrol_imsenterprise_imsenterprise_enrolment_permitted','permitted'),(303,'message','airnotifier_provider_enrol_manual_expiry_notification_permitted','permitted'),(304,'message','airnotifier_provider_enrol_paypal_paypal_enrolment_permitted','permitted'),(305,'message','airnotifier_provider_enrol_self_expiry_notification_permitted','permitted'),(306,'message','airnotifier_provider_mod_assign_assign_notification_permitted','permitted'),(307,'message','airnotifier_provider_mod_assignment_assignment_updates_permitted','permitted'),(308,'message','airnotifier_provider_mod_feedback_submission_permitted','permitted'),(309,'message','airnotifier_provider_mod_feedback_message_permitted','permitted'),(310,'message','airnotifier_provider_mod_forum_posts_permitted','permitted'),(311,'message','airnotifier_provider_mod_forum_digests_permitted','permitted'),(312,'message','airnotifier_provider_mod_lesson_graded_essay_permitted','permitted'),(313,'message','airnotifier_provider_mod_quiz_submission_permitted','permitted'),(314,'message','airnotifier_provider_mod_quiz_confirmation_permitted','permitted'),(315,'message','airnotifier_provider_mod_quiz_attempt_overdue_permitted','permitted'),(316,'message','airnotifier_provider_moodle_notices_permitted','permitted'),(317,'message','airnotifier_provider_moodle_errors_permitted','permitted'),(318,'message','airnotifier_provider_moodle_availableupdate_permitted','permitted'),(319,'message','airnotifier_provider_moodle_instantmessage_permitted','permitted'),(320,'message','airnotifier_provider_moodle_backup_permitted','permitted'),(321,'message','airnotifier_provider_moodle_courserequested_permitted','permitted'),(322,'message','airnotifier_provider_moodle_courserequestapproved_permitted','permitted'),(323,'message','airnotifier_provider_moodle_courserequestrejected_permitted','permitted'),(324,'message','airnotifier_provider_moodle_badgerecipientnotice_permitted','permitted'),(325,'message','airnotifier_provider_moodle_badgecreatornotice_permitted','permitted'),(326,'message','airnotifier_provider_moodle_competencyplancomment_permitted','permitted'),(327,'message','airnotifier_provider_moodle_competencyusercompcomment_permitted','permitted'),(328,'message','airnotifier_provider_moodle_insights_permitted','permitted'),(329,'message_email','version','2018051400'),(331,'message','email_provider_enrol_flatfile_flatfile_enrolment_permitted','permitted'),(332,'message','message_provider_enrol_flatfile_flatfile_enrolment_loggedin','email'),(333,'message','message_provider_enrol_flatfile_flatfile_enrolment_loggedoff','email'),(334,'message','email_provider_enrol_imsenterprise_imsenterprise_enrolment_permitted','permitted'),(335,'message','message_provider_enrol_imsenterprise_imsenterprise_enrolment_loggedin','email'),(336,'message','message_provider_enrol_imsenterprise_imsenterprise_enrolment_loggedoff','email'),(337,'message','email_provider_enrol_manual_expiry_notification_permitted','permitted'),(338,'message','message_provider_enrol_manual_expiry_notification_loggedin','email'),(339,'message','message_provider_enrol_manual_expiry_notification_loggedoff','email'),(340,'message','email_provider_enrol_paypal_paypal_enrolment_permitted','permitted'),(341,'message','message_provider_enrol_paypal_paypal_enrolment_loggedin','email'),(342,'message','message_provider_enrol_paypal_paypal_enrolment_loggedoff','email'),(343,'message','email_provider_enrol_self_expiry_notification_permitted','permitted'),(344,'message','message_provider_enrol_self_expiry_notification_loggedin','email'),(345,'message','message_provider_enrol_self_expiry_notification_loggedoff','email'),(346,'message','email_provider_mod_assign_assign_notification_permitted','permitted'),(347,'message','message_provider_mod_assign_assign_notification_loggedin','email'),(348,'message','message_provider_mod_assign_assign_notification_loggedoff','email'),(349,'message','email_provider_mod_assignment_assignment_updates_permitted','permitted'),(350,'message','message_provider_mod_assignment_assignment_updates_loggedin','email'),(351,'message','message_provider_mod_assignment_assignment_updates_loggedoff','email'),(352,'message','email_provider_mod_feedback_submission_permitted','permitted'),(353,'message','message_provider_mod_feedback_submission_loggedin','email'),(354,'message','message_provider_mod_feedback_submission_loggedoff','email'),(355,'message','email_provider_mod_feedback_message_permitted','permitted'),(356,'message','message_provider_mod_feedback_message_loggedin','email'),(357,'message','message_provider_mod_feedback_message_loggedoff','email'),(358,'message','email_provider_mod_forum_posts_permitted','permitted'),(359,'message','message_provider_mod_forum_posts_loggedin','email'),(360,'message','message_provider_mod_forum_posts_loggedoff','email'),(361,'message','email_provider_mod_forum_digests_permitted','permitted'),(362,'message','message_provider_mod_forum_digests_loggedin','email'),(363,'message','message_provider_mod_forum_digests_loggedoff','email'),(364,'message','email_provider_mod_lesson_graded_essay_permitted','permitted'),(365,'message','message_provider_mod_lesson_graded_essay_loggedin','email'),(366,'message','message_provider_mod_lesson_graded_essay_loggedoff','email'),(367,'message','email_provider_mod_quiz_submission_permitted','permitted'),(368,'message','message_provider_mod_quiz_submission_loggedin','email'),(369,'message','message_provider_mod_quiz_submission_loggedoff','email'),(370,'message','email_provider_mod_quiz_confirmation_permitted','permitted'),(371,'message','message_provider_mod_quiz_confirmation_loggedin','email'),(372,'message','message_provider_mod_quiz_confirmation_loggedoff','email'),(373,'message','email_provider_mod_quiz_attempt_overdue_permitted','permitted'),(374,'message','message_provider_mod_quiz_attempt_overdue_loggedin','email'),(375,'message','message_provider_mod_quiz_attempt_overdue_loggedoff','email'),(376,'message','email_provider_moodle_notices_permitted','permitted'),(377,'message','message_provider_moodle_notices_loggedin','email'),(378,'message','message_provider_moodle_notices_loggedoff','email'),(379,'message','email_provider_moodle_errors_permitted','permitted'),(380,'message','message_provider_moodle_errors_loggedin','email'),(381,'message','message_provider_moodle_errors_loggedoff','email'),(382,'message','email_provider_moodle_availableupdate_permitted','permitted'),(383,'message','message_provider_moodle_availableupdate_loggedin','email'),(384,'message','message_provider_moodle_availableupdate_loggedoff','email'),(385,'message','email_provider_moodle_instantmessage_permitted','permitted'),(386,'message','message_provider_moodle_instantmessage_loggedoff','popup,email'),(387,'message','email_provider_moodle_backup_permitted','permitted'),(388,'message','message_provider_moodle_backup_loggedin','email'),(389,'message','message_provider_moodle_backup_loggedoff','email'),(390,'message','email_provider_moodle_courserequested_permitted','permitted'),(391,'message','message_provider_moodle_courserequested_loggedin','email'),(392,'message','message_provider_moodle_courserequested_loggedoff','email'),(393,'message','email_provider_moodle_courserequestapproved_permitted','permitted'),(394,'message','message_provider_moodle_courserequestapproved_loggedin','email'),(395,'message','message_provider_moodle_courserequestapproved_loggedoff','email'),(396,'message','email_provider_moodle_courserequestrejected_permitted','permitted'),(397,'message','message_provider_moodle_courserequestrejected_loggedin','email'),(398,'message','message_provider_moodle_courserequestrejected_loggedoff','email'),(399,'message','email_provider_moodle_badgerecipientnotice_permitted','permitted'),(400,'message','message_provider_moodle_badgerecipientnotice_loggedoff','popup,email'),(401,'message','email_provider_moodle_badgecreatornotice_permitted','permitted'),(402,'message','message_provider_moodle_badgecreatornotice_loggedoff','email'),(403,'message','email_provider_moodle_competencyplancomment_permitted','permitted'),(404,'message','message_provider_moodle_competencyplancomment_loggedin','email'),(405,'message','message_provider_moodle_competencyplancomment_loggedoff','email'),(406,'message','email_provider_moodle_competencyusercompcomment_permitted','permitted'),(407,'message','message_provider_moodle_competencyusercompcomment_loggedin','email'),(408,'message','message_provider_moodle_competencyusercompcomment_loggedoff','email'),(409,'message','email_provider_moodle_insights_permitted','permitted'),(410,'message','message_provider_moodle_insights_loggedin','email'),(411,'message','message_provider_moodle_insights_loggedoff','email'),(412,'message_jabber','version','2018051400'),(414,'message','jabber_provider_enrol_flatfile_flatfile_enrolment_permitted','permitted'),(415,'message','jabber_provider_enrol_imsenterprise_imsenterprise_enrolment_permitted','permitted'),(416,'message','jabber_provider_enrol_manual_expiry_notification_permitted','permitted'),(417,'message','jabber_provider_enrol_paypal_paypal_enrolment_permitted','permitted'),(418,'message','jabber_provider_enrol_self_expiry_notification_permitted','permitted'),(419,'message','jabber_provider_mod_assign_assign_notification_permitted','permitted'),(420,'message','jabber_provider_mod_assignment_assignment_updates_permitted','permitted'),(421,'message','jabber_provider_mod_feedback_submission_permitted','permitted'),(422,'message','jabber_provider_mod_feedback_message_permitted','permitted'),(423,'message','jabber_provider_mod_forum_posts_permitted','permitted'),(424,'message','jabber_provider_mod_forum_digests_permitted','permitted'),(425,'message','jabber_provider_mod_lesson_graded_essay_permitted','permitted'),(426,'message','jabber_provider_mod_quiz_submission_permitted','permitted'),(427,'message','jabber_provider_mod_quiz_confirmation_permitted','permitted'),(428,'message','jabber_provider_mod_quiz_attempt_overdue_permitted','permitted'),(429,'message','jabber_provider_moodle_notices_permitted','permitted'),(430,'message','jabber_provider_moodle_errors_permitted','permitted'),(431,'message','jabber_provider_moodle_availableupdate_permitted','permitted'),(432,'message','jabber_provider_moodle_instantmessage_permitted','permitted'),(433,'message','jabber_provider_moodle_backup_permitted','permitted'),(434,'message','jabber_provider_moodle_courserequested_permitted','permitted'),(435,'message','jabber_provider_moodle_courserequestapproved_permitted','permitted'),(436,'message','jabber_provider_moodle_courserequestrejected_permitted','permitted'),(437,'message','jabber_provider_moodle_badgerecipientnotice_permitted','permitted'),(438,'message','jabber_provider_moodle_badgecreatornotice_permitted','permitted'),(439,'message','jabber_provider_moodle_competencyplancomment_permitted','permitted'),(440,'message','jabber_provider_moodle_competencyusercompcomment_permitted','permitted'),(441,'message','jabber_provider_moodle_insights_permitted','permitted'),(442,'message_popup','version','2018051400'),(444,'message','popup_provider_enrol_flatfile_flatfile_enrolment_permitted','permitted'),(445,'message','popup_provider_enrol_imsenterprise_imsenterprise_enrolment_permitted','permitted'),(446,'message','popup_provider_enrol_manual_expiry_notification_permitted','permitted'),(447,'message','popup_provider_enrol_paypal_paypal_enrolment_permitted','permitted'),(448,'message','popup_provider_enrol_self_expiry_notification_permitted','permitted'),(449,'message','popup_provider_mod_assign_assign_notification_permitted','permitted'),(450,'message','popup_provider_mod_assignment_assignment_updates_permitted','permitted'),(451,'message','popup_provider_mod_feedback_submission_permitted','permitted'),(452,'message','popup_provider_mod_feedback_message_permitted','permitted'),(453,'message','popup_provider_mod_forum_posts_permitted','permitted'),(454,'message','popup_provider_mod_forum_digests_permitted','permitted'),(455,'message','popup_provider_mod_lesson_graded_essay_permitted','permitted'),(456,'message','popup_provider_mod_quiz_submission_permitted','permitted'),(457,'message','popup_provider_mod_quiz_confirmation_permitted','permitted'),(458,'message','popup_provider_mod_quiz_attempt_overdue_permitted','permitted'),(459,'message','popup_provider_moodle_notices_permitted','permitted'),(460,'message','popup_provider_moodle_errors_permitted','permitted'),(461,'message','popup_provider_moodle_availableupdate_permitted','permitted'),(462,'message','popup_provider_moodle_instantmessage_permitted','permitted'),(463,'message','message_provider_moodle_instantmessage_loggedin','popup'),(464,'message','popup_provider_moodle_backup_permitted','permitted'),(465,'message','popup_provider_moodle_courserequested_permitted','permitted'),(466,'message','popup_provider_moodle_courserequestapproved_permitted','permitted'),(467,'message','popup_provider_moodle_courserequestrejected_permitted','permitted'),(468,'message','popup_provider_moodle_badgerecipientnotice_permitted','permitted'),(469,'message','message_provider_moodle_badgerecipientnotice_loggedin','popup'),(470,'message','popup_provider_moodle_badgecreatornotice_permitted','permitted'),(471,'message','popup_provider_moodle_competencyplancomment_permitted','permitted'),(472,'message','popup_provider_moodle_competencyusercompcomment_permitted','permitted'),(473,'message','popup_provider_moodle_insights_permitted','permitted'),(474,'block_activity_modules','version','2018051400'),(475,'block_activity_results','version','2018051400'),(476,'block_admin_bookmarks','version','2018051400'),(477,'block_badges','version','2018051400'),(478,'block_blog_menu','version','2018051400'),(479,'block_blog_recent','version','2018051400'),(480,'block_blog_tags','version','2018051400'),(481,'block_calendar_month','version','2018051400'),(482,'block_calendar_upcoming','version','2018051400'),(483,'block_comments','version','2018051400'),(484,'block_community','version','2018051400'),(485,'block_completionstatus','version','2018051400'),(486,'block_course_list','version','2018051400'),(487,'block_course_summary','version','2018051400'),(488,'block_feedback','version','2018051400'),(490,'block_globalsearch','version','2018051400'),(491,'block_glossary_random','version','2018051400'),(492,'block_html','version','2018051400'),(493,'block_login','version','2018051400'),(494,'block_lp','version','2018051400'),(495,'block_mentees','version','2018051400'),(496,'block_mnet_hosts','version','2018051400'),(497,'block_myoverview','version','2018051400'),(498,'block_myprofile','version','2018051400'),(499,'block_navigation','version','2018051400'),(500,'block_news_items','version','2018051400'),(501,'block_online_users','version','2018051400'),(502,'block_participants','version','2018051400'),(503,'block_private_files','version','2018051400'),(504,'block_quiz_results','version','2018051400'),(506,'block_recent_activity','version','2018051400'),(507,'block_rss_client','version','2018051400'),(508,'block_search_forums','version','2018051400'),(509,'block_section_links','version','2018051400'),(510,'block_selfcompletion','version','2018051400'),(511,'block_settings','version','2018051400'),(512,'block_site_main_menu','version','2018051400'),(513,'block_social_activities','version','2018051400'),(514,'block_tag_flickr','version','2018051400'),(515,'block_tag_youtube','version','2018051400'),(517,'block_tags','version','2018051400'),(518,'media_html5audio','version','2018051400'),(519,'media_html5video','version','2018051400'),(520,'media_swf','version','2018051400'),(521,'media_videojs','version','2018051400'),(522,'media_vimeo','version','2018051400'),(523,'media_youtube','version','2018051400'),(524,'filter_activitynames','version','2018051400'),(526,'filter_algebra','version','2018051400'),(527,'filter_censor','version','2018051400'),(528,'filter_data','version','2018051400'),(530,'filter_emailprotect','version','2018051400'),(531,'filter_emoticon','version','2018051400'),(532,'filter_glossary','version','2018051400'),(534,'filter_mathjaxloader','version','2018051400'),(536,'filter_mediaplugin','version','2018051400'),(538,'filter_multilang','version','2018051400'),(539,'filter_tex','version','2018051400'),(541,'filter_tidy','version','2018051400'),(542,'filter_urltolink','version','2018051400'),(543,'editor_atto','version','2018051401'),(545,'editor_textarea','version','2018051400'),(546,'editor_tinymce','version','2018051400'),(547,'format_singleactivity','version','2018051400'),(548,'format_social','version','2018051400'),(549,'format_topics','version','2018051400'),(550,'format_weeks','version','2018051400'),(551,'dataformat_csv','version','2018051400'),(552,'dataformat_excel','version','2018051400'),(553,'dataformat_html','version','2018051400'),(554,'dataformat_json','version','2018051400'),(555,'dataformat_ods','version','2018051400'),(556,'profilefield_checkbox','version','2018051400'),(557,'profilefield_datetime','version','2018051400'),(558,'profilefield_menu','version','2018051400'),(559,'profilefield_text','version','2018051400'),(560,'profilefield_textarea','version','2018051400'),(561,'report_backups','version','2018051400'),(562,'report_competency','version','2018051400'),(563,'report_completion','version','2018051400'),(565,'report_configlog','version','2018051400'),(566,'report_courseoverview','version','2018051400'),(567,'report_eventlist','version','2018051400'),(568,'report_insights','version','2018051400'),(569,'report_log','version','2018051400'),(571,'report_loglive','version','2018051400'),(572,'report_outline','version','2018051400'),(574,'report_participation','version','2018051400'),(576,'report_performance','version','2018051400'),(577,'report_progress','version','2018051400'),(579,'report_questioninstances','version','2018051400'),(580,'report_security','version','2018051400'),(581,'report_stats','version','2018051400'),(583,'report_usersessions','version','2018051400'),(584,'gradeexport_ods','version','2018051400'),(585,'gradeexport_txt','version','2018051400'),(586,'gradeexport_xls','version','2018051400'),(587,'gradeexport_xml','version','2018051400'),(588,'gradeimport_csv','version','2018051400'),(589,'gradeimport_direct','version','2018051400'),(590,'gradeimport_xml','version','2018051400'),(591,'gradereport_grader','version','2018051400'),(592,'gradereport_history','version','2018051400'),(593,'gradereport_outcomes','version','2018051400'),(594,'gradereport_overview','version','2018051400'),(595,'gradereport_singleview','version','2018051400'),(596,'gradereport_user','version','2018051400'),(597,'gradingform_guide','version','2018051400'),(598,'gradingform_rubric','version','2018051400'),(599,'mlbackend_php','version','2018051400'),(600,'mlbackend_python','version','2018051400'),(601,'mnetservice_enrol','version','2018051400'),(602,'webservice_rest','version','2018051400'),(603,'webservice_soap','version','2018051400'),(604,'webservice_xmlrpc','version','2018051400'),(605,'repository_areafiles','version','2018051400'),(607,'areafiles','enablecourseinstances','0'),(608,'areafiles','enableuserinstances','0'),(609,'repository_boxnet','version','2018051400'),(610,'repository_coursefiles','version','2018051400'),(611,'repository_dropbox','version','2018051400'),(612,'repository_equella','version','2018051400'),(613,'repository_filesystem','version','2018051400'),(614,'repository_flickr','version','2018051400'),(615,'repository_flickr_public','version','2018051400'),(616,'repository_googledocs','version','2018051400'),(617,'repository_local','version','2018051400'),(619,'local','enablecourseinstances','0'),(620,'local','enableuserinstances','0'),(621,'repository_merlot','version','2018051400'),(622,'repository_onedrive','version','2018051400'),(623,'repository_picasa','version','2018051400'),(624,'repository_recent','version','2018051400'),(626,'recent','enablecourseinstances','0'),(627,'recent','enableuserinstances','0'),(628,'repository_s3','version','2018051400'),(629,'repository_skydrive','version','2018051400'),(630,'repository_upload','version','2018051400'),(632,'upload','enablecourseinstances','0'),(633,'upload','enableuserinstances','0'),(634,'repository_url','version','2018051400'),(636,'url','enablecourseinstances','0'),(637,'url','enableuserinstances','0'),(638,'repository_user','version','2018051400'),(640,'user','enablecourseinstances','0'),(641,'user','enableuserinstances','0'),(642,'repository_webdav','version','2018051400'),(643,'repository_wikimedia','version','2018051400'),(645,'wikimedia','enablecourseinstances','0'),(646,'wikimedia','enableuserinstances','0'),(647,'repository_youtube','version','2018051400'),(649,'portfolio_boxnet','version','2018051400'),(650,'portfolio_download','version','2018051400'),(651,'portfolio_flickr','version','2018051400'),(652,'portfolio_googledocs','version','2018051400'),(653,'portfolio_mahara','version','2018051400'),(654,'portfolio_picasa','version','2018051400'),(655,'search_simpledb','version','2018051400'),(657,'search_solr','version','2018051400'),(658,'qbehaviour_adaptive','version','2018051400'),(659,'qbehaviour_adaptivenopenalty','version','2018051400'),(660,'qbehaviour_deferredcbm','version','2018051400'),(661,'qbehaviour_deferredfeedback','version','2018051400'),(662,'qbehaviour_immediatecbm','version','2018051400'),(663,'qbehaviour_immediatefeedback','version','2018051400'),(664,'qbehaviour_informationitem','version','2018051400'),(665,'qbehaviour_interactive','version','2018051400'),(666,'qbehaviour_interactivecountback','version','2018051400'),(667,'qbehaviour_manualgraded','version','2018051400'),(669,'question','disabledbehaviours','manualgraded'),(670,'qbehaviour_missing','version','2018051400'),(671,'qformat_aiken','version','2018051400'),(672,'qformat_blackboard_six','version','2018051400'),(673,'qformat_examview','version','2018051400'),(674,'qformat_gift','version','2018051400'),(675,'qformat_missingword','version','2018051400'),(676,'qformat_multianswer','version','2018051400'),(677,'qformat_webct','version','2018051400'),(678,'qformat_xhtml','version','2018051400'),(679,'qformat_xml','version','2018051400'),(680,'tool_analytics','version','2018051400'),(681,'tool_assignmentupgrade','version','2018051400'),(682,'tool_availabilityconditions','version','2018051400'),(683,'tool_behat','version','2018051400'),(684,'tool_capability','version','2018051400'),(685,'tool_cohortroles','version','2018051400'),(686,'tool_customlang','version','2018051400'),(688,'tool_dataprivacy','version','2018051415'),(689,'message','airnotifier_provider_tool_dataprivacy_contactdataprotectionofficer_permitted','permitted'),(690,'message','email_provider_tool_dataprivacy_contactdataprotectionofficer_permitted','permitted'),(691,'message','jabber_provider_tool_dataprivacy_contactdataprotectionofficer_permitted','permitted'),(692,'message','popup_provider_tool_dataprivacy_contactdataprotectionofficer_permitted','permitted'),(693,'message','message_provider_tool_dataprivacy_contactdataprotectionofficer_loggedin','email,popup'),(694,'message','message_provider_tool_dataprivacy_contactdataprotectionofficer_loggedoff','email,popup'),(695,'message','airnotifier_provider_tool_dataprivacy_datarequestprocessingresults_permitted','permitted'),(696,'message','email_provider_tool_dataprivacy_datarequestprocessingresults_permitted','permitted'),(697,'message','jabber_provider_tool_dataprivacy_datarequestprocessingresults_permitted','permitted'),(698,'message','popup_provider_tool_dataprivacy_datarequestprocessingresults_permitted','permitted'),(699,'message','message_provider_tool_dataprivacy_datarequestprocessingresults_loggedin','email,popup'),(700,'message','message_provider_tool_dataprivacy_datarequestprocessingresults_loggedoff','email,popup'),(701,'message','airnotifier_provider_tool_dataprivacy_notifyexceptions_permitted','permitted'),(702,'message','email_provider_tool_dataprivacy_notifyexceptions_permitted','permitted'),(703,'message','jabber_provider_tool_dataprivacy_notifyexceptions_permitted','permitted'),(704,'message','popup_provider_tool_dataprivacy_notifyexceptions_permitted','permitted'),(705,'message','message_provider_tool_dataprivacy_notifyexceptions_loggedin','email'),(706,'message','message_provider_tool_dataprivacy_notifyexceptions_loggedoff','email'),(707,'tool_dbtransfer','version','2018051400'),(708,'tool_filetypes','version','2018051400'),(709,'tool_generator','version','2018051400'),(710,'tool_health','version','2018051400'),(711,'tool_httpsreplace','version','2018051400'),(712,'tool_innodb','version','2018051400'),(713,'tool_installaddon','version','2018051400'),(714,'tool_langimport','version','2018051400'),(715,'tool_log','version','2018051401'),(717,'tool_log','enabled_stores','logstore_standard'),(718,'tool_lp','version','2018051400'),(719,'tool_lpimportcsv','version','2018051400'),(720,'tool_lpmigrate','version','2018051400'),(721,'tool_messageinbound','version','2018051400'),(722,'message','airnotifier_provider_tool_messageinbound_invalidrecipienthandler_permitted','permitted'),(723,'message','email_provider_tool_messageinbound_invalidrecipienthandler_permitted','permitted'),(724,'message','jabber_provider_tool_messageinbound_invalidrecipienthandler_permitted','permitted'),(725,'message','popup_provider_tool_messageinbound_invalidrecipienthandler_permitted','permitted'),(726,'message','message_provider_tool_messageinbound_invalidrecipienthandler_loggedin','email'),(727,'message','message_provider_tool_messageinbound_invalidrecipienthandler_loggedoff','email'),(728,'message','airnotifier_provider_tool_messageinbound_messageprocessingerror_permitted','permitted'),(729,'message','email_provider_tool_messageinbound_messageprocessingerror_permitted','permitted'),(730,'message','jabber_provider_tool_messageinbound_messageprocessingerror_permitted','permitted'),(731,'message','popup_provider_tool_messageinbound_messageprocessingerror_permitted','permitted'),(732,'message','message_provider_tool_messageinbound_messageprocessingerror_loggedin','email'),(733,'message','message_provider_tool_messageinbound_messageprocessingerror_loggedoff','email'),(734,'message','airnotifier_provider_tool_messageinbound_messageprocessingsuccess_permitted','permitted'),(735,'message','email_provider_tool_messageinbound_messageprocessingsuccess_permitted','permitted'),(736,'message','jabber_provider_tool_messageinbound_messageprocessingsuccess_permitted','permitted'),(737,'message','popup_provider_tool_messageinbound_messageprocessingsuccess_permitted','permitted'),(738,'message','message_provider_tool_messageinbound_messageprocessingsuccess_loggedin','email'),(739,'message','message_provider_tool_messageinbound_messageprocessingsuccess_loggedoff','email'),(740,'tool_mobile','version','2018051400'),(741,'tool_monitor','version','2018051400'),(742,'message','airnotifier_provider_tool_monitor_notification_permitted','permitted'),(743,'message','email_provider_tool_monitor_notification_permitted','permitted'),(744,'message','jabber_provider_tool_monitor_notification_permitted','permitted'),(745,'message','popup_provider_tool_monitor_notification_permitted','permitted'),(746,'message','message_provider_tool_monitor_notification_loggedin','email'),(747,'message','message_provider_tool_monitor_notification_loggedoff','email'),(748,'tool_multilangupgrade','version','2018051400'),(749,'tool_oauth2','version','2018051400'),(750,'tool_phpunit','version','2018051400'),(751,'tool_policy','version','2018051400'),(752,'tool_profiling','version','2018051400'),(753,'tool_recyclebin','version','2018051400'),(754,'tool_replace','version','2018051400'),(755,'tool_spamcleaner','version','2018051400'),(756,'tool_task','version','2018051400'),(757,'tool_templatelibrary','version','2018051400'),(758,'tool_unsuproles','version','2018051400'),(760,'tool_uploadcourse','version','2018051400'),(761,'tool_uploaduser','version','2018051400'),(762,'tool_usertours','version','2018051400'),(764,'tool_xmldb','version','2018051400'),(765,'cachestore_apcu','version','2018051400'),(766,'cachestore_file','version','2018051400'),(767,'cachestore_memcache','version','2018051400'),(768,'cachestore_memcached','version','2018051400'),(769,'cachestore_mongodb','version','2018051400'),(770,'cachestore_redis','version','2018051400'),(771,'cachestore_session','version','2018051400'),(772,'cachestore_static','version','2018051400'),(773,'cachelock_file','version','2018051400'),(774,'fileconverter_googledrive','version','2018051400'),(775,'fileconverter_unoconv','version','2018051400'),(777,'theme_boost','version','2018051400'),(778,'theme_bootstrapbase','version','2018051400'),(779,'theme_clean','version','2018051400'),(780,'theme_more','version','2018051400'),(782,'assignsubmission_comments','version','2018051400'),(784,'assignsubmission_file','sortorder','1'),(785,'assignsubmission_comments','sortorder','2'),(786,'assignsubmission_onlinetext','sortorder','0'),(787,'assignsubmission_file','version','2018051400'),(788,'assignsubmission_onlinetext','version','2018051400'),(790,'assignfeedback_comments','version','2018051400'),(792,'assignfeedback_comments','sortorder','0'),(793,'assignfeedback_editpdf','sortorder','1'),(794,'assignfeedback_file','sortorder','3'),(795,'assignfeedback_offline','sortorder','2'),(796,'assignfeedback_editpdf','version','2018051400'),(798,'assignfeedback_file','version','2018051400'),(800,'assignfeedback_offline','version','2018051400'),(801,'assignment_offline','version','2018051400'),(802,'assignment_online','version','2018051400'),(803,'assignment_upload','version','2018051400'),(804,'assignment_uploadsingle','version','2018051400'),(805,'booktool_exportimscp','version','2018051400'),(806,'booktool_importhtml','version','2018051400'),(807,'booktool_print','version','2018051400'),(808,'datafield_checkbox','version','2018051400'),(809,'datafield_date','version','2018051400'),(810,'datafield_file','version','2018051400'),(811,'datafield_latlong','version','2018051400'),(812,'datafield_menu','version','2018051400'),(813,'datafield_multimenu','version','2018051400'),(814,'datafield_number','version','2018051400'),(815,'datafield_picture','version','2018051400'),(816,'datafield_radiobutton','version','2018051400'),(817,'datafield_text','version','2018051400'),(818,'datafield_textarea','version','2018051400'),(819,'datafield_url','version','2018051400'),(820,'datapreset_imagegallery','version','2018051400'),(821,'ltiservice_gradebookservices','version','2018051400'),(822,'ltiservice_memberships','version','2018051400'),(823,'ltiservice_profile','version','2018051400'),(824,'ltiservice_toolproxy','version','2018051400'),(825,'ltiservice_toolsettings','version','2018051400'),(826,'quiz_grading','version','2018051400'),(828,'quiz_overview','version','2018061801'),(830,'quiz_responses','version','2018051400'),(832,'quiz_statistics','version','2018051400'),(834,'quizaccess_delaybetweenattempts','version','2018051400'),(835,'quizaccess_ipaddress','version','2018051400'),(836,'quizaccess_numattempts','version','2018051400'),(837,'quizaccess_offlineattempts','version','2018051400'),(838,'quizaccess_openclosedate','version','2018051400'),(839,'quizaccess_password','version','2018051400'),(840,'quizaccess_safebrowser','version','2018051400'),(841,'quizaccess_securewindow','version','2018051400'),(842,'quizaccess_timelimit','version','2018051400'),(843,'scormreport_basic','version','2018051400'),(844,'scormreport_graphs','version','2018051400'),(845,'scormreport_interactions','version','2018051400'),(846,'scormreport_objectives','version','2018051400'),(847,'workshopform_accumulative','version','2018051400'),(849,'workshopform_comments','version','2018051400'),(851,'workshopform_numerrors','version','2018051400'),(853,'workshopform_rubric','version','2018051400'),(855,'workshopallocation_manual','version','2018051400'),(856,'workshopallocation_random','version','2018051400'),(857,'workshopallocation_scheduled','version','2018051400'),(858,'workshopeval_best','version','2018051400'),(859,'atto_accessibilitychecker','version','2018051400'),(860,'atto_accessibilityhelper','version','2018051400'),(861,'atto_align','version','2018051400'),(862,'atto_backcolor','version','2018051400'),(863,'atto_bold','version','2018051400'),(864,'atto_charmap','version','2018051400'),(865,'atto_clear','version','2018051400'),(866,'atto_collapse','version','2018051400'),(867,'atto_emoticon','version','2018051400'),(868,'atto_equation','version','2018051400'),(869,'atto_fontcolor','version','2018051400'),(870,'atto_html','version','2018051400'),(871,'atto_image','version','2018051400'),(872,'atto_indent','version','2018051400'),(873,'atto_italic','version','2018051400'),(874,'atto_link','version','2018051400'),(875,'atto_managefiles','version','2018051400'),(876,'atto_media','version','2018051400'),(877,'atto_noautolink','version','2018051400'),(878,'atto_orderedlist','version','2018051400'),(879,'atto_recordrtc','version','2018051400'),(880,'atto_rtl','version','2018051400'),(881,'atto_strike','version','2018051400'),(882,'atto_subscript','version','2018051400'),(883,'atto_superscript','version','2018051400'),(884,'atto_table','version','2018051400'),(885,'atto_title','version','2018051400'),(886,'atto_underline','version','2018051400'),(887,'atto_undo','version','2018051400'),(888,'atto_unorderedlist','version','2018051400'),(889,'tinymce_ctrlhelp','version','2018051400'),(890,'tinymce_managefiles','version','2018051400'),(891,'tinymce_moodleemoticon','version','2018051400'),(892,'tinymce_moodleimage','version','2018051400'),(893,'tinymce_moodlemedia','version','2018051400'),(894,'tinymce_moodlenolink','version','2018051400'),(895,'tinymce_pdw','version','2018051400'),(896,'tinymce_spellchecker','version','2018051400'),(898,'tinymce_wrap','version','2018051400'),(899,'logstore_database','version','2018051400'),(900,'logstore_legacy','version','2018051400'),(901,'logstore_standard','version','2018051400'),(902,'tool_dataprivacy','contactdataprotectionofficer','0'),(903,'tool_dataprivacy','automaticdeletionrequests','0'),(904,'tool_dataprivacy','privacyrequestexpiry','604800'),(905,'tool_dataprivacy','requireallenddatesforuserdeletion','1'),(906,'tool_dataprivacy','showdataretentionsummary','1'),(907,'tool_log','exportlog','1'),(908,'analytics','logstore','logstore_standard'),(909,'assign','feedback_plugin_for_gradebook','assignfeedback_comments'),(910,'assign','showrecentsubmissions','0'),(911,'assign','submissionreceipts','1'),(912,'assign','submissionstatement','This assignment is my own work, except where I have acknowledged the use of the works of other people.'),(913,'assign','maxperpage','-1'),(914,'assign','alwaysshowdescription','1'),(915,'assign','alwaysshowdescription_adv',''),(916,'assign','alwaysshowdescription_locked',''),(917,'assign','allowsubmissionsfromdate','0'),(918,'assign','allowsubmissionsfromdate_enabled','1'),(919,'assign','allowsubmissionsfromdate_adv',''),(920,'assign','duedate','604800'),(921,'assign','duedate_enabled','1'),(922,'assign','duedate_adv',''),(923,'assign','cutoffdate','1209600'),(924,'assign','cutoffdate_enabled',''),(925,'assign','cutoffdate_adv',''),(926,'assign','gradingduedate','1209600'),(927,'assign','gradingduedate_enabled','1'),(928,'assign','gradingduedate_adv',''),(929,'assign','submissiondrafts','0'),(930,'assign','submissiondrafts_adv',''),(931,'assign','submissiondrafts_locked',''),(932,'assign','requiresubmissionstatement','0'),(933,'assign','requiresubmissionstatement_adv',''),(934,'assign','requiresubmissionstatement_locked',''),(935,'assign','attemptreopenmethod','none'),(936,'assign','attemptreopenmethod_adv',''),(937,'assign','attemptreopenmethod_locked',''),(938,'assign','maxattempts','-1'),(939,'assign','maxattempts_adv',''),(940,'assign','maxattempts_locked',''),(941,'assign','teamsubmission','0'),(942,'assign','teamsubmission_adv',''),(943,'assign','teamsubmission_locked',''),(944,'assign','preventsubmissionnotingroup','0'),(945,'assign','preventsubmissionnotingroup_adv',''),(946,'assign','preventsubmissionnotingroup_locked',''),(947,'assign','requireallteammemberssubmit','0'),(948,'assign','requireallteammemberssubmit_adv',''),(949,'assign','requireallteammemberssubmit_locked',''),(950,'assign','teamsubmissiongroupingid',''),(951,'assign','teamsubmissiongroupingid_adv',''),(952,'assign','sendnotifications','0'),(953,'assign','sendnotifications_adv',''),(954,'assign','sendnotifications_locked',''),(955,'assign','sendlatenotifications','0'),(956,'assign','sendlatenotifications_adv',''),(957,'assign','sendlatenotifications_locked',''),(958,'assign','sendstudentnotifications','1'),(959,'assign','sendstudentnotifications_adv',''),(960,'assign','sendstudentnotifications_locked',''),(961,'assign','blindmarking','0'),(962,'assign','blindmarking_adv',''),(963,'assign','blindmarking_locked',''),(964,'assign','markingworkflow','0'),(965,'assign','markingworkflow_adv',''),(966,'assign','markingworkflow_locked',''),(967,'assign','markingallocation','0'),(968,'assign','markingallocation_adv',''),(969,'assign','markingallocation_locked',''),(970,'assignsubmission_file','default','1'),(971,'assignsubmission_file','maxfiles','20'),(972,'assignsubmission_file','filetypes',''),(973,'assignsubmission_file','maxbytes','0'),(974,'assignsubmission_onlinetext','default','0'),(975,'assignfeedback_comments','default','1'),(976,'assignfeedback_comments','inline','0'),(977,'assignfeedback_comments','inline_adv',''),(978,'assignfeedback_comments','inline_locked',''),(979,'assignfeedback_editpdf','default','1'),(980,'assignfeedback_editpdf','stamps',''),(981,'assignfeedback_file','default','0'),(982,'assignfeedback_offline','default','0'),(983,'book','numberingoptions','0,1,2,3'),(984,'book','navoptions','0,1,2'),(985,'book','numbering','1'),(986,'book','navstyle','1'),(987,'resource','framesize','130'),(988,'resource','displayoptions','0,1,4,5,6'),(989,'resource','printintro','1'),(990,'resource','display','0'),(991,'resource','showsize','0'),(992,'resource','showtype','0'),(993,'resource','showdate','0'),(994,'resource','popupwidth','620'),(995,'resource','popupheight','450'),(996,'resource','filterfiles','0'),(997,'folder','showexpanded','1'),(998,'folder','maxsizetodownload','0'),(999,'imscp','keepold','1'),(1000,'imscp','keepold_adv',''),(1001,'label','dndmedia','1'),(1002,'label','dndresizewidth','400'),(1003,'label','dndresizeheight','400'),(1004,'mod_lesson','mediafile',''),(1005,'mod_lesson','mediafile_adv','1'),(1006,'mod_lesson','mediawidth','640'),(1007,'mod_lesson','mediaheight','480'),(1008,'mod_lesson','mediaclose','0'),(1009,'mod_lesson','progressbar','0'),(1010,'mod_lesson','progressbar_adv',''),(1011,'mod_lesson','ongoing','0'),(1012,'mod_lesson','ongoing_adv','1'),(1013,'mod_lesson','displayleftmenu','0'),(1014,'mod_lesson','displayleftmenu_adv',''),(1015,'mod_lesson','displayleftif','0'),(1016,'mod_lesson','displayleftif_adv','1'),(1017,'mod_lesson','slideshow','0'),(1018,'mod_lesson','slideshow_adv','1'),(1019,'mod_lesson','slideshowwidth','640'),(1020,'mod_lesson','slideshowheight','480'),(1021,'mod_lesson','slideshowbgcolor','#FFFFFF'),(1022,'mod_lesson','maxanswers','5'),(1023,'mod_lesson','maxanswers_adv','1'),(1024,'mod_lesson','defaultfeedback','0'),(1025,'mod_lesson','defaultfeedback_adv','1'),(1026,'mod_lesson','activitylink',''),(1027,'mod_lesson','activitylink_adv','1'),(1028,'mod_lesson','timelimit','0'),(1029,'mod_lesson','timelimit_adv',''),(1030,'mod_lesson','password','0'),(1031,'mod_lesson','password_adv','1'),(1032,'mod_lesson','modattempts','0'),(1033,'mod_lesson','modattempts_adv',''),(1034,'mod_lesson','displayreview','0'),(1035,'mod_lesson','displayreview_adv',''),(1036,'mod_lesson','maximumnumberofattempts','1'),(1037,'mod_lesson','maximumnumberofattempts_adv',''),(1038,'mod_lesson','defaultnextpage','0'),(1039,'mod_lesson','defaultnextpage_adv','1'),(1040,'mod_lesson','numberofpagestoshow','1'),(1041,'mod_lesson','numberofpagestoshow_adv','1'),(1042,'mod_lesson','practice','0'),(1043,'mod_lesson','practice_adv',''),(1044,'mod_lesson','customscoring','1'),(1045,'mod_lesson','customscoring_adv','1'),(1046,'mod_lesson','retakesallowed','0'),(1047,'mod_lesson','retakesallowed_adv',''),(1048,'mod_lesson','handlingofretakes','0'),(1049,'mod_lesson','handlingofretakes_adv','1'),(1050,'mod_lesson','minimumnumberofquestions','0'),(1051,'mod_lesson','minimumnumberofquestions_adv','1'),(1052,'page','displayoptions','5'),(1053,'page','printheading','1'),(1054,'page','printintro','0'),(1055,'page','display','5'),(1056,'page','popupwidth','620'),(1057,'page','popupheight','450'),(1058,'quiz','timelimit','0'),(1059,'quiz','timelimit_adv',''),(1060,'quiz','overduehandling','autosubmit'),(1061,'quiz','overduehandling_adv',''),(1062,'quiz','graceperiod','86400'),(1063,'quiz','graceperiod_adv',''),(1064,'quiz','graceperiodmin','60'),(1065,'quiz','attempts','0'),(1066,'quiz','attempts_adv',''),(1067,'quiz','grademethod','1'),(1068,'quiz','grademethod_adv',''),(1069,'quiz','maximumgrade','10'),(1070,'quiz','questionsperpage','1'),(1071,'quiz','questionsperpage_adv',''),(1072,'quiz','navmethod','free'),(1073,'quiz','navmethod_adv','1'),(1074,'quiz','shuffleanswers','1'),(1075,'quiz','shuffleanswers_adv',''),(1076,'quiz','preferredbehaviour','deferredfeedback'),(1077,'quiz','canredoquestions','0'),(1078,'quiz','canredoquestions_adv','1'),(1079,'quiz','attemptonlast','0'),(1080,'quiz','attemptonlast_adv','1'),(1081,'quiz','reviewattempt','69904'),(1082,'quiz','reviewcorrectness','69904'),(1083,'quiz','reviewmarks','69904'),(1084,'quiz','reviewspecificfeedback','69904'),(1085,'quiz','reviewgeneralfeedback','69904'),(1086,'quiz','reviewrightanswer','69904'),(1087,'quiz','reviewoverallfeedback','4368'),(1088,'quiz','showuserpicture','0'),(1089,'quiz','showuserpicture_adv',''),(1090,'quiz','decimalpoints','2'),(1091,'quiz','decimalpoints_adv',''),(1092,'quiz','questiondecimalpoints','-1'),(1093,'quiz','questiondecimalpoints_adv','1'),(1094,'quiz','showblocks','0'),(1095,'quiz','showblocks_adv','1'),(1096,'quiz','password',''),(1097,'quiz','password_adv',''),(1098,'quiz','subnet',''),(1099,'quiz','subnet_adv','1'),(1100,'quiz','delay1','0'),(1101,'quiz','delay1_adv','1'),(1102,'quiz','delay2','0'),(1103,'quiz','delay2_adv','1'),(1104,'quiz','browsersecurity','-'),(1105,'quiz','browsersecurity_adv','1'),(1106,'quiz','initialnumfeedbacks','2'),(1107,'quiz','autosaveperiod','60'),(1108,'scorm','displaycoursestructure','0'),(1109,'scorm','displaycoursestructure_adv',''),(1110,'scorm','popup','0'),(1111,'scorm','popup_adv',''),(1112,'scorm','displayactivityname','1'),(1113,'scorm','framewidth','100'),(1114,'scorm','framewidth_adv','1'),(1115,'scorm','frameheight','500'),(1116,'scorm','frameheight_adv','1'),(1117,'scorm','winoptgrp_adv','1'),(1118,'scorm','scrollbars','0'),(1119,'scorm','directories','0'),(1120,'scorm','location','0'),(1121,'scorm','menubar','0'),(1122,'scorm','toolbar','0'),(1123,'scorm','status','0'),(1124,'scorm','skipview','0'),(1125,'scorm','skipview_adv','1'),(1126,'scorm','hidebrowse','0'),(1127,'scorm','hidebrowse_adv','1'),(1128,'scorm','hidetoc','0'),(1129,'scorm','hidetoc_adv','1'),(1130,'scorm','nav','1'),(1131,'scorm','nav_adv','1'),(1132,'scorm','navpositionleft','-100'),(1133,'scorm','navpositionleft_adv','1'),(1134,'scorm','navpositiontop','-100'),(1135,'scorm','navpositiontop_adv','1'),(1136,'scorm','collapsetocwinsize','767'),(1137,'scorm','collapsetocwinsize_adv','1'),(1138,'scorm','displayattemptstatus','1'),(1139,'scorm','displayattemptstatus_adv',''),(1140,'scorm','grademethod','1'),(1141,'scorm','maxgrade','100'),(1142,'scorm','maxattempt','0'),(1143,'scorm','whatgrade','0'),(1144,'scorm','forcecompleted','0'),(1145,'scorm','forcenewattempt','0'),(1146,'scorm','autocommit','0'),(1147,'scorm','masteryoverride','1'),(1148,'scorm','lastattemptlock','0'),(1149,'scorm','auto','0'),(1150,'scorm','updatefreq','0'),(1151,'scorm','scormstandard','0'),(1152,'scorm','allowtypeexternal','0'),(1153,'scorm','allowtypelocalsync','0'),(1154,'scorm','allowtypeexternalaicc','0'),(1155,'scorm','allowaicchacp','0'),(1156,'scorm','aicchacptimeout','30'),(1157,'scorm','aicchacpkeepsessiondata','1'),(1158,'scorm','aiccuserid','1'),(1159,'scorm','forcejavascript','1'),(1160,'scorm','allowapidebug','0'),(1161,'scorm','apidebugmask','.*'),(1162,'scorm','protectpackagedownloads','0'),(1163,'url','framesize','130'),(1164,'url','secretphrase',''),(1165,'url','rolesinparams','0'),(1166,'url','displayoptions','0,1,5,6'),(1167,'url','printintro','1'),(1168,'url','display','0'),(1169,'url','popupwidth','620'),(1170,'url','popupheight','450'),(1171,'workshop','grade','80'),(1172,'workshop','gradinggrade','20'),(1173,'workshop','gradedecimals','0'),(1174,'workshop','maxbytes','0'),(1175,'workshop','strategy','accumulative'),(1176,'workshop','examplesmode','0'),(1177,'workshopallocation_random','numofreviews','5'),(1178,'workshopform_numerrors','grade0','No'),(1179,'workshopform_numerrors','grade1','Yes'),(1180,'workshopeval_best','comparison','5'),(1181,'tool_recyclebin','coursebinenable','1'),(1182,'tool_recyclebin','coursebinexpiry','604800'),(1183,'tool_recyclebin','categorybinenable','1'),(1184,'tool_recyclebin','categorybinexpiry','604800'),(1185,'tool_recyclebin','autohide','1'),(1186,'antivirus_clamav','runningmethod','commandline'),(1187,'antivirus_clamav','pathtoclam',''),(1188,'antivirus_clamav','pathtounixsocket',''),(1189,'antivirus_clamav','clamfailureonupload','donothing'),(1190,'auth_cas','hostname',''),(1191,'auth_cas','baseuri',''),(1192,'auth_cas','port','0'),(1193,'auth_cas','casversion','2.0'),(1194,'auth_cas','language','CAS_Languages_English'),(1195,'auth_cas','proxycas','0'),(1196,'auth_cas','logoutcas','0'),(1197,'auth_cas','multiauth','0'),(1198,'auth_cas','certificate_check','0'),(1199,'auth_cas','certificate_path',''),(1200,'auth_cas','curl_ssl_version',''),(1201,'auth_cas','logout_return_url',''),(1202,'auth_cas','host_url',''),(1203,'auth_cas','ldap_version','3'),(1204,'auth_cas','start_tls','0'),(1205,'auth_cas','ldapencoding','utf-8'),(1206,'auth_cas','pagesize','250'),(1207,'auth_cas','bind_dn',''),(1208,'auth_cas','bind_pw',''),(1209,'auth_cas','user_type','default'),(1210,'auth_cas','contexts',''),(1211,'auth_cas','search_sub','0'),(1212,'auth_cas','opt_deref','0'),(1213,'auth_cas','user_attribute',''),(1214,'auth_cas','memberattribute',''),(1215,'auth_cas','memberattribute_isdn',''),(1216,'auth_cas','objectclass',''),(1217,'auth_cas','attrcreators',''),(1218,'auth_cas','groupecreators',''),(1219,'auth_cas','removeuser','0'),(1220,'auth_cas','field_map_firstname',''),(1221,'auth_cas','field_updatelocal_firstname','oncreate'),(1222,'auth_cas','field_updateremote_firstname','0'),(1223,'auth_cas','field_lock_firstname','unlocked'),(1224,'auth_cas','field_map_lastname',''),(1225,'auth_cas','field_updatelocal_lastname','oncreate'),(1226,'auth_cas','field_updateremote_lastname','0'),(1227,'auth_cas','field_lock_lastname','unlocked'),(1228,'auth_cas','field_map_email',''),(1229,'auth_cas','field_updatelocal_email','oncreate'),(1230,'auth_cas','field_updateremote_email','0'),(1231,'auth_cas','field_lock_email','unlocked'),(1232,'auth_cas','field_map_city',''),(1233,'auth_cas','field_updatelocal_city','oncreate'),(1234,'auth_cas','field_updateremote_city','0'),(1235,'auth_cas','field_lock_city','unlocked'),(1236,'auth_cas','field_map_country',''),(1237,'auth_cas','field_updatelocal_country','oncreate'),(1238,'auth_cas','field_updateremote_country','0'),(1239,'auth_cas','field_lock_country','unlocked'),(1240,'auth_cas','field_map_lang',''),(1241,'auth_cas','field_updatelocal_lang','oncreate'),(1242,'auth_cas','field_updateremote_lang','0'),(1243,'auth_cas','field_lock_lang','unlocked'),(1244,'auth_cas','field_map_description',''),(1245,'auth_cas','field_updatelocal_description','oncreate'),(1246,'auth_cas','field_updateremote_description','0'),(1247,'auth_cas','field_lock_description','unlocked'),(1248,'auth_cas','field_map_url',''),(1249,'auth_cas','field_updatelocal_url','oncreate'),(1250,'auth_cas','field_updateremote_url','0'),(1251,'auth_cas','field_lock_url','unlocked'),(1252,'auth_cas','field_map_idnumber',''),(1253,'auth_cas','field_updatelocal_idnumber','oncreate'),(1254,'auth_cas','field_updateremote_idnumber','0'),(1255,'auth_cas','field_lock_idnumber','unlocked'),(1256,'auth_cas','field_map_institution',''),(1257,'auth_cas','field_updatelocal_institution','oncreate'),(1258,'auth_cas','field_updateremote_institution','0'),(1259,'auth_cas','field_lock_institution','unlocked'),(1260,'auth_cas','field_map_department',''),(1261,'auth_cas','field_updatelocal_department','oncreate'),(1262,'auth_cas','field_updateremote_department','0'),(1263,'auth_cas','field_lock_department','unlocked'),(1264,'auth_cas','field_map_phone1',''),(1265,'auth_cas','field_updatelocal_phone1','oncreate'),(1266,'auth_cas','field_updateremote_phone1','0'),(1267,'auth_cas','field_lock_phone1','unlocked'),(1268,'auth_cas','field_map_phone2',''),(1269,'auth_cas','field_updatelocal_phone2','oncreate'),(1270,'auth_cas','field_updateremote_phone2','0'),(1271,'auth_cas','field_lock_phone2','unlocked'),(1272,'auth_cas','field_map_address',''),(1273,'auth_cas','field_updatelocal_address','oncreate'),(1274,'auth_cas','field_updateremote_address','0'),(1275,'auth_cas','field_lock_address','unlocked'),(1276,'auth_cas','field_map_firstnamephonetic',''),(1277,'auth_cas','field_updatelocal_firstnamephonetic','oncreate'),(1278,'auth_cas','field_updateremote_firstnamephonetic','0'),(1279,'auth_cas','field_lock_firstnamephonetic','unlocked'),(1280,'auth_cas','field_map_lastnamephonetic',''),(1281,'auth_cas','field_updatelocal_lastnamephonetic','oncreate'),(1282,'auth_cas','field_updateremote_lastnamephonetic','0'),(1283,'auth_cas','field_lock_lastnamephonetic','unlocked'),(1284,'auth_cas','field_map_middlename',''),(1285,'auth_cas','field_updatelocal_middlename','oncreate'),(1286,'auth_cas','field_updateremote_middlename','0'),(1287,'auth_cas','field_lock_middlename','unlocked'),(1288,'auth_cas','field_map_alternatename',''),(1289,'auth_cas','field_updatelocal_alternatename','oncreate'),(1290,'auth_cas','field_updateremote_alternatename','0'),(1291,'auth_cas','field_lock_alternatename','unlocked'),(1292,'auth_email','recaptcha','0'),(1293,'auth_email','field_lock_firstname','unlocked'),(1294,'auth_email','field_lock_lastname','unlocked'),(1295,'auth_email','field_lock_email','unlocked'),(1296,'auth_email','field_lock_city','unlocked'),(1297,'auth_email','field_lock_country','unlocked'),(1298,'auth_email','field_lock_lang','unlocked'),(1299,'auth_email','field_lock_description','unlocked'),(1300,'auth_email','field_lock_url','unlocked'),(1301,'auth_email','field_lock_idnumber','unlocked'),(1302,'auth_email','field_lock_institution','unlocked'),(1303,'auth_email','field_lock_department','unlocked'),(1304,'auth_email','field_lock_phone1','unlocked'),(1305,'auth_email','field_lock_phone2','unlocked'),(1306,'auth_email','field_lock_address','unlocked'),(1307,'auth_email','field_lock_firstnamephonetic','unlocked'),(1308,'auth_email','field_lock_lastnamephonetic','unlocked'),(1309,'auth_email','field_lock_middlename','unlocked'),(1310,'auth_email','field_lock_alternatename','unlocked'),(1311,'auth_db','host','127.0.0.1'),(1312,'auth_db','type','mysqli'),(1313,'auth_db','sybasequoting','0'),(1314,'auth_db','name',''),(1315,'auth_db','user',''),(1316,'auth_db','pass',''),(1317,'auth_db','table',''),(1318,'auth_db','fielduser',''),(1319,'auth_db','fieldpass',''),(1320,'auth_db','passtype','plaintext'),(1321,'auth_db','extencoding','utf-8'),(1322,'auth_db','setupsql',''),(1323,'auth_db','debugauthdb','0'),(1324,'auth_db','changepasswordurl',''),(1325,'auth_db','removeuser','0'),(1326,'auth_db','updateusers','0'),(1327,'auth_db','field_map_firstname',''),(1328,'auth_db','field_updatelocal_firstname','oncreate'),(1329,'auth_db','field_updateremote_firstname','0'),(1330,'auth_db','field_lock_firstname','unlocked'),(1331,'auth_db','field_map_lastname',''),(1332,'auth_db','field_updatelocal_lastname','oncreate'),(1333,'auth_db','field_updateremote_lastname','0'),(1334,'auth_db','field_lock_lastname','unlocked'),(1335,'auth_db','field_map_email',''),(1336,'auth_db','field_updatelocal_email','oncreate'),(1337,'auth_db','field_updateremote_email','0'),(1338,'auth_db','field_lock_email','unlocked'),(1339,'auth_db','field_map_city',''),(1340,'auth_db','field_updatelocal_city','oncreate'),(1341,'auth_db','field_updateremote_city','0'),(1342,'auth_db','field_lock_city','unlocked'),(1343,'auth_db','field_map_country',''),(1344,'auth_db','field_updatelocal_country','oncreate'),(1345,'auth_db','field_updateremote_country','0'),(1346,'auth_db','field_lock_country','unlocked'),(1347,'auth_db','field_map_lang',''),(1348,'auth_db','field_updatelocal_lang','oncreate'),(1349,'auth_db','field_updateremote_lang','0'),(1350,'auth_db','field_lock_lang','unlocked'),(1351,'auth_db','field_map_description',''),(1352,'auth_db','field_updatelocal_description','oncreate'),(1353,'auth_db','field_updateremote_description','0'),(1354,'auth_db','field_lock_description','unlocked'),(1355,'auth_db','field_map_url',''),(1356,'auth_db','field_updatelocal_url','oncreate'),(1357,'auth_db','field_updateremote_url','0'),(1358,'auth_db','field_lock_url','unlocked'),(1359,'auth_db','field_map_idnumber',''),(1360,'auth_db','field_updatelocal_idnumber','oncreate'),(1361,'auth_db','field_updateremote_idnumber','0'),(1362,'auth_db','field_lock_idnumber','unlocked'),(1363,'auth_db','field_map_institution',''),(1364,'auth_db','field_updatelocal_institution','oncreate'),(1365,'auth_db','field_updateremote_institution','0'),(1366,'auth_db','field_lock_institution','unlocked'),(1367,'auth_db','field_map_department',''),(1368,'auth_db','field_updatelocal_department','oncreate'),(1369,'auth_db','field_updateremote_department','0'),(1370,'auth_db','field_lock_department','unlocked'),(1371,'auth_db','field_map_phone1',''),(1372,'auth_db','field_updatelocal_phone1','oncreate'),(1373,'auth_db','field_updateremote_phone1','0'),(1374,'auth_db','field_lock_phone1','unlocked'),(1375,'auth_db','field_map_phone2',''),(1376,'auth_db','field_updatelocal_phone2','oncreate'),(1377,'auth_db','field_updateremote_phone2','0'),(1378,'auth_db','field_lock_phone2','unlocked'),(1379,'auth_db','field_map_address',''),(1380,'auth_db','field_updatelocal_address','oncreate'),(1381,'auth_db','field_updateremote_address','0'),(1382,'auth_db','field_lock_address','unlocked'),(1383,'auth_db','field_map_firstnamephonetic',''),(1384,'auth_db','field_updatelocal_firstnamephonetic','oncreate'),(1385,'auth_db','field_updateremote_firstnamephonetic','0'),(1386,'auth_db','field_lock_firstnamephonetic','unlocked'),(1387,'auth_db','field_map_lastnamephonetic',''),(1388,'auth_db','field_updatelocal_lastnamephonetic','oncreate'),(1389,'auth_db','field_updateremote_lastnamephonetic','0'),(1390,'auth_db','field_lock_lastnamephonetic','unlocked'),(1391,'auth_db','field_map_middlename',''),(1392,'auth_db','field_updatelocal_middlename','oncreate'),(1393,'auth_db','field_updateremote_middlename','0'),(1394,'auth_db','field_lock_middlename','unlocked'),(1395,'auth_db','field_map_alternatename',''),(1396,'auth_db','field_updatelocal_alternatename','oncreate'),(1397,'auth_db','field_updateremote_alternatename','0'),(1398,'auth_db','field_lock_alternatename','unlocked'),(1399,'auth_ldap','host_url',''),(1400,'auth_ldap','ldap_version','3'),(1401,'auth_ldap','start_tls','0'),(1402,'auth_ldap','ldapencoding','utf-8'),(1403,'auth_ldap','pagesize','250'),(1404,'auth_ldap','preventpassindb','0'),(1405,'auth_ldap','bind_dn',''),(1406,'auth_ldap','bind_pw',''),(1407,'auth_ldap','user_type','default'),(1408,'auth_ldap','contexts',''),(1409,'auth_ldap','search_sub','0'),(1410,'auth_ldap','opt_deref','0'),(1411,'auth_ldap','user_attribute',''),(1412,'auth_ldap','suspended_attribute',''),(1413,'auth_ldap','memberattribute',''),(1414,'auth_ldap','memberattribute_isdn',''),(1415,'auth_ldap','objectclass',''),(1416,'auth_ldap','forcechangepassword','0'),(1417,'auth_ldap','stdchangepassword','0'),(1418,'auth_ldap','passtype','plaintext'),(1419,'auth_ldap','changepasswordurl',''),(1420,'auth_ldap','expiration','0'),(1421,'auth_ldap','expiration_warning',''),(1422,'auth_ldap','expireattr',''),(1423,'auth_ldap','gracelogins','0'),(1424,'auth_ldap','graceattr',''),(1425,'auth_ldap','auth_user_create','0'),(1426,'auth_ldap','create_context',''),(1427,'auth_ldap','managercontext',''),(1428,'auth_ldap','coursecreatorcontext',''),(1429,'auth_ldap','removeuser','0'),(1430,'auth_ldap','sync_suspended','0'),(1431,'auth_ldap','ntlmsso_enabled','0'),(1432,'auth_ldap','ntlmsso_subnet',''),(1433,'auth_ldap','ntlmsso_ie_fastpath','0'),(1434,'auth_ldap','ntlmsso_type','ntlm'),(1435,'auth_ldap','ntlmsso_remoteuserformat',''),(1436,'auth_ldap','field_map_firstname',''),(1437,'auth_ldap','field_updatelocal_firstname','oncreate'),(1438,'auth_ldap','field_updateremote_firstname','0'),(1439,'auth_ldap','field_lock_firstname','unlocked'),(1440,'auth_ldap','field_map_lastname',''),(1441,'auth_ldap','field_updatelocal_lastname','oncreate'),(1442,'auth_ldap','field_updateremote_lastname','0'),(1443,'auth_ldap','field_lock_lastname','unlocked'),(1444,'auth_ldap','field_map_email',''),(1445,'auth_ldap','field_updatelocal_email','oncreate'),(1446,'auth_ldap','field_updateremote_email','0'),(1447,'auth_ldap','field_lock_email','unlocked'),(1448,'auth_ldap','field_map_city',''),(1449,'auth_ldap','field_updatelocal_city','oncreate'),(1450,'auth_ldap','field_updateremote_city','0'),(1451,'auth_ldap','field_lock_city','unlocked'),(1452,'auth_ldap','field_map_country',''),(1453,'auth_ldap','field_updatelocal_country','oncreate'),(1454,'auth_ldap','field_updateremote_country','0'),(1455,'auth_ldap','field_lock_country','unlocked'),(1456,'auth_ldap','field_map_lang',''),(1457,'auth_ldap','field_updatelocal_lang','oncreate'),(1458,'auth_ldap','field_updateremote_lang','0'),(1459,'auth_ldap','field_lock_lang','unlocked'),(1460,'auth_ldap','field_map_description',''),(1461,'auth_ldap','field_updatelocal_description','oncreate'),(1462,'auth_ldap','field_updateremote_description','0'),(1463,'auth_ldap','field_lock_description','unlocked'),(1464,'auth_ldap','field_map_url',''),(1465,'auth_ldap','field_updatelocal_url','oncreate'),(1466,'auth_ldap','field_updateremote_url','0'),(1467,'auth_ldap','field_lock_url','unlocked'),(1468,'auth_ldap','field_map_idnumber',''),(1469,'auth_ldap','field_updatelocal_idnumber','oncreate'),(1470,'auth_ldap','field_updateremote_idnumber','0'),(1471,'auth_ldap','field_lock_idnumber','unlocked'),(1472,'auth_ldap','field_map_institution',''),(1473,'auth_ldap','field_updatelocal_institution','oncreate'),(1474,'auth_ldap','field_updateremote_institution','0'),(1475,'auth_ldap','field_lock_institution','unlocked'),(1476,'auth_ldap','field_map_department',''),(1477,'auth_ldap','field_updatelocal_department','oncreate'),(1478,'auth_ldap','field_updateremote_department','0'),(1479,'auth_ldap','field_lock_department','unlocked'),(1480,'auth_ldap','field_map_phone1',''),(1481,'auth_ldap','field_updatelocal_phone1','oncreate'),(1482,'auth_ldap','field_updateremote_phone1','0'),(1483,'auth_ldap','field_lock_phone1','unlocked'),(1484,'auth_ldap','field_map_phone2',''),(1485,'auth_ldap','field_updatelocal_phone2','oncreate'),(1486,'auth_ldap','field_updateremote_phone2','0'),(1487,'auth_ldap','field_lock_phone2','unlocked'),(1488,'auth_ldap','field_map_address',''),(1489,'auth_ldap','field_updatelocal_address','oncreate'),(1490,'auth_ldap','field_updateremote_address','0'),(1491,'auth_ldap','field_lock_address','unlocked'),(1492,'auth_ldap','field_map_firstnamephonetic',''),(1493,'auth_ldap','field_updatelocal_firstnamephonetic','oncreate'),(1494,'auth_ldap','field_updateremote_firstnamephonetic','0'),(1495,'auth_ldap','field_lock_firstnamephonetic','unlocked'),(1496,'auth_ldap','field_map_lastnamephonetic',''),(1497,'auth_ldap','field_updatelocal_lastnamephonetic','oncreate'),(1498,'auth_ldap','field_updateremote_lastnamephonetic','0'),(1499,'auth_ldap','field_lock_lastnamephonetic','unlocked'),(1500,'auth_ldap','field_map_middlename',''),(1501,'auth_ldap','field_updatelocal_middlename','oncreate'),(1502,'auth_ldap','field_updateremote_middlename','0'),(1503,'auth_ldap','field_lock_middlename','unlocked'),(1504,'auth_ldap','field_map_alternatename',''),(1505,'auth_ldap','field_updatelocal_alternatename','oncreate'),(1506,'auth_ldap','field_updateremote_alternatename','0'),(1507,'auth_ldap','field_lock_alternatename','unlocked'),(1508,'auth_manual','expiration','0'),(1509,'auth_manual','expirationtime','30'),(1510,'auth_manual','expiration_warning','0'),(1511,'auth_manual','field_lock_firstname','unlocked'),(1512,'auth_manual','field_lock_lastname','unlocked'),(1513,'auth_manual','field_lock_email','unlocked'),(1514,'auth_manual','field_lock_city','unlocked'),(1515,'auth_manual','field_lock_country','unlocked'),(1516,'auth_manual','field_lock_lang','unlocked'),(1517,'auth_manual','field_lock_description','unlocked'),(1518,'auth_manual','field_lock_url','unlocked'),(1519,'auth_manual','field_lock_idnumber','unlocked'),(1520,'auth_manual','field_lock_institution','unlocked'),(1521,'auth_manual','field_lock_department','unlocked'),(1522,'auth_manual','field_lock_phone1','unlocked'),(1523,'auth_manual','field_lock_phone2','unlocked'),(1524,'auth_manual','field_lock_address','unlocked'),(1525,'auth_manual','field_lock_firstnamephonetic','unlocked'),(1526,'auth_manual','field_lock_lastnamephonetic','unlocked'),(1527,'auth_manual','field_lock_middlename','unlocked'),(1528,'auth_manual','field_lock_alternatename','unlocked'),(1529,'auth_mnet','rpc_negotiation_timeout','30'),(1530,'auth_none','field_lock_firstname','unlocked'),(1531,'auth_none','field_lock_lastname','unlocked'),(1532,'auth_none','field_lock_email','unlocked'),(1533,'auth_none','field_lock_city','unlocked'),(1534,'auth_none','field_lock_country','unlocked'),(1535,'auth_none','field_lock_lang','unlocked'),(1536,'auth_none','field_lock_description','unlocked'),(1537,'auth_none','field_lock_url','unlocked'),(1538,'auth_none','field_lock_idnumber','unlocked'),(1539,'auth_none','field_lock_institution','unlocked'),(1540,'auth_none','field_lock_department','unlocked'),(1541,'auth_none','field_lock_phone1','unlocked'),(1542,'auth_none','field_lock_phone2','unlocked'),(1543,'auth_none','field_lock_address','unlocked'),(1544,'auth_none','field_lock_firstnamephonetic','unlocked'),(1545,'auth_none','field_lock_lastnamephonetic','unlocked'),(1546,'auth_none','field_lock_middlename','unlocked'),(1547,'auth_none','field_lock_alternatename','unlocked'),(1548,'auth_oauth2','field_lock_firstname','unlocked'),(1549,'auth_oauth2','field_lock_lastname','unlocked'),(1550,'auth_oauth2','field_lock_email','unlocked'),(1551,'auth_oauth2','field_lock_city','unlocked'),(1552,'auth_oauth2','field_lock_country','unlocked'),(1553,'auth_oauth2','field_lock_lang','unlocked'),(1554,'auth_oauth2','field_lock_description','unlocked'),(1555,'auth_oauth2','field_lock_url','unlocked'),(1556,'auth_oauth2','field_lock_idnumber','unlocked'),(1557,'auth_oauth2','field_lock_institution','unlocked'),(1558,'auth_oauth2','field_lock_department','unlocked'),(1559,'auth_oauth2','field_lock_phone1','unlocked'),(1560,'auth_oauth2','field_lock_phone2','unlocked'),(1561,'auth_oauth2','field_lock_address','unlocked'),(1562,'auth_oauth2','field_lock_firstnamephonetic','unlocked'),(1563,'auth_oauth2','field_lock_lastnamephonetic','unlocked'),(1564,'auth_oauth2','field_lock_middlename','unlocked'),(1565,'auth_oauth2','field_lock_alternatename','unlocked'),(1566,'auth_shibboleth','user_attribute',''),(1567,'auth_shibboleth','convert_data',''),(1568,'auth_shibboleth','alt_login','off'),(1569,'auth_shibboleth','organization_selection','urn:mace:organization1:providerID, Example Organization 1\n        https://another.idp-id.com/shibboleth, Other Example Organization, /Shibboleth.sso/DS/SWITCHaai\n        urn:mace:organization2:providerID, Example Organization 2, /Shibboleth.sso/WAYF/SWITCHaai'),(1570,'auth_shibboleth','logout_handler',''),(1571,'auth_shibboleth','logout_return_url',''),(1572,'auth_shibboleth','login_name','Shibboleth Login'),(1573,'auth_shibboleth','auth_instructions','Use the <a href=\"http://localhost/ava/auth/shibboleth/index.php\">Shibboleth login</a> to get access via Shibboleth, if your institution supports it.<br />Otherwise, use the normal login form shown here.'),(1574,'auth_shibboleth','changepasswordurl',''),(1575,'auth_shibboleth','field_map_firstname',''),(1576,'auth_shibboleth','field_updatelocal_firstname','oncreate'),(1577,'auth_shibboleth','field_lock_firstname','unlocked'),(1578,'auth_shibboleth','field_map_lastname',''),(1579,'auth_shibboleth','field_updatelocal_lastname','oncreate'),(1580,'auth_shibboleth','field_lock_lastname','unlocked'),(1581,'auth_shibboleth','field_map_email',''),(1582,'auth_shibboleth','field_updatelocal_email','oncreate'),(1583,'auth_shibboleth','field_lock_email','unlocked'),(1584,'auth_shibboleth','field_map_city',''),(1585,'auth_shibboleth','field_updatelocal_city','oncreate'),(1586,'auth_shibboleth','field_lock_city','unlocked'),(1587,'auth_shibboleth','field_map_country',''),(1588,'auth_shibboleth','field_updatelocal_country','oncreate'),(1589,'auth_shibboleth','field_lock_country','unlocked'),(1590,'auth_shibboleth','field_map_lang',''),(1591,'auth_shibboleth','field_updatelocal_lang','oncreate'),(1592,'auth_shibboleth','field_lock_lang','unlocked'),(1593,'auth_shibboleth','field_map_description',''),(1594,'auth_shibboleth','field_updatelocal_description','oncreate'),(1595,'auth_shibboleth','field_lock_description','unlocked'),(1596,'auth_shibboleth','field_map_url',''),(1597,'auth_shibboleth','field_updatelocal_url','oncreate'),(1598,'auth_shibboleth','field_lock_url','unlocked'),(1599,'auth_shibboleth','field_map_idnumber',''),(1600,'auth_shibboleth','field_updatelocal_idnumber','oncreate'),(1601,'auth_shibboleth','field_lock_idnumber','unlocked'),(1602,'auth_shibboleth','field_map_institution',''),(1603,'auth_shibboleth','field_updatelocal_institution','oncreate'),(1604,'auth_shibboleth','field_lock_institution','unlocked'),(1605,'auth_shibboleth','field_map_department',''),(1606,'auth_shibboleth','field_updatelocal_department','oncreate'),(1607,'auth_shibboleth','field_lock_department','unlocked'),(1608,'auth_shibboleth','field_map_phone1',''),(1609,'auth_shibboleth','field_updatelocal_phone1','oncreate'),(1610,'auth_shibboleth','field_lock_phone1','unlocked'),(1611,'auth_shibboleth','field_map_phone2',''),(1612,'auth_shibboleth','field_updatelocal_phone2','oncreate'),(1613,'auth_shibboleth','field_lock_phone2','unlocked'),(1614,'auth_shibboleth','field_map_address',''),(1615,'auth_shibboleth','field_updatelocal_address','oncreate'),(1616,'auth_shibboleth','field_lock_address','unlocked'),(1617,'auth_shibboleth','field_map_firstnamephonetic',''),(1618,'auth_shibboleth','field_updatelocal_firstnamephonetic','oncreate'),(1619,'auth_shibboleth','field_lock_firstnamephonetic','unlocked'),(1620,'auth_shibboleth','field_map_lastnamephonetic',''),(1621,'auth_shibboleth','field_updatelocal_lastnamephonetic','oncreate'),(1622,'auth_shibboleth','field_lock_lastnamephonetic','unlocked'),(1623,'auth_shibboleth','field_map_middlename',''),(1624,'auth_shibboleth','field_updatelocal_middlename','oncreate'),(1625,'auth_shibboleth','field_lock_middlename','unlocked'),(1626,'auth_shibboleth','field_map_alternatename',''),(1627,'auth_shibboleth','field_updatelocal_alternatename','oncreate'),(1628,'auth_shibboleth','field_lock_alternatename','unlocked'),(1629,'block_activity_results','config_showbest','3'),(1630,'block_activity_results','config_showbest_locked',''),(1631,'block_activity_results','config_showworst','0'),(1632,'block_activity_results','config_showworst_locked',''),(1633,'block_activity_results','config_usegroups','0'),(1634,'block_activity_results','config_usegroups_locked',''),(1635,'block_activity_results','config_nameformat','1'),(1636,'block_activity_results','config_nameformat_locked',''),(1637,'block_activity_results','config_gradeformat','1'),(1638,'block_activity_results','config_gradeformat_locked',''),(1639,'block_activity_results','config_decimalpoints','2'),(1640,'block_activity_results','config_decimalpoints_locked',''),(1641,'block_myoverview','defaulttab','timeline'),(1642,'block_section_links','numsections1','22'),(1643,'block_section_links','incby1','2'),(1644,'block_section_links','numsections2','40'),(1645,'block_section_links','incby2','5'),(1646,'block_tag_youtube','apikey',''),(1647,'format_singleactivity','activitytype','forum'),(1648,'fileconverter_googledrive','issuerid',''),(1649,'enrol_cohort','roleid','5'),(1650,'enrol_cohort','unenrolaction','0'),(1651,'enrol_meta','nosyncroleids',''),(1652,'enrol_meta','syncall','1'),(1653,'enrol_meta','unenrolaction','3'),(1654,'enrol_meta','coursesort','sortorder'),(1655,'enrol_database','dbtype',''),(1656,'enrol_database','dbhost','localhost'),(1657,'enrol_database','dbuser',''),(1658,'enrol_database','dbpass',''),(1659,'enrol_database','dbname',''),(1660,'enrol_database','dbencoding','utf-8'),(1661,'enrol_database','dbsetupsql',''),(1662,'enrol_database','dbsybasequoting','0'),(1663,'enrol_database','debugdb','0'),(1664,'enrol_database','localcoursefield','idnumber'),(1665,'enrol_database','localuserfield','idnumber'),(1666,'enrol_database','localrolefield','shortname'),(1667,'enrol_database','localcategoryfield','id'),(1668,'enrol_database','remoteenroltable',''),(1669,'enrol_database','remotecoursefield',''),(1670,'enrol_database','remoteuserfield',''),(1671,'enrol_database','remoterolefield',''),(1672,'enrol_database','remoteotheruserfield',''),(1673,'enrol_database','defaultrole','5'),(1674,'enrol_database','ignorehiddencourses','0'),(1675,'enrol_database','unenrolaction','0'),(1676,'enrol_database','newcoursetable',''),(1677,'enrol_database','newcoursefullname','fullname'),(1678,'enrol_database','newcourseshortname','shortname'),(1679,'enrol_database','newcourseidnumber','idnumber'),(1680,'enrol_database','newcoursecategory',''),(1681,'enrol_database','defaultcategory','1'),(1682,'enrol_database','templatecourse',''),(1683,'enrol_flatfile','location',''),(1684,'enrol_flatfile','encoding','UTF-8'),(1685,'enrol_flatfile','mailstudents','0'),(1686,'enrol_flatfile','mailteachers','0'),(1687,'enrol_flatfile','mailadmins','0'),(1688,'enrol_flatfile','unenrolaction','3'),(1689,'enrol_flatfile','expiredaction','3'),(1690,'enrol_guest','requirepassword','0'),(1691,'enrol_guest','usepasswordpolicy','0'),(1692,'enrol_guest','showhint','0'),(1693,'enrol_guest','defaultenrol','1'),(1694,'enrol_guest','status','1'),(1695,'enrol_guest','status_adv',''),(1696,'enrol_imsenterprise','imsfilelocation',''),(1697,'enrol_imsenterprise','logtolocation',''),(1698,'enrol_imsenterprise','mailadmins','0'),(1699,'enrol_imsenterprise','createnewusers','0'),(1700,'enrol_imsenterprise','imsupdateusers','0'),(1701,'enrol_imsenterprise','imsdeleteusers','0'),(1702,'enrol_imsenterprise','fixcaseusernames','0'),(1703,'enrol_imsenterprise','fixcasepersonalnames','0'),(1704,'enrol_imsenterprise','imssourcedidfallback','0'),(1705,'enrol_imsenterprise','imsrolemap01','5'),(1706,'enrol_imsenterprise','imsrolemap02','3'),(1707,'enrol_imsenterprise','imsrolemap03','3'),(1708,'enrol_imsenterprise','imsrolemap04','5'),(1709,'enrol_imsenterprise','imsrolemap05','0'),(1710,'enrol_imsenterprise','imsrolemap06','4'),(1711,'enrol_imsenterprise','imsrolemap07','0'),(1712,'enrol_imsenterprise','imsrolemap08','4'),(1713,'enrol_imsenterprise','truncatecoursecodes','0'),(1714,'enrol_imsenterprise','createnewcourses','0'),(1715,'enrol_imsenterprise','updatecourses','0'),(1716,'enrol_imsenterprise','createnewcategories','0'),(1717,'enrol_imsenterprise','nestedcategories','0'),(1718,'enrol_imsenterprise','categoryidnumber','0'),(1719,'enrol_imsenterprise','categoryseparator',''),(1720,'enrol_imsenterprise','imsunenrol','0'),(1721,'enrol_imsenterprise','imscoursemapshortname','coursecode'),(1722,'enrol_imsenterprise','imscoursemapfullname','short'),(1723,'enrol_imsenterprise','imscoursemapsummary','ignore'),(1724,'enrol_imsenterprise','imsrestricttarget',''),(1725,'enrol_imsenterprise','imscapitafix','0'),(1726,'enrol_ldap','host_url',''),(1727,'enrol_ldap','start_tls','0'),(1728,'enrol_ldap','ldap_version','3'),(1729,'enrol_ldap','ldapencoding','utf-8'),(1730,'enrol_ldap','pagesize','250'),(1731,'enrol_ldap','bind_dn',''),(1732,'enrol_ldap','bind_pw',''),(1733,'enrol_ldap','course_search_sub','0'),(1734,'enrol_ldap','memberattribute_isdn','0'),(1735,'enrol_ldap','user_contexts',''),(1736,'enrol_ldap','user_search_sub','0'),(1737,'enrol_ldap','user_type','default'),(1738,'enrol_ldap','opt_deref','0'),(1739,'enrol_ldap','idnumber_attribute',''),(1740,'enrol_ldap','objectclass','(objectClass=*)'),(1741,'enrol_ldap','course_idnumber',''),(1742,'enrol_ldap','course_shortname',''),(1743,'enrol_ldap','course_fullname',''),(1744,'enrol_ldap','course_summary',''),(1745,'enrol_ldap','ignorehiddencourses','0'),(1746,'enrol_ldap','unenrolaction','0'),(1747,'enrol_ldap','autocreate','0'),(1748,'enrol_ldap','category','1'),(1749,'enrol_ldap','template',''),(1750,'enrol_ldap','course_shortname_updateonsync','0'),(1751,'enrol_ldap','course_fullname_updateonsync','0'),(1752,'enrol_ldap','course_summary_updateonsync','0'),(1753,'enrol_ldap','nested_groups','0'),(1754,'enrol_ldap','group_memberofattribute',''),(1755,'enrol_manual','expiredaction','1'),(1756,'enrol_manual','expirynotifyhour','6'),(1757,'enrol_manual','defaultenrol','1'),(1758,'enrol_manual','status','0'),(1759,'enrol_manual','roleid','5'),(1760,'enrol_manual','enrolstart','4'),(1761,'enrol_manual','enrolperiod','0'),(1762,'enrol_manual','expirynotify','0'),(1763,'enrol_manual','expirythreshold','86400'),(1764,'enrol_mnet','roleid','5'),(1765,'enrol_mnet','roleid_adv','1'),(1766,'enrol_paypal','paypalbusiness',''),(1767,'enrol_paypal','mailstudents','0'),(1768,'enrol_paypal','mailteachers','0'),(1769,'enrol_paypal','mailadmins','0'),(1770,'enrol_paypal','expiredaction','3'),(1771,'enrol_paypal','status','1'),(1772,'enrol_paypal','cost','0'),(1773,'enrol_paypal','currency','USD'),(1774,'enrol_paypal','roleid','5'),(1775,'enrol_paypal','enrolperiod','0'),(1776,'enrol_lti','emaildisplay','2'),(1777,'enrol_lti','city',''),(1778,'enrol_lti','country',''),(1779,'enrol_lti','timezone','99'),(1780,'enrol_lti','lang','en'),(1781,'enrol_lti','institution',''),(1782,'enrol_self','requirepassword','0'),(1783,'enrol_self','usepasswordpolicy','0'),(1784,'enrol_self','showhint','0'),(1785,'enrol_self','expiredaction','1'),(1786,'enrol_self','expirynotifyhour','6'),(1787,'enrol_self','defaultenrol','1'),(1788,'enrol_self','status','1'),(1789,'enrol_self','newenrols','1'),(1790,'enrol_self','groupkey','0'),(1791,'enrol_self','roleid','5'),(1792,'enrol_self','enrolperiod','0'),(1793,'enrol_self','expirynotify','0'),(1794,'enrol_self','expirythreshold','86400'),(1795,'enrol_self','longtimenosee','0'),(1796,'enrol_self','maxenrolled','0'),(1797,'enrol_self','sendcoursewelcomemessage','1'),(1798,'filter_urltolink','formats','0'),(1799,'filter_urltolink','embedimages','1'),(1800,'filter_emoticon','formats','1,4,0'),(1801,'filter_mathjaxloader','httpsurl','https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.2/MathJax.js'),(1802,'filter_mathjaxloader','texfiltercompatibility','0'),(1803,'filter_mathjaxloader','mathjaxconfig','\nMathJax.Hub.Config({\n    config: [\"Accessible.js\", \"Safe.js\"],\n    errorSettings: { message: [\"!\"] },\n    skipStartupTypeset: true,\n    messageStyle: \"none\"\n});\n'),(1804,'filter_mathjaxloader','additionaldelimiters',''),(1805,'filter_tex','latexpreamble','\\usepackage[latin1]{inputenc}\n\\usepackage{amsmath}\n\\usepackage{amsfonts}\n\\RequirePackage{amsmath,amssymb,latexsym}\n'),(1806,'filter_tex','latexbackground','#FFFFFF'),(1807,'filter_tex','density','120'),(1808,'filter_tex','pathlatex','/usr/bin/latex'),(1809,'filter_tex','pathdvips','/usr/bin/dvips'),(1810,'filter_tex','pathconvert','/usr/bin/convert'),(1811,'filter_tex','pathdvisvgm','/usr/bin/dvisvgm'),(1812,'filter_tex','pathmimetex',''),(1813,'filter_tex','convertformat','gif'),(1814,'logstore_database','dbdriver',''),(1815,'logstore_database','dbhost',''),(1816,'logstore_database','dbuser',''),(1817,'logstore_database','dbpass',''),(1818,'logstore_database','dbname',''),(1819,'logstore_database','dbtable',''),(1820,'logstore_database','dbpersist','0'),(1821,'logstore_database','dbsocket',''),(1822,'logstore_database','dbport',''),(1823,'logstore_database','dbschema',''),(1824,'logstore_database','dbcollation',''),(1825,'logstore_database','dbhandlesoptions','0'),(1826,'logstore_database','buffersize','50'),(1827,'logstore_database','logguests','0'),(1828,'logstore_database','includelevels','1,2,0'),(1829,'logstore_database','includeactions','c,r,u,d'),(1830,'logstore_legacy','loglegacy','0'),(1831,'logstore_standard','logguests','1'),(1832,'logstore_standard','loglifetime','0'),(1833,'logstore_standard','buffersize','50'),(1834,'media_videojs','videoextensions','html_video,.f4v,.flv'),(1835,'media_videojs','audioextensions','html_audio'),(1836,'media_videojs','rtmp','0'),(1837,'media_videojs','useflash','0'),(1838,'media_videojs','youtube','1'),(1839,'media_videojs','videocssclass','video-js'),(1840,'media_videojs','audiocssclass','video-js'),(1841,'media_videojs','limitsize','1'),(1842,'qtype_multichoice','answerhowmany','1'),(1843,'qtype_multichoice','shuffleanswers','1'),(1844,'qtype_multichoice','answernumbering','abc'),(1845,'search_solr','server_hostname','127.0.0.1'),(1846,'search_solr','indexname',''),(1847,'search_solr','secure','0'),(1848,'search_solr','server_port','8983'),(1849,'search_solr','server_username',''),(1850,'search_solr','server_password',''),(1851,'search_solr','server_timeout','30'),(1852,'search_solr','ssl_cert',''),(1853,'search_solr','ssl_key',''),(1854,'search_solr','ssl_keypassword',''),(1855,'search_solr','ssl_cainfo',''),(1856,'search_solr','ssl_capath',''),(1857,'search_solr','fileindexing','1'),(1858,'search_solr','maxindexfilekb','2097152'),(1859,'editor_atto','toolbar','collapse = collapse\nstyle1 = title, bold, italic\nlist = unorderedlist, orderedlist\nlinks = link\nfiles = image, media, recordrtc, managefiles\nstyle2 = underline, strike, subscript, superscript\nalign = align\nindent = indent\ninsert = equation, charmap, table, clear\nundo = undo\naccessibility = accessibilitychecker, accessibilityhelper\nother = html'),(1860,'editor_atto','autosavefrequency','60'),(1861,'atto_collapse','showgroups','5'),(1862,'atto_equation','librarygroup1','\n\\cdot\n\\times\n\\ast\n\\div\n\\diamond\n\\pm\n\\mp\n\\oplus\n\\ominus\n\\otimes\n\\oslash\n\\odot\n\\circ\n\\bullet\n\\asymp\n\\equiv\n\\subseteq\n\\supseteq\n\\leq\n\\geq\n\\preceq\n\\succeq\n\\sim\n\\simeq\n\\approx\n\\subset\n\\supset\n\\ll\n\\gg\n\\prec\n\\succ\n\\infty\n\\in\n\\ni\n\\forall\n\\exists\n\\neq\n'),(1863,'atto_equation','librarygroup2','\n\\leftarrow\n\\rightarrow\n\\uparrow\n\\downarrow\n\\leftrightarrow\n\\nearrow\n\\searrow\n\\swarrow\n\\nwarrow\n\\Leftarrow\n\\Rightarrow\n\\Uparrow\n\\Downarrow\n\\Leftrightarrow\n'),(1864,'atto_equation','librarygroup3','\n\\alpha\n\\beta\n\\gamma\n\\delta\n\\epsilon\n\\zeta\n\\eta\n\\theta\n\\iota\n\\kappa\n\\lambda\n\\mu\n\\nu\n\\xi\n\\pi\n\\rho\n\\sigma\n\\tau\n\\upsilon\n\\phi\n\\chi\n\\psi\n\\omega\n\\Gamma\n\\Delta\n\\Theta\n\\Lambda\n\\Xi\n\\Pi\n\\Sigma\n\\Upsilon\n\\Phi\n\\Psi\n\\Omega\n'),(1865,'atto_equation','librarygroup4','\n\\sum{a,b}\n\\sqrt[a]{b+c}\n\\int_{a}^{b}{c}\n\\iint_{a}^{b}{c}\n\\iiint_{a}^{b}{c}\n\\oint{a}\n(a)\n[a]\n\\lbrace{a}\\rbrace\n\\left| \\begin{matrix} a_1 & a_2 \\ a_3 & a_4 \\end{matrix} \\right|\n\\frac{a}{b+c}\n\\vec{a}\n\\binom {a} {b}\n{a \\brack b}\n{a \\brace b}\n'),(1866,'atto_recordrtc','allowedtypes','both'),(1867,'atto_recordrtc','audiobitrate','128000'),(1868,'atto_recordrtc','videobitrate','2500000'),(1869,'atto_recordrtc','timelimit','120'),(1870,'atto_table','allowborders','0'),(1871,'atto_table','allowbackgroundcolour','0'),(1872,'atto_table','allowwidth','0'),(1873,'editor_tinymce','customtoolbar','wrap,formatselect,wrap,bold,italic,wrap,bullist,numlist,wrap,link,unlink,wrap,image\n\nundo,redo,wrap,underline,strikethrough,sub,sup,wrap,justifyleft,justifycenter,justifyright,wrap,outdent,indent,wrap,forecolor,backcolor,wrap,ltr,rtl\n\nfontselect,fontsizeselect,wrap,code,search,replace,wrap,nonbreaking,charmap,table,wrap,cleanup,removeformat,pastetext,pasteword,wrap,fullscreen'),(1874,'editor_tinymce','fontselectlist','Trebuchet=Trebuchet MS,Verdana,Arial,Helvetica,sans-serif;Arial=arial,helvetica,sans-serif;Courier New=courier new,courier,monospace;Georgia=georgia,times new roman,times,serif;Tahoma=tahoma,arial,helvetica,sans-serif;Times New Roman=times new roman,times,serif;Verdana=verdana,arial,helvetica,sans-serif;Impact=impact;Wingdings=wingdings'),(1875,'editor_tinymce','customconfig',''),(1876,'tinymce_moodleemoticon','requireemoticon','1'),(1877,'tinymce_spellchecker','spellengine',''),(1878,'tinymce_spellchecker','spelllanguagelist','+English=en,Danish=da,Dutch=nl,Finnish=fi,French=fr,German=de,Italian=it,Polish=pl,Portuguese=pt,Spanish=es,Swedish=sv'),(1879,'tool_mobile','apppolicy',''),(1880,'theme_boost','themerev','1543610380');
/*!40000 ALTER TABLE `mdl_config_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_context`
--

DROP TABLE IF EXISTS `mdl_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_context` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextlevel` bigint(10) NOT NULL DEFAULT 0,
  `instanceid` bigint(10) NOT NULL DEFAULT 0,
  `path` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `depth` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_cont_conins_uix` (`contextlevel`,`instanceid`),
  KEY `mdl_cont_ins_ix` (`instanceid`),
  KEY `mdl_cont_pat_ix` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='one of these must be set';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_context`
--

LOCK TABLES `mdl_context` WRITE;
/*!40000 ALTER TABLE `mdl_context` DISABLE KEYS */;
INSERT INTO `mdl_context` VALUES (1,10,0,'/1',1),(2,50,1,'/1/2',2),(3,40,1,'/1/3',2),(4,30,1,'/1/4',2),(5,30,2,'/1/5',2),(6,80,1,'/1/6',2),(7,80,2,'/1/7',2),(8,80,3,'/1/8',2),(9,80,4,'/1/9',2),(10,80,5,'/1/10',2),(11,80,6,'/1/11',2),(12,80,7,'/1/12',2),(13,80,8,'/1/13',2),(14,80,9,'/1/5/14',3),(15,80,10,'/1/5/15',3),(16,80,11,'/1/5/16',3),(17,80,12,'/1/5/17',3),(18,80,13,'/1/5/18',3),(19,80,14,'/1/5/19',3),(20,80,15,'/1/5/20',3),(21,30,3,'/1/21',2);
/*!40000 ALTER TABLE `mdl_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_context_temp`
--

DROP TABLE IF EXISTS `mdl_context_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_context_temp` (
  `id` bigint(10) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `depth` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Used by build_context_path() in upgrade and cron to keep con';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_context_temp`
--

LOCK TABLES `mdl_context_temp` WRITE;
/*!40000 ALTER TABLE `mdl_context_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_context_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course`
--

DROP TABLE IF EXISTS `mdl_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `category` bigint(10) NOT NULL DEFAULT 0,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `fullname` varchar(254) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `shortname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `idnumber` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `summary` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `summaryformat` tinyint(2) NOT NULL DEFAULT 0,
  `format` varchar(21) COLLATE utf8mb4_bin NOT NULL DEFAULT 'topics',
  `showgrades` tinyint(2) NOT NULL DEFAULT 1,
  `newsitems` mediumint(5) NOT NULL DEFAULT 1,
  `startdate` bigint(10) NOT NULL DEFAULT 0,
  `enddate` bigint(10) NOT NULL DEFAULT 0,
  `marker` bigint(10) NOT NULL DEFAULT 0,
  `maxbytes` bigint(10) NOT NULL DEFAULT 0,
  `legacyfiles` smallint(4) NOT NULL DEFAULT 0,
  `showreports` smallint(4) NOT NULL DEFAULT 0,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `visibleold` tinyint(1) NOT NULL DEFAULT 1,
  `groupmode` smallint(4) NOT NULL DEFAULT 0,
  `groupmodeforce` smallint(4) NOT NULL DEFAULT 0,
  `defaultgroupingid` bigint(10) NOT NULL DEFAULT 0,
  `lang` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `calendartype` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `theme` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `requested` tinyint(1) NOT NULL DEFAULT 0,
  `enablecompletion` tinyint(1) NOT NULL DEFAULT 0,
  `completionnotify` tinyint(1) NOT NULL DEFAULT 0,
  `cacherev` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_cour_cat_ix` (`category`),
  KEY `mdl_cour_idn_ix` (`idnumber`),
  KEY `mdl_cour_sho_ix` (`shortname`),
  KEY `mdl_cour_sor_ix` (`sortorder`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Central course table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course`
--

LOCK TABLES `mdl_course` WRITE;
/*!40000 ALTER TABLE `mdl_course` DISABLE KEYS */;
INSERT INTO `mdl_course` VALUES (1,0,0,'Ambiente','AVA','',NULL,0,'site',1,3,0,0,0,0,0,0,1,1,0,0,0,'','','',1543609691,1543610376,0,0,0,1543610376);
/*!40000 ALTER TABLE `mdl_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_categories`
--

DROP TABLE IF EXISTS `mdl_course_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `idnumber` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 0,
  `parent` bigint(10) NOT NULL DEFAULT 0,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `coursecount` bigint(10) NOT NULL DEFAULT 0,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `visibleold` tinyint(1) NOT NULL DEFAULT 1,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `depth` bigint(10) NOT NULL DEFAULT 0,
  `path` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `theme` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_courcate_par_ix` (`parent`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Course categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_categories`
--

LOCK TABLES `mdl_course_categories` WRITE;
/*!40000 ALTER TABLE `mdl_course_categories` DISABLE KEYS */;
INSERT INTO `mdl_course_categories` VALUES (1,'Miscellaneous',NULL,NULL,0,0,10000,0,1,1,1543609691,1,'/1',NULL);
/*!40000 ALTER TABLE `mdl_course_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_completion_aggr_methd`
--

DROP TABLE IF EXISTS `mdl_course_completion_aggr_methd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_completion_aggr_methd` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `criteriatype` bigint(10) DEFAULT NULL,
  `method` tinyint(1) NOT NULL DEFAULT 0,
  `value` decimal(10,5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courcompaggrmeth_coucr_uix` (`course`,`criteriatype`),
  KEY `mdl_courcompaggrmeth_cou_ix` (`course`),
  KEY `mdl_courcompaggrmeth_cri_ix` (`criteriatype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Course completion aggregation methods for criteria';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_completion_aggr_methd`
--

LOCK TABLES `mdl_course_completion_aggr_methd` WRITE;
/*!40000 ALTER TABLE `mdl_course_completion_aggr_methd` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_completion_aggr_methd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_completion_crit_compl`
--

DROP TABLE IF EXISTS `mdl_course_completion_crit_compl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_completion_crit_compl` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `criteriaid` bigint(10) NOT NULL DEFAULT 0,
  `gradefinal` decimal(10,5) DEFAULT NULL,
  `unenroled` bigint(10) DEFAULT NULL,
  `timecompleted` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courcompcritcomp_useco_uix` (`userid`,`course`,`criteriaid`),
  KEY `mdl_courcompcritcomp_use_ix` (`userid`),
  KEY `mdl_courcompcritcomp_cou_ix` (`course`),
  KEY `mdl_courcompcritcomp_cri_ix` (`criteriaid`),
  KEY `mdl_courcompcritcomp_tim_ix` (`timecompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Course completion user records';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_completion_crit_compl`
--

LOCK TABLES `mdl_course_completion_crit_compl` WRITE;
/*!40000 ALTER TABLE `mdl_course_completion_crit_compl` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_completion_crit_compl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_completion_criteria`
--

DROP TABLE IF EXISTS `mdl_course_completion_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_completion_criteria` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `criteriatype` bigint(10) NOT NULL DEFAULT 0,
  `module` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `moduleinstance` bigint(10) DEFAULT NULL,
  `courseinstance` bigint(10) DEFAULT NULL,
  `enrolperiod` bigint(10) DEFAULT NULL,
  `timeend` bigint(10) DEFAULT NULL,
  `gradepass` decimal(10,5) DEFAULT NULL,
  `role` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_courcompcrit_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Course completion criteria';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_completion_criteria`
--

LOCK TABLES `mdl_course_completion_criteria` WRITE;
/*!40000 ALTER TABLE `mdl_course_completion_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_completion_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_completion_defaults`
--

DROP TABLE IF EXISTS `mdl_course_completion_defaults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_completion_defaults` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL,
  `module` bigint(10) NOT NULL,
  `completion` tinyint(1) NOT NULL DEFAULT 0,
  `completionview` tinyint(1) NOT NULL DEFAULT 0,
  `completionusegrade` tinyint(1) NOT NULL DEFAULT 0,
  `completionexpected` bigint(10) NOT NULL DEFAULT 0,
  `customrules` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courcompdefa_coumod_uix` (`course`,`module`),
  KEY `mdl_courcompdefa_mod_ix` (`module`),
  KEY `mdl_courcompdefa_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Default settings for activities completion';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_completion_defaults`
--

LOCK TABLES `mdl_course_completion_defaults` WRITE;
/*!40000 ALTER TABLE `mdl_course_completion_defaults` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_completion_defaults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_completions`
--

DROP TABLE IF EXISTS `mdl_course_completions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_completions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `timeenrolled` bigint(10) NOT NULL DEFAULT 0,
  `timestarted` bigint(10) NOT NULL DEFAULT 0,
  `timecompleted` bigint(10) DEFAULT NULL,
  `reaggregate` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courcomp_usecou_uix` (`userid`,`course`),
  KEY `mdl_courcomp_use_ix` (`userid`),
  KEY `mdl_courcomp_cou_ix` (`course`),
  KEY `mdl_courcomp_tim_ix` (`timecompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Course completion records';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_completions`
--

LOCK TABLES `mdl_course_completions` WRITE;
/*!40000 ALTER TABLE `mdl_course_completions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_completions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_format_options`
--

DROP TABLE IF EXISTS `mdl_course_format_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_format_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `format` varchar(21) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `sectionid` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courformopti_couforsec_uix` (`courseid`,`format`,`sectionid`,`name`),
  KEY `mdl_courformopti_cou_ix` (`courseid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores format-specific options for the course or course sect';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_format_options`
--

LOCK TABLES `mdl_course_format_options` WRITE;
/*!40000 ALTER TABLE `mdl_course_format_options` DISABLE KEYS */;
INSERT INTO `mdl_course_format_options` VALUES (1,1,'site',0,'numsections','1');
/*!40000 ALTER TABLE `mdl_course_format_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_modules`
--

DROP TABLE IF EXISTS `mdl_course_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_modules` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `module` bigint(10) NOT NULL DEFAULT 0,
  `instance` bigint(10) NOT NULL DEFAULT 0,
  `section` bigint(10) NOT NULL DEFAULT 0,
  `idnumber` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `added` bigint(10) NOT NULL DEFAULT 0,
  `score` smallint(4) NOT NULL DEFAULT 0,
  `indent` mediumint(5) NOT NULL DEFAULT 0,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `visibleoncoursepage` tinyint(1) NOT NULL DEFAULT 1,
  `visibleold` tinyint(1) NOT NULL DEFAULT 1,
  `groupmode` smallint(4) NOT NULL DEFAULT 0,
  `groupingid` bigint(10) NOT NULL DEFAULT 0,
  `completion` tinyint(1) NOT NULL DEFAULT 0,
  `completiongradeitemnumber` bigint(10) DEFAULT NULL,
  `completionview` tinyint(1) NOT NULL DEFAULT 0,
  `completionexpected` bigint(10) NOT NULL DEFAULT 0,
  `showdescription` tinyint(1) NOT NULL DEFAULT 0,
  `availability` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `deletioninprogress` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_courmodu_vis_ix` (`visible`),
  KEY `mdl_courmodu_cou_ix` (`course`),
  KEY `mdl_courmodu_mod_ix` (`module`),
  KEY `mdl_courmodu_ins_ix` (`instance`),
  KEY `mdl_courmodu_idncou_ix` (`idnumber`,`course`),
  KEY `mdl_courmodu_gro_ix` (`groupingid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='course_modules table retrofitted from MySQL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_modules`
--

LOCK TABLES `mdl_course_modules` WRITE;
/*!40000 ALTER TABLE `mdl_course_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_modules_completion`
--

DROP TABLE IF EXISTS `mdl_course_modules_completion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_modules_completion` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `coursemoduleid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `completionstate` tinyint(1) NOT NULL,
  `viewed` tinyint(1) DEFAULT NULL,
  `overrideby` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courmoducomp_usecou_uix` (`userid`,`coursemoduleid`),
  KEY `mdl_courmoducomp_cou_ix` (`coursemoduleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores the completion state (completed or not completed, etc';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_modules_completion`
--

LOCK TABLES `mdl_course_modules_completion` WRITE;
/*!40000 ALTER TABLE `mdl_course_modules_completion` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_modules_completion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_published`
--

DROP TABLE IF EXISTS `mdl_course_published`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_published` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `huburl` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `courseid` bigint(10) NOT NULL,
  `timepublished` bigint(10) NOT NULL,
  `enrollable` tinyint(1) NOT NULL DEFAULT 1,
  `hubcourseid` bigint(10) NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `timechecked` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Information about how and when an local courses were publish';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_published`
--

LOCK TABLES `mdl_course_published` WRITE;
/*!40000 ALTER TABLE `mdl_course_published` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_published` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_request`
--

DROP TABLE IF EXISTS `mdl_course_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_request` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(254) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `shortname` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `summary` longtext COLLATE utf8mb4_bin NOT NULL,
  `summaryformat` tinyint(2) NOT NULL DEFAULT 0,
  `category` bigint(10) NOT NULL DEFAULT 0,
  `reason` longtext COLLATE utf8mb4_bin NOT NULL,
  `requester` bigint(10) NOT NULL DEFAULT 0,
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_courrequ_sho_ix` (`shortname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='course requests';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_request`
--

LOCK TABLES `mdl_course_request` WRITE;
/*!40000 ALTER TABLE `mdl_course_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_sections`
--

DROP TABLE IF EXISTS `mdl_course_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_course_sections` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `section` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `summary` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `summaryformat` tinyint(2) NOT NULL DEFAULT 0,
  `sequence` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `availability` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_coursect_cousec_uix` (`course`,`section`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='to define the sections for each course';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_sections`
--

LOCK TABLES `mdl_course_sections` WRITE;
/*!40000 ALTER TABLE `mdl_course_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_data`
--

DROP TABLE IF EXISTS `mdl_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_data` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_bin NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `comments` smallint(4) NOT NULL DEFAULT 0,
  `timeavailablefrom` bigint(10) NOT NULL DEFAULT 0,
  `timeavailableto` bigint(10) NOT NULL DEFAULT 0,
  `timeviewfrom` bigint(10) NOT NULL DEFAULT 0,
  `timeviewto` bigint(10) NOT NULL DEFAULT 0,
  `requiredentries` int(8) NOT NULL DEFAULT 0,
  `requiredentriestoview` int(8) NOT NULL DEFAULT 0,
  `maxentries` int(8) NOT NULL DEFAULT 0,
  `rssarticles` smallint(4) NOT NULL DEFAULT 0,
  `singletemplate` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `listtemplate` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `listtemplateheader` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `listtemplatefooter` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `addtemplate` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `rsstemplate` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `rsstitletemplate` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `csstemplate` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `jstemplate` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `asearchtemplate` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `approval` smallint(4) NOT NULL DEFAULT 0,
  `manageapproved` smallint(4) NOT NULL DEFAULT 1,
  `scale` bigint(10) NOT NULL DEFAULT 0,
  `assessed` bigint(10) NOT NULL DEFAULT 0,
  `assesstimestart` bigint(10) NOT NULL DEFAULT 0,
  `assesstimefinish` bigint(10) NOT NULL DEFAULT 0,
  `defaultsort` bigint(10) NOT NULL DEFAULT 0,
  `defaultsortdir` smallint(4) NOT NULL DEFAULT 0,
  `editany` smallint(4) NOT NULL DEFAULT 0,
  `notification` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `config` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `completionentries` bigint(10) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_data_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='all database activities';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_data`
--

LOCK TABLES `mdl_data` WRITE;
/*!40000 ALTER TABLE `mdl_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_data_content`
--

DROP TABLE IF EXISTS `mdl_data_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_data_content` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `fieldid` bigint(10) NOT NULL DEFAULT 0,
  `recordid` bigint(10) NOT NULL DEFAULT 0,
  `content` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `content1` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `content2` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `content3` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `content4` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_datacont_rec_ix` (`recordid`),
  KEY `mdl_datacont_fie_ix` (`fieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='the content introduced in each record/fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_data_content`
--

LOCK TABLES `mdl_data_content` WRITE;
/*!40000 ALTER TABLE `mdl_data_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_data_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_data_fields`
--

DROP TABLE IF EXISTS `mdl_data_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_data_fields` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `dataid` bigint(10) NOT NULL DEFAULT 0,
  `type` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_bin NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `param1` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `param2` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `param3` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `param4` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `param5` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `param6` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `param7` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `param8` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `param9` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `param10` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_datafiel_typdat_ix` (`type`,`dataid`),
  KEY `mdl_datafiel_dat_ix` (`dataid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='every field available';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_data_fields`
--

LOCK TABLES `mdl_data_fields` WRITE;
/*!40000 ALTER TABLE `mdl_data_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_data_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_data_records`
--

DROP TABLE IF EXISTS `mdl_data_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_data_records` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `dataid` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `approved` smallint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_datareco_dat_ix` (`dataid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='every record introduced';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_data_records`
--

LOCK TABLES `mdl_data_records` WRITE;
/*!40000 ALTER TABLE `mdl_data_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_data_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_editor_atto_autosave`
--

DROP TABLE IF EXISTS `mdl_editor_atto_autosave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_editor_atto_autosave` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `elementid` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `pagehash` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `userid` bigint(10) NOT NULL,
  `drafttext` longtext COLLATE utf8mb4_bin NOT NULL,
  `draftid` bigint(10) DEFAULT NULL,
  `pageinstance` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_editattoauto_eleconuse_uix` (`elementid`,`contextid`,`userid`,`pagehash`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Draft text that is auto-saved every 5 seconds while an edito';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_editor_atto_autosave`
--

LOCK TABLES `mdl_editor_atto_autosave` WRITE;
/*!40000 ALTER TABLE `mdl_editor_atto_autosave` DISABLE KEYS */;
INSERT INTO `mdl_editor_atto_autosave` VALUES (4,'id_description_editor',1,'5a589a2bd771464fef71a145b9bdf18a84a26679',2,'',-1,'yui_3_17_2_1_1544462718012_113',1544462718);
/*!40000 ALTER TABLE `mdl_editor_atto_autosave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol`
--

DROP TABLE IF EXISTS `mdl_enrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `enrol` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `status` bigint(10) NOT NULL DEFAULT 0,
  `courseid` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `enrolperiod` bigint(10) DEFAULT 0,
  `enrolstartdate` bigint(10) DEFAULT 0,
  `enrolenddate` bigint(10) DEFAULT 0,
  `expirynotify` tinyint(1) DEFAULT 0,
  `expirythreshold` bigint(10) DEFAULT 0,
  `notifyall` tinyint(1) DEFAULT 0,
  `password` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `cost` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL,
  `roleid` bigint(10) DEFAULT 0,
  `customint1` bigint(10) DEFAULT NULL,
  `customint2` bigint(10) DEFAULT NULL,
  `customint3` bigint(10) DEFAULT NULL,
  `customint4` bigint(10) DEFAULT NULL,
  `customint5` bigint(10) DEFAULT NULL,
  `customint6` bigint(10) DEFAULT NULL,
  `customint7` bigint(10) DEFAULT NULL,
  `customint8` bigint(10) DEFAULT NULL,
  `customchar1` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `customchar2` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `customchar3` varchar(1333) COLLATE utf8mb4_bin DEFAULT NULL,
  `customdec1` decimal(12,7) DEFAULT NULL,
  `customdec2` decimal(12,7) DEFAULT NULL,
  `customtext1` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `customtext2` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `customtext3` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `customtext4` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_enro_enr_ix` (`enrol`),
  KEY `mdl_enro_cou_ix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Instances of enrolment plugins used in courses, fields marke';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol`
--

LOCK TABLES `mdl_enrol` WRITE;
/*!40000 ALTER TABLE `mdl_enrol` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_flatfile`
--

DROP TABLE IF EXISTS `mdl_enrol_flatfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_flatfile` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `roleid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `courseid` bigint(10) NOT NULL,
  `timestart` bigint(10) NOT NULL DEFAULT 0,
  `timeend` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_enroflat_cou_ix` (`courseid`),
  KEY `mdl_enroflat_use_ix` (`userid`),
  KEY `mdl_enroflat_rol_ix` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='enrol_flatfile table retrofitted from MySQL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_flatfile`
--

LOCK TABLES `mdl_enrol_flatfile` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_flatfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_flatfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_consumer`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_lti_lti2_consumer` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `consumerkey256` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `consumerkey` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `secret` varchar(1024) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `ltiversion` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `consumername` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `consumerversion` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `consumerguid` varchar(1024) COLLATE utf8mb4_bin DEFAULT NULL,
  `profile` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `toolproxy` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `settings` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `protected` tinyint(1) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `enablefrom` bigint(10) DEFAULT NULL,
  `enableuntil` bigint(10) DEFAULT NULL,
  `lastaccess` bigint(10) DEFAULT NULL,
  `created` bigint(10) NOT NULL,
  `updated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_enroltilti2cons_con_uix` (`consumerkey256`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='LTI consumers interacting with moodle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_consumer`
--

LOCK TABLES `mdl_enrol_lti_lti2_consumer` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_context`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_lti_lti2_context` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `consumerid` bigint(11) NOT NULL,
  `lticontextkey` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `type` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `settings` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `created` bigint(10) NOT NULL,
  `updated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_enroltilti2cont_con_ix` (`consumerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Information about a specific LTI contexts from the consumers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_context`
--

LOCK TABLES `mdl_enrol_lti_lti2_context` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_context` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_nonce`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_lti_lti2_nonce` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `consumerid` bigint(11) NOT NULL,
  `value` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `expires` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_enroltilti2nonc_con_ix` (`consumerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Nonce used for authentication between moodle and a consumer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_nonce`
--

LOCK TABLES `mdl_enrol_lti_lti2_nonce` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_resource_link`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_resource_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_lti_lti2_resource_link` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(11) DEFAULT NULL,
  `consumerid` bigint(11) DEFAULT NULL,
  `ltiresourcelinkkey` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `settings` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `primaryresourcelinkid` bigint(11) DEFAULT NULL,
  `shareapproved` tinyint(1) DEFAULT NULL,
  `created` bigint(10) NOT NULL,
  `updated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_enroltilti2resolink_con_ix` (`contextid`),
  KEY `mdl_enroltilti2resolink_pri_ix` (`primaryresourcelinkid`),
  KEY `mdl_enroltilti2resolink_co2_ix` (`consumerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Link from the consumer to the tool';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_resource_link`
--

LOCK TABLES `mdl_enrol_lti_lti2_resource_link` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_resource_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_resource_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_share_key`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_share_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_lti_lti2_share_key` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `sharekey` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `resourcelinkid` bigint(11) NOT NULL,
  `autoapprove` tinyint(1) NOT NULL,
  `expires` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_enroltilti2sharkey_sha_uix` (`sharekey`),
  UNIQUE KEY `mdl_enroltilti2sharkey_res_uix` (`resourcelinkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Resource link share key';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_share_key`
--

LOCK TABLES `mdl_enrol_lti_lti2_share_key` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_share_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_share_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_tool_proxy`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_tool_proxy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_lti_lti2_tool_proxy` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `toolproxykey` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `consumerid` bigint(11) NOT NULL,
  `toolproxy` longtext COLLATE utf8mb4_bin NOT NULL,
  `created` bigint(10) NOT NULL,
  `updated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_enroltilti2toolprox_to_uix` (`toolproxykey`),
  KEY `mdl_enroltilti2toolprox_con_ix` (`consumerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='A tool proxy between moodle and a consumer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_tool_proxy`
--

LOCK TABLES `mdl_enrol_lti_lti2_tool_proxy` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_tool_proxy` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_tool_proxy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_user_result`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_user_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_lti_lti2_user_result` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `resourcelinkid` bigint(11) NOT NULL,
  `ltiuserkey` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `ltiresultsourcedid` varchar(1024) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `created` bigint(10) NOT NULL,
  `updated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_enroltilti2userresu_res_ix` (`resourcelinkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Results for each user for each resource link';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_user_result`
--

LOCK TABLES `mdl_enrol_lti_lti2_user_result` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_user_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_user_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_tool_consumer_map`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_tool_consumer_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_lti_tool_consumer_map` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `toolid` bigint(11) NOT NULL,
  `consumerid` bigint(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_enroltitoolconsmap_too_ix` (`toolid`),
  KEY `mdl_enroltitoolconsmap_con_ix` (`consumerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Table that maps the published tool to tool consumers.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_tool_consumer_map`
--

LOCK TABLES `mdl_enrol_lti_tool_consumer_map` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_tool_consumer_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_tool_consumer_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_tools`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_lti_tools` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `enrolid` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `institution` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `lang` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT 'en',
  `timezone` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '99',
  `maxenrolled` bigint(10) NOT NULL DEFAULT 0,
  `maildisplay` tinyint(2) NOT NULL DEFAULT 2,
  `city` varchar(120) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `country` varchar(2) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `gradesync` tinyint(1) NOT NULL DEFAULT 0,
  `gradesynccompletion` tinyint(1) NOT NULL DEFAULT 0,
  `membersync` tinyint(1) NOT NULL DEFAULT 0,
  `membersyncmode` tinyint(1) NOT NULL DEFAULT 0,
  `roleinstructor` bigint(10) NOT NULL,
  `rolelearner` bigint(10) NOT NULL,
  `secret` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_enroltitool_enr_ix` (`enrolid`),
  KEY `mdl_enroltitool_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='List of tools provided to the remote system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_tools`
--

LOCK TABLES `mdl_enrol_lti_tools` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_tools` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_tools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_users`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_lti_users` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `toolid` bigint(10) NOT NULL,
  `serviceurl` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceid` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `consumerkey` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `consumersecret` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `membershipsurl` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `membershipsid` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `lastgrade` decimal(10,5) DEFAULT NULL,
  `lastaccess` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_enroltiuser_use_ix` (`userid`),
  KEY `mdl_enroltiuser_too_ix` (`toolid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='User access log and gradeback data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_users`
--

LOCK TABLES `mdl_enrol_lti_users` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_paypal`
--

DROP TABLE IF EXISTS `mdl_enrol_paypal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_enrol_paypal` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `business` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `receiver_email` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `receiver_id` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `item_name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `instanceid` bigint(10) NOT NULL DEFAULT 0,
  `memo` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `tax` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `option_name1` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `option_selection1_x` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `option_name2` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `option_selection2_x` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `payment_status` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `pending_reason` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `reason_code` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `txn_id` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `parent_txn_id` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `payment_type` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timeupdated` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_enropayp_bus_ix` (`business`),
  KEY `mdl_enropayp_rec_ix` (`receiver_email`),
  KEY `mdl_enropayp_cou_ix` (`courseid`),
  KEY `mdl_enropayp_use_ix` (`userid`),
  KEY `mdl_enropayp_ins_ix` (`instanceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Holds all known information about PayPal transactions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_paypal`
--

LOCK TABLES `mdl_enrol_paypal` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_paypal` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_paypal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_event`
--

DROP TABLE IF EXISTS `mdl_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_event` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_bin NOT NULL,
  `description` longtext COLLATE utf8mb4_bin NOT NULL,
  `format` smallint(4) NOT NULL DEFAULT 0,
  `categoryid` bigint(10) NOT NULL DEFAULT 0,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `repeatid` bigint(10) NOT NULL DEFAULT 0,
  `modulename` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `instance` bigint(10) NOT NULL DEFAULT 0,
  `type` smallint(4) NOT NULL DEFAULT 0,
  `eventtype` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timestart` bigint(10) NOT NULL DEFAULT 0,
  `timeduration` bigint(10) NOT NULL DEFAULT 0,
  `timesort` bigint(10) DEFAULT NULL,
  `visible` smallint(4) NOT NULL DEFAULT 1,
  `uuid` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `sequence` bigint(10) NOT NULL DEFAULT 1,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `subscriptionid` bigint(10) DEFAULT NULL,
  `priority` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_even_cou_ix` (`courseid`),
  KEY `mdl_even_use_ix` (`userid`),
  KEY `mdl_even_tim_ix` (`timestart`),
  KEY `mdl_even_tim2_ix` (`timeduration`),
  KEY `mdl_even_uui_ix` (`uuid`),
  KEY `mdl_even_typtim_ix` (`type`,`timesort`),
  KEY `mdl_even_grocoucatvisuse_ix` (`groupid`,`courseid`,`categoryid`,`visible`,`userid`),
  KEY `mdl_even_cat_ix` (`categoryid`),
  KEY `mdl_even_sub_ix` (`subscriptionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='For everything with a time associated to it';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_event`
--

LOCK TABLES `mdl_event` WRITE;
/*!40000 ALTER TABLE `mdl_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_event_subscriptions`
--

DROP TABLE IF EXISTS `mdl_event_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_event_subscriptions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `categoryid` bigint(10) NOT NULL DEFAULT 0,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `eventtype` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `pollinterval` bigint(10) NOT NULL DEFAULT 0,
  `lastupdated` bigint(10) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Tracks subscriptions to remote calendars.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_event_subscriptions`
--

LOCK TABLES `mdl_event_subscriptions` WRITE;
/*!40000 ALTER TABLE `mdl_event_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_event_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_events_handlers`
--

DROP TABLE IF EXISTS `mdl_events_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_events_handlers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(166) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `component` varchar(166) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `handlerfile` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `handlerfunction` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `schedule` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` bigint(10) NOT NULL DEFAULT 0,
  `internal` tinyint(2) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_evenhand_evecom_uix` (`eventname`,`component`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='This table is for storing which components requests what typ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_events_handlers`
--

LOCK TABLES `mdl_events_handlers` WRITE;
/*!40000 ALTER TABLE `mdl_events_handlers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_events_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_events_queue`
--

DROP TABLE IF EXISTS `mdl_events_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_events_queue` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `eventdata` longtext COLLATE utf8mb4_bin NOT NULL,
  `stackdump` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `userid` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_evenqueu_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='This table is for storing queued events. It stores only one ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_events_queue`
--

LOCK TABLES `mdl_events_queue` WRITE;
/*!40000 ALTER TABLE `mdl_events_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_events_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_events_queue_handlers`
--

DROP TABLE IF EXISTS `mdl_events_queue_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_events_queue_handlers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `queuedeventid` bigint(10) NOT NULL,
  `handlerid` bigint(10) NOT NULL,
  `status` bigint(10) DEFAULT NULL,
  `errormessage` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_evenqueuhand_que_ix` (`queuedeventid`),
  KEY `mdl_evenqueuhand_han_ix` (`handlerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='This is the list of queued handlers for processing. The even';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_events_queue_handlers`
--

LOCK TABLES `mdl_events_queue_handlers` WRITE;
/*!40000 ALTER TABLE `mdl_events_queue_handlers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_events_queue_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_external_functions`
--

DROP TABLE IF EXISTS `mdl_external_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_external_functions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `classname` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `methodname` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `classpath` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `component` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `capabilities` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `services` varchar(1333) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_extefunc_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=502 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='list of all external functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_external_functions`
--

LOCK TABLES `mdl_external_functions` WRITE;
/*!40000 ALTER TABLE `mdl_external_functions` DISABLE KEYS */;
INSERT INTO `mdl_external_functions` VALUES (1,'core_auth_confirm_user','core_auth_external','confirm_user',NULL,'moodle','',NULL),(2,'core_auth_request_password_reset','core_auth_external','request_password_reset',NULL,'moodle','',NULL),(3,'core_auth_is_minor','core_auth_external','is_minor',NULL,'moodle','',NULL),(4,'core_auth_is_age_digital_consent_verification_enabled','core_auth_external','is_age_digital_consent_verification_enabled',NULL,'moodle','',NULL),(5,'core_badges_get_user_badges','core_badges_external','get_user_badges',NULL,'moodle','moodle/badges:viewotherbadges','moodle_mobile_app'),(6,'core_calendar_get_calendar_monthly_view','core_calendar_external','get_calendar_monthly_view','calendar/externallib.php','moodle','','moodle_mobile_app'),(7,'core_calendar_get_calendar_day_view','core_calendar_external','get_calendar_day_view','calendar/externallib.php','moodle','','moodle_mobile_app'),(8,'core_calendar_get_calendar_upcoming_view','core_calendar_external','get_calendar_upcoming_view','calendar/externallib.php','moodle','','moodle_mobile_app'),(9,'core_calendar_update_event_start_day','core_calendar_external','update_event_start_day','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries',NULL),(10,'core_calendar_create_calendar_events','core_calendar_external','create_calendar_events','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(11,'core_calendar_delete_calendar_events','core_calendar_external','delete_calendar_events','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(12,'core_calendar_get_calendar_events','core_calendar_external','get_calendar_events','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(13,'core_calendar_get_action_events_by_timesort','core_calendar_external','get_calendar_action_events_by_timesort','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(14,'core_calendar_get_action_events_by_course','core_calendar_external','get_calendar_action_events_by_course','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(15,'core_calendar_get_action_events_by_courses','core_calendar_external','get_calendar_action_events_by_courses','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(16,'core_calendar_get_calendar_event_by_id','core_calendar_external','get_calendar_event_by_id','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(17,'core_calendar_submit_create_update_form','core_calendar_external','submit_create_update_form','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries',NULL),(18,'core_cohort_add_cohort_members','core_cohort_external','add_cohort_members','cohort/externallib.php','moodle','moodle/cohort:assign',NULL),(19,'core_cohort_create_cohorts','core_cohort_external','create_cohorts','cohort/externallib.php','moodle','moodle/cohort:manage',NULL),(20,'core_cohort_delete_cohort_members','core_cohort_external','delete_cohort_members','cohort/externallib.php','moodle','moodle/cohort:assign',NULL),(21,'core_cohort_delete_cohorts','core_cohort_external','delete_cohorts','cohort/externallib.php','moodle','moodle/cohort:manage',NULL),(22,'core_cohort_get_cohort_members','core_cohort_external','get_cohort_members','cohort/externallib.php','moodle','moodle/cohort:view',NULL),(23,'core_cohort_search_cohorts','core_cohort_external','search_cohorts','cohort/externallib.php','moodle','moodle/cohort:view',NULL),(24,'core_cohort_get_cohorts','core_cohort_external','get_cohorts','cohort/externallib.php','moodle','moodle/cohort:view',NULL),(25,'core_cohort_update_cohorts','core_cohort_external','update_cohorts','cohort/externallib.php','moodle','moodle/cohort:manage',NULL),(26,'core_comment_get_comments','core_comment_external','get_comments',NULL,'moodle','moodle/comment:view','moodle_mobile_app'),(27,'core_completion_get_activities_completion_status','core_completion_external','get_activities_completion_status',NULL,'moodle','','moodle_mobile_app'),(28,'core_completion_get_course_completion_status','core_completion_external','get_course_completion_status',NULL,'moodle','report/completion:view','moodle_mobile_app'),(29,'core_completion_mark_course_self_completed','core_completion_external','mark_course_self_completed',NULL,'moodle','','moodle_mobile_app'),(30,'core_completion_update_activity_completion_status_manually','core_completion_external','update_activity_completion_status_manually',NULL,'moodle','','moodle_mobile_app'),(31,'core_completion_override_activity_completion_status','core_completion_external','override_activity_completion_status',NULL,'moodle','moodle/course:overridecompletion',NULL),(32,'core_course_create_categories','core_course_external','create_categories','course/externallib.php','moodle','moodle/category:manage',NULL),(33,'core_course_create_courses','core_course_external','create_courses','course/externallib.php','moodle','moodle/course:create, moodle/course:visibility',NULL),(34,'core_course_delete_categories','core_course_external','delete_categories','course/externallib.php','moodle','moodle/category:manage',NULL),(35,'core_course_delete_courses','core_course_external','delete_courses','course/externallib.php','moodle','moodle/course:delete',NULL),(36,'core_course_delete_modules','core_course_external','delete_modules','course/externallib.php','moodle','moodle/course:manageactivities',NULL),(37,'core_course_duplicate_course','core_course_external','duplicate_course','course/externallib.php','moodle','moodle/backup:backupcourse, moodle/restore:restorecourse, moodle/course:create',NULL),(38,'core_course_get_categories','core_course_external','get_categories','course/externallib.php','moodle','moodle/category:viewhiddencategories','moodle_mobile_app'),(39,'core_course_get_contents','core_course_external','get_course_contents','course/externallib.php','moodle','moodle/course:update, moodle/course:viewhiddencourses','moodle_mobile_app'),(40,'core_course_get_course_module','core_course_external','get_course_module','course/externallib.php','moodle','','moodle_mobile_app'),(41,'core_course_get_course_module_by_instance','core_course_external','get_course_module_by_instance','course/externallib.php','moodle','','moodle_mobile_app'),(42,'core_course_get_module','core_course_external','get_module','course/externallib.php','moodle','',NULL),(43,'core_course_edit_module','core_course_external','edit_module','course/externallib.php','moodle','',NULL),(44,'core_course_edit_section','core_course_external','edit_section','course/externallib.php','moodle','',NULL),(45,'core_course_get_courses','core_course_external','get_courses','course/externallib.php','moodle','moodle/course:view, moodle/course:update, moodle/course:viewhiddencourses','moodle_mobile_app'),(46,'core_course_import_course','core_course_external','import_course','course/externallib.php','moodle','moodle/backup:backuptargetimport, moodle/restore:restoretargetimport',NULL),(47,'core_course_search_courses','core_course_external','search_courses','course/externallib.php','moodle','','moodle_mobile_app'),(48,'core_course_update_categories','core_course_external','update_categories','course/externallib.php','moodle','moodle/category:manage',NULL),(49,'core_course_update_courses','core_course_external','update_courses','course/externallib.php','moodle','moodle/course:update, moodle/course:changecategory, moodle/course:changefullname, moodle/course:changeshortname, moodle/course:changeidnumber, moodle/course:changesummary, moodle/course:visibility',NULL),(50,'core_course_view_course','core_course_external','view_course','course/externallib.php','moodle','','moodle_mobile_app'),(51,'core_course_get_activities_overview','core_course_external','get_activities_overview','course/externallib.php','moodle','','moodle_mobile_app'),(52,'core_course_get_user_navigation_options','core_course_external','get_user_navigation_options','course/externallib.php','moodle','','moodle_mobile_app'),(53,'core_course_get_user_administration_options','core_course_external','get_user_administration_options','course/externallib.php','moodle','','moodle_mobile_app'),(54,'core_course_get_courses_by_field','core_course_external','get_courses_by_field','course/externallib.php','moodle','','moodle_mobile_app'),(55,'core_course_check_updates','core_course_external','check_updates','course/externallib.php','moodle','','moodle_mobile_app'),(56,'core_course_get_updates_since','core_course_external','get_updates_since','course/externallib.php','moodle','','moodle_mobile_app'),(57,'core_enrol_get_course_enrolment_methods','core_enrol_external','get_course_enrolment_methods','enrol/externallib.php','moodle','','moodle_mobile_app'),(58,'core_enrol_get_enrolled_users','core_enrol_external','get_enrolled_users','enrol/externallib.php','moodle','moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update, moodle/site:accessallgroups','moodle_mobile_app'),(59,'core_enrol_get_enrolled_users_with_capability','core_enrol_external','get_enrolled_users_with_capability','enrol/externallib.php','moodle','',NULL),(60,'core_enrol_get_potential_users','core_enrol_external','get_potential_users','enrol/externallib.php','moodle','moodle/course:enrolreview',NULL),(61,'core_enrol_get_users_courses','core_enrol_external','get_users_courses','enrol/externallib.php','moodle','moodle/course:viewparticipants','moodle_mobile_app'),(62,'core_enrol_edit_user_enrolment','core_enrol_external','edit_user_enrolment','enrol/externallib.php','moodle','',NULL),(63,'core_enrol_unenrol_user_enrolment','core_enrol_external','unenrol_user_enrolment','enrol/externallib.php','moodle','',NULL),(64,'core_fetch_notifications','core_external','fetch_notifications','lib/external/externallib.php','moodle','',NULL),(65,'core_files_get_files','core_files_external','get_files','files/externallib.php','moodle','','moodle_mobile_app'),(66,'core_files_upload','core_files_external','upload','files/externallib.php','moodle','',NULL),(67,'core_form_get_filetypes_browser_data','core_form\\external','get_filetypes_browser_data',NULL,'moodle','',NULL),(68,'core_get_component_strings','core_external','get_component_strings','lib/external/externallib.php','moodle','','moodle_mobile_app'),(69,'core_get_fragment','core_external','get_fragment','lib/external/externallib.php','moodle','',NULL),(70,'core_get_string','core_external','get_string','lib/external/externallib.php','moodle','',NULL),(71,'core_get_strings','core_external','get_strings','lib/external/externallib.php','moodle','',NULL),(72,'core_get_user_dates','core_external','get_user_dates','lib/external/externallib.php','moodle','',NULL),(73,'core_grades_get_grades','core_grades_external','get_grades',NULL,'moodle','moodle/grade:view, moodle/grade:viewall, moodle/grade:viewhidden',NULL),(74,'core_grades_update_grades','core_grades_external','update_grades',NULL,'moodle','',NULL),(75,'core_grading_get_definitions','core_grading_external','get_definitions',NULL,'moodle','',NULL),(76,'core_grading_get_gradingform_instances','core_grading_external','get_gradingform_instances',NULL,'moodle','',NULL),(77,'core_grading_save_definitions','core_grading_external','save_definitions',NULL,'moodle','',NULL),(78,'core_group_add_group_members','core_group_external','add_group_members','group/externallib.php','moodle','moodle/course:managegroups',NULL),(79,'core_group_assign_grouping','core_group_external','assign_grouping','group/externallib.php','moodle','',NULL),(80,'core_group_create_groupings','core_group_external','create_groupings','group/externallib.php','moodle','',NULL),(81,'core_group_create_groups','core_group_external','create_groups','group/externallib.php','moodle','moodle/course:managegroups',NULL),(82,'core_group_delete_group_members','core_group_external','delete_group_members','group/externallib.php','moodle','moodle/course:managegroups',NULL),(83,'core_group_delete_groupings','core_group_external','delete_groupings','group/externallib.php','moodle','',NULL),(84,'core_group_delete_groups','core_group_external','delete_groups','group/externallib.php','moodle','moodle/course:managegroups',NULL),(85,'core_group_get_activity_allowed_groups','core_group_external','get_activity_allowed_groups','group/externallib.php','moodle','','moodle_mobile_app'),(86,'core_group_get_activity_groupmode','core_group_external','get_activity_groupmode','group/externallib.php','moodle','','moodle_mobile_app'),(87,'core_group_get_course_groupings','core_group_external','get_course_groupings','group/externallib.php','moodle','',NULL),(88,'core_group_get_course_groups','core_group_external','get_course_groups','group/externallib.php','moodle','moodle/course:managegroups',NULL),(89,'core_group_get_course_user_groups','core_group_external','get_course_user_groups','group/externallib.php','moodle','moodle/course:managegroups','moodle_mobile_app'),(90,'core_group_get_group_members','core_group_external','get_group_members','group/externallib.php','moodle','moodle/course:managegroups',NULL),(91,'core_group_get_groupings','core_group_external','get_groupings','group/externallib.php','moodle','',NULL),(92,'core_group_get_groups','core_group_external','get_groups','group/externallib.php','moodle','moodle/course:managegroups',NULL),(93,'core_group_unassign_grouping','core_group_external','unassign_grouping','group/externallib.php','moodle','',NULL),(94,'core_group_update_groupings','core_group_external','update_groupings','group/externallib.php','moodle','',NULL),(95,'core_message_block_contacts','core_message_external','block_contacts','message/externallib.php','moodle','','moodle_mobile_app'),(96,'core_message_create_contacts','core_message_external','create_contacts','message/externallib.php','moodle','','moodle_mobile_app'),(97,'core_message_delete_contacts','core_message_external','delete_contacts','message/externallib.php','moodle','','moodle_mobile_app'),(98,'core_message_delete_conversation','core_message_external','delete_conversation','message/externallib.php','moodle','moodle/site:deleteownmessage','moodle_mobile_app'),(99,'core_message_delete_message','core_message_external','delete_message','message/externallib.php','moodle','moodle/site:deleteownmessage','moodle_mobile_app'),(100,'core_message_get_blocked_users','core_message_external','get_blocked_users','message/externallib.php','moodle','','moodle_mobile_app'),(101,'core_message_data_for_messagearea_search_messages','core_message_external','data_for_messagearea_search_messages','message/externallib.php','moodle','','moodle_mobile_app'),(102,'core_message_data_for_messagearea_search_users','core_message_external','data_for_messagearea_search_users','message/externallib.php','moodle','',NULL),(103,'core_message_data_for_messagearea_search_users_in_course','core_message_external','data_for_messagearea_search_users_in_course','message/externallib.php','moodle','',NULL),(104,'core_message_data_for_messagearea_conversations','core_message_external','data_for_messagearea_conversations','message/externallib.php','moodle','','moodle_mobile_app'),(105,'core_message_data_for_messagearea_contacts','core_message_external','data_for_messagearea_contacts','message/externallib.php','moodle','','moodle_mobile_app'),(106,'core_message_data_for_messagearea_messages','core_message_external','data_for_messagearea_messages','message/externallib.php','moodle','','moodle_mobile_app'),(107,'core_message_data_for_messagearea_get_most_recent_message','core_message_external','data_for_messagearea_get_most_recent_message','message/externallib.php','moodle','',NULL),(108,'core_message_data_for_messagearea_get_profile','core_message_external','data_for_messagearea_get_profile','message/externallib.php','moodle','',NULL),(109,'core_message_get_contacts','core_message_external','get_contacts','message/externallib.php','moodle','','moodle_mobile_app'),(110,'core_message_get_messages','core_message_external','get_messages','message/externallib.php','moodle','','moodle_mobile_app'),(111,'core_message_get_unread_conversations_count','core_message_external','get_unread_conversations_count','message/externallib.php','moodle','','moodle_mobile_app'),(112,'core_message_mark_all_notifications_as_read','core_message_external','mark_all_notifications_as_read','message/externallib.php','moodle','','moodle_mobile_app'),(113,'core_message_mark_all_messages_as_read','core_message_external','mark_all_messages_as_read','message/externallib.php','moodle','','moodle_mobile_app'),(114,'core_message_mark_message_read','core_message_external','mark_message_read','message/externallib.php','moodle','','moodle_mobile_app'),(115,'core_message_mark_notification_read','core_message_external','mark_notification_read','message/externallib.php','moodle','','moodle_mobile_app'),(116,'core_message_message_processor_config_form','core_message_external','message_processor_config_form','message/externallib.php','moodle','','moodle_mobile_app'),(117,'core_message_get_message_processor','core_message_external','get_message_processor','message/externallib.php','moodle','',NULL),(118,'core_message_search_contacts','core_message_external','search_contacts','message/externallib.php','moodle','','moodle_mobile_app'),(119,'core_message_send_instant_messages','core_message_external','send_instant_messages','message/externallib.php','moodle','moodle/site:sendmessage','moodle_mobile_app'),(120,'core_message_unblock_contacts','core_message_external','unblock_contacts','message/externallib.php','moodle','','moodle_mobile_app'),(121,'core_message_get_user_notification_preferences','core_message_external','get_user_notification_preferences','message/externallib.php','moodle','moodle/user:editownmessageprofile','moodle_mobile_app'),(122,'core_message_get_user_message_preferences','core_message_external','get_user_message_preferences','message/externallib.php','moodle','moodle/user:editownmessageprofile','moodle_mobile_app'),(123,'core_notes_create_notes','core_notes_external','create_notes','notes/externallib.php','moodle','moodle/notes:manage','moodle_mobile_app'),(124,'core_notes_delete_notes','core_notes_external','delete_notes','notes/externallib.php','moodle','moodle/notes:manage','moodle_mobile_app'),(125,'core_notes_get_course_notes','core_notes_external','get_course_notes','notes/externallib.php','moodle','moodle/notes:view','moodle_mobile_app'),(126,'core_notes_get_notes','core_notes_external','get_notes','notes/externallib.php','moodle','moodle/notes:view',NULL),(127,'core_notes_update_notes','core_notes_external','update_notes','notes/externallib.php','moodle','moodle/notes:manage',NULL),(128,'core_notes_view_notes','core_notes_external','view_notes','notes/externallib.php','moodle','moodle/notes:view','moodle_mobile_app'),(129,'core_output_load_template','core\\output\\external','load_template',NULL,'moodle','',NULL),(130,'core_output_load_fontawesome_icon_map','core\\output\\external','load_fontawesome_icon_map',NULL,'moodle','',NULL),(131,'core_question_update_flag','core_question_external','update_flag',NULL,'moodle','moodle/question:flag','moodle_mobile_app'),(132,'core_question_submit_tags_form','core_question_external','submit_tags_form',NULL,'moodle','',NULL),(133,'core_question_get_random_question_summaries','core_question_external','get_random_question_summaries',NULL,'moodle','',NULL),(134,'core_rating_get_item_ratings','core_rating_external','get_item_ratings',NULL,'moodle','moodle/rating:view','moodle_mobile_app'),(135,'core_rating_add_rating','core_rating_external','add_rating',NULL,'moodle','moodle/rating:rate','moodle_mobile_app'),(136,'core_role_assign_roles','core_role_external','assign_roles','enrol/externallib.php','moodle','moodle/role:assign',NULL),(137,'core_role_unassign_roles','core_role_external','unassign_roles','enrol/externallib.php','moodle','moodle/role:assign',NULL),(138,'core_search_get_relevant_users','\\core_search\\external','get_relevant_users',NULL,'moodle','',NULL),(139,'core_tag_get_tagindex','core_tag_external','get_tagindex',NULL,'moodle','',NULL),(140,'core_tag_get_tags','core_tag_external','get_tags',NULL,'moodle','',NULL),(141,'core_tag_update_tags','core_tag_external','update_tags',NULL,'moodle','',NULL),(142,'core_update_inplace_editable','core_external','update_inplace_editable','lib/external/externallib.php','moodle','',NULL),(143,'core_user_add_user_device','core_user_external','add_user_device','user/externallib.php','moodle','','moodle_mobile_app'),(144,'core_user_add_user_private_files','core_user_external','add_user_private_files','user/externallib.php','moodle','moodle/user:manageownfiles','moodle_mobile_app'),(145,'core_user_create_users','core_user_external','create_users','user/externallib.php','moodle','moodle/user:create',NULL),(146,'core_user_delete_users','core_user_external','delete_users','user/externallib.php','moodle','moodle/user:delete',NULL),(147,'core_user_get_course_user_profiles','core_user_external','get_course_user_profiles','user/externallib.php','moodle','moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update, moodle/site:accessallgroups','moodle_mobile_app'),(148,'core_user_get_users','core_user_external','get_users','user/externallib.php','moodle','moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update',NULL),(149,'core_user_get_users_by_field','core_user_external','get_users_by_field','user/externallib.php','moodle','moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update','moodle_mobile_app'),(150,'core_user_remove_user_device','core_user_external','remove_user_device','user/externallib.php','moodle','','moodle_mobile_app'),(151,'core_user_update_users','core_user_external','update_users','user/externallib.php','moodle','moodle/user:update',NULL),(152,'core_user_update_user_preferences','core_user_external','update_user_preferences','user/externallib.php','moodle','moodle/user:editownmessageprofile, moodle/user:editmessageprofile','moodle_mobile_app'),(153,'core_user_view_user_list','core_user_external','view_user_list','user/externallib.php','moodle','moodle/course:viewparticipants','moodle_mobile_app'),(154,'core_user_view_user_profile','core_user_external','view_user_profile','user/externallib.php','moodle','moodle/user:viewdetails','moodle_mobile_app'),(155,'core_user_get_user_preferences','core_user_external','get_user_preferences','user/externallib.php','moodle','','moodle_mobile_app'),(156,'core_user_update_picture','core_user_external','update_picture','user/externallib.php','moodle','moodle/user:editownprofile, moodle/user:editprofile','moodle_mobile_app'),(157,'core_user_set_user_preferences','core_user_external','set_user_preferences','user/externallib.php','moodle','moodle/site:config',NULL),(158,'core_user_agree_site_policy','core_user_external','agree_site_policy','user/externallib.php','moodle','','moodle_mobile_app'),(159,'core_user_get_private_files_info','core_user_external','get_private_files_info','user/externallib.php','moodle','moodle/user:manageownfiles','moodle_mobile_app'),(160,'core_competency_create_competency_framework','core_competency\\external','create_competency_framework',NULL,'moodle','moodle/competency:competencymanage',NULL),(161,'core_competency_read_competency_framework','core_competency\\external','read_competency_framework',NULL,'moodle','moodle/competency:competencyview',NULL),(162,'core_competency_duplicate_competency_framework','core_competency\\external','duplicate_competency_framework',NULL,'moodle','moodle/competency:competencymanage',NULL),(163,'core_competency_delete_competency_framework','core_competency\\external','delete_competency_framework',NULL,'moodle','moodle/competency:competencymanage',NULL),(164,'core_competency_update_competency_framework','core_competency\\external','update_competency_framework',NULL,'moodle','moodle/competency:competencymanage',NULL),(165,'core_competency_list_competency_frameworks','core_competency\\external','list_competency_frameworks',NULL,'moodle','moodle/competency:competencyview',NULL),(166,'core_competency_count_competency_frameworks','core_competency\\external','count_competency_frameworks',NULL,'moodle','moodle/competency:competencyview',NULL),(167,'core_competency_competency_framework_viewed','core_competency\\external','competency_framework_viewed',NULL,'moodle','moodle/competency:competencyview',NULL),(168,'core_competency_create_competency','core_competency\\external','create_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(169,'core_competency_read_competency','core_competency\\external','read_competency',NULL,'moodle','moodle/competency:competencyview',NULL),(170,'core_competency_competency_viewed','core_competency\\external','competency_viewed',NULL,'moodle','moodle/competency:competencyview','moodle_mobile_app'),(171,'core_competency_delete_competency','core_competency\\external','delete_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(172,'core_competency_update_competency','core_competency\\external','update_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(173,'core_competency_list_competencies','core_competency\\external','list_competencies',NULL,'moodle','moodle/competency:competencyview',NULL),(174,'core_competency_list_competencies_in_template','core_competency\\external','list_competencies_in_template',NULL,'moodle','moodle/competency:competencyview',NULL),(175,'core_competency_count_competencies','core_competency\\external','count_competencies',NULL,'moodle','moodle/competency:competencyview',NULL),(176,'core_competency_count_competencies_in_template','core_competency\\external','count_competencies_in_template',NULL,'moodle','moodle/competency:competencyview',NULL),(177,'core_competency_search_competencies','core_competency\\external','search_competencies',NULL,'moodle','moodle/competency:competencyview',NULL),(178,'core_competency_set_parent_competency','core_competency\\external','set_parent_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(179,'core_competency_move_up_competency','core_competency\\external','move_up_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(180,'core_competency_move_down_competency','core_competency\\external','move_down_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(181,'core_competency_list_course_competencies','core_competency\\external','list_course_competencies',NULL,'moodle','moodle/competency:coursecompetencyview','moodle_mobile_app'),(182,'core_competency_count_competencies_in_course','core_competency\\external','count_competencies_in_course',NULL,'moodle','moodle/competency:coursecompetencyview',NULL),(183,'core_competency_count_courses_using_competency','core_competency\\external','count_courses_using_competency',NULL,'moodle','moodle/competency:coursecompetencyview',NULL),(184,'core_competency_add_competency_to_course','core_competency\\external','add_competency_to_course',NULL,'moodle','moodle/competency:coursecompetencymanage',NULL),(185,'core_competency_add_competency_to_template','core_competency\\external','add_competency_to_template',NULL,'moodle','moodle/competency:templatemanage',NULL),(186,'core_competency_remove_competency_from_course','core_competency\\external','remove_competency_from_course',NULL,'moodle','moodle/competency:coursecompetencymanage',NULL),(187,'core_competency_set_course_competency_ruleoutcome','core_competency\\external','set_course_competency_ruleoutcome',NULL,'moodle','moodle/competency:coursecompetencymanage',NULL),(188,'core_competency_remove_competency_from_template','core_competency\\external','remove_competency_from_template',NULL,'moodle','moodle/competency:templatemanage',NULL),(189,'core_competency_reorder_course_competency','core_competency\\external','reorder_course_competency',NULL,'moodle','moodle/competency:coursecompetencymanage',NULL),(190,'core_competency_reorder_template_competency','core_competency\\external','reorder_template_competency',NULL,'moodle','moodle/competency:templatemanage',NULL),(191,'core_competency_create_template','core_competency\\external','create_template',NULL,'moodle','moodle/competency:templatemanage',NULL),(192,'core_competency_duplicate_template','core_competency\\external','duplicate_template',NULL,'moodle','moodle/competency:templatemanage',NULL),(193,'core_competency_read_template','core_competency\\external','read_template',NULL,'moodle','moodle/competency:templateview',NULL),(194,'core_competency_delete_template','core_competency\\external','delete_template',NULL,'moodle','moodle/competency:templatemanage',NULL),(195,'core_competency_update_template','core_competency\\external','update_template',NULL,'moodle','moodle/competency:templatemanage',NULL),(196,'core_competency_list_templates','core_competency\\external','list_templates',NULL,'moodle','moodle/competency:templateview',NULL),(197,'core_competency_list_templates_using_competency','core_competency\\external','list_templates_using_competency',NULL,'moodle','moodle/competency:templateview',NULL),(198,'core_competency_count_templates','core_competency\\external','count_templates',NULL,'moodle','moodle/competency:templateview',NULL),(199,'core_competency_count_templates_using_competency','core_competency\\external','count_templates_using_competency',NULL,'moodle','moodle/competency:templateview',NULL),(200,'core_competency_create_plan','core_competency\\external','create_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(201,'core_competency_update_plan','core_competency\\external','update_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(202,'core_competency_complete_plan','core_competency\\external','complete_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(203,'core_competency_reopen_plan','core_competency\\external','reopen_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(204,'core_competency_read_plan','core_competency\\external','read_plan',NULL,'moodle','moodle/competency:planviewown',NULL),(205,'core_competency_delete_plan','core_competency\\external','delete_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(206,'core_competency_list_user_plans','core_competency\\external','list_user_plans',NULL,'moodle','moodle/competency:planviewown',NULL),(207,'core_competency_list_plan_competencies','core_competency\\external','list_plan_competencies',NULL,'moodle','moodle/competency:planviewown',NULL),(208,'core_competency_add_competency_to_plan','core_competency\\external','add_competency_to_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(209,'core_competency_remove_competency_from_plan','core_competency\\external','remove_competency_from_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(210,'core_competency_reorder_plan_competency','core_competency\\external','reorder_plan_competency',NULL,'moodle','moodle/competency:planmanage',NULL),(211,'core_competency_plan_request_review','core_competency\\external','plan_request_review',NULL,'moodle','moodle/competency:planmanagedraft',NULL),(212,'core_competency_plan_start_review','core_competency\\external','plan_start_review',NULL,'moodle','moodle/competency:planmanage',NULL),(213,'core_competency_plan_stop_review','core_competency\\external','plan_stop_review',NULL,'moodle','moodle/competency:planmanage',NULL),(214,'core_competency_plan_cancel_review_request','core_competency\\external','plan_cancel_review_request',NULL,'moodle','moodle/competency:planmanagedraft',NULL),(215,'core_competency_approve_plan','core_competency\\external','approve_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(216,'core_competency_unapprove_plan','core_competency\\external','unapprove_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(217,'core_competency_template_has_related_data','core_competency\\external','template_has_related_data',NULL,'moodle','moodle/competency:templateview',NULL),(218,'core_competency_get_scale_values','core_competency\\external','get_scale_values',NULL,'moodle','moodle/competency:competencymanage','moodle_mobile_app'),(219,'core_competency_add_related_competency','core_competency\\external','add_related_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(220,'core_competency_remove_related_competency','core_competency\\external','remove_related_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(221,'core_competency_read_user_evidence','core_competency\\external','read_user_evidence',NULL,'moodle','moodle/competency:userevidenceview',NULL),(222,'core_competency_delete_user_evidence','core_competency\\external','delete_user_evidence',NULL,'moodle','moodle/competency:userevidencemanageown',NULL),(223,'core_competency_create_user_evidence_competency','core_competency\\external','create_user_evidence_competency',NULL,'moodle','moodle/competency:userevidencemanageown, moodle/competency:competencyview',NULL),(224,'core_competency_delete_user_evidence_competency','core_competency\\external','delete_user_evidence_competency',NULL,'moodle','moodle/competency:userevidencemanageown',NULL),(225,'core_competency_user_competency_cancel_review_request','core_competency\\external','user_competency_cancel_review_request',NULL,'moodle','moodle/competency:userevidencemanageown',NULL),(226,'core_competency_user_competency_request_review','core_competency\\external','user_competency_request_review',NULL,'moodle','moodle/competency:userevidencemanageown',NULL),(227,'core_competency_user_competency_start_review','core_competency\\external','user_competency_start_review',NULL,'moodle','moodle/competency:competencygrade',NULL),(228,'core_competency_user_competency_stop_review','core_competency\\external','user_competency_stop_review',NULL,'moodle','moodle/competency:competencygrade',NULL),(229,'core_competency_user_competency_viewed','core_competency\\external','user_competency_viewed',NULL,'moodle','moodle/competency:usercompetencyview','moodle_mobile_app'),(230,'core_competency_user_competency_viewed_in_plan','core_competency\\external','user_competency_viewed_in_plan',NULL,'moodle','moodle/competency:usercompetencyview','moodle_mobile_app'),(231,'core_competency_user_competency_viewed_in_course','core_competency\\external','user_competency_viewed_in_course',NULL,'moodle','moodle/competency:usercompetencyview','moodle_mobile_app'),(232,'core_competency_user_competency_plan_viewed','core_competency\\external','user_competency_plan_viewed',NULL,'moodle','moodle/competency:usercompetencyview','moodle_mobile_app'),(233,'core_competency_grade_competency','core_competency\\external','grade_competency',NULL,'moodle','moodle/competency:competencygrade',NULL),(234,'core_competency_grade_competency_in_plan','core_competency\\external','grade_competency_in_plan',NULL,'moodle','moodle/competency:competencygrade',NULL),(235,'core_competency_grade_competency_in_course','core_competency\\external','grade_competency_in_course',NULL,'moodle','moodle/competency:competencygrade','moodle_mobile_app'),(236,'core_competency_unlink_plan_from_template','core_competency\\external','unlink_plan_from_template',NULL,'moodle','moodle/competency:planmanage',NULL),(237,'core_competency_template_viewed','core_competency\\external','template_viewed',NULL,'moodle','moodle/competency:templateview',NULL),(238,'core_competency_request_review_of_user_evidence_linked_competencies','core_competency\\external','request_review_of_user_evidence_linked_competencies',NULL,'moodle','moodle/competency:userevidencemanageown',NULL),(239,'core_competency_update_course_competency_settings','core_competency\\external','update_course_competency_settings',NULL,'moodle','moodle/competency:coursecompetencyconfigure',NULL),(240,'core_competency_delete_evidence','core_competency\\external','delete_evidence',NULL,'moodle','moodle/competency:evidencedelete','moodle_mobile_app'),(241,'core_webservice_get_site_info','core_webservice_external','get_site_info','webservice/externallib.php','moodle','','moodle_mobile_app'),(242,'core_block_get_course_blocks','core_block_external','get_course_blocks',NULL,'moodle','','moodle_mobile_app'),(243,'core_filters_get_available_in_context','core_filters\\external','get_available_in_context',NULL,'moodle','','moodle_mobile_app'),(244,'mod_assign_copy_previous_attempt','mod_assign_external','copy_previous_attempt','mod/assign/externallib.php','mod_assign','mod/assign:view, mod/assign:submit',NULL),(245,'mod_assign_get_grades','mod_assign_external','get_grades','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(246,'mod_assign_get_assignments','mod_assign_external','get_assignments','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(247,'mod_assign_get_submissions','mod_assign_external','get_submissions','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(248,'mod_assign_get_user_flags','mod_assign_external','get_user_flags','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(249,'mod_assign_set_user_flags','mod_assign_external','set_user_flags','mod/assign/externallib.php','mod_assign','mod/assign:grade','moodle_mobile_app'),(250,'mod_assign_get_user_mappings','mod_assign_external','get_user_mappings','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(251,'mod_assign_revert_submissions_to_draft','mod_assign_external','revert_submissions_to_draft','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(252,'mod_assign_lock_submissions','mod_assign_external','lock_submissions','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(253,'mod_assign_unlock_submissions','mod_assign_external','unlock_submissions','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(254,'mod_assign_save_submission','mod_assign_external','save_submission','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(255,'mod_assign_submit_for_grading','mod_assign_external','submit_for_grading','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(256,'mod_assign_save_grade','mod_assign_external','save_grade','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(257,'mod_assign_save_grades','mod_assign_external','save_grades','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(258,'mod_assign_save_user_extensions','mod_assign_external','save_user_extensions','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(259,'mod_assign_reveal_identities','mod_assign_external','reveal_identities','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(260,'mod_assign_view_grading_table','mod_assign_external','view_grading_table','mod/assign/externallib.php','mod_assign','mod/assign:view, mod/assign:viewgrades','moodle_mobile_app'),(261,'mod_assign_view_submission_status','mod_assign_external','view_submission_status','mod/assign/externallib.php','mod_assign','mod/assign:view','moodle_mobile_app'),(262,'mod_assign_get_submission_status','mod_assign_external','get_submission_status','mod/assign/externallib.php','mod_assign','mod/assign:view','moodle_mobile_app'),(263,'mod_assign_list_participants','mod_assign_external','list_participants','mod/assign/externallib.php','mod_assign','mod/assign:view, mod/assign:viewgrades','moodle_mobile_app'),(264,'mod_assign_submit_grading_form','mod_assign_external','submit_grading_form','mod/assign/externallib.php','mod_assign','mod/assign:grade','moodle_mobile_app'),(265,'mod_assign_get_participant','mod_assign_external','get_participant','mod/assign/externallib.php','mod_assign','mod/assign:view, mod/assign:viewgrades','moodle_mobile_app'),(266,'mod_assign_view_assign','mod_assign_external','view_assign','mod/assign/externallib.php','mod_assign','mod/assign:view','moodle_mobile_app'),(267,'mod_book_view_book','mod_book_external','view_book',NULL,'mod_book','mod/book:read','moodle_mobile_app'),(268,'mod_book_get_books_by_courses','mod_book_external','get_books_by_courses',NULL,'mod_book','','moodle_mobile_app'),(269,'mod_chat_login_user','mod_chat_external','login_user',NULL,'mod_chat','mod/chat:chat','moodle_mobile_app'),(270,'mod_chat_get_chat_users','mod_chat_external','get_chat_users',NULL,'mod_chat','mod/chat:chat','moodle_mobile_app'),(271,'mod_chat_send_chat_message','mod_chat_external','send_chat_message',NULL,'mod_chat','mod/chat:chat','moodle_mobile_app'),(272,'mod_chat_get_chat_latest_messages','mod_chat_external','get_chat_latest_messages',NULL,'mod_chat','mod/chat:chat','moodle_mobile_app'),(273,'mod_chat_view_chat','mod_chat_external','view_chat',NULL,'mod_chat','mod/chat:chat','moodle_mobile_app'),(274,'mod_chat_get_chats_by_courses','mod_chat_external','get_chats_by_courses',NULL,'mod_chat','','moodle_mobile_app'),(275,'mod_chat_get_sessions','mod_chat_external','get_sessions',NULL,'mod_chat','','moodle_mobile_app'),(276,'mod_chat_get_session_messages','mod_chat_external','get_session_messages',NULL,'mod_chat','','moodle_mobile_app'),(277,'mod_choice_get_choice_results','mod_choice_external','get_choice_results',NULL,'mod_choice','','moodle_mobile_app'),(278,'mod_choice_get_choice_options','mod_choice_external','get_choice_options',NULL,'mod_choice','mod/choice:choose','moodle_mobile_app'),(279,'mod_choice_submit_choice_response','mod_choice_external','submit_choice_response',NULL,'mod_choice','mod/choice:choose','moodle_mobile_app'),(280,'mod_choice_view_choice','mod_choice_external','view_choice',NULL,'mod_choice','','moodle_mobile_app'),(281,'mod_choice_get_choices_by_courses','mod_choice_external','get_choices_by_courses',NULL,'mod_choice','','moodle_mobile_app'),(282,'mod_choice_delete_choice_responses','mod_choice_external','delete_choice_responses',NULL,'mod_choice','mod/choice:choose','moodle_mobile_app'),(283,'mod_data_get_databases_by_courses','mod_data_external','get_databases_by_courses',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(284,'mod_data_view_database','mod_data_external','view_database',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(285,'mod_data_get_data_access_information','mod_data_external','get_data_access_information',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(286,'mod_data_get_entries','mod_data_external','get_entries',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(287,'mod_data_get_entry','mod_data_external','get_entry',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(288,'mod_data_get_fields','mod_data_external','get_fields',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(289,'mod_data_search_entries','mod_data_external','search_entries',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(290,'mod_data_approve_entry','mod_data_external','approve_entry',NULL,'mod_data','mod/data:approve','moodle_mobile_app'),(291,'mod_data_delete_entry','mod_data_external','delete_entry',NULL,'mod_data','mod/data:manageentries','moodle_mobile_app'),(292,'mod_data_add_entry','mod_data_external','add_entry',NULL,'mod_data','mod/data:writeentry','moodle_mobile_app'),(293,'mod_data_update_entry','mod_data_external','update_entry',NULL,'mod_data','mod/data:writeentry','moodle_mobile_app'),(294,'mod_feedback_get_feedbacks_by_courses','mod_feedback_external','get_feedbacks_by_courses',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(295,'mod_feedback_get_feedback_access_information','mod_feedback_external','get_feedback_access_information',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(296,'mod_feedback_view_feedback','mod_feedback_external','view_feedback',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(297,'mod_feedback_get_current_completed_tmp','mod_feedback_external','get_current_completed_tmp',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(298,'mod_feedback_get_items','mod_feedback_external','get_items',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(299,'mod_feedback_launch_feedback','mod_feedback_external','launch_feedback',NULL,'mod_feedback','mod/feedback:complete','moodle_mobile_app'),(300,'mod_feedback_get_page_items','mod_feedback_external','get_page_items',NULL,'mod_feedback','mod/feedback:complete','moodle_mobile_app'),(301,'mod_feedback_process_page','mod_feedback_external','process_page',NULL,'mod_feedback','mod/feedback:complete','moodle_mobile_app'),(302,'mod_feedback_get_analysis','mod_feedback_external','get_analysis',NULL,'mod_feedback','mod/feedback:viewanalysepage','moodle_mobile_app'),(303,'mod_feedback_get_unfinished_responses','mod_feedback_external','get_unfinished_responses',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(304,'mod_feedback_get_finished_responses','mod_feedback_external','get_finished_responses',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(305,'mod_feedback_get_non_respondents','mod_feedback_external','get_non_respondents',NULL,'mod_feedback','mod/feedback:viewreports','moodle_mobile_app'),(306,'mod_feedback_get_responses_analysis','mod_feedback_external','get_responses_analysis',NULL,'mod_feedback','mod/feedback:viewreports','moodle_mobile_app'),(307,'mod_feedback_get_last_completed','mod_feedback_external','get_last_completed',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(308,'mod_folder_view_folder','mod_folder_external','view_folder',NULL,'mod_folder','mod/folder:view','moodle_mobile_app'),(309,'mod_folder_get_folders_by_courses','mod_folder_external','get_folders_by_courses',NULL,'mod_folder','mod/folder:view','moodle_mobile_app'),(310,'mod_forum_get_forums_by_courses','mod_forum_external','get_forums_by_courses','mod/forum/externallib.php','mod_forum','mod/forum:viewdiscussion','moodle_mobile_app'),(311,'mod_forum_get_forum_discussion_posts','mod_forum_external','get_forum_discussion_posts','mod/forum/externallib.php','mod_forum','mod/forum:viewdiscussion, mod/forum:viewqandawithoutposting','moodle_mobile_app'),(312,'mod_forum_get_forum_discussions_paginated','mod_forum_external','get_forum_discussions_paginated','mod/forum/externallib.php','mod_forum','mod/forum:viewdiscussion, mod/forum:viewqandawithoutposting','moodle_mobile_app'),(313,'mod_forum_view_forum','mod_forum_external','view_forum','mod/forum/externallib.php','mod_forum','mod/forum:viewdiscussion','moodle_mobile_app'),(314,'mod_forum_view_forum_discussion','mod_forum_external','view_forum_discussion','mod/forum/externallib.php','mod_forum','mod/forum:viewdiscussion','moodle_mobile_app'),(315,'mod_forum_add_discussion_post','mod_forum_external','add_discussion_post','mod/forum/externallib.php','mod_forum','mod/forum:replypost','moodle_mobile_app'),(316,'mod_forum_add_discussion','mod_forum_external','add_discussion','mod/forum/externallib.php','mod_forum','mod/forum:startdiscussion','moodle_mobile_app'),(317,'mod_forum_can_add_discussion','mod_forum_external','can_add_discussion','mod/forum/externallib.php','mod_forum','','moodle_mobile_app'),(318,'mod_glossary_get_glossaries_by_courses','mod_glossary_external','get_glossaries_by_courses',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(319,'mod_glossary_view_glossary','mod_glossary_external','view_glossary',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(320,'mod_glossary_view_entry','mod_glossary_external','view_entry',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(321,'mod_glossary_get_entries_by_letter','mod_glossary_external','get_entries_by_letter',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(322,'mod_glossary_get_entries_by_date','mod_glossary_external','get_entries_by_date',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(323,'mod_glossary_get_categories','mod_glossary_external','get_categories',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(324,'mod_glossary_get_entries_by_category','mod_glossary_external','get_entries_by_category',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(325,'mod_glossary_get_authors','mod_glossary_external','get_authors',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(326,'mod_glossary_get_entries_by_author','mod_glossary_external','get_entries_by_author',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(327,'mod_glossary_get_entries_by_author_id','mod_glossary_external','get_entries_by_author_id',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(328,'mod_glossary_get_entries_by_search','mod_glossary_external','get_entries_by_search',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(329,'mod_glossary_get_entries_by_term','mod_glossary_external','get_entries_by_term',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(330,'mod_glossary_get_entries_to_approve','mod_glossary_external','get_entries_to_approve',NULL,'mod_glossary','mod/glossary:approve','moodle_mobile_app'),(331,'mod_glossary_get_entry_by_id','mod_glossary_external','get_entry_by_id',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(332,'mod_glossary_add_entry','mod_glossary_external','add_entry',NULL,'mod_glossary','mod/glossary:write','moodle_mobile_app'),(333,'mod_imscp_view_imscp','mod_imscp_external','view_imscp',NULL,'mod_imscp','mod/imscp:view','moodle_mobile_app'),(334,'mod_imscp_get_imscps_by_courses','mod_imscp_external','get_imscps_by_courses',NULL,'mod_imscp','mod/imscp:view','moodle_mobile_app'),(335,'mod_label_get_labels_by_courses','mod_label_external','get_labels_by_courses',NULL,'mod_label','mod/label:view','moodle_mobile_app'),(336,'mod_lesson_get_lessons_by_courses','mod_lesson_external','get_lessons_by_courses',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(337,'mod_lesson_get_lesson_access_information','mod_lesson_external','get_lesson_access_information',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(338,'mod_lesson_view_lesson','mod_lesson_external','view_lesson',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(339,'mod_lesson_get_questions_attempts','mod_lesson_external','get_questions_attempts',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(340,'mod_lesson_get_user_grade','mod_lesson_external','get_user_grade',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(341,'mod_lesson_get_user_attempt_grade','mod_lesson_external','get_user_attempt_grade',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(342,'mod_lesson_get_content_pages_viewed','mod_lesson_external','get_content_pages_viewed',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(343,'mod_lesson_get_user_timers','mod_lesson_external','get_user_timers',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(344,'mod_lesson_get_pages','mod_lesson_external','get_pages',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(345,'mod_lesson_launch_attempt','mod_lesson_external','launch_attempt',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(346,'mod_lesson_get_page_data','mod_lesson_external','get_page_data',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(347,'mod_lesson_process_page','mod_lesson_external','process_page',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(348,'mod_lesson_finish_attempt','mod_lesson_external','finish_attempt',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(349,'mod_lesson_get_attempts_overview','mod_lesson_external','get_attempts_overview',NULL,'mod_lesson','mod/lesson:viewreports','moodle_mobile_app'),(350,'mod_lesson_get_user_attempt','mod_lesson_external','get_user_attempt',NULL,'mod_lesson','mod/lesson:viewreports','moodle_mobile_app'),(351,'mod_lesson_get_pages_possible_jumps','mod_lesson_external','get_pages_possible_jumps',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(352,'mod_lesson_get_lesson','mod_lesson_external','get_lesson',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(353,'mod_lti_get_tool_launch_data','mod_lti_external','get_tool_launch_data',NULL,'mod_lti','mod/lti:view','moodle_mobile_app'),(354,'mod_lti_get_ltis_by_courses','mod_lti_external','get_ltis_by_courses',NULL,'mod_lti','mod/lti:view','moodle_mobile_app'),(355,'mod_lti_view_lti','mod_lti_external','view_lti',NULL,'mod_lti','mod/lti:view','moodle_mobile_app'),(356,'mod_lti_get_tool_proxies','mod_lti_external','get_tool_proxies',NULL,'mod_lti','moodle/site:config',NULL),(357,'mod_lti_create_tool_proxy','mod_lti_external','create_tool_proxy',NULL,'mod_lti','moodle/site:config',NULL),(358,'mod_lti_delete_tool_proxy','mod_lti_external','delete_tool_proxy',NULL,'mod_lti','moodle/site:config',NULL),(359,'mod_lti_get_tool_proxy_registration_request','mod_lti_external','get_tool_proxy_registration_request',NULL,'mod_lti','moodle/site:config',NULL),(360,'mod_lti_get_tool_types','mod_lti_external','get_tool_types',NULL,'mod_lti','moodle/site:config',NULL),(361,'mod_lti_create_tool_type','mod_lti_external','create_tool_type',NULL,'mod_lti','moodle/site:config',NULL),(362,'mod_lti_update_tool_type','mod_lti_external','update_tool_type',NULL,'mod_lti','moodle/site:config',NULL),(363,'mod_lti_delete_tool_type','mod_lti_external','delete_tool_type',NULL,'mod_lti','moodle/site:config',NULL),(364,'mod_lti_is_cartridge','mod_lti_external','is_cartridge',NULL,'mod_lti','moodle/site:config',NULL),(365,'mod_page_view_page','mod_page_external','view_page',NULL,'mod_page','mod/page:view','moodle_mobile_app'),(366,'mod_page_get_pages_by_courses','mod_page_external','get_pages_by_courses',NULL,'mod_page','mod/page:view','moodle_mobile_app'),(367,'mod_quiz_get_quizzes_by_courses','mod_quiz_external','get_quizzes_by_courses',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(368,'mod_quiz_view_quiz','mod_quiz_external','view_quiz',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(369,'mod_quiz_get_user_attempts','mod_quiz_external','get_user_attempts',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(370,'mod_quiz_get_user_best_grade','mod_quiz_external','get_user_best_grade',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(371,'mod_quiz_get_combined_review_options','mod_quiz_external','get_combined_review_options',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(372,'mod_quiz_start_attempt','mod_quiz_external','start_attempt',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(373,'mod_quiz_get_attempt_data','mod_quiz_external','get_attempt_data',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(374,'mod_quiz_get_attempt_summary','mod_quiz_external','get_attempt_summary',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(375,'mod_quiz_save_attempt','mod_quiz_external','save_attempt',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(376,'mod_quiz_process_attempt','mod_quiz_external','process_attempt',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(377,'mod_quiz_get_attempt_review','mod_quiz_external','get_attempt_review',NULL,'mod_quiz','mod/quiz:reviewmyattempts','moodle_mobile_app'),(378,'mod_quiz_view_attempt','mod_quiz_external','view_attempt',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(379,'mod_quiz_view_attempt_summary','mod_quiz_external','view_attempt_summary',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(380,'mod_quiz_view_attempt_review','mod_quiz_external','view_attempt_review',NULL,'mod_quiz','mod/quiz:reviewmyattempts','moodle_mobile_app'),(381,'mod_quiz_get_quiz_feedback_for_grade','mod_quiz_external','get_quiz_feedback_for_grade',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(382,'mod_quiz_get_quiz_access_information','mod_quiz_external','get_quiz_access_information',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(383,'mod_quiz_get_attempt_access_information','mod_quiz_external','get_attempt_access_information',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(384,'mod_quiz_get_quiz_required_qtypes','mod_quiz_external','get_quiz_required_qtypes',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(385,'mod_resource_view_resource','mod_resource_external','view_resource',NULL,'mod_resource','mod/resource:view','moodle_mobile_app'),(386,'mod_resource_get_resources_by_courses','mod_resource_external','get_resources_by_courses',NULL,'mod_resource','mod/resource:view','moodle_mobile_app'),(387,'mod_scorm_view_scorm','mod_scorm_external','view_scorm',NULL,'mod_scorm','','moodle_mobile_app'),(388,'mod_scorm_get_scorm_attempt_count','mod_scorm_external','get_scorm_attempt_count',NULL,'mod_scorm','','moodle_mobile_app'),(389,'mod_scorm_get_scorm_scoes','mod_scorm_external','get_scorm_scoes',NULL,'mod_scorm','','moodle_mobile_app'),(390,'mod_scorm_get_scorm_user_data','mod_scorm_external','get_scorm_user_data',NULL,'mod_scorm','','moodle_mobile_app'),(391,'mod_scorm_insert_scorm_tracks','mod_scorm_external','insert_scorm_tracks',NULL,'mod_scorm','mod/scorm:savetrack','moodle_mobile_app'),(392,'mod_scorm_get_scorm_sco_tracks','mod_scorm_external','get_scorm_sco_tracks',NULL,'mod_scorm','','moodle_mobile_app'),(393,'mod_scorm_get_scorms_by_courses','mod_scorm_external','get_scorms_by_courses',NULL,'mod_scorm','','moodle_mobile_app'),(394,'mod_scorm_launch_sco','mod_scorm_external','launch_sco',NULL,'mod_scorm','','moodle_mobile_app'),(395,'mod_survey_get_surveys_by_courses','mod_survey_external','get_surveys_by_courses',NULL,'mod_survey','','moodle_mobile_app'),(396,'mod_survey_view_survey','mod_survey_external','view_survey',NULL,'mod_survey','mod/survey:participate','moodle_mobile_app'),(397,'mod_survey_get_questions','mod_survey_external','get_questions',NULL,'mod_survey','mod/survey:participate','moodle_mobile_app'),(398,'mod_survey_submit_answers','mod_survey_external','submit_answers',NULL,'mod_survey','mod/survey:participate','moodle_mobile_app'),(399,'mod_url_view_url','mod_url_external','view_url',NULL,'mod_url','mod/url:view','moodle_mobile_app'),(400,'mod_url_get_urls_by_courses','mod_url_external','get_urls_by_courses',NULL,'mod_url','mod/url:view','moodle_mobile_app'),(401,'mod_wiki_get_wikis_by_courses','mod_wiki_external','get_wikis_by_courses',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(402,'mod_wiki_view_wiki','mod_wiki_external','view_wiki',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(403,'mod_wiki_view_page','mod_wiki_external','view_page',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(404,'mod_wiki_get_subwikis','mod_wiki_external','get_subwikis',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(405,'mod_wiki_get_subwiki_pages','mod_wiki_external','get_subwiki_pages',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(406,'mod_wiki_get_subwiki_files','mod_wiki_external','get_subwiki_files',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(407,'mod_wiki_get_page_contents','mod_wiki_external','get_page_contents',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(408,'mod_wiki_get_page_for_editing','mod_wiki_external','get_page_for_editing',NULL,'mod_wiki','mod/wiki:editpage','moodle_mobile_app'),(409,'mod_wiki_new_page','mod_wiki_external','new_page',NULL,'mod_wiki','mod/wiki:editpage','moodle_mobile_app'),(410,'mod_wiki_edit_page','mod_wiki_external','edit_page',NULL,'mod_wiki','mod/wiki:editpage','moodle_mobile_app'),(411,'mod_workshop_get_workshops_by_courses','mod_workshop_external','get_workshops_by_courses',NULL,'mod_workshop','mod/workshop:view','moodle_mobile_app'),(412,'mod_workshop_get_workshop_access_information','mod_workshop_external','get_workshop_access_information',NULL,'mod_workshop','mod/workshop:view','moodle_mobile_app'),(413,'mod_workshop_get_user_plan','mod_workshop_external','get_user_plan',NULL,'mod_workshop','mod/workshop:view','moodle_mobile_app'),(414,'mod_workshop_view_workshop','mod_workshop_external','view_workshop',NULL,'mod_workshop','mod/workshop:view','moodle_mobile_app'),(415,'mod_workshop_add_submission','mod_workshop_external','add_submission',NULL,'mod_workshop','mod/workshop:submit','moodle_mobile_app'),(416,'mod_workshop_update_submission','mod_workshop_external','update_submission',NULL,'mod_workshop','mod/workshop:submit','moodle_mobile_app'),(417,'mod_workshop_delete_submission','mod_workshop_external','delete_submission',NULL,'mod_workshop','mod/workshop:submit','moodle_mobile_app'),(418,'mod_workshop_get_submissions','mod_workshop_external','get_submissions',NULL,'mod_workshop','','moodle_mobile_app'),(419,'mod_workshop_get_submission','mod_workshop_external','get_submission',NULL,'mod_workshop','','moodle_mobile_app'),(420,'mod_workshop_get_submission_assessments','mod_workshop_external','get_submission_assessments',NULL,'mod_workshop','','moodle_mobile_app'),(421,'mod_workshop_get_assessment','mod_workshop_external','get_assessment',NULL,'mod_workshop','','moodle_mobile_app'),(422,'mod_workshop_get_assessment_form_definition','mod_workshop_external','get_assessment_form_definition',NULL,'mod_workshop','','moodle_mobile_app'),(423,'mod_workshop_get_reviewer_assessments','mod_workshop_external','get_reviewer_assessments',NULL,'mod_workshop','','moodle_mobile_app'),(424,'mod_workshop_update_assessment','mod_workshop_external','update_assessment',NULL,'mod_workshop','','moodle_mobile_app'),(425,'mod_workshop_get_grades','mod_workshop_external','get_grades',NULL,'mod_workshop','','moodle_mobile_app'),(426,'mod_workshop_evaluate_assessment','mod_workshop_external','evaluate_assessment',NULL,'mod_workshop','','moodle_mobile_app'),(427,'mod_workshop_get_grades_report','mod_workshop_external','get_grades_report',NULL,'mod_workshop','','moodle_mobile_app'),(428,'mod_workshop_view_submission','mod_workshop_external','view_submission',NULL,'mod_workshop','mod/workshop:view','moodle_mobile_app'),(429,'mod_workshop_evaluate_submission','mod_workshop_external','evaluate_submission',NULL,'mod_workshop','','moodle_mobile_app'),(430,'auth_email_get_signup_settings','auth_email_external','get_signup_settings',NULL,'auth_email','',NULL),(431,'auth_email_signup_user','auth_email_external','signup_user',NULL,'auth_email','',NULL),(432,'enrol_guest_get_instance_info','enrol_guest_external','get_instance_info',NULL,'enrol_guest','','moodle_mobile_app'),(433,'enrol_manual_enrol_users','enrol_manual_external','enrol_users','enrol/manual/externallib.php','enrol_manual','enrol/manual:enrol',NULL),(434,'enrol_manual_unenrol_users','enrol_manual_external','unenrol_users','enrol/manual/externallib.php','enrol_manual','enrol/manual:unenrol',NULL),(435,'enrol_self_get_instance_info','enrol_self_external','get_instance_info','enrol/self/externallib.php','enrol_self','','moodle_mobile_app'),(436,'enrol_self_enrol_user','enrol_self_external','enrol_user','enrol/self/externallib.php','enrol_self','','moodle_mobile_app'),(437,'message_airnotifier_is_system_configured','message_airnotifier_external','is_system_configured','message/output/airnotifier/externallib.php','message_airnotifier','','moodle_mobile_app'),(438,'message_airnotifier_are_notification_preferences_configured','message_airnotifier_external','are_notification_preferences_configured','message/output/airnotifier/externallib.php','message_airnotifier','','moodle_mobile_app'),(439,'message_airnotifier_get_user_devices','message_airnotifier_external','get_user_devices','message/output/airnotifier/externallib.php','message_airnotifier','','moodle_mobile_app'),(440,'message_airnotifier_enable_device','message_airnotifier_external','enable_device','message/output/airnotifier/externallib.php','message_airnotifier','message/airnotifier:managedevice','moodle_mobile_app'),(441,'message_popup_get_popup_notifications','message_popup_external','get_popup_notifications','message/output/popup/externallib.php','message_popup','','moodle_mobile_app'),(442,'message_popup_get_unread_popup_notification_count','message_popup_external','get_unread_popup_notification_count','message/output/popup/externallib.php','message_popup','','moodle_mobile_app'),(443,'report_competency_data_for_report','report_competency\\external','data_for_report',NULL,'report_competency','moodle/competency:coursecompetencyview',NULL),(444,'report_insights_set_notuseful_prediction','report_insights\\external','set_notuseful_prediction',NULL,'report_insights','','moodle_mobile_app'),(445,'report_insights_set_fixed_prediction','report_insights\\external','set_fixed_prediction',NULL,'report_insights','','moodle_mobile_app'),(446,'gradereport_overview_get_course_grades','gradereport_overview_external','get_course_grades',NULL,'gradereport_overview','','moodle_mobile_app'),(447,'gradereport_overview_view_grade_report','gradereport_overview_external','view_grade_report',NULL,'gradereport_overview','gradereport/overview:view','moodle_mobile_app'),(448,'gradereport_user_get_grades_table','gradereport_user_external','get_grades_table','grade/report/user/externallib.php','gradereport_user','gradereport/user:view','moodle_mobile_app'),(449,'gradereport_user_view_grade_report','gradereport_user_external','view_grade_report','grade/report/user/externallib.php','gradereport_user','gradereport/user:view','moodle_mobile_app'),(450,'gradereport_user_get_grade_items','gradereport_user_external','get_grade_items','grade/report/user/externallib.php','gradereport_user','gradereport/user:view','moodle_mobile_app'),(451,'tool_dataprivacy_cancel_data_request','tool_dataprivacy\\external','cancel_data_request',NULL,'tool_dataprivacy','',NULL),(452,'tool_dataprivacy_contact_dpo','tool_dataprivacy\\external','contact_dpo',NULL,'tool_dataprivacy','',NULL),(453,'tool_dataprivacy_mark_complete','tool_dataprivacy\\external','mark_complete',NULL,'tool_dataprivacy','tool/dataprivacy:managedatarequests',NULL),(454,'tool_dataprivacy_get_data_request','tool_dataprivacy\\external','get_data_request',NULL,'tool_dataprivacy','tool/dataprivacy:managedatarequests',NULL),(455,'tool_dataprivacy_approve_data_request','tool_dataprivacy\\external','approve_data_request',NULL,'tool_dataprivacy','tool/dataprivacy:managedatarequests',NULL),(456,'tool_dataprivacy_bulk_approve_data_requests','tool_dataprivacy\\external','bulk_approve_data_requests',NULL,'tool_dataprivacy','tool/dataprivacy:managedatarequests',NULL),(457,'tool_dataprivacy_deny_data_request','tool_dataprivacy\\external','deny_data_request',NULL,'tool_dataprivacy','tool/dataprivacy:managedatarequests',NULL),(458,'tool_dataprivacy_bulk_deny_data_requests','tool_dataprivacy\\external','bulk_deny_data_requests',NULL,'tool_dataprivacy','tool/dataprivacy:managedatarequests',NULL),(459,'tool_dataprivacy_get_users','tool_dataprivacy\\external','get_users',NULL,'tool_dataprivacy','tool/dataprivacy:managedatarequests',NULL),(460,'tool_dataprivacy_create_purpose_form','tool_dataprivacy\\external','create_purpose_form',NULL,'tool_dataprivacy','',NULL),(461,'tool_dataprivacy_create_category_form','tool_dataprivacy\\external','create_category_form',NULL,'tool_dataprivacy','',NULL),(462,'tool_dataprivacy_delete_purpose','tool_dataprivacy\\external','delete_purpose',NULL,'tool_dataprivacy','',NULL),(463,'tool_dataprivacy_delete_category','tool_dataprivacy\\external','delete_category',NULL,'tool_dataprivacy','',NULL),(464,'tool_dataprivacy_set_contextlevel_form','tool_dataprivacy\\external','set_contextlevel_form',NULL,'tool_dataprivacy','',NULL),(465,'tool_dataprivacy_set_context_form','tool_dataprivacy\\external','set_context_form',NULL,'tool_dataprivacy','',NULL),(466,'tool_dataprivacy_tree_extra_branches','tool_dataprivacy\\external','tree_extra_branches',NULL,'tool_dataprivacy','',NULL),(467,'tool_dataprivacy_confirm_contexts_for_deletion','tool_dataprivacy\\external','confirm_contexts_for_deletion',NULL,'tool_dataprivacy','',NULL),(468,'tool_dataprivacy_set_context_defaults','tool_dataprivacy\\external','set_context_defaults',NULL,'tool_dataprivacy','tool/dataprivacy:managedataregistry',NULL),(469,'tool_dataprivacy_get_category_options','tool_dataprivacy\\external','get_category_options',NULL,'tool_dataprivacy','tool/dataprivacy:managedataregistry',NULL),(470,'tool_dataprivacy_get_purpose_options','tool_dataprivacy\\external','get_purpose_options',NULL,'tool_dataprivacy','tool/dataprivacy:managedataregistry',NULL),(471,'tool_dataprivacy_get_activity_options','tool_dataprivacy\\external','get_activity_options',NULL,'tool_dataprivacy','tool/dataprivacy:managedataregistry',NULL),(472,'tool_lp_data_for_competency_frameworks_manage_page','tool_lp\\external','data_for_competency_frameworks_manage_page',NULL,'tool_lp','moodle/competency:competencyview',NULL),(473,'tool_lp_data_for_competency_summary','tool_lp\\external','data_for_competency_summary',NULL,'tool_lp','moodle/competency:competencyview',NULL),(474,'tool_lp_data_for_competencies_manage_page','tool_lp\\external','data_for_competencies_manage_page',NULL,'tool_lp','moodle/competency:competencyview',NULL),(475,'tool_lp_list_courses_using_competency','tool_lp\\external','list_courses_using_competency',NULL,'tool_lp','moodle/competency:coursecompetencyview',NULL),(476,'tool_lp_data_for_course_competencies_page','tool_lp\\external','data_for_course_competencies_page',NULL,'tool_lp','moodle/competency:coursecompetencyview','moodle_mobile_app'),(477,'tool_lp_data_for_template_competencies_page','tool_lp\\external','data_for_template_competencies_page',NULL,'tool_lp','moodle/competency:templateview',NULL),(478,'tool_lp_data_for_templates_manage_page','tool_lp\\external','data_for_templates_manage_page',NULL,'tool_lp','moodle/competency:templateview',NULL),(479,'tool_lp_data_for_plans_page','tool_lp\\external','data_for_plans_page',NULL,'tool_lp','moodle/competency:planviewown','moodle_mobile_app'),(480,'tool_lp_data_for_plan_page','tool_lp\\external','data_for_plan_page',NULL,'tool_lp','moodle/competency:planview','moodle_mobile_app'),(481,'tool_lp_data_for_related_competencies_section','tool_lp\\external','data_for_related_competencies_section',NULL,'tool_lp','moodle/competency:competencyview',NULL),(482,'tool_lp_search_users','tool_lp\\external','search_users',NULL,'tool_lp','',NULL),(483,'tool_lp_search_cohorts','core_cohort_external','search_cohorts','cohort/externallib.php','tool_lp','moodle/cohort:view',NULL),(484,'tool_lp_data_for_user_evidence_list_page','tool_lp\\external','data_for_user_evidence_list_page',NULL,'tool_lp','moodle/competency:userevidenceview','moodle_mobile_app'),(485,'tool_lp_data_for_user_evidence_page','tool_lp\\external','data_for_user_evidence_page',NULL,'tool_lp','moodle/competency:userevidenceview','moodle_mobile_app'),(486,'tool_lp_data_for_user_competency_summary','tool_lp\\external','data_for_user_competency_summary',NULL,'tool_lp','moodle/competency:planview','moodle_mobile_app'),(487,'tool_lp_data_for_user_competency_summary_in_plan','tool_lp\\external','data_for_user_competency_summary_in_plan',NULL,'tool_lp','moodle/competency:planview','moodle_mobile_app'),(488,'tool_lp_data_for_user_competency_summary_in_course','tool_lp\\external','data_for_user_competency_summary_in_course',NULL,'tool_lp','moodle/competency:coursecompetencyview','moodle_mobile_app'),(489,'tool_mobile_get_plugins_supporting_mobile','tool_mobile\\external','get_plugins_supporting_mobile',NULL,'tool_mobile','','moodle_mobile_app'),(490,'tool_mobile_get_public_config','tool_mobile\\external','get_public_config',NULL,'tool_mobile','','moodle_mobile_app'),(491,'tool_mobile_get_config','tool_mobile\\external','get_config',NULL,'tool_mobile','','moodle_mobile_app'),(492,'tool_mobile_get_autologin_key','tool_mobile\\external','get_autologin_key',NULL,'tool_mobile','','moodle_mobile_app'),(493,'tool_mobile_get_content','tool_mobile\\external','get_content',NULL,'tool_mobile','','moodle_mobile_app'),(494,'tool_policy_get_policy_version','tool_policy\\external','get_policy_version',NULL,'tool_policy','',NULL),(495,'tool_policy_submit_accept_on_behalf','tool_policy\\external','submit_accept_on_behalf',NULL,'tool_policy','',NULL),(496,'tool_templatelibrary_list_templates','tool_templatelibrary\\external','list_templates',NULL,'tool_templatelibrary','',NULL),(497,'tool_templatelibrary_load_canonical_template','tool_templatelibrary\\external','load_canonical_template',NULL,'tool_templatelibrary','',NULL),(498,'tool_usertours_fetch_and_start_tour','tool_usertours\\external\\tour','fetch_and_start_tour',NULL,'tool_usertours','',NULL),(499,'tool_usertours_step_shown','tool_usertours\\external\\tour','step_shown',NULL,'tool_usertours','',NULL),(500,'tool_usertours_complete_tour','tool_usertours\\external\\tour','complete_tour',NULL,'tool_usertours','',NULL),(501,'tool_usertours_reset_tour','tool_usertours\\external\\tour','reset_tour',NULL,'tool_usertours','',NULL);
/*!40000 ALTER TABLE `mdl_external_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_external_services`
--

DROP TABLE IF EXISTS `mdl_external_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_external_services` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL,
  `requiredcapability` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL,
  `restrictedusers` tinyint(1) NOT NULL,
  `component` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `shortname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `downloadfiles` tinyint(1) NOT NULL DEFAULT 0,
  `uploadfiles` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_exteserv_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='built in and custom external services';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_external_services`
--

LOCK TABLES `mdl_external_services` WRITE;
/*!40000 ALTER TABLE `mdl_external_services` DISABLE KEYS */;
INSERT INTO `mdl_external_services` VALUES (1,'Moodle mobile web service',0,NULL,0,'moodle',1543609761,1543610378,'moodle_mobile_app',1,1),(2,'suap',1,'',1,NULL,1544462810,NULL,'Sincronismo SUAP',0,0);
/*!40000 ALTER TABLE `mdl_external_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_external_services_functions`
--

DROP TABLE IF EXISTS `mdl_external_services_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_external_services_functions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `externalserviceid` bigint(10) NOT NULL,
  `functionname` varchar(200) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_exteservfunc_ext_ix` (`externalserviceid`)
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='lists functions available in each service group';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_external_services_functions`
--

LOCK TABLES `mdl_external_services_functions` WRITE;
/*!40000 ALTER TABLE `mdl_external_services_functions` DISABLE KEYS */;
INSERT INTO `mdl_external_services_functions` VALUES (1,1,'core_badges_get_user_badges'),(2,1,'core_calendar_get_calendar_monthly_view'),(3,1,'core_calendar_get_calendar_day_view'),(4,1,'core_calendar_get_calendar_upcoming_view'),(5,1,'core_calendar_create_calendar_events'),(6,1,'core_calendar_delete_calendar_events'),(7,1,'core_calendar_get_calendar_events'),(8,1,'core_calendar_get_action_events_by_timesort'),(9,1,'core_calendar_get_action_events_by_course'),(10,1,'core_calendar_get_action_events_by_courses'),(11,1,'core_calendar_get_calendar_event_by_id'),(12,1,'core_comment_get_comments'),(13,1,'core_completion_get_activities_completion_status'),(14,1,'core_completion_get_course_completion_status'),(15,1,'core_completion_mark_course_self_completed'),(16,1,'core_completion_update_activity_completion_status_manually'),(17,1,'core_course_get_categories'),(18,1,'core_course_get_contents'),(19,1,'core_course_get_course_module'),(20,1,'core_course_get_course_module_by_instance'),(21,1,'core_course_get_courses'),(22,1,'core_course_search_courses'),(23,1,'core_course_view_course'),(24,1,'core_course_get_activities_overview'),(25,1,'core_course_get_user_navigation_options'),(26,1,'core_course_get_user_administration_options'),(27,1,'core_course_get_courses_by_field'),(28,1,'core_course_check_updates'),(29,1,'core_course_get_updates_since'),(30,1,'core_enrol_get_course_enrolment_methods'),(31,1,'core_enrol_get_enrolled_users'),(32,1,'core_enrol_get_users_courses'),(33,1,'core_files_get_files'),(34,1,'core_get_component_strings'),(35,1,'core_group_get_activity_allowed_groups'),(36,1,'core_group_get_activity_groupmode'),(37,1,'core_group_get_course_user_groups'),(38,1,'core_message_block_contacts'),(39,1,'core_message_create_contacts'),(40,1,'core_message_delete_contacts'),(41,1,'core_message_delete_conversation'),(42,1,'core_message_delete_message'),(43,1,'core_message_get_blocked_users'),(44,1,'core_message_data_for_messagearea_search_messages'),(45,1,'core_message_data_for_messagearea_conversations'),(46,1,'core_message_data_for_messagearea_contacts'),(47,1,'core_message_data_for_messagearea_messages'),(48,1,'core_message_get_contacts'),(49,1,'core_message_get_messages'),(50,1,'core_message_get_unread_conversations_count'),(51,1,'core_message_mark_all_notifications_as_read'),(52,1,'core_message_mark_all_messages_as_read'),(53,1,'core_message_mark_message_read'),(54,1,'core_message_mark_notification_read'),(55,1,'core_message_message_processor_config_form'),(56,1,'core_message_search_contacts'),(57,1,'core_message_send_instant_messages'),(58,1,'core_message_unblock_contacts'),(59,1,'core_message_get_user_notification_preferences'),(60,1,'core_message_get_user_message_preferences'),(61,1,'core_notes_create_notes'),(62,1,'core_notes_delete_notes'),(63,1,'core_notes_get_course_notes'),(64,1,'core_notes_view_notes'),(65,1,'core_question_update_flag'),(66,1,'core_rating_get_item_ratings'),(67,1,'core_rating_add_rating'),(68,1,'core_user_add_user_device'),(69,1,'core_user_add_user_private_files'),(70,1,'core_user_get_course_user_profiles'),(71,1,'core_user_get_users_by_field'),(72,1,'core_user_remove_user_device'),(73,1,'core_user_update_user_preferences'),(74,1,'core_user_view_user_list'),(75,1,'core_user_view_user_profile'),(76,1,'core_user_get_user_preferences'),(77,1,'core_user_update_picture'),(78,1,'core_user_agree_site_policy'),(79,1,'core_user_get_private_files_info'),(80,1,'core_competency_competency_viewed'),(81,1,'core_competency_list_course_competencies'),(82,1,'core_competency_get_scale_values'),(83,1,'core_competency_user_competency_viewed'),(84,1,'core_competency_user_competency_viewed_in_plan'),(85,1,'core_competency_user_competency_viewed_in_course'),(86,1,'core_competency_user_competency_plan_viewed'),(87,1,'core_competency_grade_competency_in_course'),(88,1,'core_competency_delete_evidence'),(89,1,'core_webservice_get_site_info'),(90,1,'core_block_get_course_blocks'),(91,1,'core_filters_get_available_in_context'),(92,1,'mod_assign_get_grades'),(93,1,'mod_assign_get_assignments'),(94,1,'mod_assign_get_submissions'),(95,1,'mod_assign_get_user_flags'),(96,1,'mod_assign_set_user_flags'),(97,1,'mod_assign_get_user_mappings'),(98,1,'mod_assign_revert_submissions_to_draft'),(99,1,'mod_assign_lock_submissions'),(100,1,'mod_assign_unlock_submissions'),(101,1,'mod_assign_save_submission'),(102,1,'mod_assign_submit_for_grading'),(103,1,'mod_assign_save_grade'),(104,1,'mod_assign_save_grades'),(105,1,'mod_assign_save_user_extensions'),(106,1,'mod_assign_reveal_identities'),(107,1,'mod_assign_view_grading_table'),(108,1,'mod_assign_view_submission_status'),(109,1,'mod_assign_get_submission_status'),(110,1,'mod_assign_list_participants'),(111,1,'mod_assign_submit_grading_form'),(112,1,'mod_assign_get_participant'),(113,1,'mod_assign_view_assign'),(114,1,'mod_book_view_book'),(115,1,'mod_book_get_books_by_courses'),(116,1,'mod_chat_login_user'),(117,1,'mod_chat_get_chat_users'),(118,1,'mod_chat_send_chat_message'),(119,1,'mod_chat_get_chat_latest_messages'),(120,1,'mod_chat_view_chat'),(121,1,'mod_chat_get_chats_by_courses'),(122,1,'mod_chat_get_sessions'),(123,1,'mod_chat_get_session_messages'),(124,1,'mod_choice_get_choice_results'),(125,1,'mod_choice_get_choice_options'),(126,1,'mod_choice_submit_choice_response'),(127,1,'mod_choice_view_choice'),(128,1,'mod_choice_get_choices_by_courses'),(129,1,'mod_choice_delete_choice_responses'),(130,1,'mod_data_get_databases_by_courses'),(131,1,'mod_data_view_database'),(132,1,'mod_data_get_data_access_information'),(133,1,'mod_data_get_entries'),(134,1,'mod_data_get_entry'),(135,1,'mod_data_get_fields'),(136,1,'mod_data_search_entries'),(137,1,'mod_data_approve_entry'),(138,1,'mod_data_delete_entry'),(139,1,'mod_data_add_entry'),(140,1,'mod_data_update_entry'),(141,1,'mod_feedback_get_feedbacks_by_courses'),(142,1,'mod_feedback_get_feedback_access_information'),(143,1,'mod_feedback_view_feedback'),(144,1,'mod_feedback_get_current_completed_tmp'),(145,1,'mod_feedback_get_items'),(146,1,'mod_feedback_launch_feedback'),(147,1,'mod_feedback_get_page_items'),(148,1,'mod_feedback_process_page'),(149,1,'mod_feedback_get_analysis'),(150,1,'mod_feedback_get_unfinished_responses'),(151,1,'mod_feedback_get_finished_responses'),(152,1,'mod_feedback_get_non_respondents'),(153,1,'mod_feedback_get_responses_analysis'),(154,1,'mod_feedback_get_last_completed'),(155,1,'mod_folder_view_folder'),(156,1,'mod_folder_get_folders_by_courses'),(157,1,'mod_forum_get_forums_by_courses'),(158,1,'mod_forum_get_forum_discussion_posts'),(159,1,'mod_forum_get_forum_discussions_paginated'),(160,1,'mod_forum_view_forum'),(161,1,'mod_forum_view_forum_discussion'),(162,1,'mod_forum_add_discussion_post'),(163,1,'mod_forum_add_discussion'),(164,1,'mod_forum_can_add_discussion'),(165,1,'mod_glossary_get_glossaries_by_courses'),(166,1,'mod_glossary_view_glossary'),(167,1,'mod_glossary_view_entry'),(168,1,'mod_glossary_get_entries_by_letter'),(169,1,'mod_glossary_get_entries_by_date'),(170,1,'mod_glossary_get_categories'),(171,1,'mod_glossary_get_entries_by_category'),(172,1,'mod_glossary_get_authors'),(173,1,'mod_glossary_get_entries_by_author'),(174,1,'mod_glossary_get_entries_by_author_id'),(175,1,'mod_glossary_get_entries_by_search'),(176,1,'mod_glossary_get_entries_by_term'),(177,1,'mod_glossary_get_entries_to_approve'),(178,1,'mod_glossary_get_entry_by_id'),(179,1,'mod_glossary_add_entry'),(180,1,'mod_imscp_view_imscp'),(181,1,'mod_imscp_get_imscps_by_courses'),(182,1,'mod_label_get_labels_by_courses'),(183,1,'mod_lesson_get_lessons_by_courses'),(184,1,'mod_lesson_get_lesson_access_information'),(185,1,'mod_lesson_view_lesson'),(186,1,'mod_lesson_get_questions_attempts'),(187,1,'mod_lesson_get_user_grade'),(188,1,'mod_lesson_get_user_attempt_grade'),(189,1,'mod_lesson_get_content_pages_viewed'),(190,1,'mod_lesson_get_user_timers'),(191,1,'mod_lesson_get_pages'),(192,1,'mod_lesson_launch_attempt'),(193,1,'mod_lesson_get_page_data'),(194,1,'mod_lesson_process_page'),(195,1,'mod_lesson_finish_attempt'),(196,1,'mod_lesson_get_attempts_overview'),(197,1,'mod_lesson_get_user_attempt'),(198,1,'mod_lesson_get_pages_possible_jumps'),(199,1,'mod_lesson_get_lesson'),(200,1,'mod_lti_get_tool_launch_data'),(201,1,'mod_lti_get_ltis_by_courses'),(202,1,'mod_lti_view_lti'),(203,1,'mod_page_view_page'),(204,1,'mod_page_get_pages_by_courses'),(205,1,'mod_quiz_get_quizzes_by_courses'),(206,1,'mod_quiz_view_quiz'),(207,1,'mod_quiz_get_user_attempts'),(208,1,'mod_quiz_get_user_best_grade'),(209,1,'mod_quiz_get_combined_review_options'),(210,1,'mod_quiz_start_attempt'),(211,1,'mod_quiz_get_attempt_data'),(212,1,'mod_quiz_get_attempt_summary'),(213,1,'mod_quiz_save_attempt'),(214,1,'mod_quiz_process_attempt'),(215,1,'mod_quiz_get_attempt_review'),(216,1,'mod_quiz_view_attempt'),(217,1,'mod_quiz_view_attempt_summary'),(218,1,'mod_quiz_view_attempt_review'),(219,1,'mod_quiz_get_quiz_feedback_for_grade'),(220,1,'mod_quiz_get_quiz_access_information'),(221,1,'mod_quiz_get_attempt_access_information'),(222,1,'mod_quiz_get_quiz_required_qtypes'),(223,1,'mod_resource_view_resource'),(224,1,'mod_resource_get_resources_by_courses'),(225,1,'mod_scorm_view_scorm'),(226,1,'mod_scorm_get_scorm_attempt_count'),(227,1,'mod_scorm_get_scorm_scoes'),(228,1,'mod_scorm_get_scorm_user_data'),(229,1,'mod_scorm_insert_scorm_tracks'),(230,1,'mod_scorm_get_scorm_sco_tracks'),(231,1,'mod_scorm_get_scorms_by_courses'),(232,1,'mod_scorm_launch_sco'),(233,1,'mod_survey_get_surveys_by_courses'),(234,1,'mod_survey_view_survey'),(235,1,'mod_survey_get_questions'),(236,1,'mod_survey_submit_answers'),(237,1,'mod_url_view_url'),(238,1,'mod_url_get_urls_by_courses'),(239,1,'mod_wiki_get_wikis_by_courses'),(240,1,'mod_wiki_view_wiki'),(241,1,'mod_wiki_view_page'),(242,1,'mod_wiki_get_subwikis'),(243,1,'mod_wiki_get_subwiki_pages'),(244,1,'mod_wiki_get_subwiki_files'),(245,1,'mod_wiki_get_page_contents'),(246,1,'mod_wiki_get_page_for_editing'),(247,1,'mod_wiki_new_page'),(248,1,'mod_wiki_edit_page'),(249,1,'mod_workshop_get_workshops_by_courses'),(250,1,'mod_workshop_get_workshop_access_information'),(251,1,'mod_workshop_get_user_plan'),(252,1,'mod_workshop_view_workshop'),(253,1,'mod_workshop_add_submission'),(254,1,'mod_workshop_update_submission'),(255,1,'mod_workshop_delete_submission'),(256,1,'mod_workshop_get_submissions'),(257,1,'mod_workshop_get_submission'),(258,1,'mod_workshop_get_submission_assessments'),(259,1,'mod_workshop_get_assessment'),(260,1,'mod_workshop_get_assessment_form_definition'),(261,1,'mod_workshop_get_reviewer_assessments'),(262,1,'mod_workshop_update_assessment'),(263,1,'mod_workshop_get_grades'),(264,1,'mod_workshop_evaluate_assessment'),(265,1,'mod_workshop_get_grades_report'),(266,1,'mod_workshop_view_submission'),(267,1,'mod_workshop_evaluate_submission'),(268,1,'enrol_guest_get_instance_info'),(269,1,'enrol_self_get_instance_info'),(270,1,'enrol_self_enrol_user'),(271,1,'message_airnotifier_is_system_configured'),(272,1,'message_airnotifier_are_notification_preferences_configured'),(273,1,'message_airnotifier_get_user_devices'),(274,1,'message_airnotifier_enable_device'),(275,1,'message_popup_get_popup_notifications'),(276,1,'message_popup_get_unread_popup_notification_count'),(277,1,'report_insights_set_notuseful_prediction'),(278,1,'report_insights_set_fixed_prediction'),(279,1,'gradereport_overview_get_course_grades'),(280,1,'gradereport_overview_view_grade_report'),(281,1,'gradereport_user_get_grades_table'),(282,1,'gradereport_user_view_grade_report'),(283,1,'gradereport_user_get_grade_items'),(284,1,'tool_lp_data_for_course_competencies_page'),(285,1,'tool_lp_data_for_plans_page'),(286,1,'tool_lp_data_for_plan_page'),(287,1,'tool_lp_data_for_user_evidence_list_page'),(288,1,'tool_lp_data_for_user_evidence_page'),(289,1,'tool_lp_data_for_user_competency_summary'),(290,1,'tool_lp_data_for_user_competency_summary_in_plan'),(291,1,'tool_lp_data_for_user_competency_summary_in_course'),(292,1,'tool_mobile_get_plugins_supporting_mobile'),(293,1,'tool_mobile_get_public_config'),(294,1,'tool_mobile_get_config'),(295,1,'tool_mobile_get_autologin_key'),(296,1,'tool_mobile_get_content'),(297,2,'core_user_get_users_by_field'),(298,2,'core_course_create_categories'),(299,2,'core_course_get_categories'),(300,2,'core_course_update_categories'),(301,2,'core_user_create_users'),(302,2,'core_user_update_users'),(303,2,'core_course_create_courses'),(304,2,'core_course_get_courses_by_field'),(305,2,'core_course_update_courses'),(306,2,'core_enrol_get_enrolled_users'),(307,2,'enrol_manual_enrol_users');
/*!40000 ALTER TABLE `mdl_external_services_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_external_services_users`
--

DROP TABLE IF EXISTS `mdl_external_services_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_external_services_users` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `externalserviceid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `iprestriction` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `validuntil` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_exteservuser_ext_ix` (`externalserviceid`),
  KEY `mdl_exteservuser_use_ix` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='users allowed to use services with restricted users flag';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_external_services_users`
--

LOCK TABLES `mdl_external_services_users` WRITE;
/*!40000 ALTER TABLE `mdl_external_services_users` DISABLE KEYS */;
INSERT INTO `mdl_external_services_users` VALUES (1,2,3,NULL,NULL,1544463535);
/*!40000 ALTER TABLE `mdl_external_services_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_external_tokens`
--

DROP TABLE IF EXISTS `mdl_external_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_external_tokens` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(128) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `privatetoken` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `tokentype` smallint(4) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `externalserviceid` bigint(10) NOT NULL,
  `sid` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `contextid` bigint(10) NOT NULL,
  `creatorid` bigint(10) NOT NULL DEFAULT 1,
  `iprestriction` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `validuntil` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `lastaccess` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_extetoke_use_ix` (`userid`),
  KEY `mdl_extetoke_ext_ix` (`externalserviceid`),
  KEY `mdl_extetoke_con_ix` (`contextid`),
  KEY `mdl_extetoke_cre_ix` (`creatorid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Security tokens for accessing of external services';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_external_tokens`
--

LOCK TABLES `mdl_external_tokens` WRITE;
/*!40000 ALTER TABLE `mdl_external_tokens` DISABLE KEYS */;
INSERT INTO `mdl_external_tokens` VALUES (1,'fd7c846903e4ea09ec49524b315daea7',NULL,0,3,2,NULL,1,2,NULL,0,1544544418,NULL);
/*!40000 ALTER TABLE `mdl_external_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback`
--

DROP TABLE IF EXISTS `mdl_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_feedback` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_bin NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `anonymous` tinyint(1) NOT NULL DEFAULT 1,
  `email_notification` tinyint(1) NOT NULL DEFAULT 1,
  `multiple_submit` tinyint(1) NOT NULL DEFAULT 1,
  `autonumbering` tinyint(1) NOT NULL DEFAULT 1,
  `site_after_submit` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `page_after_submit` longtext COLLATE utf8mb4_bin NOT NULL,
  `page_after_submitformat` tinyint(2) NOT NULL DEFAULT 0,
  `publish_stats` tinyint(1) NOT NULL DEFAULT 0,
  `timeopen` bigint(10) NOT NULL DEFAULT 0,
  `timeclose` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `completionsubmit` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_feed_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='all feedbacks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback`
--

LOCK TABLES `mdl_feedback` WRITE;
/*!40000 ALTER TABLE `mdl_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_completed`
--

DROP TABLE IF EXISTS `mdl_feedback_completed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_feedback_completed` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `feedback` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `random_response` bigint(10) NOT NULL DEFAULT 0,
  `anonymous_response` tinyint(1) NOT NULL DEFAULT 0,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_feedcomp_use_ix` (`userid`),
  KEY `mdl_feedcomp_fee_ix` (`feedback`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='filled out feedback';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_completed`
--

LOCK TABLES `mdl_feedback_completed` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_completed` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_completed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_completedtmp`
--

DROP TABLE IF EXISTS `mdl_feedback_completedtmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_feedback_completedtmp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `feedback` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `guestid` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `random_response` bigint(10) NOT NULL DEFAULT 0,
  `anonymous_response` tinyint(1) NOT NULL DEFAULT 0,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_feedcomp_use2_ix` (`userid`),
  KEY `mdl_feedcomp_fee2_ix` (`feedback`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='filled out feedback';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_completedtmp`
--

LOCK TABLES `mdl_feedback_completedtmp` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_completedtmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_completedtmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_item`
--

DROP TABLE IF EXISTS `mdl_feedback_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_feedback_item` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `feedback` bigint(10) NOT NULL DEFAULT 0,
  `template` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `presentation` longtext COLLATE utf8mb4_bin NOT NULL,
  `typ` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `hasvalue` tinyint(1) NOT NULL DEFAULT 0,
  `position` smallint(3) NOT NULL DEFAULT 0,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `dependitem` bigint(10) NOT NULL DEFAULT 0,
  `dependvalue` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `options` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_feeditem_fee_ix` (`feedback`),
  KEY `mdl_feeditem_tem_ix` (`template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='feedback_items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_item`
--

LOCK TABLES `mdl_feedback_item` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_sitecourse_map`
--

DROP TABLE IF EXISTS `mdl_feedback_sitecourse_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_feedback_sitecourse_map` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `feedbackid` bigint(10) NOT NULL DEFAULT 0,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_feedsitemap_cou_ix` (`courseid`),
  KEY `mdl_feedsitemap_fee_ix` (`feedbackid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='feedback sitecourse map';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_sitecourse_map`
--

LOCK TABLES `mdl_feedback_sitecourse_map` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_sitecourse_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_sitecourse_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_template`
--

DROP TABLE IF EXISTS `mdl_feedback_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_feedback_template` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `ispublic` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_feedtemp_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='templates of feedbackstructures';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_template`
--

LOCK TABLES `mdl_feedback_template` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_value`
--

DROP TABLE IF EXISTS `mdl_feedback_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_feedback_value` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course_id` bigint(10) NOT NULL DEFAULT 0,
  `item` bigint(10) NOT NULL DEFAULT 0,
  `completed` bigint(10) NOT NULL DEFAULT 0,
  `tmp_completed` bigint(10) NOT NULL DEFAULT 0,
  `value` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_feedvalu_comitecou_uix` (`completed`,`item`,`course_id`),
  KEY `mdl_feedvalu_cou_ix` (`course_id`),
  KEY `mdl_feedvalu_ite_ix` (`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='values of the completeds';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_value`
--

LOCK TABLES `mdl_feedback_value` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_valuetmp`
--

DROP TABLE IF EXISTS `mdl_feedback_valuetmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_feedback_valuetmp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course_id` bigint(10) NOT NULL DEFAULT 0,
  `item` bigint(10) NOT NULL DEFAULT 0,
  `completed` bigint(10) NOT NULL DEFAULT 0,
  `tmp_completed` bigint(10) NOT NULL DEFAULT 0,
  `value` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_feedvalu_comitecou2_uix` (`completed`,`item`,`course_id`),
  KEY `mdl_feedvalu_cou2_ix` (`course_id`),
  KEY `mdl_feedvalu_ite2_ix` (`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='values of the completedstmp';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_valuetmp`
--

LOCK TABLES `mdl_feedback_valuetmp` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_valuetmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_valuetmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_file_conversion`
--

DROP TABLE IF EXISTS `mdl_file_conversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_file_conversion` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `usermodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `sourcefileid` bigint(10) NOT NULL,
  `targetformat` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `status` bigint(10) DEFAULT 0,
  `statusmessage` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `converter` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `destfileid` bigint(10) DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_fileconv_sou_ix` (`sourcefileid`),
  KEY `mdl_fileconv_des_ix` (`destfileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Table to track file conversions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_file_conversion`
--

LOCK TABLES `mdl_file_conversion` WRITE;
/*!40000 ALTER TABLE `mdl_file_conversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_file_conversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_files`
--

DROP TABLE IF EXISTS `mdl_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_files` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contenthash` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `pathnamehash` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `component` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `filearea` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `filepath` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `filename` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `userid` bigint(10) DEFAULT NULL,
  `filesize` bigint(10) NOT NULL,
  `mimetype` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` bigint(10) NOT NULL DEFAULT 0,
  `source` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `license` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `referencefileid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_file_pat_uix` (`pathnamehash`),
  KEY `mdl_file_comfilconite_ix` (`component`,`filearea`,`contextid`,`itemid`),
  KEY `mdl_file_con_ix` (`contenthash`),
  KEY `mdl_file_con2_ix` (`contextid`),
  KEY `mdl_file_use_ix` (`userid`),
  KEY `mdl_file_ref_ix` (`referencefileid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='description of files, content is stored in sha1 file pool';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_files`
--

LOCK TABLES `mdl_files` WRITE;
/*!40000 ALTER TABLE `mdl_files` DISABLE KEYS */;
INSERT INTO `mdl_files` VALUES (1,'41cfeee5884a43a4650a851f4f85e7b28316fcc9','a48e186a2cc853a9e94e9305f4e9bc086391212d',1,'theme_more','backgroundimage',0,'/','background.jpg',2,4451,'image/jpeg',0,NULL,NULL,NULL,1543610177,1543610177,0,NULL),(2,'da39a3ee5e6b4b0d3255bfef95601890afd80709','d1da7ab1bb9c08a926037367bf8ce9a838034ead',1,'theme_more','backgroundimage',0,'/','.',2,0,NULL,0,NULL,NULL,NULL,1543610177,1543610177,0,NULL),(3,'5f8e911d0da441e36f47c5c46f4393269211ca56','508e674d49c30d4fde325fe6c7f6fd3d56b247e1',1,'assignfeedback_editpdf','stamps',0,'/','smile.png',2,1085,'image/png',0,NULL,NULL,NULL,1543610183,1543610183,0,NULL),(4,'da39a3ee5e6b4b0d3255bfef95601890afd80709','70b7cdade7b4e27d4e83f0cdaad10d6a3c0cccb5',1,'assignfeedback_editpdf','stamps',0,'/','.',2,0,NULL,0,NULL,NULL,NULL,1543610183,1543610183,0,NULL),(5,'75c101cb8cb34ea573cd25ac38f8157b1de901b8','68317eab56c67d32aeaee5acf509a0c4aa828b6b',1,'assignfeedback_editpdf','stamps',0,'/','sad.png',2,966,'image/png',0,NULL,NULL,NULL,1543610183,1543610183,0,NULL),(6,'0c5190a24c3943966541401c883eacaa20ca20cb','695a55ff780e61c9e59428aa425430b0d6bde53b',1,'assignfeedback_editpdf','stamps',0,'/','tick.png',2,1039,'image/png',0,NULL,NULL,NULL,1543610183,1543610183,0,NULL),(7,'8c96a486d5801e0f4ab8c411f561f1c687e1f865','373e63af262a9b8466ba8632551520be793c37ff',1,'assignfeedback_editpdf','stamps',0,'/','cross.png',2,861,'image/png',0,NULL,NULL,NULL,1543610183,1543610183,0,NULL);
/*!40000 ALTER TABLE `mdl_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_files_reference`
--

DROP TABLE IF EXISTS `mdl_files_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_files_reference` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `repositoryid` bigint(10) NOT NULL,
  `lastsync` bigint(10) DEFAULT NULL,
  `reference` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `referencehash` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_filerefe_refrep_uix` (`referencehash`,`repositoryid`),
  KEY `mdl_filerefe_rep_ix` (`repositoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Store files references';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_files_reference`
--

LOCK TABLES `mdl_files_reference` WRITE;
/*!40000 ALTER TABLE `mdl_files_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_files_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_filter_active`
--

DROP TABLE IF EXISTS `mdl_filter_active`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_filter_active` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `filter` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `active` smallint(4) NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_filtacti_confil_uix` (`contextid`,`filter`),
  KEY `mdl_filtacti_con_ix` (`contextid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores information about which filters are active in which c';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_filter_active`
--

LOCK TABLES `mdl_filter_active` WRITE;
/*!40000 ALTER TABLE `mdl_filter_active` DISABLE KEYS */;
INSERT INTO `mdl_filter_active` VALUES (1,'activitynames',1,1,2),(2,'mathjaxloader',1,1,1),(3,'mediaplugin',1,1,3);
/*!40000 ALTER TABLE `mdl_filter_active` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_filter_config`
--

DROP TABLE IF EXISTS `mdl_filter_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_filter_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `filter` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_filtconf_confilnam_uix` (`contextid`,`filter`,`name`),
  KEY `mdl_filtconf_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores per-context configuration settings for filters which ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_filter_config`
--

LOCK TABLES `mdl_filter_config` WRITE;
/*!40000 ALTER TABLE `mdl_filter_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_filter_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_folder`
--

DROP TABLE IF EXISTS `mdl_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_folder` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `revision` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `display` smallint(4) NOT NULL DEFAULT 0,
  `showexpanded` tinyint(1) NOT NULL DEFAULT 1,
  `showdownloadfolder` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `mdl_fold_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='each record is one folder resource';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_folder`
--

LOCK TABLES `mdl_folder` WRITE;
/*!40000 ALTER TABLE `mdl_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum`
--

DROP TABLE IF EXISTS `mdl_forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_forum` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `type` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'general',
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_bin NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `assessed` bigint(10) NOT NULL DEFAULT 0,
  `assesstimestart` bigint(10) NOT NULL DEFAULT 0,
  `assesstimefinish` bigint(10) NOT NULL DEFAULT 0,
  `scale` bigint(10) NOT NULL DEFAULT 0,
  `maxbytes` bigint(10) NOT NULL DEFAULT 0,
  `maxattachments` bigint(10) NOT NULL DEFAULT 1,
  `forcesubscribe` tinyint(1) NOT NULL DEFAULT 0,
  `trackingtype` tinyint(2) NOT NULL DEFAULT 1,
  `rsstype` tinyint(2) NOT NULL DEFAULT 0,
  `rssarticles` tinyint(2) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `warnafter` bigint(10) NOT NULL DEFAULT 0,
  `blockafter` bigint(10) NOT NULL DEFAULT 0,
  `blockperiod` bigint(10) NOT NULL DEFAULT 0,
  `completiondiscussions` int(9) NOT NULL DEFAULT 0,
  `completionreplies` int(9) NOT NULL DEFAULT 0,
  `completionposts` int(9) NOT NULL DEFAULT 0,
  `displaywordcount` tinyint(1) NOT NULL DEFAULT 0,
  `lockdiscussionafter` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_foru_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Forums contain and structure discussion';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum`
--

LOCK TABLES `mdl_forum` WRITE;
/*!40000 ALTER TABLE `mdl_forum` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_digests`
--

DROP TABLE IF EXISTS `mdl_forum_digests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_forum_digests` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `forum` bigint(10) NOT NULL,
  `maildigest` tinyint(1) NOT NULL DEFAULT -1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_forudige_forusemai_uix` (`forum`,`userid`,`maildigest`),
  KEY `mdl_forudige_use_ix` (`userid`),
  KEY `mdl_forudige_for_ix` (`forum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Keeps track of user mail delivery preferences for each forum';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_digests`
--

LOCK TABLES `mdl_forum_digests` WRITE;
/*!40000 ALTER TABLE `mdl_forum_digests` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_digests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_discussion_subs`
--

DROP TABLE IF EXISTS `mdl_forum_discussion_subs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_forum_discussion_subs` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `forum` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `discussion` bigint(10) NOT NULL,
  `preference` bigint(10) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_forudiscsubs_usedis_uix` (`userid`,`discussion`),
  KEY `mdl_forudiscsubs_for_ix` (`forum`),
  KEY `mdl_forudiscsubs_use_ix` (`userid`),
  KEY `mdl_forudiscsubs_dis_ix` (`discussion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Users may choose to subscribe and unsubscribe from specific ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_discussion_subs`
--

LOCK TABLES `mdl_forum_discussion_subs` WRITE;
/*!40000 ALTER TABLE `mdl_forum_discussion_subs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_discussion_subs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_discussions`
--

DROP TABLE IF EXISTS `mdl_forum_discussions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_forum_discussions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `forum` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `firstpost` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) NOT NULL DEFAULT -1,
  `assessed` tinyint(1) NOT NULL DEFAULT 1,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `usermodified` bigint(10) NOT NULL DEFAULT 0,
  `timestart` bigint(10) NOT NULL DEFAULT 0,
  `timeend` bigint(10) NOT NULL DEFAULT 0,
  `pinned` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_forudisc_use_ix` (`userid`),
  KEY `mdl_forudisc_cou_ix` (`course`),
  KEY `mdl_forudisc_for_ix` (`forum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Forums are composed of discussions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_discussions`
--

LOCK TABLES `mdl_forum_discussions` WRITE;
/*!40000 ALTER TABLE `mdl_forum_discussions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_discussions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_posts`
--

DROP TABLE IF EXISTS `mdl_forum_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_forum_posts` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `discussion` bigint(10) NOT NULL DEFAULT 0,
  `parent` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `created` bigint(10) NOT NULL DEFAULT 0,
  `modified` bigint(10) NOT NULL DEFAULT 0,
  `mailed` tinyint(2) NOT NULL DEFAULT 0,
  `subject` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `message` longtext COLLATE utf8mb4_bin NOT NULL,
  `messageformat` tinyint(2) NOT NULL DEFAULT 0,
  `messagetrust` tinyint(2) NOT NULL DEFAULT 0,
  `attachment` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `totalscore` smallint(4) NOT NULL DEFAULT 0,
  `mailnow` bigint(10) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_forupost_use_ix` (`userid`),
  KEY `mdl_forupost_cre_ix` (`created`),
  KEY `mdl_forupost_mai_ix` (`mailed`),
  KEY `mdl_forupost_dis_ix` (`discussion`),
  KEY `mdl_forupost_par_ix` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='All posts are stored in this table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_posts`
--

LOCK TABLES `mdl_forum_posts` WRITE;
/*!40000 ALTER TABLE `mdl_forum_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_queue`
--

DROP TABLE IF EXISTS `mdl_forum_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_forum_queue` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `discussionid` bigint(10) NOT NULL DEFAULT 0,
  `postid` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_foruqueu_use_ix` (`userid`),
  KEY `mdl_foruqueu_dis_ix` (`discussionid`),
  KEY `mdl_foruqueu_pos_ix` (`postid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='For keeping track of posts that will be mailed in digest for';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_queue`
--

LOCK TABLES `mdl_forum_queue` WRITE;
/*!40000 ALTER TABLE `mdl_forum_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_read`
--

DROP TABLE IF EXISTS `mdl_forum_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_forum_read` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `forumid` bigint(10) NOT NULL DEFAULT 0,
  `discussionid` bigint(10) NOT NULL DEFAULT 0,
  `postid` bigint(10) NOT NULL DEFAULT 0,
  `firstread` bigint(10) NOT NULL DEFAULT 0,
  `lastread` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_foruread_usefor_ix` (`userid`,`forumid`),
  KEY `mdl_foruread_usedis_ix` (`userid`,`discussionid`),
  KEY `mdl_foruread_posuse_ix` (`postid`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Tracks each users read posts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_read`
--

LOCK TABLES `mdl_forum_read` WRITE;
/*!40000 ALTER TABLE `mdl_forum_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_subscriptions`
--

DROP TABLE IF EXISTS `mdl_forum_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_forum_subscriptions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `forum` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_forusubs_usefor_uix` (`userid`,`forum`),
  KEY `mdl_forusubs_use_ix` (`userid`),
  KEY `mdl_forusubs_for_ix` (`forum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Keeps track of who is subscribed to what forum';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_subscriptions`
--

LOCK TABLES `mdl_forum_subscriptions` WRITE;
/*!40000 ALTER TABLE `mdl_forum_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_track_prefs`
--

DROP TABLE IF EXISTS `mdl_forum_track_prefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_forum_track_prefs` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `forumid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_forutracpref_usefor_ix` (`userid`,`forumid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Tracks each users untracked forums';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_track_prefs`
--

LOCK TABLES `mdl_forum_track_prefs` WRITE;
/*!40000 ALTER TABLE `mdl_forum_track_prefs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_track_prefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary`
--

DROP TABLE IF EXISTS `mdl_glossary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_glossary` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_bin NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `allowduplicatedentries` tinyint(2) NOT NULL DEFAULT 0,
  `displayformat` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT 'dictionary',
  `mainglossary` tinyint(2) NOT NULL DEFAULT 0,
  `showspecial` tinyint(2) NOT NULL DEFAULT 1,
  `showalphabet` tinyint(2) NOT NULL DEFAULT 1,
  `showall` tinyint(2) NOT NULL DEFAULT 1,
  `allowcomments` tinyint(2) NOT NULL DEFAULT 0,
  `allowprintview` tinyint(2) NOT NULL DEFAULT 1,
  `usedynalink` tinyint(2) NOT NULL DEFAULT 1,
  `defaultapproval` tinyint(2) NOT NULL DEFAULT 1,
  `approvaldisplayformat` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT 'default',
  `globalglossary` tinyint(2) NOT NULL DEFAULT 0,
  `entbypage` smallint(3) NOT NULL DEFAULT 10,
  `editalways` tinyint(2) NOT NULL DEFAULT 0,
  `rsstype` tinyint(2) NOT NULL DEFAULT 0,
  `rssarticles` tinyint(2) NOT NULL DEFAULT 0,
  `assessed` bigint(10) NOT NULL DEFAULT 0,
  `assesstimestart` bigint(10) NOT NULL DEFAULT 0,
  `assesstimefinish` bigint(10) NOT NULL DEFAULT 0,
  `scale` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `completionentries` int(9) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_glos_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='all glossaries';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_glossary`
--

LOCK TABLES `mdl_glossary` WRITE;
/*!40000 ALTER TABLE `mdl_glossary` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_alias`
--

DROP TABLE IF EXISTS `mdl_glossary_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_glossary_alias` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `entryid` bigint(10) NOT NULL DEFAULT 0,
  `alias` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_glosalia_ent_ix` (`entryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='entries alias';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_glossary_alias`
--

LOCK TABLES `mdl_glossary_alias` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_categories`
--

DROP TABLE IF EXISTS `mdl_glossary_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_glossary_categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `glossaryid` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `usedynalink` tinyint(2) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `mdl_gloscate_glo_ix` (`glossaryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='all categories for glossary entries';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_glossary_categories`
--

LOCK TABLES `mdl_glossary_categories` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_entries`
--

DROP TABLE IF EXISTS `mdl_glossary_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_glossary_entries` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `glossaryid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `concept` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `definition` longtext COLLATE utf8mb4_bin NOT NULL,
  `definitionformat` tinyint(2) NOT NULL DEFAULT 0,
  `definitiontrust` tinyint(2) NOT NULL DEFAULT 0,
  `attachment` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `teacherentry` tinyint(2) NOT NULL DEFAULT 0,
  `sourceglossaryid` bigint(10) NOT NULL DEFAULT 0,
  `usedynalink` tinyint(2) NOT NULL DEFAULT 1,
  `casesensitive` tinyint(2) NOT NULL DEFAULT 0,
  `fullmatch` tinyint(2) NOT NULL DEFAULT 1,
  `approved` tinyint(2) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `mdl_glosentr_use_ix` (`userid`),
  KEY `mdl_glosentr_con_ix` (`concept`),
  KEY `mdl_glosentr_glo_ix` (`glossaryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='all glossary entries';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_glossary_entries`
--

LOCK TABLES `mdl_glossary_entries` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_entries_categories`
--

DROP TABLE IF EXISTS `mdl_glossary_entries_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_glossary_entries_categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `categoryid` bigint(10) NOT NULL DEFAULT 0,
  `entryid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_glosentrcate_cat_ix` (`categoryid`),
  KEY `mdl_glosentrcate_ent_ix` (`entryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='categories of each glossary entry';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_glossary_entries_categories`
--

LOCK TABLES `mdl_glossary_entries_categories` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_entries_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary_entries_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_formats`
--

DROP TABLE IF EXISTS `mdl_glossary_formats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_glossary_formats` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `popupformatname` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `visible` tinyint(2) NOT NULL DEFAULT 1,
  `showgroup` tinyint(2) NOT NULL DEFAULT 1,
  `showtabs` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `defaultmode` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `defaulthook` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `sortkey` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `sortorder` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Setting of the display formats';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_glossary_formats`
--

LOCK TABLES `mdl_glossary_formats` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_formats` DISABLE KEYS */;
INSERT INTO `mdl_glossary_formats` VALUES (1,'continuous','continuous',1,1,'standard,category,date','','','',''),(2,'dictionary','dictionary',1,1,'standard','','','',''),(3,'encyclopedia','encyclopedia',1,1,'standard,category,date,author','','','',''),(4,'entrylist','entrylist',1,1,'standard,category,date,author','','','',''),(5,'faq','faq',1,1,'standard,category,date,author','','','',''),(6,'fullwithauthor','fullwithauthor',1,1,'standard,category,date,author','','','',''),(7,'fullwithoutauthor','fullwithoutauthor',1,1,'standard,category,date','','','','');
/*!40000 ALTER TABLE `mdl_glossary_formats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_categories`
--

DROP TABLE IF EXISTS `mdl_grade_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `parent` bigint(10) DEFAULT NULL,
  `depth` bigint(10) NOT NULL DEFAULT 0,
  `path` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `aggregation` bigint(10) NOT NULL DEFAULT 0,
  `keephigh` bigint(10) NOT NULL DEFAULT 0,
  `droplow` bigint(10) NOT NULL DEFAULT 0,
  `aggregateonlygraded` tinyint(1) NOT NULL DEFAULT 0,
  `aggregateoutcomes` tinyint(1) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_gradcate_cou_ix` (`courseid`),
  KEY `mdl_gradcate_par_ix` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='This table keeps information about categories, used for grou';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_categories`
--

LOCK TABLES `mdl_grade_categories` WRITE;
/*!40000 ALTER TABLE `mdl_grade_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_categories_history`
--

DROP TABLE IF EXISTS `mdl_grade_categories_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_categories_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` bigint(10) NOT NULL DEFAULT 0,
  `oldid` bigint(10) NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `loggeduser` bigint(10) DEFAULT NULL,
  `courseid` bigint(10) NOT NULL,
  `parent` bigint(10) DEFAULT NULL,
  `depth` bigint(10) NOT NULL DEFAULT 0,
  `path` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `aggregation` bigint(10) NOT NULL DEFAULT 0,
  `keephigh` bigint(10) NOT NULL DEFAULT 0,
  `droplow` bigint(10) NOT NULL DEFAULT 0,
  `aggregateonlygraded` tinyint(1) NOT NULL DEFAULT 0,
  `aggregateoutcomes` tinyint(1) NOT NULL DEFAULT 0,
  `aggregatesubcats` tinyint(1) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_gradcatehist_act_ix` (`action`),
  KEY `mdl_gradcatehist_tim_ix` (`timemodified`),
  KEY `mdl_gradcatehist_old_ix` (`oldid`),
  KEY `mdl_gradcatehist_cou_ix` (`courseid`),
  KEY `mdl_gradcatehist_par_ix` (`parent`),
  KEY `mdl_gradcatehist_log_ix` (`loggeduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='History of grade_categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_categories_history`
--

LOCK TABLES `mdl_grade_categories_history` WRITE;
/*!40000 ALTER TABLE `mdl_grade_categories_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_categories_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_grades`
--

DROP TABLE IF EXISTS `mdl_grade_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_grades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `itemid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `rawgrade` decimal(10,5) DEFAULT NULL,
  `rawgrademax` decimal(10,5) NOT NULL DEFAULT 100.00000,
  `rawgrademin` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `rawscaleid` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  `finalgrade` decimal(10,5) DEFAULT NULL,
  `hidden` bigint(10) NOT NULL DEFAULT 0,
  `locked` bigint(10) NOT NULL DEFAULT 0,
  `locktime` bigint(10) NOT NULL DEFAULT 0,
  `exported` bigint(10) NOT NULL DEFAULT 0,
  `overridden` bigint(10) NOT NULL DEFAULT 0,
  `excluded` bigint(10) NOT NULL DEFAULT 0,
  `feedback` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `feedbackformat` bigint(10) NOT NULL DEFAULT 0,
  `information` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `informationformat` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `aggregationstatus` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT 'unknown',
  `aggregationweight` decimal(10,5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradgrad_useite_uix` (`userid`,`itemid`),
  KEY `mdl_gradgrad_locloc_ix` (`locked`,`locktime`),
  KEY `mdl_gradgrad_ite_ix` (`itemid`),
  KEY `mdl_gradgrad_use_ix` (`userid`),
  KEY `mdl_gradgrad_raw_ix` (`rawscaleid`),
  KEY `mdl_gradgrad_use2_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='grade_grades  This table keeps individual grades for each us';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_grades`
--

LOCK TABLES `mdl_grade_grades` WRITE;
/*!40000 ALTER TABLE `mdl_grade_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_grades_history`
--

DROP TABLE IF EXISTS `mdl_grade_grades_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_grades_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` bigint(10) NOT NULL DEFAULT 0,
  `oldid` bigint(10) NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `loggeduser` bigint(10) DEFAULT NULL,
  `itemid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `rawgrade` decimal(10,5) DEFAULT NULL,
  `rawgrademax` decimal(10,5) NOT NULL DEFAULT 100.00000,
  `rawgrademin` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `rawscaleid` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  `finalgrade` decimal(10,5) DEFAULT NULL,
  `hidden` bigint(10) NOT NULL DEFAULT 0,
  `locked` bigint(10) NOT NULL DEFAULT 0,
  `locktime` bigint(10) NOT NULL DEFAULT 0,
  `exported` bigint(10) NOT NULL DEFAULT 0,
  `overridden` bigint(10) NOT NULL DEFAULT 0,
  `excluded` bigint(10) NOT NULL DEFAULT 0,
  `feedback` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `feedbackformat` bigint(10) NOT NULL DEFAULT 0,
  `information` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `informationformat` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_gradgradhist_act_ix` (`action`),
  KEY `mdl_gradgradhist_tim_ix` (`timemodified`),
  KEY `mdl_gradgradhist_useitetim_ix` (`userid`,`itemid`,`timemodified`),
  KEY `mdl_gradgradhist_old_ix` (`oldid`),
  KEY `mdl_gradgradhist_ite_ix` (`itemid`),
  KEY `mdl_gradgradhist_use_ix` (`userid`),
  KEY `mdl_gradgradhist_raw_ix` (`rawscaleid`),
  KEY `mdl_gradgradhist_use2_ix` (`usermodified`),
  KEY `mdl_gradgradhist_log_ix` (`loggeduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='History table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_grades_history`
--

LOCK TABLES `mdl_grade_grades_history` WRITE;
/*!40000 ALTER TABLE `mdl_grade_grades_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_grades_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_import_newitem`
--

DROP TABLE IF EXISTS `mdl_grade_import_newitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_import_newitem` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `importcode` bigint(10) NOT NULL,
  `importer` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradimponewi_imp_ix` (`importer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='temporary table for storing new grade_item names from grade ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_import_newitem`
--

LOCK TABLES `mdl_grade_import_newitem` WRITE;
/*!40000 ALTER TABLE `mdl_grade_import_newitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_import_newitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_import_values`
--

DROP TABLE IF EXISTS `mdl_grade_import_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_import_values` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `itemid` bigint(10) DEFAULT NULL,
  `newgradeitem` bigint(10) DEFAULT NULL,
  `userid` bigint(10) NOT NULL,
  `finalgrade` decimal(10,5) DEFAULT NULL,
  `feedback` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `importcode` bigint(10) NOT NULL,
  `importer` bigint(10) DEFAULT NULL,
  `importonlyfeedback` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_gradimpovalu_ite_ix` (`itemid`),
  KEY `mdl_gradimpovalu_new_ix` (`newgradeitem`),
  KEY `mdl_gradimpovalu_imp_ix` (`importer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Temporary table for importing grades';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_import_values`
--

LOCK TABLES `mdl_grade_import_values` WRITE;
/*!40000 ALTER TABLE `mdl_grade_import_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_import_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_items`
--

DROP TABLE IF EXISTS `mdl_grade_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_items` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) DEFAULT NULL,
  `categoryid` bigint(10) DEFAULT NULL,
  `itemname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `itemtype` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `itemmodule` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `iteminstance` bigint(10) DEFAULT NULL,
  `itemnumber` bigint(10) DEFAULT NULL,
  `iteminfo` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `idnumber` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `calculation` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `gradetype` smallint(4) NOT NULL DEFAULT 1,
  `grademax` decimal(10,5) NOT NULL DEFAULT 100.00000,
  `grademin` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `scaleid` bigint(10) DEFAULT NULL,
  `outcomeid` bigint(10) DEFAULT NULL,
  `gradepass` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `multfactor` decimal(10,5) NOT NULL DEFAULT 1.00000,
  `plusfactor` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `aggregationcoef` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `aggregationcoef2` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `display` bigint(10) NOT NULL DEFAULT 0,
  `decimals` tinyint(1) DEFAULT NULL,
  `hidden` bigint(10) NOT NULL DEFAULT 0,
  `locked` bigint(10) NOT NULL DEFAULT 0,
  `locktime` bigint(10) NOT NULL DEFAULT 0,
  `needsupdate` bigint(10) NOT NULL DEFAULT 0,
  `weightoverride` tinyint(1) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_graditem_locloc_ix` (`locked`,`locktime`),
  KEY `mdl_graditem_itenee_ix` (`itemtype`,`needsupdate`),
  KEY `mdl_graditem_gra_ix` (`gradetype`),
  KEY `mdl_graditem_idncou_ix` (`idnumber`,`courseid`),
  KEY `mdl_graditem_cou_ix` (`courseid`),
  KEY `mdl_graditem_cat_ix` (`categoryid`),
  KEY `mdl_graditem_sca_ix` (`scaleid`),
  KEY `mdl_graditem_out_ix` (`outcomeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='This table keeps information about gradeable items (ie colum';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_items`
--

LOCK TABLES `mdl_grade_items` WRITE;
/*!40000 ALTER TABLE `mdl_grade_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_items_history`
--

DROP TABLE IF EXISTS `mdl_grade_items_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_items_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` bigint(10) NOT NULL DEFAULT 0,
  `oldid` bigint(10) NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `loggeduser` bigint(10) DEFAULT NULL,
  `courseid` bigint(10) DEFAULT NULL,
  `categoryid` bigint(10) DEFAULT NULL,
  `itemname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `itemtype` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `itemmodule` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `iteminstance` bigint(10) DEFAULT NULL,
  `itemnumber` bigint(10) DEFAULT NULL,
  `iteminfo` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `idnumber` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `calculation` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `gradetype` smallint(4) NOT NULL DEFAULT 1,
  `grademax` decimal(10,5) NOT NULL DEFAULT 100.00000,
  `grademin` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `scaleid` bigint(10) DEFAULT NULL,
  `outcomeid` bigint(10) DEFAULT NULL,
  `gradepass` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `multfactor` decimal(10,5) NOT NULL DEFAULT 1.00000,
  `plusfactor` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `aggregationcoef` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `aggregationcoef2` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `hidden` bigint(10) NOT NULL DEFAULT 0,
  `locked` bigint(10) NOT NULL DEFAULT 0,
  `locktime` bigint(10) NOT NULL DEFAULT 0,
  `needsupdate` bigint(10) NOT NULL DEFAULT 0,
  `display` bigint(10) NOT NULL DEFAULT 0,
  `decimals` tinyint(1) DEFAULT NULL,
  `weightoverride` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_graditemhist_act_ix` (`action`),
  KEY `mdl_graditemhist_tim_ix` (`timemodified`),
  KEY `mdl_graditemhist_old_ix` (`oldid`),
  KEY `mdl_graditemhist_cou_ix` (`courseid`),
  KEY `mdl_graditemhist_cat_ix` (`categoryid`),
  KEY `mdl_graditemhist_sca_ix` (`scaleid`),
  KEY `mdl_graditemhist_out_ix` (`outcomeid`),
  KEY `mdl_graditemhist_log_ix` (`loggeduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='History of grade_items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_items_history`
--

LOCK TABLES `mdl_grade_items_history` WRITE;
/*!40000 ALTER TABLE `mdl_grade_items_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_items_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_letters`
--

DROP TABLE IF EXISTS `mdl_grade_letters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_letters` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `lowerboundary` decimal(10,5) NOT NULL,
  `letter` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradlett_conlowlet_uix` (`contextid`,`lowerboundary`,`letter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Repository for grade letters, for courses and other moodle e';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_letters`
--

LOCK TABLES `mdl_grade_letters` WRITE;
/*!40000 ALTER TABLE `mdl_grade_letters` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_letters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_outcomes`
--

DROP TABLE IF EXISTS `mdl_grade_outcomes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_outcomes` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) DEFAULT NULL,
  `shortname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `fullname` longtext COLLATE utf8mb4_bin NOT NULL,
  `scaleid` bigint(10) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradoutc_cousho_uix` (`courseid`,`shortname`),
  KEY `mdl_gradoutc_cou_ix` (`courseid`),
  KEY `mdl_gradoutc_sca_ix` (`scaleid`),
  KEY `mdl_gradoutc_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='This table describes the outcomes used in the system. An out';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_outcomes`
--

LOCK TABLES `mdl_grade_outcomes` WRITE;
/*!40000 ALTER TABLE `mdl_grade_outcomes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_outcomes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_outcomes_courses`
--

DROP TABLE IF EXISTS `mdl_grade_outcomes_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_outcomes_courses` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `outcomeid` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradoutccour_couout_uix` (`courseid`,`outcomeid`),
  KEY `mdl_gradoutccour_cou_ix` (`courseid`),
  KEY `mdl_gradoutccour_out_ix` (`outcomeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='stores what outcomes are used in what courses.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_outcomes_courses`
--

LOCK TABLES `mdl_grade_outcomes_courses` WRITE;
/*!40000 ALTER TABLE `mdl_grade_outcomes_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_outcomes_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_outcomes_history`
--

DROP TABLE IF EXISTS `mdl_grade_outcomes_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_outcomes_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` bigint(10) NOT NULL DEFAULT 0,
  `oldid` bigint(10) NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `loggeduser` bigint(10) DEFAULT NULL,
  `courseid` bigint(10) DEFAULT NULL,
  `shortname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `fullname` longtext COLLATE utf8mb4_bin NOT NULL,
  `scaleid` bigint(10) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_gradoutchist_act_ix` (`action`),
  KEY `mdl_gradoutchist_tim_ix` (`timemodified`),
  KEY `mdl_gradoutchist_old_ix` (`oldid`),
  KEY `mdl_gradoutchist_cou_ix` (`courseid`),
  KEY `mdl_gradoutchist_sca_ix` (`scaleid`),
  KEY `mdl_gradoutchist_log_ix` (`loggeduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='History table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_outcomes_history`
--

LOCK TABLES `mdl_grade_outcomes_history` WRITE;
/*!40000 ALTER TABLE `mdl_grade_outcomes_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_outcomes_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_settings`
--

DROP TABLE IF EXISTS `mdl_grade_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grade_settings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradsett_counam_uix` (`courseid`,`name`),
  KEY `mdl_gradsett_cou_ix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='gradebook settings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_settings`
--

LOCK TABLES `mdl_grade_settings` WRITE;
/*!40000 ALTER TABLE `mdl_grade_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grading_areas`
--

DROP TABLE IF EXISTS `mdl_grading_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grading_areas` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `component` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `areaname` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `activemethod` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradarea_concomare_uix` (`contextid`,`component`,`areaname`),
  KEY `mdl_gradarea_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Identifies gradable areas where advanced grading can happen.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grading_areas`
--

LOCK TABLES `mdl_grading_areas` WRITE;
/*!40000 ALTER TABLE `mdl_grading_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grading_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grading_definitions`
--

DROP TABLE IF EXISTS `mdl_grading_definitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grading_definitions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `areaid` bigint(10) NOT NULL,
  `method` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `descriptionformat` tinyint(2) DEFAULT NULL,
  `status` bigint(10) NOT NULL DEFAULT 0,
  `copiedfromid` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `usercreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `timecopied` bigint(10) DEFAULT 0,
  `options` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_graddefi_aremet_uix` (`areaid`,`method`),
  KEY `mdl_graddefi_are_ix` (`areaid`),
  KEY `mdl_graddefi_use_ix` (`usermodified`),
  KEY `mdl_graddefi_use2_ix` (`usercreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Contains the basic information about an advanced grading for';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grading_definitions`
--

LOCK TABLES `mdl_grading_definitions` WRITE;
/*!40000 ALTER TABLE `mdl_grading_definitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grading_definitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grading_instances`
--

DROP TABLE IF EXISTS `mdl_grading_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_grading_instances` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `definitionid` bigint(10) NOT NULL,
  `raterid` bigint(10) NOT NULL,
  `itemid` bigint(10) DEFAULT NULL,
  `rawgrade` decimal(10,5) DEFAULT NULL,
  `status` bigint(10) NOT NULL DEFAULT 0,
  `feedback` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `feedbackformat` tinyint(2) DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradinst_def_ix` (`definitionid`),
  KEY `mdl_gradinst_rat_ix` (`raterid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Grading form instance is an assessment record for one gradab';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grading_instances`
--

LOCK TABLES `mdl_grading_instances` WRITE;
/*!40000 ALTER TABLE `mdl_grading_instances` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grading_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_gradingform_guide_comments`
--

DROP TABLE IF EXISTS `mdl_gradingform_guide_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_gradingform_guide_comments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `definitionid` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL,
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `descriptionformat` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradguidcomm_def_ix` (`definitionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='frequently used comments used in marking guide';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_gradingform_guide_comments`
--

LOCK TABLES `mdl_gradingform_guide_comments` WRITE;
/*!40000 ALTER TABLE `mdl_gradingform_guide_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_gradingform_guide_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_gradingform_guide_criteria`
--

DROP TABLE IF EXISTS `mdl_gradingform_guide_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_gradingform_guide_criteria` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `definitionid` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL,
  `shortname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `descriptionformat` tinyint(2) DEFAULT NULL,
  `descriptionmarkers` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `descriptionmarkersformat` tinyint(2) DEFAULT NULL,
  `maxscore` decimal(10,5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradguidcrit_def_ix` (`definitionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores the rows of the criteria grid.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_gradingform_guide_criteria`
--

LOCK TABLES `mdl_gradingform_guide_criteria` WRITE;
/*!40000 ALTER TABLE `mdl_gradingform_guide_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_gradingform_guide_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_gradingform_guide_fillings`
--

DROP TABLE IF EXISTS `mdl_gradingform_guide_fillings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_gradingform_guide_fillings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `instanceid` bigint(10) NOT NULL,
  `criterionid` bigint(10) NOT NULL,
  `remark` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `remarkformat` tinyint(2) DEFAULT NULL,
  `score` decimal(10,5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradguidfill_inscri_uix` (`instanceid`,`criterionid`),
  KEY `mdl_gradguidfill_ins_ix` (`instanceid`),
  KEY `mdl_gradguidfill_cri_ix` (`criterionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores the data of how the guide is filled by a particular r';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_gradingform_guide_fillings`
--

LOCK TABLES `mdl_gradingform_guide_fillings` WRITE;
/*!40000 ALTER TABLE `mdl_gradingform_guide_fillings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_gradingform_guide_fillings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_gradingform_rubric_criteria`
--

DROP TABLE IF EXISTS `mdl_gradingform_rubric_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_gradingform_rubric_criteria` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `definitionid` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL,
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `descriptionformat` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradrubrcrit_def_ix` (`definitionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores the rows of the rubric grid.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_gradingform_rubric_criteria`
--

LOCK TABLES `mdl_gradingform_rubric_criteria` WRITE;
/*!40000 ALTER TABLE `mdl_gradingform_rubric_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_gradingform_rubric_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_gradingform_rubric_fillings`
--

DROP TABLE IF EXISTS `mdl_gradingform_rubric_fillings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_gradingform_rubric_fillings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `instanceid` bigint(10) NOT NULL,
  `criterionid` bigint(10) NOT NULL,
  `levelid` bigint(10) DEFAULT NULL,
  `remark` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `remarkformat` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradrubrfill_inscri_uix` (`instanceid`,`criterionid`),
  KEY `mdl_gradrubrfill_lev_ix` (`levelid`),
  KEY `mdl_gradrubrfill_ins_ix` (`instanceid`),
  KEY `mdl_gradrubrfill_cri_ix` (`criterionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores the data of how the rubric is filled by a particular ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_gradingform_rubric_fillings`
--

LOCK TABLES `mdl_gradingform_rubric_fillings` WRITE;
/*!40000 ALTER TABLE `mdl_gradingform_rubric_fillings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_gradingform_rubric_fillings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_gradingform_rubric_levels`
--

DROP TABLE IF EXISTS `mdl_gradingform_rubric_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_gradingform_rubric_levels` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `criterionid` bigint(10) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `definition` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `definitionformat` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradrubrleve_cri_ix` (`criterionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores the columns of the rubric grid.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_gradingform_rubric_levels`
--

LOCK TABLES `mdl_gradingform_rubric_levels` WRITE;
/*!40000 ALTER TABLE `mdl_gradingform_rubric_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_gradingform_rubric_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_groupings`
--

DROP TABLE IF EXISTS `mdl_groupings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_groupings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `idnumber` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 0,
  `configdata` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_grou_idn2_ix` (`idnumber`),
  KEY `mdl_grou_cou2_ix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='A grouping is a collection of groups. WAS: groups_groupings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_groupings`
--

LOCK TABLES `mdl_groupings` WRITE;
/*!40000 ALTER TABLE `mdl_groupings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_groupings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_groupings_groups`
--

DROP TABLE IF EXISTS `mdl_groupings_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_groupings_groups` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `groupingid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `timeadded` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_grougrou_gro_ix` (`groupingid`),
  KEY `mdl_grougrou_gro2_ix` (`groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Link a grouping to a group (note, groups can be in multiple ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_groupings_groups`
--

LOCK TABLES `mdl_groupings_groups` WRITE;
/*!40000 ALTER TABLE `mdl_groupings_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_groupings_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_groups`
--

DROP TABLE IF EXISTS `mdl_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_groups` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `idnumber` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `name` varchar(254) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 0,
  `enrolmentkey` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `picture` bigint(10) NOT NULL DEFAULT 0,
  `hidepicture` tinyint(1) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_grou_idn_ix` (`idnumber`),
  KEY `mdl_grou_cou_ix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Each record represents a group.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_groups`
--

LOCK TABLES `mdl_groups` WRITE;
/*!40000 ALTER TABLE `mdl_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_groups_members`
--

DROP TABLE IF EXISTS `mdl_groups_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_groups_members` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `timeadded` bigint(10) NOT NULL DEFAULT 0,
  `component` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_groumemb_gro_ix` (`groupid`),
  KEY `mdl_groumemb_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Link a user to a group.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_groups_members`
--

LOCK TABLES `mdl_groups_members` WRITE;
/*!40000 ALTER TABLE `mdl_groups_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_groups_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_imscp`
--

DROP TABLE IF EXISTS `mdl_imscp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_imscp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `revision` bigint(10) NOT NULL DEFAULT 0,
  `keepold` bigint(10) NOT NULL DEFAULT -1,
  `structure` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_imsc_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='each record is one imscp resource';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_imscp`
--

LOCK TABLES `mdl_imscp` WRITE;
/*!40000 ALTER TABLE `mdl_imscp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_imscp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_label`
--

DROP TABLE IF EXISTS `mdl_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_label` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_bin NOT NULL,
  `introformat` smallint(4) DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_labe_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Defines labels';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_label`
--

LOCK TABLES `mdl_label` WRITE;
/*!40000 ALTER TABLE `mdl_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson`
--

DROP TABLE IF EXISTS `mdl_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lesson` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `practice` smallint(3) NOT NULL DEFAULT 0,
  `modattempts` smallint(3) NOT NULL DEFAULT 0,
  `usepassword` smallint(3) NOT NULL DEFAULT 0,
  `password` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `dependency` bigint(10) NOT NULL DEFAULT 0,
  `conditions` longtext COLLATE utf8mb4_bin NOT NULL,
  `grade` bigint(10) NOT NULL DEFAULT 0,
  `custom` smallint(3) NOT NULL DEFAULT 0,
  `ongoing` smallint(3) NOT NULL DEFAULT 0,
  `usemaxgrade` smallint(3) NOT NULL DEFAULT 0,
  `maxanswers` smallint(3) NOT NULL DEFAULT 4,
  `maxattempts` smallint(3) NOT NULL DEFAULT 5,
  `review` smallint(3) NOT NULL DEFAULT 0,
  `nextpagedefault` smallint(3) NOT NULL DEFAULT 0,
  `feedback` smallint(3) NOT NULL DEFAULT 1,
  `minquestions` smallint(3) NOT NULL DEFAULT 0,
  `maxpages` smallint(3) NOT NULL DEFAULT 0,
  `timelimit` bigint(10) NOT NULL DEFAULT 0,
  `retake` smallint(3) NOT NULL DEFAULT 1,
  `activitylink` bigint(10) NOT NULL DEFAULT 0,
  `mediafile` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `mediaheight` bigint(10) NOT NULL DEFAULT 100,
  `mediawidth` bigint(10) NOT NULL DEFAULT 650,
  `mediaclose` smallint(3) NOT NULL DEFAULT 0,
  `slideshow` smallint(3) NOT NULL DEFAULT 0,
  `width` bigint(10) NOT NULL DEFAULT 640,
  `height` bigint(10) NOT NULL DEFAULT 480,
  `bgcolor` varchar(7) COLLATE utf8mb4_bin NOT NULL DEFAULT '#FFFFFF',
  `displayleft` smallint(3) NOT NULL DEFAULT 0,
  `displayleftif` smallint(3) NOT NULL DEFAULT 0,
  `progressbar` smallint(3) NOT NULL DEFAULT 0,
  `available` bigint(10) NOT NULL DEFAULT 0,
  `deadline` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `completionendreached` tinyint(1) DEFAULT 0,
  `completiontimespent` bigint(11) DEFAULT 0,
  `allowofflineattempts` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_less_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Defines lesson';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lesson`
--

LOCK TABLES `mdl_lesson` WRITE;
/*!40000 ALTER TABLE `mdl_lesson` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_answers`
--

DROP TABLE IF EXISTS `mdl_lesson_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lesson_answers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT 0,
  `pageid` bigint(10) NOT NULL DEFAULT 0,
  `jumpto` bigint(11) NOT NULL DEFAULT 0,
  `grade` smallint(4) NOT NULL DEFAULT 0,
  `score` bigint(10) NOT NULL DEFAULT 0,
  `flags` smallint(3) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `answer` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `answerformat` tinyint(2) NOT NULL DEFAULT 0,
  `response` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `responseformat` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_lessansw_les_ix` (`lessonid`),
  KEY `mdl_lessansw_pag_ix` (`pageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Defines lesson_answers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lesson_answers`
--

LOCK TABLES `mdl_lesson_answers` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_attempts`
--

DROP TABLE IF EXISTS `mdl_lesson_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lesson_attempts` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT 0,
  `pageid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `answerid` bigint(10) NOT NULL DEFAULT 0,
  `retry` smallint(3) NOT NULL DEFAULT 0,
  `correct` bigint(10) NOT NULL DEFAULT 0,
  `useranswer` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `timeseen` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_lessatte_use_ix` (`userid`),
  KEY `mdl_lessatte_les_ix` (`lessonid`),
  KEY `mdl_lessatte_pag_ix` (`pageid`),
  KEY `mdl_lessatte_ans_ix` (`answerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Defines lesson_attempts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lesson_attempts`
--

LOCK TABLES `mdl_lesson_attempts` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_branch`
--

DROP TABLE IF EXISTS `mdl_lesson_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lesson_branch` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `pageid` bigint(10) NOT NULL DEFAULT 0,
  `retry` bigint(10) NOT NULL DEFAULT 0,
  `flag` smallint(3) NOT NULL DEFAULT 0,
  `timeseen` bigint(10) NOT NULL DEFAULT 0,
  `nextpageid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_lessbran_use_ix` (`userid`),
  KEY `mdl_lessbran_les_ix` (`lessonid`),
  KEY `mdl_lessbran_pag_ix` (`pageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='branches for each lesson/user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lesson_branch`
--

LOCK TABLES `mdl_lesson_branch` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_branch` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_grades`
--

DROP TABLE IF EXISTS `mdl_lesson_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lesson_grades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `grade` double NOT NULL DEFAULT 0,
  `late` smallint(3) NOT NULL DEFAULT 0,
  `completed` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_lessgrad_use_ix` (`userid`),
  KEY `mdl_lessgrad_les_ix` (`lessonid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Defines lesson_grades';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lesson_grades`
--

LOCK TABLES `mdl_lesson_grades` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_overrides`
--

DROP TABLE IF EXISTS `mdl_lesson_overrides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lesson_overrides` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) DEFAULT NULL,
  `userid` bigint(10) DEFAULT NULL,
  `available` bigint(10) DEFAULT NULL,
  `deadline` bigint(10) DEFAULT NULL,
  `timelimit` bigint(10) DEFAULT NULL,
  `review` smallint(3) DEFAULT NULL,
  `maxattempts` smallint(3) DEFAULT NULL,
  `retake` smallint(3) DEFAULT NULL,
  `password` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_lessover_les_ix` (`lessonid`),
  KEY `mdl_lessover_gro_ix` (`groupid`),
  KEY `mdl_lessover_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='The overrides to lesson settings.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lesson_overrides`
--

LOCK TABLES `mdl_lesson_overrides` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_overrides` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_overrides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_pages`
--

DROP TABLE IF EXISTS `mdl_lesson_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lesson_pages` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT 0,
  `prevpageid` bigint(10) NOT NULL DEFAULT 0,
  `nextpageid` bigint(10) NOT NULL DEFAULT 0,
  `qtype` smallint(3) NOT NULL DEFAULT 0,
  `qoption` smallint(3) NOT NULL DEFAULT 0,
  `layout` smallint(3) NOT NULL DEFAULT 1,
  `display` smallint(3) NOT NULL DEFAULT 1,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `contents` longtext COLLATE utf8mb4_bin NOT NULL,
  `contentsformat` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_lesspage_les_ix` (`lessonid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Defines lesson_pages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lesson_pages`
--

LOCK TABLES `mdl_lesson_pages` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lesson_timer`
--

DROP TABLE IF EXISTS `mdl_lesson_timer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lesson_timer` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lessonid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `starttime` bigint(10) NOT NULL DEFAULT 0,
  `lessontime` bigint(10) NOT NULL DEFAULT 0,
  `completed` tinyint(1) DEFAULT 0,
  `timemodifiedoffline` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_lesstime_use_ix` (`userid`),
  KEY `mdl_lesstime_les_ix` (`lessonid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='lesson timer for each lesson';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lesson_timer`
--

LOCK TABLES `mdl_lesson_timer` WRITE;
/*!40000 ALTER TABLE `mdl_lesson_timer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lesson_timer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_license`
--

DROP TABLE IF EXISTS `mdl_license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_license` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `fullname` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `version` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='store licenses used by moodle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_license`
--

LOCK TABLES `mdl_license` WRITE;
/*!40000 ALTER TABLE `mdl_license` DISABLE KEYS */;
INSERT INTO `mdl_license` VALUES (1,'unknown','Unknown license','',1,2010033100),(2,'allrightsreserved','All rights reserved','http://en.wikipedia.org/wiki/All_rights_reserved',1,2010033100),(3,'public','Public Domain','http://creativecommons.org/licenses/publicdomain/',1,2010033100),(4,'cc','Creative Commons','http://creativecommons.org/licenses/by/3.0/',1,2010033100),(5,'cc-nd','Creative Commons - NoDerivs','http://creativecommons.org/licenses/by-nd/3.0/',1,2010033100),(6,'cc-nc-nd','Creative Commons - No Commercial NoDerivs','http://creativecommons.org/licenses/by-nc-nd/3.0/',1,2010033100),(7,'cc-nc','Creative Commons - No Commercial','http://creativecommons.org/licenses/by-nc/3.0/',1,2013051500),(8,'cc-nc-sa','Creative Commons - No Commercial ShareAlike','http://creativecommons.org/licenses/by-nc-sa/3.0/',1,2010033100),(9,'cc-sa','Creative Commons - ShareAlike','http://creativecommons.org/licenses/by-sa/3.0/',1,2010033100);
/*!40000 ALTER TABLE `mdl_license` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lock_db`
--

DROP TABLE IF EXISTS `mdl_lock_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lock_db` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `resourcekey` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `expires` bigint(10) DEFAULT NULL,
  `owner` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_lockdb_res_uix` (`resourcekey`),
  KEY `mdl_lockdb_exp_ix` (`expires`),
  KEY `mdl_lockdb_own_ix` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores active and inactive lock types for db locking method.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lock_db`
--

LOCK TABLES `mdl_lock_db` WRITE;
/*!40000 ALTER TABLE `mdl_lock_db` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lock_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_log`
--

DROP TABLE IF EXISTS `mdl_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `time` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `ip` varchar(45) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `course` bigint(10) NOT NULL DEFAULT 0,
  `module` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `cmid` bigint(10) NOT NULL DEFAULT 0,
  `action` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `url` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `info` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_log_coumodact_ix` (`course`,`module`,`action`),
  KEY `mdl_log_tim_ix` (`time`),
  KEY `mdl_log_act_ix` (`action`),
  KEY `mdl_log_usecou_ix` (`userid`,`course`),
  KEY `mdl_log_cmi_ix` (`cmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Every action is logged as far as possible';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_log`
--

LOCK TABLES `mdl_log` WRITE;
/*!40000 ALTER TABLE `mdl_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_log_display`
--

DROP TABLE IF EXISTS `mdl_log_display`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_log_display` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `module` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `action` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `mtable` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `field` varchar(200) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `component` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_logdisp_modact_uix` (`module`,`action`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='For a particular module/action, specifies a moodle table/fie';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_log_display`
--

LOCK TABLES `mdl_log_display` WRITE;
/*!40000 ALTER TABLE `mdl_log_display` DISABLE KEYS */;
INSERT INTO `mdl_log_display` VALUES (1,'course','user report','user','CONCAT(firstname, \' \', lastname)','moodle'),(2,'course','view','course','fullname','moodle'),(3,'course','view section','course_sections','name','moodle'),(4,'course','update','course','fullname','moodle'),(5,'course','hide','course','fullname','moodle'),(6,'course','show','course','fullname','moodle'),(7,'course','move','course','fullname','moodle'),(8,'course','enrol','course','fullname','moodle'),(9,'course','unenrol','course','fullname','moodle'),(10,'course','report log','course','fullname','moodle'),(11,'course','report live','course','fullname','moodle'),(12,'course','report outline','course','fullname','moodle'),(13,'course','report participation','course','fullname','moodle'),(14,'course','report stats','course','fullname','moodle'),(15,'category','add','course_categories','name','moodle'),(16,'category','hide','course_categories','name','moodle'),(17,'category','move','course_categories','name','moodle'),(18,'category','show','course_categories','name','moodle'),(19,'category','update','course_categories','name','moodle'),(20,'message','write','user','CONCAT(firstname, \' \', lastname)','moodle'),(21,'message','read','user','CONCAT(firstname, \' \', lastname)','moodle'),(22,'message','add contact','user','CONCAT(firstname, \' \', lastname)','moodle'),(23,'message','remove contact','user','CONCAT(firstname, \' \', lastname)','moodle'),(24,'message','block contact','user','CONCAT(firstname, \' \', lastname)','moodle'),(25,'message','unblock contact','user','CONCAT(firstname, \' \', lastname)','moodle'),(26,'group','view','groups','name','moodle'),(27,'tag','update','tag','name','moodle'),(28,'tag','flag','tag','name','moodle'),(29,'user','view','user','CONCAT(firstname, \' \', lastname)','moodle'),(30,'assign','add','assign','name','mod_assign'),(31,'assign','delete mod','assign','name','mod_assign'),(32,'assign','download all submissions','assign','name','mod_assign'),(33,'assign','grade submission','assign','name','mod_assign'),(34,'assign','lock submission','assign','name','mod_assign'),(35,'assign','reveal identities','assign','name','mod_assign'),(36,'assign','revert submission to draft','assign','name','mod_assign'),(37,'assign','set marking workflow state','assign','name','mod_assign'),(38,'assign','submission statement accepted','assign','name','mod_assign'),(39,'assign','submit','assign','name','mod_assign'),(40,'assign','submit for grading','assign','name','mod_assign'),(41,'assign','unlock submission','assign','name','mod_assign'),(42,'assign','update','assign','name','mod_assign'),(43,'assign','upload','assign','name','mod_assign'),(44,'assign','view','assign','name','mod_assign'),(45,'assign','view all','course','fullname','mod_assign'),(46,'assign','view confirm submit assignment form','assign','name','mod_assign'),(47,'assign','view grading form','assign','name','mod_assign'),(48,'assign','view submission','assign','name','mod_assign'),(49,'assign','view submission grading table','assign','name','mod_assign'),(50,'assign','view submit assignment form','assign','name','mod_assign'),(51,'assign','view feedback','assign','name','mod_assign'),(52,'assign','view batch set marking workflow state','assign','name','mod_assign'),(53,'assignment','view','assignment','name','mod_assignment'),(54,'assignment','add','assignment','name','mod_assignment'),(55,'assignment','update','assignment','name','mod_assignment'),(56,'assignment','view submission','assignment','name','mod_assignment'),(57,'assignment','upload','assignment','name','mod_assignment'),(58,'book','add','book','name','mod_book'),(59,'book','update','book','name','mod_book'),(60,'book','view','book','name','mod_book'),(61,'book','add chapter','book_chapters','title','mod_book'),(62,'book','update chapter','book_chapters','title','mod_book'),(63,'book','view chapter','book_chapters','title','mod_book'),(64,'chat','view','chat','name','mod_chat'),(65,'chat','add','chat','name','mod_chat'),(66,'chat','update','chat','name','mod_chat'),(67,'chat','report','chat','name','mod_chat'),(68,'chat','talk','chat','name','mod_chat'),(69,'choice','view','choice','name','mod_choice'),(70,'choice','update','choice','name','mod_choice'),(71,'choice','add','choice','name','mod_choice'),(72,'choice','report','choice','name','mod_choice'),(73,'choice','choose','choice','name','mod_choice'),(74,'choice','choose again','choice','name','mod_choice'),(75,'data','view','data','name','mod_data'),(76,'data','add','data','name','mod_data'),(77,'data','update','data','name','mod_data'),(78,'data','record delete','data','name','mod_data'),(79,'data','fields add','data_fields','name','mod_data'),(80,'data','fields update','data_fields','name','mod_data'),(81,'data','templates saved','data','name','mod_data'),(82,'data','templates def','data','name','mod_data'),(83,'feedback','startcomplete','feedback','name','mod_feedback'),(84,'feedback','submit','feedback','name','mod_feedback'),(85,'feedback','delete','feedback','name','mod_feedback'),(86,'feedback','view','feedback','name','mod_feedback'),(87,'feedback','view all','course','shortname','mod_feedback'),(88,'folder','view','folder','name','mod_folder'),(89,'folder','view all','folder','name','mod_folder'),(90,'folder','update','folder','name','mod_folder'),(91,'folder','add','folder','name','mod_folder'),(92,'forum','add','forum','name','mod_forum'),(93,'forum','update','forum','name','mod_forum'),(94,'forum','add discussion','forum_discussions','name','mod_forum'),(95,'forum','add post','forum_posts','subject','mod_forum'),(96,'forum','update post','forum_posts','subject','mod_forum'),(97,'forum','user report','user','CONCAT(firstname, \' \', lastname)','mod_forum'),(98,'forum','move discussion','forum_discussions','name','mod_forum'),(99,'forum','view subscribers','forum','name','mod_forum'),(100,'forum','view discussion','forum_discussions','name','mod_forum'),(101,'forum','view forum','forum','name','mod_forum'),(102,'forum','subscribe','forum','name','mod_forum'),(103,'forum','unsubscribe','forum','name','mod_forum'),(104,'forum','pin discussion','forum_discussions','name','mod_forum'),(105,'forum','unpin discussion','forum_discussions','name','mod_forum'),(106,'glossary','add','glossary','name','mod_glossary'),(107,'glossary','update','glossary','name','mod_glossary'),(108,'glossary','view','glossary','name','mod_glossary'),(109,'glossary','view all','glossary','name','mod_glossary'),(110,'glossary','add entry','glossary','name','mod_glossary'),(111,'glossary','update entry','glossary','name','mod_glossary'),(112,'glossary','add category','glossary','name','mod_glossary'),(113,'glossary','update category','glossary','name','mod_glossary'),(114,'glossary','delete category','glossary','name','mod_glossary'),(115,'glossary','approve entry','glossary','name','mod_glossary'),(116,'glossary','disapprove entry','glossary','name','mod_glossary'),(117,'glossary','view entry','glossary_entries','concept','mod_glossary'),(118,'imscp','view','imscp','name','mod_imscp'),(119,'imscp','view all','imscp','name','mod_imscp'),(120,'imscp','update','imscp','name','mod_imscp'),(121,'imscp','add','imscp','name','mod_imscp'),(122,'label','add','label','name','mod_label'),(123,'label','update','label','name','mod_label'),(124,'lesson','start','lesson','name','mod_lesson'),(125,'lesson','end','lesson','name','mod_lesson'),(126,'lesson','view','lesson_pages','title','mod_lesson'),(127,'lti','view','lti','name','mod_lti'),(128,'lti','launch','lti','name','mod_lti'),(129,'lti','view all','lti','name','mod_lti'),(130,'page','view','page','name','mod_page'),(131,'page','view all','page','name','mod_page'),(132,'page','update','page','name','mod_page'),(133,'page','add','page','name','mod_page'),(134,'quiz','add','quiz','name','mod_quiz'),(135,'quiz','update','quiz','name','mod_quiz'),(136,'quiz','view','quiz','name','mod_quiz'),(137,'quiz','report','quiz','name','mod_quiz'),(138,'quiz','attempt','quiz','name','mod_quiz'),(139,'quiz','submit','quiz','name','mod_quiz'),(140,'quiz','review','quiz','name','mod_quiz'),(141,'quiz','editquestions','quiz','name','mod_quiz'),(142,'quiz','preview','quiz','name','mod_quiz'),(143,'quiz','start attempt','quiz','name','mod_quiz'),(144,'quiz','close attempt','quiz','name','mod_quiz'),(145,'quiz','continue attempt','quiz','name','mod_quiz'),(146,'quiz','edit override','quiz','name','mod_quiz'),(147,'quiz','delete override','quiz','name','mod_quiz'),(148,'quiz','view summary','quiz','name','mod_quiz'),(149,'resource','view','resource','name','mod_resource'),(150,'resource','view all','resource','name','mod_resource'),(151,'resource','update','resource','name','mod_resource'),(152,'resource','add','resource','name','mod_resource'),(153,'scorm','view','scorm','name','mod_scorm'),(154,'scorm','review','scorm','name','mod_scorm'),(155,'scorm','update','scorm','name','mod_scorm'),(156,'scorm','add','scorm','name','mod_scorm'),(157,'survey','add','survey','name','mod_survey'),(158,'survey','update','survey','name','mod_survey'),(159,'survey','download','survey','name','mod_survey'),(160,'survey','view form','survey','name','mod_survey'),(161,'survey','view graph','survey','name','mod_survey'),(162,'survey','view report','survey','name','mod_survey'),(163,'survey','submit','survey','name','mod_survey'),(164,'url','view','url','name','mod_url'),(165,'url','view all','url','name','mod_url'),(166,'url','update','url','name','mod_url'),(167,'url','add','url','name','mod_url'),(168,'workshop','add','workshop','name','mod_workshop'),(169,'workshop','update','workshop','name','mod_workshop'),(170,'workshop','view','workshop','name','mod_workshop'),(171,'workshop','view all','workshop','name','mod_workshop'),(172,'workshop','add submission','workshop_submissions','title','mod_workshop'),(173,'workshop','update submission','workshop_submissions','title','mod_workshop'),(174,'workshop','view submission','workshop_submissions','title','mod_workshop'),(175,'workshop','add assessment','workshop_submissions','title','mod_workshop'),(176,'workshop','update assessment','workshop_submissions','title','mod_workshop'),(177,'workshop','add example','workshop_submissions','title','mod_workshop'),(178,'workshop','update example','workshop_submissions','title','mod_workshop'),(179,'workshop','view example','workshop_submissions','title','mod_workshop'),(180,'workshop','add reference assessment','workshop_submissions','title','mod_workshop'),(181,'workshop','update reference assessment','workshop_submissions','title','mod_workshop'),(182,'workshop','add example assessment','workshop_submissions','title','mod_workshop'),(183,'workshop','update example assessment','workshop_submissions','title','mod_workshop'),(184,'workshop','update aggregate grades','workshop','name','mod_workshop'),(185,'workshop','update clear aggregated grades','workshop','name','mod_workshop'),(186,'workshop','update clear assessments','workshop','name','mod_workshop'),(187,'book','exportimscp','book','name','booktool_exportimscp'),(188,'book','print','book','name','booktool_print'),(189,'book','print chapter','book_chapters','title','booktool_print');
/*!40000 ALTER TABLE `mdl_log_display` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_log_queries`
--

DROP TABLE IF EXISTS `mdl_log_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_log_queries` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `qtype` mediumint(5) NOT NULL,
  `sqltext` longtext COLLATE utf8mb4_bin NOT NULL,
  `sqlparams` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `error` mediumint(5) NOT NULL DEFAULT 0,
  `info` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `backtrace` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `exectime` decimal(10,5) NOT NULL,
  `timelogged` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Logged database queries.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_log_queries`
--

LOCK TABLES `mdl_log_queries` WRITE;
/*!40000 ALTER TABLE `mdl_log_queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_log_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_logstore_standard_log`
--

DROP TABLE IF EXISTS `mdl_logstore_standard_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_logstore_standard_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `component` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `action` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `target` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `objecttable` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `objectid` bigint(10) DEFAULT NULL,
  `crud` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `edulevel` tinyint(1) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `contextlevel` bigint(10) NOT NULL,
  `contextinstanceid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `courseid` bigint(10) DEFAULT NULL,
  `relateduserid` bigint(10) DEFAULT NULL,
  `anonymous` tinyint(1) NOT NULL DEFAULT 0,
  `other` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `origin` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `realuserid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_logsstanlog_tim_ix` (`timecreated`),
  KEY `mdl_logsstanlog_couanotim_ix` (`courseid`,`anonymous`,`timecreated`),
  KEY `mdl_logsstanlog_useconconcr_ix` (`userid`,`contextlevel`,`contextinstanceid`,`crud`,`edulevel`,`timecreated`),
  KEY `mdl_logsstanlog_con_ix` (`contextid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Standard log table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_logstore_standard_log`
--

LOCK TABLES `mdl_logstore_standard_log` WRITE;
/*!40000 ALTER TABLE `mdl_logstore_standard_log` DISABLE KEYS */;
INSERT INTO `mdl_logstore_standard_log` VALUES (1,'\\core\\event\\course_viewed','core','viewed','course',NULL,NULL,'r',2,2,50,1,0,1,NULL,0,'N;',1543610525,'web','192.168.128.1',NULL),(2,'\\core\\event\\user_loggedin','core','loggedin','user','user',2,'r',0,1,10,0,2,0,NULL,0,'a:1:{s:8:\"username\";s:5:\"admin\";}',1543610553,'web','192.168.128.1',NULL),(3,'\\core\\event\\dashboard_viewed','core','viewed','dashboard',NULL,NULL,'r',0,5,30,2,2,0,2,0,'N;',1543610563,'web','192.168.128.1',NULL),(4,'\\core\\event\\course_viewed','core','viewed','course',NULL,NULL,'r',2,2,50,1,0,1,NULL,0,'N;',1544205188,'web','172.18.0.1',NULL),(5,'\\core\\event\\course_viewed','core','viewed','course',NULL,NULL,'r',2,2,50,1,0,1,NULL,0,'N;',1544205331,'web','172.18.0.1',NULL),(6,'\\core\\event\\user_login_failed','core','failed','user_login',NULL,NULL,'r',0,1,10,0,0,0,NULL,0,'a:2:{s:8:\"username\";s:8:\"ava_user\";s:6:\"reason\";i:1;}',1544460715,'web','172.18.0.1',NULL),(7,'\\core\\event\\user_login_failed','core','failed','user_login',NULL,NULL,'r',0,1,10,0,0,0,NULL,0,'a:2:{s:8:\"username\";s:8:\"ava_user\";s:6:\"reason\";i:1;}',1544460728,'web','172.18.0.1',NULL),(8,'\\core\\event\\user_loggedin','core','loggedin','user','user',2,'r',0,1,10,0,2,0,NULL,0,'a:1:{s:8:\"username\";s:5:\"admin\";}',1544460734,'web','172.18.0.1',NULL),(9,'\\core\\event\\dashboard_viewed','core','viewed','dashboard',NULL,NULL,'r',0,5,30,2,2,0,2,0,'N;',1544460742,'web','172.18.0.1',NULL),(10,'\\tool_langimport\\event\\langpack_imported','tool_langimport','imported','langpack',NULL,NULL,'c',0,1,10,0,2,0,NULL,0,'a:1:{s:8:\"langcode\";s:5:\"pt_br\";}',1544461990,'web','172.18.0.1',NULL),(11,'\\core\\event\\config_log_created','core','created','config_log','config_log',1603,'c',0,1,10,0,2,0,NULL,0,'a:4:{s:4:\"name\";s:4:\"lang\";s:8:\"oldvalue\";s:2:\"en\";s:5:\"value\";s:5:\"pt_br\";s:6:\"plugin\";N;}',1544462015,'web','172.18.0.1',NULL),(12,'\\core\\event\\config_log_created','core','created','config_log','config_log',1604,'c',0,1,10,0,2,0,NULL,0,'a:4:{s:4:\"name\";s:17:\"enablewebservices\";s:8:\"oldvalue\";s:1:\"0\";s:5:\"value\";s:1:\"1\";s:6:\"plugin\";N;}',1544462331,'web','172.18.0.1',NULL),(13,'\\core\\event\\config_log_created','core','created','config_log','config_log',1605,'c',0,1,10,0,2,0,NULL,0,'a:4:{s:4:\"name\";s:21:\"enablewsdocumentation\";s:8:\"oldvalue\";s:1:\"0\";s:5:\"value\";s:1:\"1\";s:6:\"plugin\";N;}',1544462399,'web','172.18.0.1',NULL),(14,'\\core\\event\\user_created','core','created','user','user',3,'c',0,21,30,3,2,0,3,0,'N;',1544462692,'web','172.18.0.1',NULL),(15,'\\core\\event\\webservice_service_created','core','created','webservice_service','external_services',2,'c',0,1,10,0,2,0,NULL,0,'N;',1544462810,'web','172.18.0.1',NULL),(16,'\\core\\event\\webservice_service_user_added','core','added','webservice_service_user','external_services',2,'c',0,1,10,0,2,0,3,0,'N;',1544463536,'web','172.18.0.1',NULL),(17,'\\core\\event\\user_loggedin','core','loggedin','user','user',2,'r',0,1,10,0,2,0,NULL,0,'a:1:{s:8:\"username\";s:5:\"admin\";}',1544538552,'web','172.23.0.1',NULL),(18,'\\core\\event\\dashboard_viewed','core','viewed','dashboard',NULL,NULL,'r',0,5,30,2,2,0,2,0,'N;',1544543268,'web','172.23.0.1',NULL),(19,'\\core\\event\\user_profile_viewed','core','viewed','user_profile','user',3,'r',0,21,30,3,2,0,3,0,'N;',1544544455,'web','172.23.0.1',NULL),(20,'\\core\\event\\user_profile_viewed','core','viewed','user_profile','user',3,'r',0,21,30,3,2,0,3,0,'N;',1544544462,'web','172.23.0.1',NULL),(21,'\\core\\event\\user_list_viewed','core','viewed','user_list','course',1,'r',0,2,50,1,2,1,NULL,0,'a:2:{s:15:\"courseshortname\";s:3:\"AVA\";s:14:\"coursefullname\";s:8:\"Ambiente\";}',1544544466,'web','172.23.0.1',NULL);
/*!40000 ALTER TABLE `mdl_logstore_standard_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lti`
--

DROP TABLE IF EXISTS `mdl_lti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lti` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `introformat` smallint(4) DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `typeid` bigint(10) DEFAULT NULL,
  `toolurl` longtext COLLATE utf8mb4_bin NOT NULL,
  `securetoolurl` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `instructorchoicesendname` tinyint(1) DEFAULT NULL,
  `instructorchoicesendemailaddr` tinyint(1) DEFAULT NULL,
  `instructorchoiceallowroster` tinyint(1) DEFAULT NULL,
  `instructorchoiceallowsetting` tinyint(1) DEFAULT NULL,
  `instructorcustomparameters` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `instructorchoiceacceptgrades` tinyint(1) DEFAULT NULL,
  `grade` bigint(10) NOT NULL DEFAULT 100,
  `launchcontainer` tinyint(2) NOT NULL DEFAULT 1,
  `resourcekey` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `debuglaunch` tinyint(1) NOT NULL DEFAULT 0,
  `showtitlelaunch` tinyint(1) NOT NULL DEFAULT 0,
  `showdescriptionlaunch` tinyint(1) NOT NULL DEFAULT 0,
  `servicesalt` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `icon` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `secureicon` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_lti_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='This table contains Basic LTI activities instances';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lti`
--

LOCK TABLES `mdl_lti` WRITE;
/*!40000 ALTER TABLE `mdl_lti` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lti_submission`
--

DROP TABLE IF EXISTS `mdl_lti_submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lti_submission` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `ltiid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `datesubmitted` bigint(10) NOT NULL,
  `dateupdated` bigint(10) NOT NULL,
  `gradepercent` decimal(10,5) NOT NULL,
  `originalgrade` decimal(10,5) NOT NULL,
  `launchid` bigint(10) NOT NULL,
  `state` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_ltisubm_lti_ix` (`ltiid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Keeps track of individual submissions for LTI activities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lti_submission`
--

LOCK TABLES `mdl_lti_submission` WRITE;
/*!40000 ALTER TABLE `mdl_lti_submission` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lti_submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lti_tool_proxies`
--

DROP TABLE IF EXISTS `mdl_lti_tool_proxies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lti_tool_proxies` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT 'Tool Provider',
  `regurl` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `state` tinyint(2) NOT NULL DEFAULT 1,
  `guid` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `secret` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `vendorcode` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `capabilityoffered` longtext COLLATE utf8mb4_bin NOT NULL,
  `serviceoffered` longtext COLLATE utf8mb4_bin NOT NULL,
  `toolproxy` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `createdby` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_ltitoolprox_gui_uix` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='LTI tool proxy registrations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lti_tool_proxies`
--

LOCK TABLES `mdl_lti_tool_proxies` WRITE;
/*!40000 ALTER TABLE `mdl_lti_tool_proxies` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lti_tool_proxies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lti_tool_settings`
--

DROP TABLE IF EXISTS `mdl_lti_tool_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lti_tool_settings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `toolproxyid` bigint(10) NOT NULL,
  `course` bigint(10) DEFAULT NULL,
  `coursemoduleid` bigint(10) DEFAULT NULL,
  `settings` longtext COLLATE utf8mb4_bin NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_ltitoolsett_too_ix` (`toolproxyid`),
  KEY `mdl_ltitoolsett_cou_ix` (`course`),
  KEY `mdl_ltitoolsett_cou2_ix` (`coursemoduleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='LTI tool setting values';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lti_tool_settings`
--

LOCK TABLES `mdl_lti_tool_settings` WRITE;
/*!40000 ALTER TABLE `mdl_lti_tool_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lti_tool_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lti_types`
--

DROP TABLE IF EXISTS `mdl_lti_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lti_types` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT 'basiclti Activity',
  `baseurl` longtext COLLATE utf8mb4_bin NOT NULL,
  `tooldomain` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `state` tinyint(2) NOT NULL DEFAULT 2,
  `course` bigint(10) NOT NULL,
  `coursevisible` tinyint(1) NOT NULL DEFAULT 0,
  `toolproxyid` bigint(10) DEFAULT NULL,
  `enabledcapability` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `parameter` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `icon` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `secureicon` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `createdby` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_ltitype_cou_ix` (`course`),
  KEY `mdl_ltitype_too_ix` (`tooldomain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Basic LTI pre-configured activities';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lti_types`
--

LOCK TABLES `mdl_lti_types` WRITE;
/*!40000 ALTER TABLE `mdl_lti_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lti_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_lti_types_config`
--

DROP TABLE IF EXISTS `mdl_lti_types_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_lti_types_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `typeid` bigint(10) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_ltitypeconf_typ_ix` (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Basic LTI types configuration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_lti_types_config`
--

LOCK TABLES `mdl_lti_types_config` WRITE;
/*!40000 ALTER TABLE `mdl_lti_types_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_lti_types_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_ltiservice_gradebookservices`
--

DROP TABLE IF EXISTS `mdl_ltiservice_gradebookservices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_ltiservice_gradebookservices` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `gradeitemid` bigint(10) NOT NULL,
  `courseid` bigint(10) NOT NULL,
  `toolproxyid` bigint(10) DEFAULT NULL,
  `typeid` bigint(10) DEFAULT NULL,
  `baseurl` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `ltilinkid` bigint(10) DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_ltisgrad_lti_ix` (`ltilinkid`),
  KEY `mdl_ltisgrad_gracou_ix` (`gradeitemid`,`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='This file records the grade items created by the LTI Gradebo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_ltiservice_gradebookservices`
--

LOCK TABLES `mdl_ltiservice_gradebookservices` WRITE;
/*!40000 ALTER TABLE `mdl_ltiservice_gradebookservices` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_ltiservice_gradebookservices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message`
--

DROP TABLE IF EXISTS `mdl_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `useridfrom` bigint(10) NOT NULL DEFAULT 0,
  `useridto` bigint(10) NOT NULL DEFAULT 0,
  `subject` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `fullmessage` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `fullmessageformat` smallint(4) DEFAULT 0,
  `fullmessagehtml` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `smallmessage` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `notification` tinyint(1) DEFAULT 0,
  `contexturl` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `contexturlname` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timeuserfromdeleted` bigint(10) NOT NULL DEFAULT 0,
  `timeusertodeleted` bigint(10) NOT NULL DEFAULT 0,
  `component` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `eventtype` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_mess_useusetimtim_ix` (`useridfrom`,`useridto`,`timeuserfromdeleted`,`timeusertodeleted`),
  KEY `mdl_mess_usetimnot_ix` (`useridfrom`,`timeuserfromdeleted`,`notification`),
  KEY `mdl_mess_usetimnot2_ix` (`useridto`,`timeusertodeleted`,`notification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores all unread messages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message`
--

LOCK TABLES `mdl_message` WRITE;
/*!40000 ALTER TABLE `mdl_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_airnotifier_devices`
--

DROP TABLE IF EXISTS `mdl_message_airnotifier_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_airnotifier_devices` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userdeviceid` bigint(10) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_messairndevi_use_uix` (`userdeviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Store information about the devices registered in Airnotifie';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_airnotifier_devices`
--

LOCK TABLES `mdl_message_airnotifier_devices` WRITE;
/*!40000 ALTER TABLE `mdl_message_airnotifier_devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message_airnotifier_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_contacts`
--

DROP TABLE IF EXISTS `mdl_message_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_contacts` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `contactid` bigint(10) NOT NULL DEFAULT 0,
  `blocked` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_messcont_usecon_uix` (`userid`,`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Maintains lists of relationships between users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_contacts`
--

LOCK TABLES `mdl_message_contacts` WRITE;
/*!40000 ALTER TABLE `mdl_message_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_conversation_members`
--

DROP TABLE IF EXISTS `mdl_message_conversation_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_conversation_members` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `conversationid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_messconvmemb_con_ix` (`conversationid`),
  KEY `mdl_messconvmemb_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores all members in a conversations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_conversation_members`
--

LOCK TABLES `mdl_message_conversation_members` WRITE;
/*!40000 ALTER TABLE `mdl_message_conversation_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message_conversation_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_conversations`
--

DROP TABLE IF EXISTS `mdl_message_conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_conversations` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `convhash` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_messconv_con_uix` (`convhash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores all message conversations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_conversations`
--

LOCK TABLES `mdl_message_conversations` WRITE;
/*!40000 ALTER TABLE `mdl_message_conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message_conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_popup`
--

DROP TABLE IF EXISTS `mdl_message_popup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_popup` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `messageid` bigint(10) NOT NULL,
  `isread` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_messpopu_mesisr_uix` (`messageid`,`isread`),
  KEY `mdl_messpopu_isr_ix` (`isread`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Keep state of notifications for the popup message processor';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_popup`
--

LOCK TABLES `mdl_message_popup` WRITE;
/*!40000 ALTER TABLE `mdl_message_popup` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message_popup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_popup_notifications`
--

DROP TABLE IF EXISTS `mdl_message_popup_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_popup_notifications` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `notificationid` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_messpopunoti_not_ix` (`notificationid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='List of notifications to display in the message output popup';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_popup_notifications`
--

LOCK TABLES `mdl_message_popup_notifications` WRITE;
/*!40000 ALTER TABLE `mdl_message_popup_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message_popup_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_processors`
--

DROP TABLE IF EXISTS `mdl_message_processors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_processors` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(166) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='List of message output plugins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_processors`
--

LOCK TABLES `mdl_message_processors` WRITE;
/*!40000 ALTER TABLE `mdl_message_processors` DISABLE KEYS */;
INSERT INTO `mdl_message_processors` VALUES (1,'airnotifier',0),(2,'email',1),(3,'jabber',1),(4,'popup',1);
/*!40000 ALTER TABLE `mdl_message_processors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_providers`
--

DROP TABLE IF EXISTS `mdl_message_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_providers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `component` varchar(200) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `capability` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_messprov_comnam_uix` (`component`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='This table stores the message providers (modules and core sy';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_providers`
--

LOCK TABLES `mdl_message_providers` WRITE;
/*!40000 ALTER TABLE `mdl_message_providers` DISABLE KEYS */;
INSERT INTO `mdl_message_providers` VALUES (1,'notices','moodle','moodle/site:config'),(2,'errors','moodle','moodle/site:config'),(3,'availableupdate','moodle','moodle/site:config'),(4,'instantmessage','moodle',NULL),(5,'backup','moodle','moodle/site:config'),(6,'courserequested','moodle','moodle/site:approvecourse'),(7,'courserequestapproved','moodle','moodle/course:request'),(8,'courserequestrejected','moodle','moodle/course:request'),(9,'badgerecipientnotice','moodle','moodle/badges:earnbadge'),(10,'badgecreatornotice','moodle',NULL),(11,'competencyplancomment','moodle',NULL),(12,'competencyusercompcomment','moodle',NULL),(13,'insights','moodle','moodle/analytics:listinsights'),(14,'assign_notification','mod_assign',NULL),(15,'assignment_updates','mod_assignment',NULL),(16,'submission','mod_feedback',NULL),(17,'message','mod_feedback',NULL),(18,'posts','mod_forum',NULL),(19,'digests','mod_forum',NULL),(20,'graded_essay','mod_lesson',NULL),(21,'submission','mod_quiz','mod/quiz:emailnotifysubmission'),(22,'confirmation','mod_quiz','mod/quiz:emailconfirmsubmission'),(23,'attempt_overdue','mod_quiz','mod/quiz:emailwarnoverdue'),(24,'flatfile_enrolment','enrol_flatfile',NULL),(25,'imsenterprise_enrolment','enrol_imsenterprise',NULL),(26,'expiry_notification','enrol_manual',NULL),(27,'paypal_enrolment','enrol_paypal',NULL),(28,'expiry_notification','enrol_self',NULL),(29,'contactdataprotectionofficer','tool_dataprivacy','tool/dataprivacy:managedatarequests'),(30,'datarequestprocessingresults','tool_dataprivacy',NULL),(31,'notifyexceptions','tool_dataprivacy','tool/dataprivacy:managedatarequests'),(32,'invalidrecipienthandler','tool_messageinbound',NULL),(33,'messageprocessingerror','tool_messageinbound',NULL),(34,'messageprocessingsuccess','tool_messageinbound',NULL),(35,'notification','tool_monitor','tool/monitor:subscribe');
/*!40000 ALTER TABLE `mdl_message_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_read`
--

DROP TABLE IF EXISTS `mdl_message_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_read` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `useridfrom` bigint(10) NOT NULL DEFAULT 0,
  `useridto` bigint(10) NOT NULL DEFAULT 0,
  `subject` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `fullmessage` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `fullmessageformat` smallint(4) DEFAULT 0,
  `fullmessagehtml` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `smallmessage` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `notification` tinyint(1) DEFAULT 0,
  `contexturl` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `contexturlname` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timeread` bigint(10) NOT NULL DEFAULT 0,
  `timeuserfromdeleted` bigint(10) NOT NULL DEFAULT 0,
  `timeusertodeleted` bigint(10) NOT NULL DEFAULT 0,
  `component` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `eventtype` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_messread_useusetimtim_ix` (`useridfrom`,`useridto`,`timeuserfromdeleted`,`timeusertodeleted`),
  KEY `mdl_messread_nottim_ix` (`notification`,`timeread`),
  KEY `mdl_messread_usetimnot_ix` (`useridfrom`,`timeuserfromdeleted`,`notification`),
  KEY `mdl_messread_usetimnot2_ix` (`useridto`,`timeusertodeleted`,`notification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores all messages that have been read';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_read`
--

LOCK TABLES `mdl_message_read` WRITE;
/*!40000 ALTER TABLE `mdl_message_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_message_user_actions`
--

DROP TABLE IF EXISTS `mdl_message_user_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_message_user_actions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `messageid` bigint(10) NOT NULL,
  `action` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_messuseracti_usemesact_uix` (`userid`,`messageid`,`action`),
  KEY `mdl_messuseracti_use_ix` (`userid`),
  KEY `mdl_messuseracti_mes_ix` (`messageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores all per-user actions on individual messages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_message_user_actions`
--

LOCK TABLES `mdl_message_user_actions` WRITE;
/*!40000 ALTER TABLE `mdl_message_user_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_message_user_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_messageinbound_datakeys`
--

DROP TABLE IF EXISTS `mdl_messageinbound_datakeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_messageinbound_datakeys` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `handler` bigint(10) NOT NULL,
  `datavalue` bigint(10) NOT NULL,
  `datakey` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `expires` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_messdata_handat_uix` (`handler`,`datavalue`),
  KEY `mdl_messdata_han_ix` (`handler`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Inbound Message data item secret keys.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_messageinbound_datakeys`
--

LOCK TABLES `mdl_messageinbound_datakeys` WRITE;
/*!40000 ALTER TABLE `mdl_messageinbound_datakeys` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_messageinbound_datakeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_messageinbound_handlers`
--

DROP TABLE IF EXISTS `mdl_messageinbound_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_messageinbound_handlers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `component` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `classname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `defaultexpiration` bigint(10) NOT NULL DEFAULT 86400,
  `validateaddress` tinyint(1) NOT NULL DEFAULT 1,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_messhand_cla_uix` (`classname`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Inbound Message Handler definitions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_messageinbound_handlers`
--

LOCK TABLES `mdl_messageinbound_handlers` WRITE;
/*!40000 ALTER TABLE `mdl_messageinbound_handlers` DISABLE KEYS */;
INSERT INTO `mdl_messageinbound_handlers` VALUES (1,'core','\\core\\message\\inbound\\private_files_handler',0,1,0),(2,'mod_forum','\\mod_forum\\message\\inbound\\reply_handler',604800,1,0),(3,'tool_messageinbound','\\tool_messageinbound\\message\\inbound\\invalid_recipient_handler',604800,0,1);
/*!40000 ALTER TABLE `mdl_messageinbound_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_messageinbound_messagelist`
--

DROP TABLE IF EXISTS `mdl_messageinbound_messagelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_messageinbound_messagelist` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `messageid` longtext COLLATE utf8mb4_bin NOT NULL,
  `userid` bigint(10) NOT NULL,
  `address` longtext COLLATE utf8mb4_bin NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_messmess_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='A list of message IDs for existing replies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_messageinbound_messagelist`
--

LOCK TABLES `mdl_messageinbound_messagelist` WRITE;
/*!40000 ALTER TABLE `mdl_messageinbound_messagelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_messageinbound_messagelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_messages`
--

DROP TABLE IF EXISTS `mdl_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_messages` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `useridfrom` bigint(10) NOT NULL,
  `conversationid` bigint(10) NOT NULL,
  `subject` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `fullmessage` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `fullmessageformat` tinyint(1) NOT NULL DEFAULT 0,
  `fullmessagehtml` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `smallmessage` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_mess_contim_ix` (`conversationid`,`timecreated`),
  KEY `mdl_mess_use_ix` (`useridfrom`),
  KEY `mdl_mess_con_ix` (`conversationid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores all messages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_messages`
--

LOCK TABLES `mdl_messages` WRITE;
/*!40000 ALTER TABLE `mdl_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_application`
--

DROP TABLE IF EXISTS `mdl_mnet_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_application` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `display_name` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `xmlrpc_server_url` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `sso_land_url` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `sso_jump_url` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Information about applications on remote hosts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_application`
--

LOCK TABLES `mdl_mnet_application` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_application` DISABLE KEYS */;
INSERT INTO `mdl_mnet_application` VALUES (1,'moodle','Moodle','/mnet/xmlrpc/server.php','/auth/mnet/land.php','/auth/mnet/jump.php'),(2,'mahara','Mahara','/api/xmlrpc/server.php','/auth/xmlrpc/land.php','/auth/xmlrpc/jump.php');
/*!40000 ALTER TABLE `mdl_mnet_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_host`
--

DROP TABLE IF EXISTS `mdl_mnet_host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_host` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `wwwroot` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `ip_address` varchar(45) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `name` varchar(80) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `public_key` longtext COLLATE utf8mb4_bin NOT NULL,
  `public_key_expires` bigint(10) NOT NULL DEFAULT 0,
  `transport` tinyint(2) NOT NULL DEFAULT 0,
  `portno` mediumint(5) NOT NULL DEFAULT 0,
  `last_connect_time` bigint(10) NOT NULL DEFAULT 0,
  `last_log_id` bigint(10) NOT NULL DEFAULT 0,
  `force_theme` tinyint(1) NOT NULL DEFAULT 0,
  `theme` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `applicationid` bigint(10) NOT NULL DEFAULT 1,
  `sslverification` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_mnethost_app_ix` (`applicationid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Information about the local and remote hosts for RPC';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_host`
--

LOCK TABLES `mdl_mnet_host` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_host` DISABLE KEYS */;
INSERT INTO `mdl_mnet_host` VALUES (1,0,'http://localhost/ava','127.0.0.1','','',0,0,0,0,0,0,NULL,1,0),(2,0,'','','All Hosts','',0,0,0,0,0,0,NULL,1,0);
/*!40000 ALTER TABLE `mdl_mnet_host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_host2service`
--

DROP TABLE IF EXISTS `mdl_mnet_host2service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_host2service` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hostid` bigint(10) NOT NULL DEFAULT 0,
  `serviceid` bigint(10) NOT NULL DEFAULT 0,
  `publish` tinyint(1) NOT NULL DEFAULT 0,
  `subscribe` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnethost_hosser_uix` (`hostid`,`serviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Information about the services for a given host';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_host2service`
--

LOCK TABLES `mdl_mnet_host2service` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_host2service` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_mnet_host2service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_log`
--

DROP TABLE IF EXISTS `mdl_mnet_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hostid` bigint(10) NOT NULL DEFAULT 0,
  `remoteid` bigint(10) NOT NULL DEFAULT 0,
  `time` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `ip` varchar(45) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `course` bigint(10) NOT NULL DEFAULT 0,
  `coursename` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `module` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `cmid` bigint(10) NOT NULL DEFAULT 0,
  `action` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `url` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `info` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_mnetlog_hosusecou_ix` (`hostid`,`userid`,`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Store session data from users migrating to other sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_log`
--

LOCK TABLES `mdl_mnet_log` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_mnet_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_remote_rpc`
--

DROP TABLE IF EXISTS `mdl_mnet_remote_rpc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_remote_rpc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `functionname` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `xmlrpcpath` varchar(80) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `plugintype` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `pluginname` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='This table describes functions that might be called remotely';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_remote_rpc`
--

LOCK TABLES `mdl_mnet_remote_rpc` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_remote_rpc` DISABLE KEYS */;
INSERT INTO `mdl_mnet_remote_rpc` VALUES (1,'user_authorise','auth/mnet/auth.php/user_authorise','auth','mnet',1),(2,'keepalive_server','auth/mnet/auth.php/keepalive_server','auth','mnet',1),(3,'kill_children','auth/mnet/auth.php/kill_children','auth','mnet',1),(4,'refresh_log','auth/mnet/auth.php/refresh_log','auth','mnet',1),(5,'fetch_user_image','auth/mnet/auth.php/fetch_user_image','auth','mnet',1),(6,'fetch_theme_info','auth/mnet/auth.php/fetch_theme_info','auth','mnet',1),(7,'update_enrolments','auth/mnet/auth.php/update_enrolments','auth','mnet',1),(8,'keepalive_client','auth/mnet/auth.php/keepalive_client','auth','mnet',1),(9,'kill_child','auth/mnet/auth.php/kill_child','auth','mnet',1),(10,'available_courses','enrol/mnet/enrol.php/available_courses','enrol','mnet',1),(11,'user_enrolments','enrol/mnet/enrol.php/user_enrolments','enrol','mnet',1),(12,'enrol_user','enrol/mnet/enrol.php/enrol_user','enrol','mnet',1),(13,'unenrol_user','enrol/mnet/enrol.php/unenrol_user','enrol','mnet',1),(14,'course_enrolments','enrol/mnet/enrol.php/course_enrolments','enrol','mnet',1),(15,'send_content_intent','portfolio/mahara/lib.php/send_content_intent','portfolio','mahara',1),(16,'send_content_ready','portfolio/mahara/lib.php/send_content_ready','portfolio','mahara',1);
/*!40000 ALTER TABLE `mdl_mnet_remote_rpc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_remote_service2rpc`
--

DROP TABLE IF EXISTS `mdl_mnet_remote_service2rpc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_remote_service2rpc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `serviceid` bigint(10) NOT NULL DEFAULT 0,
  `rpcid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnetremoserv_rpcser_uix` (`rpcid`,`serviceid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Group functions or methods under a service';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_remote_service2rpc`
--

LOCK TABLES `mdl_mnet_remote_service2rpc` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_remote_service2rpc` DISABLE KEYS */;
INSERT INTO `mdl_mnet_remote_service2rpc` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,8),(9,2,9),(10,3,10),(11,3,11),(12,3,12),(13,3,13),(14,3,14),(15,4,15),(16,4,16);
/*!40000 ALTER TABLE `mdl_mnet_remote_service2rpc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_rpc`
--

DROP TABLE IF EXISTS `mdl_mnet_rpc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_rpc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `functionname` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `xmlrpcpath` varchar(80) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `plugintype` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `pluginname` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `help` longtext COLLATE utf8mb4_bin NOT NULL,
  `profile` longtext COLLATE utf8mb4_bin NOT NULL,
  `filename` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `classname` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL,
  `static` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_mnetrpc_enaxml_ix` (`enabled`,`xmlrpcpath`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Functions or methods that we may publish or subscribe to';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_rpc`
--

LOCK TABLES `mdl_mnet_rpc` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_rpc` DISABLE KEYS */;
INSERT INTO `mdl_mnet_rpc` VALUES (1,'user_authorise','auth/mnet/auth.php/user_authorise','auth','mnet',1,'Return user data for the provided token, compare with user_agent string.','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:5:\"token\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:37:\"The unique ID provided by remotehost.\";}i:1;a:3:{s:4:\"name\";s:9:\"useragent\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:18:\"User Agent string.\";}}s:6:\"return\";a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:44:\"$userdata Array of user info for remote host\";}}','auth.php','auth_plugin_mnet',0),(2,'keepalive_server','auth/mnet/auth.php/keepalive_server','auth','mnet',1,'Receives an array of usernames from a remote machine and prods their\nsessions to keep them alive','a:2:{s:10:\"parameters\";a:1:{i:0;a:3:{s:4:\"name\";s:5:\"array\";s:4:\"type\";s:5:\"array\";s:11:\"description\";s:21:\"An array of usernames\";}}s:6:\"return\";a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:28:\"\"All ok\" or an error message\";}}','auth.php','auth_plugin_mnet',0),(3,'kill_children','auth/mnet/auth.php/kill_children','auth','mnet',1,'The IdP uses this function to kill child sessions on other hosts','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:28:\"Username for session to kill\";}i:1;a:3:{s:4:\"name\";s:9:\"useragent\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:35:\"SHA1 hash of user agent to look for\";}}s:6:\"return\";a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:39:\"A plaintext report of what has happened\";}}','auth.php','auth_plugin_mnet',0),(4,'refresh_log','auth/mnet/auth.php/refresh_log','auth','mnet',1,'Receives an array of log entries from an SP and adds them to the mnet_log\ntable','a:2:{s:10:\"parameters\";a:1:{i:0;a:3:{s:4:\"name\";s:5:\"array\";s:4:\"type\";s:5:\"array\";s:11:\"description\";s:21:\"An array of usernames\";}}s:6:\"return\";a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:28:\"\"All ok\" or an error message\";}}','auth.php','auth_plugin_mnet',0),(5,'fetch_user_image','auth/mnet/auth.php/fetch_user_image','auth','mnet',1,'Returns the user\'s profile image info\nIf the user exists and has a profile picture, the returned array will contain keys:\nf1          - the content of the default 100x100px image\nf1_mimetype - the mimetype of the f1 file\nf2          - the content of the 35x35px variant of the image\nf2_mimetype - the mimetype of the f2 file\nThe mimetype information was added in Moodle 2.0. In Moodle 1.x, images are always jpegs.','a:2:{s:10:\"parameters\";a:1:{i:0;a:3:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:3:\"int\";s:11:\"description\";s:18:\"The id of the user\";}}s:6:\"return\";a:2:{s:4:\"type\";s:11:\"false|array\";s:11:\"description\";s:84:\"false if user not found, empty array if no picture exists, array with data otherwise\";}}','auth.php','auth_plugin_mnet',0),(6,'fetch_theme_info','auth/mnet/auth.php/fetch_theme_info','auth','mnet',1,'Returns the theme information and logo url as strings.','a:2:{s:10:\"parameters\";a:0:{}s:6:\"return\";a:2:{s:4:\"type\";s:6:\"string\";s:11:\"description\";s:14:\"The theme info\";}}','auth.php','auth_plugin_mnet',0),(7,'update_enrolments','auth/mnet/auth.php/update_enrolments','auth','mnet',1,'Invoke this function _on_ the IDP to update it with enrolment info local to\nthe SP right after calling user_authorise()\nNormally called by the SP after calling user_authorise()','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:12:\"The username\";}i:1;a:3:{s:4:\"name\";s:7:\"courses\";s:4:\"type\";s:5:\"array\";s:11:\"description\";s:75:\"Assoc array of courses following the structure of mnetservice_enrol_courses\";}}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"bool\";s:11:\"description\";s:0:\"\";}}','auth.php','auth_plugin_mnet',0),(8,'keepalive_client','auth/mnet/auth.php/keepalive_client','auth','mnet',1,'Poll the IdP server to let it know that a user it has authenticated is still\nonline','a:2:{s:10:\"parameters\";a:0:{}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"void\";s:11:\"description\";s:0:\"\";}}','auth.php','auth_plugin_mnet',0),(9,'kill_child','auth/mnet/auth.php/kill_child','auth','mnet',1,'When the IdP requests that child sessions are terminated,\nthis function will be called on each of the child hosts. The machine that\ncalls the function (over xmlrpc) provides us with the mnethostid we need.','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:28:\"Username for session to kill\";}i:1;a:3:{s:4:\"name\";s:9:\"useragent\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:35:\"SHA1 hash of user agent to look for\";}}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"bool\";s:11:\"description\";s:15:\"True on success\";}}','auth.php','auth_plugin_mnet',0),(10,'available_courses','enrol/mnet/enrol.php/available_courses','enrol','mnet',1,'Returns list of courses that we offer to the caller for remote enrolment of their users\nSince Moodle 2.0, courses are made available for MNet peers by creating an instance\nof enrol_mnet plugin for the course. Hidden courses are not returned. If there are two\ninstances - one specific for the host and one for \'All hosts\', the setting of the specific\none is used. The id of the peer is kept in customint1, no other custom fields are used.','a:2:{s:10:\"parameters\";a:0:{}s:6:\"return\";a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:0:\"\";}}','enrol.php','enrol_mnet_mnetservice_enrol',0),(11,'user_enrolments','enrol/mnet/enrol.php/user_enrolments','enrol','mnet',1,'This method has never been implemented in Moodle MNet API','a:2:{s:10:\"parameters\";a:0:{}s:6:\"return\";a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:11:\"empty array\";}}','enrol.php','enrol_mnet_mnetservice_enrol',0),(12,'enrol_user','enrol/mnet/enrol.php/enrol_user','enrol','mnet',1,'Enrol remote user to our course\nIf we do not have local record for the remote user in our database,\nit gets created here.','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"userdata\";s:4:\"type\";s:5:\"array\";s:11:\"description\";s:43:\"user details {@see mnet_fields_to_import()}\";}i:1;a:3:{s:4:\"name\";s:8:\"courseid\";s:4:\"type\";s:3:\"int\";s:11:\"description\";s:19:\"our local course id\";}}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"bool\";s:11:\"description\";s:69:\"true if the enrolment has been successful, throws exception otherwise\";}}','enrol.php','enrol_mnet_mnetservice_enrol',0),(13,'unenrol_user','enrol/mnet/enrol.php/unenrol_user','enrol','mnet',1,'Unenrol remote user from our course\nOnly users enrolled via enrol_mnet plugin can be unenrolled remotely. If the\nremote user is enrolled into the local course via some other enrol plugin\n(enrol_manual for example), the remote host can\'t touch such enrolment. Please\ndo not report this behaviour as bug, it is a feature ;-)','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:18:\"of the remote user\";}i:1;a:3:{s:4:\"name\";s:8:\"courseid\";s:4:\"type\";s:3:\"int\";s:11:\"description\";s:19:\"of our local course\";}}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"bool\";s:11:\"description\";s:71:\"true if the unenrolment has been successful, throws exception otherwise\";}}','enrol.php','enrol_mnet_mnetservice_enrol',0),(14,'course_enrolments','enrol/mnet/enrol.php/course_enrolments','enrol','mnet',1,'Returns a list of users from the client server who are enrolled in our course\nSuitable instance of enrol_mnet must be created in the course. This method will not\nreturn any information about the enrolments in courses that are not available for\nremote enrolment, even if their users are enrolled into them via other plugin\n(note the difference from {@link self::user_enrolments()}).\nThis method will return enrolment information for users from hosts regardless\nthe enrolment plugin. It does not matter if the user was enrolled remotely by\ntheir admin or locally. Once the course is available for remote enrolments, we\nwill tell them everything about their users.\nIn Moodle 1.x the returned array used to be indexed by username. The side effect\nof MDL-19219 fix is that we do not need to use such index and therefore we can\nreturn all enrolment records. MNet clients 1.x will only use the last record for\nthe student, if she is enrolled via multiple plugins.','a:2:{s:10:\"parameters\";a:2:{i:0;a:3:{s:4:\"name\";s:8:\"courseid\";s:4:\"type\";s:3:\"int\";s:11:\"description\";s:16:\"ID of our course\";}i:1;a:3:{s:4:\"name\";s:5:\"roles\";s:4:\"type\";s:12:\"string|array\";s:11:\"description\";s:58:\"comma separated list of role shortnames (or array of them)\";}}s:6:\"return\";a:2:{s:4:\"type\";s:5:\"array\";s:11:\"description\";s:0:\"\";}}','enrol.php','enrol_mnet_mnetservice_enrol',0),(15,'fetch_file','portfolio/mahara/lib.php/fetch_file','portfolio','mahara',1,'xmlrpc (mnet) function to get the file.\nreads in the file and returns it base_64 encoded\nso that it can be enrypted by mnet.','a:2:{s:10:\"parameters\";a:1:{i:0;a:3:{s:4:\"name\";s:5:\"token\";s:4:\"type\";s:6:\"string\";s:11:\"description\";s:56:\"the token recieved previously during send_content_intent\";}}s:6:\"return\";a:2:{s:4:\"type\";s:4:\"void\";s:11:\"description\";s:0:\"\";}}','lib.php','portfolio_plugin_mahara',1);
/*!40000 ALTER TABLE `mdl_mnet_rpc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_service`
--

DROP TABLE IF EXISTS `mdl_mnet_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_service` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `description` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `apiversion` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `offer` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='A service is a group of functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_service`
--

LOCK TABLES `mdl_mnet_service` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_service` DISABLE KEYS */;
INSERT INTO `mdl_mnet_service` VALUES (1,'sso_idp','','1',1),(2,'sso_sp','','1',1),(3,'mnet_enrol','','1',1),(4,'pf','','1',1);
/*!40000 ALTER TABLE `mdl_mnet_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_service2rpc`
--

DROP TABLE IF EXISTS `mdl_mnet_service2rpc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_service2rpc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `serviceid` bigint(10) NOT NULL DEFAULT 0,
  `rpcid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnetserv_rpcser_uix` (`rpcid`,`serviceid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Group functions or methods under a service';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_service2rpc`
--

LOCK TABLES `mdl_mnet_service2rpc` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_service2rpc` DISABLE KEYS */;
INSERT INTO `mdl_mnet_service2rpc` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,8),(9,2,9),(10,3,10),(11,3,11),(12,3,12),(13,3,13),(14,3,14),(15,4,15);
/*!40000 ALTER TABLE `mdl_mnet_service2rpc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_session`
--

DROP TABLE IF EXISTS `mdl_mnet_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_session` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `username` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `token` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `mnethostid` bigint(10) NOT NULL DEFAULT 0,
  `useragent` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `confirm_timeout` bigint(10) NOT NULL DEFAULT 0,
  `session_id` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `expires` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnetsess_tok_uix` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Store session data from users migrating to other sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_session`
--

LOCK TABLES `mdl_mnet_session` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_mnet_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnet_sso_access_control`
--

DROP TABLE IF EXISTS `mdl_mnet_sso_access_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnet_sso_access_control` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `mnet_host_id` bigint(10) NOT NULL DEFAULT 0,
  `accessctrl` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'allow',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnetssoaccecont_mneuse_uix` (`mnet_host_id`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Users by host permitted (or not) to login from a remote prov';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnet_sso_access_control`
--

LOCK TABLES `mdl_mnet_sso_access_control` WRITE;
/*!40000 ALTER TABLE `mdl_mnet_sso_access_control` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_mnet_sso_access_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnetservice_enrol_courses`
--

DROP TABLE IF EXISTS `mdl_mnetservice_enrol_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnetservice_enrol_courses` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hostid` bigint(10) NOT NULL,
  `remoteid` bigint(10) NOT NULL,
  `categoryid` bigint(10) NOT NULL,
  `categoryname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `fullname` varchar(254) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `shortname` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `idnumber` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `summary` longtext COLLATE utf8mb4_bin NOT NULL,
  `summaryformat` smallint(3) DEFAULT 0,
  `startdate` bigint(10) NOT NULL,
  `roleid` bigint(10) NOT NULL,
  `rolename` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_mnetenrocour_hosrem_uix` (`hostid`,`remoteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Caches the information fetched via XML-RPC about courses on ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnetservice_enrol_courses`
--

LOCK TABLES `mdl_mnetservice_enrol_courses` WRITE;
/*!40000 ALTER TABLE `mdl_mnetservice_enrol_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_mnetservice_enrol_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_mnetservice_enrol_enrolments`
--

DROP TABLE IF EXISTS `mdl_mnetservice_enrol_enrolments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_mnetservice_enrol_enrolments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hostid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `remotecourseid` bigint(10) NOT NULL,
  `rolename` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `enroltime` bigint(10) NOT NULL DEFAULT 0,
  `enroltype` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_mnetenroenro_use_ix` (`userid`),
  KEY `mdl_mnetenroenro_hos_ix` (`hostid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Caches the information about enrolments of our local users i';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_mnetservice_enrol_enrolments`
--

LOCK TABLES `mdl_mnetservice_enrol_enrolments` WRITE;
/*!40000 ALTER TABLE `mdl_mnetservice_enrol_enrolments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_mnetservice_enrol_enrolments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_modules`
--

DROP TABLE IF EXISTS `mdl_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_modules` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `cron` bigint(10) NOT NULL DEFAULT 0,
  `lastcron` bigint(10) NOT NULL DEFAULT 0,
  `search` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `mdl_modu_nam_ix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='modules available in the site';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_modules`
--

LOCK TABLES `mdl_modules` WRITE;
/*!40000 ALTER TABLE `mdl_modules` DISABLE KEYS */;
INSERT INTO `mdl_modules` VALUES (1,'assign',60,0,'',1),(2,'assignment',60,0,'',0),(3,'book',0,0,'',1),(4,'chat',300,0,'',1),(5,'choice',0,0,'',1),(6,'data',0,0,'',1),(7,'feedback',0,0,'',1),(8,'folder',0,0,'',1),(9,'forum',0,0,'',1),(10,'glossary',0,0,'',1),(11,'imscp',0,0,'',1),(12,'label',0,0,'',1),(13,'lesson',0,0,'',1),(14,'lti',0,0,'',1),(15,'page',0,0,'',1),(16,'quiz',60,0,'',1),(17,'resource',0,0,'',1),(18,'scorm',0,0,'',1),(19,'survey',0,0,'',1),(20,'url',0,0,'',1),(21,'wiki',0,0,'',1),(22,'workshop',60,0,'',1);
/*!40000 ALTER TABLE `mdl_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_my_pages`
--

DROP TABLE IF EXISTS `mdl_my_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_my_pages` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) DEFAULT 0,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `private` tinyint(1) NOT NULL DEFAULT 1,
  `sortorder` mediumint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_mypage_usepri_ix` (`userid`,`private`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Extra user pages for the My Moodle system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_my_pages`
--

LOCK TABLES `mdl_my_pages` WRITE;
/*!40000 ALTER TABLE `mdl_my_pages` DISABLE KEYS */;
INSERT INTO `mdl_my_pages` VALUES (1,NULL,'__default',0,0),(2,NULL,'__default',1,0),(3,2,'__default',1,0),(4,3,'__default',0,0);
/*!40000 ALTER TABLE `mdl_my_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_notifications`
--

DROP TABLE IF EXISTS `mdl_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_notifications` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `useridfrom` bigint(10) NOT NULL,
  `useridto` bigint(10) NOT NULL,
  `subject` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `fullmessage` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `fullmessageformat` tinyint(1) NOT NULL DEFAULT 0,
  `fullmessagehtml` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `smallmessage` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `component` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `eventtype` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `contexturl` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `contexturlname` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `timeread` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_noti_use_ix` (`useridto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores all notifications';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_notifications`
--

LOCK TABLES `mdl_notifications` WRITE;
/*!40000 ALTER TABLE `mdl_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_oauth2_endpoint`
--

DROP TABLE IF EXISTS `mdl_oauth2_endpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_oauth2_endpoint` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `url` longtext COLLATE utf8mb4_bin NOT NULL,
  `issuerid` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_oautendp_iss_ix` (`issuerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Describes the named endpoint for an oauth2 service.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_oauth2_endpoint`
--

LOCK TABLES `mdl_oauth2_endpoint` WRITE;
/*!40000 ALTER TABLE `mdl_oauth2_endpoint` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_oauth2_endpoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_oauth2_issuer`
--

DROP TABLE IF EXISTS `mdl_oauth2_issuer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_oauth2_issuer` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `image` longtext COLLATE utf8mb4_bin NOT NULL,
  `baseurl` longtext COLLATE utf8mb4_bin NOT NULL,
  `clientid` longtext COLLATE utf8mb4_bin NOT NULL,
  `clientsecret` longtext COLLATE utf8mb4_bin NOT NULL,
  `loginscopes` longtext COLLATE utf8mb4_bin NOT NULL,
  `loginscopesoffline` longtext COLLATE utf8mb4_bin NOT NULL,
  `loginparams` longtext COLLATE utf8mb4_bin NOT NULL,
  `loginparamsoffline` longtext COLLATE utf8mb4_bin NOT NULL,
  `alloweddomains` longtext COLLATE utf8mb4_bin NOT NULL,
  `scopessupported` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `enabled` tinyint(2) NOT NULL DEFAULT 1,
  `showonloginpage` tinyint(2) NOT NULL DEFAULT 1,
  `basicauth` tinyint(2) NOT NULL DEFAULT 0,
  `sortorder` bigint(10) NOT NULL,
  `requireconfirmation` tinyint(2) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Details for an oauth 2 connect identity issuer.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_oauth2_issuer`
--

LOCK TABLES `mdl_oauth2_issuer` WRITE;
/*!40000 ALTER TABLE `mdl_oauth2_issuer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_oauth2_issuer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_oauth2_system_account`
--

DROP TABLE IF EXISTS `mdl_oauth2_system_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_oauth2_system_account` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `issuerid` bigint(10) NOT NULL,
  `refreshtoken` longtext COLLATE utf8mb4_bin NOT NULL,
  `grantedscopes` longtext COLLATE utf8mb4_bin NOT NULL,
  `email` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `username` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_oautsystacco_iss_uix` (`issuerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stored details used to get an access token as a system user ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_oauth2_system_account`
--

LOCK TABLES `mdl_oauth2_system_account` WRITE;
/*!40000 ALTER TABLE `mdl_oauth2_system_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_oauth2_system_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_oauth2_user_field_mapping`
--

DROP TABLE IF EXISTS `mdl_oauth2_user_field_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_oauth2_user_field_mapping` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `timemodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `issuerid` bigint(10) NOT NULL,
  `externalfield` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `internalfield` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_oautuserfielmapp_issin_uix` (`issuerid`,`internalfield`),
  KEY `mdl_oautuserfielmapp_iss_ix` (`issuerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Mapping of oauth user fields to moodle fields.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_oauth2_user_field_mapping`
--

LOCK TABLES `mdl_oauth2_user_field_mapping` WRITE;
/*!40000 ALTER TABLE `mdl_oauth2_user_field_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_oauth2_user_field_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_page`
--

DROP TABLE IF EXISTS `mdl_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_page` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `content` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `contentformat` smallint(4) NOT NULL DEFAULT 0,
  `legacyfiles` smallint(4) NOT NULL DEFAULT 0,
  `legacyfileslast` bigint(10) DEFAULT NULL,
  `display` smallint(4) NOT NULL DEFAULT 0,
  `displayoptions` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `revision` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_page_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Each record is one page and its config data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_page`
--

LOCK TABLES `mdl_page` WRITE;
/*!40000 ALTER TABLE `mdl_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_portfolio_instance`
--

DROP TABLE IF EXISTS `mdl_portfolio_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_portfolio_instance` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `plugin` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='base table (not including config data) for instances of port';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_portfolio_instance`
--

LOCK TABLES `mdl_portfolio_instance` WRITE;
/*!40000 ALTER TABLE `mdl_portfolio_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_portfolio_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_portfolio_instance_config`
--

DROP TABLE IF EXISTS `mdl_portfolio_instance_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_portfolio_instance_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `instance` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_portinstconf_nam_ix` (`name`),
  KEY `mdl_portinstconf_ins_ix` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='config for portfolio plugin instances';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_portfolio_instance_config`
--

LOCK TABLES `mdl_portfolio_instance_config` WRITE;
/*!40000 ALTER TABLE `mdl_portfolio_instance_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_portfolio_instance_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_portfolio_instance_user`
--

DROP TABLE IF EXISTS `mdl_portfolio_instance_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_portfolio_instance_user` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `instance` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_portinstuser_ins_ix` (`instance`),
  KEY `mdl_portinstuser_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='user data for portfolio instances.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_portfolio_instance_user`
--

LOCK TABLES `mdl_portfolio_instance_user` WRITE;
/*!40000 ALTER TABLE `mdl_portfolio_instance_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_portfolio_instance_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_portfolio_log`
--

DROP TABLE IF EXISTS `mdl_portfolio_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_portfolio_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `time` bigint(10) NOT NULL,
  `portfolio` bigint(10) NOT NULL,
  `caller_class` varchar(150) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `caller_file` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `caller_component` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `caller_sha1` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `tempdataid` bigint(10) NOT NULL DEFAULT 0,
  `returnurl` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `continueurl` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_portlog_use_ix` (`userid`),
  KEY `mdl_portlog_por_ix` (`portfolio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='log of portfolio transfers (used to later check for duplicat';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_portfolio_log`
--

LOCK TABLES `mdl_portfolio_log` WRITE;
/*!40000 ALTER TABLE `mdl_portfolio_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_portfolio_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_portfolio_mahara_queue`
--

DROP TABLE IF EXISTS `mdl_portfolio_mahara_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_portfolio_mahara_queue` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `transferid` bigint(10) NOT NULL,
  `token` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_portmahaqueu_tok_ix` (`token`),
  KEY `mdl_portmahaqueu_tra_ix` (`transferid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='maps mahara tokens to transfer ids';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_portfolio_mahara_queue`
--

LOCK TABLES `mdl_portfolio_mahara_queue` WRITE;
/*!40000 ALTER TABLE `mdl_portfolio_mahara_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_portfolio_mahara_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_portfolio_tempdata`
--

DROP TABLE IF EXISTS `mdl_portfolio_tempdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_portfolio_tempdata` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `data` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `expirytime` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `instance` bigint(10) DEFAULT 0,
  `queued` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_porttemp_use_ix` (`userid`),
  KEY `mdl_porttemp_ins_ix` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='stores temporary data for portfolio exports. the id of this ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_portfolio_tempdata`
--

LOCK TABLES `mdl_portfolio_tempdata` WRITE;
/*!40000 ALTER TABLE `mdl_portfolio_tempdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_portfolio_tempdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_post`
--

DROP TABLE IF EXISTS `mdl_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_post` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `module` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `moduleid` bigint(10) NOT NULL DEFAULT 0,
  `coursemoduleid` bigint(10) NOT NULL DEFAULT 0,
  `subject` varchar(128) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `summary` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `uniquehash` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `rating` bigint(10) NOT NULL DEFAULT 0,
  `format` bigint(10) NOT NULL DEFAULT 0,
  `summaryformat` tinyint(2) NOT NULL DEFAULT 0,
  `attachment` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `publishstate` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'draft',
  `lastmodified` bigint(10) NOT NULL DEFAULT 0,
  `created` bigint(10) NOT NULL DEFAULT 0,
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_post_iduse_uix` (`id`,`userid`),
  KEY `mdl_post_las_ix` (`lastmodified`),
  KEY `mdl_post_mod_ix` (`module`),
  KEY `mdl_post_sub_ix` (`subject`),
  KEY `mdl_post_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Generic post table to hold data blog entries etc in differen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_post`
--

LOCK TABLES `mdl_post` WRITE;
/*!40000 ALTER TABLE `mdl_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_profiling`
--

DROP TABLE IF EXISTS `mdl_profiling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_profiling` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `runid` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `data` longtext COLLATE utf8mb4_bin NOT NULL,
  `totalexecutiontime` bigint(10) NOT NULL,
  `totalcputime` bigint(10) NOT NULL,
  `totalcalls` bigint(10) NOT NULL,
  `totalmemory` bigint(10) NOT NULL,
  `runreference` tinyint(2) NOT NULL DEFAULT 0,
  `runcomment` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_prof_run_uix` (`runid`),
  KEY `mdl_prof_urlrun_ix` (`url`,`runreference`),
  KEY `mdl_prof_timrun_ix` (`timecreated`,`runreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores the results of all the profiling runs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_profiling`
--

LOCK TABLES `mdl_profiling` WRITE;
/*!40000 ALTER TABLE `mdl_profiling` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_profiling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_qtype_ddimageortext`
--

DROP TABLE IF EXISTS `mdl_qtype_ddimageortext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_qtype_ddimageortext` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `shuffleanswers` smallint(4) NOT NULL DEFAULT 1,
  `correctfeedback` longtext COLLATE utf8mb4_bin NOT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `partiallycorrectfeedback` longtext COLLATE utf8mb4_bin NOT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `incorrectfeedback` longtext COLLATE utf8mb4_bin NOT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_qtypddim_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Defines drag and drop (text or images onto a background imag';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_qtype_ddimageortext`
--

LOCK TABLES `mdl_qtype_ddimageortext` WRITE;
/*!40000 ALTER TABLE `mdl_qtype_ddimageortext` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_qtype_ddimageortext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_qtype_ddimageortext_drags`
--

DROP TABLE IF EXISTS `mdl_qtype_ddimageortext_drags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_qtype_ddimageortext_drags` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `no` bigint(10) NOT NULL DEFAULT 0,
  `draggroup` bigint(10) NOT NULL DEFAULT 0,
  `infinite` smallint(4) NOT NULL DEFAULT 0,
  `label` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_qtypddimdrag_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Images to drag. Actual file names are not stored here we use';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_qtype_ddimageortext_drags`
--

LOCK TABLES `mdl_qtype_ddimageortext_drags` WRITE;
/*!40000 ALTER TABLE `mdl_qtype_ddimageortext_drags` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_qtype_ddimageortext_drags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_qtype_ddimageortext_drops`
--

DROP TABLE IF EXISTS `mdl_qtype_ddimageortext_drops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_qtype_ddimageortext_drops` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `no` bigint(10) NOT NULL DEFAULT 0,
  `xleft` bigint(10) NOT NULL DEFAULT 0,
  `ytop` bigint(10) NOT NULL DEFAULT 0,
  `choice` bigint(10) NOT NULL DEFAULT 0,
  `label` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_qtypddimdrop_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Drop boxes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_qtype_ddimageortext_drops`
--

LOCK TABLES `mdl_qtype_ddimageortext_drops` WRITE;
/*!40000 ALTER TABLE `mdl_qtype_ddimageortext_drops` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_qtype_ddimageortext_drops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_qtype_ddmarker`
--

DROP TABLE IF EXISTS `mdl_qtype_ddmarker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_qtype_ddmarker` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `shuffleanswers` smallint(4) NOT NULL DEFAULT 1,
  `correctfeedback` longtext COLLATE utf8mb4_bin NOT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `partiallycorrectfeedback` longtext COLLATE utf8mb4_bin NOT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `incorrectfeedback` longtext COLLATE utf8mb4_bin NOT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT 0,
  `showmisplaced` smallint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_qtypddma_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Defines drag and drop (text or images onto a background imag';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_qtype_ddmarker`
--

LOCK TABLES `mdl_qtype_ddmarker` WRITE;
/*!40000 ALTER TABLE `mdl_qtype_ddmarker` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_qtype_ddmarker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_qtype_ddmarker_drags`
--

DROP TABLE IF EXISTS `mdl_qtype_ddmarker_drags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_qtype_ddmarker_drags` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `no` bigint(10) NOT NULL DEFAULT 0,
  `label` longtext COLLATE utf8mb4_bin NOT NULL,
  `infinite` smallint(4) NOT NULL DEFAULT 0,
  `noofdrags` bigint(10) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `mdl_qtypddmadrag_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Labels for markers to drag.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_qtype_ddmarker_drags`
--

LOCK TABLES `mdl_qtype_ddmarker_drags` WRITE;
/*!40000 ALTER TABLE `mdl_qtype_ddmarker_drags` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_qtype_ddmarker_drags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_qtype_ddmarker_drops`
--

DROP TABLE IF EXISTS `mdl_qtype_ddmarker_drops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_qtype_ddmarker_drops` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `no` bigint(10) NOT NULL DEFAULT 0,
  `shape` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `coords` longtext COLLATE utf8mb4_bin NOT NULL,
  `choice` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_qtypddmadrop_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='drop regions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_qtype_ddmarker_drops`
--

LOCK TABLES `mdl_qtype_ddmarker_drops` WRITE;
/*!40000 ALTER TABLE `mdl_qtype_ddmarker_drops` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_qtype_ddmarker_drops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_qtype_essay_options`
--

DROP TABLE IF EXISTS `mdl_qtype_essay_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_qtype_essay_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL,
  `responseformat` varchar(16) COLLATE utf8mb4_bin NOT NULL DEFAULT 'editor',
  `responserequired` tinyint(2) NOT NULL DEFAULT 1,
  `responsefieldlines` smallint(4) NOT NULL DEFAULT 15,
  `attachments` smallint(4) NOT NULL DEFAULT 0,
  `attachmentsrequired` smallint(4) NOT NULL DEFAULT 0,
  `graderinfo` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `graderinfoformat` smallint(4) NOT NULL DEFAULT 0,
  `responsetemplate` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `responsetemplateformat` smallint(4) NOT NULL DEFAULT 0,
  `filetypeslist` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_qtypessaopti_que_uix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Extra options for essay questions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_qtype_essay_options`
--

LOCK TABLES `mdl_qtype_essay_options` WRITE;
/*!40000 ALTER TABLE `mdl_qtype_essay_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_qtype_essay_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_qtype_match_options`
--

DROP TABLE IF EXISTS `mdl_qtype_match_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_qtype_match_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `shuffleanswers` smallint(4) NOT NULL DEFAULT 1,
  `correctfeedback` longtext COLLATE utf8mb4_bin NOT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `partiallycorrectfeedback` longtext COLLATE utf8mb4_bin NOT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `incorrectfeedback` longtext COLLATE utf8mb4_bin NOT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_qtypmatcopti_que_uix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Defines the question-type specific options for matching ques';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_qtype_match_options`
--

LOCK TABLES `mdl_qtype_match_options` WRITE;
/*!40000 ALTER TABLE `mdl_qtype_match_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_qtype_match_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_qtype_match_subquestions`
--

DROP TABLE IF EXISTS `mdl_qtype_match_subquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_qtype_match_subquestions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `questiontext` longtext COLLATE utf8mb4_bin NOT NULL,
  `questiontextformat` tinyint(2) NOT NULL DEFAULT 0,
  `answertext` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_qtypmatcsubq_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='The subquestions that make up a matching question';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_qtype_match_subquestions`
--

LOCK TABLES `mdl_qtype_match_subquestions` WRITE;
/*!40000 ALTER TABLE `mdl_qtype_match_subquestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_qtype_match_subquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_qtype_multichoice_options`
--

DROP TABLE IF EXISTS `mdl_qtype_multichoice_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_qtype_multichoice_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `layout` smallint(4) NOT NULL DEFAULT 0,
  `single` smallint(4) NOT NULL DEFAULT 0,
  `shuffleanswers` smallint(4) NOT NULL DEFAULT 1,
  `correctfeedback` longtext COLLATE utf8mb4_bin NOT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `partiallycorrectfeedback` longtext COLLATE utf8mb4_bin NOT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `incorrectfeedback` longtext COLLATE utf8mb4_bin NOT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `answernumbering` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT 'abc',
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_qtypmultopti_que_uix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Options for multiple choice questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_qtype_multichoice_options`
--

LOCK TABLES `mdl_qtype_multichoice_options` WRITE;
/*!40000 ALTER TABLE `mdl_qtype_multichoice_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_qtype_multichoice_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_qtype_randomsamatch_options`
--

DROP TABLE IF EXISTS `mdl_qtype_randomsamatch_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_qtype_randomsamatch_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `choose` bigint(10) NOT NULL DEFAULT 4,
  `subcats` tinyint(2) NOT NULL DEFAULT 1,
  `correctfeedback` longtext COLLATE utf8mb4_bin NOT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `partiallycorrectfeedback` longtext COLLATE utf8mb4_bin NOT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `incorrectfeedback` longtext COLLATE utf8mb4_bin NOT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_qtyprandopti_que_uix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Info about a random short-answer matching question';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_qtype_randomsamatch_options`
--

LOCK TABLES `mdl_qtype_randomsamatch_options` WRITE;
/*!40000 ALTER TABLE `mdl_qtype_randomsamatch_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_qtype_randomsamatch_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_qtype_shortanswer_options`
--

DROP TABLE IF EXISTS `mdl_qtype_shortanswer_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_qtype_shortanswer_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `usecase` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_qtypshoropti_que_uix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Options for short answer questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_qtype_shortanswer_options`
--

LOCK TABLES `mdl_qtype_shortanswer_options` WRITE;
/*!40000 ALTER TABLE `mdl_qtype_shortanswer_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_qtype_shortanswer_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question`
--

DROP TABLE IF EXISTS `mdl_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `category` bigint(10) NOT NULL DEFAULT 0,
  `parent` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `questiontext` longtext COLLATE utf8mb4_bin NOT NULL,
  `questiontextformat` tinyint(2) NOT NULL DEFAULT 0,
  `generalfeedback` longtext COLLATE utf8mb4_bin NOT NULL,
  `generalfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `defaultmark` decimal(12,7) NOT NULL DEFAULT 1.0000000,
  `penalty` decimal(12,7) NOT NULL DEFAULT 0.3333333,
  `qtype` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `length` bigint(10) NOT NULL DEFAULT 1,
  `stamp` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `version` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `createdby` bigint(10) DEFAULT NULL,
  `modifiedby` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_ques_qty_ix` (`qtype`),
  KEY `mdl_ques_cat_ix` (`category`),
  KEY `mdl_ques_par_ix` (`parent`),
  KEY `mdl_ques_cre_ix` (`createdby`),
  KEY `mdl_ques_mod_ix` (`modifiedby`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='The questions themselves';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question`
--

LOCK TABLES `mdl_question` WRITE;
/*!40000 ALTER TABLE `mdl_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_answers`
--

DROP TABLE IF EXISTS `mdl_question_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_answers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT 0,
  `answer` longtext COLLATE utf8mb4_bin NOT NULL,
  `answerformat` tinyint(2) NOT NULL DEFAULT 0,
  `fraction` decimal(12,7) NOT NULL DEFAULT 0.0000000,
  `feedback` longtext COLLATE utf8mb4_bin NOT NULL,
  `feedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_quesansw_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Answers, with a fractional grade (0-1) and feedback';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_answers`
--

LOCK TABLES `mdl_question_answers` WRITE;
/*!40000 ALTER TABLE `mdl_question_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_attempt_step_data`
--

DROP TABLE IF EXISTS `mdl_question_attempt_step_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_attempt_step_data` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `attemptstepid` bigint(10) NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_quesattestepdata_att_ix` (`attemptstepid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Each question_attempt_step has an associative array of the d';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_attempt_step_data`
--

LOCK TABLES `mdl_question_attempt_step_data` WRITE;
/*!40000 ALTER TABLE `mdl_question_attempt_step_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_attempt_step_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_attempt_steps`
--

DROP TABLE IF EXISTS `mdl_question_attempt_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_attempt_steps` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionattemptid` bigint(10) NOT NULL,
  `sequencenumber` bigint(10) NOT NULL,
  `state` varchar(13) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `fraction` decimal(12,7) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `userid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_quesattestep_queseq_uix` (`questionattemptid`,`sequencenumber`),
  KEY `mdl_quesattestep_que_ix` (`questionattemptid`),
  KEY `mdl_quesattestep_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores one step in in a question attempt. As well as the dat';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_attempt_steps`
--

LOCK TABLES `mdl_question_attempt_steps` WRITE;
/*!40000 ALTER TABLE `mdl_question_attempt_steps` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_attempt_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_attempts`
--

DROP TABLE IF EXISTS `mdl_question_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_attempts` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionusageid` bigint(10) NOT NULL,
  `slot` bigint(10) NOT NULL,
  `behaviour` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `questionid` bigint(10) NOT NULL,
  `variant` bigint(10) NOT NULL DEFAULT 1,
  `maxmark` decimal(12,7) NOT NULL,
  `minfraction` decimal(12,7) NOT NULL,
  `maxfraction` decimal(12,7) NOT NULL DEFAULT 1.0000000,
  `flagged` tinyint(1) NOT NULL DEFAULT 0,
  `questionsummary` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `rightanswer` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `responsesummary` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_quesatte_queslo_uix` (`questionusageid`,`slot`),
  KEY `mdl_quesatte_beh_ix` (`behaviour`),
  KEY `mdl_quesatte_que_ix` (`questionid`),
  KEY `mdl_quesatte_que2_ix` (`questionusageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Each row here corresponds to an attempt at one question, as ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_attempts`
--

LOCK TABLES `mdl_question_attempts` WRITE;
/*!40000 ALTER TABLE `mdl_question_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_calculated`
--

DROP TABLE IF EXISTS `mdl_question_calculated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_calculated` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT 0,
  `answer` bigint(10) NOT NULL DEFAULT 0,
  `tolerance` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '0.0',
  `tolerancetype` bigint(10) NOT NULL DEFAULT 1,
  `correctanswerlength` bigint(10) NOT NULL DEFAULT 2,
  `correctanswerformat` bigint(10) NOT NULL DEFAULT 2,
  PRIMARY KEY (`id`),
  KEY `mdl_quescalc_ans_ix` (`answer`),
  KEY `mdl_quescalc_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Options for questions of type calculated';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_calculated`
--

LOCK TABLES `mdl_question_calculated` WRITE;
/*!40000 ALTER TABLE `mdl_question_calculated` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_calculated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_calculated_options`
--

DROP TABLE IF EXISTS `mdl_question_calculated_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_calculated_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT 0,
  `synchronize` tinyint(2) NOT NULL DEFAULT 0,
  `single` smallint(4) NOT NULL DEFAULT 0,
  `shuffleanswers` smallint(4) NOT NULL DEFAULT 0,
  `correctfeedback` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `partiallycorrectfeedback` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `incorrectfeedback` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `answernumbering` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT 'abc',
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_quescalcopti_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Options for questions of type calculated';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_calculated_options`
--

LOCK TABLES `mdl_question_calculated_options` WRITE;
/*!40000 ALTER TABLE `mdl_question_calculated_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_calculated_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_categories`
--

DROP TABLE IF EXISTS `mdl_question_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL DEFAULT 0,
  `info` longtext COLLATE utf8mb4_bin NOT NULL,
  `infoformat` tinyint(2) NOT NULL DEFAULT 0,
  `stamp` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `parent` bigint(10) NOT NULL DEFAULT 0,
  `sortorder` bigint(10) NOT NULL DEFAULT 999,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_quescate_consta_uix` (`contextid`,`stamp`),
  KEY `mdl_quescate_con_ix` (`contextid`),
  KEY `mdl_quescate_par_ix` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Categories are for grouping questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_categories`
--

LOCK TABLES `mdl_question_categories` WRITE;
/*!40000 ALTER TABLE `mdl_question_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_dataset_definitions`
--

DROP TABLE IF EXISTS `mdl_question_dataset_definitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_dataset_definitions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `category` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `type` bigint(10) NOT NULL DEFAULT 0,
  `options` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `itemcount` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_quesdatadefi_cat_ix` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Organises and stores properties for dataset items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_dataset_definitions`
--

LOCK TABLES `mdl_question_dataset_definitions` WRITE;
/*!40000 ALTER TABLE `mdl_question_dataset_definitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_dataset_definitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_dataset_items`
--

DROP TABLE IF EXISTS `mdl_question_dataset_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_dataset_items` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `definition` bigint(10) NOT NULL DEFAULT 0,
  `itemnumber` bigint(10) NOT NULL DEFAULT 0,
  `value` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_quesdataitem_def_ix` (`definition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Individual dataset items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_dataset_items`
--

LOCK TABLES `mdl_question_dataset_items` WRITE;
/*!40000 ALTER TABLE `mdl_question_dataset_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_dataset_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_datasets`
--

DROP TABLE IF EXISTS `mdl_question_datasets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_datasets` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT 0,
  `datasetdefinition` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_quesdata_quedat_ix` (`question`,`datasetdefinition`),
  KEY `mdl_quesdata_que_ix` (`question`),
  KEY `mdl_quesdata_dat_ix` (`datasetdefinition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Many-many relation between questions and dataset definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_datasets`
--

LOCK TABLES `mdl_question_datasets` WRITE;
/*!40000 ALTER TABLE `mdl_question_datasets` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_datasets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_ddwtos`
--

DROP TABLE IF EXISTS `mdl_question_ddwtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_ddwtos` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `shuffleanswers` smallint(4) NOT NULL DEFAULT 1,
  `correctfeedback` longtext COLLATE utf8mb4_bin NOT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `partiallycorrectfeedback` longtext COLLATE utf8mb4_bin NOT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `incorrectfeedback` longtext COLLATE utf8mb4_bin NOT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_quesddwt_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Defines drag and drop (words into sentences) questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_ddwtos`
--

LOCK TABLES `mdl_question_ddwtos` WRITE;
/*!40000 ALTER TABLE `mdl_question_ddwtos` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_ddwtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_gapselect`
--

DROP TABLE IF EXISTS `mdl_question_gapselect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_gapselect` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `shuffleanswers` smallint(4) NOT NULL DEFAULT 1,
  `correctfeedback` longtext COLLATE utf8mb4_bin NOT NULL,
  `correctfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `partiallycorrectfeedback` longtext COLLATE utf8mb4_bin NOT NULL,
  `partiallycorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `incorrectfeedback` longtext COLLATE utf8mb4_bin NOT NULL,
  `incorrectfeedbackformat` tinyint(2) NOT NULL DEFAULT 0,
  `shownumcorrect` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_quesgaps_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Defines select missing words questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_gapselect`
--

LOCK TABLES `mdl_question_gapselect` WRITE;
/*!40000 ALTER TABLE `mdl_question_gapselect` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_gapselect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_hints`
--

DROP TABLE IF EXISTS `mdl_question_hints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_hints` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(10) NOT NULL,
  `hint` longtext COLLATE utf8mb4_bin NOT NULL,
  `hintformat` smallint(4) NOT NULL DEFAULT 0,
  `shownumcorrect` tinyint(1) DEFAULT NULL,
  `clearwrong` tinyint(1) DEFAULT NULL,
  `options` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_queshint_que_ix` (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores the the part of the question definition that gives di';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_hints`
--

LOCK TABLES `mdl_question_hints` WRITE;
/*!40000 ALTER TABLE `mdl_question_hints` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_hints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_multianswer`
--

DROP TABLE IF EXISTS `mdl_question_multianswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_multianswer` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT 0,
  `sequence` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_quesmult_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Options for multianswer questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_multianswer`
--

LOCK TABLES `mdl_question_multianswer` WRITE;
/*!40000 ALTER TABLE `mdl_question_multianswer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_multianswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_numerical`
--

DROP TABLE IF EXISTS `mdl_question_numerical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_numerical` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT 0,
  `answer` bigint(10) NOT NULL DEFAULT 0,
  `tolerance` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`id`),
  KEY `mdl_quesnume_ans_ix` (`answer`),
  KEY `mdl_quesnume_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Options for numerical questions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_numerical`
--

LOCK TABLES `mdl_question_numerical` WRITE;
/*!40000 ALTER TABLE `mdl_question_numerical` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_numerical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_numerical_options`
--

DROP TABLE IF EXISTS `mdl_question_numerical_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_numerical_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT 0,
  `showunits` smallint(4) NOT NULL DEFAULT 0,
  `unitsleft` smallint(4) NOT NULL DEFAULT 0,
  `unitgradingtype` smallint(4) NOT NULL DEFAULT 0,
  `unitpenalty` decimal(12,7) NOT NULL DEFAULT 0.1000000,
  PRIMARY KEY (`id`),
  KEY `mdl_quesnumeopti_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Options for questions of type numerical This table is also u';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_numerical_options`
--

LOCK TABLES `mdl_question_numerical_options` WRITE;
/*!40000 ALTER TABLE `mdl_question_numerical_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_numerical_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_numerical_units`
--

DROP TABLE IF EXISTS `mdl_question_numerical_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_numerical_units` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT 0,
  `multiplier` decimal(38,19) NOT NULL DEFAULT 1.0000000000000000000,
  `unit` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_quesnumeunit_queuni_uix` (`question`,`unit`),
  KEY `mdl_quesnumeunit_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Optional unit options for numerical questions. This table is';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_numerical_units`
--

LOCK TABLES `mdl_question_numerical_units` WRITE;
/*!40000 ALTER TABLE `mdl_question_numerical_units` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_numerical_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_response_analysis`
--

DROP TABLE IF EXISTS `mdl_question_response_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_response_analysis` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hashcode` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `whichtries` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timemodified` bigint(10) NOT NULL,
  `questionid` bigint(10) NOT NULL,
  `variant` bigint(10) DEFAULT NULL,
  `subqid` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `aid` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `response` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `credit` decimal(15,5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Analysis of student responses given to questions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_response_analysis`
--

LOCK TABLES `mdl_question_response_analysis` WRITE;
/*!40000 ALTER TABLE `mdl_question_response_analysis` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_response_analysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_response_count`
--

DROP TABLE IF EXISTS `mdl_question_response_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_response_count` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `analysisid` bigint(10) NOT NULL,
  `try` bigint(10) NOT NULL,
  `rcount` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_quesrespcoun_ana_ix` (`analysisid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Count for each responses for each try at a question.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_response_count`
--

LOCK TABLES `mdl_question_response_count` WRITE;
/*!40000 ALTER TABLE `mdl_question_response_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_response_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_statistics`
--

DROP TABLE IF EXISTS `mdl_question_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_statistics` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hashcode` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timemodified` bigint(10) NOT NULL,
  `questionid` bigint(10) NOT NULL,
  `slot` bigint(10) DEFAULT NULL,
  `subquestion` smallint(4) NOT NULL,
  `variant` bigint(10) DEFAULT NULL,
  `s` bigint(10) NOT NULL DEFAULT 0,
  `effectiveweight` decimal(15,5) DEFAULT NULL,
  `negcovar` tinyint(2) NOT NULL DEFAULT 0,
  `discriminationindex` decimal(15,5) DEFAULT NULL,
  `discriminativeefficiency` decimal(15,5) DEFAULT NULL,
  `sd` decimal(15,10) DEFAULT NULL,
  `facility` decimal(15,10) DEFAULT NULL,
  `subquestions` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `maxmark` decimal(12,7) DEFAULT NULL,
  `positions` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `randomguessscore` decimal(12,7) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Statistics for individual questions used in an activity.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_statistics`
--

LOCK TABLES `mdl_question_statistics` WRITE;
/*!40000 ALTER TABLE `mdl_question_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_truefalse`
--

DROP TABLE IF EXISTS `mdl_question_truefalse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_truefalse` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `question` bigint(10) NOT NULL DEFAULT 0,
  `trueanswer` bigint(10) NOT NULL DEFAULT 0,
  `falseanswer` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_questrue_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Options for True-False questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_truefalse`
--

LOCK TABLES `mdl_question_truefalse` WRITE;
/*!40000 ALTER TABLE `mdl_question_truefalse` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_truefalse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_question_usages`
--

DROP TABLE IF EXISTS `mdl_question_usages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_question_usages` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `component` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `preferredbehaviour` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_quesusag_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='This table''s main purpose it to assign a unique id to each a';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_question_usages`
--

LOCK TABLES `mdl_question_usages` WRITE;
/*!40000 ALTER TABLE `mdl_question_usages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_question_usages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz`
--

DROP TABLE IF EXISTS `mdl_quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_bin NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `timeopen` bigint(10) NOT NULL DEFAULT 0,
  `timeclose` bigint(10) NOT NULL DEFAULT 0,
  `timelimit` bigint(10) NOT NULL DEFAULT 0,
  `overduehandling` varchar(16) COLLATE utf8mb4_bin NOT NULL DEFAULT 'autoabandon',
  `graceperiod` bigint(10) NOT NULL DEFAULT 0,
  `preferredbehaviour` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `canredoquestions` smallint(4) NOT NULL DEFAULT 0,
  `attempts` mediumint(6) NOT NULL DEFAULT 0,
  `attemptonlast` smallint(4) NOT NULL DEFAULT 0,
  `grademethod` smallint(4) NOT NULL DEFAULT 1,
  `decimalpoints` smallint(4) NOT NULL DEFAULT 2,
  `questiondecimalpoints` smallint(4) NOT NULL DEFAULT -1,
  `reviewattempt` mediumint(6) NOT NULL DEFAULT 0,
  `reviewcorrectness` mediumint(6) NOT NULL DEFAULT 0,
  `reviewmarks` mediumint(6) NOT NULL DEFAULT 0,
  `reviewspecificfeedback` mediumint(6) NOT NULL DEFAULT 0,
  `reviewgeneralfeedback` mediumint(6) NOT NULL DEFAULT 0,
  `reviewrightanswer` mediumint(6) NOT NULL DEFAULT 0,
  `reviewoverallfeedback` mediumint(6) NOT NULL DEFAULT 0,
  `questionsperpage` bigint(10) NOT NULL DEFAULT 0,
  `navmethod` varchar(16) COLLATE utf8mb4_bin NOT NULL DEFAULT 'free',
  `shuffleanswers` smallint(4) NOT NULL DEFAULT 0,
  `sumgrades` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `grade` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `password` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `subnet` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `browsersecurity` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `delay1` bigint(10) NOT NULL DEFAULT 0,
  `delay2` bigint(10) NOT NULL DEFAULT 0,
  `showuserpicture` smallint(4) NOT NULL DEFAULT 0,
  `showblocks` smallint(4) NOT NULL DEFAULT 0,
  `completionattemptsexhausted` tinyint(1) DEFAULT 0,
  `completionpass` tinyint(1) DEFAULT 0,
  `allowofflineattempts` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_quiz_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='The settings for each quiz.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz`
--

LOCK TABLES `mdl_quiz` WRITE;
/*!40000 ALTER TABLE `mdl_quiz` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_attempts`
--

DROP TABLE IF EXISTS `mdl_quiz_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_attempts` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `quiz` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `attempt` mediumint(6) NOT NULL DEFAULT 0,
  `uniqueid` bigint(10) NOT NULL DEFAULT 0,
  `layout` longtext COLLATE utf8mb4_bin NOT NULL,
  `currentpage` bigint(10) NOT NULL DEFAULT 0,
  `preview` smallint(3) NOT NULL DEFAULT 0,
  `state` varchar(16) COLLATE utf8mb4_bin NOT NULL DEFAULT 'inprogress',
  `timestart` bigint(10) NOT NULL DEFAULT 0,
  `timefinish` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `timemodifiedoffline` bigint(10) NOT NULL DEFAULT 0,
  `timecheckstate` bigint(10) DEFAULT 0,
  `sumgrades` decimal(10,5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_quizatte_quiuseatt_uix` (`quiz`,`userid`,`attempt`),
  UNIQUE KEY `mdl_quizatte_uni_uix` (`uniqueid`),
  KEY `mdl_quizatte_statim_ix` (`state`,`timecheckstate`),
  KEY `mdl_quizatte_qui_ix` (`quiz`),
  KEY `mdl_quizatte_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores users attempts at quizzes.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_attempts`
--

LOCK TABLES `mdl_quiz_attempts` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_feedback`
--

DROP TABLE IF EXISTS `mdl_quiz_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_feedback` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `quizid` bigint(10) NOT NULL DEFAULT 0,
  `feedbacktext` longtext COLLATE utf8mb4_bin NOT NULL,
  `feedbacktextformat` tinyint(2) NOT NULL DEFAULT 0,
  `mingrade` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `maxgrade` decimal(10,5) NOT NULL DEFAULT 0.00000,
  PRIMARY KEY (`id`),
  KEY `mdl_quizfeed_qui_ix` (`quizid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Feedback given to students based on which grade band their o';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_feedback`
--

LOCK TABLES `mdl_quiz_feedback` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_grades`
--

DROP TABLE IF EXISTS `mdl_quiz_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_grades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `quiz` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `grade` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_quizgrad_use_ix` (`userid`),
  KEY `mdl_quizgrad_qui_ix` (`quiz`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores the overall grade for each user on the quiz, based on';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_grades`
--

LOCK TABLES `mdl_quiz_grades` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_overrides`
--

DROP TABLE IF EXISTS `mdl_quiz_overrides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_overrides` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `quiz` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) DEFAULT NULL,
  `userid` bigint(10) DEFAULT NULL,
  `timeopen` bigint(10) DEFAULT NULL,
  `timeclose` bigint(10) DEFAULT NULL,
  `timelimit` bigint(10) DEFAULT NULL,
  `attempts` mediumint(6) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_quizover_qui_ix` (`quiz`),
  KEY `mdl_quizover_gro_ix` (`groupid`),
  KEY `mdl_quizover_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='The overrides to quiz settings on a per-user and per-group b';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_overrides`
--

LOCK TABLES `mdl_quiz_overrides` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_overrides` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_overrides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_overview_regrades`
--

DROP TABLE IF EXISTS `mdl_quiz_overview_regrades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_overview_regrades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `questionusageid` bigint(10) NOT NULL,
  `slot` bigint(10) NOT NULL,
  `newfraction` decimal(12,7) DEFAULT NULL,
  `oldfraction` decimal(12,7) DEFAULT NULL,
  `regraded` smallint(4) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_quizoverregr_queslo_ix` (`questionusageid`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='This table records which question attempts need regrading an';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_overview_regrades`
--

LOCK TABLES `mdl_quiz_overview_regrades` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_overview_regrades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_overview_regrades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_reports`
--

DROP TABLE IF EXISTS `mdl_quiz_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_reports` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `displayorder` bigint(10) NOT NULL,
  `capability` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_quizrepo_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Lists all the installed quiz reports and their display order';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_reports`
--

LOCK TABLES `mdl_quiz_reports` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_reports` DISABLE KEYS */;
INSERT INTO `mdl_quiz_reports` VALUES (1,'grading',6000,'mod/quiz:grade'),(2,'overview',10000,NULL),(3,'responses',9000,NULL),(4,'statistics',8000,'quiz/statistics:view');
/*!40000 ALTER TABLE `mdl_quiz_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_sections`
--

DROP TABLE IF EXISTS `mdl_quiz_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_sections` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `quizid` bigint(10) NOT NULL,
  `firstslot` bigint(10) NOT NULL,
  `heading` varchar(1333) COLLATE utf8mb4_bin DEFAULT NULL,
  `shufflequestions` smallint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_quizsect_quifir_uix` (`quizid`,`firstslot`),
  KEY `mdl_quizsect_qui_ix` (`quizid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores sections of a quiz with section name (heading), from ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_sections`
--

LOCK TABLES `mdl_quiz_sections` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_slot_tags`
--

DROP TABLE IF EXISTS `mdl_quiz_slot_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_slot_tags` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `slotid` bigint(10) DEFAULT NULL,
  `tagid` bigint(10) DEFAULT NULL,
  `tagname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_quizslottags_slo_ix` (`slotid`),
  KEY `mdl_quizslottags_tag_ix` (`tagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores data about the tags that a question must have so that';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_slot_tags`
--

LOCK TABLES `mdl_quiz_slot_tags` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_slot_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_slot_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_slots`
--

DROP TABLE IF EXISTS `mdl_quiz_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_slots` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `slot` bigint(10) NOT NULL,
  `quizid` bigint(10) NOT NULL DEFAULT 0,
  `page` bigint(10) NOT NULL,
  `requireprevious` smallint(4) NOT NULL DEFAULT 0,
  `questionid` bigint(10) NOT NULL DEFAULT 0,
  `questioncategoryid` bigint(10) DEFAULT NULL,
  `includingsubcategories` smallint(4) DEFAULT NULL,
  `maxmark` decimal(12,7) NOT NULL DEFAULT 0.0000000,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_quizslot_quislo_uix` (`quizid`,`slot`),
  KEY `mdl_quizslot_qui_ix` (`quizid`),
  KEY `mdl_quizslot_que_ix` (`questionid`),
  KEY `mdl_quizslot_que2_ix` (`questioncategoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores the question used in a quiz, with the order, and for ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_slots`
--

LOCK TABLES `mdl_quiz_slots` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_slots` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_quiz_statistics`
--

DROP TABLE IF EXISTS `mdl_quiz_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_quiz_statistics` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `hashcode` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `whichattempts` smallint(4) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `firstattemptscount` bigint(10) NOT NULL,
  `highestattemptscount` bigint(10) NOT NULL,
  `lastattemptscount` bigint(10) NOT NULL,
  `allattemptscount` bigint(10) NOT NULL,
  `firstattemptsavg` decimal(15,5) DEFAULT NULL,
  `highestattemptsavg` decimal(15,5) DEFAULT NULL,
  `lastattemptsavg` decimal(15,5) DEFAULT NULL,
  `allattemptsavg` decimal(15,5) DEFAULT NULL,
  `median` decimal(15,5) DEFAULT NULL,
  `standarddeviation` decimal(15,5) DEFAULT NULL,
  `skewness` decimal(15,10) DEFAULT NULL,
  `kurtosis` decimal(15,5) DEFAULT NULL,
  `cic` decimal(15,10) DEFAULT NULL,
  `errorratio` decimal(15,10) DEFAULT NULL,
  `standarderror` decimal(15,10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='table to cache results from analysis done in statistics repo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_quiz_statistics`
--

LOCK TABLES `mdl_quiz_statistics` WRITE;
/*!40000 ALTER TABLE `mdl_quiz_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_quiz_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_rating`
--

DROP TABLE IF EXISTS `mdl_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_rating` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `component` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `ratingarea` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `scaleid` bigint(10) NOT NULL,
  `rating` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_rati_comratconite_ix` (`component`,`ratingarea`,`contextid`,`itemid`),
  KEY `mdl_rati_con_ix` (`contextid`),
  KEY `mdl_rati_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='moodle ratings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_rating`
--

LOCK TABLES `mdl_rating` WRITE;
/*!40000 ALTER TABLE `mdl_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_registration_hubs`
--

DROP TABLE IF EXISTS `mdl_registration_hubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_registration_hubs` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `hubname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `huburl` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='hub where the site is registered on with their associated to';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_registration_hubs`
--

LOCK TABLES `mdl_registration_hubs` WRITE;
/*!40000 ALTER TABLE `mdl_registration_hubs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_registration_hubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_repository`
--

DROP TABLE IF EXISTS `mdl_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_repository` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `visible` tinyint(1) DEFAULT 1,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='This table contains one entry for every configured external ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_repository`
--

LOCK TABLES `mdl_repository` WRITE;
/*!40000 ALTER TABLE `mdl_repository` DISABLE KEYS */;
INSERT INTO `mdl_repository` VALUES (1,'areafiles',1,1),(2,'local',1,2),(3,'recent',1,3),(4,'upload',1,4),(5,'url',1,5),(6,'user',1,6),(7,'wikimedia',1,7);
/*!40000 ALTER TABLE `mdl_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_repository_instance_config`
--

DROP TABLE IF EXISTS `mdl_repository_instance_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_repository_instance_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `instanceid` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='The config for intances';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_repository_instance_config`
--

LOCK TABLES `mdl_repository_instance_config` WRITE;
/*!40000 ALTER TABLE `mdl_repository_instance_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_repository_instance_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_repository_instances`
--

DROP TABLE IF EXISTS `mdl_repository_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_repository_instances` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `typeid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `contextid` bigint(10) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `timecreated` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `readonly` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='This table contains one entry for every configured external ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_repository_instances`
--

LOCK TABLES `mdl_repository_instances` WRITE;
/*!40000 ALTER TABLE `mdl_repository_instances` DISABLE KEYS */;
INSERT INTO `mdl_repository_instances` VALUES (1,'',1,0,1,NULL,NULL,1543610095,1543610095,0),(2,'',2,0,1,NULL,NULL,1543610104,1543610104,0),(3,'',3,0,1,NULL,NULL,1543610107,1543610107,0),(4,'',4,0,1,NULL,NULL,1543610110,1543610110,0),(5,'',5,0,1,NULL,NULL,1543610111,1543610111,0),(6,'',6,0,1,NULL,NULL,1543610111,1543610111,0),(7,'',7,0,1,NULL,NULL,1543610114,1543610114,0);
/*!40000 ALTER TABLE `mdl_repository_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_repository_onedrive_access`
--

DROP TABLE IF EXISTS `mdl_repository_onedrive_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_repository_onedrive_access` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `timemodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `permissionid` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `itemid` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_repoonedacce_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='List of temporary access grants.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_repository_onedrive_access`
--

LOCK TABLES `mdl_repository_onedrive_access` WRITE;
/*!40000 ALTER TABLE `mdl_repository_onedrive_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_repository_onedrive_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_resource`
--

DROP TABLE IF EXISTS `mdl_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_resource` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `tobemigrated` smallint(4) NOT NULL DEFAULT 0,
  `legacyfiles` smallint(4) NOT NULL DEFAULT 0,
  `legacyfileslast` bigint(10) DEFAULT NULL,
  `display` smallint(4) NOT NULL DEFAULT 0,
  `displayoptions` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `filterfiles` smallint(4) NOT NULL DEFAULT 0,
  `revision` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_reso_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Each record is one resource and its config data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_resource`
--

LOCK TABLES `mdl_resource` WRITE;
/*!40000 ALTER TABLE `mdl_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_resource_old`
--

DROP TABLE IF EXISTS `mdl_resource_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_resource_old` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `type` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `reference` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `alltext` longtext COLLATE utf8mb4_bin NOT NULL,
  `popup` longtext COLLATE utf8mb4_bin NOT NULL,
  `options` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `oldid` bigint(10) NOT NULL,
  `cmid` bigint(10) DEFAULT NULL,
  `newmodule` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `newid` bigint(10) DEFAULT NULL,
  `migrated` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_resoold_old_uix` (`oldid`),
  KEY `mdl_resoold_cmi_ix` (`cmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='backup of all old resource instances from 1.9';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_resource_old`
--

LOCK TABLES `mdl_resource_old` WRITE;
/*!40000 ALTER TABLE `mdl_resource_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_resource_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role`
--

DROP TABLE IF EXISTS `mdl_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `shortname` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_bin NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `archetype` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_role_sor_uix` (`sortorder`),
  UNIQUE KEY `mdl_role_sho_uix` (`shortname`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='moodle roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role`
--

LOCK TABLES `mdl_role` WRITE;
/*!40000 ALTER TABLE `mdl_role` DISABLE KEYS */;
INSERT INTO `mdl_role` VALUES (1,'','manager','',1,'manager'),(2,'','coursecreator','',2,'coursecreator'),(3,'','editingteacher','',3,'editingteacher'),(4,'','teacher','',4,'teacher'),(5,'','student','',5,'student'),(6,'','guest','',6,'guest'),(7,'','user','',7,'user'),(8,'','frontpage','',8,'frontpage');
/*!40000 ALTER TABLE `mdl_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_allow_assign`
--

DROP TABLE IF EXISTS `mdl_role_allow_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role_allow_assign` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL DEFAULT 0,
  `allowassign` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolealloassi_rolall_uix` (`roleid`,`allowassign`),
  KEY `mdl_rolealloassi_rol_ix` (`roleid`),
  KEY `mdl_rolealloassi_all_ix` (`allowassign`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='this defines what role can assign what role';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role_allow_assign`
--

LOCK TABLES `mdl_role_allow_assign` WRITE;
/*!40000 ALTER TABLE `mdl_role_allow_assign` DISABLE KEYS */;
INSERT INTO `mdl_role_allow_assign` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,3,4),(7,3,5);
/*!40000 ALTER TABLE `mdl_role_allow_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_allow_override`
--

DROP TABLE IF EXISTS `mdl_role_allow_override`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role_allow_override` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL DEFAULT 0,
  `allowoverride` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolealloover_rolall_uix` (`roleid`,`allowoverride`),
  KEY `mdl_rolealloover_rol_ix` (`roleid`),
  KEY `mdl_rolealloover_all_ix` (`allowoverride`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='this defines what role can override what role';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role_allow_override`
--

LOCK TABLES `mdl_role_allow_override` WRITE;
/*!40000 ALTER TABLE `mdl_role_allow_override` DISABLE KEYS */;
INSERT INTO `mdl_role_allow_override` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,3,4),(10,3,5),(11,3,6);
/*!40000 ALTER TABLE `mdl_role_allow_override` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_allow_switch`
--

DROP TABLE IF EXISTS `mdl_role_allow_switch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role_allow_switch` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL,
  `allowswitch` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolealloswit_rolall_uix` (`roleid`,`allowswitch`),
  KEY `mdl_rolealloswit_rol_ix` (`roleid`),
  KEY `mdl_rolealloswit_all_ix` (`allowswitch`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='This table stores which which other roles a user is allowed ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role_allow_switch`
--

LOCK TABLES `mdl_role_allow_switch` WRITE;
/*!40000 ALTER TABLE `mdl_role_allow_switch` DISABLE KEYS */;
INSERT INTO `mdl_role_allow_switch` VALUES (1,1,3),(2,1,4),(3,1,5),(4,1,6),(5,3,4),(6,3,5),(7,3,6),(8,4,5),(9,4,6);
/*!40000 ALTER TABLE `mdl_role_allow_switch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_allow_view`
--

DROP TABLE IF EXISTS `mdl_role_allow_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role_allow_view` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL,
  `allowview` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolealloview_rolall_uix` (`roleid`,`allowview`),
  KEY `mdl_rolealloview_rol_ix` (`roleid`),
  KEY `mdl_rolealloview_all_ix` (`allowview`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='This table stores which which other roles a user is allowed ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role_allow_view`
--

LOCK TABLES `mdl_role_allow_view` WRITE;
/*!40000 ALTER TABLE `mdl_role_allow_view` DISABLE KEYS */;
INSERT INTO `mdl_role_allow_view` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,2),(10,2,3),(11,2,4),(12,2,5),(13,3,2),(14,3,3),(15,3,4),(16,3,5),(17,4,2),(18,4,3),(19,4,4),(20,4,5),(21,5,2),(22,5,3),(23,5,4),(24,5,5);
/*!40000 ALTER TABLE `mdl_role_allow_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_assignments`
--

DROP TABLE IF EXISTS `mdl_role_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role_assignments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL DEFAULT 0,
  `contextid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `modifierid` bigint(10) NOT NULL DEFAULT 0,
  `component` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL DEFAULT 0,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_roleassi_sor_ix` (`sortorder`),
  KEY `mdl_roleassi_rolcon_ix` (`roleid`,`contextid`),
  KEY `mdl_roleassi_useconrol_ix` (`userid`,`contextid`,`roleid`),
  KEY `mdl_roleassi_comiteuse_ix` (`component`,`itemid`,`userid`),
  KEY `mdl_roleassi_rol_ix` (`roleid`),
  KEY `mdl_roleassi_con_ix` (`contextid`),
  KEY `mdl_roleassi_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='assigning roles in different context';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role_assignments`
--

LOCK TABLES `mdl_role_assignments` WRITE;
/*!40000 ALTER TABLE `mdl_role_assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_role_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_capabilities`
--

DROP TABLE IF EXISTS `mdl_role_capabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role_capabilities` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL DEFAULT 0,
  `roleid` bigint(10) NOT NULL DEFAULT 0,
  `capability` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `permission` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `modifierid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolecapa_rolconcap_uix` (`roleid`,`contextid`,`capability`),
  KEY `mdl_rolecapa_rol_ix` (`roleid`),
  KEY `mdl_rolecapa_con_ix` (`contextid`),
  KEY `mdl_rolecapa_mod_ix` (`modifierid`),
  KEY `mdl_rolecapa_cap_ix` (`capability`)
) ENGINE=InnoDB AUTO_INCREMENT=1286 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='permission has to be signed, overriding a capability for a p';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role_capabilities`
--

LOCK TABLES `mdl_role_capabilities` WRITE;
/*!40000 ALTER TABLE `mdl_role_capabilities` DISABLE KEYS */;
INSERT INTO `mdl_role_capabilities` VALUES (1,1,1,'moodle/site:configview',1,1543609695,0),(2,1,2,'moodle/site:configview',1,1543609695,0),(3,1,1,'moodle/site:readallmessages',1,1543609695,0),(4,1,3,'moodle/site:readallmessages',1,1543609695,0),(5,1,1,'moodle/site:manageallmessaging',1,1543609695,0),(6,1,1,'moodle/site:deleteanymessage',1,1543609695,0),(7,1,1,'moodle/site:sendmessage',1,1543609695,0),(8,1,7,'moodle/site:sendmessage',1,1543609695,0),(9,1,7,'moodle/site:deleteownmessage',1,1543609696,0),(10,1,1,'moodle/site:approvecourse',1,1543609696,0),(11,1,3,'moodle/backup:backupcourse',1,1543609696,0),(12,1,1,'moodle/backup:backupcourse',1,1543609696,0),(13,1,3,'moodle/backup:backupsection',1,1543609696,0),(14,1,1,'moodle/backup:backupsection',1,1543609696,0),(15,1,3,'moodle/backup:backupactivity',1,1543609696,0),(16,1,1,'moodle/backup:backupactivity',1,1543609696,0),(17,1,3,'moodle/backup:backuptargethub',1,1543609696,0),(18,1,1,'moodle/backup:backuptargethub',1,1543609696,0),(19,1,3,'moodle/backup:backuptargetimport',1,1543609696,0),(20,1,1,'moodle/backup:backuptargetimport',1,1543609696,0),(21,1,3,'moodle/backup:downloadfile',1,1543609697,0),(22,1,1,'moodle/backup:downloadfile',1,1543609697,0),(23,1,3,'moodle/backup:configure',1,1543609697,0),(24,1,1,'moodle/backup:configure',1,1543609697,0),(25,1,1,'moodle/backup:userinfo',1,1543609697,0),(26,1,1,'moodle/backup:anonymise',1,1543609697,0),(27,1,3,'moodle/restore:restorecourse',1,1543609697,0),(28,1,1,'moodle/restore:restorecourse',1,1543609697,0),(29,1,3,'moodle/restore:restoresection',1,1543609697,0),(30,1,1,'moodle/restore:restoresection',1,1543609697,0),(31,1,3,'moodle/restore:restoreactivity',1,1543609697,0),(32,1,1,'moodle/restore:restoreactivity',1,1543609698,0),(33,1,3,'moodle/restore:viewautomatedfilearea',1,1543609698,0),(34,1,1,'moodle/restore:viewautomatedfilearea',1,1543609698,0),(35,1,3,'moodle/restore:restoretargethub',1,1543609698,0),(36,1,1,'moodle/restore:restoretargethub',1,1543609698,0),(37,1,3,'moodle/restore:restoretargetimport',1,1543609698,0),(38,1,1,'moodle/restore:restoretargetimport',1,1543609698,0),(39,1,3,'moodle/restore:uploadfile',1,1543609698,0),(40,1,1,'moodle/restore:uploadfile',1,1543609699,0),(41,1,3,'moodle/restore:configure',1,1543609699,0),(42,1,1,'moodle/restore:configure',1,1543609699,0),(43,1,2,'moodle/restore:rolldates',1,1543609699,0),(44,1,1,'moodle/restore:rolldates',1,1543609699,0),(45,1,1,'moodle/restore:userinfo',1,1543609699,0),(46,1,1,'moodle/restore:createuser',1,1543609699,0),(47,1,3,'moodle/site:manageblocks',1,1543609699,0),(48,1,1,'moodle/site:manageblocks',1,1543609699,0),(49,1,3,'moodle/site:accessallgroups',1,1543609699,0),(50,1,1,'moodle/site:accessallgroups',1,1543609699,0),(51,1,4,'moodle/site:viewfullnames',1,1543609699,0),(52,1,3,'moodle/site:viewfullnames',1,1543609699,0),(53,1,1,'moodle/site:viewfullnames',1,1543609699,0),(54,1,4,'moodle/site:viewuseridentity',1,1543609700,0),(55,1,3,'moodle/site:viewuseridentity',1,1543609700,0),(56,1,1,'moodle/site:viewuseridentity',1,1543609700,0),(57,1,4,'moodle/site:viewreports',1,1543609700,0),(58,1,3,'moodle/site:viewreports',1,1543609700,0),(59,1,1,'moodle/site:viewreports',1,1543609700,0),(60,1,3,'moodle/site:trustcontent',1,1543609700,0),(61,1,1,'moodle/site:trustcontent',1,1543609700,0),(62,1,1,'moodle/site:uploadusers',1,1543609700,0),(63,1,3,'moodle/filter:manage',1,1543609700,0),(64,1,1,'moodle/filter:manage',1,1543609700,0),(65,1,1,'moodle/user:create',1,1543609700,0),(66,1,1,'moodle/user:delete',1,1543609700,0),(67,1,1,'moodle/user:update',1,1543609701,0),(68,1,6,'moodle/user:viewdetails',1,1543609701,0),(69,1,5,'moodle/user:viewdetails',1,1543609701,0),(70,1,4,'moodle/user:viewdetails',1,1543609701,0),(71,1,3,'moodle/user:viewdetails',1,1543609701,0),(72,1,1,'moodle/user:viewdetails',1,1543609701,0),(73,1,1,'moodle/user:viewalldetails',1,1543609701,0),(74,1,1,'moodle/user:viewlastip',1,1543609701,0),(75,1,4,'moodle/user:viewhiddendetails',1,1543609701,0),(76,1,3,'moodle/user:viewhiddendetails',1,1543609701,0),(77,1,1,'moodle/user:viewhiddendetails',1,1543609701,0),(78,1,1,'moodle/user:loginas',1,1543609701,0),(79,1,1,'moodle/user:managesyspages',1,1543609702,0),(80,1,7,'moodle/user:manageownblocks',1,1543609702,0),(81,1,7,'moodle/user:manageownfiles',1,1543609702,0),(82,1,1,'moodle/my:configsyspages',1,1543609702,0),(83,1,3,'moodle/role:assign',1,1543609702,0),(84,1,1,'moodle/role:assign',1,1543609702,0),(85,1,4,'moodle/role:review',1,1543609702,0),(86,1,3,'moodle/role:review',1,1543609702,0),(87,1,1,'moodle/role:review',1,1543609702,0),(88,1,1,'moodle/role:override',1,1543609702,0),(89,1,3,'moodle/role:safeoverride',1,1543609702,0),(90,1,1,'moodle/role:manage',1,1543609702,0),(91,1,3,'moodle/role:switchroles',1,1543609703,0),(92,1,1,'moodle/role:switchroles',1,1543609703,0),(93,1,1,'moodle/category:manage',1,1543609703,0),(94,1,2,'moodle/category:viewhiddencategories',1,1543609703,0),(95,1,1,'moodle/category:viewhiddencategories',1,1543609703,0),(96,1,1,'moodle/cohort:manage',1,1543609703,0),(97,1,1,'moodle/cohort:assign',1,1543609703,0),(98,1,3,'moodle/cohort:view',1,1543609703,0),(99,1,1,'moodle/cohort:view',1,1543609703,0),(100,1,2,'moodle/course:create',1,1543609703,0),(101,1,1,'moodle/course:create',1,1543609703,0),(102,1,7,'moodle/course:request',1,1543609703,0),(103,1,1,'moodle/course:delete',1,1543609704,0),(104,1,3,'moodle/course:update',1,1543609704,0),(105,1,1,'moodle/course:update',1,1543609704,0),(106,1,1,'moodle/course:view',1,1543609704,0),(107,1,3,'moodle/course:enrolreview',1,1543609704,0),(108,1,1,'moodle/course:enrolreview',1,1543609704,0),(109,1,3,'moodle/course:enrolconfig',1,1543609704,0),(110,1,1,'moodle/course:enrolconfig',1,1543609704,0),(111,1,3,'moodle/course:reviewotherusers',1,1543609704,0),(112,1,1,'moodle/course:reviewotherusers',1,1543609704,0),(113,1,4,'moodle/course:bulkmessaging',1,1543609705,0),(114,1,3,'moodle/course:bulkmessaging',1,1543609705,0),(115,1,1,'moodle/course:bulkmessaging',1,1543609705,0),(116,1,4,'moodle/course:viewhiddenuserfields',1,1543609705,0),(117,1,3,'moodle/course:viewhiddenuserfields',1,1543609705,0),(118,1,1,'moodle/course:viewhiddenuserfields',1,1543609705,0),(119,1,2,'moodle/course:viewhiddencourses',1,1543609705,0),(120,1,4,'moodle/course:viewhiddencourses',1,1543609705,0),(121,1,3,'moodle/course:viewhiddencourses',1,1543609705,0),(122,1,1,'moodle/course:viewhiddencourses',1,1543609705,0),(123,1,3,'moodle/course:visibility',1,1543609705,0),(124,1,1,'moodle/course:visibility',1,1543609705,0),(125,1,3,'moodle/course:managefiles',1,1543609705,0),(126,1,1,'moodle/course:managefiles',1,1543609706,0),(127,1,1,'moodle/course:ignoreavailabilityrestrictions',1,1543609706,0),(128,1,2,'moodle/course:ignoreavailabilityrestrictions',1,1543609706,0),(129,1,3,'moodle/course:ignoreavailabilityrestrictions',1,1543609706,0),(130,1,4,'moodle/course:ignoreavailabilityrestrictions',1,1543609706,0),(131,1,3,'moodle/course:manageactivities',1,1543609706,0),(132,1,1,'moodle/course:manageactivities',1,1543609706,0),(133,1,3,'moodle/course:activityvisibility',1,1543609706,0),(134,1,1,'moodle/course:activityvisibility',1,1543609706,0),(135,1,4,'moodle/course:viewhiddenactivities',1,1543609707,0),(136,1,3,'moodle/course:viewhiddenactivities',1,1543609707,0),(137,1,1,'moodle/course:viewhiddenactivities',1,1543609707,0),(138,1,5,'moodle/course:viewparticipants',1,1543609707,0),(139,1,4,'moodle/course:viewparticipants',1,1543609707,0),(140,1,3,'moodle/course:viewparticipants',1,1543609707,0),(141,1,1,'moodle/course:viewparticipants',1,1543609707,0),(142,1,3,'moodle/course:changefullname',1,1543609707,0),(143,1,1,'moodle/course:changefullname',1,1543609707,0),(144,1,3,'moodle/course:changeshortname',1,1543609707,0),(145,1,1,'moodle/course:changeshortname',1,1543609707,0),(146,1,3,'moodle/course:renameroles',1,1543609707,0),(147,1,1,'moodle/course:renameroles',1,1543609708,0),(148,1,3,'moodle/course:changeidnumber',1,1543609708,0),(149,1,1,'moodle/course:changeidnumber',1,1543609708,0),(150,1,3,'moodle/course:changecategory',1,1543609708,0),(151,1,1,'moodle/course:changecategory',1,1543609708,0),(152,1,3,'moodle/course:changesummary',1,1543609708,0),(153,1,1,'moodle/course:changesummary',1,1543609708,0),(154,1,3,'moodle/course:setforcedlanguage',1,1543609708,0),(155,1,1,'moodle/course:setforcedlanguage',1,1543609708,0),(156,1,1,'moodle/site:viewparticipants',1,1543609709,0),(157,1,5,'moodle/course:isincompletionreports',1,1543609709,0),(158,1,5,'moodle/course:viewscales',1,1543609709,0),(159,1,4,'moodle/course:viewscales',1,1543609709,0),(160,1,3,'moodle/course:viewscales',1,1543609709,0),(161,1,1,'moodle/course:viewscales',1,1543609709,0),(162,1,3,'moodle/course:managescales',1,1543609709,0),(163,1,1,'moodle/course:managescales',1,1543609709,0),(164,1,3,'moodle/course:managegroups',1,1543609709,0),(165,1,1,'moodle/course:managegroups',1,1543609709,0),(166,1,3,'moodle/course:reset',1,1543609709,0),(167,1,1,'moodle/course:reset',1,1543609709,0),(168,1,3,'moodle/course:viewsuspendedusers',1,1543609710,0),(169,1,1,'moodle/course:viewsuspendedusers',1,1543609710,0),(170,1,1,'moodle/course:tag',1,1543609710,0),(171,1,3,'moodle/course:tag',1,1543609710,0),(172,1,6,'moodle/blog:view',1,1543609710,0),(173,1,7,'moodle/blog:view',1,1543609710,0),(174,1,5,'moodle/blog:view',1,1543609710,0),(175,1,4,'moodle/blog:view',1,1543609710,0),(176,1,3,'moodle/blog:view',1,1543609710,0),(177,1,1,'moodle/blog:view',1,1543609710,0),(178,1,6,'moodle/blog:search',1,1543609710,0),(179,1,7,'moodle/blog:search',1,1543609710,0),(180,1,5,'moodle/blog:search',1,1543609710,0),(181,1,4,'moodle/blog:search',1,1543609710,0),(182,1,3,'moodle/blog:search',1,1543609710,0),(183,1,1,'moodle/blog:search',1,1543609710,0),(184,1,1,'moodle/blog:viewdrafts',1,1543609710,0),(185,1,7,'moodle/blog:create',1,1543609711,0),(186,1,1,'moodle/blog:create',1,1543609711,0),(187,1,4,'moodle/blog:manageentries',1,1543609711,0),(188,1,3,'moodle/blog:manageentries',1,1543609711,0),(189,1,1,'moodle/blog:manageentries',1,1543609711,0),(190,1,5,'moodle/blog:manageexternal',1,1543609712,0),(191,1,7,'moodle/blog:manageexternal',1,1543609712,0),(192,1,4,'moodle/blog:manageexternal',1,1543609712,0),(193,1,3,'moodle/blog:manageexternal',1,1543609712,0),(194,1,1,'moodle/blog:manageexternal',1,1543609712,0),(195,1,7,'moodle/calendar:manageownentries',1,1543609713,0),(196,1,1,'moodle/calendar:manageownentries',1,1543609713,0),(197,1,4,'moodle/calendar:managegroupentries',1,1543609713,0),(198,1,3,'moodle/calendar:managegroupentries',1,1543609713,0),(199,1,1,'moodle/calendar:managegroupentries',1,1543609714,0),(200,1,4,'moodle/calendar:manageentries',1,1543609714,0),(201,1,3,'moodle/calendar:manageentries',1,1543609714,0),(202,1,1,'moodle/calendar:manageentries',1,1543609714,0),(203,1,1,'moodle/user:editprofile',1,1543609714,0),(204,1,6,'moodle/user:editownprofile',-1000,1543609714,0),(205,1,7,'moodle/user:editownprofile',1,1543609714,0),(206,1,1,'moodle/user:editownprofile',1,1543609714,0),(207,1,6,'moodle/user:changeownpassword',-1000,1543609715,0),(208,1,7,'moodle/user:changeownpassword',1,1543609715,0),(209,1,1,'moodle/user:changeownpassword',1,1543609715,0),(210,1,5,'moodle/user:readuserposts',1,1543609715,0),(211,1,4,'moodle/user:readuserposts',1,1543609715,0),(212,1,3,'moodle/user:readuserposts',1,1543609715,0),(213,1,1,'moodle/user:readuserposts',1,1543609715,0),(214,1,5,'moodle/user:readuserblogs',1,1543609716,0),(215,1,4,'moodle/user:readuserblogs',1,1543609716,0),(216,1,3,'moodle/user:readuserblogs',1,1543609716,0),(217,1,1,'moodle/user:readuserblogs',1,1543609716,0),(218,1,1,'moodle/user:editmessageprofile',1,1543609716,0),(219,1,6,'moodle/user:editownmessageprofile',-1000,1543609716,0),(220,1,7,'moodle/user:editownmessageprofile',1,1543609717,0),(221,1,1,'moodle/user:editownmessageprofile',1,1543609717,0),(222,1,3,'moodle/question:managecategory',1,1543609717,0),(223,1,1,'moodle/question:managecategory',1,1543609718,0),(224,1,3,'moodle/question:add',1,1543609718,0),(225,1,1,'moodle/question:add',1,1543609718,0),(226,1,3,'moodle/question:editmine',1,1543609719,0),(227,1,1,'moodle/question:editmine',1,1543609720,0),(228,1,3,'moodle/question:editall',1,1543609721,0),(229,1,1,'moodle/question:editall',1,1543609721,0),(230,1,3,'moodle/question:viewmine',1,1543609721,0),(231,1,1,'moodle/question:viewmine',1,1543609722,0),(232,1,3,'moodle/question:viewall',1,1543609722,0),(233,1,1,'moodle/question:viewall',1,1543609722,0),(234,1,3,'moodle/question:usemine',1,1543609723,0),(235,1,1,'moodle/question:usemine',1,1543609723,0),(236,1,3,'moodle/question:useall',1,1543609723,0),(237,1,1,'moodle/question:useall',1,1543609723,0),(238,1,3,'moodle/question:movemine',1,1543609723,0),(239,1,1,'moodle/question:movemine',1,1543609724,0),(240,1,3,'moodle/question:moveall',1,1543609724,0),(241,1,1,'moodle/question:moveall',1,1543609724,0),(242,1,1,'moodle/question:config',1,1543609724,0),(243,1,5,'moodle/question:flag',1,1543609724,0),(244,1,4,'moodle/question:flag',1,1543609724,0),(245,1,3,'moodle/question:flag',1,1543609724,0),(246,1,1,'moodle/question:flag',1,1543609724,0),(247,1,3,'moodle/question:tagmine',1,1543609724,0),(248,1,1,'moodle/question:tagmine',1,1543609724,0),(249,1,3,'moodle/question:tagall',1,1543609724,0),(250,1,1,'moodle/question:tagall',1,1543609724,0),(251,1,4,'moodle/site:doclinks',1,1543609724,0),(252,1,3,'moodle/site:doclinks',1,1543609725,0),(253,1,1,'moodle/site:doclinks',1,1543609725,0),(254,1,3,'moodle/course:sectionvisibility',1,1543609725,0),(255,1,1,'moodle/course:sectionvisibility',1,1543609725,0),(256,1,3,'moodle/course:useremail',1,1543609725,0),(257,1,1,'moodle/course:useremail',1,1543609725,0),(258,1,3,'moodle/course:viewhiddensections',1,1543609725,0),(259,1,1,'moodle/course:viewhiddensections',1,1543609725,0),(260,1,3,'moodle/course:setcurrentsection',1,1543609725,0),(261,1,1,'moodle/course:setcurrentsection',1,1543609725,0),(262,1,3,'moodle/course:movesections',1,1543609725,0),(263,1,1,'moodle/course:movesections',1,1543609725,0),(264,1,4,'moodle/grade:viewall',1,1543609725,0),(265,1,3,'moodle/grade:viewall',1,1543609725,0),(266,1,1,'moodle/grade:viewall',1,1543609726,0),(267,1,5,'moodle/grade:view',1,1543609726,0),(268,1,4,'moodle/grade:viewhidden',1,1543609726,0),(269,1,3,'moodle/grade:viewhidden',1,1543609726,0),(270,1,1,'moodle/grade:viewhidden',1,1543609726,0),(271,1,3,'moodle/grade:import',1,1543609726,0),(272,1,1,'moodle/grade:import',1,1543609726,0),(273,1,4,'moodle/grade:export',1,1543609726,0),(274,1,3,'moodle/grade:export',1,1543609726,0),(275,1,1,'moodle/grade:export',1,1543609726,0),(276,1,3,'moodle/grade:manage',1,1543609726,0),(277,1,1,'moodle/grade:manage',1,1543609726,0),(278,1,3,'moodle/grade:edit',1,1543609727,0),(279,1,1,'moodle/grade:edit',1,1543609727,0),(280,1,3,'moodle/grade:managegradingforms',1,1543609727,0),(281,1,1,'moodle/grade:managegradingforms',1,1543609727,0),(282,1,1,'moodle/grade:sharegradingforms',1,1543609727,0),(283,1,1,'moodle/grade:managesharedforms',1,1543609727,0),(284,1,3,'moodle/grade:manageoutcomes',1,1543609727,0),(285,1,1,'moodle/grade:manageoutcomes',1,1543609727,0),(286,1,3,'moodle/grade:manageletters',1,1543609727,0),(287,1,1,'moodle/grade:manageletters',1,1543609727,0),(288,1,3,'moodle/grade:hide',1,1543609727,0),(289,1,1,'moodle/grade:hide',1,1543609727,0),(290,1,3,'moodle/grade:lock',1,1543609728,0),(291,1,1,'moodle/grade:lock',1,1543609728,0),(292,1,3,'moodle/grade:unlock',1,1543609728,0),(293,1,1,'moodle/grade:unlock',1,1543609728,0),(294,1,7,'moodle/my:manageblocks',1,1543609728,0),(295,1,4,'moodle/notes:view',1,1543609728,0),(296,1,3,'moodle/notes:view',1,1543609728,0),(297,1,1,'moodle/notes:view',1,1543609728,0),(298,1,4,'moodle/notes:manage',1,1543609728,0),(299,1,3,'moodle/notes:manage',1,1543609728,0),(300,1,1,'moodle/notes:manage',1,1543609729,0),(301,1,1,'moodle/tag:manage',1,1543609729,0),(302,1,1,'moodle/tag:edit',1,1543609729,0),(303,1,7,'moodle/tag:flag',1,1543609729,0),(304,1,4,'moodle/tag:editblocks',1,1543609729,0),(305,1,3,'moodle/tag:editblocks',1,1543609729,0),(306,1,1,'moodle/tag:editblocks',1,1543609729,0),(307,1,6,'moodle/block:view',1,1543609729,0),(308,1,7,'moodle/block:view',1,1543609729,0),(309,1,5,'moodle/block:view',1,1543609729,0),(310,1,4,'moodle/block:view',1,1543609729,0),(311,1,3,'moodle/block:view',1,1543609729,0),(312,1,3,'moodle/block:edit',1,1543609729,0),(313,1,1,'moodle/block:edit',1,1543609730,0),(314,1,7,'moodle/portfolio:export',1,1543609730,0),(315,1,5,'moodle/portfolio:export',1,1543609730,0),(316,1,4,'moodle/portfolio:export',1,1543609730,0),(317,1,3,'moodle/portfolio:export',1,1543609730,0),(318,1,8,'moodle/comment:view',1,1543609730,0),(319,1,6,'moodle/comment:view',1,1543609730,0),(320,1,7,'moodle/comment:view',1,1543609730,0),(321,1,5,'moodle/comment:view',1,1543609730,0),(322,1,4,'moodle/comment:view',1,1543609730,0),(323,1,3,'moodle/comment:view',1,1543609730,0),(324,1,1,'moodle/comment:view',1,1543609730,0),(325,1,7,'moodle/comment:post',1,1543609730,0),(326,1,5,'moodle/comment:post',1,1543609730,0),(327,1,4,'moodle/comment:post',1,1543609730,0),(328,1,3,'moodle/comment:post',1,1543609730,0),(329,1,1,'moodle/comment:post',1,1543609731,0),(330,1,3,'moodle/comment:delete',1,1543609731,0),(331,1,1,'moodle/comment:delete',1,1543609731,0),(332,1,1,'moodle/webservice:createtoken',1,1543609731,0),(333,1,7,'moodle/webservice:createmobiletoken',1,1543609731,0),(334,1,7,'moodle/rating:view',1,1543609731,0),(335,1,5,'moodle/rating:view',1,1543609731,0),(336,1,4,'moodle/rating:view',1,1543609731,0),(337,1,3,'moodle/rating:view',1,1543609731,0),(338,1,1,'moodle/rating:view',1,1543609731,0),(339,1,7,'moodle/rating:viewany',1,1543609731,0),(340,1,5,'moodle/rating:viewany',1,1543609731,0),(341,1,4,'moodle/rating:viewany',1,1543609731,0),(342,1,3,'moodle/rating:viewany',1,1543609731,0),(343,1,1,'moodle/rating:viewany',1,1543609732,0),(344,1,7,'moodle/rating:viewall',1,1543609732,0),(345,1,5,'moodle/rating:viewall',1,1543609732,0),(346,1,4,'moodle/rating:viewall',1,1543609732,0),(347,1,3,'moodle/rating:viewall',1,1543609732,0),(348,1,1,'moodle/rating:viewall',1,1543609732,0),(349,1,7,'moodle/rating:rate',1,1543609732,0),(350,1,5,'moodle/rating:rate',1,1543609732,0),(351,1,4,'moodle/rating:rate',1,1543609732,0),(352,1,3,'moodle/rating:rate',1,1543609732,0),(353,1,1,'moodle/rating:rate',1,1543609732,0),(354,1,1,'moodle/course:publish',1,1543609733,0),(355,1,4,'moodle/course:markcomplete',1,1543609733,0),(356,1,3,'moodle/course:markcomplete',1,1543609733,0),(357,1,1,'moodle/course:markcomplete',1,1543609733,0),(358,1,4,'moodle/course:overridecompletion',1,1543609733,0),(359,1,3,'moodle/course:overridecompletion',1,1543609733,0),(360,1,1,'moodle/course:overridecompletion',1,1543609733,0),(361,1,1,'moodle/community:add',1,1543609733,0),(362,1,4,'moodle/community:add',1,1543609733,0),(363,1,3,'moodle/community:add',1,1543609733,0),(364,1,1,'moodle/community:download',1,1543609733,0),(365,1,3,'moodle/community:download',1,1543609733,0),(366,1,1,'moodle/badges:manageglobalsettings',1,1543609733,0),(367,1,7,'moodle/badges:viewbadges',1,1543609734,0),(368,1,7,'moodle/badges:manageownbadges',1,1543609734,0),(369,1,7,'moodle/badges:viewotherbadges',1,1543609734,0),(370,1,7,'moodle/badges:earnbadge',1,1543609734,0),(371,1,1,'moodle/badges:createbadge',1,1543609734,0),(372,1,3,'moodle/badges:createbadge',1,1543609734,0),(373,1,1,'moodle/badges:deletebadge',1,1543609734,0),(374,1,3,'moodle/badges:deletebadge',1,1543609734,0),(375,1,1,'moodle/badges:configuredetails',1,1543609734,0),(376,1,3,'moodle/badges:configuredetails',1,1543609734,0),(377,1,1,'moodle/badges:configurecriteria',1,1543609734,0),(378,1,3,'moodle/badges:configurecriteria',1,1543609734,0),(379,1,1,'moodle/badges:configuremessages',1,1543609735,0),(380,1,3,'moodle/badges:configuremessages',1,1543609735,0),(381,1,1,'moodle/badges:awardbadge',1,1543609735,0),(382,1,4,'moodle/badges:awardbadge',1,1543609735,0),(383,1,3,'moodle/badges:awardbadge',1,1543609735,0),(384,1,1,'moodle/badges:revokebadge',1,1543609735,0),(385,1,4,'moodle/badges:revokebadge',1,1543609735,0),(386,1,3,'moodle/badges:revokebadge',1,1543609735,0),(387,1,1,'moodle/badges:viewawarded',1,1543609735,0),(388,1,4,'moodle/badges:viewawarded',1,1543609735,0),(389,1,3,'moodle/badges:viewawarded',1,1543609735,0),(390,1,6,'moodle/search:query',1,1543609735,0),(391,1,7,'moodle/search:query',1,1543609735,0),(392,1,5,'moodle/search:query',1,1543609736,0),(393,1,4,'moodle/search:query',1,1543609736,0),(394,1,3,'moodle/search:query',1,1543609736,0),(395,1,1,'moodle/search:query',1,1543609736,0),(396,1,1,'moodle/competency:competencymanage',1,1543609736,0),(397,1,7,'moodle/competency:competencyview',1,1543609736,0),(398,1,3,'moodle/competency:competencygrade',1,1543609736,0),(399,1,4,'moodle/competency:competencygrade',1,1543609736,0),(400,1,1,'moodle/competency:competencygrade',1,1543609736,0),(401,1,3,'moodle/competency:coursecompetencymanage',1,1543609736,0),(402,1,1,'moodle/competency:coursecompetencymanage',1,1543609736,0),(403,1,1,'moodle/competency:coursecompetencyconfigure',1,1543609736,0),(404,1,5,'moodle/competency:coursecompetencygradable',1,1543609736,0),(405,1,7,'moodle/competency:coursecompetencyview',1,1543609737,0),(406,1,1,'moodle/competency:planmanage',1,1543609737,0),(407,1,1,'moodle/competency:planmanagedraft',1,1543609737,0),(408,1,1,'moodle/competency:planview',1,1543609737,0),(409,1,1,'moodle/competency:planviewdraft',1,1543609737,0),(410,1,7,'moodle/competency:planviewown',1,1543609737,0),(411,1,1,'moodle/competency:planrequestreview',1,1543609738,0),(412,1,7,'moodle/competency:planrequestreviewown',1,1543609738,0),(413,1,1,'moodle/competency:planreview',1,1543609738,0),(414,1,1,'moodle/competency:plancomment',1,1543609738,0),(415,1,7,'moodle/competency:plancommentown',1,1543609738,0),(416,1,1,'moodle/competency:usercompetencyview',1,1543609738,0),(417,1,3,'moodle/competency:usercompetencyview',1,1543609739,0),(418,1,4,'moodle/competency:usercompetencyview',1,1543609739,0),(419,1,1,'moodle/competency:usercompetencyrequestreview',1,1543609739,0),(420,1,7,'moodle/competency:usercompetencyrequestreviewown',1,1543609739,0),(421,1,1,'moodle/competency:usercompetencyreview',1,1543609739,0),(422,1,1,'moodle/competency:usercompetencycomment',1,1543609739,0),(423,1,7,'moodle/competency:usercompetencycommentown',1,1543609739,0),(424,1,1,'moodle/competency:templatemanage',1,1543609739,0),(425,1,4,'moodle/analytics:listinsights',1,1543609739,0),(426,1,3,'moodle/analytics:listinsights',1,1543609739,0),(427,1,1,'moodle/analytics:listinsights',1,1543609739,0),(428,1,1,'moodle/analytics:managemodels',1,1543609739,0),(429,1,1,'moodle/competency:templateview',1,1543609740,0),(430,1,1,'moodle/competency:userevidencemanage',1,1543609740,0),(431,1,7,'moodle/competency:userevidencemanageown',1,1543609740,0),(432,1,1,'moodle/competency:userevidenceview',1,1543609740,0),(433,1,6,'mod/assign:view',1,1543609858,0),(434,1,5,'mod/assign:view',1,1543609858,0),(435,1,4,'mod/assign:view',1,1543609858,0),(436,1,3,'mod/assign:view',1,1543609858,0),(437,1,1,'mod/assign:view',1,1543609858,0),(438,1,5,'mod/assign:submit',1,1543609858,0),(439,1,4,'mod/assign:grade',1,1543609858,0),(440,1,3,'mod/assign:grade',1,1543609858,0),(441,1,1,'mod/assign:grade',1,1543609858,0),(442,1,4,'mod/assign:exportownsubmission',1,1543609858,0),(443,1,3,'mod/assign:exportownsubmission',1,1543609858,0),(444,1,1,'mod/assign:exportownsubmission',1,1543609858,0),(445,1,5,'mod/assign:exportownsubmission',1,1543609859,0),(446,1,3,'mod/assign:addinstance',1,1543609859,0),(447,1,1,'mod/assign:addinstance',1,1543609859,0),(448,1,4,'mod/assign:grantextension',1,1543609859,0),(449,1,3,'mod/assign:grantextension',1,1543609859,0),(450,1,1,'mod/assign:grantextension',1,1543609859,0),(451,1,3,'mod/assign:revealidentities',1,1543609859,0),(452,1,1,'mod/assign:revealidentities',1,1543609859,0),(453,1,3,'mod/assign:reviewgrades',1,1543609859,0),(454,1,1,'mod/assign:reviewgrades',1,1543609859,0),(455,1,3,'mod/assign:releasegrades',1,1543609859,0),(456,1,1,'mod/assign:releasegrades',1,1543609859,0),(457,1,3,'mod/assign:managegrades',1,1543609859,0),(458,1,1,'mod/assign:managegrades',1,1543609859,0),(459,1,3,'mod/assign:manageallocations',1,1543609859,0),(460,1,1,'mod/assign:manageallocations',1,1543609860,0),(461,1,3,'mod/assign:viewgrades',1,1543609860,0),(462,1,1,'mod/assign:viewgrades',1,1543609860,0),(463,1,4,'mod/assign:viewgrades',1,1543609860,0),(464,1,1,'mod/assign:viewblinddetails',1,1543609860,0),(465,1,4,'mod/assign:receivegradernotifications',1,1543609860,0),(466,1,3,'mod/assign:receivegradernotifications',1,1543609860,0),(467,1,1,'mod/assign:receivegradernotifications',1,1543609860,0),(468,1,3,'mod/assign:manageoverrides',1,1543609861,0),(469,1,1,'mod/assign:manageoverrides',1,1543609861,0),(470,1,6,'mod/assignment:view',1,1543609865,0),(471,1,5,'mod/assignment:view',1,1543609865,0),(472,1,4,'mod/assignment:view',1,1543609865,0),(473,1,3,'mod/assignment:view',1,1543609865,0),(474,1,1,'mod/assignment:view',1,1543609865,0),(475,1,3,'mod/assignment:addinstance',1,1543609865,0),(476,1,1,'mod/assignment:addinstance',1,1543609865,0),(477,1,5,'mod/assignment:submit',1,1543609866,0),(478,1,4,'mod/assignment:grade',1,1543609866,0),(479,1,3,'mod/assignment:grade',1,1543609866,0),(480,1,1,'mod/assignment:grade',1,1543609866,0),(481,1,4,'mod/assignment:exportownsubmission',1,1543609866,0),(482,1,3,'mod/assignment:exportownsubmission',1,1543609866,0),(483,1,1,'mod/assignment:exportownsubmission',1,1543609866,0),(484,1,5,'mod/assignment:exportownsubmission',1,1543609866,0),(485,1,3,'mod/book:addinstance',1,1543609868,0),(486,1,1,'mod/book:addinstance',1,1543609868,0),(487,1,6,'mod/book:read',1,1543609868,0),(488,1,8,'mod/book:read',1,1543609868,0),(489,1,5,'mod/book:read',1,1543609868,0),(490,1,4,'mod/book:read',1,1543609868,0),(491,1,3,'mod/book:read',1,1543609868,0),(492,1,1,'mod/book:read',1,1543609868,0),(493,1,4,'mod/book:viewhiddenchapters',1,1543609868,0),(494,1,3,'mod/book:viewhiddenchapters',1,1543609868,0),(495,1,1,'mod/book:viewhiddenchapters',1,1543609868,0),(496,1,3,'mod/book:edit',1,1543609868,0),(497,1,1,'mod/book:edit',1,1543609868,0),(498,1,3,'mod/chat:addinstance',1,1543609871,0),(499,1,1,'mod/chat:addinstance',1,1543609871,0),(500,1,5,'mod/chat:chat',1,1543609871,0),(501,1,4,'mod/chat:chat',1,1543609871,0),(502,1,3,'mod/chat:chat',1,1543609871,0),(503,1,1,'mod/chat:chat',1,1543609871,0),(504,1,5,'mod/chat:readlog',1,1543609871,0),(505,1,4,'mod/chat:readlog',1,1543609871,0),(506,1,3,'mod/chat:readlog',1,1543609871,0),(507,1,1,'mod/chat:readlog',1,1543609871,0),(508,1,4,'mod/chat:deletelog',1,1543609871,0),(509,1,3,'mod/chat:deletelog',1,1543609871,0),(510,1,1,'mod/chat:deletelog',1,1543609871,0),(511,1,4,'mod/chat:exportparticipatedsession',1,1543609871,0),(512,1,3,'mod/chat:exportparticipatedsession',1,1543609871,0),(513,1,1,'mod/chat:exportparticipatedsession',1,1543609872,0),(514,1,4,'mod/chat:exportsession',1,1543609872,0),(515,1,3,'mod/chat:exportsession',1,1543609872,0),(516,1,1,'mod/chat:exportsession',1,1543609872,0),(517,1,7,'mod/chat:view',1,1543609872,0),(518,1,6,'mod/chat:view',1,1543609872,0),(519,1,3,'mod/choice:addinstance',1,1543609875,0),(520,1,1,'mod/choice:addinstance',1,1543609875,0),(521,1,5,'mod/choice:choose',1,1543609875,0),(522,1,4,'mod/choice:choose',1,1543609875,0),(523,1,3,'mod/choice:choose',1,1543609875,0),(524,1,4,'mod/choice:readresponses',1,1543609875,0),(525,1,3,'mod/choice:readresponses',1,1543609875,0),(526,1,1,'mod/choice:readresponses',1,1543609875,0),(527,1,4,'mod/choice:deleteresponses',1,1543609876,0),(528,1,3,'mod/choice:deleteresponses',1,1543609876,0),(529,1,1,'mod/choice:deleteresponses',1,1543609876,0),(530,1,4,'mod/choice:downloadresponses',1,1543609876,0),(531,1,3,'mod/choice:downloadresponses',1,1543609876,0),(532,1,1,'mod/choice:downloadresponses',1,1543609876,0),(533,1,7,'mod/choice:view',1,1543609876,0),(534,1,6,'mod/choice:view',1,1543609876,0),(535,1,3,'mod/data:addinstance',1,1543609878,0),(536,1,1,'mod/data:addinstance',1,1543609878,0),(537,1,8,'mod/data:viewentry',1,1543609878,0),(538,1,6,'mod/data:viewentry',1,1543609878,0),(539,1,5,'mod/data:viewentry',1,1543609878,0),(540,1,4,'mod/data:viewentry',1,1543609878,0),(541,1,3,'mod/data:viewentry',1,1543609878,0),(542,1,1,'mod/data:viewentry',1,1543609878,0),(543,1,5,'mod/data:writeentry',1,1543609878,0),(544,1,4,'mod/data:writeentry',1,1543609878,0),(545,1,3,'mod/data:writeentry',1,1543609878,0),(546,1,1,'mod/data:writeentry',1,1543609878,0),(547,1,5,'mod/data:comment',1,1543609879,0),(548,1,4,'mod/data:comment',1,1543609879,0),(549,1,3,'mod/data:comment',1,1543609879,0),(550,1,1,'mod/data:comment',1,1543609879,0),(551,1,4,'mod/data:rate',1,1543609879,0),(552,1,3,'mod/data:rate',1,1543609879,0),(553,1,1,'mod/data:rate',1,1543609879,0),(554,1,4,'mod/data:viewrating',1,1543609879,0),(555,1,3,'mod/data:viewrating',1,1543609879,0),(556,1,1,'mod/data:viewrating',1,1543609879,0),(557,1,4,'mod/data:viewanyrating',1,1543609879,0),(558,1,3,'mod/data:viewanyrating',1,1543609879,0),(559,1,1,'mod/data:viewanyrating',1,1543609879,0),(560,1,4,'mod/data:viewallratings',1,1543609879,0),(561,1,3,'mod/data:viewallratings',1,1543609879,0),(562,1,1,'mod/data:viewallratings',1,1543609879,0),(563,1,4,'mod/data:approve',1,1543609879,0),(564,1,3,'mod/data:approve',1,1543609879,0),(565,1,1,'mod/data:approve',1,1543609880,0),(566,1,4,'mod/data:manageentries',1,1543609880,0),(567,1,3,'mod/data:manageentries',1,1543609880,0),(568,1,1,'mod/data:manageentries',1,1543609880,0),(569,1,4,'mod/data:managecomments',1,1543609880,0),(570,1,3,'mod/data:managecomments',1,1543609880,0),(571,1,1,'mod/data:managecomments',1,1543609880,0),(572,1,3,'mod/data:managetemplates',1,1543609880,0),(573,1,1,'mod/data:managetemplates',1,1543609880,0),(574,1,4,'mod/data:viewalluserpresets',1,1543609880,0),(575,1,3,'mod/data:viewalluserpresets',1,1543609881,0),(576,1,1,'mod/data:viewalluserpresets',1,1543609881,0),(577,1,1,'mod/data:manageuserpresets',1,1543609881,0),(578,1,1,'mod/data:exportentry',1,1543609881,0),(579,1,4,'mod/data:exportentry',1,1543609881,0),(580,1,3,'mod/data:exportentry',1,1543609881,0),(581,1,1,'mod/data:exportownentry',1,1543609881,0),(582,1,4,'mod/data:exportownentry',1,1543609881,0),(583,1,3,'mod/data:exportownentry',1,1543609881,0),(584,1,5,'mod/data:exportownentry',1,1543609881,0),(585,1,1,'mod/data:exportallentries',1,1543609881,0),(586,1,4,'mod/data:exportallentries',1,1543609881,0),(587,1,3,'mod/data:exportallentries',1,1543609881,0),(588,1,1,'mod/data:exportuserinfo',1,1543609881,0),(589,1,4,'mod/data:exportuserinfo',1,1543609881,0),(590,1,3,'mod/data:exportuserinfo',1,1543609881,0),(591,1,6,'mod/data:view',1,1543609881,0),(592,1,5,'mod/data:view',1,1543609881,0),(593,1,4,'mod/data:view',1,1543609881,0),(594,1,3,'mod/data:view',1,1543609881,0),(595,1,1,'mod/data:view',1,1543609881,0),(596,1,3,'mod/feedback:addinstance',1,1543609886,0),(597,1,1,'mod/feedback:addinstance',1,1543609886,0),(598,1,6,'mod/feedback:view',1,1543609886,0),(599,1,8,'mod/feedback:view',1,1543609886,0),(600,1,5,'mod/feedback:view',1,1543609886,0),(601,1,4,'mod/feedback:view',1,1543609886,0),(602,1,3,'mod/feedback:view',1,1543609886,0),(603,1,1,'mod/feedback:view',1,1543609886,0),(604,1,8,'mod/feedback:complete',1,1543609886,0),(605,1,5,'mod/feedback:complete',1,1543609886,0),(606,1,5,'mod/feedback:viewanalysepage',1,1543609887,0),(607,1,3,'mod/feedback:viewanalysepage',1,1543609887,0),(608,1,1,'mod/feedback:viewanalysepage',1,1543609887,0),(609,1,3,'mod/feedback:deletesubmissions',1,1543609887,0),(610,1,1,'mod/feedback:deletesubmissions',1,1543609887,0),(611,1,1,'mod/feedback:mapcourse',1,1543609887,0),(612,1,3,'mod/feedback:edititems',1,1543609887,0),(613,1,1,'mod/feedback:edititems',1,1543609887,0),(614,1,3,'mod/feedback:createprivatetemplate',1,1543609887,0),(615,1,1,'mod/feedback:createprivatetemplate',1,1543609888,0),(616,1,3,'mod/feedback:createpublictemplate',1,1543609888,0),(617,1,1,'mod/feedback:createpublictemplate',1,1543609888,0),(618,1,3,'mod/feedback:deletetemplate',1,1543609888,0),(619,1,1,'mod/feedback:deletetemplate',1,1543609888,0),(620,1,4,'mod/feedback:viewreports',1,1543609888,0),(621,1,3,'mod/feedback:viewreports',1,1543609888,0),(622,1,1,'mod/feedback:viewreports',1,1543609888,0),(623,1,4,'mod/feedback:receivemail',1,1543609888,0),(624,1,3,'mod/feedback:receivemail',1,1543609888,0),(625,1,3,'mod/folder:addinstance',1,1543609890,0),(626,1,1,'mod/folder:addinstance',1,1543609890,0),(627,1,6,'mod/folder:view',1,1543609891,0),(628,1,7,'mod/folder:view',1,1543609891,0),(629,1,3,'mod/folder:managefiles',1,1543609891,0),(630,1,3,'mod/forum:addinstance',1,1543609896,0),(631,1,1,'mod/forum:addinstance',1,1543609896,0),(632,1,8,'mod/forum:viewdiscussion',1,1543609896,0),(633,1,6,'mod/forum:viewdiscussion',1,1543609896,0),(634,1,5,'mod/forum:viewdiscussion',1,1543609896,0),(635,1,4,'mod/forum:viewdiscussion',1,1543609896,0),(636,1,3,'mod/forum:viewdiscussion',1,1543609896,0),(637,1,1,'mod/forum:viewdiscussion',1,1543609896,0),(638,1,4,'mod/forum:viewhiddentimedposts',1,1543609896,0),(639,1,3,'mod/forum:viewhiddentimedposts',1,1543609896,0),(640,1,1,'mod/forum:viewhiddentimedposts',1,1543609896,0),(641,1,5,'mod/forum:startdiscussion',1,1543609896,0),(642,1,4,'mod/forum:startdiscussion',1,1543609896,0),(643,1,3,'mod/forum:startdiscussion',1,1543609896,0),(644,1,1,'mod/forum:startdiscussion',1,1543609896,0),(645,1,5,'mod/forum:replypost',1,1543609896,0),(646,1,4,'mod/forum:replypost',1,1543609897,0),(647,1,3,'mod/forum:replypost',1,1543609897,0),(648,1,1,'mod/forum:replypost',1,1543609897,0),(649,1,4,'mod/forum:addnews',1,1543609897,0),(650,1,3,'mod/forum:addnews',1,1543609897,0),(651,1,1,'mod/forum:addnews',1,1543609897,0),(652,1,4,'mod/forum:replynews',1,1543609897,0),(653,1,3,'mod/forum:replynews',1,1543609897,0),(654,1,1,'mod/forum:replynews',1,1543609897,0),(655,1,5,'mod/forum:viewrating',1,1543609897,0),(656,1,4,'mod/forum:viewrating',1,1543609897,0),(657,1,3,'mod/forum:viewrating',1,1543609897,0),(658,1,1,'mod/forum:viewrating',1,1543609897,0),(659,1,4,'mod/forum:viewanyrating',1,1543609897,0),(660,1,3,'mod/forum:viewanyrating',1,1543609897,0),(661,1,1,'mod/forum:viewanyrating',1,1543609897,0),(662,1,4,'mod/forum:viewallratings',1,1543609897,0),(663,1,3,'mod/forum:viewallratings',1,1543609897,0),(664,1,1,'mod/forum:viewallratings',1,1543609898,0),(665,1,4,'mod/forum:rate',1,1543609898,0),(666,1,3,'mod/forum:rate',1,1543609898,0),(667,1,1,'mod/forum:rate',1,1543609898,0),(668,1,5,'mod/forum:createattachment',1,1543609898,0),(669,1,4,'mod/forum:createattachment',1,1543609898,0),(670,1,3,'mod/forum:createattachment',1,1543609898,0),(671,1,1,'mod/forum:createattachment',1,1543609898,0),(672,1,5,'mod/forum:deleteownpost',1,1543609898,0),(673,1,4,'mod/forum:deleteownpost',1,1543609898,0),(674,1,3,'mod/forum:deleteownpost',1,1543609898,0),(675,1,1,'mod/forum:deleteownpost',1,1543609898,0),(676,1,4,'mod/forum:deleteanypost',1,1543609898,0),(677,1,3,'mod/forum:deleteanypost',1,1543609898,0),(678,1,1,'mod/forum:deleteanypost',1,1543609898,0),(679,1,4,'mod/forum:splitdiscussions',1,1543609899,0),(680,1,3,'mod/forum:splitdiscussions',1,1543609899,0),(681,1,1,'mod/forum:splitdiscussions',1,1543609899,0),(682,1,4,'mod/forum:movediscussions',1,1543609899,0),(683,1,3,'mod/forum:movediscussions',1,1543609899,0),(684,1,1,'mod/forum:movediscussions',1,1543609899,0),(685,1,4,'mod/forum:pindiscussions',1,1543609899,0),(686,1,3,'mod/forum:pindiscussions',1,1543609899,0),(687,1,1,'mod/forum:pindiscussions',1,1543609899,0),(688,1,4,'mod/forum:editanypost',1,1543609899,0),(689,1,3,'mod/forum:editanypost',1,1543609899,0),(690,1,1,'mod/forum:editanypost',1,1543609899,0),(691,1,4,'mod/forum:viewqandawithoutposting',1,1543609900,0),(692,1,3,'mod/forum:viewqandawithoutposting',1,1543609900,0),(693,1,1,'mod/forum:viewqandawithoutposting',1,1543609900,0),(694,1,4,'mod/forum:viewsubscribers',1,1543609900,0),(695,1,3,'mod/forum:viewsubscribers',1,1543609900,0),(696,1,1,'mod/forum:viewsubscribers',1,1543609900,0),(697,1,4,'mod/forum:managesubscriptions',1,1543609901,0),(698,1,3,'mod/forum:managesubscriptions',1,1543609901,0),(699,1,1,'mod/forum:managesubscriptions',1,1543609901,0),(700,1,4,'mod/forum:postwithoutthrottling',1,1543609901,0),(701,1,3,'mod/forum:postwithoutthrottling',1,1543609902,0),(702,1,1,'mod/forum:postwithoutthrottling',1,1543609902,0),(703,1,4,'mod/forum:exportdiscussion',1,1543609902,0),(704,1,3,'mod/forum:exportdiscussion',1,1543609902,0),(705,1,1,'mod/forum:exportdiscussion',1,1543609902,0),(706,1,4,'mod/forum:exportpost',1,1543609903,0),(707,1,3,'mod/forum:exportpost',1,1543609903,0),(708,1,1,'mod/forum:exportpost',1,1543609903,0),(709,1,4,'mod/forum:exportownpost',1,1543609903,0),(710,1,3,'mod/forum:exportownpost',1,1543609903,0),(711,1,1,'mod/forum:exportownpost',1,1543609904,0),(712,1,5,'mod/forum:exportownpost',1,1543609904,0),(713,1,4,'mod/forum:addquestion',1,1543609905,0),(714,1,3,'mod/forum:addquestion',1,1543609905,0),(715,1,1,'mod/forum:addquestion',1,1543609905,0),(716,1,5,'mod/forum:allowforcesubscribe',1,1543609906,0),(717,1,4,'mod/forum:allowforcesubscribe',1,1543609906,0),(718,1,3,'mod/forum:allowforcesubscribe',1,1543609906,0),(719,1,8,'mod/forum:allowforcesubscribe',1,1543609906,0),(720,1,4,'mod/forum:canposttomygroups',1,1543609906,0),(721,1,3,'mod/forum:canposttomygroups',1,1543609907,0),(722,1,1,'mod/forum:canposttomygroups',1,1543609907,0),(723,1,4,'mod/forum:canoverridediscussionlock',1,1543609907,0),(724,1,3,'mod/forum:canoverridediscussionlock',1,1543609907,0),(725,1,1,'mod/forum:canoverridediscussionlock',1,1543609907,0),(726,1,3,'mod/glossary:addinstance',1,1543609917,0),(727,1,1,'mod/glossary:addinstance',1,1543609917,0),(728,1,8,'mod/glossary:view',1,1543609918,0),(729,1,6,'mod/glossary:view',1,1543609918,0),(730,1,5,'mod/glossary:view',1,1543609918,0),(731,1,4,'mod/glossary:view',1,1543609918,0),(732,1,3,'mod/glossary:view',1,1543609918,0),(733,1,1,'mod/glossary:view',1,1543609918,0),(734,1,5,'mod/glossary:write',1,1543609918,0),(735,1,4,'mod/glossary:write',1,1543609918,0),(736,1,3,'mod/glossary:write',1,1543609918,0),(737,1,1,'mod/glossary:write',1,1543609918,0),(738,1,4,'mod/glossary:manageentries',1,1543609918,0),(739,1,3,'mod/glossary:manageentries',1,1543609918,0),(740,1,1,'mod/glossary:manageentries',1,1543609918,0),(741,1,4,'mod/glossary:managecategories',1,1543609918,0),(742,1,3,'mod/glossary:managecategories',1,1543609918,0),(743,1,1,'mod/glossary:managecategories',1,1543609918,0),(744,1,5,'mod/glossary:comment',1,1543609918,0),(745,1,4,'mod/glossary:comment',1,1543609918,0),(746,1,3,'mod/glossary:comment',1,1543609918,0),(747,1,1,'mod/glossary:comment',1,1543609918,0),(748,1,4,'mod/glossary:managecomments',1,1543609919,0),(749,1,3,'mod/glossary:managecomments',1,1543609919,0),(750,1,1,'mod/glossary:managecomments',1,1543609919,0),(751,1,4,'mod/glossary:import',1,1543609919,0),(752,1,3,'mod/glossary:import',1,1543609919,0),(753,1,1,'mod/glossary:import',1,1543609919,0),(754,1,4,'mod/glossary:export',1,1543609919,0),(755,1,3,'mod/glossary:export',1,1543609919,0),(756,1,1,'mod/glossary:export',1,1543609919,0),(757,1,4,'mod/glossary:approve',1,1543609919,0),(758,1,3,'mod/glossary:approve',1,1543609919,0),(759,1,1,'mod/glossary:approve',1,1543609919,0),(760,1,4,'mod/glossary:rate',1,1543609919,0),(761,1,3,'mod/glossary:rate',1,1543609919,0),(762,1,1,'mod/glossary:rate',1,1543609919,0),(763,1,4,'mod/glossary:viewrating',1,1543609919,0),(764,1,3,'mod/glossary:viewrating',1,1543609919,0),(765,1,1,'mod/glossary:viewrating',1,1543609920,0),(766,1,4,'mod/glossary:viewanyrating',1,1543609920,0),(767,1,3,'mod/glossary:viewanyrating',1,1543609920,0),(768,1,1,'mod/glossary:viewanyrating',1,1543609920,0),(769,1,4,'mod/glossary:viewallratings',1,1543609920,0),(770,1,3,'mod/glossary:viewallratings',1,1543609920,0),(771,1,1,'mod/glossary:viewallratings',1,1543609920,0),(772,1,4,'mod/glossary:exportentry',1,1543609920,0),(773,1,3,'mod/glossary:exportentry',1,1543609920,0),(774,1,1,'mod/glossary:exportentry',1,1543609920,0),(775,1,4,'mod/glossary:exportownentry',1,1543609921,0),(776,1,3,'mod/glossary:exportownentry',1,1543609921,0),(777,1,1,'mod/glossary:exportownentry',1,1543609921,0),(778,1,5,'mod/glossary:exportownentry',1,1543609921,0),(779,1,6,'mod/imscp:view',1,1543609923,0),(780,1,7,'mod/imscp:view',1,1543609923,0),(781,1,3,'mod/imscp:addinstance',1,1543609924,0),(782,1,1,'mod/imscp:addinstance',1,1543609924,0),(783,1,3,'mod/label:addinstance',1,1543609925,0),(784,1,1,'mod/label:addinstance',1,1543609925,0),(785,1,7,'mod/label:view',1,1543609925,0),(786,1,6,'mod/label:view',1,1543609925,0),(787,1,3,'mod/lesson:addinstance',1,1543609929,0),(788,1,1,'mod/lesson:addinstance',1,1543609929,0),(789,1,3,'mod/lesson:edit',1,1543609929,0),(790,1,1,'mod/lesson:edit',1,1543609929,0),(791,1,4,'mod/lesson:grade',1,1543609929,0),(792,1,3,'mod/lesson:grade',1,1543609929,0),(793,1,1,'mod/lesson:grade',1,1543609929,0),(794,1,4,'mod/lesson:viewreports',1,1543609929,0),(795,1,3,'mod/lesson:viewreports',1,1543609929,0),(796,1,1,'mod/lesson:viewreports',1,1543609929,0),(797,1,4,'mod/lesson:manage',1,1543609929,0),(798,1,3,'mod/lesson:manage',1,1543609929,0),(799,1,1,'mod/lesson:manage',1,1543609929,0),(800,1,3,'mod/lesson:manageoverrides',1,1543609929,0),(801,1,1,'mod/lesson:manageoverrides',1,1543609929,0),(802,1,7,'mod/lesson:view',1,1543609930,0),(803,1,6,'mod/lesson:view',1,1543609930,0),(804,1,5,'mod/lti:view',1,1543609934,0),(805,1,4,'mod/lti:view',1,1543609934,0),(806,1,3,'mod/lti:view',1,1543609934,0),(807,1,1,'mod/lti:view',1,1543609934,0),(808,1,3,'mod/lti:addinstance',1,1543609934,0),(809,1,1,'mod/lti:addinstance',1,1543609934,0),(810,1,4,'mod/lti:manage',1,1543609934,0),(811,1,3,'mod/lti:manage',1,1543609935,0),(812,1,1,'mod/lti:manage',1,1543609935,0),(813,1,3,'mod/lti:addcoursetool',1,1543609935,0),(814,1,1,'mod/lti:addcoursetool',1,1543609935,0),(815,1,3,'mod/lti:requesttooladd',1,1543609935,0),(816,1,1,'mod/lti:requesttooladd',1,1543609935,0),(817,1,6,'mod/page:view',1,1543609937,0),(818,1,7,'mod/page:view',1,1543609937,0),(819,1,3,'mod/page:addinstance',1,1543609937,0),(820,1,1,'mod/page:addinstance',1,1543609937,0),(821,1,6,'mod/quiz:view',1,1543609941,0),(822,1,5,'mod/quiz:view',1,1543609941,0),(823,1,4,'mod/quiz:view',1,1543609941,0),(824,1,3,'mod/quiz:view',1,1543609941,0),(825,1,1,'mod/quiz:view',1,1543609941,0),(826,1,3,'mod/quiz:addinstance',1,1543609941,0),(827,1,1,'mod/quiz:addinstance',1,1543609941,0),(828,1,5,'mod/quiz:attempt',1,1543609941,0),(829,1,5,'mod/quiz:reviewmyattempts',1,1543609941,0),(830,1,3,'mod/quiz:manage',1,1543609942,0),(831,1,1,'mod/quiz:manage',1,1543609942,0),(832,1,3,'mod/quiz:manageoverrides',1,1543609942,0),(833,1,1,'mod/quiz:manageoverrides',1,1543609942,0),(834,1,4,'mod/quiz:preview',1,1543609942,0),(835,1,3,'mod/quiz:preview',1,1543609942,0),(836,1,1,'mod/quiz:preview',1,1543609942,0),(837,1,4,'mod/quiz:grade',1,1543609943,0),(838,1,3,'mod/quiz:grade',1,1543609943,0),(839,1,1,'mod/quiz:grade',1,1543609943,0),(840,1,4,'mod/quiz:regrade',1,1543609943,0),(841,1,3,'mod/quiz:regrade',1,1543609943,0),(842,1,1,'mod/quiz:regrade',1,1543609943,0),(843,1,4,'mod/quiz:viewreports',1,1543609943,0),(844,1,3,'mod/quiz:viewreports',1,1543609943,0),(845,1,1,'mod/quiz:viewreports',1,1543609943,0),(846,1,3,'mod/quiz:deleteattempts',1,1543609943,0),(847,1,1,'mod/quiz:deleteattempts',1,1543609943,0),(848,1,6,'mod/resource:view',1,1543609947,0),(849,1,7,'mod/resource:view',1,1543609947,0),(850,1,3,'mod/resource:addinstance',1,1543609948,0),(851,1,1,'mod/resource:addinstance',1,1543609948,0),(852,1,3,'mod/scorm:addinstance',1,1543609952,0),(853,1,1,'mod/scorm:addinstance',1,1543609952,0),(854,1,4,'mod/scorm:viewreport',1,1543609952,0),(855,1,3,'mod/scorm:viewreport',1,1543609952,0),(856,1,1,'mod/scorm:viewreport',1,1543609952,0),(857,1,5,'mod/scorm:skipview',1,1543609952,0),(858,1,5,'mod/scorm:savetrack',1,1543609953,0),(859,1,4,'mod/scorm:savetrack',1,1543609953,0),(860,1,3,'mod/scorm:savetrack',1,1543609953,0),(861,1,1,'mod/scorm:savetrack',1,1543609953,0),(862,1,5,'mod/scorm:viewscores',1,1543609953,0),(863,1,4,'mod/scorm:viewscores',1,1543609953,0),(864,1,3,'mod/scorm:viewscores',1,1543609953,0),(865,1,1,'mod/scorm:viewscores',1,1543609953,0),(866,1,4,'mod/scorm:deleteresponses',1,1543609953,0),(867,1,3,'mod/scorm:deleteresponses',1,1543609953,0),(868,1,1,'mod/scorm:deleteresponses',1,1543609953,0),(869,1,3,'mod/survey:addinstance',1,1543609962,0),(870,1,1,'mod/survey:addinstance',1,1543609962,0),(871,1,5,'mod/survey:participate',1,1543609962,0),(872,1,4,'mod/survey:participate',1,1543609962,0),(873,1,3,'mod/survey:participate',1,1543609963,0),(874,1,1,'mod/survey:participate',1,1543609963,0),(875,1,4,'mod/survey:readresponses',1,1543609963,0),(876,1,3,'mod/survey:readresponses',1,1543609963,0),(877,1,1,'mod/survey:readresponses',1,1543609963,0),(878,1,4,'mod/survey:download',1,1543609963,0),(879,1,3,'mod/survey:download',1,1543609963,0),(880,1,1,'mod/survey:download',1,1543609963,0),(881,1,6,'mod/url:view',1,1543609964,0),(882,1,7,'mod/url:view',1,1543609964,0),(883,1,3,'mod/url:addinstance',1,1543609964,0),(884,1,1,'mod/url:addinstance',1,1543609964,0),(885,1,3,'mod/wiki:addinstance',1,1543609969,0),(886,1,1,'mod/wiki:addinstance',1,1543609969,0),(887,1,6,'mod/wiki:viewpage',1,1543609969,0),(888,1,8,'mod/wiki:viewpage',1,1543609969,0),(889,1,5,'mod/wiki:viewpage',1,1543609969,0),(890,1,4,'mod/wiki:viewpage',1,1543609969,0),(891,1,3,'mod/wiki:viewpage',1,1543609969,0),(892,1,1,'mod/wiki:viewpage',1,1543609969,0),(893,1,5,'mod/wiki:editpage',1,1543609969,0),(894,1,4,'mod/wiki:editpage',1,1543609969,0),(895,1,3,'mod/wiki:editpage',1,1543609969,0),(896,1,1,'mod/wiki:editpage',1,1543609969,0),(897,1,5,'mod/wiki:createpage',1,1543609969,0),(898,1,4,'mod/wiki:createpage',1,1543609969,0),(899,1,3,'mod/wiki:createpage',1,1543609969,0),(900,1,1,'mod/wiki:createpage',1,1543609969,0),(901,1,5,'mod/wiki:viewcomment',1,1543609970,0),(902,1,4,'mod/wiki:viewcomment',1,1543609970,0),(903,1,3,'mod/wiki:viewcomment',1,1543609970,0),(904,1,1,'mod/wiki:viewcomment',1,1543609970,0),(905,1,5,'mod/wiki:editcomment',1,1543609970,0),(906,1,4,'mod/wiki:editcomment',1,1543609970,0),(907,1,3,'mod/wiki:editcomment',1,1543609970,0),(908,1,1,'mod/wiki:editcomment',1,1543609970,0),(909,1,4,'mod/wiki:managecomment',1,1543609970,0),(910,1,3,'mod/wiki:managecomment',1,1543609970,0),(911,1,1,'mod/wiki:managecomment',1,1543609970,0),(912,1,4,'mod/wiki:managefiles',1,1543609970,0),(913,1,3,'mod/wiki:managefiles',1,1543609970,0),(914,1,1,'mod/wiki:managefiles',1,1543609970,0),(915,1,4,'mod/wiki:overridelock',1,1543609970,0),(916,1,3,'mod/wiki:overridelock',1,1543609971,0),(917,1,1,'mod/wiki:overridelock',1,1543609971,0),(918,1,4,'mod/wiki:managewiki',1,1543609971,0),(919,1,3,'mod/wiki:managewiki',1,1543609971,0),(920,1,1,'mod/wiki:managewiki',1,1543609971,0),(921,1,6,'mod/workshop:view',1,1543609974,0),(922,1,5,'mod/workshop:view',1,1543609974,0),(923,1,4,'mod/workshop:view',1,1543609974,0),(924,1,3,'mod/workshop:view',1,1543609974,0),(925,1,1,'mod/workshop:view',1,1543609974,0),(926,1,3,'mod/workshop:addinstance',1,1543609974,0),(927,1,1,'mod/workshop:addinstance',1,1543609974,0),(928,1,4,'mod/workshop:switchphase',1,1543609975,0),(929,1,3,'mod/workshop:switchphase',1,1543609975,0),(930,1,1,'mod/workshop:switchphase',1,1543609975,0),(931,1,3,'mod/workshop:editdimensions',1,1543609975,0),(932,1,1,'mod/workshop:editdimensions',1,1543609975,0),(933,1,5,'mod/workshop:submit',1,1543609975,0),(934,1,5,'mod/workshop:peerassess',1,1543609975,0),(935,1,4,'mod/workshop:manageexamples',1,1543609975,0),(936,1,3,'mod/workshop:manageexamples',1,1543609975,0),(937,1,1,'mod/workshop:manageexamples',1,1543609975,0),(938,1,4,'mod/workshop:allocate',1,1543609975,0),(939,1,3,'mod/workshop:allocate',1,1543609975,0),(940,1,1,'mod/workshop:allocate',1,1543609975,0),(941,1,4,'mod/workshop:publishsubmissions',1,1543609976,0),(942,1,3,'mod/workshop:publishsubmissions',1,1543609976,0),(943,1,1,'mod/workshop:publishsubmissions',1,1543609976,0),(944,1,5,'mod/workshop:viewauthornames',1,1543609976,0),(945,1,4,'mod/workshop:viewauthornames',1,1543609976,0),(946,1,3,'mod/workshop:viewauthornames',1,1543609976,0),(947,1,1,'mod/workshop:viewauthornames',1,1543609976,0),(948,1,4,'mod/workshop:viewreviewernames',1,1543609976,0),(949,1,3,'mod/workshop:viewreviewernames',1,1543609976,0),(950,1,1,'mod/workshop:viewreviewernames',1,1543609976,0),(951,1,4,'mod/workshop:viewallsubmissions',1,1543609976,0),(952,1,3,'mod/workshop:viewallsubmissions',1,1543609976,0),(953,1,1,'mod/workshop:viewallsubmissions',1,1543609976,0),(954,1,5,'mod/workshop:viewpublishedsubmissions',1,1543609976,0),(955,1,4,'mod/workshop:viewpublishedsubmissions',1,1543609976,0),(956,1,3,'mod/workshop:viewpublishedsubmissions',1,1543609976,0),(957,1,1,'mod/workshop:viewpublishedsubmissions',1,1543609976,0),(958,1,5,'mod/workshop:viewauthorpublished',1,1543609976,0),(959,1,4,'mod/workshop:viewauthorpublished',1,1543609977,0),(960,1,3,'mod/workshop:viewauthorpublished',1,1543609977,0),(961,1,1,'mod/workshop:viewauthorpublished',1,1543609977,0),(962,1,4,'mod/workshop:viewallassessments',1,1543609977,0),(963,1,3,'mod/workshop:viewallassessments',1,1543609977,0),(964,1,1,'mod/workshop:viewallassessments',1,1543609977,0),(965,1,4,'mod/workshop:overridegrades',1,1543609977,0),(966,1,3,'mod/workshop:overridegrades',1,1543609977,0),(967,1,1,'mod/workshop:overridegrades',1,1543609977,0),(968,1,4,'mod/workshop:ignoredeadlines',1,1543609977,0),(969,1,3,'mod/workshop:ignoredeadlines',1,1543609977,0),(970,1,1,'mod/workshop:ignoredeadlines',1,1543609977,0),(971,1,4,'mod/workshop:deletesubmissions',1,1543609977,0),(972,1,3,'mod/workshop:deletesubmissions',1,1543609977,0),(973,1,1,'mod/workshop:deletesubmissions',1,1543609977,0),(974,1,1,'mod/workshop:exportsubmissions',1,1543609977,0),(975,1,4,'mod/workshop:exportsubmissions',1,1543609977,0),(976,1,3,'mod/workshop:exportsubmissions',1,1543609977,0),(977,1,5,'mod/workshop:exportsubmissions',1,1543609977,0),(978,1,7,'auth/oauth2:managelinkedlogins',1,1543609988,0),(979,1,1,'enrol/category:config',1,1543609990,0),(980,1,3,'enrol/category:config',1,1543609990,0),(981,1,3,'enrol/cohort:config',1,1543609991,0),(982,1,1,'enrol/cohort:config',1,1543609991,0),(983,1,1,'enrol/cohort:unenrol',1,1543609991,0),(984,1,1,'enrol/database:unenrol',1,1543609992,0),(985,1,1,'enrol/database:config',1,1543609992,0),(986,1,3,'enrol/database:config',1,1543609992,0),(987,1,1,'enrol/guest:config',1,1543609994,0),(988,1,3,'enrol/guest:config',1,1543609994,0),(989,1,1,'enrol/imsenterprise:config',1,1543609995,0),(990,1,3,'enrol/imsenterprise:config',1,1543609995,0),(991,1,1,'enrol/ldap:manage',1,1543609995,0),(992,1,1,'enrol/lti:config',1,1543610000,0),(993,1,3,'enrol/lti:config',1,1543610000,0),(994,1,1,'enrol/lti:unenrol',1,1543610000,0),(995,1,3,'enrol/lti:unenrol',1,1543610000,0),(996,1,1,'enrol/manual:config',1,1543610001,0),(997,1,1,'enrol/manual:enrol',1,1543610001,0),(998,1,3,'enrol/manual:enrol',1,1543610001,0),(999,1,1,'enrol/manual:manage',1,1543610001,0),(1000,1,3,'enrol/manual:manage',1,1543610001,0),(1001,1,1,'enrol/manual:unenrol',1,1543610001,0),(1002,1,3,'enrol/manual:unenrol',1,1543610001,0),(1003,1,1,'enrol/meta:config',1,1543610002,0),(1004,1,3,'enrol/meta:config',1,1543610002,0),(1005,1,1,'enrol/meta:selectaslinked',1,1543610002,0),(1006,1,1,'enrol/meta:unenrol',1,1543610002,0),(1007,1,1,'enrol/mnet:config',1,1543610003,0),(1008,1,3,'enrol/mnet:config',1,1543610003,0),(1009,1,1,'enrol/paypal:config',1,1543610005,0),(1010,1,1,'enrol/paypal:manage',1,1543610005,0),(1011,1,3,'enrol/paypal:manage',1,1543610005,0),(1012,1,1,'enrol/paypal:unenrol',1,1543610005,0),(1013,1,3,'enrol/self:config',1,1543610006,0),(1014,1,1,'enrol/self:config',1,1543610006,0),(1015,1,3,'enrol/self:manage',1,1543610006,0),(1016,1,1,'enrol/self:manage',1,1543610006,0),(1017,1,5,'enrol/self:unenrolself',1,1543610006,0),(1018,1,3,'enrol/self:unenrol',1,1543610006,0),(1019,1,1,'enrol/self:unenrol',1,1543610006,0),(1020,1,7,'message/airnotifier:managedevice',1,1543610008,0),(1021,1,3,'block/activity_modules:addinstance',1,1543610012,0),(1022,1,1,'block/activity_modules:addinstance',1,1543610012,0),(1023,1,3,'block/activity_results:addinstance',1,1543610013,0),(1024,1,1,'block/activity_results:addinstance',1,1543610013,0),(1025,1,7,'block/admin_bookmarks:myaddinstance',1,1543610013,0),(1026,1,3,'block/admin_bookmarks:addinstance',1,1543610013,0),(1027,1,1,'block/admin_bookmarks:addinstance',1,1543610014,0),(1028,1,3,'block/badges:addinstance',1,1543610014,0),(1029,1,1,'block/badges:addinstance',1,1543610014,0),(1030,1,7,'block/badges:myaddinstance',1,1543610015,0),(1031,1,3,'block/blog_menu:addinstance',1,1543610015,0),(1032,1,1,'block/blog_menu:addinstance',1,1543610015,0),(1033,1,3,'block/blog_recent:addinstance',1,1543610016,0),(1034,1,1,'block/blog_recent:addinstance',1,1543610016,0),(1035,1,3,'block/blog_tags:addinstance',1,1543610017,0),(1036,1,1,'block/blog_tags:addinstance',1,1543610017,0),(1037,1,7,'block/calendar_month:myaddinstance',1,1543610017,0),(1038,1,3,'block/calendar_month:addinstance',1,1543610017,0),(1039,1,1,'block/calendar_month:addinstance',1,1543610017,0),(1040,1,7,'block/calendar_upcoming:myaddinstance',1,1543610018,0),(1041,1,3,'block/calendar_upcoming:addinstance',1,1543610018,0),(1042,1,1,'block/calendar_upcoming:addinstance',1,1543610018,0),(1043,1,7,'block/comments:myaddinstance',1,1543610018,0),(1044,1,3,'block/comments:addinstance',1,1543610019,0),(1045,1,1,'block/comments:addinstance',1,1543610019,0),(1046,1,7,'block/community:myaddinstance',1,1543610020,0),(1047,1,3,'block/community:addinstance',1,1543610020,0),(1048,1,1,'block/community:addinstance',1,1543610020,0),(1049,1,3,'block/completionstatus:addinstance',1,1543610020,0),(1050,1,1,'block/completionstatus:addinstance',1,1543610020,0),(1051,1,7,'block/course_list:myaddinstance',1,1543610021,0),(1052,1,3,'block/course_list:addinstance',1,1543610021,0),(1053,1,1,'block/course_list:addinstance',1,1543610021,0),(1054,1,3,'block/course_summary:addinstance',1,1543610021,0),(1055,1,1,'block/course_summary:addinstance',1,1543610021,0),(1056,1,3,'block/feedback:addinstance',1,1543610022,0),(1057,1,1,'block/feedback:addinstance',1,1543610022,0),(1058,1,7,'block/globalsearch:myaddinstance',1,1543610022,0),(1059,1,3,'block/globalsearch:addinstance',1,1543610023,0),(1060,1,1,'block/globalsearch:addinstance',1,1543610023,0),(1061,1,7,'block/glossary_random:myaddinstance',1,1543610023,0),(1062,1,3,'block/glossary_random:addinstance',1,1543610023,0),(1063,1,1,'block/glossary_random:addinstance',1,1543610023,0),(1064,1,7,'block/html:myaddinstance',1,1543610025,0),(1065,1,3,'block/html:addinstance',1,1543610025,0),(1066,1,1,'block/html:addinstance',1,1543610025,0),(1067,1,3,'block/login:addinstance',1,1543610026,0),(1068,1,1,'block/login:addinstance',1,1543610026,0),(1069,1,3,'block/lp:addinstance',1,1543610026,0),(1070,1,1,'block/lp:addinstance',1,1543610026,0),(1071,1,7,'block/lp:myaddinstance',1,1543610026,0),(1072,1,7,'block/lp:view',1,1543610026,0),(1073,1,7,'block/mentees:myaddinstance',1,1543610027,0),(1074,1,3,'block/mentees:addinstance',1,1543610027,0),(1075,1,1,'block/mentees:addinstance',1,1543610027,0),(1076,1,7,'block/mnet_hosts:myaddinstance',1,1543610027,0),(1077,1,3,'block/mnet_hosts:addinstance',1,1543610028,0),(1078,1,1,'block/mnet_hosts:addinstance',1,1543610028,0),(1079,1,7,'block/myoverview:myaddinstance',1,1543610028,0),(1080,1,3,'block/myoverview:addinstance',1,1543610028,0),(1081,1,1,'block/myoverview:addinstance',1,1543610028,0),(1082,1,7,'block/myprofile:myaddinstance',1,1543610029,0),(1083,1,3,'block/myprofile:addinstance',1,1543610029,0),(1084,1,1,'block/myprofile:addinstance',1,1543610029,0),(1085,1,7,'block/navigation:myaddinstance',1,1543610030,0),(1086,1,3,'block/navigation:addinstance',1,1543610030,0),(1087,1,1,'block/navigation:addinstance',1,1543610030,0),(1088,1,7,'block/news_items:myaddinstance',1,1543610031,0),(1089,1,3,'block/news_items:addinstance',1,1543610031,0),(1090,1,1,'block/news_items:addinstance',1,1543610031,0),(1091,1,7,'block/online_users:myaddinstance',1,1543610031,0),(1092,1,3,'block/online_users:addinstance',1,1543610031,0),(1093,1,1,'block/online_users:addinstance',1,1543610032,0),(1094,1,7,'block/online_users:viewlist',1,1543610032,0),(1095,1,6,'block/online_users:viewlist',1,1543610032,0),(1096,1,5,'block/online_users:viewlist',1,1543610032,0),(1097,1,4,'block/online_users:viewlist',1,1543610032,0),(1098,1,3,'block/online_users:viewlist',1,1543610032,0),(1099,1,1,'block/online_users:viewlist',1,1543610032,0),(1100,1,3,'block/participants:addinstance',1,1543610033,0),(1101,1,1,'block/participants:addinstance',1,1543610033,0),(1102,1,7,'block/private_files:myaddinstance',1,1543610034,0),(1103,1,3,'block/private_files:addinstance',1,1543610034,0),(1104,1,1,'block/private_files:addinstance',1,1543610034,0),(1105,1,3,'block/quiz_results:addinstance',1,1543610034,0),(1106,1,1,'block/quiz_results:addinstance',1,1543610034,0),(1107,1,3,'block/recent_activity:addinstance',1,1543610036,0),(1108,1,1,'block/recent_activity:addinstance',1,1543610036,0),(1109,1,7,'block/recent_activity:viewaddupdatemodule',1,1543610036,0),(1110,1,7,'block/recent_activity:viewdeletemodule',1,1543610036,0),(1111,1,7,'block/rss_client:myaddinstance',1,1543610037,0),(1112,1,3,'block/rss_client:addinstance',1,1543610037,0),(1113,1,1,'block/rss_client:addinstance',1,1543610037,0),(1114,1,4,'block/rss_client:manageownfeeds',1,1543610037,0),(1115,1,3,'block/rss_client:manageownfeeds',1,1543610037,0),(1116,1,1,'block/rss_client:manageownfeeds',1,1543610037,0),(1117,1,1,'block/rss_client:manageanyfeeds',1,1543610037,0),(1118,1,3,'block/search_forums:addinstance',1,1543610038,0),(1119,1,1,'block/search_forums:addinstance',1,1543610039,0),(1120,1,3,'block/section_links:addinstance',1,1543610039,0),(1121,1,1,'block/section_links:addinstance',1,1543610039,0),(1122,1,3,'block/selfcompletion:addinstance',1,1543610040,0),(1123,1,1,'block/selfcompletion:addinstance',1,1543610040,0),(1124,1,7,'block/settings:myaddinstance',1,1543610040,0),(1125,1,3,'block/settings:addinstance',1,1543610040,0),(1126,1,1,'block/settings:addinstance',1,1543610040,0),(1127,1,3,'block/site_main_menu:addinstance',1,1543610041,0),(1128,1,1,'block/site_main_menu:addinstance',1,1543610041,0),(1129,1,3,'block/social_activities:addinstance',1,1543610041,0),(1130,1,1,'block/social_activities:addinstance',1,1543610042,0),(1131,1,3,'block/tag_flickr:addinstance',1,1543610043,0),(1132,1,1,'block/tag_flickr:addinstance',1,1543610043,0),(1133,1,3,'block/tag_youtube:addinstance',1,1543610044,0),(1134,1,1,'block/tag_youtube:addinstance',1,1543610044,0),(1135,1,7,'block/tags:myaddinstance',1,1543610044,0),(1136,1,3,'block/tags:addinstance',1,1543610044,0),(1137,1,1,'block/tags:addinstance',1,1543610044,0),(1138,1,4,'report/completion:view',1,1543610063,0),(1139,1,3,'report/completion:view',1,1543610063,0),(1140,1,1,'report/completion:view',1,1543610063,0),(1141,1,4,'report/courseoverview:view',1,1543610064,0),(1142,1,3,'report/courseoverview:view',1,1543610064,0),(1143,1,1,'report/courseoverview:view',1,1543610064,0),(1144,1,4,'report/log:view',1,1543610066,0),(1145,1,3,'report/log:view',1,1543610066,0),(1146,1,1,'report/log:view',1,1543610066,0),(1147,1,4,'report/log:viewtoday',1,1543610066,0),(1148,1,3,'report/log:viewtoday',1,1543610066,0),(1149,1,1,'report/log:viewtoday',1,1543610066,0),(1150,1,4,'report/loglive:view',1,1543610067,0),(1151,1,3,'report/loglive:view',1,1543610067,0),(1152,1,1,'report/loglive:view',1,1543610067,0),(1153,1,4,'report/outline:view',1,1543610068,0),(1154,1,3,'report/outline:view',1,1543610068,0),(1155,1,1,'report/outline:view',1,1543610068,0),(1156,1,4,'report/outline:viewuserreport',1,1543610069,0),(1157,1,3,'report/outline:viewuserreport',1,1543610069,0),(1158,1,1,'report/outline:viewuserreport',1,1543610069,0),(1159,1,4,'report/participation:view',1,1543610069,0),(1160,1,3,'report/participation:view',1,1543610069,0),(1161,1,1,'report/participation:view',1,1543610069,0),(1162,1,1,'report/performance:view',1,1543610070,0),(1163,1,4,'report/progress:view',1,1543610070,0),(1164,1,3,'report/progress:view',1,1543610070,0),(1165,1,1,'report/progress:view',1,1543610070,0),(1166,1,1,'report/security:view',1,1543610071,0),(1167,1,4,'report/stats:view',1,1543610073,0),(1168,1,3,'report/stats:view',1,1543610073,0),(1169,1,1,'report/stats:view',1,1543610073,0),(1170,1,6,'report/usersessions:manageownsessions',-1000,1543610073,0),(1171,1,7,'report/usersessions:manageownsessions',1,1543610073,0),(1172,1,1,'report/usersessions:manageownsessions',1,1543610073,0),(1173,1,4,'gradeexport/ods:view',1,1543610074,0),(1174,1,3,'gradeexport/ods:view',1,1543610074,0),(1175,1,1,'gradeexport/ods:view',1,1543610074,0),(1176,1,1,'gradeexport/ods:publish',1,1543610074,0),(1177,1,4,'gradeexport/txt:view',1,1543610075,0),(1178,1,3,'gradeexport/txt:view',1,1543610075,0),(1179,1,1,'gradeexport/txt:view',1,1543610075,0),(1180,1,1,'gradeexport/txt:publish',1,1543610075,0),(1181,1,4,'gradeexport/xls:view',1,1543610075,0),(1182,1,3,'gradeexport/xls:view',1,1543610076,0),(1183,1,1,'gradeexport/xls:view',1,1543610076,0),(1184,1,1,'gradeexport/xls:publish',1,1543610076,0),(1185,1,4,'gradeexport/xml:view',1,1543610076,0),(1186,1,3,'gradeexport/xml:view',1,1543610076,0),(1187,1,1,'gradeexport/xml:view',1,1543610076,0),(1188,1,1,'gradeexport/xml:publish',1,1543610076,0),(1189,1,3,'gradeimport/csv:view',1,1543610077,0),(1190,1,1,'gradeimport/csv:view',1,1543610077,0),(1191,1,3,'gradeimport/direct:view',1,1543610077,0),(1192,1,1,'gradeimport/direct:view',1,1543610077,0),(1193,1,3,'gradeimport/xml:view',1,1543610078,0),(1194,1,1,'gradeimport/xml:view',1,1543610078,0),(1195,1,1,'gradeimport/xml:publish',1,1543610078,0),(1196,1,4,'gradereport/grader:view',1,1543610078,0),(1197,1,3,'gradereport/grader:view',1,1543610078,0),(1198,1,1,'gradereport/grader:view',1,1543610078,0),(1199,1,4,'gradereport/history:view',1,1543610080,0),(1200,1,3,'gradereport/history:view',1,1543610080,0),(1201,1,1,'gradereport/history:view',1,1543610080,0),(1202,1,4,'gradereport/outcomes:view',1,1543610081,0),(1203,1,3,'gradereport/outcomes:view',1,1543610081,0),(1204,1,1,'gradereport/outcomes:view',1,1543610081,0),(1205,1,7,'gradereport/overview:view',1,1543610081,0),(1206,1,3,'gradereport/singleview:view',1,1543610082,0),(1207,1,1,'gradereport/singleview:view',1,1543610082,0),(1208,1,5,'gradereport/user:view',1,1543610083,0),(1209,1,4,'gradereport/user:view',1,1543610083,0),(1210,1,3,'gradereport/user:view',1,1543610083,0),(1211,1,1,'gradereport/user:view',1,1543610083,0),(1212,1,7,'repository/areafiles:view',1,1543610096,0),(1213,1,7,'repository/boxnet:view',1,1543610098,0),(1214,1,2,'repository/coursefiles:view',1,1543610099,0),(1215,1,4,'repository/coursefiles:view',1,1543610099,0),(1216,1,3,'repository/coursefiles:view',1,1543610099,0),(1217,1,1,'repository/coursefiles:view',1,1543610099,0),(1218,1,7,'repository/dropbox:view',1,1543610100,0),(1219,1,7,'repository/equella:view',1,1543610101,0),(1220,1,2,'repository/filesystem:view',1,1543610101,0),(1221,1,4,'repository/filesystem:view',1,1543610101,0),(1222,1,3,'repository/filesystem:view',1,1543610101,0),(1223,1,1,'repository/filesystem:view',1,1543610101,0),(1224,1,7,'repository/flickr:view',1,1543610102,0),(1225,1,7,'repository/flickr_public:view',1,1543610103,0),(1226,1,7,'repository/googledocs:view',1,1543610103,0),(1227,1,2,'repository/local:view',1,1543610104,0),(1228,1,4,'repository/local:view',1,1543610104,0),(1229,1,3,'repository/local:view',1,1543610104,0),(1230,1,1,'repository/local:view',1,1543610104,0),(1231,1,7,'repository/merlot:view',1,1543610104,0),(1232,1,7,'repository/onedrive:view',1,1543610105,0),(1233,1,7,'repository/picasa:view',1,1543610107,0),(1234,1,7,'repository/recent:view',1,1543610107,0),(1235,1,7,'repository/s3:view',1,1543610108,0),(1236,1,7,'repository/skydrive:view',1,1543610108,0),(1237,1,7,'repository/upload:view',1,1543610110,0),(1238,1,7,'repository/url:view',1,1543610111,0),(1239,1,7,'repository/user:view',1,1543610112,0),(1240,1,2,'repository/webdav:view',1,1543610113,0),(1241,1,4,'repository/webdav:view',1,1543610113,0),(1242,1,3,'repository/webdav:view',1,1543610113,0),(1243,1,1,'repository/webdav:view',1,1543610113,0),(1244,1,7,'repository/wikimedia:view',1,1543610114,0),(1245,1,7,'repository/youtube:view',1,1543610115,0),(1246,1,1,'tool/customlang:view',1,1543610137,0),(1247,1,1,'tool/customlang:edit',1,1543610137,0),(1248,1,7,'tool/dataprivacy:downloadownrequest',1,1543610141,0),(1249,1,1,'tool/lpmigrate:frameworksmigrate',1,1543610149,0),(1250,1,4,'tool/monitor:subscribe',1,1543610154,0),(1251,1,3,'tool/monitor:subscribe',1,1543610154,0),(1252,1,1,'tool/monitor:subscribe',1,1543610154,0),(1253,1,4,'tool/monitor:managerules',1,1543610154,0),(1254,1,3,'tool/monitor:managerules',1,1543610154,0),(1255,1,1,'tool/monitor:managerules',1,1543610154,0),(1256,1,1,'tool/monitor:managetool',1,1543610155,0),(1257,1,7,'tool/policy:accept',1,1543610157,0),(1258,1,1,'tool/policy:managedocs',1,1543610158,0),(1259,1,1,'tool/policy:viewacceptances',1,1543610158,0),(1260,1,3,'tool/recyclebin:deleteitems',1,1543610160,0),(1261,1,1,'tool/recyclebin:deleteitems',1,1543610160,0),(1262,1,3,'tool/recyclebin:restoreitems',1,1543610160,0),(1263,1,1,'tool/recyclebin:restoreitems',1,1543610160,0),(1264,1,4,'tool/recyclebin:viewitems',1,1543610160,0),(1265,1,3,'tool/recyclebin:viewitems',1,1543610160,0),(1266,1,1,'tool/recyclebin:viewitems',1,1543610160,0),(1267,1,1,'tool/uploaduser:uploaduserpictures',1,1543610163,0),(1268,1,1,'tool/usertours:managetours',1,1543610167,0),(1269,1,3,'booktool/importhtml:import',1,1543610187,0),(1270,1,1,'booktool/importhtml:import',1,1543610187,0),(1271,1,6,'booktool/print:print',1,1543610187,0),(1272,1,8,'booktool/print:print',1,1543610187,0),(1273,1,5,'booktool/print:print',1,1543610187,0),(1274,1,4,'booktool/print:print',1,1543610187,0),(1275,1,3,'booktool/print:print',1,1543610187,0),(1276,1,1,'booktool/print:print',1,1543610187,0),(1277,1,4,'quiz/grading:viewstudentnames',1,1543610197,0),(1278,1,3,'quiz/grading:viewstudentnames',1,1543610197,0),(1279,1,1,'quiz/grading:viewstudentnames',1,1543610197,0),(1280,1,4,'quiz/grading:viewidnumber',1,1543610197,0),(1281,1,3,'quiz/grading:viewidnumber',1,1543610197,0),(1282,1,1,'quiz/grading:viewidnumber',1,1543610197,0),(1283,1,4,'quiz/statistics:view',1,1543610200,0),(1284,1,3,'quiz/statistics:view',1,1543610200,0),(1285,1,1,'quiz/statistics:view',1,1543610200,0);
/*!40000 ALTER TABLE `mdl_role_capabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_context_levels`
--

DROP TABLE IF EXISTS `mdl_role_context_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role_context_levels` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL,
  `contextlevel` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolecontleve_conrol_uix` (`contextlevel`,`roleid`),
  KEY `mdl_rolecontleve_rol_ix` (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Lists which roles can be assigned at which context levels. T';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role_context_levels`
--

LOCK TABLES `mdl_role_context_levels` WRITE;
/*!40000 ALTER TABLE `mdl_role_context_levels` DISABLE KEYS */;
INSERT INTO `mdl_role_context_levels` VALUES (1,1,10),(4,2,10),(2,1,40),(5,2,40),(3,1,50),(6,3,50),(8,4,50),(10,5,50),(7,3,70),(9,4,70),(11,5,70);
/*!40000 ALTER TABLE `mdl_role_context_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_names`
--

DROP TABLE IF EXISTS `mdl_role_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role_names` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(10) NOT NULL DEFAULT 0,
  `contextid` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolename_rolcon_uix` (`roleid`,`contextid`),
  KEY `mdl_rolename_rol_ix` (`roleid`),
  KEY `mdl_rolename_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='role names in native strings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role_names`
--

LOCK TABLES `mdl_role_names` WRITE;
/*!40000 ALTER TABLE `mdl_role_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_role_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_role_sortorder`
--

DROP TABLE IF EXISTS `mdl_role_sortorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_role_sortorder` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `roleid` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `sortoder` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_rolesort_userolcon_uix` (`userid`,`roleid`,`contextid`),
  KEY `mdl_rolesort_use_ix` (`userid`),
  KEY `mdl_rolesort_rol_ix` (`roleid`),
  KEY `mdl_rolesort_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='sort order of course managers in a course';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_role_sortorder`
--

LOCK TABLES `mdl_role_sortorder` WRITE;
/*!40000 ALTER TABLE `mdl_role_sortorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_role_sortorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scale`
--

DROP TABLE IF EXISTS `mdl_scale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scale` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `scale` longtext COLLATE utf8mb4_bin NOT NULL,
  `description` longtext COLLATE utf8mb4_bin NOT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_scal_cou_ix` (`courseid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Defines grading scales';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scale`
--

LOCK TABLES `mdl_scale` WRITE;
/*!40000 ALTER TABLE `mdl_scale` DISABLE KEYS */;
INSERT INTO `mdl_scale` VALUES (1,0,0,'Separate and Connected ways of knowing','Mostly separate knowing,Separate and connected,Mostly connected knowing','The scale based on the theory of separate and connected knowing. This theory describes two different ways that we can evaluate and learn about the things we see and hear.<ul><li><strong>Separate knowers</strong> remain as objective as possible without including feelings and emotions. In a discussion with other people, they like to defend their own ideas, using logic to find holes in opponent\'s ideas.</li><li><strong>Connected knowers</strong> are more sensitive to other people. They are skilled at empathy and tend to listen and ask questions until they feel they can connect and \"understand things from their point of view\". They learn by trying to share the experiences that led to the knowledge they find in other people.</li></ul>',0,1543609745),(2,0,0,'Default competence scale','Not yet competent,Competent','A binary rating scale that provides no further information beyond whether someone has demonstrated proficiency or not.',0,1543609745);
/*!40000 ALTER TABLE `mdl_scale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scale_history`
--

DROP TABLE IF EXISTS `mdl_scale_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scale_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` bigint(10) NOT NULL DEFAULT 0,
  `oldid` bigint(10) NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `loggeduser` bigint(10) DEFAULT NULL,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `scale` longtext COLLATE utf8mb4_bin NOT NULL,
  `description` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_scalhist_act_ix` (`action`),
  KEY `mdl_scalhist_tim_ix` (`timemodified`),
  KEY `mdl_scalhist_old_ix` (`oldid`),
  KEY `mdl_scalhist_cou_ix` (`courseid`),
  KEY `mdl_scalhist_log_ix` (`loggeduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='History table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scale_history`
--

LOCK TABLES `mdl_scale_history` WRITE;
/*!40000 ALTER TABLE `mdl_scale_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scale_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm`
--

DROP TABLE IF EXISTS `mdl_scorm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `scormtype` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT 'local',
  `reference` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_bin NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `version` varchar(9) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `maxgrade` double NOT NULL DEFAULT 0,
  `grademethod` tinyint(2) NOT NULL DEFAULT 0,
  `whatgrade` bigint(10) NOT NULL DEFAULT 0,
  `maxattempt` bigint(10) NOT NULL DEFAULT 1,
  `forcecompleted` tinyint(1) NOT NULL DEFAULT 0,
  `forcenewattempt` tinyint(1) NOT NULL DEFAULT 0,
  `lastattemptlock` tinyint(1) NOT NULL DEFAULT 0,
  `masteryoverride` tinyint(1) NOT NULL DEFAULT 1,
  `displayattemptstatus` tinyint(1) NOT NULL DEFAULT 1,
  `displaycoursestructure` tinyint(1) NOT NULL DEFAULT 0,
  `updatefreq` tinyint(1) NOT NULL DEFAULT 0,
  `sha1hash` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `md5hash` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `revision` bigint(10) NOT NULL DEFAULT 0,
  `launch` bigint(10) NOT NULL DEFAULT 0,
  `skipview` tinyint(1) NOT NULL DEFAULT 1,
  `hidebrowse` tinyint(1) NOT NULL DEFAULT 0,
  `hidetoc` tinyint(1) NOT NULL DEFAULT 0,
  `nav` tinyint(1) NOT NULL DEFAULT 1,
  `navpositionleft` bigint(10) DEFAULT -100,
  `navpositiontop` bigint(10) DEFAULT -100,
  `auto` tinyint(1) NOT NULL DEFAULT 0,
  `popup` tinyint(1) NOT NULL DEFAULT 0,
  `options` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `width` bigint(10) NOT NULL DEFAULT 100,
  `height` bigint(10) NOT NULL DEFAULT 600,
  `timeopen` bigint(10) NOT NULL DEFAULT 0,
  `timeclose` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `completionstatusrequired` tinyint(1) DEFAULT NULL,
  `completionscorerequired` bigint(10) DEFAULT NULL,
  `completionstatusallscos` tinyint(1) DEFAULT NULL,
  `displayactivityname` smallint(4) NOT NULL DEFAULT 1,
  `autocommit` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_scor_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='each table is one SCORM module and its configuration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm`
--

LOCK TABLES `mdl_scorm` WRITE;
/*!40000 ALTER TABLE `mdl_scorm` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_aicc_session`
--

DROP TABLE IF EXISTS `mdl_scorm_aicc_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_aicc_session` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `scormid` bigint(10) NOT NULL DEFAULT 0,
  `hacpsession` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `scoid` bigint(10) DEFAULT 0,
  `scormmode` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `scormstatus` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `attempt` bigint(10) DEFAULT NULL,
  `lessonstatus` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `sessiontime` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_scoraiccsess_sco_ix` (`scormid`),
  KEY `mdl_scoraiccsess_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Used by AICC HACP to store session information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_aicc_session`
--

LOCK TABLES `mdl_scorm_aicc_session` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_aicc_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_aicc_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_scoes`
--

DROP TABLE IF EXISTS `mdl_scorm_scoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_scoes` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scorm` bigint(10) NOT NULL DEFAULT 0,
  `manifest` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `organization` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `parent` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `launch` longtext COLLATE utf8mb4_bin NOT NULL,
  `scormtype` varchar(5) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_scorscoe_sco_ix` (`scorm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='each SCO part of the SCORM module';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_scoes`
--

LOCK TABLES `mdl_scorm_scoes` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_scoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_scoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_scoes_data`
--

DROP TABLE IF EXISTS `mdl_scorm_scoes_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_scoes_data` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_scorscoedata_sco_ix` (`scoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Contains variable data get from packages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_scoes_data`
--

LOCK TABLES `mdl_scorm_scoes_data` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_scoes_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_scoes_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_scoes_track`
--

DROP TABLE IF EXISTS `mdl_scorm_scoes_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_scoes_track` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `scormid` bigint(10) NOT NULL DEFAULT 0,
  `scoid` bigint(10) NOT NULL DEFAULT 0,
  `attempt` bigint(10) NOT NULL DEFAULT 1,
  `element` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_bin NOT NULL,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorscoetrac_usescosco_uix` (`userid`,`scormid`,`scoid`,`attempt`,`element`),
  KEY `mdl_scorscoetrac_use_ix` (`userid`),
  KEY `mdl_scorscoetrac_ele_ix` (`element`),
  KEY `mdl_scorscoetrac_sco_ix` (`scormid`),
  KEY `mdl_scorscoetrac_sco2_ix` (`scoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='to track SCOes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_scoes_track`
--

LOCK TABLES `mdl_scorm_scoes_track` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_scoes_track` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_scoes_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_seq_mapinfo`
--

DROP TABLE IF EXISTS `mdl_scorm_seq_mapinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_seq_mapinfo` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT 0,
  `objectiveid` bigint(10) NOT NULL DEFAULT 0,
  `targetobjectiveid` bigint(10) NOT NULL DEFAULT 0,
  `readsatisfiedstatus` tinyint(1) NOT NULL DEFAULT 1,
  `readnormalizedmeasure` tinyint(1) NOT NULL DEFAULT 1,
  `writesatisfiedstatus` tinyint(1) NOT NULL DEFAULT 0,
  `writenormalizedmeasure` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorseqmapi_scoidobj_uix` (`scoid`,`id`,`objectiveid`),
  KEY `mdl_scorseqmapi_sco_ix` (`scoid`),
  KEY `mdl_scorseqmapi_obj_ix` (`objectiveid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='SCORM2004 objective mapinfo description';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_seq_mapinfo`
--

LOCK TABLES `mdl_scorm_seq_mapinfo` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_seq_mapinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_seq_mapinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_seq_objective`
--

DROP TABLE IF EXISTS `mdl_scorm_seq_objective`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_seq_objective` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT 0,
  `primaryobj` tinyint(1) NOT NULL DEFAULT 0,
  `objectiveid` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `satisfiedbymeasure` tinyint(1) NOT NULL DEFAULT 1,
  `minnormalizedmeasure` float(11,4) NOT NULL DEFAULT 0.0000,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorseqobje_scoid_uix` (`scoid`,`id`),
  KEY `mdl_scorseqobje_sco_ix` (`scoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='SCORM2004 objective description';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_seq_objective`
--

LOCK TABLES `mdl_scorm_seq_objective` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_seq_objective` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_seq_objective` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_seq_rolluprule`
--

DROP TABLE IF EXISTS `mdl_scorm_seq_rolluprule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_seq_rolluprule` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT 0,
  `childactivityset` varchar(15) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `minimumcount` bigint(10) NOT NULL DEFAULT 0,
  `minimumpercent` float(11,4) NOT NULL DEFAULT 0.0000,
  `conditioncombination` varchar(3) COLLATE utf8mb4_bin NOT NULL DEFAULT 'all',
  `action` varchar(15) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorseqroll_scoid_uix` (`scoid`,`id`),
  KEY `mdl_scorseqroll_sco_ix` (`scoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='SCORM2004 sequencing rule';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_seq_rolluprule`
--

LOCK TABLES `mdl_scorm_seq_rolluprule` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_seq_rolluprule` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_seq_rolluprule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_seq_rolluprulecond`
--

DROP TABLE IF EXISTS `mdl_scorm_seq_rolluprulecond`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_seq_rolluprulecond` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT 0,
  `rollupruleid` bigint(10) NOT NULL DEFAULT 0,
  `operator` varchar(5) COLLATE utf8mb4_bin NOT NULL DEFAULT 'noOp',
  `cond` varchar(25) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorseqroll_scorolid_uix` (`scoid`,`rollupruleid`,`id`),
  KEY `mdl_scorseqroll_sco2_ix` (`scoid`),
  KEY `mdl_scorseqroll_rol_ix` (`rollupruleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='SCORM2004 sequencing rule';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_seq_rolluprulecond`
--

LOCK TABLES `mdl_scorm_seq_rolluprulecond` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_seq_rolluprulecond` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_seq_rolluprulecond` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_seq_rulecond`
--

DROP TABLE IF EXISTS `mdl_scorm_seq_rulecond`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_seq_rulecond` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT 0,
  `ruleconditionsid` bigint(10) NOT NULL DEFAULT 0,
  `refrencedobjective` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `measurethreshold` float(11,4) NOT NULL DEFAULT 0.0000,
  `operator` varchar(5) COLLATE utf8mb4_bin NOT NULL DEFAULT 'noOp',
  `cond` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT 'always',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorseqrule_idscorul_uix` (`id`,`scoid`,`ruleconditionsid`),
  KEY `mdl_scorseqrule_sco2_ix` (`scoid`),
  KEY `mdl_scorseqrule_rul_ix` (`ruleconditionsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='SCORM2004 rule condition';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_seq_rulecond`
--

LOCK TABLES `mdl_scorm_seq_rulecond` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_seq_rulecond` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_seq_rulecond` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_scorm_seq_ruleconds`
--

DROP TABLE IF EXISTS `mdl_scorm_seq_ruleconds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_scorm_seq_ruleconds` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scoid` bigint(10) NOT NULL DEFAULT 0,
  `conditioncombination` varchar(3) COLLATE utf8mb4_bin NOT NULL DEFAULT 'all',
  `ruletype` tinyint(2) NOT NULL DEFAULT 0,
  `action` varchar(25) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_scorseqrule_scoid_uix` (`scoid`,`id`),
  KEY `mdl_scorseqrule_sco_ix` (`scoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='SCORM2004 rule conditions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_scorm_seq_ruleconds`
--

LOCK TABLES `mdl_scorm_seq_ruleconds` WRITE;
/*!40000 ALTER TABLE `mdl_scorm_seq_ruleconds` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_scorm_seq_ruleconds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_search_index_requests`
--

DROP TABLE IF EXISTS `mdl_search_index_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_search_index_requests` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `searcharea` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timerequested` bigint(10) NOT NULL,
  `partialarea` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `partialtime` bigint(10) NOT NULL,
  `indexpriority` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_searinderequ_indtim_ix` (`indexpriority`,`timerequested`),
  KEY `mdl_searinderequ_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Records requests for (re)indexing of specific contexts. Entr';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_search_index_requests`
--

LOCK TABLES `mdl_search_index_requests` WRITE;
/*!40000 ALTER TABLE `mdl_search_index_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_search_index_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_search_simpledb_index`
--

DROP TABLE IF EXISTS `mdl_search_simpledb_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_search_simpledb_index` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `docid` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `title` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `contextid` bigint(10) NOT NULL,
  `areaid` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL,
  `courseid` bigint(10) NOT NULL,
  `owneruserid` bigint(10) DEFAULT NULL,
  `modified` bigint(10) NOT NULL,
  `userid` bigint(10) DEFAULT NULL,
  `description1` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `description2` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_searsimpinde_doc_uix` (`docid`),
  KEY `mdl_searsimpinde_owncon_ix` (`owneruserid`,`contextid`),
  FULLTEXT KEY `mdl_search_simpledb_index_index` (`title`,`content`,`description1`,`description2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='search_simpledb table containing the index data.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_search_simpledb_index`
--

LOCK TABLES `mdl_search_simpledb_index` WRITE;
/*!40000 ALTER TABLE `mdl_search_simpledb_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_search_simpledb_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_sessions`
--

DROP TABLE IF EXISTS `mdl_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_sessions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `state` bigint(10) NOT NULL DEFAULT 0,
  `sid` varchar(128) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `userid` bigint(10) NOT NULL,
  `sessdata` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `firstip` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `lastip` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_sess_sid_uix` (`sid`),
  KEY `mdl_sess_sta_ix` (`state`),
  KEY `mdl_sess_tim_ix` (`timecreated`),
  KEY `mdl_sess_tim2_ix` (`timemodified`),
  KEY `mdl_sess_use_ix` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Database based session storage - now recommended';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_sessions`
--

LOCK TABLES `mdl_sessions` WRITE;
/*!40000 ALTER TABLE `mdl_sessions` DISABLE KEYS */;
INSERT INTO `mdl_sessions` VALUES (4,0,'d5c649069db263f74aff2e72064495da',2,NULL,1544460733,1544463541,'172.18.0.1','172.18.0.1'),(6,0,'5794257653f1fd0c24730348256535c2',2,NULL,1544538552,1544544465,'172.23.0.1','172.23.0.1');
/*!40000 ALTER TABLE `mdl_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_stats_daily`
--

DROP TABLE IF EXISTS `mdl_stats_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_stats_daily` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `timeend` bigint(10) NOT NULL DEFAULT 0,
  `roleid` bigint(10) NOT NULL DEFAULT 0,
  `stattype` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'activity',
  `stat1` bigint(10) NOT NULL DEFAULT 0,
  `stat2` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_statdail_cou_ix` (`courseid`),
  KEY `mdl_statdail_tim_ix` (`timeend`),
  KEY `mdl_statdail_rol_ix` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='to accumulate daily stats';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_stats_daily`
--

LOCK TABLES `mdl_stats_daily` WRITE;
/*!40000 ALTER TABLE `mdl_stats_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_stats_daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_stats_monthly`
--

DROP TABLE IF EXISTS `mdl_stats_monthly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_stats_monthly` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `timeend` bigint(10) NOT NULL DEFAULT 0,
  `roleid` bigint(10) NOT NULL DEFAULT 0,
  `stattype` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'activity',
  `stat1` bigint(10) NOT NULL DEFAULT 0,
  `stat2` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_statmont_cou_ix` (`courseid`),
  KEY `mdl_statmont_tim_ix` (`timeend`),
  KEY `mdl_statmont_rol_ix` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='To accumulate monthly stats';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_stats_monthly`
--

LOCK TABLES `mdl_stats_monthly` WRITE;
/*!40000 ALTER TABLE `mdl_stats_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_stats_monthly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_stats_user_daily`
--

DROP TABLE IF EXISTS `mdl_stats_user_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_stats_user_daily` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `roleid` bigint(10) NOT NULL DEFAULT 0,
  `timeend` bigint(10) NOT NULL DEFAULT 0,
  `statsreads` bigint(10) NOT NULL DEFAULT 0,
  `statswrites` bigint(10) NOT NULL DEFAULT 0,
  `stattype` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_statuserdail_cou_ix` (`courseid`),
  KEY `mdl_statuserdail_use_ix` (`userid`),
  KEY `mdl_statuserdail_rol_ix` (`roleid`),
  KEY `mdl_statuserdail_tim_ix` (`timeend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='To accumulate daily stats per course/user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_stats_user_daily`
--

LOCK TABLES `mdl_stats_user_daily` WRITE;
/*!40000 ALTER TABLE `mdl_stats_user_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_stats_user_daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_stats_user_monthly`
--

DROP TABLE IF EXISTS `mdl_stats_user_monthly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_stats_user_monthly` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `roleid` bigint(10) NOT NULL DEFAULT 0,
  `timeend` bigint(10) NOT NULL DEFAULT 0,
  `statsreads` bigint(10) NOT NULL DEFAULT 0,
  `statswrites` bigint(10) NOT NULL DEFAULT 0,
  `stattype` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_statusermont_cou_ix` (`courseid`),
  KEY `mdl_statusermont_use_ix` (`userid`),
  KEY `mdl_statusermont_rol_ix` (`roleid`),
  KEY `mdl_statusermont_tim_ix` (`timeend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='To accumulate monthly stats per course/user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_stats_user_monthly`
--

LOCK TABLES `mdl_stats_user_monthly` WRITE;
/*!40000 ALTER TABLE `mdl_stats_user_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_stats_user_monthly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_stats_user_weekly`
--

DROP TABLE IF EXISTS `mdl_stats_user_weekly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_stats_user_weekly` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `roleid` bigint(10) NOT NULL DEFAULT 0,
  `timeend` bigint(10) NOT NULL DEFAULT 0,
  `statsreads` bigint(10) NOT NULL DEFAULT 0,
  `statswrites` bigint(10) NOT NULL DEFAULT 0,
  `stattype` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_statuserweek_cou_ix` (`courseid`),
  KEY `mdl_statuserweek_use_ix` (`userid`),
  KEY `mdl_statuserweek_rol_ix` (`roleid`),
  KEY `mdl_statuserweek_tim_ix` (`timeend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='To accumulate weekly stats per course/user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_stats_user_weekly`
--

LOCK TABLES `mdl_stats_user_weekly` WRITE;
/*!40000 ALTER TABLE `mdl_stats_user_weekly` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_stats_user_weekly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_stats_weekly`
--

DROP TABLE IF EXISTS `mdl_stats_weekly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_stats_weekly` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `timeend` bigint(10) NOT NULL DEFAULT 0,
  `roleid` bigint(10) NOT NULL DEFAULT 0,
  `stattype` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'activity',
  `stat1` bigint(10) NOT NULL DEFAULT 0,
  `stat2` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_statweek_cou_ix` (`courseid`),
  KEY `mdl_statweek_tim_ix` (`timeend`),
  KEY `mdl_statweek_rol_ix` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='To accumulate weekly stats';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_stats_weekly`
--

LOCK TABLES `mdl_stats_weekly` WRITE;
/*!40000 ALTER TABLE `mdl_stats_weekly` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_stats_weekly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_survey`
--

DROP TABLE IF EXISTS `mdl_survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_survey` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `template` bigint(10) NOT NULL DEFAULT 0,
  `days` mediumint(6) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_bin NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `questions` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `completionsubmit` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_surv_cou_ix` (`course`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Each record is one SURVEY module with its configuration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_survey`
--

LOCK TABLES `mdl_survey` WRITE;
/*!40000 ALTER TABLE `mdl_survey` DISABLE KEYS */;
INSERT INTO `mdl_survey` VALUES (1,0,0,0,985017600,985017600,'collesaname','collesaintro',0,'25,26,27,28,29,30,43,44',0),(2,0,0,0,985017600,985017600,'collespname','collespintro',0,'31,32,33,34,35,36,43,44',0),(3,0,0,0,985017600,985017600,'collesapname','collesapintro',0,'37,38,39,40,41,42,43,44',0),(4,0,0,0,985017600,985017600,'attlsname','attlsintro',0,'65,67,68',0),(5,0,0,0,985017600,985017600,'ciqname','ciqintro',0,'69,70,71,72,73',0);
/*!40000 ALTER TABLE `mdl_survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_survey_analysis`
--

DROP TABLE IF EXISTS `mdl_survey_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_survey_analysis` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `survey` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `notes` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_survanal_use_ix` (`userid`),
  KEY `mdl_survanal_sur_ix` (`survey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='text about each survey submission';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_survey_analysis`
--

LOCK TABLES `mdl_survey_analysis` WRITE;
/*!40000 ALTER TABLE `mdl_survey_analysis` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_survey_analysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_survey_answers`
--

DROP TABLE IF EXISTS `mdl_survey_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_survey_answers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `survey` bigint(10) NOT NULL DEFAULT 0,
  `question` bigint(10) NOT NULL DEFAULT 0,
  `time` bigint(10) NOT NULL DEFAULT 0,
  `answer1` longtext COLLATE utf8mb4_bin NOT NULL,
  `answer2` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_survansw_use_ix` (`userid`),
  KEY `mdl_survansw_sur_ix` (`survey`),
  KEY `mdl_survansw_que_ix` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='the answers to each questions filled by the users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_survey_answers`
--

LOCK TABLES `mdl_survey_answers` WRITE;
/*!40000 ALTER TABLE `mdl_survey_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_survey_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_survey_questions`
--

DROP TABLE IF EXISTS `mdl_survey_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_survey_questions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `shorttext` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `multi` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `intro` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `type` smallint(3) NOT NULL DEFAULT 0,
  `options` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='the questions conforming one survey';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_survey_questions`
--

LOCK TABLES `mdl_survey_questions` WRITE;
/*!40000 ALTER TABLE `mdl_survey_questions` DISABLE KEYS */;
INSERT INTO `mdl_survey_questions` VALUES (1,'colles1','colles1short','','',1,'scaletimes5'),(2,'colles2','colles2short','','',1,'scaletimes5'),(3,'colles3','colles3short','','',1,'scaletimes5'),(4,'colles4','colles4short','','',1,'scaletimes5'),(5,'colles5','colles5short','','',1,'scaletimes5'),(6,'colles6','colles6short','','',1,'scaletimes5'),(7,'colles7','colles7short','','',1,'scaletimes5'),(8,'colles8','colles8short','','',1,'scaletimes5'),(9,'colles9','colles9short','','',1,'scaletimes5'),(10,'colles10','colles10short','','',1,'scaletimes5'),(11,'colles11','colles11short','','',1,'scaletimes5'),(12,'colles12','colles12short','','',1,'scaletimes5'),(13,'colles13','colles13short','','',1,'scaletimes5'),(14,'colles14','colles14short','','',1,'scaletimes5'),(15,'colles15','colles15short','','',1,'scaletimes5'),(16,'colles16','colles16short','','',1,'scaletimes5'),(17,'colles17','colles17short','','',1,'scaletimes5'),(18,'colles18','colles18short','','',1,'scaletimes5'),(19,'colles19','colles19short','','',1,'scaletimes5'),(20,'colles20','colles20short','','',1,'scaletimes5'),(21,'colles21','colles21short','','',1,'scaletimes5'),(22,'colles22','colles22short','','',1,'scaletimes5'),(23,'colles23','colles23short','','',1,'scaletimes5'),(24,'colles24','colles24short','','',1,'scaletimes5'),(25,'collesm1','collesm1short','1,2,3,4','collesmintro',1,'scaletimes5'),(26,'collesm2','collesm2short','5,6,7,8','collesmintro',1,'scaletimes5'),(27,'collesm3','collesm3short','9,10,11,12','collesmintro',1,'scaletimes5'),(28,'collesm4','collesm4short','13,14,15,16','collesmintro',1,'scaletimes5'),(29,'collesm5','collesm5short','17,18,19,20','collesmintro',1,'scaletimes5'),(30,'collesm6','collesm6short','21,22,23,24','collesmintro',1,'scaletimes5'),(31,'collesm1','collesm1short','1,2,3,4','collesmintro',2,'scaletimes5'),(32,'collesm2','collesm2short','5,6,7,8','collesmintro',2,'scaletimes5'),(33,'collesm3','collesm3short','9,10,11,12','collesmintro',2,'scaletimes5'),(34,'collesm4','collesm4short','13,14,15,16','collesmintro',2,'scaletimes5'),(35,'collesm5','collesm5short','17,18,19,20','collesmintro',2,'scaletimes5'),(36,'collesm6','collesm6short','21,22,23,24','collesmintro',2,'scaletimes5'),(37,'collesm1','collesm1short','1,2,3,4','collesmintro',3,'scaletimes5'),(38,'collesm2','collesm2short','5,6,7,8','collesmintro',3,'scaletimes5'),(39,'collesm3','collesm3short','9,10,11,12','collesmintro',3,'scaletimes5'),(40,'collesm4','collesm4short','13,14,15,16','collesmintro',3,'scaletimes5'),(41,'collesm5','collesm5short','17,18,19,20','collesmintro',3,'scaletimes5'),(42,'collesm6','collesm6short','21,22,23,24','collesmintro',3,'scaletimes5'),(43,'howlong','','','',1,'howlongoptions'),(44,'othercomments','','','',0,NULL),(45,'attls1','attls1short','','',1,'scaleagree5'),(46,'attls2','attls2short','','',1,'scaleagree5'),(47,'attls3','attls3short','','',1,'scaleagree5'),(48,'attls4','attls4short','','',1,'scaleagree5'),(49,'attls5','attls5short','','',1,'scaleagree5'),(50,'attls6','attls6short','','',1,'scaleagree5'),(51,'attls7','attls7short','','',1,'scaleagree5'),(52,'attls8','attls8short','','',1,'scaleagree5'),(53,'attls9','attls9short','','',1,'scaleagree5'),(54,'attls10','attls10short','','',1,'scaleagree5'),(55,'attls11','attls11short','','',1,'scaleagree5'),(56,'attls12','attls12short','','',1,'scaleagree5'),(57,'attls13','attls13short','','',1,'scaleagree5'),(58,'attls14','attls14short','','',1,'scaleagree5'),(59,'attls15','attls15short','','',1,'scaleagree5'),(60,'attls16','attls16short','','',1,'scaleagree5'),(61,'attls17','attls17short','','',1,'scaleagree5'),(62,'attls18','attls18short','','',1,'scaleagree5'),(63,'attls19','attls19short','','',1,'scaleagree5'),(64,'attls20','attls20short','','',1,'scaleagree5'),(65,'attlsm1','attlsm1','45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64','attlsmintro',1,'scaleagree5'),(66,'-','-','-','-',0,'-'),(67,'attlsm2','attlsm2','63,62,59,57,55,49,52,50,48,47','attlsmintro',-1,'scaleagree5'),(68,'attlsm3','attlsm3','46,54,45,51,60,53,56,58,61,64','attlsmintro',-1,'scaleagree5'),(69,'ciq1','ciq1short','','',0,NULL),(70,'ciq2','ciq2short','','',0,NULL),(71,'ciq3','ciq3short','','',0,NULL),(72,'ciq4','ciq4short','','',0,NULL),(73,'ciq5','ciq5short','','',0,NULL);
/*!40000 ALTER TABLE `mdl_survey_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tag`
--

DROP TABLE IF EXISTS `mdl_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tag` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `tagcollid` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `rawname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `isstandard` tinyint(1) NOT NULL DEFAULT 0,
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 0,
  `flag` smallint(4) DEFAULT 0,
  `timemodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_tag_tagnam_uix` (`tagcollid`,`name`),
  KEY `mdl_tag_tagiss_ix` (`tagcollid`,`isstandard`),
  KEY `mdl_tag_use_ix` (`userid`),
  KEY `mdl_tag_tag_ix` (`tagcollid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Tag table - this generic table will replace the old "tags" t';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tag`
--

LOCK TABLES `mdl_tag` WRITE;
/*!40000 ALTER TABLE `mdl_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tag_area`
--

DROP TABLE IF EXISTS `mdl_tag_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tag_area` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `component` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `itemtype` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `tagcollid` bigint(10) NOT NULL,
  `callback` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `callbackfile` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `showstandard` tinyint(1) NOT NULL DEFAULT 0,
  `multiplecontexts` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_tagarea_comite_uix` (`component`,`itemtype`),
  KEY `mdl_tagarea_tag_ix` (`tagcollid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Defines various tag areas, one area is identified by compone';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tag_area`
--

LOCK TABLES `mdl_tag_area` WRITE;
/*!40000 ALTER TABLE `mdl_tag_area` DISABLE KEYS */;
INSERT INTO `mdl_tag_area` VALUES (1,'core','user',1,1,'user_get_tagged_users','/user/lib.php',2,0),(2,'core','course',1,1,'course_get_tagged_courses','/course/lib.php',0,0),(3,'core_question','question',1,1,NULL,NULL,0,1),(4,'core','post',1,1,'blog_get_tagged_posts','/blog/lib.php',0,0),(5,'core','blog_external',1,1,NULL,NULL,0,0),(6,'core','course_modules',1,1,'course_get_tagged_course_modules','/course/lib.php',0,0),(7,'mod_book','book_chapters',1,1,'mod_book_get_tagged_chapters','/mod/book/locallib.php',0,0),(8,'mod_data','data_records',1,1,'mod_data_get_tagged_records','/mod/data/locallib.php',0,0),(9,'mod_forum','forum_posts',1,1,'mod_forum_get_tagged_posts','/mod/forum/locallib.php',0,0),(10,'mod_glossary','glossary_entries',1,1,'mod_glossary_get_tagged_entries','/mod/glossary/locallib.php',0,0),(11,'mod_wiki','wiki_pages',1,1,'mod_wiki_get_tagged_pages','/mod/wiki/locallib.php',0,0);
/*!40000 ALTER TABLE `mdl_tag_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tag_coll`
--

DROP TABLE IF EXISTS `mdl_tag_coll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tag_coll` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `isdefault` tinyint(2) NOT NULL DEFAULT 0,
  `component` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `sortorder` mediumint(5) NOT NULL DEFAULT 0,
  `searchable` tinyint(2) NOT NULL DEFAULT 1,
  `customurl` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Defines different set of tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tag_coll`
--

LOCK TABLES `mdl_tag_coll` WRITE;
/*!40000 ALTER TABLE `mdl_tag_coll` DISABLE KEYS */;
INSERT INTO `mdl_tag_coll` VALUES (1,NULL,1,NULL,0,1,NULL);
/*!40000 ALTER TABLE `mdl_tag_coll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tag_correlation`
--

DROP TABLE IF EXISTS `mdl_tag_correlation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tag_correlation` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `tagid` bigint(10) NOT NULL,
  `correlatedtags` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_tagcorr_tag_ix` (`tagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='The rationale for the ''tag_correlation'' table is performance';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tag_correlation`
--

LOCK TABLES `mdl_tag_correlation` WRITE;
/*!40000 ALTER TABLE `mdl_tag_correlation` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tag_correlation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tag_instance`
--

DROP TABLE IF EXISTS `mdl_tag_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tag_instance` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `tagid` bigint(10) NOT NULL,
  `component` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `itemtype` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `contextid` bigint(10) DEFAULT NULL,
  `tiuserid` bigint(10) NOT NULL DEFAULT 0,
  `ordering` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_taginst_comiteiteconti_uix` (`component`,`itemtype`,`itemid`,`contextid`,`tiuserid`,`tagid`),
  KEY `mdl_taginst_itecomtagcon_ix` (`itemtype`,`component`,`tagid`,`contextid`),
  KEY `mdl_taginst_tag_ix` (`tagid`),
  KEY `mdl_taginst_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='tag_instance table holds the information of associations bet';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tag_instance`
--

LOCK TABLES `mdl_tag_instance` WRITE;
/*!40000 ALTER TABLE `mdl_tag_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tag_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_task_adhoc`
--

DROP TABLE IF EXISTS `mdl_task_adhoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_task_adhoc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `component` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `classname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `nextruntime` bigint(10) NOT NULL,
  `faildelay` bigint(10) DEFAULT NULL,
  `customdata` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `userid` bigint(10) DEFAULT NULL,
  `blocking` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_taskadho_nex_ix` (`nextruntime`),
  KEY `mdl_taskadho_use_ix` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='List of adhoc tasks waiting to run.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_task_adhoc`
--

LOCK TABLES `mdl_task_adhoc` WRITE;
/*!40000 ALTER TABLE `mdl_task_adhoc` DISABLE KEYS */;
INSERT INTO `mdl_task_adhoc` VALUES (1,'','\\core\\task\\build_installed_themes_task',1543610399,0,'',NULL,0);
/*!40000 ALTER TABLE `mdl_task_adhoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_task_scheduled`
--

DROP TABLE IF EXISTS `mdl_task_scheduled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_task_scheduled` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `component` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `classname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `lastruntime` bigint(10) DEFAULT NULL,
  `nextruntime` bigint(10) DEFAULT NULL,
  `blocking` tinyint(2) NOT NULL DEFAULT 0,
  `minute` varchar(25) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `hour` varchar(25) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `day` varchar(25) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `month` varchar(25) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `dayofweek` varchar(25) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `faildelay` bigint(10) DEFAULT NULL,
  `customised` tinyint(2) NOT NULL DEFAULT 0,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_tasksche_cla_uix` (`classname`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='List of scheduled tasks to be run by cron.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_task_scheduled`
--

LOCK TABLES `mdl_task_scheduled` WRITE;
/*!40000 ALTER TABLE `mdl_task_scheduled` DISABLE KEYS */;
INSERT INTO `mdl_task_scheduled` VALUES (1,'moodle','\\core\\task\\session_cleanup_task',0,1543609800,0,'*','*','*','*','*',0,0,0),(2,'moodle','\\core\\task\\delete_unconfirmed_users_task',0,1543611600,0,'0','*','*','*','*',0,0,0),(3,'moodle','\\core\\task\\delete_incomplete_users_task',0,1543611900,0,'5','*','*','*','*',0,0,0),(4,'moodle','\\core\\task\\backup_cleanup_task',0,1543612200,0,'10','*','*','*','*',0,0,0),(5,'moodle','\\core\\task\\tag_cron_task',0,1543633500,0,'5','3','*','*','*',0,0,0),(6,'moodle','\\core\\task\\context_cleanup_task',0,1543613100,0,'25','*','*','*','*',0,0,0),(7,'moodle','\\core\\task\\cache_cleanup_task',0,1543609800,0,'30','*','*','*','*',0,0,0),(8,'moodle','\\core\\task\\messaging_cleanup_task',0,1543610100,0,'35','*','*','*','*',0,0,0),(9,'moodle','\\core\\task\\send_new_user_passwords_task',0,1543609800,0,'*','*','*','*','*',0,0,0),(10,'moodle','\\core\\task\\send_failed_login_notifications_task',0,1543609800,0,'*','*','*','*','*',0,0,0),(11,'moodle','\\core\\task\\create_contexts_task',0,1543622400,1,'0','0','*','*','*',0,0,0),(12,'moodle','\\core\\task\\legacy_plugin_cron_task',0,1543609800,0,'*','*','*','*','*',0,0,0),(13,'moodle','\\core\\task\\grade_cron_task',0,1543609800,0,'*','*','*','*','*',0,0,0),(14,'moodle','\\core\\task\\events_cron_task',0,1543609800,0,'*','*','*','*','*',0,0,0),(15,'moodle','\\core\\task\\completion_regular_task',0,1543609800,0,'*','*','*','*','*',0,0,0),(16,'moodle','\\core\\task\\completion_daily_task',0,1543684920,0,'22','17','*','*','*',0,0,0),(17,'moodle','\\core\\task\\portfolio_cron_task',0,1543609800,0,'*','*','*','*','*',0,0,0),(18,'moodle','\\core\\task\\plagiarism_cron_task',0,1543609800,0,'*','*','*','*','*',0,0,0),(19,'moodle','\\core\\task\\calendar_cron_task',0,1543609800,0,'*','*','*','*','*',0,0,0),(20,'moodle','\\core\\task\\blog_cron_task',0,1543609800,0,'*','*','*','*','*',0,0,0),(21,'moodle','\\core\\task\\question_cron_task',0,1543609800,0,'*','*','*','*','*',0,0,0),(22,'moodle','\\core\\task\\registration_cron_task',0,1543943460,0,'11','17','*','*','2',0,0,0),(23,'moodle','\\core\\task\\check_for_updates_task',0,1543615200,0,'0','*/2','*','*','*',0,0,0),(24,'moodle','\\core\\task\\cache_cron_task',0,1543611000,0,'50','*','*','*','*',0,0,0),(25,'moodle','\\core\\task\\automated_backup_task',0,1543611000,0,'50','*','*','*','*',0,0,0),(26,'moodle','\\core\\task\\badges_cron_task',0,1543609800,0,'*/5','*','*','*','*',0,0,0),(27,'moodle','\\core\\task\\file_temp_cleanup_task',0,1543625700,0,'55','*/6','*','*','*',0,0,0),(28,'moodle','\\core\\task\\file_trash_cleanup_task',0,1543625700,0,'55','*/6','*','*','*',0,0,0),(29,'moodle','\\core\\task\\search_index_task',0,1543609800,0,'*/30','*','*','*','*',0,0,0),(30,'moodle','\\core\\task\\search_optimize_task',0,1543623300,0,'15','*/12','*','*','*',0,0,0),(31,'moodle','\\core\\task\\stats_cron_task',0,1543622400,0,'0','0','*','*','*',0,0,0),(32,'moodle','\\core\\task\\password_reset_cleanup_task',0,1543622400,0,'0','*/6','*','*','*',0,0,0),(33,'moodle','\\core\\task\\complete_plans_task',0,1543611660,0,'1','*','*','*','*',0,0,0),(34,'moodle','\\core\\task\\sync_plans_from_template_cohorts_task',0,1543612980,0,'23','*','*','*','*',0,0,0),(35,'moodle','\\core_files\\task\\conversion_cleanup_task',0,1543630020,0,'7','2','*','*','*',0,0,0),(36,'moodle','\\core\\oauth2\\refresh_system_tokens_task',0,1543609800,0,'30','*','*','*','*',0,0,0),(37,'moodle','\\core\\task\\analytics_cleanup_task',0,1543610520,0,'42','*','*','*','*',0,0,0),(38,'mod_forum','\\mod_forum\\task\\cron_task',0,1543609920,0,'*','*','*','*','*',0,0,0),(39,'mod_scorm','\\mod_scorm\\task\\cron_task',0,1543610100,0,'*/5','*','*','*','*',0,0,0),(40,'auth_cas','\\auth_cas\\task\\sync_task',0,1543622400,0,'0','0','*','*','*',0,0,1),(41,'auth_db','\\auth_db\\task\\sync_users',0,1543680480,0,'8','16','*','*','*',0,0,1),(42,'auth_ldap','\\auth_ldap\\task\\sync_roles',0,1543622400,0,'0','0','*','*','*',0,0,1),(43,'auth_ldap','\\auth_ldap\\task\\sync_task',0,1543622400,0,'0','0','*','*','*',0,0,1),(44,'enrol_category','\\enrol_category\\task\\enrol_category_sync',0,1543610040,0,'*','*','*','*','*',0,0,0),(45,'enrol_cohort','\\enrol_cohort\\task\\enrol_cohort_sync',0,1543612380,0,'13','*','*','*','*',0,0,0),(46,'enrol_flatfile','\\enrol_flatfile\\task\\flatfile_sync_task',0,1543612500,0,'15','*','*','*','*',0,0,0),(47,'enrol_imsenterprise','\\enrol_imsenterprise\\task\\cron_task',0,1543612200,0,'10','*','*','*','*',0,0,0),(48,'enrol_ldap','\\enrol_ldap\\task\\sync_enrolments',0,1543687440,0,'4','18','*','*','*',0,0,1),(49,'enrol_lti','\\enrol_lti\\task\\sync_grades',0,1543611600,0,'*/30','*','*','*','*',0,0,0),(50,'enrol_lti','\\enrol_lti\\task\\sync_members',0,1543611600,0,'*/30','*','*','*','*',0,0,0),(51,'enrol_manual','\\enrol_manual\\task\\sync_enrolments',0,1543610400,0,'*/10','*','*','*','*',0,0,0),(52,'enrol_manual','\\enrol_manual\\task\\send_expiry_notifications',0,1543610400,0,'*/10','*','*','*','*',0,0,0),(53,'enrol_meta','\\enrol_meta\\task\\enrol_meta_sync',0,1543612980,0,'23','*','*','*','*',0,0,0),(54,'enrol_paypal','\\enrol_paypal\\task\\process_expirations',0,1543610040,0,'*','*','*','*','*',0,0,0),(55,'enrol_self','\\enrol_self\\task\\sync_enrolments',0,1543610400,0,'*/10','*','*','*','*',0,0,0),(56,'enrol_self','\\enrol_self\\task\\send_expiry_notifications',0,1543610400,0,'*/10','*','*','*','*',0,0,0),(57,'editor_atto','\\editor_atto\\task\\autosave_cleanup_task',0,1543986780,0,'13','5','*','*','3',0,0,0),(58,'repository_onedrive','\\repository_onedrive\\remove_temp_access_task',0,1544152020,0,'7','3','*','*','5',0,0,0),(59,'tool_analytics','\\tool_analytics\\task\\train_models',0,1543626000,0,'0','1','*','*','*',0,0,0),(60,'tool_analytics','\\tool_analytics\\task\\predict_models',0,1543611600,0,'0','21','*','*','*',0,0,0),(61,'tool_cohortroles','\\tool_cohortroles\\task\\cohort_role_sync',0,1543612680,0,'18','*','*','*','*',0,0,0),(62,'tool_dataprivacy','\\tool_dataprivacy\\task\\expired_retention_period',0,1543611600,0,'0','21','*','*','*',0,0,0),(63,'tool_dataprivacy','\\tool_dataprivacy\\task\\delete_expired_contexts',0,1543672800,0,'0','14','*','*','*',0,0,0),(64,'tool_dataprivacy','\\tool_dataprivacy\\task\\delete_expired_requests',0,1543677180,0,'13','15','*','*','*',0,0,0),(65,'tool_dataprivacy','\\tool_dataprivacy\\task\\delete_existing_deleted_users',0,1543677120,0,'12','15','*','*','*',0,0,1),(66,'tool_langimport','\\tool_langimport\\task\\update_langpacks_task',0,1543637700,0,'15','4','*','*','*',0,0,0),(67,'tool_messageinbound','\\tool_messageinbound\\task\\pickup_task',0,1543610160,0,'*','*','*','*','*',0,0,0),(68,'tool_messageinbound','\\tool_messageinbound\\task\\cleanup_task',0,1543629300,0,'55','1','*','*','*',0,0,0),(69,'tool_monitor','\\tool_monitor\\task\\clean_events',0,1543610160,0,'*','*','*','*','*',0,0,0),(70,'tool_monitor','\\tool_monitor\\task\\check_subscriptions',0,1543662240,0,'4','11','*','*','*',0,0,0),(71,'tool_recyclebin','\\tool_recyclebin\\task\\cleanup_course_bin',0,1543611600,0,'*/30','*','*','*','*',0,0,0),(72,'tool_recyclebin','\\tool_recyclebin\\task\\cleanup_category_bin',0,1543611600,0,'*/30','*','*','*','*',0,0,0),(73,'assignfeedback_editpdf','\\assignfeedback_editpdf\\task\\convert_submissions',0,1543610700,0,'*/15','*','*','*','*',0,0,0),(74,'ltiservice_gradebookservices','\\ltiservice_gradebookservices\\task\\cleanup_task',0,1543673460,0,'11','14','*','*','*',0,0,0),(75,'logstore_legacy','\\logstore_legacy\\task\\cleanup_task',0,1543641600,0,'20','5','*','*','*',0,0,0),(76,'logstore_standard','\\logstore_standard\\task\\cleanup_task',0,1543637040,0,'4','4','*','*','*',0,0,0);
/*!40000 ALTER TABLE `mdl_task_scheduled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_cohortroles`
--

DROP TABLE IF EXISTS `mdl_tool_cohortroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_cohortroles` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `cohortid` bigint(10) NOT NULL,
  `roleid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_toolcoho_cohroluse_uix` (`cohortid`,`roleid`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Mapping of users to cohort role assignments.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_cohortroles`
--

LOCK TABLES `mdl_tool_cohortroles` WRITE;
/*!40000 ALTER TABLE `mdl_tool_cohortroles` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_cohortroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_customlang`
--

DROP TABLE IF EXISTS `mdl_tool_customlang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_customlang` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `lang` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `componentid` bigint(10) NOT NULL,
  `stringid` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `original` longtext COLLATE utf8mb4_bin NOT NULL,
  `master` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `local` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL,
  `timecustomized` bigint(10) DEFAULT NULL,
  `outdated` smallint(3) DEFAULT 0,
  `modified` smallint(3) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_toolcust_lancomstr_uix` (`lang`,`componentid`,`stringid`),
  KEY `mdl_toolcust_com_ix` (`componentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Contains the working checkout of all strings and their custo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_customlang`
--

LOCK TABLES `mdl_tool_customlang` WRITE;
/*!40000 ALTER TABLE `mdl_tool_customlang` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_customlang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_customlang_components`
--

DROP TABLE IF EXISTS `mdl_tool_customlang_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_customlang_components` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `version` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Contains the list of all installed plugins that provide thei';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_customlang_components`
--

LOCK TABLES `mdl_tool_customlang_components` WRITE;
/*!40000 ALTER TABLE `mdl_tool_customlang_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_customlang_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_dataprivacy_category`
--

DROP TABLE IF EXISTS `mdl_tool_dataprivacy_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_dataprivacy_category` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `descriptionformat` tinyint(1) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Data categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_dataprivacy_category`
--

LOCK TABLES `mdl_tool_dataprivacy_category` WRITE;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_dataprivacy_contextlist`
--

DROP TABLE IF EXISTS `mdl_tool_dataprivacy_contextlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_dataprivacy_contextlist` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `component` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='List of contexts for a component';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_dataprivacy_contextlist`
--

LOCK TABLES `mdl_tool_dataprivacy_contextlist` WRITE;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_contextlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_contextlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_dataprivacy_ctxexpired`
--

DROP TABLE IF EXISTS `mdl_tool_dataprivacy_ctxexpired`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_dataprivacy_ctxexpired` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `unexpiredroles` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `expiredroles` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `defaultexpired` tinyint(1) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `usermodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_tooldatactxe_con_uix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Default comment for the table, please edit me';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_dataprivacy_ctxexpired`
--

LOCK TABLES `mdl_tool_dataprivacy_ctxexpired` WRITE;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_ctxexpired` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_ctxexpired` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_dataprivacy_ctxinstance`
--

DROP TABLE IF EXISTS `mdl_tool_dataprivacy_ctxinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_dataprivacy_ctxinstance` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `purposeid` bigint(10) DEFAULT NULL,
  `categoryid` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_tooldatactxi_con_uix` (`contextid`),
  KEY `mdl_tooldatactxi_pur_ix` (`purposeid`),
  KEY `mdl_tooldatactxi_cat_ix` (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Default comment for the table, please edit me';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_dataprivacy_ctxinstance`
--

LOCK TABLES `mdl_tool_dataprivacy_ctxinstance` WRITE;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_ctxinstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_ctxinstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_dataprivacy_ctxlevel`
--

DROP TABLE IF EXISTS `mdl_tool_dataprivacy_ctxlevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_dataprivacy_ctxlevel` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextlevel` smallint(3) NOT NULL,
  `purposeid` bigint(10) DEFAULT NULL,
  `categoryid` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_tooldatactxl_con_uix` (`contextlevel`),
  KEY `mdl_tooldatactxl_cat_ix` (`categoryid`),
  KEY `mdl_tooldatactxl_pur_ix` (`purposeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Default comment for the table, please edit me';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_dataprivacy_ctxlevel`
--

LOCK TABLES `mdl_tool_dataprivacy_ctxlevel` WRITE;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_ctxlevel` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_ctxlevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_dataprivacy_ctxlst_ctx`
--

DROP TABLE IF EXISTS `mdl_tool_dataprivacy_ctxlst_ctx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_dataprivacy_ctxlst_ctx` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `contextlistid` bigint(10) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_tooldatactxlctx_con_ix` (`contextlistid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='A contextlist context item';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_dataprivacy_ctxlst_ctx`
--

LOCK TABLES `mdl_tool_dataprivacy_ctxlst_ctx` WRITE;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_ctxlst_ctx` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_ctxlst_ctx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_dataprivacy_purpose`
--

DROP TABLE IF EXISTS `mdl_tool_dataprivacy_purpose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_dataprivacy_purpose` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `descriptionformat` tinyint(1) DEFAULT NULL,
  `lawfulbases` longtext COLLATE utf8mb4_bin NOT NULL,
  `sensitivedatareasons` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `retentionperiod` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `protected` tinyint(1) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Data purposes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_dataprivacy_purpose`
--

LOCK TABLES `mdl_tool_dataprivacy_purpose` WRITE;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_purpose` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_purpose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_dataprivacy_purposerole`
--

DROP TABLE IF EXISTS `mdl_tool_dataprivacy_purposerole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_dataprivacy_purposerole` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `purposeid` bigint(10) NOT NULL,
  `roleid` bigint(10) NOT NULL,
  `lawfulbases` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `sensitivedatareasons` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `retentionperiod` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `protected` tinyint(1) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_tooldatapurp_purrol_uix` (`purposeid`,`roleid`),
  KEY `mdl_tooldatapurp_pur_ix` (`purposeid`),
  KEY `mdl_tooldatapurp_rol_ix` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Data purpose overrides for a specific role';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_dataprivacy_purposerole`
--

LOCK TABLES `mdl_tool_dataprivacy_purposerole` WRITE;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_purposerole` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_purposerole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_dataprivacy_request`
--

DROP TABLE IF EXISTS `mdl_tool_dataprivacy_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_dataprivacy_request` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `type` bigint(10) NOT NULL DEFAULT 0,
  `comments` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `commentsformat` tinyint(2) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `requestedby` bigint(10) NOT NULL DEFAULT 0,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `dpo` bigint(10) DEFAULT 0,
  `dpocomment` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `dpocommentformat` tinyint(2) NOT NULL DEFAULT 0,
  `usermodified` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `creationmethod` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_tooldatarequ_use_ix` (`userid`),
  KEY `mdl_tooldatarequ_req_ix` (`requestedby`),
  KEY `mdl_tooldatarequ_dpo_ix` (`dpo`),
  KEY `mdl_tooldatarequ_use2_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Table for data requests';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_dataprivacy_request`
--

LOCK TABLES `mdl_tool_dataprivacy_request` WRITE;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_dataprivacy_rqst_ctxlst`
--

DROP TABLE IF EXISTS `mdl_tool_dataprivacy_rqst_ctxlst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_dataprivacy_rqst_ctxlst` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `requestid` bigint(10) NOT NULL,
  `contextlistid` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_tooldatarqstctxl_reqco_uix` (`requestid`,`contextlistid`),
  KEY `mdl_tooldatarqstctxl_req_ix` (`requestid`),
  KEY `mdl_tooldatarqstctxl_con_ix` (`contextlistid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Association table joining requests and contextlists';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_dataprivacy_rqst_ctxlst`
--

LOCK TABLES `mdl_tool_dataprivacy_rqst_ctxlst` WRITE;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_rqst_ctxlst` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_dataprivacy_rqst_ctxlst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_monitor_events`
--

DROP TABLE IF EXISTS `mdl_tool_monitor_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_monitor_events` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(254) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `contextlevel` bigint(10) NOT NULL,
  `contextinstanceid` bigint(10) NOT NULL,
  `link` varchar(254) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `courseid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='A table that keeps a log of events related to subscriptions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_monitor_events`
--

LOCK TABLES `mdl_tool_monitor_events` WRITE;
/*!40000 ALTER TABLE `mdl_tool_monitor_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_monitor_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_monitor_history`
--

DROP TABLE IF EXISTS `mdl_tool_monitor_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_monitor_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `sid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `timesent` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_toolmonihist_sidusetim_uix` (`sid`,`userid`,`timesent`),
  KEY `mdl_toolmonihist_sid_ix` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Table to store history of message notifications sent';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_monitor_history`
--

LOCK TABLES `mdl_tool_monitor_history` WRITE;
/*!40000 ALTER TABLE `mdl_tool_monitor_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_monitor_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_monitor_rules`
--

DROP TABLE IF EXISTS `mdl_tool_monitor_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_monitor_rules` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `descriptionformat` tinyint(1) NOT NULL,
  `name` varchar(254) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `userid` bigint(10) NOT NULL,
  `courseid` bigint(10) NOT NULL,
  `plugin` varchar(254) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `eventname` varchar(254) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `template` longtext COLLATE utf8mb4_bin NOT NULL,
  `templateformat` tinyint(1) NOT NULL,
  `frequency` smallint(4) NOT NULL,
  `timewindow` mediumint(5) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_toolmonirule_couuse_ix` (`courseid`,`userid`),
  KEY `mdl_toolmonirule_eve_ix` (`eventname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Table to store rules';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_monitor_rules`
--

LOCK TABLES `mdl_tool_monitor_rules` WRITE;
/*!40000 ALTER TABLE `mdl_tool_monitor_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_monitor_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_monitor_subscriptions`
--

DROP TABLE IF EXISTS `mdl_tool_monitor_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_monitor_subscriptions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `ruleid` bigint(10) NOT NULL,
  `cmid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `lastnotificationsent` bigint(10) NOT NULL DEFAULT 0,
  `inactivedate` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_toolmonisubs_couuse_ix` (`courseid`,`userid`),
  KEY `mdl_toolmonisubs_rul_ix` (`ruleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Table to store user subscriptions to various rules';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_monitor_subscriptions`
--

LOCK TABLES `mdl_tool_monitor_subscriptions` WRITE;
/*!40000 ALTER TABLE `mdl_tool_monitor_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_monitor_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_policy`
--

DROP TABLE IF EXISTS `mdl_tool_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_policy` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `sortorder` mediumint(5) NOT NULL DEFAULT 999,
  `currentversionid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_toolpoli_cur_ix` (`currentversionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Contains the list of policy documents defined on the site.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_policy`
--

LOCK TABLES `mdl_tool_policy` WRITE;
/*!40000 ALTER TABLE `mdl_tool_policy` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_policy_acceptances`
--

DROP TABLE IF EXISTS `mdl_tool_policy_acceptances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_policy_acceptances` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `policyversionid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `lang` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `usermodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `note` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_toolpoliacce_poluse_uix` (`policyversionid`,`userid`),
  KEY `mdl_toolpoliacce_pol_ix` (`policyversionid`),
  KEY `mdl_toolpoliacce_use_ix` (`userid`),
  KEY `mdl_toolpoliacce_use2_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Tracks users accepting the policy versions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_policy_acceptances`
--

LOCK TABLES `mdl_tool_policy_acceptances` WRITE;
/*!40000 ALTER TABLE `mdl_tool_policy_acceptances` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_policy_acceptances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_policy_versions`
--

DROP TABLE IF EXISTS `mdl_tool_policy_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_policy_versions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(1333) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `type` smallint(3) NOT NULL DEFAULT 0,
  `audience` smallint(3) NOT NULL DEFAULT 0,
  `archived` smallint(3) NOT NULL DEFAULT 0,
  `usermodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `policyid` bigint(10) NOT NULL,
  `revision` varchar(1333) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `summary` longtext COLLATE utf8mb4_bin NOT NULL,
  `summaryformat` smallint(3) NOT NULL,
  `content` longtext COLLATE utf8mb4_bin NOT NULL,
  `contentformat` smallint(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_toolpolivers_use_ix` (`usermodified`),
  KEY `mdl_toolpolivers_pol_ix` (`policyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Holds versions of the policy documents';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_policy_versions`
--

LOCK TABLES `mdl_tool_policy_versions` WRITE;
/*!40000 ALTER TABLE `mdl_tool_policy_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_policy_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_recyclebin_category`
--

DROP TABLE IF EXISTS `mdl_tool_recyclebin_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_recyclebin_category` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `categoryid` bigint(10) NOT NULL,
  `shortname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `fullname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_toolrecycate_tim_ix` (`timecreated`),
  KEY `mdl_toolrecycate_cat_ix` (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='A list of items in the category recycle bin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_recyclebin_category`
--

LOCK TABLES `mdl_tool_recyclebin_category` WRITE;
/*!40000 ALTER TABLE `mdl_tool_recyclebin_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_recyclebin_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_recyclebin_course`
--

DROP TABLE IF EXISTS `mdl_tool_recyclebin_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_recyclebin_course` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `section` bigint(10) NOT NULL,
  `module` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_toolrecycour_tim_ix` (`timecreated`),
  KEY `mdl_toolrecycour_cou_ix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='A list of items in the course recycle bin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_recyclebin_course`
--

LOCK TABLES `mdl_tool_recyclebin_course` WRITE;
/*!40000 ALTER TABLE `mdl_tool_recyclebin_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_tool_recyclebin_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_usertours_steps`
--

DROP TABLE IF EXISTS `mdl_tool_usertours_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_usertours_steps` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `tourid` bigint(10) NOT NULL,
  `title` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `targettype` tinyint(2) NOT NULL,
  `targetvalue` longtext COLLATE utf8mb4_bin NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `configdata` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_tooluserstep_tousor_ix` (`tourid`,`sortorder`),
  KEY `mdl_tooluserstep_tou_ix` (`tourid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Steps in an tour';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_usertours_steps`
--

LOCK TABLES `mdl_tool_usertours_steps` WRITE;
/*!40000 ALTER TABLE `mdl_tool_usertours_steps` DISABLE KEYS */;
INSERT INTO `mdl_tool_usertours_steps` VALUES (1,1,'tour1_title_welcome,tool_usertours','tour1_content_welcome,tool_usertours',2,'',0,'{}'),(2,1,'tour1_title_navigation,tool_usertours','tour1_content_navigation,tool_usertours',0,'[data-region=\"drawer-toggle\"] button[data-action=\"toggle-drawer\"]',1,'{}'),(3,1,'tour1_title_customisation,tool_usertours','tour1_content_customisation,tool_usertours',0,'body:not(.editing) #page-header .card-block',2,'{\"placement\":\"bottom\"}'),(4,1,'tour1_title_blockregion,tool_usertours','tour1_content_blockregion,tool_usertours',0,'body.editing [data-region=\"blocks-column\"]',3,'{}'),(5,1,'tour1_title_addingblocks,tool_usertours','tour1_content_addingblocks,tool_usertours',0,'body.editing [data-region=\"blocks-column\"]',4,'{\"placement\":\"bottom\"}'),(6,1,'tour1_title_end,tool_usertours','tour1_content_end,tool_usertours',2,'',5,'{}'),(7,2,'tour2_title_welcome,tool_usertours','tour2_content_welcome,tool_usertours',2,'',0,'{}'),(8,2,'tour2_title_customisation,tool_usertours','tour2_content_customisation,tool_usertours',0,'body:not(.editing) #page-header .card-block',1,'{}'),(9,2,'tour2_title_navigation,tool_usertours','tour2_content_navigation,tool_usertours',0,'[data-region=\"drawer-toggle\"] button[data-action=\"toggle-drawer\"]',2,'{}'),(10,2,'tour2_title_opendrawer,tool_usertours','tour2_content_opendrawer,tool_usertours',0,'body:not(.drawer-open-left) [data-region=\"drawer-toggle\"] button[data-action=\"toggle-drawer\"]',3,'{}'),(11,2,'tour2_title_participants,tool_usertours','tour2_content_participants,tool_usertours',0,'body.drawer-open-left [data-region=\"drawer\"] [data-key=\"participants\"]',4,'{\"placement\":\"bottom\",\"backdrop\":\"0\"}'),(12,2,'tour2_title_addblock,tool_usertours','tour2_content_addblock,tool_usertours',0,'body.drawer-open-left:not(.editing) [data-region=\"drawer\"]',5,'{\"placement\":\"right\",\"orphan\":\"0\",\"backdrop\":\"0\",\"reflex\":\"0\"}'),(13,2,'tour2_title_addingblocks,tool_usertours','tour2_content_addingblocks,tool_usertours',0,'body.drawer-open-left.editing [data-region=\"drawer\"] [data-key=\"addblock\"]',6,'{\"backdrop\":\"0\",\"placement\":\"top\"}'),(14,2,'tour2_title_end,tool_usertours','tour2_content_end,tool_usertours',2,'',7,'{}');
/*!40000 ALTER TABLE `mdl_tool_usertours_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_tool_usertours_tours`
--

DROP TABLE IF EXISTS `mdl_tool_usertours_tours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_tool_usertours_tours` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `pathmatch` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `configdata` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='List of tours';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_tool_usertours_tours`
--

LOCK TABLES `mdl_tool_usertours_tours` WRITE;
/*!40000 ALTER TABLE `mdl_tool_usertours_tours` DISABLE KEYS */;
INSERT INTO `mdl_tool_usertours_tours` VALUES (1,'Boost - administrator','A tour of some new features in the Boost theme, for administrators','FRONTPAGE',1,0,'{\"placement\":\"bottom\",\"orphan\":\"0\",\"backdrop\":\"1\",\"reflex\":\"0\",\"filtervalues\":{\"role\":[\"-1\"],\"theme\":[\"boost\"]},\"majorupdatetime\":1479366244,\"default_tour\":true,\"filename\":\"boost_administrator.json\",\"version\":1,\"shipped_tour\":true,\"shipped_filename\":\"boost_administrator.json\",\"shipped_version\":1}'),(2,'Boost - course view','A tour for introducing administrators and teachers to courses in the Boost theme','/course/view.php%',1,1,'{\"placement\":\"bottom\",\"orphan\":\"0\",\"backdrop\":\"1\",\"reflex\":\"0\",\"filtervalues\":{\"role\":[\"-1\",\"editingteacher\"],\"theme\":[\"boost\"]},\"majorupdatetime\":1480050104,\"shipped_tour\":true,\"shipped_filename\":\"boost_course_view.json\",\"shipped_version\":1}');
/*!40000 ALTER TABLE `mdl_tool_usertours_tours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_upgrade_log`
--

DROP TABLE IF EXISTS `mdl_upgrade_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_upgrade_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `type` bigint(10) NOT NULL,
  `plugin` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `version` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetversion` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `info` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `details` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `backtrace` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `userid` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_upgrlog_tim_ix` (`timemodified`),
  KEY `mdl_upgrlog_typtim_ix` (`type`,`timemodified`),
  KEY `mdl_upgrlog_use_ix` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=1185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Upgrade logging';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_upgrade_log`
--

LOCK TABLES `mdl_upgrade_log` WRITE;
/*!40000 ALTER TABLE `mdl_upgrade_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_upgrade_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_url`
--

DROP TABLE IF EXISTS `mdl_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_url` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `externalurl` longtext COLLATE utf8mb4_bin NOT NULL,
  `display` smallint(4) NOT NULL DEFAULT 0,
  `displayoptions` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_url_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='each record is one url resource';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_url`
--

LOCK TABLES `mdl_url` WRITE;
/*!40000 ALTER TABLE `mdl_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user`
--

DROP TABLE IF EXISTS `mdl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `auth` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'manual',
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `policyagreed` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `suspended` tinyint(1) NOT NULL DEFAULT 0,
  `mnethostid` bigint(10) NOT NULL DEFAULT 0,
  `username` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `password` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `idnumber` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `firstname` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `lastname` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `emailstop` tinyint(1) NOT NULL DEFAULT 0,
  `icq` varchar(15) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `skype` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `yahoo` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `aim` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `msn` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `phone1` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `phone2` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `institution` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `department` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `city` varchar(120) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `country` varchar(2) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `lang` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT 'en',
  `calendartype` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT 'gregorian',
  `theme` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timezone` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '99',
  `firstaccess` bigint(10) NOT NULL DEFAULT 0,
  `lastaccess` bigint(10) NOT NULL DEFAULT 0,
  `lastlogin` bigint(10) NOT NULL DEFAULT 0,
  `currentlogin` bigint(10) NOT NULL DEFAULT 0,
  `lastip` varchar(45) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `secret` varchar(15) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `picture` bigint(10) NOT NULL DEFAULT 0,
  `url` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 1,
  `mailformat` tinyint(1) NOT NULL DEFAULT 1,
  `maildigest` tinyint(1) NOT NULL DEFAULT 0,
  `maildisplay` tinyint(2) NOT NULL DEFAULT 2,
  `autosubscribe` tinyint(1) NOT NULL DEFAULT 1,
  `trackforums` tinyint(1) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `trustbitmask` bigint(10) NOT NULL DEFAULT 0,
  `imagealt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lastnamephonetic` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstnamephonetic` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `middlename` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `alternatename` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_user_mneuse_uix` (`mnethostid`,`username`),
  KEY `mdl_user_del_ix` (`deleted`),
  KEY `mdl_user_con_ix` (`confirmed`),
  KEY `mdl_user_fir_ix` (`firstname`),
  KEY `mdl_user_las_ix` (`lastname`),
  KEY `mdl_user_cit_ix` (`city`),
  KEY `mdl_user_cou_ix` (`country`),
  KEY `mdl_user_las2_ix` (`lastaccess`),
  KEY `mdl_user_ema_ix` (`email`),
  KEY `mdl_user_aut_ix` (`auth`),
  KEY `mdl_user_idn_ix` (`idnumber`),
  KEY `mdl_user_fir2_ix` (`firstnamephonetic`),
  KEY `mdl_user_las3_ix` (`lastnamephonetic`),
  KEY `mdl_user_mid_ix` (`middlename`),
  KEY `mdl_user_alt_ix` (`alternatename`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='One record for each person';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user`
--

LOCK TABLES `mdl_user` WRITE;
/*!40000 ALTER TABLE `mdl_user` DISABLE KEYS */;
INSERT INTO `mdl_user` VALUES (1,'manual',1,0,0,0,1,'guest','$2y$10$OB.mvCqgYGsI2JcbaZHxHuC9dDxmyz8njXNKVNjZhKnPuEhCJi.jm','','Guest user',' ','root@localhost',0,'','','','','','','','','','','','','en','gregorian','','99',0,0,0,0,'','',0,'','This user is a special user that allows read-only access to some courses.',1,1,0,2,1,0,0,1543609693,0,NULL,NULL,NULL,NULL,NULL),(2,'manual',1,0,0,0,1,'admin','$2y$10$mz5/ji..8QvtZ6YDw6vtou72sIMOajp0FDD5tpZ41lQDxI9aNH5DO','','Admin','User','admin@admin.com',0,'','','','','','','','','','','','','en','gregorian','','99',1543610553,1544544436,1544460733,1544538552,'172.23.0.1','',0,'',NULL,1,1,0,1,1,0,0,1543609693,0,NULL,NULL,NULL,NULL,NULL),(3,'manual',1,0,0,0,1,'api','$2y$10$IEP7bocwvvhF.Q1PyFwtFu7olh.ZsHtK7bG42rZCnqbaUVnnGZ.z2','','api','moodle','apimoodle@moodle.com',0,'','','','','','','','','','','','','pt_br','gregorian','','99',0,0,0,0,'','',0,'','',1,1,0,2,1,0,1544462690,1544462690,0,'','','','','');
/*!40000 ALTER TABLE `mdl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_devices`
--

DROP TABLE IF EXISTS `mdl_user_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_devices` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `appid` varchar(128) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `name` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `model` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `platform` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `version` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `pushid` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `uuid` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_userdevi_pususe_uix` (`pushid`,`userid`),
  KEY `mdl_userdevi_uuiuse_ix` (`uuid`,`userid`),
  KEY `mdl_userdevi_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='This table stores user''s mobile devices information in order';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_devices`
--

LOCK TABLES `mdl_user_devices` WRITE;
/*!40000 ALTER TABLE `mdl_user_devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_user_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_enrolments`
--

DROP TABLE IF EXISTS `mdl_user_enrolments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_enrolments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `status` bigint(10) NOT NULL DEFAULT 0,
  `enrolid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `timestart` bigint(10) NOT NULL DEFAULT 0,
  `timeend` bigint(10) NOT NULL DEFAULT 2147483647,
  `modifierid` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_userenro_enruse_uix` (`enrolid`,`userid`),
  KEY `mdl_userenro_enr_ix` (`enrolid`),
  KEY `mdl_userenro_use_ix` (`userid`),
  KEY `mdl_userenro_mod_ix` (`modifierid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Users participating in courses (aka enrolled users) - everyb';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_enrolments`
--

LOCK TABLES `mdl_user_enrolments` WRITE;
/*!40000 ALTER TABLE `mdl_user_enrolments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_user_enrolments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_info_category`
--

DROP TABLE IF EXISTS `mdl_user_info_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_info_category` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Customisable fields categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_info_category`
--

LOCK TABLES `mdl_user_info_category` WRITE;
/*!40000 ALTER TABLE `mdl_user_info_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_user_info_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_info_data`
--

DROP TABLE IF EXISTS `mdl_user_info_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_info_data` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `fieldid` bigint(10) NOT NULL DEFAULT 0,
  `data` longtext COLLATE utf8mb4_bin NOT NULL,
  `dataformat` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_userinfodata_usefie_uix` (`userid`,`fieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Data for the customisable user fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_info_data`
--

LOCK TABLES `mdl_user_info_data` WRITE;
/*!40000 ALTER TABLE `mdl_user_info_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_user_info_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_info_field`
--

DROP TABLE IF EXISTS `mdl_user_info_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_info_field` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT 'shortname',
  `name` longtext COLLATE utf8mb4_bin NOT NULL,
  `datatype` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 0,
  `categoryid` bigint(10) NOT NULL DEFAULT 0,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `required` tinyint(2) NOT NULL DEFAULT 0,
  `locked` tinyint(2) NOT NULL DEFAULT 0,
  `visible` smallint(4) NOT NULL DEFAULT 0,
  `forceunique` tinyint(2) NOT NULL DEFAULT 0,
  `signup` tinyint(2) NOT NULL DEFAULT 0,
  `defaultdata` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `defaultdataformat` tinyint(2) NOT NULL DEFAULT 0,
  `param1` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `param2` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `param3` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `param4` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `param5` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Customisable user profile fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_info_field`
--

LOCK TABLES `mdl_user_info_field` WRITE;
/*!40000 ALTER TABLE `mdl_user_info_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_user_info_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_lastaccess`
--

DROP TABLE IF EXISTS `mdl_user_lastaccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_lastaccess` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `timeaccess` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_userlast_usecou_uix` (`userid`,`courseid`),
  KEY `mdl_userlast_use_ix` (`userid`),
  KEY `mdl_userlast_cou_ix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='To keep track of course page access times, used in online pa';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_lastaccess`
--

LOCK TABLES `mdl_user_lastaccess` WRITE;
/*!40000 ALTER TABLE `mdl_user_lastaccess` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_user_lastaccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_password_history`
--

DROP TABLE IF EXISTS `mdl_user_password_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_password_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `hash` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_userpasshist_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='A rotating log of hashes of previously used passwords for ea';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_password_history`
--

LOCK TABLES `mdl_user_password_history` WRITE;
/*!40000 ALTER TABLE `mdl_user_password_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_user_password_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_password_resets`
--

DROP TABLE IF EXISTS `mdl_user_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_password_resets` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `timerequested` bigint(10) NOT NULL,
  `timererequested` bigint(10) NOT NULL DEFAULT 0,
  `token` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_userpassrese_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='table tracking password reset confirmation tokens';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_password_resets`
--

LOCK TABLES `mdl_user_password_resets` WRITE;
/*!40000 ALTER TABLE `mdl_user_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_user_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_preferences`
--

DROP TABLE IF EXISTS `mdl_user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_preferences` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `value` varchar(1333) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_userpref_usenam_uix` (`userid`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Allows modules to store arbitrary user preferences';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_preferences`
--

LOCK TABLES `mdl_user_preferences` WRITE;
/*!40000 ALTER TABLE `mdl_user_preferences` DISABLE KEYS */;
INSERT INTO `mdl_user_preferences` VALUES (1,2,'core_message_migrate_data','1'),(2,3,'auth_forcepasswordchange','0'),(3,3,'email_bounce_count','1'),(4,3,'email_send_count','1'),(5,2,'userselector_preserveselected','0'),(6,2,'userselector_autoselectunique','0'),(7,2,'userselector_searchanywhere','0'),(8,2,'drawer-open-nav','true');
/*!40000 ALTER TABLE `mdl_user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_user_private_key`
--

DROP TABLE IF EXISTS `mdl_user_private_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_user_private_key` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `script` varchar(128) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `value` varchar(128) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `userid` bigint(10) NOT NULL,
  `instance` bigint(10) DEFAULT NULL,
  `iprestriction` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `validuntil` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_userprivkey_scrval_ix` (`script`,`value`),
  KEY `mdl_userprivkey_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='access keys used in cookieless scripts - rss, etc.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_user_private_key`
--

LOCK TABLES `mdl_user_private_key` WRITE;
/*!40000 ALTER TABLE `mdl_user_private_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_user_private_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_wiki`
--

DROP TABLE IF EXISTS `mdl_wiki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_wiki` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT 'Wiki',
  `intro` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `firstpagetitle` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT 'First Page',
  `wikimode` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'collaborative',
  `defaultformat` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'creole',
  `forceformat` tinyint(1) NOT NULL DEFAULT 1,
  `editbegin` bigint(10) NOT NULL DEFAULT 0,
  `editend` bigint(10) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_wiki_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores Wiki activity configuration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_wiki`
--

LOCK TABLES `mdl_wiki` WRITE;
/*!40000 ALTER TABLE `mdl_wiki` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_wiki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_wiki_links`
--

DROP TABLE IF EXISTS `mdl_wiki_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_wiki_links` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `subwikiid` bigint(10) NOT NULL DEFAULT 0,
  `frompageid` bigint(10) NOT NULL DEFAULT 0,
  `topageid` bigint(10) NOT NULL DEFAULT 0,
  `tomissingpage` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_wikilink_fro_ix` (`frompageid`),
  KEY `mdl_wikilink_sub_ix` (`subwikiid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Page wiki links';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_wiki_links`
--

LOCK TABLES `mdl_wiki_links` WRITE;
/*!40000 ALTER TABLE `mdl_wiki_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_wiki_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_wiki_locks`
--

DROP TABLE IF EXISTS `mdl_wiki_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_wiki_locks` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `pageid` bigint(10) NOT NULL DEFAULT 0,
  `sectionname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `lockedat` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Manages page locks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_wiki_locks`
--

LOCK TABLES `mdl_wiki_locks` WRITE;
/*!40000 ALTER TABLE `mdl_wiki_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_wiki_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_wiki_pages`
--

DROP TABLE IF EXISTS `mdl_wiki_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_wiki_pages` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `subwikiid` bigint(10) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT 'title',
  `cachedcontent` longtext COLLATE utf8mb4_bin NOT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `timerendered` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `pageviews` bigint(10) NOT NULL DEFAULT 0,
  `readonly` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_wikipage_subtituse_uix` (`subwikiid`,`title`,`userid`),
  KEY `mdl_wikipage_sub_ix` (`subwikiid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores wiki pages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_wiki_pages`
--

LOCK TABLES `mdl_wiki_pages` WRITE;
/*!40000 ALTER TABLE `mdl_wiki_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_wiki_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_wiki_subwikis`
--

DROP TABLE IF EXISTS `mdl_wiki_subwikis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_wiki_subwikis` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `wikiid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_wikisubw_wikgrouse_uix` (`wikiid`,`groupid`,`userid`),
  KEY `mdl_wikisubw_wik_ix` (`wikiid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores subwiki instances';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_wiki_subwikis`
--

LOCK TABLES `mdl_wiki_subwikis` WRITE;
/*!40000 ALTER TABLE `mdl_wiki_subwikis` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_wiki_subwikis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_wiki_synonyms`
--

DROP TABLE IF EXISTS `mdl_wiki_synonyms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_wiki_synonyms` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `subwikiid` bigint(10) NOT NULL DEFAULT 0,
  `pageid` bigint(10) NOT NULL DEFAULT 0,
  `pagesynonym` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT 'Pagesynonym',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_wikisyno_pagpag_uix` (`pageid`,`pagesynonym`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores wiki pages synonyms';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_wiki_synonyms`
--

LOCK TABLES `mdl_wiki_synonyms` WRITE;
/*!40000 ALTER TABLE `mdl_wiki_synonyms` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_wiki_synonyms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_wiki_versions`
--

DROP TABLE IF EXISTS `mdl_wiki_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_wiki_versions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `pageid` bigint(10) NOT NULL DEFAULT 0,
  `content` longtext COLLATE utf8mb4_bin NOT NULL,
  `contentformat` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'creole',
  `version` mediumint(5) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_wikivers_pag_ix` (`pageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores wiki page history';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_wiki_versions`
--

LOCK TABLES `mdl_wiki_versions` WRITE;
/*!40000 ALTER TABLE `mdl_wiki_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_wiki_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop`
--

DROP TABLE IF EXISTS `mdl_workshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshop` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `intro` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `introformat` smallint(3) NOT NULL DEFAULT 0,
  `instructauthors` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `instructauthorsformat` smallint(3) NOT NULL DEFAULT 0,
  `instructreviewers` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `instructreviewersformat` smallint(3) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL,
  `phase` smallint(3) DEFAULT 0,
  `useexamples` tinyint(2) DEFAULT 0,
  `usepeerassessment` tinyint(2) DEFAULT 0,
  `useselfassessment` tinyint(2) DEFAULT 0,
  `grade` decimal(10,5) DEFAULT 80.00000,
  `gradinggrade` decimal(10,5) DEFAULT 20.00000,
  `strategy` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `evaluation` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `gradedecimals` smallint(3) DEFAULT 0,
  `nattachments` smallint(3) DEFAULT 0,
  `submissionfiletypes` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `latesubmissions` tinyint(2) DEFAULT 0,
  `maxbytes` bigint(10) DEFAULT 100000,
  `examplesmode` smallint(3) DEFAULT 0,
  `submissionstart` bigint(10) DEFAULT 0,
  `submissionend` bigint(10) DEFAULT 0,
  `assessmentstart` bigint(10) DEFAULT 0,
  `assessmentend` bigint(10) DEFAULT 0,
  `phaseswitchassessment` tinyint(2) NOT NULL DEFAULT 0,
  `conclusion` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `conclusionformat` smallint(3) NOT NULL DEFAULT 1,
  `overallfeedbackmode` smallint(3) DEFAULT 1,
  `overallfeedbackfiles` smallint(3) DEFAULT 0,
  `overallfeedbackfiletypes` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `overallfeedbackmaxbytes` bigint(10) DEFAULT 100000,
  PRIMARY KEY (`id`),
  KEY `mdl_work_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='This table keeps information about the module instances and ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshop`
--

LOCK TABLES `mdl_workshop` WRITE;
/*!40000 ALTER TABLE `mdl_workshop` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_aggregations`
--

DROP TABLE IF EXISTS `mdl_workshop_aggregations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshop_aggregations` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `gradinggrade` decimal(10,5) DEFAULT NULL,
  `timegraded` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_workaggr_woruse_uix` (`workshopid`,`userid`),
  KEY `mdl_workaggr_wor_ix` (`workshopid`),
  KEY `mdl_workaggr_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Aggregated grades for assessment are stored here. The aggreg';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshop_aggregations`
--

LOCK TABLES `mdl_workshop_aggregations` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_aggregations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_aggregations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_assessments`
--

DROP TABLE IF EXISTS `mdl_workshop_assessments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshop_assessments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `submissionid` bigint(10) NOT NULL,
  `reviewerid` bigint(10) NOT NULL,
  `weight` bigint(10) NOT NULL DEFAULT 1,
  `timecreated` bigint(10) DEFAULT 0,
  `timemodified` bigint(10) DEFAULT 0,
  `grade` decimal(10,5) DEFAULT NULL,
  `gradinggrade` decimal(10,5) DEFAULT NULL,
  `gradinggradeover` decimal(10,5) DEFAULT NULL,
  `gradinggradeoverby` bigint(10) DEFAULT NULL,
  `feedbackauthor` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `feedbackauthorformat` smallint(3) DEFAULT 0,
  `feedbackauthorattachment` smallint(3) DEFAULT 0,
  `feedbackreviewer` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `feedbackreviewerformat` smallint(3) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_workasse_sub_ix` (`submissionid`),
  KEY `mdl_workasse_gra_ix` (`gradinggradeoverby`),
  KEY `mdl_workasse_rev_ix` (`reviewerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Info about the made assessment and automatically calculated ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshop_assessments`
--

LOCK TABLES `mdl_workshop_assessments` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_assessments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_assessments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_grades`
--

DROP TABLE IF EXISTS `mdl_workshop_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshop_grades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assessmentid` bigint(10) NOT NULL,
  `strategy` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `dimensionid` bigint(10) NOT NULL,
  `grade` decimal(10,5) NOT NULL,
  `peercomment` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `peercommentformat` smallint(3) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_workgrad_assstrdim_uix` (`assessmentid`,`strategy`,`dimensionid`),
  KEY `mdl_workgrad_ass_ix` (`assessmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='How the reviewers filled-up the grading forms, given grades ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshop_grades`
--

LOCK TABLES `mdl_workshop_grades` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshop_submissions`
--

DROP TABLE IF EXISTS `mdl_workshop_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshop_submissions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `example` tinyint(2) DEFAULT 0,
  `authorid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `content` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `contentformat` smallint(3) NOT NULL DEFAULT 0,
  `contenttrust` smallint(3) NOT NULL DEFAULT 0,
  `attachment` tinyint(2) DEFAULT 0,
  `grade` decimal(10,5) DEFAULT NULL,
  `gradeover` decimal(10,5) DEFAULT NULL,
  `gradeoverby` bigint(10) DEFAULT NULL,
  `feedbackauthor` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `feedbackauthorformat` smallint(3) DEFAULT 0,
  `timegraded` bigint(10) DEFAULT NULL,
  `published` tinyint(2) DEFAULT 0,
  `late` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_worksubm_wor_ix` (`workshopid`),
  KEY `mdl_worksubm_gra_ix` (`gradeoverby`),
  KEY `mdl_worksubm_aut_ix` (`authorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Info about the submission and the aggregation of the grade f';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshop_submissions`
--

LOCK TABLES `mdl_workshop_submissions` WRITE;
/*!40000 ALTER TABLE `mdl_workshop_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshop_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopallocation_scheduled`
--

DROP TABLE IF EXISTS `mdl_workshopallocation_scheduled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopallocation_scheduled` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `enabled` tinyint(2) NOT NULL DEFAULT 0,
  `submissionend` bigint(10) NOT NULL,
  `timeallocated` bigint(10) DEFAULT NULL,
  `settings` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `resultstatus` bigint(10) DEFAULT NULL,
  `resultmessage` varchar(1333) COLLATE utf8mb4_bin DEFAULT NULL,
  `resultlog` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_worksche_wor_uix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Stores the allocation settings for the scheduled allocator';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopallocation_scheduled`
--

LOCK TABLES `mdl_workshopallocation_scheduled` WRITE;
/*!40000 ALTER TABLE `mdl_workshopallocation_scheduled` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopallocation_scheduled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopeval_best_settings`
--

DROP TABLE IF EXISTS `mdl_workshopeval_best_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopeval_best_settings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `comparison` smallint(3) DEFAULT 5,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_workbestsett_wor_uix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Settings for the grading evaluation subplugin Comparison wit';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopeval_best_settings`
--

LOCK TABLES `mdl_workshopeval_best_settings` WRITE;
/*!40000 ALTER TABLE `mdl_workshopeval_best_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopeval_best_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopform_accumulative`
--

DROP TABLE IF EXISTS `mdl_workshopform_accumulative`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopform_accumulative` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `sort` bigint(10) DEFAULT 0,
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `descriptionformat` smallint(3) DEFAULT 0,
  `grade` bigint(10) NOT NULL,
  `weight` mediumint(5) DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `mdl_workaccu_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='The assessment dimensions definitions of Accumulative gradin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopform_accumulative`
--

LOCK TABLES `mdl_workshopform_accumulative` WRITE;
/*!40000 ALTER TABLE `mdl_workshopform_accumulative` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopform_accumulative` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopform_comments`
--

DROP TABLE IF EXISTS `mdl_workshopform_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopform_comments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `sort` bigint(10) DEFAULT 0,
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `descriptionformat` smallint(3) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_workcomm_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='The assessment dimensions definitions of Comments strategy f';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopform_comments`
--

LOCK TABLES `mdl_workshopform_comments` WRITE;
/*!40000 ALTER TABLE `mdl_workshopform_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopform_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopform_numerrors`
--

DROP TABLE IF EXISTS `mdl_workshopform_numerrors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopform_numerrors` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `sort` bigint(10) DEFAULT 0,
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `descriptionformat` smallint(3) DEFAULT 0,
  `descriptiontrust` bigint(10) DEFAULT NULL,
  `grade0` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `grade1` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `weight` mediumint(5) DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `mdl_worknume_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='The assessment dimensions definitions of Number of errors gr';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopform_numerrors`
--

LOCK TABLES `mdl_workshopform_numerrors` WRITE;
/*!40000 ALTER TABLE `mdl_workshopform_numerrors` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopform_numerrors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopform_numerrors_map`
--

DROP TABLE IF EXISTS `mdl_workshopform_numerrors_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopform_numerrors_map` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `nonegative` bigint(10) NOT NULL,
  `grade` decimal(10,5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_worknumemap_wornon_uix` (`workshopid`,`nonegative`),
  KEY `mdl_worknumemap_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='This maps the number of errors to a percentual grade for sub';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopform_numerrors_map`
--

LOCK TABLES `mdl_workshopform_numerrors_map` WRITE;
/*!40000 ALTER TABLE `mdl_workshopform_numerrors_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopform_numerrors_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopform_rubric`
--

DROP TABLE IF EXISTS `mdl_workshopform_rubric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopform_rubric` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `sort` bigint(10) DEFAULT 0,
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `descriptionformat` smallint(3) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_workrubr_wor_ix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='The assessment dimensions definitions of Rubric grading stra';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopform_rubric`
--

LOCK TABLES `mdl_workshopform_rubric` WRITE;
/*!40000 ALTER TABLE `mdl_workshopform_rubric` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopform_rubric` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopform_rubric_config`
--

DROP TABLE IF EXISTS `mdl_workshopform_rubric_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopform_rubric_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `workshopid` bigint(10) NOT NULL,
  `layout` varchar(30) COLLATE utf8mb4_bin DEFAULT 'list',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_workrubrconf_wor_uix` (`workshopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='Configuration table for the Rubric grading strategy';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopform_rubric_config`
--

LOCK TABLES `mdl_workshopform_rubric_config` WRITE;
/*!40000 ALTER TABLE `mdl_workshopform_rubric_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopform_rubric_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_workshopform_rubric_levels`
--

DROP TABLE IF EXISTS `mdl_workshopform_rubric_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdl_workshopform_rubric_levels` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `dimensionid` bigint(10) NOT NULL,
  `grade` decimal(10,5) NOT NULL,
  `definition` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `definitionformat` smallint(3) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_workrubrleve_dim_ix` (`dimensionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED COMMENT='The definition of rubric rating scales';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_workshopform_rubric_levels`
--

LOCK TABLES `mdl_workshopform_rubric_levels` WRITE;
/*!40000 ALTER TABLE `mdl_workshopform_rubric_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_workshopform_rubric_levels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-11 16:08:30