-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: openweather
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `clima`
--

DROP TABLE IF EXISTS `clima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clima` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(2000) NOT NULL,
  `temperatura` varchar(2000) NOT NULL,
  `descripcion` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clima`
--

LOCK TABLES `clima` WRITE;
/*!40000 ALTER TABLE `clima` DISABLE KEYS */;
INSERT INTO `clima` VALUES (28,'Guadalajara','27.77','broken clouds'),(29,'Mexico','32.84','few clouds'),(30,'Tijuana','21.72','scattered clouds'),(31,'Guadalajara','27.77','broken clouds'),(32,'Guadalajara','27.21','scattered clouds'),(33,'Tijuana','20','mist'),(34,'Guadalajara','29','nubes dispersas'),(35,'Guadalajara','29','nubes dispersas'),(36,'Tijuana','20','niebla'),(37,'Guadalajara','27','nubes dispersas'),(38,'Guadalajara','27','nubes dispersas'),(39,'Tijuana','18','niebla'),(40,'Tijuana','18','niebla'),(41,'Berlin','13','lluvia ligera'),(42,'Guadalajara','25','nubes dispersas'),(43,'Tampico','26','nubes'),(44,'Guadalajara','20','nubes dispersas'),(45,'Tijuana','16','muy nuboso'),(46,'Colima','18','muy nuboso'),(47,'Durango','17','cielo claro'),(48,'Mazatlán','23','cielo claro'),(49,'Berlin','13','lluvia ligera'),(50,'Guadalajara','23','nubes dispersas'),(51,'Berlin','13','cielo claro'),(52,'Paris','9','lluvia ligera'),(53,'Ciudad Juárez','17','algo de nubes'),(54,'Guadalajara','25','nubes dispersas'),(55,'Guadalajara','25','nubes dispersas'),(56,'Guadalajara','25','nubes dispersas'),(57,'Mazamitla','13','muy nuboso'),(58,'Guanajuato City','19','nubes'),(59,'Guanajuato City','26','nubes'),(60,'Tuxtla Gutiérrez','31','lluvia moderada'),(61,'Comitán','16','nubes'),(62,'San Cristóbal de las Casas','21','lluvia moderada'),(63,'Bacalar','24','nubes dispersas'),(64,'Paris','8','muy nuboso'),(65,'Comitán','16','nubes'),(66,'Guadalajara','26','nubes dispersas'),(67,'Mexico','31','muy nuboso'),(68,'Mexico City','24','muy nuboso'),(69,'Durango','20','algo de nubes');
/*!40000 ALTER TABLE `clima` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-23 21:28:46
