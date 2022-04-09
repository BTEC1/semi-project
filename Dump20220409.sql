-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: vegana_store
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `categoryId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (3,'Milk'),(4,'Drinks'),(5,'Candy'),(8,'demo cate'),(9,'Cookie');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customerId` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `roleId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('abc','abc@gmail.com',_binary '','abc','$2a$10$wQycJKq6w0bKKy0l65js4OFafwgSwyvCDPCTiX/cB/96auDHq8QDG','','0'),('admin','adminvegana@gmail.com',_binary '','Tôi là admin','$2a$10$1iPiIh9Mw/8jFkmrTzVhs.CrY8rBMn1hWHVSw2NPn92hRTK4kYwHu','','1'),('andien','diennguyen@gmail.com',_binary '','Nguyen An Dien','$2a$10$KFCoL/HMYNg1dl0YL9HRnuTPx5ShulU0xZgqnffMHIfwodet4bOKy','','0'),('BaoLong','long@gmail.com',_binary '','Nguyen Hoang Bao Long','$2a$10$Lu47PJKHFs5MPOT65S1QTuYbXs5w//RFHgDwE8UJwQVGPJJxC8cYi','','0'),('CongQuan','quan@gmail.com',_binary '','Duong Cong Quan','$2a$10$pBGnGTENWPeJwyb0KivVze7tLEQerm/xuLP1aXHN9HFcskRyRbKC2','','0'),('CongQuan123','quan123@gmail.com',_binary '','Duong Cong Quan','$2a$10$AZvrmVLy.aW60LjFFgEYl.WE.vunZuxQ6tv11yelGSfYAE/uuLWzS','','0'),('dong123','huudong297@gmail.com',_binary '','Trần Hữu Đồng','$2a$10$o55Jm17qNsCBwUSjL.dMEuJTNxUl.rYw2Fd1dhrJkk08kd/feemuu','','0'),('MinhNhat123','nhattvmbdaf190002@fpt.edu.vn',_binary '','Tran Van Minh Nhat','$2a$10$uSqqV2QkookM4T1nMGRo7OJp47Ww7fABxEIgCTJIyT5SRvfQSR2IC','','0'),('nhattran','nhat.tranvanminh@gmail.com',_binary '','Tran Van Minh Nhat','$2a$10$GcCDveY7KVXHl7.JBCdapupxEuQRKRoIYTfowjkRlQrGa9UYkMZGu','','0'),('quantran','dulichvieclam@gmail.com',_binary '','Tran Cong Quang','$2a$10$LG2pXRWR1BlgzR9mTdiDbuUjPLQ9p7OfEH3LHOhHa5RLvSYMwXHua','','0'),('thaochi6404','thaochi6404@gmail.com',_binary '','Trần Thảo Chi','$2a$10$s0mCvOK38vTl.BPhuChlCu.xi7wtRD95kAI0X/0JHSLbPJefGxI8.','','0'),('tuananh','anh@gmail.com',_binary '','Tran Tuan Anh','$2a$10$Hu/UJONeBfRnkbQXOHmhBOonlDQTYyuHt3Qy24htdDaBfuzHm3GEO','','0'),('tuanmanh','tranvanminhnhat99@gmail.com',_binary '','tran tuan manh','$2a$10$O0U7YY8gm7H45An1Vxmyau7pH0arcR0o.jr8GLC912HBZm8RIjmzm','','0'),('user1','tranhuuthach06@gmail.com',_binary '','Trần Hữu Thạch','$2a$10$nuHvdvtj/NfY87UyjHRJGOaJfxxAJmV4d3UUkzijFzMh2rL5thsku','','0'),('user2','user@gmail.com',_binary '','user2','$2a$10$rCkHrJ.6OW0j5m3bcZREuux/nvKKXDHCEDju2Cgj463zWa6XnmdUu','','0'),('user8','user8@gmail.com',_binary '','demo họ tên','$2a$10$i1BznT2AZlVshE8d/jVUguFzdMjuwRYlYVSNn46e1fByBgLJQouY.','','0'),('VanDat','dat@gmail.com',_binary '','Bui Van Dat','$2a$10$XtgQDoexTXMaX9PpMxQxtuik5JAeB.Foekr/HkM094Mb48wj5QKii','','0'),('vantruong','truong1155.gl@gmail.com',_binary '','Nguyen Van Truong','$2a$10$CVrGe2VbwoJNzFOhxde8cuRS0ReraKy3G0j8fP8DrNAixcuaOt3k.','','0');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `orderDetailId` int NOT NULL AUTO_INCREMENT,
  `discount` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `orderId` int DEFAULT NULL,
  `productId` int DEFAULT NULL,
  PRIMARY KEY (`orderDetailId`),
  KEY `FK3ohml2o6a85wh1nn65snnaind` (`orderId`),
  KEY `FK5pie1uapfd704usnm2loi3tex` (`productId`),
  CONSTRAINT `FK3ohml2o6a85wh1nn65snnaind` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderId`),
  CONSTRAINT `FK5pie1uapfd704usnm2loi3tex` FOREIGN KEY (`productId`) REFERENCES `products` (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (42,NULL,120,1,'Đã Thanh Toán',114,35,37),(43,NULL,120,1,'Đang Chờ Xử Lý',114,36,37),(44,NULL,50,1,'Đang Chờ Xử Lý',45,37,3),(45,NULL,60,2,'Đang Chờ Xử Lý',108,37,5),(46,NULL,50,1,'Đang Chờ Xử Lý',45,38,3),(47,NULL,40,1,'Đang Chờ Xử Lý',38,38,4),(48,NULL,60,1,'Đã Thanh Toán',54,39,5),(49,NULL,40,1,'Đang Chờ Xử Lý',38,40,4),(50,NULL,40,1,'Đang Chờ Xử Lý',38,41,4),(51,NULL,60,1,'Đang Chờ Xử Lý',54,41,5),(52,NULL,40,1,'Đang Chờ Xử Lý',38,43,4),(53,NULL,120,1,'Đang Chờ Xử Lý',114,43,37),(54,NULL,40,1,'Đang Chờ Xử Lý',38,44,4),(55,NULL,40,1,'Đang Chờ Xử Lý',38,45,4),(56,NULL,60,1,'Đang Chờ Xử Lý',54,45,5),(57,NULL,40,1,'Đang Chờ Xử Lý',38,46,4),(58,NULL,40,1,'Đang Chờ Xử Lý',38,47,4),(59,NULL,40,1,'Đang Chờ Xử Lý',38,48,4),(60,NULL,60,1,'Đang Chờ Xử Lý',54,49,5),(61,NULL,60,1,'Đang Chờ Xử Lý',54,50,5),(62,NULL,40,1,'Đang Chờ Xử Lý',38,51,4),(64,NULL,40,1,'Đang Chờ Xử Lý',38,53,4),(65,NULL,40,1,'Đang Chờ Xử Lý',38,54,4),(66,NULL,40,1,'Đang Chờ Xử Lý',38,55,4),(67,NULL,40,1,'Đang Chờ Xử Lý',38,56,4),(68,NULL,60,1,'Đang Chờ Xử Lý',54,56,5),(71,NULL,40,1,'Đang Chờ Xử Lý',38,60,4),(72,NULL,40,1,'Đang Chờ Xử Lý',38,61,4),(73,NULL,40,1,'Đang Chờ Xử Lý',38,62,4),(74,NULL,50,1,'Đang Chờ Xử Lý',45,63,3),(75,NULL,40,1,'Đang Chờ Xử Lý',38,64,4),(76,NULL,40,1,'Đang Chờ Xử Lý',38,65,4),(77,NULL,40,1,'Đang Chờ Xử Lý',38,66,4),(78,NULL,60,1,'Đang Chờ Xử Lý',54,67,5),(79,NULL,40,1,'Đang Chờ Xử Lý',38,68,4),(80,NULL,50,1,'Đang Chờ Xử Lý',45,69,3),(81,NULL,40,1,'Đang Chờ Xử Lý',38,69,4),(82,NULL,60,1,'Đang Chờ Xử Lý',54,70,5),(83,NULL,40,1,'Đang Chờ Xử Lý',38,71,4),(84,NULL,60,1,'Đang Chờ Xử Lý',54,72,5),(85,NULL,40,1,'Đang Chờ Xử Lý',38,73,4),(86,NULL,60,1,'Đang Chờ Xử Lý',54,73,5),(87,NULL,40,1,'Đã Thanh Toán',38,74,4),(88,NULL,40,1,'Đang Chờ Xử Lý',38,74,6),(89,NULL,40,1,'Đang Chờ Xử Lý',38,75,4),(90,NULL,40,1,'Đang Chờ Xử Lý',38,76,4),(91,NULL,40,1,'Đang Chờ Xử Lý',38,77,4),(92,NULL,40,1,'Đang Chờ Xử Lý',38,78,4),(93,NULL,40,1,'Đang Chờ Xử Lý',38,79,4),(94,NULL,40,1,'Đang Chờ Xử Lý',38,80,4),(95,NULL,40,1,'Đang Chờ Xử Lý',38,81,4),(96,NULL,40,1,'Đang Chờ Xử Lý',38,82,4),(97,NULL,40,1,'Đang Chờ Xử Lý',38,83,4),(98,NULL,40,1,'Đang Chờ Xử Lý',38,84,4);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `requireDate` date DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `customerId` varchar(255) DEFAULT NULL,
  `orderDetailId` int DEFAULT NULL,
  `paypal` int DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `FK1bpj2iini89gbon333nm7tvht` (`customerId`),
  KEY `FK1gy3b3hqr3p2p1y5i8xuj6l5h` (`orderDetailId`),
  CONSTRAINT `FK1bpj2iini89gbon333nm7tvht` FOREIGN KEY (`customerId`) REFERENCES `customers` (`customerId`),
  CONSTRAINT `FK1gy3b3hqr3p2p1y5i8xuj6l5h` FOREIGN KEY (`orderDetailId`) REFERENCES `orderdetails` (`orderDetailId`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'68 Trung Tiết, Tp. Hà Tĩnh',0,NULL,'2021-09-02','0917291997','Trần Hữu Đồng',NULL,120,'admin',NULL,NULL),(2,'68 Trung Tiết, Tp. Hà Tĩnh',0,NULL,'2021-09-02','0917291997','Trần Hữu Đồng',NULL,114,'dong123',NULL,NULL),(3,'68 Trung Tiết, Tp. Hà Tĩnh',0,NULL,'2021-09-02','0917291997','Trần Hữu Đồng',NULL,540,'dong123',NULL,NULL),(4,'68 Trung Tiết, Tp. Hà Tĩnh',0,NULL,'2021-09-03','0915767465','Trần Hữu Thạch',NULL,360,'dong123',NULL,NULL),(5,'266 Dũng sĩ Thanh Khê -  Đà Nẵng',0,NULL,'2021-09-03','0915999999','Nguyễn Ngọc Khánh',NULL,585,'dong123',NULL,NULL),(6,'Tp.Huế',0,NULL,'2021-09-03','0915767465','Nguyễn Thanh Lam',NULL,135,'dong123',NULL,NULL),(7,'266 Dũng sĩ Thanh Khê -  Đà Nẵng',0,NULL,'2021-09-03','0976704644','Nguyễn Ngọc Khánh',NULL,200,'dong123',NULL,NULL),(8,'266 Dũng sĩ Thanh Khê -  Đà Nẵng',0,NULL,'2021-09-03','0976704644','Nguyễn Ngọc Khánh',NULL,200,'dong123',NULL,NULL),(9,'266 Dũng sĩ Thanh Khê -  Đà Nẵng',0,NULL,'2021-09-04','0915767465','Trần Hoài Nam',NULL,200,'dong123',NULL,NULL),(10,'TP. Hà Tĩnh',0,NULL,'2021-09-04','0976704644','Nguyễn Văn Tú',NULL,204.5,'dong123',NULL,NULL),(11,'TP. Hà Tĩnh',0,NULL,'2021-09-04','0915767465','Trần Hoài Nam',NULL,104.5,'dong123',NULL,NULL),(12,'68 Trung Tiết, Tp. Hà Tĩnh',0,NULL,'2021-09-04','0915999999','Trần Hữu Thạch',NULL,142.5,'user1',NULL,NULL),(13,'266 Dũng sĩ Thanh Khê -  Đà Nẵng',0,NULL,'2021-09-05','0943231996','Trần Hoài Nam',NULL,72,NULL,NULL,NULL),(14,'Tp.Huế',0,NULL,'2021-09-05','0915767465','Nguyễn Thanh Lam',NULL,720,'dong123',NULL,NULL),(15,'68 Trung Tiết, Tp. Hà Tĩnh',0,'Nước Revive và socola Misura','2021-09-05','0915767465','Trần Hữu Thạch',NULL,169.5,'user1',NULL,NULL),(16,'266 Dũng sĩ Thanh Khê -  Đà Nẵng',0,'Nhân hạt óc chó Sunrise','2021-09-06','0915999999','Trần Hoài Nam',NULL,360,'dong123',NULL,NULL),(17,'266 Dũng sĩ Thanh Khê -  Đà Nẵng',0,'Nước Revive','2021-09-06','0915767465','Nguyễn Ngọc Khánh',NULL,65,'dong123',NULL,NULL),(18,'Tp.Huế',0,'Hạt Macca Dinh Dưỡng','2021-09-06','0917291997','Nguyễn Thanh Lam',NULL,200,'dong123',NULL,NULL),(19,'266 Dũng sĩ Thanh Khê -  Đà Nẵng',0,'Coca-Cola vị Original','2021-09-06','0915999999','Nguyễn Thanh Lam',NULL,114,'dong123',NULL,NULL),(20,'68 Trung Tiết, Tp. Hà Tĩnh',0,'Snack Oishi Tom Toms','2021-09-06','0915767465','Trần Hữu Đồng',NULL,45,'dong123',NULL,NULL),(21,'Tp.Huế',0,'Mountain Dew','2021-09-06','0915999999','Nguyễn Thanh Lam',NULL,80,'dong123',NULL,NULL),(22,'TP. Quảng Trị',0,'Snack Oishi Pillows','2021-09-06','0915767465','Nguyễn Ngọc Khánh',NULL,54,'dong123',NULL,NULL),(23,'68 Trung Tiết, Tp. Hà Tĩnh',0,'Snack Thái Martys','2021-09-06','0917291997','Trần Hữu Đồng',NULL,57,'dong123',NULL,NULL),(24,'Tp.Huế',0,'DIELAC ALPHA GOLD','2021-09-06','0915767465','Nguyễn Thanh Lam',NULL,570,'dong123',NULL,NULL),(25,'68 Trung Tiết, Tp. Hà Tĩnh',0,'Hạt Macca Dinh Dưỡng','2021-09-06','0976704644','Nguyễn Văn Tú',NULL,200,'dong123',NULL,NULL),(26,'266 Dũng sĩ Thanh Khê -  Đà Nẵng',0,'Nước Revive','2021-09-06','0915767465','Nguyễn Thanh Lam',NULL,65,'dong123',NULL,NULL),(27,'68 Trung Tiết, Tp. Hà Tĩnh',0,'Coca-Cola','2021-09-06','0915999999','Nguyễn Thanh Lam',NULL,118.75,'dong123',NULL,NULL),(28,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-09','0915767465','Trần Hoài Nam',NULL,95,'user1',NULL,NULL),(29,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-09','0915767465','Nguyễn Ngọc Khánh',NULL,104.5,'dong123',NULL,NULL),(30,'demo dia chi',0,'Demo mô tả','2021-09-11','0915999999','demo user',NULL,45,'user2',NULL,NULL),(31,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-12','0915999999','Trần Hoài Nam',NULL,45,'dong123',NULL,NULL),(32,'Tp.Huế',0,'Demo mô tả','2021-09-12','0915767465','Nguyễn Thanh Lam',NULL,180,'dong123',NULL,NULL),(33,'Tp.Huế',0,'Demo mô tả','2021-09-12','0915999999','Nguyễn Thanh Lam',NULL,237.5,'user8',NULL,NULL),(34,'demo dia chi',0,'Demo mô tả','2021-09-12','0625648565','Trần Thảo Chi',NULL,104.5,'thaochi6404',NULL,NULL),(35,'27',0,'123','2022-03-19','0333365864','Trần Văn Minh Nhật',NULL,114,'andien',NULL,NULL),(36,'27',0,'123','2022-03-19','0333365864','Trần Văn Minh Nhật',NULL,114,'andien',NULL,NULL),(37,'27',0,'123','2022-03-20','0333365864','Trần Văn Minh Nhật',NULL,153,'andien',NULL,NULL),(38,'27',0,'Giao nhanh','2022-04-02','0333365864','Trần Văn Minh Nhật',NULL,83,'andien',NULL,NULL),(39,'27',0,'sadfasfd','2022-04-02','0333365864','nguyen van truong',NULL,54,'vantruong',NULL,NULL),(40,'27',0,'Giao nhanh','2022-04-04','0333365864','Trần Văn Minh Nhật',NULL,38,'andien',NULL,NULL),(41,'27',0,'33','2022-04-04','0333365864','Trần Văn Minh Nhật',NULL,92,'andien',NULL,1),(42,'27',0,'33','2022-04-04','0333365864','Trần Văn Minh Nhật',NULL,0,'andien',NULL,0),(43,'27',0,'Giao nhanh','2022-04-04','0333365864','Trần Văn Minh Nhật',NULL,152,'andien',NULL,0),(44,'27',0,'sadfasfd','2022-04-04','0333365864','Trần Văn Minh Nhật',NULL,38,'andien',NULL,0),(45,'27',0,'testing payment','2022-04-04','0333365864','Trần Văn Minh Nhật',NULL,92,'andien',NULL,0),(46,'10',0,'sadfasfd','2022-04-04','0333365864','Minh Nhat Tran Van',NULL,38,'andien',NULL,0),(47,'10',0,'33','2022-04-04','0333365864','Minh Nhat Tran Van',NULL,38,'andien',NULL,0),(48,'27',0,'sadfasfd','2022-04-04','0333365864','Trần Văn Minh Nhật',NULL,38,'andien',NULL,1),(49,'27',0,'Giao nhanh','2022-04-04','0333365864','Trần Văn Minh Nhật',NULL,54,'andien',NULL,1),(50,'27',0,'Giao nhanh','2022-04-04','0333365864','Trần Văn Minh Nhật',NULL,54,'andien',NULL,1),(51,'27',0,'ád','2022-04-04','0333365864','Trần Văn Minh Nhật',NULL,38,'andien',NULL,1),(53,'10',0,'123','2022-04-04','0333365864','Minh Nhat Tran Van',NULL,38,'andien',NULL,1),(54,'27',0,'sadfasfd','2022-04-04','0333365864','Trần Văn Minh Nhật',NULL,38,'andien',NULL,1),(55,'27',0,'sadfasfd','2022-04-04','0333365864','Trần Văn Minh Nhật',NULL,38,'andien',NULL,1),(56,'10',0,'123','2022-04-04','0333365864','Minh Nhat Tran Van',NULL,92,'andien',NULL,1),(60,'27',0,'33','2022-04-04','0333365864','Trần Văn Minh Nhật',NULL,38,'andien',NULL,1),(61,'27',0,'123','2022-04-04','0333365864','Trần Văn Minh Nhật',NULL,38,'andien',NULL,1),(62,'27',0,'Giao nhanh','2022-04-05','0333365864','Trần Văn Minh Nhật',NULL,38,'andien',NULL,1),(63,'27',0,'sadfasfd','2022-04-05','0333365864','Trần Văn Minh Nhật',NULL,45,'andien',NULL,1),(64,'27',0,'Giao nhanh','2022-04-05','0333365864','Trần Văn Minh Nhật',NULL,38,'andien',NULL,1),(65,'Bình Minh, Thăng Bình, Quảng Nam',0,'Giao nhanh','2022-04-05','0333365864','Trần Văn Nhật',NULL,38,'andien',NULL,1),(66,'27',0,'kk','2022-04-05','0333365864','Trần Văn Minh Nhật',NULL,38,'andien',NULL,1),(67,'27',0,'testing payment','2022-04-05','0333365864','Trần Văn Minh Nhật',NULL,54,'andien',NULL,1),(68,'27',0,'testing payment','2022-04-05','0333365864','Trần Văn Minh Nhật',NULL,38,'andien',NULL,1),(69,'27',0,'testing payment','2022-04-05','0333365864','Trần Văn Minh Nhật',NULL,83,'andien',NULL,1),(70,'27',0,'testing payment','2022-04-05','0333365864','Trần Văn Minh Nhật',NULL,54,'andien',NULL,1),(71,'27',0,'123456','2022-04-05','0333365864','Trần Văn Minh Nhật',NULL,38,'andien',NULL,1),(72,'27',0,'testing payment','2022-04-05','0333365864','Trần Văn Minh Nhật',NULL,54,'andien',NULL,1),(73,'27',0,'testing payment','2022-04-05','0333365864','Trần Văn Minh Nhật',NULL,92,'andien',NULL,1),(74,'27',0,'testing payment','2022-04-07','0333365864','Trần Văn Minh Nhật',NULL,76,'andien',NULL,0),(75,'27',0,'testing payment','2022-04-07','0333365864','Trần Văn Minh Nhật',NULL,38,'andien',NULL,1),(76,'10',0,'testing payment','2022-04-07','0333365864','Minh Nhat Tran Van',NULL,38,'admin',NULL,0),(77,'27',0,'testing payment','2022-04-07','0333365864','Trần Văn Minh Nhật',NULL,38,'andien',NULL,1),(78,'27',0,'testing payment','2022-04-07','0333365864','Trần Văn Minh Nhật',NULL,38,'andien',NULL,1),(79,'27',0,'testing payment','2022-04-07','0333365864','Trần Văn Minh Nhật',NULL,38,'andien',NULL,1),(80,'27',0,'Giao nhanh','2022-04-07','0333365864','Trần Văn Minh Nhật',NULL,38,'andien',NULL,1),(81,'27',0,'testing payment','2022-04-07','0333365864','Trần Văn Minh Nhật',NULL,38,'andien',NULL,1),(82,'27',0,'Giao nhanh','2022-04-07','0333365864','Trần Văn Minh Nhật',NULL,38,'andien',NULL,1),(83,'27',0,'testing payment','2022-04-07','0333365864','Trần Văn Minh Nhật',NULL,38,'andien',NULL,0),(84,'27',0,'Giao nhanh','2022-04-09','0333365864','Trần Văn Minh Nhật',NULL,38,'andien',NULL,1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `productId` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `enteredDate` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `categoryId` int DEFAULT NULL,
  `supplierId` int DEFAULT NULL,
  PRIMARY KEY (`productId`),
  KEY `FKej2ob3ifydf846t2a2tntna4e` (`categoryId`),
  KEY `FKs2xbxi7wmu948op6qiho9yr8d` (`supplierId`),
  CONSTRAINT `FKej2ob3ifydf846t2a2tntna4e` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`categoryId`) ON DELETE SET NULL,
  CONSTRAINT `FKs2xbxi7wmu948op6qiho9yr8d` FOREIGN KEY (`supplierId`) REFERENCES `suppliers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (3,'Snack bắp vị phô mai Oishi Tom Toms (45g/gói)',10,'2021-09-02','snack-oishi-toms.jpg','Snack Oishi Tom Toms',50,30,NULL,3),(4,'Snack bắp ngọt Oishi (45g/gói)',5,'2021-09-02','snack-bap-ngot.jpg','Snack bắp ngọt Oishi',40,300,NULL,3),(5,'Snack nhân sô cô la Oishi Pillows (100g) ',10,'2021-09-01','snack-pillows.jpg','Snack Oishi Pillows',60,60,NULL,3),(6,'Snack khoai tây vị muối Oishi Flutes (40g)',5,'2021-09-02','snack-flutes.jpg','Snack Oishi Flutes',40,60,NULL,3),(7,'Snack nhân sữa dừa Oishi Pillows (100g)',10,'2021-09-01','snack-nhan-pillows.jpg','Snack sữa dừa Oishi Pillows',80,80,NULL,3),(8,'Snack khoai tây poca (30) gr',0,'2021-09-02','snack-poca.jpg','Snack khoai tây Poca',50,300,NULL,3),(9,'Snack cua vị sốt chua ngọt Oishi Crab Me! (45g/gói)',10,'2021-09-02','snack-crabme.jpg','Snack Oishi Crab Me',60,40,NULL,3),(10,'Snack vị bò bít tết poca steack (40g)',10,'2021-09-02','snack-poca-cay.jpg','Snack Poca Steack',80,60,NULL,3),(11,'Snack bim bim thái (40g)',5,'2021-09-02','snack-martys.jpg','Snack Thái Martys',60,40,NULL,3),(12,'Yến mạch hạnh nhân Dan-D Pak (350g) ',0,'2021-09-02','Yến-mạch-hạnh-nhân-Dan-D-Pak-350g.jpg','Dan-D Pak',100,50,NULL,4),(13,'Bánh Quy Viên Sô Cô La Misura 290g',5,'2021-09-03','banh-mizura.jpg','Sô Cô La Misura',110,30,NULL,4),(14,'Bánh quy Cosy nhân mứt vị táo hộp 240g',10,'2021-09-02','banh-tik.jpg','Cookies Tik ',120,10,NULL,4),(15,'Bánh gạo nướng An vị cá Nhật thượng hạng Orion gói 117.6g',0,'2021-09-02','banh-orion.jpg','Bánh Orion',90,60,NULL,4),(16,'Bánh ăn sáng C’est Bon sợi thịt gà là lựa chọn hoàn hảo cho bữa ăn sáng hàng ngày của cả nhà',5,'2021-09-02','banh-orion-bon.jpg','Bánh C’est Bon',150,50,NULL,4),(17,'Bánh quy mini kem socola Oreo (23g)',0,'2021-09-03','banh-mini-oreo.jpg','Bánh quy socola Oreo',20,10,NULL,4),(18,'Bánh quy cacao nhân kem hạnh nhân YBC 18 cái (115.2g)',10,'2021-09-07','banh-noir.jpg','Bánh quy cacao',120,30,NULL,3),(19,'Bánh quy dinh dưỡng hạt Mắc ca kết hợp Nghệ - Hộp 12 bánh 45g',5,'2021-09-04','banh-mac-ca.jpg','Bánh quy hạt Mắc ca',200,10,NULL,4),(20,'Bánh quy Danisa được sản xuất từ công thức chính gốc của Đan Mạch, với nguyên liệu được lựa chọn kỹ càng, tinh túy nhất, sử dụng loại bơ thượng hạng giàu hương vị góp phần tạo nên sự khác biệt độc đáo so với các dòng bánh quy bơ khác.',5,'2021-09-05','banh-danisa.jpg','Bánh Danisa',300,50,NULL,4),(21,'Kẹo dẻo Jellyc Hải Hà kotobuki 100g',0,'2021-09-03','chip-chip-panda.jpg','Chip Chip HAIHA',40,100,5,6),(22,'Kẹo AnyTime Hàn Quốc 60 gram ( vị sữa và bạc hà) thanh mát.',0,'2021-09-14','keo-anytime.jpg','Kẹo AnyTime',50,200,5,6),(23,'Kẹo Cao Su Doublemint Vị Bạc Hà',10,'2021-09-01','keo-doublemint.jpg','Kẹo Doublemint',60,100,5,6),(24,'Hộp Hạt Hạnh Nhân Dinh Dưỡng Cho Mẹ REAL FOOD STORE (250g) ',10,'2021-09-15','hat-hanh-nhan.jpg','Hạt Hạnh Nhân',200,200,5,6),(25,'Hạt hạnh nhân nguyên chất Kirkland Almonds Mỹ 1.36kg',10,'2021-09-10','hat-almonds.jpg','Hạt hạnh nhân Kirkland',300,100,5,6),(26,'Túi Hạt Macca Dinh Dưỡng Cho Mẹ Real Food Store (500g)',0,'2021-09-08','hat-nuts.jpg','Hạt Macca Dinh Dưỡng',200,100,5,6),(27,'Nhân Hạt Óc Chó Sunrise (120gr) Hạt Dinh Dưỡng Đã Tách Vỏ Quả Óc Chó.Nhập Khẩu Mỹ',10,'2021-09-10','hat-oc-cho.jpg','Nhân Hạt Óc Chó Sunrise',400,300,5,6),(28,'Lốc 3 Hộp Sữa Hạt Hạnh Nhân Nguyên Chất 137 180ml',0,'2021-09-03','sua-hanh-nhan.jpg','Sữa Hạt Hạnh Nhân ',60,100,3,2),(29,'Nước ngọt Mirinda hương cam chai 1.5 lít',10,'2021-09-10','nuoc-mirinda-cam.jpg','Mirinda vị cam',100,60,4,5),(30,'Nước ngọt Mountain Dew 390 ml',0,'2021-09-16','nuoc-mountain.jpg','Mountain Dew',80,300,4,5),(31,'Trà ô long TEA 350ml',5,'2021-09-11','tra-o-long.jpg','Trà TEA+',45,50,4,5),(32,'Nước uống Isotonic vị chanh muối',0,'2021-09-17','nuoc-revive.jpg','Nước Revive',65,200,4,5),(33,'Nước uống đóng chai Aquafina (500ml)',0,'2021-09-09','nuoc-aquafina.jpg','Aquafina',20,300,4,5),(34,'Nước ngọt 7Up',0,'2021-09-08','nuoc-7-up.jpg','7Up',35,200,4,5),(35,'Trà Lipton ICE Tea',20,'2021-09-06','lipton-tea.jpg','Lipton Tea',85,300,4,5),(36,'Nước giải khát Coca-Cola Plus (330ml)',0,'2021-09-11','coca-cola-plus.jpg','Coca-Cola Plus',100,100,4,5),(37,'Nước Giải Khát Coca-Cola vị Nguyên Bản Original 320mlx6 | Nước có gas',5,'2021-09-19','coca-cola-original.jpg',' Coca-Cola vị  Original',120,200,4,5),(38,'Nước Giải Khát Coca-Cola | Nước có gas',5,'2021-09-17','coca-cola.jpg','Coca-Cola',125,300,4,5),(39,'Sữa Dielac Grow Plus 1+ Màu Xanh Tăng Cân, 1-2 tuổi, Vinamilk',10,'2021-09-11','sua-dielac-grow-plus.jpg','Sữa Dielac Grow Plus',500,300,3,1),(40,'SỮA BỘT GOLD YOKO 1 VINAMILK 850G DÀNH CHO BÉ TỪ 0 - 1 Tuổi | Sữa cho bé dưới 24 tháng',10,'2021-09-09','sua-bot-yoko.jpg','SỮA BỘT GOLD YOKO',700,100,3,1),(41,'HỘP SỮA BỘT VINAMILK DIELAC ALPHA GOLD IQ 1 (400G) (CHO TRẺ TỪ 0 - 6 THÁNG TUỔI) ',5,'2021-09-12','sua-alpha.jpg','DIELAC ALPHA GOLD',600,300,3,1),(42,'Sữa bột Vinamilk Dielac Optimum số 2 - hộp thiếc 900g (dành cho trẻ từ 6-12 tháng tuổi)',15,'2021-09-11','sua-optimum.jpg','Dielac Optimum',500,100,3,1),(43,'Sữa dielac grow plus 1+ 900g dành cho trẻ từ 1-2 tuổi',10,'2021-09-08','sua-grow-plus.jpg','Sữa Dielac Grow Plus-Red',650,300,3,1),(44,'Sữa tươi tiệt trùng Vinamilk 100% có đường 180ml (1 hộp)',5,'2021-09-11','sua-tuoi-vinamilk.jpg','Sữa Tươi Vinamilk',35,200,3,1),(45,'Sữa Nestle Milo nước (Lon 240ml)',0,'2021-09-09','nestle-milo.jpg',' Sữa Nestle Milo',25,200,3,2),(46,'Sữa Lúa Mạch Nestlé MILO Lon Thùng 24 Lon x 240 ml (4x6x240ml) | Sữa Tươi',0,'2021-09-11','milo-thung.jpg','Sữa Lúa Mạch Nestlé MILO',300,200,3,2),(47,'THÙNG SỮA ĐẬU NÀNH VINAMILK HẠT ÓC CHÓ -48 HỘP 180ML | Sữa Tươi',0,'2021-09-11','sua-oc-cho.jpg','Sữa Hạt Óc Chó',45,200,3,1),(48,'Túi Nhân Hạt Óc Chó Dinh Dưỡng Cho Mẹ Real Food (200g) | Dinh dưỡng cho mẹ',10,'2021-09-12','hat-occho.jpg','Túi Nhân Hạt Óc Chó',250,300,NULL,3),(49,'Combo 3 hộp sữa hạt dẻ 1L 137 Degrees Thái Lan',5,'2021-09-05','sua-pistachio.jpg','Sữa Hạt Dẻ',45,100,3,2),(54,'mô tả',5,'2021-09-09','den_mk052_1_0ddcbcb5ca3d4d3e8bb6ac99fcb7c23f_grande.jpg','test',1000000,20,NULL,1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  `customerId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcotftqap7by5m4ibph3ss3xvo` (`customerId`),
  CONSTRAINT `FKcotftqap7by5m4ibph3ss3xvo` FOREIGN KEY (`customerId`) REFERENCES `customers` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_ADMIN','admin'),(2,'ROLE_SADMIN',NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'vinamilk@gmail.com','Vinamilk','0915999999'),(2,'nestle@gmail.com','Nestle','0915999988'),(3,'snack@gmail.com','Snack','0915999966'),(4,'cookies@gmail.com','Cookies','0915999666'),(5,'pepsicola@gmail.com','Pepsi Cola','0915998888'),(6,'bibica@gmail.com','Bibica','0915998668');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-09 14:46:33
