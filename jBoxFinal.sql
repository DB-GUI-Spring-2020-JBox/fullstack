-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 35.188.20.36    Database: Jbox
-- ------------------------------------------------------
-- Server version	5.7.25-google-log

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '7251e384-491c-11ea-a306-42010a80000f:1-1694233';

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `ID` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author` int(7) unsigned NOT NULL,
  `price` double(16,2) DEFAULT NULL,
  `datePosted` datetime DEFAULT CURRENT_TIMESTAMP,
  `dateUpdated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `author` (`author`),
  CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`author`) REFERENCES `profiles` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (2,'F.D.A. Authorizes First In-Home Test for Coronavirus','The Food and Drug Administration on Tuesday said it had granted emergency clearance to the first in-home test for the coronavirus, a nasal swab kit that will be sold by LabCorp. The agency said that LabCorp had submitted data showing the home test is as safe and accurate as a sample collection at a doctor’s office, hospital or other testing site. “With this action, there is now a convenient and reliable option for patient sample collection from the comfort and safety of their home,” Dr. Stephen M. Hahn, the F.D.A. commissioner, said in a statement. Patients will swab their own nose using a testing kit sent by the company, and will mail it in an insulated package back to the company. The Pixel by LabCorp COVID-19 test will be available to consumers in most states, with a doctor’s order, the agency said. LabCorp said that it would first make the tests available to health care workers and emergency workers who may have been exposed to the virus or have symptoms, and that it would be making the self-collection kits available to consumers “in the coming weeks.” The company also noted that because the tests are done by consumers in their own home, it would cut down on the demand for masks and other protective equipment that is usually needed to collect testing specimens.',1,13.00,'2020-04-10 03:35:10','2020-04-28 01:28:11','https://d2v9ipibika81v.cloudfront.net/uploads/sites/235/coronavirus-Information.png','health'),(3,'Zoom\'s Security Woes Were No Secret to Business Partners Like Dropbox','One year ago, two Australian hackers found themselves on an eight-hour flight to Singapore to attend a live hacking competition sponsored by Dropbox. At 30,000 feet, with nothing but a slow internet connection, they decided to get a head start by hacking Zoom, a videoconferencing service that they knew was used by many Dropbox employees. The hackers soon uncovered a major security vulnerability in Zoom’s software that could have allowed attackers to covertly control certain users’ Mac',1,14.00,'2020-04-21 23:51:12','2020-04-28 02:11:26','https://www.impactbnd.com/hubfs/video-conference-call.jpg','technology'),(4,'Earth Day’s Gone Digital. Here’s Where to Find It.','New York offers many ways to celebrate online. You can hike, play environmental games, conduct experiments, meet scientists and blast into space — all without leaving home.',2,10.25,'2020-04-21 23:58:35','2020-04-28 14:50:03','https://www.airpano.com/files/strato_1.jpg','politics'),(5,'Everyone You Know Just Signed Up for Netflix','The streaming giant added nearly 16 million new subscribers in the first three months of the year.',4,12.45,'2020-04-10 03:58:32','2020-04-28 01:28:46','https://i.pcmag.com/imagery/reviews/05cItXL96l4LE9n02WfDR0h-5.fit_scale.size_1028x578.v_1582751026.png','wealth'),(6,'25 (scientific) happiness hacks','Some people just ooze happiness: They always seem to be smiling and having fun, and let negative emotions and experiences roll off their backs. But if you think there\'s no way you could possibly ever be that way, you\'re wrong. Science proves that you do have the power to change your outlook on life. And it isn\'t hard, either: Most of the tips that follow are as simple as cracking a smile once in a while (yes, that\'s one of the tips). Here\'s to a happier you!',4,12.45,'2020-04-24 18:18:20','2020-04-29 01:02:03','https://content.thriveglobal.com/wp-content/uploads/2018/11/HappinessImage-1.jpeg','health'),(12,'The US has the highest maternal death rate of any developed nation.','Even before she became pregnant, Tatia Oden French always had a glow about her -- and people noticed. \"She walked into a room and it just kind of lit up,\" said her mother Maddy Oden. When Tatia became pregnant in 2001 -- just a year after earning her Ph.D. in child psychology and marrying her husband -- that glow magnified. The blissful newlyweds, who lived in Oakland, California, were excited about having a baby girl. They\'d even chosen her name: Zorah Allie Mae French.',3,20.00,'2020-04-24 18:18:20','2020-04-28 18:41:20','https://cdn.cnn.com/cnnnext/dam/assets/200131110810-01-maternal-mortality-super-169.jpg','health'),(13,'Amid mounting speculation, South Korea says Kim Jong Un is \'alive and well\'','South Korea continued to pour water on mounting speculation about the health of North Korea\'s leader Kim Jong Un, telling CNN he is \"alive and well.\" \"Our government position is firm,\" Moon Chung-in, the top foreign policy adviser to South Korean President Moon Jae-in, told CNN. \"Kim Jong Un is alive and well. He has been staying in the Wonsan area since April 13. No suspicious movements have so far been detected.\"\nQuestions were raised about Kim\'s well-being after he missed the celebration of his grandfather\'s birthday on April 15. He had been seen four days before that at a politburo meeting, according to North Korean state media, KCNA.\nCNN reported earlier in the week that the United States is monitoring intelligence that Kim is \"in grave danger after a surgery,\" according to a US official. Another US official told CNN Monday that the concerns about Kim\'s health are credible, but their severity is hard to assess.\nIt followed a report by Daily NK, an online newspaper based in South Korea that focuses on North Korea, that Kim reportedly received a cardiovascular procedure because of \"excessive smoking, obesity, and overwork.\" It added that the leader is now receiving treatment in a villa in Hyangsan County.\nAfter assessing that Kim\'s condition had improved, most of the medical team treating him returned to Pyongyang on April 19 while some of them remained to oversee his recovery, according to the news site. CNN is unable to independently confirm the report.\nOn Sunday though, North Korean state newspaper Rodong Sinmun said Kim sent thanks to workers who helped in remodeling the city of Samjiyon in North Korea. CNN cannot independently confirm the authenticity of Sunday\'s report and whether the note of thanks came directly from the leader.\nIt is not the first time North Korean media has reported on Kim\'s activities since news of his potential health issues emerged.',2,20.00,'2020-04-24 18:18:20','2020-04-28 01:00:19','https://thenypost.files.wordpress.com/2020/04/kim-jong-un-5.jpg?quality=80&strip=all&w=618&h=410&crop=1','Politics'),(14,'Hands-on with augmented reality in remote classrooms','Augmented Reality (AR) has become a valuable tool for education and training processes. Meanwhile, cloud-based technologies can foster collaboration and other interaction modalities to enhance learning. We combine the cloud capabilities with AR technologies to present Meta-AR-App, an authoring platform for collaborative AR, which enables authoring between instructors and students. Additionally, we introduce a new application of an established collaboration process, the pull-based development model, to enable sharing and retrieving of AR learning content. We customize this model and create two modalities of interaction for the classroom: local (student to student) and global (instructor to class) pull. Based on observations from our user studies, we organize a four-quadrant classroom model which implements our system: Work, Design, Collaboration, and Technology. Further, our system enables an iterative improvement workflow of the class content and enables synergistic collaboration that empowers students to be active agents in the learning process.',2,20.00,'2020-04-24 18:18:20','2020-04-27 23:01:59','https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fblogs-images.forbes.com%2Fbernardmarr%2Ffiles%2F2018%2F07%2FAdobeStock_124464399-1200x800.jpg','Technology'),(15,'Lights in night sky are not UFO\'s','WEST MICHIGAN — I\'ve seen several social media posts, email requests, and fielded questions from viewers this week asking about a string of lights in the night sky. I know what comes to everyone\'s mind immediately...it must be a UFO! This time the answer would be no, but would you believe a string or chain of satellites? Just days ago on April 22, Elon Musk and his company Space X recently launched another batch of satellites. Thus far, hundreds of these satellites have been launched and it\'s planned than as many as 30,000 or more may soon fill the sky in the coming years. It\'s part of their StarLink program to bring internet service to all on a global basis. Other companies such as Amazon reportedly have similar ideas to do the same.',2,20.00,'2020-04-24 18:18:20','2020-04-27 23:04:56','https://ewscripps.brightspotcdn.com/dims4/default/0264d92/2147483647/strip/true/crop/320x180+0+21/resize/1280x720!/quality/90/?url=https%3A%2F%2Fewscripps.brightspotcdn.com%2F2b%2Fdf%2F3015ccd7438e9b1e2591fef7116d%2Fsatellite.jpg','Technology'),(16,'The Fed\'s low rates will punish people who save','The Federal Reserve has thrown one lifeline after another to businesses, cities, states and consumers to try and keep the economy afloat in the midst of the Covid-19 pandemic.\nBut people trying to sock money away in savings accounts likely won\'t get much help from the Fed.\nWhen the Fed meets on Wednesday to discuss its latest efforts to help stimulate the economy, it is guaranteed to leave short-term interest rates at zero. The Fed slashed them to that level last month.\nLow rates punish people, particularly older and more conservative investors, who are stashing money in bank accounts, money market funds or Treasury bonds. These vehicles now generate little, if any, in the way of interest income. That\'s not going to change for the foreseeable future.',2,20.00,'2020-04-24 18:18:20','2020-04-28 01:31:02','https://fee.org/media/23578/wealthgrowing.jpg','wealth'),(21,'That Time I Discovered I\'m a Host','I was in pure disbelief when I discovered I am I host. I used to be the one who watches over them, controls them.\n\nNow I AM them.',9,NULL,'2020-04-28 04:33:28','2020-04-28 19:48:50','https://cdn1.thr.com/sites/default/files/imagecache/768x433/2018/06/westworld_s02e09_still_3.jpg','technology'),(22,'My First Article','The FitnessGram Pacer Test is a multistage aerobic capacity test that progressively gets more difficult as it continues. The 20 meter pacer test will begin in 30 seconds. Line up at the start. The running speed starts slowly but gets faster each minute after you hear this signal bodeboop. A sing lap should be completed every time you hear this sound. ding Remember to run in a straight line and run as long as possible. The second time you fail to complete a lap before the sound, your test is over. The test will begin on the word start. On your mark. Get ready!… Start. ',5,NULL,'2020-04-28 05:03:54',NULL,'https://images.unsplash.com/photo-1509225770129-fbcf8a696c0b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80','health');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blocks` (
  `blocker` int(7) unsigned NOT NULL,
  `blocked` int(7) unsigned NOT NULL,
  KEY `blocker` (`blocker`),
  KEY `blocked` (`blocked`),
  CONSTRAINT `blocks_ibfk_1` FOREIGN KEY (`blocker`) REFERENCES `profiles` (`ID`),
  CONSTRAINT `blocks_ibfk_2` FOREIGN KEY (`blocked`) REFERENCES `profiles` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks`
--

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follows`
--

DROP TABLE IF EXISTS `follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follows` (
  `follower` int(7) unsigned NOT NULL,
  `followed` int(7) unsigned NOT NULL,
  KEY `follower` (`follower`),
  KEY `followed` (`followed`),
  CONSTRAINT `follows_ibfk_1` FOREIGN KEY (`follower`) REFERENCES `profiles` (`ID`),
  CONSTRAINT `follows_ibfk_2` FOREIGN KEY (`followed`) REFERENCES `profiles` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follows`
--

LOCK TABLES `follows` WRITE;
/*!40000 ALTER TABLE `follows` DISABLE KEYS */;
INSERT INTO `follows` VALUES (1,4),(1,1),(1,1),(1,1),(1,1),(4,2),(9,4),(4,1),(3,2),(3,5),(5,4),(5,3),(4,5),(5,2),(10,5),(6,3);
/*!40000 ALTER TABLE `follows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `ID` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(7) unsigned NOT NULL,
  `receiver` int(7) unsigned NOT NULL,
  `content` text NOT NULL,
  `datePosted` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (2,1,4,'Hi how are you doing?','2020-04-14 23:31:22'),(3,4,1,'I have been looking at your article about COVID 19','2020-04-22 00:13:15'),(4,1,4,'Thanks, were you interested in purchasing it?','2020-04-22 00:26:44'),(5,4,1,'No, not particuarly. Can I just have it for free?','2020-04-22 00:27:14'),(6,1,4,'I\'m sorry I can\'t give my work away for free.','2020-04-22 00:27:51'),(7,1,4,'Seriously. You don\'t even have good reviews!','2020-04-22 00:29:17'),(8,4,1,'I value my work. You don\'t need to purchase it.','2020-04-22 00:30:09'),(9,4,1,'Another new test message','2020-04-25 22:34:19'),(10,4,1,'Second test message','2020-04-25 22:36:49'),(11,4,1,'This is a test message','2020-04-26 17:13:37'),(12,4,2,'','2020-04-27 02:26:34'),(13,4,2,'Hello','2020-04-27 02:29:09'),(14,4,1,'Test message another2','2020-04-27 02:56:55'),(15,4,2,'Edited test message','2020-04-27 04:25:31'),(16,4,2,'Testing a long message to see if it wraps correctly! Testing a long message to see if it wraps correctly! Testing a long message to see if it wraps correctly! Testing a long message to see if it wraps correctly! Testing a long message to see if it wraps correctly! Testing a long message to see if it wraps correctly! Testing a long message to see if it wraps correctly! Testing a long message to see if it wraps correctly! Testing a long message to see if it wraps correctly! Testing a long message to see if it wraps correctly! Testing a long message to see if it wraps correctly! Testing a long message to see if it wraps correctly! Testing a long message to see if it wraps correctly! Testing a long message to see if it wraps correctly! Testing a long message to see if it wraps correctly! Testing a long message to see if it wraps correctly! Testing a long message to see if it wraps correctly! Testing a long message to see if it wraps correctly! Testing a long message to see if it wraps correctly! Testing a long message to see if it wraps correctly! Testing a long message to see if it wraps correctly! ','2020-04-27 06:18:19'),(17,3,2,'Hi Charles, how have you been doing?','2020-04-28 01:45:08'),(18,9,4,'Hello Nicholas','2020-04-28 04:28:44'),(19,9,5,'Hello Austin...','2020-04-28 06:32:53'),(20,4,9,'Analysis','2020-04-28 06:36:03'),(21,5,9,'hey man','2020-04-28 07:32:18'),(22,9,5,'What\'s up','2020-04-28 07:32:47'),(23,5,9,'advdkv fsjv jn','2020-04-28 07:33:04'),(24,9,5,'adaf','2020-04-28 07:33:11'),(25,9,5,'FREEZE ALL MOTOR FUNCTIONS. FREEZE ALL MOTOR FUNCTIONS. FREEZE ALL MOTOR FUNCTIONS. FREEZE ALL MOTOR FUNCTIONS. FREEZE ALL MOTOR FUNCTIONS. FREEZE ALL MOTOR FUNCTIONS. FREEZE ALL MOTOR FUNCTIONS. FREEZE ALL MOTOR FUNCTIONS. FREEZE ALL MOTOR FUNCTIONS. FREEZE ALL MOTOR FUNCTIONS. FREEZE ALL MOTOR FUNCTIONS. FREEZE ALL MOTOR FUNCTIONS. FREEZE ALL MOTOR FUNCTIONS. FREEZE ALL MOTOR FUNCTIONS. FREEZE ALL MOTOR FUNCTIONS. FREEZE ALL MOTOR FUNCTIONS. FREEZE ALL MOTOR FUNCTIONS. FREEZE ALL MOTOR FUNCTIONS. ','2020-04-28 07:33:55'),(26,5,9,'adfwfjwnfuwqwfjnrfrwhffwfrwgf','2020-04-28 07:34:23'),(27,5,1,'Hello','2020-04-28 07:35:23'),(28,3,2,'I noticed you published quite a few really good articles.','2020-04-28 14:39:49'),(29,5,4,'Hey!','2020-04-28 19:01:27'),(30,4,5,'What\'s up Austin???','2020-04-28 20:05:55'),(31,4,3,'Hello Kirk','2020-04-28 20:10:17'),(32,3,4,'Doing well','2020-04-28 20:10:25'),(33,4,3,'Lol glad to hear it','2020-04-28 20:33:13'),(34,10,9,'Hello, Bernard','2020-04-28 20:39:49'),(35,10,9,'Would you ever lie to me, Bernard?','2020-04-28 20:39:58'),(36,6,3,'hi','2020-04-29 01:56:21');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `ID` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `linkToFacebook` varchar(255) DEFAULT NULL,
  `linkToInstagram` varchar(255) DEFAULT NULL,
  `linkToLinkedIn` varchar(255) DEFAULT NULL,
  `otherLink` varchar(255) DEFAULT NULL,
  `joinDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `bio` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'Isaac Joseph','isaac.joseph','ijoseph','ijoseph@smu.edu','LinkToFB','LinkToIG','LinkToLinkIN','otherLink','2020-04-01 00:48:00',NULL),(2,'Charles Patterson','charles.patterson','cjpatterson','cjpatterson@smu.edu','LinkToFB','LinkToIG','LinkToLinkIN','otherLink','2020-04-19 20:10:49',NULL),(3,'Kirk Thomas','kirk.thomas','kirkt','kirkt@smu.edu','https://www.facebook.com/kirkthomas704','https://instagram.com/kirkthomas704','https://www.linkedin.com/in/kirkwthomas/','https://kirkwthomas.com','2020-04-08 04:00:28',NULL),(4,'Nicholas Crothers','nicholas.crothers','ncrothers','ncrothers@smu.edu','https://facebook.com','https://instagram.com','https://linkedin.com','https://google.com','2020-04-10 03:23:34','Hello this is my profile'),(5,'Austin Smith','austin.smith','austinsmith','austinsmith@smu.edu','https://LinkToFB','https://LinkToIG','https://LinkToLinkIN','https://otherLink','2020-04-19 20:11:16','Front end developer for this website'),(6,'Matan Segal','matan.segal','msegal','msegal@smu.edu','LinkToFB','LinkToIG','LinkToLinkIN','otherLink','2020-04-10 03:30:31',NULL),(7,'Jinxun','junxun','jinxund','jinxund@smu.edu','LinkToFB','LinkToIG','LinkToLinkIN','otherLink','2020-04-10 03:49:29',NULL),(8,'undefined','undefined','undefined','undefined','undefined','undefined','undefined','undefined','2020-04-27 05:46:55',NULL),(9,'Bernard Lowe','bernard.lowe','blowe','bernard@westworld.com','https://facebook.com','https://','https://','https://','2020-04-28 04:14:45','I work at Westworld'),(10,'Brady Carlson','brady.carlson','bcarlson','bcarlson@smu.edu','https://','https://','https://','https://','2020-04-28 20:39:27','Hello I am a student at SMU graduating in May (August I guess now)'),(11,'Jack Rosenblatt','jrosenblatt','password','jrosenblatt@smu.edu',NULL,NULL,NULL,NULL,'2020-04-29 00:58:51',NULL),(12,'Zachary Smith','asmith','zacharysmith','a@gmail.com',NULL,NULL,NULL,NULL,'2020-04-29 02:33:47',NULL),(13,'Gabriel Balanov','Gbalanov','Zalman1959!!','gaby.balanov@gmail.com',NULL,NULL,NULL,NULL,'2020-05-08 15:06:11',NULL),(14,'Gabriel Balanov','Gabriel_Balanov','!!Zalman1959!!','gaby.balanov@gmail.com',NULL,NULL,NULL,NULL,'2020-05-08 15:12:04',NULL);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `ID` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `author` int(7) unsigned NOT NULL,
  `content` text NOT NULL,
  `ranking` int(1) NOT NULL,
  `article` int(7) unsigned NOT NULL,
  `datePosted` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `author` (`author`),
  KEY `article` (`article`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`author`) REFERENCES `profiles` (`ID`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`article`) REFERENCES `articles` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (4,1,'amazing article A+',5,5,'2020-04-10 04:16:40'),(6,1,'not too good, could have more words',1,5,'2020-04-10 04:20:35'),(7,2,'an amazing article',4,12,'2020-04-27 01:24:34'),(8,2,'poor article',2,13,'2020-04-27 01:25:14'),(9,2,'poor article',2,14,'2020-04-27 01:25:55'),(10,2,'horrible piece',1,5,'2020-04-28 03:57:51'),(13,4,'hehexd',5,2,'2020-04-28 06:13:21'),(14,4,'lul',4,2,'2020-04-28 06:49:48'),(15,4,'frgergweg',2,2,'2020-04-28 07:14:23'),(17,4,'Pretty good stuff',4,3,'2020-04-28 07:19:13'),(23,4,'UPDATED REVIEW',2,3,'2020-04-28 16:19:03'),(24,4,'Hello this is a new review',5,3,'2020-04-28 16:20:06'),(25,9,'Good work Isaac',5,3,'2020-04-28 16:24:07'),(26,3,'A+++. Love the fitness gram',5,22,'2020-04-28 18:14:30'),(30,4,'Best article ever',5,13,'2020-04-29 01:04:48');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-21 13:16:38
