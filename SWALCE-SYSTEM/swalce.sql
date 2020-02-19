-- MySQL dump 10.16  Distrib 10.1.34-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: SWALCE
-- ------------------------------------------------------
-- Server version	10.1.34-MariaDB

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
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrador` (
  `rfc` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contraseña` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`rfc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coordinador`
--

DROP TABLE IF EXISTS `coordinador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coordinador` (
  `rfc` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contraseña` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`rfc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coordinador`
--

LOCK TABLES `coordinador` WRITE;
/*!40000 ALTER TABLE `coordinador` DISABLE KEYS */;
/*!40000 ALTER TABLE `coordinador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion`
--

DROP TABLE IF EXISTS `evaluacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluacion` (
  `cve_salon` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_usu` tinyint(1) NOT NULL,
  `limp_lab` tinyint(1) NOT NULL,
  `limp_mat` tinyint(1) NOT NULL,
  `e_lab` tinyint(1) NOT NULL,
  `e_mat` tinyint(1) NOT NULL,
  `atn_pers` tinyint(1) DEFAULT NULL,
  `observaciones` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `cve_salon` (`cve_salon`),
  CONSTRAINT `evaluacion_ibfk_1` FOREIGN KEY (`cve_salon`) REFERENCES `laboratorios` (`cve_salon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion`
--

LOCK TABLES `evaluacion` WRITE;
/*!40000 ALTER TABLE `evaluacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horario_lab`
--

DROP TABLE IF EXISTS `horario_lab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horario_lab` (
  `cve_salon` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_act` int(8) NOT NULL,
  `fecha` date NOT NULL,
  `horadia` int(4) NOT NULL,
  KEY `cve_salon` (`cve_salon`),
  CONSTRAINT `horario_lab_ibfk_1` FOREIGN KEY (`cve_salon`) REFERENCES `inventario` (`cve_salon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario_lab`
--

LOCK TABLES `horario_lab` WRITE;
/*!40000 ALTER TABLE `horario_lab` DISABLE KEYS */;
/*!40000 ALTER TABLE `horario_lab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horario_labsta`
--

DROP TABLE IF EXISTS `horario_labsta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horario_labsta` (
  `rfc` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cve_salon` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hr_ini` tinyint(2) NOT NULL,
  `hr_fin` tinyint(2) NOT NULL,
  KEY `rfc` (`rfc`),
  KEY `cve_salon` (`cve_salon`),
  CONSTRAINT `horario_labsta_ibfk_1` FOREIGN KEY (`rfc`) REFERENCES `laboratoristas` (`rfc`),
  CONSTRAINT `horario_labsta_ibfk_2` FOREIGN KEY (`cve_salon`) REFERENCES `laboratorios` (`cve_salon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario_labsta`
--

LOCK TABLES `horario_labsta` WRITE;
/*!40000 ALTER TABLE `horario_labsta` DISABLE KEYS */;
/*!40000 ALTER TABLE `horario_labsta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventario` (
  `id_material` int(6) NOT NULL AUTO_INCREMENT,
  `nombre_mat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_inventario` int(10) DEFAULT NULL,
  `marca` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modelo` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_serie` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cve_salon` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ubi_inter` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `observaciones` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clasificacion` tinyint(1) NOT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_material`),
  KEY `cve_salon` (`cve_salon`),
  CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`cve_salon`) REFERENCES `laboratorios` (`cve_salon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratorios`
--

DROP TABLE IF EXISTS `laboratorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laboratorios` (
  `cve_salon` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` tinyint(1) NOT NULL,
  `cve_col` int(2) NOT NULL,
  `num_cub` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`cve_salon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratorios`
--

LOCK TABLES `laboratorios` WRITE;
/*!40000 ALTER TABLE `laboratorios` DISABLE KEYS */;
/*!40000 ALTER TABLE `laboratorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratoristas`
--

DROP TABLE IF EXISTS `laboratoristas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laboratoristas` (
  `rfc` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_trab` char(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cve_salon` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` tinyint(1) NOT NULL,
  `contraseña` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`rfc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratoristas`
--

LOCK TABLES `laboratoristas` WRITE;
/*!40000 ALTER TABLE `laboratoristas` DISABLE KEYS */;
/*!40000 ALTER TABLE `laboratoristas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marcas` (
  `marca` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mat_act`
--

DROP TABLE IF EXISTS `mat_act`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mat_act` (
  `id_act` int(8) NOT NULL,
  `id_material` int(6) NOT NULL,
  `cantidad` tinyint(2) NOT NULL,
  KEY `id_material` (`id_material`),
  CONSTRAINT `mat_act_ibfk_1` FOREIGN KEY (`id_material`) REFERENCES `inventario` (`id_material`),
  CONSTRAINT `mat_act_ibfk_2` FOREIGN KEY (`id_material`) REFERENCES `inventario` (`id_material`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mat_act`
--

LOCK TABLES `mat_act` WRITE;
/*!40000 ALTER TABLE `mat_act` DISABLE KEYS */;
/*!40000 ALTER TABLE `mat_act` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mat_prest`
--

DROP TABLE IF EXISTS `mat_prest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mat_prest` (
  `id_solic` int(8) NOT NULL,
  `id_material` int(6) NOT NULL,
  `cantidad` tinyint(3) NOT NULL,
  KEY `id_solic` (`id_solic`),
  KEY `id_material` (`id_material`),
  CONSTRAINT `mat_prest_ibfk_1` FOREIGN KEY (`id_solic`) REFERENCES `solic_prest` (`id_solic`),
  CONSTRAINT `mat_prest_ibfk_2` FOREIGN KEY (`id_material`) REFERENCES `inventario` (`id_material`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mat_prest`
--

LOCK TABLES `mat_prest` WRITE;
/*!40000 ALTER TABLE `mat_prest` DISABLE KEYS */;
/*!40000 ALTER TABLE `mat_prest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `practicas`
--

DROP TABLE IF EXISTS `practicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `practicas` (
  `id_practica` int(8) NOT NULL,
  `nombre` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clave_mat` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_practica` tinyint(1) NOT NULL,
  `profesor` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_practica`),
  KEY `profesor` (`profesor`),
  CONSTRAINT `practicas_ibfk_1` FOREIGN KEY (`profesor`) REFERENCES `profesores` (`rfc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `practicas`
--

LOCK TABLES `practicas` WRITE;
/*!40000 ALTER TABLE `practicas` DISABLE KEYS */;
/*!40000 ALTER TABLE `practicas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesores`
--

DROP TABLE IF EXISTS `profesores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesores` (
  `rfc` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contraseña` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semana` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`rfc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesores`
--

LOCK TABLES `profesores` WRITE;
/*!40000 ALTER TABLE `profesores` DISABLE KEYS */;
/*!40000 ALTER TABLE `profesores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proy_tall`
--

DROP TABLE IF EXISTS `proy_tall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proy_tall` (
  `id_proy_tall` int(8) NOT NULL,
  `nombre` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clave_mat` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titular` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `miembros` int(2) NOT NULL,
  PRIMARY KEY (`id_proy_tall`),
  KEY `titular` (`titular`),
  CONSTRAINT `proy_tall_ibfk_1` FOREIGN KEY (`titular`) REFERENCES `profesores` (`rfc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proy_tall`
--

LOCK TABLES `proy_tall` WRITE;
/*!40000 ALTER TABLE `proy_tall` DISABLE KEYS */;
/*!40000 ALTER TABLE `proy_tall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportes`
--

DROP TABLE IF EXISTS `reportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reportes` (
  `id_reporte` int(3) NOT NULL,
  `id_solic_prac` int(3) DEFAULT NULL,
  `id_material` int(6) NOT NULL,
  `cantidad` tinyint(2) NOT NULL,
  `rfc_lb` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsable` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_reporte`),
  KEY `id_solic_prac` (`id_solic_prac`),
  KEY `id_material` (`id_material`),
  KEY `rfc_lb` (`rfc_lb`),
  KEY `responsble` (`responsable`),
  CONSTRAINT `reportes_ibfk_1` FOREIGN KEY (`id_solic_prac`) REFERENCES `solic_lab` (`id_solic`),
  CONSTRAINT `reportes_ibfk_2` FOREIGN KEY (`id_material`) REFERENCES `inventario` (`id_material`),
  CONSTRAINT `reportes_ibfk_3` FOREIGN KEY (`rfc_lb`) REFERENCES `laboratoristas` (`rfc`),
  CONSTRAINT `reportes_ibfk_4` FOREIGN KEY (`responsable`) REFERENCES `profesores` (`rfc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportes`
--

LOCK TABLES `reportes` WRITE;
/*!40000 ALTER TABLE `reportes` DISABLE KEYS */;
/*!40000 ALTER TABLE `reportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salones`
--

DROP TABLE IF EXISTS `salones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salones` (
  `cve_salon` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`cve_salon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salones`
--

LOCK TABLES `salones` WRITE;
/*!40000 ALTER TABLE `salones` DISABLE KEYS */;
/*!40000 ALTER TABLE `salones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solic_baja`
--

DROP TABLE IF EXISTS `solic_baja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solic_baja` (
  `id_material` int(6) NOT NULL,
  `cantidad` tinyint(2) NOT NULL,
  `motivo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `id_material` (`id_material`),
  CONSTRAINT `solic_baja_ibfk_1` FOREIGN KEY (`id_material`) REFERENCES `inventario` (`id_material`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solic_baja`
--

LOCK TABLES `solic_baja` WRITE;
/*!40000 ALTER TABLE `solic_baja` DISABLE KEYS */;
/*!40000 ALTER TABLE `solic_baja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solic_cancel`
--

DROP TABLE IF EXISTS `solic_cancel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solic_cancel` (
  `id_solic` int(8) NOT NULL,
  `motivo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solic_cancel`
--

LOCK TABLES `solic_cancel` WRITE;
/*!40000 ALTER TABLE `solic_cancel` DISABLE KEYS */;
/*!40000 ALTER TABLE `solic_cancel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solic_lab`
--

DROP TABLE IF EXISTS `solic_lab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solic_lab` (
  `id_solic` int(8) NOT NULL,
  `cve_salon` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `id_act` int(8) NOT NULL,
  `equipos` tinyint(2) NOT NULL,
  `grupo` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hora_ini` tinyint(2) NOT NULL,
  `hora_fin` tinyint(2) NOT NULL,
  `titular` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id_solic`),
  KEY `cve_salon` (`cve_salon`),
  KEY `titular` (`titular`),
  CONSTRAINT `solic_lab_ibfk_1` FOREIGN KEY (`cve_salon`) REFERENCES `laboratorios` (`cve_salon`),
  CONSTRAINT `solic_lab_ibfk_2` FOREIGN KEY (`titular`) REFERENCES `profesores` (`rfc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solic_lab`
--

LOCK TABLES `solic_lab` WRITE;
/*!40000 ALTER TABLE `solic_lab` DISABLE KEYS */;
/*!40000 ALTER TABLE `solic_lab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solic_prest`
--

DROP TABLE IF EXISTS `solic_prest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solic_prest` (
  `id_solic` int(8) NOT NULL,
  `cve_salon` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titular` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hora_solic` tinyint(2) DEFAULT NULL,
  `fecha_solic` date NOT NULL,
  `duracion` tinyint(2) NOT NULL,
  `fecha_aprob` date DEFAULT NULL,
  `hora_dev` tinyint(2) DEFAULT NULL,
  `fecha_dev` date DEFAULT NULL,
  `labsta_reg_dev` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_solic`),
  KEY `cve_salon` (`cve_salon`),
  KEY `titular` (`titular`),
  KEY `labsta_reg_dev` (`labsta_reg_dev`),
  CONSTRAINT `solic_prest_ibfk_1` FOREIGN KEY (`cve_salon`) REFERENCES `laboratorios` (`cve_salon`),
  CONSTRAINT `solic_prest_ibfk_2` FOREIGN KEY (`titular`) REFERENCES `profesores` (`rfc`),
  CONSTRAINT `solic_prest_ibfk_3` FOREIGN KEY (`labsta_reg_dev`) REFERENCES `laboratoristas` (`rfc`),
  CONSTRAINT `solic_prest_ibfk_4` FOREIGN KEY (`labsta_reg_dev`) REFERENCES `laboratoristas` (`rfc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solic_prest`
--

LOCK TABLES `solic_prest` WRITE;
/*!40000 ALTER TABLE `solic_prest` DISABLE KEYS */;
/*!40000 ALTER TABLE `solic_prest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubicaciones`
--

DROP TABLE IF EXISTS `ubicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ubicaciones` (
  `ubicacion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ubicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubicaciones`
--

LOCK TABLES `ubicaciones` WRITE;
/*!40000 ALTER TABLE `ubicaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `ubicaciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-29 16:02:14
