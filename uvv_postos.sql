CREATE DATABASE  IF NOT EXISTS `uvv_postos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `uvv_postos`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: uvv_postos
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `bairros`
--

DROP TABLE IF EXISTS `bairros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bairros` (
  `cod_bairro` int NOT NULL AUTO_INCREMENT,
  `cod_cidade` int NOT NULL,
  `nome_bairro` varchar(100) NOT NULL,
  PRIMARY KEY (`cod_bairro`),
  KEY `cod_cidade` (`cod_cidade`),
  CONSTRAINT `bairros_ibfk_1` FOREIGN KEY (`cod_cidade`) REFERENCES `cidade` (`cod_cidade`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bairros`
--

LOCK TABLES `bairros` WRITE;
/*!40000 ALTER TABLE `bairros` DISABLE KEYS */;
INSERT INTO `bairros` VALUES (1,1,'Jardim Camburi'),(2,1,'Centro');
/*!40000 ALTER TABLE `bairros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade` (
  `cod_cidade` int NOT NULL AUTO_INCREMENT,
  `nome_cidade` varchar(100) NOT NULL,
  PRIMARY KEY (`cod_cidade`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'Vitória');
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coletas`
--

DROP TABLE IF EXISTS `coletas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coletas` (
  `cod_coleta` int NOT NULL AUTO_INCREMENT,
  `cod_posto` int DEFAULT NULL,
  `cod_combustivel` int DEFAULT NULL,
  `preco` decimal(5,2) NOT NULL,
  `data_coleta` date NOT NULL,
  PRIMARY KEY (`cod_coleta`),
  KEY `cod_posto` (`cod_posto`),
  KEY `cod_combustivel` (`cod_combustivel`),
  CONSTRAINT `coletas_ibfk_1` FOREIGN KEY (`cod_posto`) REFERENCES `postos` (`cod_posto`),
  CONSTRAINT `coletas_ibfk_2` FOREIGN KEY (`cod_combustivel`) REFERENCES `combustiveis` (`cod_combustivel`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coletas`
--

LOCK TABLES `coletas` WRITE;
/*!40000 ALTER TABLE `coletas` DISABLE KEYS */;
INSERT INTO `coletas` VALUES (1,1,1,6.11,'2024-09-02'),(2,1,1,6.07,'2024-09-03'),(3,1,1,6.19,'2024-09-04'),(4,1,1,6.01,'2024-09-05'),(5,1,1,6.15,'2024-09-06'),(6,1,1,6.18,'2024-09-07'),(7,1,1,6.09,'2024-09-08'),(8,1,1,6.12,'2024-09-09'),(9,1,1,6.21,'2024-09-10'),(10,1,1,6.04,'2024-09-11'),(11,1,2,6.36,'2024-09-02'),(12,1,2,6.30,'2024-09-03'),(13,1,2,6.18,'2024-09-04'),(14,1,2,6.23,'2024-09-05'),(15,1,2,6.25,'2024-09-06'),(16,1,2,6.22,'2024-09-07'),(17,1,2,6.33,'2024-09-08'),(18,1,2,6.20,'2024-09-09'),(19,1,2,6.28,'2024-09-10'),(20,1,2,6.16,'2024-09-11'),(21,1,3,4.28,'2024-09-02'),(22,1,3,4.23,'2024-09-03'),(23,1,3,4.32,'2024-09-04'),(24,1,3,4.18,'2024-09-05'),(25,1,3,4.30,'2024-09-06'),(26,1,3,4.25,'2024-09-07'),(27,1,3,4.33,'2024-09-08'),(28,1,3,4.27,'2024-09-09'),(29,1,3,4.15,'2024-09-10'),(30,1,3,4.35,'2024-09-11'),(31,1,4,5.99,'2024-09-02'),(32,1,4,6.01,'2024-09-03'),(33,1,4,5.93,'2024-09-04'),(34,1,4,5.96,'2024-09-05'),(35,1,4,5.91,'2024-09-06'),(36,1,4,5.90,'2024-09-07'),(37,1,4,6.06,'2024-09-08'),(38,1,4,5.94,'2024-09-09'),(39,1,4,5.86,'2024-09-10'),(40,1,4,5.92,'2024-09-11'),(41,2,1,6.16,'2024-09-02'),(42,2,1,6.14,'2024-09-03'),(43,2,1,6.09,'2024-09-04'),(44,2,1,6.04,'2024-09-05'),(45,2,1,6.18,'2024-09-06'),(46,2,1,6.21,'2024-09-07'),(47,2,1,6.07,'2024-09-08'),(48,2,1,6.12,'2024-09-09'),(49,2,1,6.01,'2024-09-10'),(50,2,1,6.17,'2024-09-11'),(51,2,2,6.26,'2024-09-02'),(52,2,2,6.31,'2024-09-03'),(53,2,2,6.19,'2024-09-04'),(54,2,2,6.27,'2024-09-05'),(55,2,2,6.22,'2024-09-06'),(56,2,2,6.29,'2024-09-07'),(57,2,2,6.24,'2024-09-08'),(58,2,2,6.35,'2024-09-09'),(59,2,2,6.18,'2024-09-10'),(60,2,2,6.20,'2024-09-11'),(61,2,3,4.31,'2024-09-02'),(62,2,3,4.17,'2024-09-03'),(63,2,3,4.23,'2024-09-04'),(64,2,3,4.30,'2024-09-05'),(65,2,3,4.24,'2024-09-06'),(66,2,3,4.18,'2024-09-07'),(67,2,3,4.29,'2024-09-08'),(68,2,3,4.34,'2024-09-09'),(69,2,3,4.21,'2024-09-10'),(70,2,3,4.32,'2024-09-11'),(71,2,4,5.88,'2024-09-02'),(72,2,4,6.03,'2024-09-03'),(73,2,4,5.90,'2024-09-04'),(74,2,4,5.98,'2024-09-05'),(75,2,4,6.00,'2024-09-06'),(76,2,4,5.96,'2024-09-07'),(77,2,4,5.86,'2024-09-08'),(78,2,4,5.92,'2024-09-09'),(79,2,4,5.94,'2024-09-10'),(80,2,4,6.01,'2024-09-11'),(81,3,1,6.20,'2024-09-02'),(82,3,1,6.05,'2024-09-03'),(83,3,1,6.15,'2024-09-04'),(84,3,1,6.17,'2024-09-05'),(85,3,1,6.13,'2024-09-06'),(86,3,1,6.11,'2024-09-07'),(87,3,1,6.01,'2024-09-08'),(88,3,1,6.10,'2024-09-09'),(89,3,1,6.04,'2024-09-10'),(90,3,1,6.18,'2024-09-11'),(91,3,2,6.25,'2024-09-02'),(92,3,2,6.19,'2024-09-03'),(93,3,2,6.30,'2024-09-04'),(94,3,2,6.27,'2024-09-05'),(95,3,2,6.21,'2024-09-06'),(96,3,2,6.33,'2024-09-07'),(97,3,2,6.22,'2024-09-08'),(98,3,2,6.16,'2024-09-09'),(99,3,2,6.28,'2024-09-10'),(100,3,2,6.36,'2024-09-11'),(101,3,3,4.18,'2024-09-02'),(102,3,3,4.28,'2024-09-03'),(103,3,3,4.31,'2024-09-04'),(104,3,3,4.22,'2024-09-05'),(105,3,3,4.33,'2024-09-06'),(106,3,3,4.21,'2024-09-07'),(107,3,3,4.29,'2024-09-08'),(108,3,3,4.34,'2024-09-09'),(109,3,3,4.20,'2024-09-10'),(110,3,3,4.24,'2024-09-11'),(111,3,4,5.96,'2024-09-02'),(112,3,4,5.94,'2024-09-03'),(113,3,4,5.88,'2024-09-04'),(114,3,4,6.04,'2024-09-05'),(115,3,4,6.06,'2024-09-06'),(116,3,4,5.90,'2024-09-07'),(117,3,4,5.92,'2024-09-08'),(118,3,4,6.01,'2024-09-09'),(119,3,4,5.86,'2024-09-10'),(120,3,4,5.99,'2024-09-11'),(121,4,1,6.08,'2024-09-02'),(122,4,1,6.19,'2024-09-03'),(123,4,1,6.07,'2024-09-04'),(124,4,1,6.13,'2024-09-05'),(125,4,1,6.02,'2024-09-06'),(126,4,1,6.10,'2024-09-07'),(127,4,1,6.05,'2024-09-08'),(128,4,1,6.12,'2024-09-09'),(129,4,1,6.16,'2024-09-10'),(130,4,1,6.03,'2024-09-11'),(131,4,2,6.31,'2024-09-02'),(132,4,2,6.20,'2024-09-03'),(133,4,2,6.29,'2024-09-04'),(134,4,2,6.27,'2024-09-05'),(135,4,2,6.19,'2024-09-06'),(136,4,2,6.24,'2024-09-07'),(137,4,2,6.22,'2024-09-08'),(138,4,2,6.16,'2024-09-09'),(139,4,2,6.18,'2024-09-10'),(140,4,2,6.33,'2024-09-11'),(141,4,3,4.17,'2024-09-02'),(142,4,3,4.21,'2024-09-03'),(143,4,3,4.33,'2024-09-04'),(144,4,3,4.15,'2024-09-05'),(145,4,3,4.30,'2024-09-06'),(146,4,3,4.34,'2024-09-07'),(147,4,3,4.18,'2024-09-08'),(148,4,3,4.29,'2024-09-09'),(149,4,3,4.24,'2024-09-10'),(150,4,3,4.28,'2024-09-11'),(151,4,4,6.02,'2024-09-02'),(152,4,4,5.96,'2024-09-03'),(153,4,4,6.04,'2024-09-04'),(154,4,4,5.93,'2024-09-05'),(155,4,4,5.91,'2024-09-06'),(156,4,4,5.99,'2024-09-07'),(157,4,4,6.01,'2024-09-08'),(158,4,4,5.88,'2024-09-09'),(159,4,4,6.05,'2024-09-10'),(160,4,4,6.00,'2024-09-11'),(161,5,1,6.11,'2024-09-02'),(162,5,1,6.09,'2024-09-03'),(163,5,1,6.06,'2024-09-04'),(164,5,1,6.04,'2024-09-05'),(165,5,1,6.18,'2024-09-06'),(166,5,1,6.01,'2024-09-07'),(167,5,1,6.10,'2024-09-08'),(168,5,1,6.15,'2024-09-09'),(169,5,1,6.12,'2024-09-10'),(170,5,1,6.17,'2024-09-11'),(171,5,2,6.29,'2024-09-02'),(172,5,2,6.19,'2024-09-03'),(173,5,2,6.31,'2024-09-04'),(174,5,2,6.21,'2024-09-05'),(175,5,2,6.24,'2024-09-06'),(176,5,2,6.16,'2024-09-07'),(177,5,2,6.25,'2024-09-08'),(178,5,2,6.36,'2024-09-09'),(179,5,2,6.28,'2024-09-10'),(180,5,2,6.30,'2024-09-11'),(181,5,3,4.19,'2024-09-02'),(182,5,3,4.27,'2024-09-03'),(183,5,3,4.21,'2024-09-04'),(184,5,3,4.28,'2024-09-05'),(185,5,3,4.18,'2024-09-06'),(186,5,3,4.23,'2024-09-07'),(187,5,3,4.35,'2024-09-08'),(188,5,3,4.15,'2024-09-09'),(189,5,3,4.25,'2024-09-10'),(190,5,3,4.34,'2024-09-11'),(191,5,4,5.97,'2024-09-02'),(192,5,4,5.94,'2024-09-03'),(193,5,4,5.86,'2024-09-04'),(194,5,4,5.93,'2024-09-05'),(195,5,4,6.05,'2024-09-06'),(196,5,4,5.92,'2024-09-07'),(197,5,4,5.89,'2024-09-08'),(198,5,4,6.01,'2024-09-09'),(199,5,4,5.90,'2024-09-10'),(200,5,4,6.00,'2024-09-11'),(201,6,1,6.15,'2024-09-02'),(202,6,1,6.03,'2024-09-03'),(203,6,1,6.18,'2024-09-04'),(204,6,1,6.06,'2024-09-05'),(205,6,1,6.08,'2024-09-06'),(206,6,1,6.02,'2024-09-07'),(207,6,1,6.10,'2024-09-08'),(208,6,1,6.09,'2024-09-09'),(209,6,1,6.11,'2024-09-10'),(210,6,1,6.07,'2024-09-11'),(211,6,2,6.34,'2024-09-02'),(212,6,2,6.26,'2024-09-03'),(213,6,2,6.30,'2024-09-04'),(214,6,2,6.19,'2024-09-05'),(215,6,2,6.32,'2024-09-06'),(216,6,2,6.21,'2024-09-07'),(217,6,2,6.24,'2024-09-08'),(218,6,2,6.22,'2024-09-09'),(219,6,2,6.25,'2024-09-10'),(220,6,2,6.31,'2024-09-11'),(221,6,3,4.24,'2024-09-02'),(222,6,3,4.30,'2024-09-03'),(223,6,3,4.18,'2024-09-04'),(224,6,3,4.19,'2024-09-05'),(225,6,3,4.35,'2024-09-06'),(226,6,3,4.32,'2024-09-07'),(227,6,3,4.21,'2024-09-08'),(228,6,3,4.27,'2024-09-09'),(229,6,3,4.16,'2024-09-10'),(230,6,3,4.28,'2024-09-11'),(231,6,4,5.94,'2024-09-02'),(232,6,4,5.91,'2024-09-03'),(233,6,4,6.03,'2024-09-04'),(234,6,4,5.90,'2024-09-05'),(235,6,4,6.05,'2024-09-06'),(236,6,4,5.93,'2024-09-07'),(237,6,4,5.96,'2024-09-08'),(238,6,4,5.92,'2024-09-09'),(239,6,4,5.88,'2024-09-10'),(240,6,4,5.99,'2024-09-11');
/*!40000 ALTER TABLE `coletas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combustiveis`
--

DROP TABLE IF EXISTS `combustiveis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `combustiveis` (
  `cod_combustivel` int NOT NULL AUTO_INCREMENT,
  `nome_combustivel` varchar(50) NOT NULL,
  PRIMARY KEY (`cod_combustivel`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combustiveis`
--

LOCK TABLES `combustiveis` WRITE;
/*!40000 ALTER TABLE `combustiveis` DISABLE KEYS */;
INSERT INTO `combustiveis` VALUES (1,'Gasolina'),(2,'Gasolina Aditivada'),(3,'Etanol'),(4,'Diesel');
/*!40000 ALTER TABLE `combustiveis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postos`
--

DROP TABLE IF EXISTS `postos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postos` (
  `cod_posto` int NOT NULL AUTO_INCREMENT,
  `nome_posto` varchar(100) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `cod_bairro` int DEFAULT NULL,
  PRIMARY KEY (`cod_posto`),
  KEY `cod_bairro` (`cod_bairro`),
  CONSTRAINT `postos_ibfk_1` FOREIGN KEY (`cod_bairro`) REFERENCES `bairros` (`cod_bairro`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postos`
--

LOCK TABLES `postos` WRITE;
/*!40000 ALTER TABLE `postos` DISABLE KEYS */;
INSERT INTO `postos` VALUES (1,'Posto Trilha Shell','Avenida José Maria Vivácqua Santos, 1250',1),(2,'Rede Marcela - RM Norte Sul','Av. José Maria Vivacqua Santos, 835',1),(3,'Posto Petrobras','R. Gelu Vervloet dos Santos, 1150',1),(4,'Auto Posto Porto - Rede Presidente','Av. Pres. Florentino Ávidos, 167',2),(5,'Posto Shell','Av. Cleto Nunes, 402',2),(6,'Auto Posto Pio XII - Atlântica','Av. Princesa Isabel, 20',2);
/*!40000 ALTER TABLE `postos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'uvv_postos'
--

--
-- Dumping routines for database 'uvv_postos'
--
/*!50003 DROP PROCEDURE IF EXISTS `vix_listagem_postos_preco_medio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `vix_listagem_postos_preco_medio`(
    IN data_inicio DATE,
    IN data_fim DATE
)
BEGIN
    SELECT 
        p.nome_posto,
        b.nome_bairro,
        COUNT(col.cod_coleta) AS quantidade_coletas,
        AVG(CASE WHEN col.cod_combustivel = 1 THEN col.preco END) AS preco_medio_gasolina,
        AVG(CASE WHEN col.cod_combustivel = 2 THEN col.preco END) AS preco_medio_gasolina_aditivada,
        AVG(CASE WHEN col.cod_combustivel = 3 THEN col.preco END) AS preco_medio_etanol,
        AVG(CASE WHEN col.cod_combustivel = 4 THEN col.preco END) AS preco_medio_diesel
    FROM Coletas col
    INNER JOIN Postos p ON col.cod_posto = p.cod_posto
    INNER JOIN Bairros b ON p.cod_bairro = b.cod_bairro
    WHERE col.data_coleta BETWEEN data_inicio AND data_fim
    GROUP BY p.nome_posto, b.nome_bairro;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `vix_menor_preco_combustivel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `vix_menor_preco_combustivel`(
    IN bairro_param VARCHAR(100),
    IN combustivel_param VARCHAR(50)
)
BEGIN
    SELECT 
        p.nome_posto,
        p.endereco,
        b.nome_bairro,
        c.nome_combustivel,
        col.preco,
        col.data_coleta
    FROM Coletas col
    INNER JOIN Postos p ON col.cod_posto = p.cod_posto
    INNER JOIN Bairros b ON p.cod_bairro = b.cod_bairro
    INNER JOIN Combustiveis c ON col.cod_combustivel = c.cod_combustivel
    WHERE (bairro_param IS NULL OR b.nome_bairro = bairro_param)
      AND (combustivel_param IS NULL OR c.nome_combustivel = combustivel_param)
    ORDER BY col.preco ASC
    LIMIT 1;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `vix_preco_medio_combustivel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `vix_preco_medio_combustivel`(
    IN bairro_param VARCHAR(100),
    IN data_inicio DATE,
    IN data_fim DATE
)
BEGIN
    SELECT 
        c.nome_combustivel,
        AVG(col.preco) AS preco_medio
    FROM Coletas col
    INNER JOIN Postos p ON col.cod_posto = p.cod_posto
    INNER JOIN Bairros b ON p.cod_bairro = b.cod_bairro
    INNER JOIN Combustiveis c ON col.cod_combustivel = c.cod_combustivel
    WHERE (bairro_param IS NULL OR b.nome_bairro = bairro_param)
      AND (data_inicio IS NULL OR col.data_coleta >= data_inicio)
      AND (data_fim IS NULL OR col.data_coleta <= data_fim)
    GROUP BY c.nome_combustivel;
    
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

-- Dump completed on 2024-09-14 18:49:05
