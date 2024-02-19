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
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Advanced Organic Chemistry','Dr. Smith','Fall',1,'Monday 10:00 AM',4,1),(2,'Quantum Chemistry','Dr. Johnson','Spring',2,'Wednesday 2:00 PM',5,1),(3,'World History I','Prof. Anderson','Fall',1,'Tuesday 9:00 AM',4,2),(4,'Modern History','Prof. Davis','Spring',2,'Thursday 3:00 PM',4,2),(5,'Introduction to Literature','Prof. Wilson','Fall',1,'Monday 2:00 PM',3,3),(6,'Shakespearean Studies','Prof. Miller','Spring',2,'Wednesday 11:00 AM',4,3),(7,'Strategic Management','Dr. White','Fall',1,'Tuesday 11:00 AM',5,4),(8,'Financial Analysis','Dr. Brown','Spring',2,'Thursday 2:00 PM',4,4),(9,'Data Mining Techniques','Dr. Turner','Fall',1,'Monday 3:00 PM',4,5),(10,'Predictive Analytics','Dr. Harris','Spring',2,'Wednesday 10:00 AM',4,5),(11,'Project Management Fundamentals','Dr. Robinson','Fall',1,'Tuesday 2:00 PM',4,6),(12,'Supply Chain Optimization','Dr. Martinez','Spring',2,'Thursday 10:00 AM',4,6),(13,'Advanced Computer Networks','Dr. Lee','Fall',1,'Monday 1:00 PM',5,7),(14,'Embedded Systems Design','Dr. Kim','Spring',2,'Wednesday 3:00 PM',4,7),(15,'Thermodynamics and Heat Transfer','Dr. Smith','Fall',1,'Tuesday 10:00 AM',4,8),(16,'Advanced Materials Engineering','Dr. Johnson','Spring',2,'Thursday 1:00 PM',5,8),(17,'Project Planning and Execution','Dr. White','Fall',1,'Monday 11:00 AM',4,9),(18,'Risk Management in Projects','Dr. Brown','Spring',2,'Wednesday 2:00 PM',4,9),(19,'Construction Project Planning','Dr. Turner','Fall',1,'Tuesday 3:00 PM',4,10),(20,'Cost Estimation in Construction','Dr. Harris','Spring',2,'Thursday 11:00 AM',4,10),(21,'Anatomy and Physiology for Nurses','Prof. Robinson','Fall',1,'Monday 9:00 AM',4,11),(22,'Clinical Nursing Practice','Prof. Martinez','Spring',2,'Wednesday 1:00 PM',5,11),(23,'Introduction to Medical Science','Prof. Lee','Fall',1,'Tuesday 2:00 PM',4,12),(24,'Clinical Medicine','Prof. Kim','Spring',2,'Thursday 10:00 AM',5,12),(25,'Advanced Medical Research','Dr. Smith','Fall',1,'Monday 1:00 PM',5,13),(26,'Clinical Specialization','Dr. Johnson','Spring',2,'Wednesday 3:00 PM',4,13),(27,'Machine Learning Fundamentals','Dr. White','Fall',1,'Tuesday 11:00 AM',5,14),(28,'Big Data Analytics','Dr. Brown','Spring',2,'Thursday 2:00 PM',4,14),(29,'Ancient Civilizations','Prof. Anderson','Fall',1,'Monday 9:00 AM',3,2),(30,'Modern World History','Prof. Davis','Spring',2,'Wednesday 3:00 PM',4,2),(31,'Romantic Poetry','Prof. Wilson','Fall',1,'Tuesday 2:00 PM',3,3),(32,'Contemporary Literature','Prof. Miller','Spring',2,'Thursday 11:00 AM',4,3),(33,'Leadership and Ethics','Dr. White','Fall',1,'Tuesday 11:00 AM',5,4),(34,'International Business Strategy','Dr. Brown','Spring',2,'Thursday 2:00 PM',4,4),(35,'Statistical Analysis Methods','Dr. Turner','Fall',1,'Monday 3:00 PM',4,5),(36,'Data Visualization Techniques','Dr. Harris','Spring',2,'Wednesday 10:00 AM',4,5),(37,'Product Lifecycle Management','Dr. Robinson','Fall',1,'Tuesday 2:00 PM',4,6),(38,'Quality Management in Engineering','Dr. Martinez','Spring',2,'Thursday 10:00 AM',4,6),(39,'Advanced Algorithms','Dr. Lee','Fall',1,'Monday 1:00 PM',5,7),(40,'Digital Signal Processing','Dr. Kim','Spring',2,'Wednesday 3:00 PM',4,7),(41,'Fluid Mechanics and Aerodynamics','Dr. Smith','Fall',1,'Tuesday 10:00 AM',4,8),(42,'Advanced Robotics','Dr. Johnson','Spring',2,'Thursday 1:00 PM',5,8),(43,'Effective Communication in Projects','Dr. White','Fall',1,'Monday 11:00 AM',4,9),(44,'Stakeholder Management','Dr. Brown','Spring',2,'Wednesday 2:00 PM',4,9),(45,'Legal Aspects of Construction','Dr. Turner','Fall',1,'Tuesday 3:00 PM',4,10),(46,'Green Building Technologies','Dr. Harris','Spring',2,'Thursday 11:00 AM',4,10),(47,'Pharmacology for Nurses','Prof. Robinson','Fall',1,'Monday 9:00 AM',4,11),(48,'Mental Health Nursing','Prof. Martinez','Spring',2,'Wednesday 1:00 PM',5,11),(49,'Clinical Anatomy','Prof. Lee','Fall',1,'Tuesday 2:00 PM',4,12),(50,'Medical Ethics','Prof. Kim','Spring',2,'Thursday 10:00 AM',5,12),(51,'Clinical Research Methodology','Dr. Smith','Fall',1,'Monday 1:00 PM',5,13),(52,'Specialized Medical Practice','Dr. Johnson','Spring',2,'Wednesday 3:00 PM',4,13),(53,'Natural Language Processing','Dr. White','Fall',1,'Tuesday 11:00 AM',5,14),(54,'Deep Learning Applications','Dr. Brown','Spring',2,'Thursday 2:00 PM',4,14);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-18 22:04:08
