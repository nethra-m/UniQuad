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
-- Temporary view structure for view `university_department_program_view`
--

DROP TABLE IF EXISTS `university_department_program_view`;
/*!50001 DROP VIEW IF EXISTS `university_department_program_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `university_department_program_view` AS SELECT 
 1 AS `university_id`,
 1 AS `university_name`,
 1 AS `department_id`,
 1 AS `department_name`,
 1 AS `program_id`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `student_department_view`
--

DROP TABLE IF EXISTS `student_department_view`;
/*!50001 DROP VIEW IF EXISTS `student_department_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `student_department_view` AS SELECT 
 1 AS `student_id`,
 1 AS `student_name`,
 1 AS `department_id`,
 1 AS `department_name`,
 1 AS `university_id`,
 1 AS `university_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sale_info_view`
--

DROP TABLE IF EXISTS `sale_info_view`;
/*!50001 DROP VIEW IF EXISTS `sale_info_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sale_info_view` AS SELECT 
 1 AS `item_id`,
 1 AS `item_name`,
 1 AS `seller_name`,
 1 AS `seller_phone`,
 1 AS `seller_email`,
 1 AS `item_listed_price`,
 1 AS `buyer_name`,
 1 AS `buyer_phone`,
 1 AS `buyer_email`,
 1 AS `item_bought_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `student_course_program_department_university_view`
--

DROP TABLE IF EXISTS `student_course_program_department_university_view`;
/*!50001 DROP VIEW IF EXISTS `student_course_program_department_university_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `student_course_program_department_university_view` AS SELECT 
 1 AS `student_id`,
 1 AS `student_name`,
 1 AS `course_name`,
 1 AS `program_name`,
 1 AS `department_name`,
 1 AS `university_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `course_department_view`
--

DROP TABLE IF EXISTS `course_department_view`;
/*!50001 DROP VIEW IF EXISTS `course_department_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `course_department_view` AS SELECT 
 1 AS `university_name`,
 1 AS `department_name`,
 1 AS `course_name`,
 1 AS `professor_name`,
 1 AS `semester`,
 1 AS `series`,
 1 AS `timing`,
 1 AS `rating`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `student_program_department_university_view`
--

DROP TABLE IF EXISTS `student_program_department_university_view`;
/*!50001 DROP VIEW IF EXISTS `student_program_department_university_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `student_program_department_university_view` AS SELECT 
 1 AS `student_id`,
 1 AS `student_name`,
 1 AS `program_name`,
 1 AS `department_name`,
 1 AS `university_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `university_department_program_view`
--

/*!50001 DROP VIEW IF EXISTS `university_department_program_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `university_department_program_view` AS select `u`.`Uni_id` AS `university_id`,`u`.`name` AS `university_name`,`d`.`Id` AS `department_id`,`d`.`name` AS `department_name`,`p`.`Id` AS `program_id`,`p`.`name` AS `program_name` from (((`university_department` `ud` join `department` `d` on((`ud`.`Dept_Id` = `d`.`Id`))) join `university` `u` on((`ud`.`University_Id` = `u`.`Uni_id`))) join `program` `p` on((`d`.`Id` = `p`.`Dept_Id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `student_department_view`
--

/*!50001 DROP VIEW IF EXISTS `student_department_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `student_department_view` AS select `s`.`Std_id` AS `student_id`,`s`.`std_name` AS `student_name`,`d`.`Id` AS `department_id`,`d`.`name` AS `department_name`,`u`.`Uni_id` AS `university_id`,`u`.`name` AS `university_name` from (((`student` `s` join `program` `p` on((`s`.`Program_Id` = `p`.`Id`))) join `department` `d` on((`p`.`Dept_Id` = `d`.`Id`))) join `university` `u` on((`s`.`Uni_Id` = `u`.`Uni_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sale_info_view`
--

/*!50001 DROP VIEW IF EXISTS `sale_info_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sale_info_view` AS select `b`.`Id` AS `item_id`,`b`.`Name` AS `item_name`,`s`.`std_name` AS `seller_name`,`u_s`.`phone_number` AS `seller_phone`,`u_s`.`email_id` AS `seller_email`,`b`.`Price` AS `item_listed_price`,`bbf`.`std_name` AS `buyer_name`,`u_b`.`phone_number` AS `buyer_phone`,`u_b`.`email_id` AS `buyer_email`,`bf`.`Price` AS `item_bought_price` from (((((`items_for_sale` `b` join `student` `s` on((`b`.`Std_Id` = `s`.`Std_id`))) join `items_bought_from_sale` `bf` on((`b`.`Id` = `bf`.`Id`))) join `student` `bbf` on((`bf`.`Std_Id` = `bbf`.`Std_id`))) join `user` `u_s` on((`s`.`user_id` = `u_s`.`User_id`))) join `user` `u_b` on((`bbf`.`user_id` = `u_b`.`User_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `student_course_program_department_university_view`
--

/*!50001 DROP VIEW IF EXISTS `student_course_program_department_university_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `student_course_program_department_university_view` AS select `s`.`Std_id` AS `student_id`,`s`.`std_name` AS `student_name`,`c`.`course_name` AS `course_name`,`p`.`name` AS `program_name`,`d`.`name` AS `department_name`,`u`.`name` AS `university_name` from (((((`student` `s` join `std_courses` `sc` on((`s`.`Std_id` = `sc`.`Std_id`))) join `courses` `c` on((`sc`.`course_id` = `c`.`Id`))) join `program` `p` on((`c`.`Program_Id` = `p`.`Id`))) join `department` `d` on((`p`.`Dept_Id` = `d`.`Id`))) join `university` `u` on((`s`.`Uni_Id` = `u`.`Uni_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `course_department_view`
--

/*!50001 DROP VIEW IF EXISTS `course_department_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `course_department_view` AS select `u`.`name` AS `university_name`,`d`.`name` AS `department_name`,`c`.`course_name` AS `course_name`,`c`.`professor_name` AS `professor_name`,`c`.`semester` AS `semester`,`c`.`series` AS `series`,`c`.`timing` AS `timing`,`c`.`rating` AS `rating` from ((((`university_department` `ud` join `university` `u` on((`ud`.`University_Id` = `u`.`Uni_id`))) join `department` `d` on((`ud`.`Dept_Id` = `d`.`Id`))) join `program` `p` on((`d`.`Id` = `p`.`Dept_Id`))) join `courses` `c` on((`p`.`Id` = `c`.`Program_Id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `student_program_department_university_view`
--

/*!50001 DROP VIEW IF EXISTS `student_program_department_university_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `student_program_department_university_view` AS select `s`.`Std_id` AS `student_id`,`s`.`std_name` AS `student_name`,`p`.`name` AS `program_name`,`d`.`name` AS `department_name`,`u`.`name` AS `university_name` from (((`student` `s` join `program` `p` on((`s`.`Program_Id` = `p`.`Id`))) join `department` `d` on((`p`.`Dept_Id` = `d`.`Id`))) join `university` `u` on((`s`.`Uni_Id` = `u`.`Uni_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'uniquad'
--

--
-- Dumping routines for database 'uniquad'
--
/*!50003 DROP FUNCTION IF EXISTS `calculateSalesStatsForUniversity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calculateSalesStatsForUniversity`(universityId INT) RETURNS varchar(255) CHARSET utf8mb4
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE totalItemsSold INT;
    DECLARE totalPriceObtained DECIMAL(10,2);
    DECLARE totalProfit DECIMAL(10,2);
    DECLARE highestSale DECIMAL(10,2);

    -- Calculate total items sold and total price obtained
    SELECT COUNT(*), SUM(Price)
    INTO totalItemsSold, totalPriceObtained
    FROM items_bought_from_sale bs
    JOIN student s ON bs.Std_Id = s.Std_id
    WHERE s.Uni_Id = universityId;

    -- Calculate total profit (assuming 5% of the sale price is profit)
    SET totalProfit = totalPriceObtained * 0.05;

    -- Find the highest sale
    SELECT MAX(Price) INTO highestSale
    FROM items_bought_from_sale bs
    JOIN student s ON bs.Std_Id = s.Std_id
    WHERE s.Uni_Id = universityId;

    -- Prepare the result string
    RETURN CONCAT('Total Items Sold: ', totalItemsSold,
                  ', Total Price Obtained: ', totalPriceObtained,
                  ', Total Profit: ', totalProfit,
                  ', Highest Sale: ', highestSale);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteAlum` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteAlum`(IN alumId INT)
BEGIN
    -- Delete the alum
    DELETE FROM alum WHERE Alum_Id = alumId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteStudent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteStudent`(IN studentId INT)
BEGIN
    -- Delete items sold by the student
    DELETE FROM items_bought_from_sale WHERE Std_Id = studentId;

    -- Delete items for sale by the student
    DELETE FROM items_for_sale WHERE Std_Id = studentId;

    -- Delete student from organizations
    DELETE FROM student_in_organization WHERE Std_Id = studentId;

    -- Delete discussions by the student
    DELETE FROM student_discussion_forum WHERE Std_Id = studentId;

    -- Delete the student
    DELETE FROM student WHERE Std_id = studentId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteUniversity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteUniversity`(IN universityId INT)
BEGIN
    -- Delete items sold by students from the university
    DELETE FROM items_bought_from_sale
    WHERE Std_Id IN (SELECT Std_id FROM student WHERE Uni_Id = universityId);

    -- Delete items for sale by students from the university
    DELETE FROM items_for_sale
    WHERE Std_Id IN (SELECT Std_id FROM student WHERE Uni_Id = universityId);

    -- Delete students in organizations from the university
    DELETE FROM student_in_organization
    WHERE Std_Id IN (SELECT Std_id FROM student WHERE Uni_Id = universityId);

    -- Delete discussions by students from the university
    DELETE FROM student_discussion_forum
    WHERE Std_Id IN (SELECT Std_id FROM student WHERE Uni_Id = universityId);

    -- Delete students from the university
    DELETE FROM student
    WHERE Uni_Id = universityId;

    -- Delete organizations from the university
    DELETE FROM organization
    WHERE Uni_id = universityId;

    -- Delete university from the department programs
    UPDATE university_department_program_view
    SET University_Id = NULL
    WHERE University_Id = universityId;

    -- Delete university from the departments
    UPDATE university_department
    SET University_Id = NULL
    WHERE University_Id = universityId;

    -- Delete the university
    DELETE FROM university
    WHERE Uni_id = universityId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteUser`(IN userId INT)
BEGIN
    -- Delete students associated with the user
    DELETE FROM student WHERE user_id = userId;

    -- Delete alums associated with the user
    DELETE FROM alum WHERE user_id = userId;

    -- Delete organizations associated with the user
    DELETE FROM organization WHERE user_id = userId;

    -- Delete the user
    DELETE FROM user WHERE User_id = userId;
END ;;
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

-- Dump completed on 2024-02-18 22:04:08
