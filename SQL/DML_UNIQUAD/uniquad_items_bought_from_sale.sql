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
-- Dumping data for table `items_bought_from_sale`
--

LOCK TABLES `items_bought_from_sale` WRITE;
/*!40000 ALTER TABLE `items_bought_from_sale` DISABLE KEYS */;
INSERT INTO `items_bought_from_sale` VALUES (2,'Laptop',550.00,31),(5,'Bicycle',100.00,14),(7,'Furniture Set',200.00,36),(8,'Smartphone',180.00,37),(9,'Headphones',20.00,38),(12,'Fitness Equipment',70.00,31),(15,'Tablet',120.00,4),(16,'Home Decor',50.00,25),(18,'Collectibles',250.00,7),(20,'Outdoor Gear',70.00,29);
/*!40000 ALTER TABLE `items_bought_from_sale` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_insert_items_bought_from_sale` BEFORE INSERT ON `items_bought_from_sale` FOR EACH ROW BEGIN
    DECLARE seller_uni_id INT;
    DECLARE buyer_uni_id INT;

    -- Get the university ID of the student selling the item
    SELECT s.Uni_Id INTO seller_uni_id
    FROM items_for_sale i
    JOIN student s ON i.Std_Id = s.Std_id
    WHERE i.Id = NEW.Id;

    -- Get the university ID of the student buying the item
    SELECT s.Uni_Id INTO buyer_uni_id
    FROM student s
    WHERE s.Std_id = NEW.Std_Id;

    -- Check if the university IDs match
    IF seller_uni_id IS NOT NULL AND buyer_uni_id IS NOT NULL AND seller_uni_id <> buyer_uni_id THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'University mismatch: Seller and buyer are from different universities';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-18 22:04:07
