-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: crypto_db
-- ------------------------------------------------------
-- Server version	10.11.6-MariaDB-0+deb12u1

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
-- Current Database: `crypto_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `crypto_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `crypto_db`;

--
-- Table structure for table `ada_prices`
--

DROP TABLE IF EXISTS `ada_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ada_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(15,2) DEFAULT NULL,
  `change_1h` decimal(5,2) DEFAULT NULL,
  `change_24h` decimal(5,2) DEFAULT NULL,
  `change_7d` decimal(5,2) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ada_prices`
--

LOCK TABLES `ada_prices` WRITE;
/*!40000 ALTER TABLE `ada_prices` DISABLE KEYS */;
INSERT INTO `ada_prices` VALUES
(1,0.80,NULL,-20.15,NULL,'2025-03-04 08:12:49'),
(2,0.81,NULL,-14.11,NULL,'2025-03-04 09:10:56'),
(3,1.01,NULL,23.29,NULL,'2025-03-05 10:42:13'),
(4,1.01,NULL,23.82,NULL,'2025-03-05 10:45:39'),
(5,1.01,NULL,23.10,NULL,'2025-03-05 10:47:22'),
(6,0.94,NULL,-0.08,NULL,'2025-03-06 08:01:24'),
(7,0.75,NULL,-3.53,NULL,'2025-03-10 12:31:21'),
(8,0.73,NULL,-2.27,NULL,'2025-03-11 09:53:57'),
(9,0.73,NULL,-1.19,NULL,'2025-03-13 11:00:37'),
(10,0.72,NULL,2.43,NULL,'2025-03-17 13:46:12');
/*!40000 ALTER TABLE `ada_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bnb_prices`
--

DROP TABLE IF EXISTS `bnb_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bnb_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(15,2) DEFAULT NULL,
  `change_1h` decimal(5,2) DEFAULT NULL,
  `change_24h` decimal(5,2) DEFAULT NULL,
  `change_7d` decimal(5,2) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bnb_prices`
--

LOCK TABLES `bnb_prices` WRITE;
/*!40000 ALTER TABLE `bnb_prices` DISABLE KEYS */;
INSERT INTO `bnb_prices` VALUES
(1,563.38,NULL,-6.95,NULL,'2025-03-04 08:12:49'),
(2,567.73,NULL,-5.34,NULL,'2025-03-04 09:10:56'),
(3,607.56,NULL,6.89,NULL,'2025-03-05 10:42:13'),
(4,606.43,NULL,6.69,NULL,'2025-03-05 10:45:39'),
(5,604.85,NULL,6.20,NULL,'2025-03-05 10:47:22'),
(6,604.37,NULL,1.78,NULL,'2025-03-06 08:01:24'),
(7,563.80,NULL,-2.39,NULL,'2025-03-10 12:31:21'),
(8,561.00,NULL,-0.06,NULL,'2025-03-11 09:53:57'),
(9,580.78,NULL,4.15,NULL,'2025-03-13 11:00:37'),
(10,628.87,NULL,4.88,NULL,'2025-03-17 13:46:12');
/*!40000 ALTER TABLE `bnb_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btc_prices`
--

DROP TABLE IF EXISTS `btc_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btc_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(15,2) DEFAULT NULL,
  `change_1h` decimal(5,2) DEFAULT NULL,
  `change_24h` decimal(5,2) DEFAULT NULL,
  `change_7d` decimal(5,2) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btc_prices`
--

LOCK TABLES `btc_prices` WRITE;
/*!40000 ALTER TABLE `btc_prices` DISABLE KEYS */;
INSERT INTO `btc_prices` VALUES
(1,83089.00,NULL,-9.88,NULL,'2025-03-04 08:12:49'),
(2,83840.00,NULL,-8.60,NULL,'2025-03-04 09:10:56'),
(3,90388.00,NULL,7.75,NULL,'2025-03-05 10:42:13'),
(4,90154.00,NULL,7.47,NULL,'2025-03-05 10:45:39'),
(5,89836.00,NULL,6.99,NULL,'2025-03-05 10:47:22'),
(6,91311.00,NULL,4.17,NULL,'2025-03-06 08:01:24'),
(7,82754.00,NULL,-2.17,NULL,'2025-03-10 12:31:21'),
(8,81495.00,NULL,-1.03,NULL,'2025-03-11 09:53:57'),
(9,83165.00,NULL,0.82,NULL,'2025-03-13 11:00:37'),
(10,83440.00,NULL,1.06,NULL,'2025-03-17 13:46:12');
/*!40000 ALTER TABLE `btc_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crypto_prices`
--

DROP TABLE IF EXISTS `crypto_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crypto_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `symbol` varchar(50) DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `change_1h` decimal(5,2) DEFAULT NULL,
  `change_24h` decimal(5,2) DEFAULT NULL,
  `change_7d` decimal(5,2) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crypto_prices`
--

LOCK TABLES `crypto_prices` WRITE;
/*!40000 ALTER TABLE `crypto_prices` DISABLE KEYS */;
INSERT INTO `crypto_prices` VALUES
(31,'Bitcoin','BTC',82897.00,NULL,NULL,NULL,'2025-03-17 15:08:45'),
(32,'Ethereum','ETH',1898.55,NULL,NULL,NULL,'2025-03-17 15:08:45'),
(33,'Tether','USDT',1.00,NULL,NULL,NULL,'2025-03-17 15:08:45'),
(34,'XRP','XRP',2.32,NULL,NULL,NULL,'2025-03-17 15:08:45'),
(35,'BNB','BNB',631.78,NULL,NULL,NULL,'2025-03-17 15:08:45'),
(36,'Solana','SOL',126.11,NULL,NULL,NULL,'2025-03-17 15:08:45'),
(37,'USDC','USDC',1.00,NULL,NULL,NULL,'2025-03-17 15:08:45'),
(38,'Cardano','ADA',0.72,NULL,NULL,NULL,'2025-03-17 15:08:45'),
(39,'Dogecoin','DOGE',0.17,NULL,NULL,NULL,'2025-03-17 15:08:45'),
(40,'TRON','TRX',0.22,NULL,NULL,NULL,'2025-03-17 15:08:45');
/*!40000 ALTER TABLE `crypto_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cryptos`
--

DROP TABLE IF EXISTS `cryptos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cryptos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `symbol` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `symbol` (`symbol`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cryptos`
--

LOCK TABLES `cryptos` WRITE;
/*!40000 ALTER TABLE `cryptos` DISABLE KEYS */;
INSERT INTO `cryptos` VALUES
(1,'Bitcoin','BTC'),
(2,'Ethereum','ETH'),
(3,'Tether','USDT'),
(4,'XRP','XRP'),
(5,'BNB','BNB'),
(6,'Solana','SOL'),
(7,'USDC','USDC'),
(8,'Cardano','ADA'),
(9,'Dogecoin','DOGE'),
(10,'TRON','TRX'),
(30,'Lido Staked Ether','STETH');
/*!40000 ALTER TABLE `cryptos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doge_prices`
--

DROP TABLE IF EXISTS `doge_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doge_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(15,2) DEFAULT NULL,
  `change_1h` decimal(5,2) DEFAULT NULL,
  `change_24h` decimal(5,2) DEFAULT NULL,
  `change_7d` decimal(5,2) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doge_prices`
--

LOCK TABLES `doge_prices` WRITE;
/*!40000 ALTER TABLE `doge_prices` DISABLE KEYS */;
INSERT INTO `doge_prices` VALUES
(1,0.19,NULL,-13.81,NULL,'2025-03-04 08:12:49'),
(2,0.19,NULL,-11.76,NULL,'2025-03-04 09:10:56'),
(3,0.21,NULL,6.99,NULL,'2025-03-05 10:42:13'),
(4,0.21,NULL,6.77,NULL,'2025-03-05 10:45:39'),
(5,0.21,NULL,6.10,NULL,'2025-03-05 10:47:22'),
(6,0.21,NULL,4.60,NULL,'2025-03-06 08:01:24'),
(7,0.18,NULL,-4.71,NULL,'2025-03-10 12:31:21'),
(8,0.16,NULL,-8.19,NULL,'2025-03-11 09:53:57'),
(9,0.17,NULL,2.81,NULL,'2025-03-13 11:00:37'),
(10,0.17,NULL,2.51,NULL,'2025-03-17 13:46:12');
/*!40000 ALTER TABLE `doge_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eth_prices`
--

DROP TABLE IF EXISTS `eth_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eth_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(15,2) DEFAULT NULL,
  `change_1h` decimal(5,2) DEFAULT NULL,
  `change_24h` decimal(5,2) DEFAULT NULL,
  `change_7d` decimal(5,2) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eth_prices`
--

LOCK TABLES `eth_prices` WRITE;
/*!40000 ALTER TABLE `eth_prices` DISABLE KEYS */;
INSERT INTO `eth_prices` VALUES
(1,2073.12,NULL,-12.94,NULL,'2025-03-04 08:12:49'),
(2,2095.43,NULL,-10.77,NULL,'2025-03-04 09:10:56'),
(3,2268.31,NULL,8.06,NULL,'2025-03-05 10:42:13'),
(4,2260.33,NULL,7.68,NULL,'2025-03-05 10:45:39'),
(5,2253.03,NULL,7.19,NULL,'2025-03-05 10:47:22'),
(6,2284.75,NULL,3.49,NULL,'2025-03-06 08:01:24'),
(7,2110.19,NULL,-1.54,NULL,'2025-03-10 12:31:21'),
(8,1918.74,NULL,-8.77,NULL,'2025-03-11 09:53:57'),
(9,1899.82,NULL,-0.02,NULL,'2025-03-13 11:00:37'),
(10,1908.88,NULL,1.39,NULL,'2025-03-17 13:46:12');
/*!40000 ALTER TABLE `eth_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sol_prices`
--

DROP TABLE IF EXISTS `sol_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sol_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(15,2) DEFAULT NULL,
  `change_1h` decimal(5,2) DEFAULT NULL,
  `change_24h` decimal(5,2) DEFAULT NULL,
  `change_7d` decimal(5,2) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sol_prices`
--

LOCK TABLES `sol_prices` WRITE;
/*!40000 ALTER TABLE `sol_prices` DISABLE KEYS */;
INSERT INTO `sol_prices` VALUES
(1,135.71,NULL,-16.55,NULL,'2025-03-04 08:12:49'),
(2,137.27,NULL,-13.71,NULL,'2025-03-04 09:10:56'),
(3,149.70,NULL,9.59,NULL,'2025-03-05 10:42:13'),
(4,149.40,NULL,9.37,NULL,'2025-03-05 10:45:39'),
(5,149.05,NULL,8.78,NULL,'2025-03-05 10:47:22'),
(6,148.55,NULL,4.01,NULL,'2025-03-06 08:01:24'),
(7,128.88,NULL,-4.93,NULL,'2025-03-10 12:31:21'),
(8,123.99,NULL,-3.26,NULL,'2025-03-11 09:53:57'),
(9,126.96,NULL,1.87,NULL,'2025-03-13 11:00:37'),
(10,128.19,NULL,-0.36,NULL,'2025-03-17 13:46:12');
/*!40000 ALTER TABLE `sol_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `steth_prices`
--

DROP TABLE IF EXISTS `steth_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `steth_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(15,2) DEFAULT NULL,
  `change_1h` decimal(5,2) DEFAULT NULL,
  `change_24h` decimal(5,2) DEFAULT NULL,
  `change_7d` decimal(5,2) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `steth_prices`
--

LOCK TABLES `steth_prices` WRITE;
/*!40000 ALTER TABLE `steth_prices` DISABLE KEYS */;
INSERT INTO `steth_prices` VALUES
(1,2263.80,NULL,8.07,NULL,'2025-03-05 10:42:13'),
(2,2256.20,NULL,7.71,NULL,'2025-03-05 10:45:39'),
(3,2248.53,NULL,7.34,NULL,'2025-03-05 10:47:22'),
(4,2285.86,NULL,3.56,NULL,'2025-03-06 08:01:24');
/*!40000 ALTER TABLE `steth_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trx_prices`
--

DROP TABLE IF EXISTS `trx_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trx_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(15,2) DEFAULT NULL,
  `change_1h` decimal(5,2) DEFAULT NULL,
  `change_24h` decimal(5,2) DEFAULT NULL,
  `change_7d` decimal(5,2) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trx_prices`
--

LOCK TABLES `trx_prices` WRITE;
/*!40000 ALTER TABLE `trx_prices` DISABLE KEYS */;
INSERT INTO `trx_prices` VALUES
(1,0.23,NULL,-3.57,NULL,'2025-03-04 08:12:49'),
(2,0.23,NULL,-2.73,NULL,'2025-03-04 09:10:56'),
(3,0.24,NULL,-2.21,NULL,'2025-03-10 12:31:21'),
(4,0.23,NULL,-1.57,NULL,'2025-03-11 09:53:57'),
(5,0.22,NULL,1.63,NULL,'2025-03-13 11:00:37'),
(6,0.22,NULL,1.26,NULL,'2025-03-17 13:46:12');
/*!40000 ALTER TABLE `trx_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usdc_prices`
--

DROP TABLE IF EXISTS `usdc_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usdc_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(15,2) DEFAULT NULL,
  `change_1h` decimal(5,2) DEFAULT NULL,
  `change_24h` decimal(5,2) DEFAULT NULL,
  `change_7d` decimal(5,2) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usdc_prices`
--

LOCK TABLES `usdc_prices` WRITE;
/*!40000 ALTER TABLE `usdc_prices` DISABLE KEYS */;
INSERT INTO `usdc_prices` VALUES
(1,1.00,NULL,-0.01,NULL,'2025-03-04 08:12:49'),
(2,1.00,NULL,-0.01,NULL,'2025-03-04 09:10:56'),
(3,1.00,NULL,0.00,NULL,'2025-03-05 10:42:13'),
(4,1.00,NULL,0.00,NULL,'2025-03-05 10:45:39'),
(5,1.00,NULL,0.00,NULL,'2025-03-05 10:47:22'),
(6,1.00,NULL,0.01,NULL,'2025-03-06 08:01:24'),
(7,1.00,NULL,0.00,NULL,'2025-03-10 12:31:21'),
(8,1.00,NULL,0.00,NULL,'2025-03-11 09:53:57'),
(9,1.00,NULL,0.00,NULL,'2025-03-13 11:00:37'),
(10,1.00,NULL,0.00,NULL,'2025-03-17 13:46:12');
/*!40000 ALTER TABLE `usdc_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usdt_prices`
--

DROP TABLE IF EXISTS `usdt_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usdt_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(15,2) DEFAULT NULL,
  `change_1h` decimal(5,2) DEFAULT NULL,
  `change_24h` decimal(5,2) DEFAULT NULL,
  `change_7d` decimal(5,2) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usdt_prices`
--

LOCK TABLES `usdt_prices` WRITE;
/*!40000 ALTER TABLE `usdt_prices` DISABLE KEYS */;
INSERT INTO `usdt_prices` VALUES
(1,1.00,NULL,-0.04,NULL,'2025-03-04 08:12:49'),
(2,1.00,NULL,-0.03,NULL,'2025-03-04 09:10:56'),
(3,1.00,NULL,0.04,NULL,'2025-03-05 10:42:13'),
(4,1.00,NULL,0.05,NULL,'2025-03-05 10:45:39'),
(5,1.00,NULL,0.05,NULL,'2025-03-05 10:47:22'),
(6,1.00,NULL,0.02,NULL,'2025-03-06 08:01:24'),
(7,1.00,NULL,0.02,NULL,'2025-03-10 12:31:21'),
(8,1.00,NULL,-0.01,NULL,'2025-03-11 09:53:57'),
(9,1.00,NULL,0.00,NULL,'2025-03-13 11:00:37'),
(10,1.00,NULL,-0.01,NULL,'2025-03-17 13:46:12');
/*!40000 ALTER TABLE `usdt_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'sofiane','$2y$10$kRl/UtvzCJ0eztPnk/0Lbuw3OtX52nBT2rdubie5Tu1RO3zIY0fvO','test@gmail.com','2025-03-11 10:24:49'),
(2,'ryiad','$2y$10$EX/i6Rz6M6Tfjz8kxdBgGeaIataKgN5yW8RgU7tlaU36ZmeAl6PIi','ryiadgrz@gmail.com','2025-03-11 10:26:47'),
(3,'ines','$2y$10$xhsDVj9LosaNg9hoeo5S..bzdnYOaZFr.6o5O7xwOmmS7I19qzqwm','ineshashas19@gmail.com','2025-03-11 10:31:20'),
(4,'test','$2y$10$Sb1EMxI9orGDi91EBb8sAuhmtnt/4e7ANF.ckWbnb6i0yt30a.yMu','nb@gmail.gt','2025-03-11 10:39:34'),
(5,'badice','$2y$10$lFhuSY7xQNKLsbEsrZdXRex.J3qIAGwfdkj34epUfuubfdft2l0US','badice@tkt.fr','2025-03-12 09:54:32'),
(6,'jordan','$2y$10$zl2IMKBd8GR4tMNChKuaBu7kWtUMknemikOnk25SF2YzojXwDfgZC','test2@test.com','2025-03-17 15:11:32');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xrp_prices`
--

DROP TABLE IF EXISTS `xrp_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xrp_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(15,2) DEFAULT NULL,
  `change_1h` decimal(5,2) DEFAULT NULL,
  `change_24h` decimal(5,2) DEFAULT NULL,
  `change_7d` decimal(5,2) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xrp_prices`
--

LOCK TABLES `xrp_prices` WRITE;
/*!40000 ALTER TABLE `xrp_prices` DISABLE KEYS */;
INSERT INTO `xrp_prices` VALUES
(1,2.31,NULL,-14.07,NULL,'2025-03-04 08:12:49'),
(2,2.35,NULL,-8.95,NULL,'2025-03-04 09:10:56'),
(3,2.54,NULL,6.86,NULL,'2025-03-05 10:42:13'),
(4,2.53,NULL,6.69,NULL,'2025-03-05 10:45:39'),
(5,2.52,NULL,5.68,NULL,'2025-03-05 10:47:22'),
(6,2.51,NULL,2.58,NULL,'2025-03-06 08:01:24'),
(7,2.20,NULL,-1.58,NULL,'2025-03-10 12:31:21'),
(8,2.14,NULL,-2.69,NULL,'2025-03-11 09:53:57'),
(9,2.27,NULL,4.01,NULL,'2025-03-13 11:00:37'),
(10,2.34,NULL,1.77,NULL,'2025-03-17 13:46:12');
/*!40000 ALTER TABLE `xrp_prices` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-17 16:43:13
