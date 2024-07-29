CREATE DATABASE  IF NOT EXISTS `mpds` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mpds`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: mpds
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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Seiko'),(2,'Fossil'),(3,'Casio'),(4,'Gshock');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dial_size`
--

DROP TABLE IF EXISTS `dial_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dial_size` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dial_size`
--

LOCK TABLES `dial_size` WRITE;
/*!40000 ALTER TABLE `dial_size` DISABLE KEYS */;
INSERT INTO `dial_size` VALUES (1,'42mm'),(2,'45mm'),(3,'50mm');
/*!40000 ALTER TABLE `dial_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_info`
--

DROP TABLE IF EXISTS `invoice_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_info` (
  `amount` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `id_invoice` int DEFAULT NULL,
  `id_product` int DEFAULT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtlkl19xuanbbkyodf4whdgm43` (`id_invoice`),
  KEY `FKb6lufqrkre5sfnmgfuknkmck8` (`id_product`),
  CONSTRAINT `FKb6lufqrkre5sfnmgfuknkmck8` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  CONSTRAINT `FKtlkl19xuanbbkyodf4whdgm43` FOREIGN KEY (`id_invoice`) REFERENCES `invoices` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_info`
--

LOCK TABLES `invoice_info` WRITE;
/*!40000 ALTER TABLE `invoice_info` DISABLE KEYS */;
INSERT INTO `invoice_info` VALUES (1,9,8,5,130),(1,10,8,6,170),(1,11,9,10,212),(1,12,10,5,130),(1,13,11,31,200),(1,14,12,1,121),(1,15,12,11,125),(1,16,13,1,121),(1,17,13,11,125),(1,18,14,1,121),(1,19,14,11,125),(1,20,15,2,100),(1,21,15,11,125),(1,22,15,12,130),(1,23,16,1,121),(1,24,16,11,125),(1,25,16,12,130),(1,26,17,11,125),(1,27,17,12,130),(1,28,18,11,125),(1,29,19,11,125),(1,30,20,11,125),(1,31,21,1,121),(1,32,22,1,121),(1,33,22,15,200),(1,34,23,1,121),(1,35,24,1,121),(1,36,25,11,125),(1,37,25,12,130),(1,38,26,20,185),(1,39,26,21,175),(1,40,26,22,215),(1,41,26,23,220),(1,42,26,24,235),(1,43,27,2,100),(1,44,27,3,121),(1,45,27,30,170),(1,46,27,31,200),(5,47,28,3,121),(1,48,29,22,215),(1,49,29,23,220),(1,50,29,24,235),(4,51,30,3,121),(3,52,30,30,170),(1,53,31,13,160),(1,54,31,14,190),(1,55,31,15,200),(2,56,32,17,220),(1,57,32,18,200),(1,58,32,14,190),(1,59,32,15,200),(1,60,33,11,125),(1,61,33,12,130),(1,62,34,2,100),(1,63,34,3,121),(2,64,35,1,121),(1,65,35,11,125),(1,66,36,2,100),(1,67,37,1,121),(1,68,37,11,125),(1,69,38,1,121),(1,70,38,2,100),(2,71,39,1,121),(2,72,39,3,121),(2,73,39,6,170),(1,74,40,2,100);
/*!40000 ALTER TABLE `invoice_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `totalmoney` double NOT NULL,
  `user_id` int DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbwr4d4vyqf2bkoetxtt8j9dx7` (`user_id`),
  CONSTRAINT `FKbwr4d4vyqf2bkoetxtt8j9dx7` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (8,300,2,'TP HCM','vietanh@gmail.com','0123213','Paid','COD','2024-02-24 00:37:56.784000','vanh','admin','2024-06-25 22:26:43.413000'),(9,212,2,'TP HCM','vietanh@gmail.com','0123213','Pending','COD','2024-06-24 00:37:56.784000','vanh','admin','2024-06-24 02:29:17.055000'),(10,130,2,'TP HCM','vietanh@gmail.com','012123232323 ','Pending','COD','2024-06-24 00:37:56.784000','vanh','admin','2024-06-25 21:51:16.029000'),(11,200,2,'TP HCM','vietanh@gmail.com','0123213','Pending','COD','2024-06-24 00:37:56.784000','vanh','admin','2024-06-24 02:29:32.679000'),(12,246,2,'TP HCM','vietanh@gmail.com','0123213','Paid','COD','2024-06-24 00:37:56.784000','vanh','admin','2024-06-24 02:29:27.384000'),(13,246,2,'TP HCM','vietanh@gmail.com','0123213','Pending','COD','2024-06-24 00:37:56.784000','vanh','admin','2024-06-24 02:29:37.210000'),(14,246,2,'TP HCM','vietanh@gmail.com','0123213','Cancelled','COD','2024-06-24 00:37:56.784000','vanh','admin','2024-06-24 02:29:42.694000'),(15,355,2,'TP HCM','vietanh@gmail.com','0123213','Paid','VNPay','2024-06-24 00:37:56.784000','vanh','admin','2024-06-25 22:26:32.733000'),(16,376,2,'TP HCM','vietanh@gmail.com','0123213','Paid','VNPay','2024-06-24 00:37:56.784000','vanh','admin','2024-06-24 02:29:54.740000'),(17,255,2,'TP HCM','vietanh@gmail.com','0123213','Paid','COD','2024-06-24 00:37:56.784000','vanh','admin','2024-06-24 02:29:57.999000'),(18,125,2,'TP HCM','vietanhthantai4@gmail.com','0123213','Pending','VNPay','2024-06-24 00:37:56.784000','vanh',NULL,'2024-06-24 00:37:56.784000'),(19,125,2,'TP HCM','vietanhthantai4@gmail.com','0123213','Pending Processing','COD','2024-06-24 00:37:56.784000','vanh',NULL,'2024-06-24 00:37:56.784000'),(20,125,2,'TP HCM','vietanhthantai4@gmail.com','0123213','Pending','COD','2024-06-24 00:37:56.784000','vanh',NULL,'2024-06-24 00:37:56.784000'),(21,121,2,'TP HCM','vietanhthantai4@gmail.com','0123213','Paid','VNPay','2024-06-24 00:37:56.784000','vanh',NULL,'2024-06-24 00:37:56.784000'),(22,321,2,'TP HCM','vietanhthantai4@gmail.com','0123213','Pending','COD','2024-06-24 00:37:56.784000','vanh',NULL,'2024-06-24 00:37:56.784000'),(23,121,2,'TP HCM','vietanhthantai4@gmail.com','0123213','Pending','VNPay','2024-06-24 00:38:31.199000','vanh',NULL,'2024-06-24 00:38:31.199000'),(24,121,2,'TP HCM','email@gmail.com','0345348363','Pending','COD','2024-06-25 21:51:58.194000','vanh','admin','2024-06-25 21:52:38.083000'),(25,255,2,'TP HCM','vietanhnguyen.071002@gmail.com','0345348363','Pending','COD','2024-06-25 21:53:15.025000','vanh',NULL,'2024-06-25 21:53:15.025000'),(26,1030,2,'TP HCM','vietanhnguyen.071002@gmail.com','0345348363','Pending','COD','2024-06-25 21:53:34.229000','vanh',NULL,'2024-06-25 21:53:34.229000'),(27,591,2,'TP HCM','vietanhnguyen.071002@gmail.com','0345348363','Pending','COD','2024-06-25 21:53:45.703000','vanh',NULL,'2024-06-25 21:53:45.703000'),(28,605,2,'TP HCM','vietanhnguyen.071002@gmail.com','0345348363','Pending','COD','2024-06-25 21:54:03.962000','vanh',NULL,'2024-06-25 21:54:03.962000'),(29,670,2,'TP HCM','vietanhnguyen.071002@gmail.com','0345348363','Pending','COD','2024-06-25 21:54:14.542000','vanh',NULL,'2024-06-25 21:54:14.542000'),(30,994,2,'TP HCM','vietanhnguyen.071002@gmail.com','0345348363','Pending','COD','2024-06-25 21:54:34.677000','vanh',NULL,'2024-06-25 21:54:34.677000'),(31,550,2,'TP HCM','vietanhnguyen.071002@gmail.com','0345348363','Pending','COD','2024-06-25 21:54:44.810000','vanh',NULL,'2024-06-25 21:54:44.810000'),(32,1030,2,'TP HCM','vietanhnguyen.071002@gmail.com','0345348363','Pending','COD','2024-06-25 21:54:55.914000','vanh',NULL,'2024-06-25 21:54:55.914000'),(33,255,2,'TP HCM','vietanhnguyen.071002@gmail.com','0345348363','Pending','VNPay','2024-06-25 22:02:36.905000','vanh',NULL,'2024-06-25 22:02:36.905000'),(34,221,2,'TP HCM','vietanhnguyen.071002@gmail.com','0345348363','Paid','VNPay','2024-06-25 22:02:57.147000','vanh','admin','2024-06-25 22:25:03.937000'),(35,367,2,'TP HCM','vietanhnguyen.071002@gmail.com','0345348363','Pending','COD','2024-06-26 00:02:25.047000','vanh',NULL,'2024-06-26 00:02:25.047000'),(36,100,2,'TP HCM','vietanhnguyen.071002@gmail.com','0345348363','Pending','VNPay','2024-06-26 00:21:38.416000','vanh',NULL,'2024-06-26 00:21:38.416000'),(37,246,2,'TP HCM','vietanhnguyen.071002@gmail.com','0345348363','Pending','COD','2024-06-26 00:24:17.510000','vanh',NULL,'2024-06-26 00:24:17.510000'),(38,221,2,'TP HCM','vietanhnguyen.071002@gmail.com','0345348363','Pending','VNPay','2024-06-26 00:24:33.770000','vanh',NULL,'2024-06-26 00:24:33.770000'),(39,954,2,'','vietanhnguyen.071002@gmail.com','0345348363','Pending','VNPay','2024-06-26 00:49:17.829000','vanh',NULL,'2024-06-26 00:49:17.829000'),(40,100,2,'TP HCM','vietanhnguyen.071002@gmail.com','0345348363','Pending','COD','2024-06-26 00:50:58.754000','vanh',NULL,'2024-06-26 00:50:58.754000');
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_review`
--

DROP TABLE IF EXISTS `product_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlkf2n9dkjx32vcqqmds9v62` (`product_id`),
  CONSTRAINT `FKlkf2n9dkjx32vcqqmds9v62` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_review`
--

LOCK TABLES `product_review` WRITE;
/*!40000 ALTER TABLE `product_review` DISABLE KEYS */;
INSERT INTO `product_review` VALUES (1,6,'This is so amazing',2,'test'),(2,5,'Should buy this',2,'test'),(3,5,'Amazing',2,'test'),(4,10,'amazing',2,'test'),(5,10,'good product',2,'test'),(6,10,'awesome!!',2,'test'),(7,5,'amazing!!',2,'vanh'),(8,5,'amzing',2,'vanh'),(9,2,'amazing!!!',2,'vanh'),(10,2,'amazing!!!',2,'vanh');
/*!40000 ALTER TABLE `product_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `catergory_id` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `price` double NOT NULL,
  `status` int NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `strap_id` int DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `dial_size_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgtb1j0jdcyeydi2gfqc772weo` (`catergory_id`),
  KEY `FK1qc8ppd47rar0qcld8j89gv4t` (`strap_id`),
  KEY `FKnxem4mykjkk9ynr15jagha7o8` (`type_id`),
  KEY `FKhrwvdw81y7spcir91gvlhg6ui` (`dial_size_id`),
  CONSTRAINT `FK1qc8ppd47rar0qcld8j89gv4t` FOREIGN KEY (`strap_id`) REFERENCES `strap` (`id`),
  CONSTRAINT `FKgtb1j0jdcyeydi2gfqc772weo` FOREIGN KEY (`catergory_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FKhrwvdw81y7spcir91gvlhg6ui` FOREIGN KEY (`dial_size_id`) REFERENCES `dial_size` (`id`),
  CONSTRAINT `FKnxem4mykjkk9ynr15jagha7o8` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,121,1,'Phiên bản Seiko SRPD63K1 đồng hồ lặn với vỏ viền bezel xanh nổi bật các cọc số trắng, kiểu dáng dày dặn nam tính phần vỏ máy cơ 13mm với khả năng chống nước 10ATM.','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/8_SRPD63K1.jpg','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/box-seiko-5.jpg','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/8_SRPD63K1.jpg','Seiko SRPD63K1','Male',3,2,1),(4,2,100,1,'Mẫu G-Shock GA-B2100-1A1DR máy pin với phiên bản Solar (năng lượng ánh sáng), điểm nhấn nổi bật với tính Bluetooth có khả năng kết nối với điện thoại thông minh.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Fgshock%2F1.jpg?alt=media&token=56e08c2a-876a-45b0-9a53-400e2e9ba5f8','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Fgshock%2F1.jpg?alt=media&token=56e08c2a-876a-45b0-9a53-400e2e9ba5f8','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Fgshock%2F1.jpg?alt=media&token=56e08c2a-876a-45b0-9a53-400e2e9ba5f8','G-Shock GA-B2100','Male',2,1,1),(4,3,121,1,'Mẫu Baby-G BGD-570-1DR phiên bản dây vỏ nhựa phối tone màu đen năng động, mặt số điện tử hiện thị đa chức năng cùng với khả năng chịu nước lên đến 20atm.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Fgshock%2F2.jpg?alt=media&token=ef14bb35-1602-43cc-82a9-0fcebf18c2b6','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Fgshock%2F2.jpg?alt=media&token=ef14bb35-1602-43cc-82a9-0fcebf18c2b6','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Fgshock%2F2.jpg?alt=media&token=ef14bb35-1602-43cc-82a9-0fcebf18c2b6','Baby-G BGD-570','Female',2,1,1),(3,4,150,1,'Đồng hồ Casio EFR-526L-1AVUDF có vỏ kim loại bằng chất liệu thép không gỉ tinh tế, kim chỉ và vạch số được phủ phản quang nổi bật trên nền số màu đen mạnh mẽ, có ô lịch ngày vị trí 3h, dây đeo da màu đen có vân đem lãi vẻ lịch lãm.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2F10%2FEFR-526L-1AVUDF-1.jpg?alt=media&token=631ee486-caeb-418a-85b2-69239cbbb14c','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/CASIO-EFR-526L-1AVUDF-0.jpg','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/CASIO-EFR-526L-1AVUDF-2.jpg','Casio EFR-526L-1AVUDF','Male',1,2,2),(3,5,130,1,'Mẫu Casio EFV-540D-1AVUDF kiểu dáng 6 kim kẻm theo 3 núm vặn bên hông với vẻ ngoài đặc trưng thuộc dòng Edifice mang trên mình phong cách thể thao đầy lịch lãm cho các phái mạnh cùng khả năng chịu nước 10ATM.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2F11%2FCasio%20EFV-540D-1AVUDF.jpg?alt=media&token=57e48326-27fb-47ae-81eb-bc15ac512c88','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/CASIO-EFV-540D-1AVUDF-4.jpg','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/CASIO-EFV-540D-1AVUDF-1-1.jpg','Casio EFV-540D-1AVUD','Male',3,2,2),(3,6,170,1,'Đồng hồ dây da Casio EFR-526L-7AVUDF với mặt đồng hồ nền trắng viền đen tinh tế, 3 ô phụ màu đen đặc biệt, vỏ làm bằng chất liệu thép không gỉ, dây da màu nâu đậm có vân còn có 1 lịch ngày.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2F12%2FCasio%20EFR-526L-7AVUDF.jpg?alt=media&token=d4a95315-1fec-4ea9-b3ce-f579723f1167','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/casio-nam-quartz-pin-day-da-efr-526l-7avudf-7.jpg','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/casio-nam-quartz-pin-day-da-efr-526l-7avudf-8.jpg','Casio EFR-526L-7AVUDF','Male',1,2,1),(3,7,190,1,'Mẫu Casio ECB-950MP-1ADF tính năng vượt trội bộ máy được trang bị công nghệ Solar (Năng lượng ánh sáng), phiên bản Edifice nổi bật tính năng Blue tooth kết nối điện thoại thông minh.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2F13%2FCasio%20ECB-950MP-1ADF.jpg?alt=media&token=6053c130-1024-49e0-a493-76fbb5545cbc','https://image.donghohaitrieu.com/wp-content/uploads/2023/06/Casio-ECB-950MP-1ADF-3.jpg','https://image.donghohaitrieu.com/wp-content/uploads/2023/06/Casio-ECB-950MP-1ADF-2.jpg','Casio ECB-950MP-1ADF','Female',2,2,2),(3,8,219,1,'Đồng hồ Casio EFR-526L-1AVUDF có vỏ kim loại bằng chất liệu thép không gỉ tinh tế, kim chỉ và vạch số được phủ phản quang nổi bật trên nền số màu đen mạnh mẽ, có ô lịch ngày vị trí 3h, dây đeo da màu đen có vân đem lãi vẻ lịch lãm.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2F14%2FCasio%20EFV-570D-2AVUDF.jpg?alt=media&token=e24a2175-3999-4502-804e-4c75075cd9d2','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2F14%2FCasio%20EFV-570D-2AVUDF.jpg?alt=media&token=e24a2175-3999-4502-804e-4c75075cd9d2','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2F14%2FCasio%20EFV-570D-2AVUDF.jpg?alt=media&token=e24a2175-3999-4502-804e-4c75075cd9d2','Casio EFV-570D-2AVUDF','Male',3,2,1),(3,9,123,1,'Mẫu Casio EFV-540D-1AVUDF kiểu dáng 6 kim kẻm theo 3 núm vặn bên hông với vẻ ngoài đặc trưng thuộc dòng Edifice mang trên mình phong cách thể thao đầy lịch lãm cho các phái mạnh cùng khả năng chịu nước 10ATM.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2F15%2FCasio%20EFR-552D-1A2VUDF.jpg?alt=media&token=85f8984d-1b81-467d-96ec-4cc1d88e1350','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/Casio-EFR-552D-1A2VUDF-3.jpg','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/casio-box.jpg','Casio EFR-552D-1A2VUDF','Female',3,2,3),(3,10,212,1,'Đồng hồ Casio EFR-539BK-1AVUDF với tông màu đen chủ đạo từ mặt số tới dây đeo kim loại mạnh mẽ, kim chỉ và vạch số màu đồng nổi bật trên nền số, làm tô điểm nét lịch lãm, sang trọng cho phái mạnh.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2F16%2FCasio%20EFR-539BK.jpg?alt=media&token=289b114f-7490-4372-8656-5e2680f47106','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/CASIO-EFR-539BK-1AVUDF-1.jpg','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/CASIO-EFR-539BK-1AVUDF-2.jpg','Casio EFR-539BK','Male',3,2,2),(1,11,125,1,'Mẫu Seiko 5 Sports SRPK39K1 phiên bản giới hạn chỉ 15.000 chiếc trên toàn cầu, là ấn phẩm kỷ niệm 55 năm ra mắt bộ sưu tập Seiko 5 Sports, đồng thời vinh danh ngôi sao điện ảnh võ thuật Lý Tiểu Long qua toàn bộ thiết kế đồng hồ lấy cảm hứng từ ông.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Fseiko%2F3.jpg?alt=media&token=c010422e-445f-431f-a5d2-33a4ad1c5426','https://image.donghohaitrieu.com/wp-content/uploads/2023/11/Seiko-5-Sports-Ly-Tieu-Long-SRPK39K-6.1-Text.jpg','https://image.donghohaitrieu.com/wp-content/uploads/2023/11/Seiko-5-Sports-Ly-Tieu-Long-SRPK39K-6-Text.jpg','Seiko 5 Sports SRPK39K1','Female',1,2,2),(1,12,130,1,'Mẫu Seiko 5 Sports Retro Color SRPK13K là phiên bản đặc biệt, lấy cảm hứng từ chiếc đồng hồ có 2 viền benzel được ra mắt vào năm 1969 của Seiko. Đặc trưng với thiết kế đầy màu sắc trên mặt số có kích thước 42,5mm và kim giây màu cam khác biệt.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Fseiko%2F4.jpg?alt=media&token=19ce6d4d-9fb8-4af1-aceb-663a61623f4e','https://image.donghohaitrieu.com/wp-content/uploads/2023/11/Seiko-5-Sports-SRPK13K1-6.jpg','https://image.donghohaitrieu.com/wp-content/uploads/2023/11/Seiko-5-Sports-SRPK09K-vs-SRPK13K-2-1.jpg','Seiko 5 Retro Color','Female',3,2,3),(1,13,160,1,'Mẫu Seiko SSC913P1 thiết kế 3 núm vặn điều chỉnh các tính năng Chronograph (đo thời gian) tạo nên vẻ ngoài độc đáo trên nền mặt số kích thước 41.4mm.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Fseiko%2F5.jpg?alt=media&token=09338dd3-34a8-4ca3-a470-674d700a1921','https://image.donghohaitrieu.com/wp-content/uploads/2023/08/Seiko-Prospex-SSC913P1-4.jpg','https://image.donghohaitrieu.com/wp-content/uploads/2023/08/Seiko-Prospex-SSC913P1-5.jpg','Seiko SSC913P1','Male',3,2,3),(1,14,190,1,'Mẫu Seiko SRPJ47K1 kim giây tone màu vàng nổi bật giữa các chi tiết cọc chấm tròn tạo hình dày dặn và thiết kế phủ dạ quang trên nền mặt số khoác bởi một lớp áo nâu thẫm điềm đạm mà cuốn hút.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Fseiko%2F6.jpg?alt=media&token=c6ab05bc-08ec-4971-bda7-844c942aff43','https://image.donghohaitrieu.com/wp-content/uploads/2023/10/SRPJ47K1_1.jpg','https://image.donghohaitrieu.com/wp-content/uploads/2023/10/SRPJ47K1_3.jpg','Seiko SRPJ47K1','Female',3,2,3),(1,15,200,1,'Mẫu Seiko SRPG35K1 phiên bản dây vải phong cách năng động, chi tiết kim chỉ cùng các cọc chấm nhỏ được phủ dạ quang trên nền mặt số đen kích thước 39.4mm.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Fseiko%2F7.jpg?alt=media&token=b13d6f22-41bb-46f6-97dd-3b2ef641df28','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/SRPG35K1-6.jpg','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/SRPG37K1-SRPG35K1-SRPG31K1-2.jpg','Seiko 5 SRPG35K1','Female',1,2,1),(1,16,213,1,'Mẫu Seiko SRPH21K1 phiên bản dây lưới kim loại mạ bạc trẻ trung, chi tiết kim chỉ cùng các cọc chấm tròn nhỏ được phủ dạ quang trên nền mặt số kích thước 39.4mm.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Fseiko%2F8.jpg?alt=media&token=acf4e4dd-20d9-4a61-9325-df8e487414c0','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Fseiko%2F8.jpg?alt=media&token=acf4e4dd-20d9-4a61-9325-df8e487414c0','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Fseiko%2F8.jpg?alt=media&token=acf4e4dd-20d9-4a61-9325-df8e487414c0','Seiko 5 SRPH21K1','Male',3,2,2),(1,17,220,1,'Mẫu Seiko SSC911P1 thiết kế 3 núm vặn điều chỉnh các tính năng Chronograph (đo thời gian) tạo nên vẻ ngoài độc đáo trên nền mặt số kích thước 41.4mm.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Fseiko%2F9.jpg?alt=media&token=3a0e6cc8-e72d-4c21-b091-c5b474a7f682','https://image.donghohaitrieu.com/wp-content/uploads/2023/08/Seiko-Prospex-SSC911P1-4.jpg','https://image.donghohaitrieu.com/wp-content/uploads/2023/08/Seiko-Prospex-SSC911P1-3.jpg','Seiko SSC911P1','Female',3,2,1),(1,18,200,1,'Seiko SSA425J1, đồng hồ cơ Nhật Bản sang trọng lấy cảm hứng từ phong cách cổ điển thập niên 60. Trang bị máy 4R39 độc quyền cho thời gian trữ cót 41 giờ.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Fseiko%2F10.jpg?alt=media&token=fe71f204-8e15-4028-9988-49e4f94d0eec','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/SSA425J1-5.jpg','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/SSA425J1-4.jpg','Seiko Presage Style','Female',3,2,3),(2,19,195,1,'Mẫu Fossil FS5251SET dây da nâu sậm phiên bản da trơn phong cách thời trang nam tính với lối thiết kế tính năng Chronograph (đo thời gian) trên nền mặt số lớn size 42mm.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Ffossil%2F1.jpg?alt=media&token=8a6f0ec0-4d9b-4ffc-881e-351d61c09aef','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Ffossil%2F1.jpg?alt=media&token=8a6f0ec0-4d9b-4ffc-881e-351d61c09aef','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/Fossil_box.jpg','Fossil FS5251SET','Male',1,2,2),(2,20,185,1,'Mẫu đồng hồ Fossil ME3061 với kiểu thiết kế cổ điển dành cho nam, kim chỉ và vạch chữ số la mã nổi bật trên nền đen, kết hợp cùng với dây đeo bằng da nâu tạo vẻ lịch lãm cho phái mạnh.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Ffossil%2F2.jpg?alt=media&token=8b45cb31-34f2-4041-96f8-c5586c199063','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/FOSSIL-ME3061-1.jpg','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/FOSSIL-ME3061-0-1.jpg','Fossil ME3061','Female',1,2,3),(2,21,175,1,'Fossil Bronson Chronograph Smoke FS6017, chiếc đồng hồ thể thao dành cho nam với mặt số màu đỏ thẫm mạnh mẽ và quyền lực. Trang bị tính năng Chronograph bấm giờ thể thao đạt độ chính xác cao nhờ bộ máy quartz Nhật Bản.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Ffossil%2F3.jpg?alt=media&token=2cba957c-0583-4aa9-8d6f-a982b9e8dc82','https://image.donghohaitrieu.com/wp-content/uploads/2023/11/Fossil-Crimson-Watch-FS6017-5.jpg','https://image.donghohaitrieu.com/wp-content/uploads/2023/11/Fossil-Crimson-Watch-FS6017-1.jpg','Fossil FS6017','Female',3,2,1),(2,22,215,1,'Fossil Blue Dive FS6013 là mẫu đồng hồ nam phong cách thể thao, có đường kính 42mm phù hợp với đại đa số nam giới. Viền bezel màu đỏ nâu có thể xoay được phục vụ các mục đích bơi lặn thể thao.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Ffossil%2F4.jpg?alt=media&token=2e4f3c69-6b14-4235-ae8e-a67aad09f5da','https://image.donghohaitrieu.com/wp-content/uploads/2023/11/Fossil-Crimson-Watch-FS6013-1.jpg','https://image.donghohaitrieu.com/wp-content/uploads/2023/11/FS6013_4.jpg','Fossil FS6013','Male',3,2,1),(2,23,220,1,'Mẫu Fossil FS5961 các chi tiết kim chỉ cùng các cọc chấm tròn tạo hình dày dặn phủ dạ quang trên nền mặt số lớn kích thước 42mm.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Ffossil%2F5.jpg?alt=media&token=13e23712-91ea-48cf-94f2-305b0f3ab8b1','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/FS5961_1.jpg','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/FOSSIL-FS5961-1.jpg','Fossil FS5961','Female',1,2,1),(2,24,235,1,'Mẫu Fossil FS5944 thiết kế 3 núm vặn điều chỉnh các tính năng Chronograp (đo thời gian) tạo nên kiểu dáng độc đáo đồng hồ 6 kim hiện thị trên nền mặt số kích thước 42mm.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Ffossil%2F6.jpg?alt=media&token=b5ffbc2c-f47d-4022-a1ff-84bada079f21','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/FS5944_1.jpg','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/FS5944_2.jpg','Fossil FS5944','Female',3,2,3),(2,25,198,1,'Mẫu Fossil FS5936 dây đeo kim loại phiên bản dây lưới phong cách thời trang, thiết kế đơn chức năng 3 kim cùng lịch ngày lịch thứ hiện thị trên nền mặt số kích thước 42mm.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Ffossil%2F7.jpg?alt=media&token=3d8efb32-ce94-47ff-a0ac-a64f5c6e0bbf','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Ffossil%2F7.jpg?alt=media&token=3d8efb32-ce94-47ff-a0ac-a64f5c6e0bbf','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Ffossil%2F7.jpg?alt=media&token=3d8efb32-ce94-47ff-a0ac-a64f5c6e0bbf','Fossil FS5936','Male',3,2,2),(2,26,216,1,'Mẫu Fossil FS5934 phiên bản dây da trơn tone màu nâu sẫm kết hợp cùng nền mặt số vuông, kết hợp vỏ máy pin kích thước dày dặn với thiết kế tạo hình vỏ nhám phong cách nam tính.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Ffossil%2F8.jpg?alt=media&token=81426dde-6852-4792-a7ec-7e00626fe260','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/FS5934_1.jpg','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/FS5934_2.jpg','Fossil FS5934','Female',1,2,2),(2,27,130,1,'Mẫu Fossil FS5950 chi tiết kim chỉ cùng các cọc chấm tròn được tạo hình dày dặn phủ dạ quang nổi bật trên nền mặt số xanh tone màu thời trang với kích thước lớn 42mm.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Ffossil%2F9.jpg?alt=media&token=ff16b6f3-8040-4277-8ce3-f18107c577af','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Ffossil%2F9.jpg?alt=media&token=ff16b6f3-8040-4277-8ce3-f18107c577af','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Ffossil%2F9.jpg?alt=media&token=ff16b6f3-8040-4277-8ce3-f18107c577af','Fossil FS5950','Male',3,2,1),(2,28,145,1,'Mẫu Fossil ES4713 vẻ ngoài thời trang sang trọng với thiết kế đính pha lê trên phần vỏ viền xung quanh, kết hợp nền cọc số la mã được tạo hình mỏng trẻ trung cho phái đẹp.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Ffossil%2F10.jpg?alt=media&token=3764b306-0e39-43c3-969d-bec5d4984234','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/ES4713_1.jpg','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/ES4713_3.jpg','Fossil ES4713','Female',1,2,3),(4,29,180,1,'Mẫu G-Shock GA-2000S-1ADR mặt số tròn điện tử hiện thị đa chức năng, phiên bản đồng hồ thể thao với thiết kế dây vỏ nhựa cùng với khả năng chịu nước lên đến 20atm.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Fgshock%2F3.jpg?alt=media&token=b0373999-89ba-4458-9904-f1859087c6cd','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/CASIO-GA-2000S-1ADR-0.jpg','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/CASIO-GA-2000S-1ADR-2.jpg','G-Shock GA-2000S','Male',2,1,3),(4,30,170,1,'Mẫu G-Shock GA-2200BNR-1ADR mặt số tròn điện tử hiện thị đa chức năng, phiên bản đồng hồ thể thao với thiết kế dây vỏ nhựa cùng với khả năng chịu nước lên đến 20atm.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Fgshock%2F4.jpg?alt=media&token=a0957d24-1012-4bd8-b5eb-720c3905432a','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/GA-100BNR-1ADR-GA-2200BNR-1ADR-1.jpg','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/GA-2200BNR-1ADR-3.jpg','G-Shock GA-2200BNR','Female',2,1,1),(4,31,200,1,'Mẫu G-Shock GA-B2100C-9ADR máy pin với phiên bản Solar (năng lượng ánh sáng), điểm nhấn nổi bật với tính năng Bluetooth có khả năng kết nối với điện thoại thông minh.','https://firebasestorage.googleapis.com/v0/b/android-watches.appspot.com/o/product%2Fgshock%2F5.jpg?alt=media&token=f0306825-2e79-46d0-9473-352941702756','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/GA-B2100C-9A_2.jpg','https://image.donghohaitrieu.com/wp-content/uploads/2023/09/GA-B2100C-9A_4.jpg','G-Shock GA-B2100C','Male',2,1,2);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (0,'USER'),(1,'ADMIN'),(2,'SELLER');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strap`
--

DROP TABLE IF EXISTS `strap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strap` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strap`
--

LOCK TABLES `strap` WRITE;
/*!40000 ALTER TABLE `strap` DISABLE KEYS */;
INSERT INTO `strap` VALUES (1,'Leather'),(2,'Polyester'),(3,'Steel');
/*!40000 ALTER TABLE `strap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'Digital'),(2,'Analogue');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_r43af9ap4edm43mmtq01oddj6` (`username`),
  UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`),
  KEY `FKp56c1712k691lhsyewcssf40f` (`role_id`),
  CONSTRAINT `FKp56c1712k691lhsyewcssf40f` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'NT','admin@','admin','123','0123214','admin',1),(2,'2132122','vietanhnguyen.071002@gmail.com','vanh nguyen','123456','1239817222','vanh',0),(5,'TP HCM','vietanh@gmail.com','vanh nguyen','123','0123213','vanh123',2),(6,'TP HCM','vietanh@gmail.com','vanh nguyen','123','vietanh@gmail.com','vanh1234',1),(7,'TP HCM','vietanh@gmail.com','vanh nguyen','123','0123213','vanh3',2),(10,NULL,'vietanhthantai4@gmail.com','vanh nguyen','123',NULL,'vietanhtest',NULL),(11,NULL,'vietanhthantai4@gmail.com','vanh nguyen','123',NULL,'test123',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-26  1:27:33
