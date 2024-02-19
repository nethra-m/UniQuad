-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: uniquad
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1234567890,'harvardmail@harvard.edu'),(2,2345678901,'mitmail@mit.edu'),(3,3456789012,'stanfordmail@stanford.edu'),(4,4567890123,'yalemail@yale.edu'),(5,5678901234,'princetonmail@princeton.edu'),(6,6789012345,'columbiamail@columbia.edu'),(7,7890123456,'upennmail@upenn.edu'),(8,8901234567,'brownmail@brown.edu'),(9,9012345678,'dartmouthmail@dartmouth.edu'),(10,9876543210,'northeasternmail@northeastern.edu'),(11,1112233445,'john.doe@harvard.edu'),(12,2223344556,'jane.smith@mit.edu'),(13,3334455667,'sam.jones@stanford.edu'),(14,4445566778,'emily.white@yale.edu'),(15,5556677889,'alex.miller@princeton.edu'),(16,6667788990,'lisa.wang@columbia.edu'),(17,7778899001,'michael.brown@upenn.edu'),(18,8889900112,'sarah.kim@brown.edu'),(19,9990011223,'david.johnson@dartmouth.edu'),(20,1011122334,'olivia.taylor@northeastern.edu'),(21,1213141516,'ryan.anderson@harvard.edu'),(22,1314151617,'natalie.wilson@mit.edu'),(23,1415161718,'jason.thomas@stanford.edu'),(24,1516171819,'katherine.hall@yale.edu'),(25,1617181920,'daniel.martin@princeton.edu'),(26,1718192021,'grace.jackson@columbia.edu'),(27,1819202122,'matthew.cooper@upenn.edu'),(28,1920212223,'emma.robinson@brown.edu'),(29,2021222324,'ian.harris@dartmouth.edu'),(30,2122232425,'ava.patel@northeastern.edu'),(31,2233445566,'eric.collins@harvard.edu'),(32,3344556677,'kelly.jones@mit.edu'),(33,4455667788,'brian.morris@stanford.edu'),(34,5566778899,'lily.nguyen@yale.edu'),(35,6677889000,'kevin.white@princeton.edu'),(36,7788990111,'rachel.smith@columbia.edu'),(37,8899001222,'steven.chen@upenn.edu'),(38,9900112333,'sophia.miller@brown.edu'),(39,1001123444,'alexandria.wang@dartmouth.edu'),(40,1022334455,'tyler.johnson@northeastern.edu'),(41,1133445566,'jordan.hill@harvard.edu'),(42,1244556677,'melissa.nguyen@mit.edu'),(43,1355667788,'dylan.morris@stanford.edu'),(44,1466778899,'natalie.jones@yale.edu'),(45,1577889000,'andrew.white@princeton.edu'),(46,1688990111,'victoria.smith@columbia.edu'),(47,1800111222,'logan.chen@upenn.edu'),(48,1911222333,'isabella.miller@brown.edu'),(49,2022333444,'nathan.wang@dartmouth.edu'),(50,2133444555,'olivia.johnson@northeastern.edu'),(51,9876541233,'john.doe@gmail.com'),(52,9876542341,'jane.smith@outlook.com'),(53,9876543451,'sam.jones@yahoo.com'),(54,9876544561,'emily.white@gmail.com'),(55,9876545675,'alex.miller@outlook.com'),(56,9876546784,'lisa.wang@yahoo.com'),(57,9876547895,'michael.brown@gmail.com'),(58,9876548931,'sarah.kim@outlook.com'),(59,9876546012,'david.johnson@yahoo.com'),(60,9876547123,'olivia.taylor@gmail.com'),(61,9876541284,'jordan.hill@outlook.com'),(62,9876542335,'melissa.nguyen@yahoo.com'),(63,9876543426,'dylan.morris@gmail.com'),(64,9876543567,'natalie.jones@outlook.com'),(65,9876547678,'andrew.white@yahoo.com'),(66,9876546709,'victoria.smith@gmail.com'),(67,9876047890,'logan.chen@outlook.com'),(68,9816548901,'isabella.miller@yahoo.com'),(69,9876549012,'nathan.wang@gmail.com'),(70,8876540123,'olivia.johnson@outlook.com'),(71,4890123454,'ajay.sharma@yahoo.com'),(72,3901234565,'kelly.shankar@gmail.com'),(73,2012345676,'nethra.murugan@outlook.com'),(74,4123456789,'eric.sommers@otgmail.com'),(75,3765432109,'shelly.jones@outlook.com'),(76,5987654321,'brian.harris@yahoo.com'),(77,5345678901,'shin.nguyen@otgmail.com'),(78,3654321098,'kevin.potter@outlook.com'),(79,4789012345,'harry.smith@yahoo.com'),(80,3564890123,'bonnie.chen@otgmail.com'),(81,5765432109,'hermonie.miller@outlook.com'),(82,5012345678,'liu.wang@yahoo.com'),(83,2490123456,'shincan.johnson@otgmail.com'),(84,2532109876,'nobita.sizuka@outlook.com'),(85,2765432012,'jhonny.bravo@yahoo.com'),(86,3101234567,'luffy.dragon@otgmail.com'),(87,4012345678,'jhon.wick@yahoo.com'),(88,2078901234,'emma.roberts@outlook.com'),(89,2970123456,'kerr.smith@yahoo.com'),(90,3426789012,'logan.lerman@otgmail.com'),(91,1412223333,'fis@harvard.edu'),(92,3123334444,'gpc@mit.edu'),(93,3934445555,'twa@stanford.edu'),(94,4454856666,'esc@yale.edu'),(95,5256067777,'leg@princeton.edu'),(96,6167774888,'caf@columbia.edu'),(97,7028889999,'hlc@upenn.edu'),(98,8889991100,'ea@brown.edu'),(99,9990002311,'cen@dartmouth.edu'),(100,1234531234,'sms@northeastern.edu'),(101,8942342345,'mmc@harvard.edu'),(102,3122453456,'hrau@mit.edu'),(103,4523564567,'fbs@stanford.edu'),(104,5634675678,'len@yale.edu'),(105,6734786789,'cscc@princeton.edu'),(106,7556541233,'john.donna@harvard.edu'),(107,8126542341,'jane.brutus@northeastern.edu'),(108,8796543451,'sam.adams@harvard.edu'),(109,9506544561,'emily.blake@harvard.edu'),(110,9896545675,'alex.cyrus@northeastern.edu');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-18 22:04:05
