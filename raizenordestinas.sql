-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: raizes_nordeste
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `descricao` varchar(60) DEFAULT NULL,
  `icone` varchar(10) DEFAULT NULL,
  `cor` varchar(10) DEFAULT NULL,
  `referencia_ext` bigint DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `criado_em` date DEFAULT NULL,
  `ideusu` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Tapiocas','?',NULL,NULL,1,'2026-06-29','SISTEMA'),(2,'Cuscuz','?',NULL,NULL,1,'2026-06-29','SISTEMA'),(3,'Cafes','☕',NULL,NULL,1,'2026-06-29','SISTEMA'),(4,'Bebidas','?',NULL,NULL,1,'2026-06-29','SISTEMA'),(5,'Pratos T¡picos','?',NULL,NULL,1,'2026-06-29','SISTEMA'),(6,'Sobremesas','?',NULL,NULL,1,'2026-06-29','SISTEMA');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `criado_em` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'matriz',1,'2026-03-02');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_tela`
--

DROP TABLE IF EXISTS `form_tela`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `form_tela` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `label` varchar(30) DEFAULT NULL,
  `router` varchar(100) DEFAULT NULL,
  `svg` varchar(400) DEFAULT NULL,
  `admtype` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_tela`
--

LOCK TABLES `form_tela` WRITE;
/*!40000 ALTER TABLE `form_tela` DISABLE KEYS */;
INSERT INTO `form_tela` VALUES (2,'Produtos','/produtos','<svg viewBox=\"0 0 24 24\" fill=\"none\" width=\"20\" height=\"20\"><path d=\"M20 7l-8-4-8 4m16 0l-8 4m8-4v10l-8 4m0-14L4 7m8 4v10M4 7v10l8 4\" stroke=\"currentColor\" stroke-width=\"1.8\" stroke-linecap=\"round\" stroke-linejoin=\"round\"/></svg>',0),(3,'Pedidos','/pedidos','<svg viewBox=\"0 0 24 24\" fill=\"none\" width=\"20\" height=\"20\"><rect x=\"3\" y=\"4\" width=\"18\" height=\"16\" rx=\"2\" stroke=\"currentColor\" stroke-width=\"1.8\"/><path d=\"M8 9h8m-8 4h5\" stroke=\"currentColor\" stroke-width=\"1.8\" stroke-linecap=\"round\"/></svg>',0),(4,'Importar / Exportar','/importar-exportar','<svg viewBox=\"0 0 24 24\" fill=\"none\" width=\"20\" height=\"20\"><path d=\"M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4\" stroke=\"currentColor\" stroke-width=\"1.8\" stroke-linecap=\"round\" stroke-linejoin=\"round\"/></svg>',0),(5,'Usuários','/usuarios','<svg viewBox=\"0 0 24 24\" fill=\"none\" width=\"20\" height=\"20\"><path d=\"M17 21v-2a4 4 0 00-4-4H5a4 4 0 00-4 4v2\" stroke=\"currentColor\" stroke-width=\"1.8\" stroke-linecap=\"round\"/><circle cx=\"9\" cy=\"7\" r=\"4\" stroke=\"currentColor\" stroke-width=\"1.8\"/><path d=\"M23 21v-2a4 4 0 00-3-3.87M16 3.13a4 4 0 010 7.75\" stroke=\"currentColor\" stroke-width=\"1.8\" stroke-linecap=\"round\"/></svg>',1),(6,'Categorias','/categorias','<svg viewBox=\"0 0 24 24\" fill=\"none\" width=\"20\" height=\"20\"><path d=\"M20.59 13.41l-7.17 7.17a2 2 0 01-2.83 0L2 12V2h10l8.59 8.59a2 2 0 010 2.82z\" stroke=\"currentColor\" stroke-width=\"1.8\" stroke-linecap=\"round\" stroke-linejoin=\"round\"/><circle cx=\"7\" cy=\"7\" r=\"1.5\" fill=\"currentColor\"/></svg>',1);
/*!40000 ALTER TABLE `form_tela` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `desconto` decimal(10,2) DEFAULT NULL,
  `id_categoria` bigint DEFAULT NULL,
  `estoque` int DEFAULT NULL,
  `referencia_ext` bigint DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `criado_em` date DEFAULT NULL,
  `ideusu` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_item_categoria` (`id_categoria`),
  CONSTRAINT `fk_item_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'Tapioca Manteiga','Tapioca tradicional quentinha na manteiga de garrafa.',6.00,0.00,1,100,NULL,1,'2026-06-29','SISTEMA'),(2,'Tapioca com Queijo Coalho','Tapioca recheada com queijo coalho assado na chapa.',10.00,0.00,1,100,NULL,1,'2026-06-29','SISTEMA'),(3,'Tapioca Carne de Sol e Queijo','Tapioca com recheio de carne de sol desfiada e queijo coalho.',15.50,0.00,1,80,NULL,1,'2026-06-29','SISTEMA'),(4,'Tapioca Doce de Coco','Tapioca doce com coco ralado fresco e leite condensado.',11.00,1.00,1,50,NULL,1,'2026-06-29','SISTEMA'),(5,'Cuscuz com Manteiga','Cuscuz nordestino de milho servido quentinho com manteiga derretida.',5.50,0.00,2,120,NULL,1,'2026-06-29','SISTEMA'),(6,'Cuscuz com Ovo','Cuscuz de milho acompanhado de dois ovos caipiras fritos na hora.',8.50,0.00,2,100,NULL,1,'2026-06-29','SISTEMA'),(7,'Cuscuz Carne de Sol e Nata','Cuscuz recheado com carne de sol desfiada e molho cremoso de nata.',16.00,0.00,2,60,NULL,1,'2026-06-29','SISTEMA'),(8,'Cuscuz com Queijo Coalho','Cuscuz de milho com cubos generosos de queijo coalho derretido.',10.50,0.00,2,90,NULL,1,'2026-06-29','SISTEMA'),(9,'Cafe Coado Tradicional','Cafe especial passado na hora no coador de pano.',3.50,0.00,3,200,NULL,1,'2026-06-29','SISTEMA'),(10,'Cafe Espresso','Cafe espresso curto, aromaítico e encorpado.',5.00,0.00,3,150,NULL,1,'2026-06-29','SISTEMA'),(11,'Cafe com Leite (Media)','Cafe tradicional com leite quente e espuma cremosa.',6.50,0.00,3,120,NULL,1,'2026-06-29','SISTEMA'),(12,'Cappuccino de Rapadura','Cappuccino cremoso especial adocado com raspas de rapadura artesanal.',12.00,2.00,3,80,NULL,1,'2026-06-29','SISTEMA'),(13,'Suco de Caju Natural','Suco natural feito da polpa fresca de caju.',7.50,0.00,4,100,NULL,1,'2026-06-29','SISTEMA'),(14,'Suco de Acerola','Suco natural de acerola fresco, rico em vitamina C.',7.50,0.00,4,100,NULL,1,'2026-06-29','SISTEMA'),(15,'Refrigerante Caju¡na (Lata)','Tradicional refrigerante nordestino sabor caju.',6.00,0.00,4,150,NULL,1,'2026-06-29','SISTEMA'),(16,'Agua Mineral','Agua mineral sem gás (garrafa 500ml).',4.00,0.00,4,250,NULL,1,'2026-06-29','SISTEMA'),(17,'Baiúo de Dois','Arroz cozido com feijao de corda, queijo coalho, bacon, linguica e cheiro verde.',28.00,0.00,5,40,NULL,1,'2026-06-29','SISTEMA'),(18,'Arrumadinho de Carne de Sol','Feijao verde, farofa na manteiga, vinagrete fresco e carne de sol frita em cubos.',32.00,0.00,5,35,NULL,1,'2026-06-29','SISTEMA'),(19,'Escondidinho de Macaxeira','Creme cremoso de macaxeira gratinado com queijo coalho e carne de sol desfiada.',26.50,2.50,5,45,NULL,1,'2026-06-29','SISTEMA'),(20,'Cartola Tradicional','Banana frita na chapa com queijo coalho derretido, polvilhado com acucar e canela.',14.00,0.00,6,50,NULL,1,'2026-06-29','SISTEMA'),(21,'Bolo de Rolo (Fatia)','Fatia de bolo de rolo tradicional pernambucano, recheado com goiabada cremosa.',8.00,0.00,6,60,NULL,1,'2026-06-29','SISTEMA'),(22,'Pudim de Rapadura','Pudim de leite condensado sedoso com calda especial de rapadura derretida.',10.00,0.00,6,40,NULL,1,'2026-06-29','SISTEMA');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_media`
--

DROP TABLE IF EXISTS `item_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_media` (
  `id_item` bigint NOT NULL,
  `seq` int NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `criado_em` date DEFAULT NULL,
  `ideusu` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_item`,`seq`),
  CONSTRAINT `fk_itemmedia_item` FOREIGN KEY (`id_item`) REFERENCES `item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_media`
--

LOCK TABLES `item_media` WRITE;
/*!40000 ALTER TABLE `item_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `name` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_usuario` bigint DEFAULT NULL,
  PRIMARY KEY (`name`,`password`),
  KEY `fk_login_usuario` (`id_usuario`),
  CONSTRAINT `fk_login_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('lucasls','$2a$10$R6PHZJv2qbYB.7DWnd6qnOqXkEwpRtQ5d2xJdjcXfKa7NBZoVDwfq',1),('Usuariot','$2a$10$k776plCEZFakGC3N7TvKk.AVtSO/HPE2bWMc5E8sjdCC1omzAN3EG',2);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `estado` int DEFAULT NULL,
  `observacao` varchar(255) DEFAULT NULL,
  `gorgeta` decimal(10,2) DEFAULT NULL,
  `mesa` int DEFAULT NULL,
  `id_empresa` bigint DEFAULT NULL,
  `criado_em` date DEFAULT NULL,
  `horario` time DEFAULT NULL,
  `ideusu` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pedido_empresa` (`id_empresa`),
  CONSTRAINT `fk_pedido_empresa` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,1,'',0.00,1,NULL,'2026-06-29','21:10:30','lucasls'),(2,2,'Quero uma tapioca liet',10.00,4,NULL,'2026-06-29','22:05:03','lucasls');
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_item`
--

DROP TABLE IF EXISTS `pedido_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido_item` (
  `id_pedido` bigint NOT NULL,
  `id_item` bigint NOT NULL,
  `seq` bigint NOT NULL,
  `quantidade` int DEFAULT NULL,
  `estado` int NOT NULL,
  `criado_em` date DEFAULT NULL,
  `ideusu` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_pedido`,`id_item`,`seq`),
  KEY `fk_pedidoitem_item` (`id_item`),
  CONSTRAINT `fk_pedidoitem_item` FOREIGN KEY (`id_item`) REFERENCES `item` (`id`),
  CONSTRAINT `fk_pedidoitem_pedido` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_item`
--

LOCK TABLES `pedido_item` WRITE;
/*!40000 ALTER TABLE `pedido_item` DISABLE KEYS */;
INSERT INTO `pedido_item` VALUES (1,2,1,4,1,'2026-06-29','lucasls'),(1,19,1,1,2,'2026-06-29','lucasls'),(2,1,1,1,3,'2026-06-29','lucasls');
/*!40000 ALTER TABLE `pedido_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `descricao` varchar(20) DEFAULT NULL,
  `ativo` tinyint DEFAULT NULL,
  `criado_em` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (1,'Administrador',1,'2026-03-02'),(2,'Cozinha',1,'2026-03-02'),(3,'Atendente',1,'2026-03-02'),(4,'Gerente',1,'2026-03-02');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restricao`
--

DROP TABLE IF EXISTS `restricao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restricao` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `descricao` varchar(25) DEFAULT NULL,
  `ativo` tinyint DEFAULT NULL,
  `criado_em` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `descricao_UNIQUE` (`descricao`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restricao`
--

LOCK TABLES `restricao` WRITE;
/*!40000 ALTER TABLE `restricao` DISABLE KEYS */;
INSERT INTO `restricao` VALUES (2,'Editar Produtos',1,'2026-03-02'),(3,'Excluir Produtos',1,'2026-03-02'),(4,'Importar/Exportar Excel',1,'2026-03-02'),(5,'Gerenciar Usuários',1,'2026-03-02'),(6,'Editar Categoria',1,'2026-03-02'),(7,'Excluir Categoria',1,'2026-03-02');
/*!40000 ALTER TABLE `restricao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restricao_perfil`
--

DROP TABLE IF EXISTS `restricao_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restricao_perfil` (
  `id_perfil` bigint NOT NULL,
  `id_restricao` bigint NOT NULL,
  `ativo` tinyint DEFAULT NULL,
  `criado_em` date DEFAULT NULL,
  PRIMARY KEY (`id_perfil`,`id_restricao`),
  KEY `fk_restricaoperfil_restricao` (`id_restricao`),
  CONSTRAINT `fk_restricaoperfil_restricao` FOREIGN KEY (`id_restricao`) REFERENCES `restricao` (`id`),
  CONSTRAINT `fk_restricaoperfil_usuario` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restricao_perfil`
--

LOCK TABLES `restricao_perfil` WRITE;
/*!40000 ALTER TABLE `restricao_perfil` DISABLE KEYS */;
INSERT INTO `restricao_perfil` VALUES (1,2,1,'2026-03-02'),(1,3,1,'2026-03-02'),(1,4,1,'2026-03-02'),(1,5,1,'2026-03-02'),(1,6,1,'2026-03-02'),(1,7,1,'2026-03-02'),(2,4,1,'2026-03-02'),(2,5,0,'2026-04-07'),(3,2,0,'2026-04-05'),(3,3,0,'2026-04-07'),(3,4,1,'2026-03-02'),(3,6,0,'2026-04-05'),(4,2,1,'2026-03-02'),(4,4,1,'2026-03-02'),(4,6,1,'2026-03-02'),(4,7,1,'2026-03-02');
/*!40000 ALTER TABLE `restricao_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restricao_tela`
--

DROP TABLE IF EXISTS `restricao_tela`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restricao_tela` (
  `id_perfil` bigint NOT NULL,
  `id_tela` bigint NOT NULL,
  `ativo` tinyint DEFAULT NULL,
  `criado_em` date DEFAULT NULL,
  PRIMARY KEY (`id_perfil`,`id_tela`),
  KEY `fk_restricaotela_tela` (`id_tela`),
  CONSTRAINT `fk_restricaotela_perfil` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`id`),
  CONSTRAINT `fk_restricaotela_tela` FOREIGN KEY (`id_tela`) REFERENCES `form_tela` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restricao_tela`
--

LOCK TABLES `restricao_tela` WRITE;
/*!40000 ALTER TABLE `restricao_tela` DISABLE KEYS */;
INSERT INTO `restricao_tela` VALUES (2,4,1,'2026-03-03'),(2,5,1,'2026-03-03'),(2,6,1,'2026-03-03'),(3,4,1,'2026-03-03'),(3,5,1,'2026-03-03'),(3,6,1,'2026-03-03');
/*!40000 ALTER TABLE `restricao_tela` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefone` varchar(13) NOT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `id_empresa` bigint DEFAULT NULL,
  `criado_em` date DEFAULT NULL,
  `id_perfil` bigint DEFAULT NULL,
  `ideusu` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_usuario_perfil` (`id_perfil`),
  KEY `fk_usuario_empresa` (`id_empresa`),
  CONSTRAINT `fk_usuario_empresa` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`),
  CONSTRAINT `fk_usuario_perfil` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'lucas leocadio de souza','vanildo1511@gmail.com','44997067494',1,1,'2026-03-08',1,'LUCASSZ'),(2,'Usuario teste','teste@gmail.com.br','44997067494',1,1,'2026-03-16',3,'LUCASSZ');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_historico`
--

DROP TABLE IF EXISTS `usuario_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_historico` (
  `id_usuario` bigint DEFAULT NULL,
  `seq` bigint DEFAULT NULL,
  `label` varchar(75) DEFAULT NULL,
  `criado_em` date DEFAULT NULL,
  `horario` time DEFAULT NULL,
  KEY `fk_usuariohistorico_usuario` (`id_usuario`),
  CONSTRAINT `fk_usuariohistorico_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_historico`
--

LOCK TABLES `usuario_historico` WRITE;
/*!40000 ALTER TABLE `usuario_historico` DISABLE KEYS */;
INSERT INTO `usuario_historico` VALUES (1,1,'Item \'Prato Vegano\' Desativado','2026-03-22',NULL),(1,2,'Item \'Prato Vegano\' Ativado','2026-03-22',NULL),(1,3,'Item \'Suco de Laranja\' Desativado','2026-03-24','21:01:17'),(1,4,'Item \'Suco de Laranja\' Ativado','2026-03-24','21:01:18'),(1,5,'Categoria \'Importada\' Cadastrado','2026-03-28','17:28:41'),(1,6,'Item \'Macarrao com cheddar e Baicon\' Cadastrado','2026-03-28','17:28:41'),(1,7,'Item \'Hamburguer Artesanal\' Cadastrado','2026-03-28','17:28:41'),(1,8,'Item \'X-Bacon\' Cadastrado','2026-03-28','17:28:41'),(1,9,'Item \'X-Salada\' Cadastrado','2026-03-28','17:28:41'),(1,10,'Item \'X-Tudo\' Cadastrado','2026-03-28','17:28:41'),(1,11,'Item \'Batata Frita Pequena\' Cadastrado','2026-03-28','17:28:41'),(1,12,'Item \'Batata Frita Grande\' Cadastrado','2026-03-28','17:28:41'),(1,13,'Item \'Batata com Cheddar e Bacon\' Cadastrado','2026-03-28','17:28:41'),(1,14,'Item \'Pizza Calabresa\' Atualizado','2026-03-28','17:28:41'),(1,15,'Item \'Pizza Calabresa\' Desativado','2026-03-28','17:28:41'),(1,16,'Item \'Pizza Marguerita\' Atualizado','2026-03-28','17:28:41'),(1,17,'Item \'Pizza Marguerita\' Desativado','2026-03-28','17:28:41'),(1,18,'Item \'Pizza Frango com Catupiry\' Atualizado','2026-03-28','17:28:41'),(1,19,'Item \'Pizza Frango com Catupiry\' Desativado','2026-03-28','17:28:41'),(1,20,'Item \'Refrigerante Lata\' Atualizado','2026-03-28','17:28:41'),(1,21,'Item \'Refrigerante Lata\' Desativado','2026-03-28','17:28:41'),(1,22,'Item \'Refrigerante 2L\' Atualizado','2026-03-28','17:28:41'),(1,23,'Item \'Refrigerante 2L\' Desativado','2026-03-28','17:28:41'),(1,24,'Item \'Suco Natural Laranja\' Atualizado','2026-03-28','17:28:41'),(1,25,'Item \'Suco Natural Laranja\' Desativado','2026-03-28','17:28:41'),(1,26,'Item \'Suco Natural Maracuja\' Atualizado','2026-03-28','17:28:41'),(1,27,'Item \'Suco Natural Maracuja\' Desativado','2026-03-28','17:28:41'),(1,28,'Item \'Agua Mineral\' Atualizado','2026-03-28','17:28:41'),(1,29,'Item \'Agua Mineral\' Desativado','2026-03-28','17:28:41'),(1,30,'Item \'Cerveja Long Neck\' Cadastrado','2026-03-28','17:28:41'),(1,31,'Item \'Cerveja Long Neck\' Desativado','2026-03-28','17:28:41'),(1,32,'Item \'Cerveja Lata\' Cadastrado','2026-03-28','17:28:41'),(1,33,'Item \'Cerveja Lata\' Desativado','2026-03-28','17:28:41'),(1,34,'Item \'Prato Feito Frango\' Cadastrado','2026-03-28','17:28:41'),(1,35,'Item \'Prato Feito Frango\' Desativado','2026-03-28','17:28:41'),(1,36,'Item \'Prato Feito Carne\' Cadastrado','2026-03-28','17:28:41'),(1,37,'Item \'Prato Feito Carne\' Desativado','2026-03-28','17:28:41'),(1,38,'Item \'Prato Feito Peixe\' Cadastrado','2026-03-28','17:28:41'),(1,39,'Item \'Prato Feito Peixe\' Desativado','2026-03-28','17:28:41'),(1,40,'Item \'Lasanha Bolonhesa\' Cadastrado','2026-03-28','17:28:41'),(1,41,'Item \'Lasanha Bolonhesa\' Desativado','2026-03-28','17:28:41'),(1,42,'Item \'Lasanha Frango\' Cadastrado','2026-03-28','17:28:41'),(1,43,'Item \'Lasanha Frango\' Desativado','2026-03-28','17:28:41'),(1,44,'Item \'Esfiha Carne\' Cadastrado','2026-03-28','17:28:41'),(1,45,'Item \'Esfiha Carne\' Desativado','2026-03-28','17:28:41'),(1,46,'Item \'Esfiha Frango\' Cadastrado','2026-03-28','17:28:41'),(1,47,'Item \'Esfiha Frango\' Desativado','2026-03-28','17:28:41'),(1,48,'Item \'Coxinha\' Cadastrado','2026-03-28','17:28:41'),(1,49,'Item \'Coxinha\' Desativado','2026-03-28','17:28:41'),(1,50,'Item \'Kibe\' Cadastrado','2026-03-28','17:28:41'),(1,51,'Item \'Kibe\' Desativado','2026-03-28','17:28:41'),(1,52,'Item \'Pastel Carne\' Cadastrado','2026-03-28','17:28:41'),(1,53,'Item \'Pastel Carne\' Desativado','2026-03-28','17:28:41'),(1,54,'Item \'Pastel Queijo\' Cadastrado','2026-03-28','17:28:41'),(1,55,'Item \'Pastel Queijo\' Desativado','2026-03-28','17:28:41'),(1,56,'Item \'Pudim\' Cadastrado','2026-03-28','17:28:41'),(1,57,'Item \'Pudim\' Desativado','2026-03-28','17:28:41'),(1,58,'Item \'Mousse Chocolate\' Cadastrado','2026-03-28','17:28:41'),(1,59,'Item \'Mousse Chocolate\' Desativado','2026-03-28','17:28:41'),(1,60,'Item \'Macarrao com cheddar e Baicon\' Cadastrado','2026-03-28','17:40:08'),(1,61,'Item \'Hamburguer Artesanal\' Cadastrado','2026-03-28','17:40:08'),(1,62,'Item \'X-Bacon\' Cadastrado','2026-03-28','17:40:08'),(1,63,'Item \'X-Salada\' Cadastrado','2026-03-28','17:40:08'),(1,64,'Item \'X-Tudo\' Cadastrado','2026-03-28','17:40:08'),(1,65,'Item \'Batata Frita Pequena\' Cadastrado','2026-03-28','17:40:08'),(1,66,'Item \'Batata Frita Grande\' Cadastrado','2026-03-28','17:40:08'),(1,67,'Item \'Batata com Cheddar e Bacon\' Cadastrado','2026-03-28','17:40:08'),(1,68,'Item \'Pizza Calabresa\' Atualizado','2026-03-28','17:40:08'),(1,69,'Item \'Pizza Calabresa\' Ativado','2026-03-28','17:40:08'),(1,70,'Item \'Pizza Marguerita\' Atualizado','2026-03-28','17:40:08'),(1,71,'Item \'Pizza Marguerita\' Ativado','2026-03-28','17:40:08'),(1,72,'Item \'Pizza Frango com Catupiry\' Atualizado','2026-03-28','17:40:08'),(1,73,'Item \'Pizza Frango com Catupiry\' Ativado','2026-03-28','17:40:08'),(1,74,'Item \'Refrigerante Lata\' Atualizado','2026-03-28','17:40:08'),(1,75,'Item \'Refrigerante Lata\' Ativado','2026-03-28','17:40:08'),(1,76,'Item \'Refrigerante 2L\' Atualizado','2026-03-28','17:40:08'),(1,77,'Item \'Refrigerante 2L\' Ativado','2026-03-28','17:40:08'),(1,78,'Item \'Suco Natural Laranja\' Atualizado','2026-03-28','17:40:09'),(1,79,'Item \'Suco Natural Laranja\' Ativado','2026-03-28','17:40:09'),(1,80,'Item \'Suco Natural Maracuja\' Atualizado','2026-03-28','17:40:09'),(1,81,'Item \'Suco Natural Maracuja\' Ativado','2026-03-28','17:40:09'),(1,82,'Item \'Agua Mineral\' Atualizado','2026-03-28','17:40:09'),(1,83,'Item \'Agua Mineral\' Ativado','2026-03-28','17:40:09'),(1,84,'Item \'Cerveja Long Neck\' Atualizado','2026-03-28','17:40:09'),(1,85,'Item \'Cerveja Long Neck\' Ativado','2026-03-28','17:40:09'),(1,86,'Item \'Cerveja Lata\' Atualizado','2026-03-28','17:40:09'),(1,87,'Item \'Cerveja Lata\' Ativado','2026-03-28','17:40:09'),(1,88,'Item \'Prato Feito Frango\' Atualizado','2026-03-28','17:40:09'),(1,89,'Item \'Prato Feito Frango\' Ativado','2026-03-28','17:40:09'),(1,90,'Item \'Prato Feito Carne\' Atualizado','2026-03-28','17:40:09'),(1,91,'Item \'Prato Feito Carne\' Ativado','2026-03-28','17:40:09'),(1,92,'Item \'Prato Feito Peixe\' Atualizado','2026-03-28','17:40:09'),(1,93,'Item \'Prato Feito Peixe\' Ativado','2026-03-28','17:40:09'),(1,94,'Item \'Lasanha Bolonhesa\' Atualizado','2026-03-28','17:40:09'),(1,95,'Item \'Lasanha Bolonhesa\' Ativado','2026-03-28','17:40:09'),(1,96,'Item \'Lasanha Frango\' Atualizado','2026-03-28','17:40:09'),(1,97,'Item \'Lasanha Frango\' Ativado','2026-03-28','17:40:09'),(1,98,'Item \'Esfiha Carne\' Atualizado','2026-03-28','17:40:09'),(1,99,'Item \'Esfiha Carne\' Ativado','2026-03-28','17:40:09'),(1,100,'Item \'Esfiha Frango\' Atualizado','2026-03-28','17:40:09'),(1,101,'Item \'Esfiha Frango\' Ativado','2026-03-28','17:40:09'),(1,102,'Item \'Coxinha\' Atualizado','2026-03-28','17:40:09'),(1,103,'Item \'Coxinha\' Ativado','2026-03-28','17:40:09'),(1,104,'Item \'Kibe\' Atualizado','2026-03-28','17:40:09'),(1,105,'Item \'Kibe\' Ativado','2026-03-28','17:40:09'),(1,106,'Item \'Pastel Carne\' Atualizado','2026-03-28','17:40:09'),(1,107,'Item \'Pastel Carne\' Ativado','2026-03-28','17:40:09'),(1,108,'Item \'Pastel Queijo\' Atualizado','2026-03-28','17:40:09'),(1,109,'Item \'Pastel Queijo\' Ativado','2026-03-28','17:40:09'),(1,110,'Item \'Pudim\' Atualizado','2026-03-28','17:40:09'),(1,111,'Item \'Pudim\' Ativado','2026-03-28','17:40:09'),(1,112,'Item \'Mousse Chocolate\' Atualizado','2026-03-28','17:40:09'),(1,113,'Item \'Mousse Chocolate\' Ativado','2026-03-28','17:40:09'),(1,114,'Categoria \'Importada\' Atualizado','2026-03-28','17:42:58'),(1,115,'Categoria \'Importada\' Atualizado','2026-03-28','17:43:14'),(1,116,'Item \'Macarrao com cheddar\' Atualizado','2026-03-28','17:51:13'),(1,117,'Item \'Macarrao com cheddar\' Ativado','2026-03-28','17:51:13'),(1,118,'Categoria \'Pratos\' Cadastrado','2026-03-28','18:02:04'),(1,119,'Item \'Macarrao com cheddar\' Atualizado','2026-03-28','18:02:04'),(1,120,'Item \'Macarrao com cheddar\' Ativado','2026-03-28','18:02:04'),(1,121,'Categoria \'Pratos\' Atualizado','2026-03-28','18:02:22'),(1,122,'Categoria \'Massas\' Cadastrado','2026-03-28','18:09:59'),(1,123,'Item \'Macarrao com cheddar e Baicon\' Cadastrado','2026-03-28','18:09:59'),(1,124,'Categoria \'Lanches\' Cadastrado','2026-03-28','18:09:59'),(1,125,'Item \'Hamburguer Artesanal\' Cadastrado','2026-03-28','18:09:59'),(1,126,'Categoria \'Lanches\' Cadastrado','2026-03-28','18:09:59'),(1,127,'Item \'X-Bacon\' Cadastrado','2026-03-28','18:09:59'),(1,128,'Categoria \'Lanches\' Cadastrado','2026-03-28','18:09:59'),(1,129,'Item \'X-Salada\' Cadastrado','2026-03-28','18:09:59'),(1,130,'Categoria \'Lanches\' Cadastrado','2026-03-28','18:09:59'),(1,131,'Item \'X-Tudo\' Cadastrado','2026-03-28','18:09:59'),(1,132,'Categoria \'Lanches\' Cadastrado','2026-03-28','18:09:59'),(1,133,'Item \'Batata Frita Pequena\' Cadastrado','2026-03-28','18:09:59'),(1,134,'Categoria \'Lanches\' Cadastrado','2026-03-28','18:09:59'),(1,135,'Item \'Batata Frita Grande\' Cadastrado','2026-03-28','18:09:59'),(1,136,'Categoria \'Lanches\' Cadastrado','2026-03-28','18:09:59'),(1,137,'Item \'Batata com Cheddar e Bacon\' Cadastrado','2026-03-28','18:09:59'),(1,138,'Categoria \'Pizzas\' Cadastrado','2026-03-28','18:09:59'),(1,139,'Item \'Pizza Calabresa\' Cadastrado','2026-03-28','18:10:00'),(1,140,'Categoria \'Pizzas\' Cadastrado','2026-03-28','18:10:00'),(1,141,'Item \'Pizza Marguerita\' Cadastrado','2026-03-28','18:10:00'),(1,142,'Categoria \'Pizzas\' Cadastrado','2026-03-28','18:10:00'),(1,143,'Item \'Pizza Frango com Catupiry\' Cadastrado','2026-03-28','18:10:00'),(1,144,'Categoria \'Bebidas\' Cadastrado','2026-03-28','18:10:00'),(1,145,'Item \'Refrigerante Lata\' Cadastrado','2026-03-28','18:10:00'),(1,146,'Item \'Refrigerante 2L\' Cadastrado','2026-03-28','18:10:00'),(1,147,'Item \'Suco Natural Laranja\' Cadastrado','2026-03-28','18:10:00'),(1,148,'Item \'Suco Natural Maracuja\' Cadastrado','2026-03-28','18:10:00'),(1,149,'Item \'Agua Mineral\' Cadastrado','2026-03-28','18:10:00'),(1,150,'Item \'Cerveja Long Neck\' Cadastrado','2026-03-28','18:10:00'),(1,151,'Item \'Cerveja Lata\' Cadastrado','2026-03-28','18:10:00'),(1,152,'Categoria \'Pratos\' Cadastrado','2026-03-28','18:10:00'),(1,153,'Item \'Prato Feito Frango\' Cadastrado','2026-03-28','18:10:00'),(1,154,'Item \'Prato Feito Carne\' Cadastrado','2026-03-28','18:10:00'),(1,155,'Item \'Prato Feito Peixe\' Cadastrado','2026-03-28','18:10:00'),(1,156,'Categoria \'Massas\' Cadastrado','2026-03-28','18:10:00'),(1,157,'Item \'Lasanha Bolonhesa\' Cadastrado','2026-03-28','18:10:00'),(1,158,'Categoria \'Massas\' Cadastrado','2026-03-28','18:10:00'),(1,159,'Item \'Lasanha Frango\' Cadastrado','2026-03-28','18:10:00'),(1,160,'Categoria \'Salgados\' Cadastrado','2026-03-28','18:10:00'),(1,161,'Item \'Esfiha Carne\' Cadastrado','2026-03-28','18:10:00'),(1,162,'Categoria \'Salgados\' Cadastrado','2026-03-28','18:10:00'),(1,163,'Item \'Esfiha Frango\' Cadastrado','2026-03-28','18:10:00'),(1,164,'Categoria \'Salgados\' Cadastrado','2026-03-28','18:10:00'),(1,165,'Item \'Coxinha\' Cadastrado','2026-03-28','18:10:00'),(1,166,'Categoria \'Salgados\' Cadastrado','2026-03-28','18:10:00'),(1,167,'Item \'Kibe\' Cadastrado','2026-03-28','18:10:00'),(1,168,'Categoria \'Salgados\' Cadastrado','2026-03-28','18:10:00'),(1,169,'Item \'Pastel Carne\' Cadastrado','2026-03-28','18:10:00'),(1,170,'Categoria \'Salgados\' Cadastrado','2026-03-28','18:10:00'),(1,171,'Item \'Pastel Queijo\' Cadastrado','2026-03-28','18:10:00'),(1,172,'Categoria \'Sobremesas\' Cadastrado','2026-03-28','18:10:00'),(1,173,'Item \'Pudim\' Cadastrado','2026-03-28','18:10:00'),(1,174,'Item \'Mousse Chocolate\' Cadastrado','2026-03-28','18:10:00'),(1,175,'Categoria \'Massas\' Cadastrado','2026-03-28','18:20:09'),(1,176,'Item \'Macarrao com cheddar e Baicon\' Cadastrado','2026-03-28','18:20:09'),(1,177,'Item \'Macarrao com cheddar e Baicon\' Ativado','2026-03-28','18:20:09'),(1,178,'Categoria \'Lanches\' Cadastrado','2026-03-28','18:20:09'),(1,179,'Item \'Hamburguer Artesanal\' Cadastrado','2026-03-28','18:20:09'),(1,180,'Item \'Hamburguer Artesanal\' Ativado','2026-03-28','18:20:09'),(1,181,'Item \'X-Bacon\' Cadastrado','2026-03-28','18:20:09'),(1,182,'Item \'X-Bacon\' Ativado','2026-03-28','18:20:09'),(1,183,'Item \'X-Salada\' Cadastrado','2026-03-28','18:20:09'),(1,184,'Item \'X-Salada\' Ativado','2026-03-28','18:20:09'),(1,185,'Item \'X-Tudo\' Cadastrado','2026-03-28','18:20:09'),(1,186,'Item \'X-Tudo\' Ativado','2026-03-28','18:20:09'),(1,187,'Item \'Batata Frita Pequena\' Cadastrado','2026-03-28','18:20:09'),(1,188,'Item \'Batata Frita Pequena\' Ativado','2026-03-28','18:20:09'),(1,189,'Item \'Batata Frita Grande\' Cadastrado','2026-03-28','18:20:09'),(1,190,'Item \'Batata Frita Grande\' Ativado','2026-03-28','18:20:09'),(1,191,'Item \'Batata com Cheddar e Bacon\' Cadastrado','2026-03-28','18:20:09'),(1,192,'Item \'Batata com Cheddar e Bacon\' Ativado','2026-03-28','18:20:09'),(1,193,'Categoria \'Pizzas\' Cadastrado','2026-03-28','18:20:09'),(1,194,'Item \'Pizza Calabresa\' Cadastrado','2026-03-28','18:20:09'),(1,195,'Item \'Pizza Calabresa\' Ativado','2026-03-28','18:20:09'),(1,196,'Item \'Pizza Marguerita\' Cadastrado','2026-03-28','18:20:09'),(1,197,'Item \'Pizza Marguerita\' Ativado','2026-03-28','18:20:10'),(1,198,'Item \'Pizza Frango com Catupiry\' Cadastrado','2026-03-28','18:20:10'),(1,199,'Item \'Pizza Frango com Catupiry\' Ativado','2026-03-28','18:20:10'),(1,200,'Categoria \'Bebidas\' Cadastrado','2026-03-28','18:20:10'),(1,201,'Item \'Refrigerante Lata\' Cadastrado','2026-03-28','18:20:10'),(1,202,'Item \'Refrigerante Lata\' Ativado','2026-03-28','18:20:10'),(1,203,'Item \'Refrigerante 2L\' Cadastrado','2026-03-28','18:20:10'),(1,204,'Item \'Refrigerante 2L\' Ativado','2026-03-28','18:20:10'),(1,205,'Item \'Suco Natural Laranja\' Cadastrado','2026-03-28','18:20:10'),(1,206,'Item \'Suco Natural Laranja\' Ativado','2026-03-28','18:20:10'),(1,207,'Item \'Suco Natural Maracuja\' Cadastrado','2026-03-28','18:20:10'),(1,208,'Item \'Suco Natural Maracuja\' Ativado','2026-03-28','18:20:10'),(1,209,'Item \'Agua Mineral\' Cadastrado','2026-03-28','18:20:10'),(1,210,'Item \'Agua Mineral\' Ativado','2026-03-28','18:20:10'),(1,211,'Item \'Cerveja Long Neck\' Cadastrado','2026-03-28','18:20:10'),(1,212,'Item \'Cerveja Long Neck\' Ativado','2026-03-28','18:20:10'),(1,213,'Item \'Cerveja Lata\' Cadastrado','2026-03-28','18:20:10'),(1,214,'Item \'Cerveja Lata\' Ativado','2026-03-28','18:20:10'),(1,215,'Categoria \'Pratos\' Cadastrado','2026-03-28','18:20:10'),(1,216,'Item \'Prato Feito Frango\' Cadastrado','2026-03-28','18:20:10'),(1,217,'Item \'Prato Feito Frango\' Ativado','2026-03-28','18:20:10'),(1,218,'Item \'Prato Feito Carne\' Cadastrado','2026-03-28','18:20:10'),(1,219,'Item \'Prato Feito Carne\' Ativado','2026-03-28','18:20:10'),(1,220,'Item \'Prato Feito Peixe\' Cadastrado','2026-03-28','18:20:10'),(1,221,'Item \'Prato Feito Peixe\' Ativado','2026-03-28','18:20:10'),(1,222,'Item \'Lasanha Bolonhesa\' Cadastrado','2026-03-28','18:20:10'),(1,223,'Item \'Lasanha Bolonhesa\' Ativado','2026-03-28','18:20:10'),(1,224,'Item \'Lasanha Frango\' Cadastrado','2026-03-28','18:20:10'),(1,225,'Item \'Lasanha Frango\' Ativado','2026-03-28','18:20:10'),(1,226,'Categoria \'Salgados\' Cadastrado','2026-03-28','18:20:10'),(1,227,'Item \'Esfiha Carne\' Cadastrado','2026-03-28','18:20:10'),(1,228,'Item \'Esfiha Carne\' Ativado','2026-03-28','18:20:10'),(1,229,'Item \'Esfiha Frango\' Cadastrado','2026-03-28','18:20:10'),(1,230,'Item \'Esfiha Frango\' Ativado','2026-03-28','18:20:10'),(1,231,'Item \'Coxinha\' Cadastrado','2026-03-28','18:20:10'),(1,232,'Item \'Coxinha\' Ativado','2026-03-28','18:20:10'),(1,233,'Item \'Kibe\' Cadastrado','2026-03-28','18:20:10'),(1,234,'Item \'Kibe\' Ativado','2026-03-28','18:20:10'),(1,235,'Item \'Pastel Carne\' Cadastrado','2026-03-28','18:20:10'),(1,236,'Item \'Pastel Carne\' Ativado','2026-03-28','18:20:10'),(1,237,'Item \'Pastel Queijo\' Cadastrado','2026-03-28','18:20:10'),(1,238,'Item \'Pastel Queijo\' Ativado','2026-03-28','18:20:10'),(1,239,'Categoria \'Sobremesas\' Cadastrado','2026-03-28','18:20:10'),(1,240,'Item \'Pudim\' Cadastrado','2026-03-28','18:20:10'),(1,241,'Item \'Pudim\' Ativado','2026-03-28','18:20:10'),(1,242,'Item \'Mousse Chocolate\' Cadastrado','2026-03-28','18:20:10'),(1,243,'Item \'Mousse Chocolate\' Ativado','2026-03-28','18:20:10'),(1,244,'Item \'teste estet\' Cadastrado','2026-03-28','18:23:31'),(1,245,'Item \'\' excluido','2026-03-28','18:23:45'),(1,246,'Item \'Mousse Chocolate\' Desativado','2026-03-28','18:24:13'),(1,247,'Item \'\' excluido','2026-03-28','18:24:23'),(1,248,'Item \'Pastel Queijo\' Desativado','2026-03-28','18:25:08'),(1,249,'Item \'Pastel Queijo\' Ativado','2026-03-28','18:25:12'),(1,250,'Item \'\' excluido','2026-03-28','18:25:22'),(1,251,'Item \'Mousse Chocolate\' Ativado','2026-03-28','18:31:52'),(1,252,'Item \'Kibe\' Desativado','2026-03-28','18:31:54'),(1,253,'Item \'Kibe\' Ativado','2026-03-28','18:31:55'),(1,254,'Item \'\' excluido','2026-03-28','18:31:59'),(1,255,'Item \'Macarrao com cheddar e Baicon\' Atualizado','2026-03-28','18:38:12'),(1,256,'Item \'Macarrao com cheddar e Baicon\' Ativado','2026-03-28','18:38:12'),(1,257,'Item \'Lasanha Frango\' Desativado','2026-03-29','15:26:28'),(1,258,'Item \'Lasanha Frango\' Ativado','2026-03-29','15:26:33'),(1,259,'Item \'Hamburguer Artesanal\' Desativado','2026-03-29','15:26:40'),(1,260,'Item \'Lasanha Bolonhesa\' Desativado','2026-03-30','19:57:13'),(1,261,'Item \'Lasanha Bolonhesa\' Ativado','2026-03-30','19:57:14'),(1,262,'Item \'Lasanha Bolonhesa\' Atualizado','2026-03-30','21:20:24'),(1,263,'Item \'Lasanha Frango\' Atualizado','2026-03-30','21:20:52'),(1,264,'Item \'Lasanha Bolonhesa\' Atualizado','2026-03-30','21:27:23'),(1,265,'Item \'Lasanha Bolonhesa\' Desativado','2026-03-30','21:27:23'),(1,266,'Item \'Lasanha Frango\' Atualizado','2026-03-30','21:27:23'),(1,267,'Item \'Lasanha Frango\' Desativado','2026-03-30','21:27:23'),(1,268,'Item \'Hamburguer Artesanal\' Atualizado','2026-03-30','21:27:23'),(1,269,'Item \'Hamburguer Artesanal\' Desativado','2026-03-30','21:27:23'),(1,270,'Item \'X-Bacon\' Atualizado','2026-03-30','21:27:23'),(1,271,'Item \'X-Bacon\' Desativado','2026-03-30','21:27:23'),(1,272,'Item \'X-Salada\' Atualizado','2026-03-30','21:27:23'),(1,273,'Item \'X-Salada\' Desativado','2026-03-30','21:27:23'),(1,274,'Item \'X-Tudo\' Atualizado','2026-03-30','21:27:23'),(1,275,'Item \'X-Tudo\' Desativado','2026-03-30','21:27:23'),(1,276,'Item \'Batata Frita Pequena\' Atualizado','2026-03-30','21:27:23'),(1,277,'Item \'Batata Frita Pequena\' Desativado','2026-03-30','21:27:23'),(1,278,'Item \'Batata Frita Grande\' Atualizado','2026-03-30','21:27:23'),(1,279,'Item \'Batata Frita Grande\' Desativado','2026-03-30','21:27:23'),(1,280,'Item \'Batata com Cheddar e Bacon\' Atualizado','2026-03-30','21:27:23'),(1,281,'Item \'Batata com Cheddar e Bacon\' Desativado','2026-03-30','21:27:23'),(1,282,'Item \'Pizza Calabresa\' Atualizado','2026-03-30','21:27:23'),(1,283,'Item \'Pizza Calabresa\' Desativado','2026-03-30','21:27:23'),(1,284,'Item \'Pizza Marguerita\' Atualizado','2026-03-30','21:27:23'),(1,285,'Item \'Pizza Marguerita\' Desativado','2026-03-30','21:27:23'),(1,286,'Item \'Pizza Frango com Catupiry\' Atualizado','2026-03-30','21:27:23'),(1,287,'Item \'Pizza Frango com Catupiry\' Desativado','2026-03-30','21:27:23'),(1,288,'Item \'Refrigerante Lata\' Atualizado','2026-03-30','21:27:23'),(1,289,'Item \'Refrigerante Lata\' Desativado','2026-03-30','21:27:23'),(1,290,'Item \'Refrigerante 2L\' Atualizado','2026-03-30','21:27:23'),(1,291,'Item \'Refrigerante 2L\' Desativado','2026-03-30','21:27:23'),(1,292,'Item \'Suco Natural Laranja\' Atualizado','2026-03-30','21:27:23'),(1,293,'Item \'Suco Natural Laranja\' Desativado','2026-03-30','21:27:23'),(1,294,'Item \'Suco Natural Maracuja\' Atualizado','2026-03-30','21:27:23'),(1,295,'Item \'Suco Natural Maracuja\' Desativado','2026-03-30','21:27:23'),(1,296,'Item \'Agua Mineral\' Atualizado','2026-03-30','21:27:23'),(1,297,'Item \'Agua Mineral\' Desativado','2026-03-30','21:27:24'),(1,298,'Item \'Cerveja Long Neck\' Atualizado','2026-03-30','21:27:24'),(1,299,'Item \'Cerveja Long Neck\' Desativado','2026-03-30','21:27:24'),(1,300,'Item \'Cerveja Lata\' Atualizado','2026-03-30','21:27:24'),(1,301,'Item \'Cerveja Lata\' Desativado','2026-03-30','21:27:24'),(1,302,'Item \'Macarrao com cheddar e Baicon\' Atualizado','2026-03-30','21:27:24'),(1,303,'Item \'Macarrao com cheddar e Baicon\' Desativado','2026-03-30','21:27:24'),(1,304,'Item \'Prato Feito Frango\' Atualizado','2026-03-30','21:27:24'),(1,305,'Item \'Prato Feito Frango\' Desativado','2026-03-30','21:27:24'),(1,306,'Item \'Prato Feito Carne\' Atualizado','2026-03-30','21:27:24'),(1,307,'Item \'Prato Feito Carne\' Desativado','2026-03-30','21:27:24'),(1,308,'Item \'Prato Feito Peixe\' Atualizado','2026-03-30','21:27:24'),(1,309,'Item \'Prato Feito Peixe\' Desativado','2026-03-30','21:27:24'),(1,310,'Item \'Esfiha Carne\' Atualizado','2026-03-30','21:27:24'),(1,311,'Item \'Esfiha Carne\' Desativado','2026-03-30','21:27:24'),(1,312,'Item \'Esfiha Frango\' Atualizado','2026-03-30','21:27:24'),(1,313,'Item \'Esfiha Frango\' Desativado','2026-03-30','21:27:24'),(1,314,'Item \'Coxinha\' Atualizado','2026-03-30','21:27:24'),(1,315,'Item \'Coxinha\' Desativado','2026-03-30','21:27:24'),(1,316,'Item \'Kibe\' Atualizado','2026-03-30','21:27:24'),(1,317,'Item \'Kibe\' Desativado','2026-03-30','21:27:24'),(1,318,'Item \'Mousse Chocolate\' Atualizado','2026-03-30','21:27:24'),(1,319,'Item \'Mousse Chocolate\' Desativado','2026-03-30','21:27:24'),(1,320,'Item \'Lasanha Bolonhesa\' Atualizado','2026-03-30','21:29:03'),(1,321,'Item \'Lasanha Bolonhesa\' Desativado','2026-03-30','21:29:03'),(1,322,'Item \'Lasanha Frango\' Atualizado','2026-03-30','21:29:03'),(1,323,'Item \'Lasanha Frango\' Desativado','2026-03-30','21:29:03'),(1,324,'Item \'Hamburguer Artesanal\' Atualizado','2026-03-30','21:29:03'),(1,325,'Item \'Hamburguer Artesanal\' Desativado','2026-03-30','21:29:03'),(1,326,'Item \'X-Bacon\' Atualizado','2026-03-30','21:29:03'),(1,327,'Item \'X-Bacon\' Desativado','2026-03-30','21:29:03'),(1,328,'Item \'X-Salada\' Atualizado','2026-03-30','21:29:03'),(1,329,'Item \'X-Salada\' Desativado','2026-03-30','21:29:03'),(1,330,'Item \'X-Tudo\' Atualizado','2026-03-30','21:29:03'),(1,331,'Item \'X-Tudo\' Desativado','2026-03-30','21:29:03'),(1,332,'Item \'Batata Frita Pequena\' Atualizado','2026-03-30','21:29:03'),(1,333,'Item \'Batata Frita Pequena\' Desativado','2026-03-30','21:29:03'),(1,334,'Item \'Batata Frita Grande\' Atualizado','2026-03-30','21:29:04'),(1,335,'Item \'Batata Frita Grande\' Desativado','2026-03-30','21:29:04'),(1,336,'Item \'Batata com Cheddar e Bacon\' Atualizado','2026-03-30','21:29:04'),(1,337,'Item \'Batata com Cheddar e Bacon\' Desativado','2026-03-30','21:29:04'),(1,338,'Item \'Pizza Calabresa\' Atualizado','2026-03-30','21:29:04'),(1,339,'Item \'Pizza Calabresa\' Desativado','2026-03-30','21:29:04'),(1,340,'Item \'Pizza Marguerita\' Atualizado','2026-03-30','21:29:04'),(1,341,'Item \'Pizza Marguerita\' Desativado','2026-03-30','21:29:04'),(1,342,'Item \'Pizza Frango com Catupiry\' Atualizado','2026-03-30','21:29:04'),(1,343,'Item \'Pizza Frango com Catupiry\' Desativado','2026-03-30','21:29:04'),(1,344,'Item \'Refrigerante Lata\' Atualizado','2026-03-30','21:29:04'),(1,345,'Item \'Refrigerante Lata\' Desativado','2026-03-30','21:29:04'),(1,346,'Item \'Refrigerante 2L\' Atualizado','2026-03-30','21:29:04'),(1,347,'Item \'Refrigerante 2L\' Desativado','2026-03-30','21:29:04'),(1,348,'Item \'Suco Natural Laranja\' Atualizado','2026-03-30','21:29:04'),(1,349,'Item \'Suco Natural Laranja\' Desativado','2026-03-30','21:29:04'),(1,350,'Item \'Suco Natural Maracuja\' Atualizado','2026-03-30','21:29:04'),(1,351,'Item \'Suco Natural Maracuja\' Desativado','2026-03-30','21:29:04'),(1,352,'Item \'Agua Mineral\' Atualizado','2026-03-30','21:29:04'),(1,353,'Item \'Agua Mineral\' Desativado','2026-03-30','21:29:04'),(1,354,'Item \'Cerveja Long Neck\' Atualizado','2026-03-30','21:29:04'),(1,355,'Item \'Cerveja Long Neck\' Desativado','2026-03-30','21:29:04'),(1,356,'Item \'Cerveja Lata\' Atualizado','2026-03-30','21:29:04'),(1,357,'Item \'Cerveja Lata\' Desativado','2026-03-30','21:29:04'),(1,358,'Item \'Macarrao com cheddar e Baicon\' Atualizado','2026-03-30','21:29:04'),(1,359,'Item \'Macarrao com cheddar e Baicon\' Desativado','2026-03-30','21:29:04'),(1,360,'Item \'Prato Feito Frango\' Atualizado','2026-03-30','21:29:04'),(1,361,'Item \'Prato Feito Frango\' Desativado','2026-03-30','21:29:04'),(1,362,'Item \'Prato Feito Carne\' Atualizado','2026-03-30','21:29:04'),(1,363,'Item \'Prato Feito Carne\' Desativado','2026-03-30','21:29:04'),(1,364,'Item \'Prato Feito Peixe\' Atualizado','2026-03-30','21:29:04'),(1,365,'Item \'Prato Feito Peixe\' Desativado','2026-03-30','21:29:04'),(1,366,'Item \'Esfiha Carne\' Atualizado','2026-03-30','21:29:04'),(1,367,'Item \'Esfiha Carne\' Desativado','2026-03-30','21:29:04'),(1,368,'Item \'Esfiha Frango\' Atualizado','2026-03-30','21:29:04'),(1,369,'Item \'Esfiha Frango\' Desativado','2026-03-30','21:29:04'),(1,370,'Item \'Coxinha\' Atualizado','2026-03-30','21:29:04'),(1,371,'Item \'Coxinha\' Desativado','2026-03-30','21:29:04'),(1,372,'Item \'Kibe\' Atualizado','2026-03-30','21:29:04'),(1,373,'Item \'Kibe\' Desativado','2026-03-30','21:29:04'),(1,374,'Item \'Mousse Chocolate\' Atualizado','2026-03-30','21:29:04'),(1,375,'Item \'Mousse Chocolate\' Desativado','2026-03-30','21:29:04'),(1,376,'Item \'Lasanha Bolonhesa\' Atualizado','2026-03-30','21:30:53'),(1,377,'Item \'Lasanha Bolonhesa\' Desativado','2026-03-30','21:30:53'),(1,378,'Item \'Lasanha Frango\' Atualizado','2026-03-30','21:30:53'),(1,379,'Item \'Lasanha Frango\' Desativado','2026-03-30','21:30:53'),(1,380,'Item \'Hamburguer Artesanal\' Atualizado','2026-03-30','21:30:53'),(1,381,'Item \'Hamburguer Artesanal\' Desativado','2026-03-30','21:30:53'),(1,382,'Item \'X-Bacon\' Atualizado','2026-03-30','21:30:53'),(1,383,'Item \'X-Bacon\' Desativado','2026-03-30','21:30:53'),(1,384,'Item \'X-Salada\' Atualizado','2026-03-30','21:30:53'),(1,385,'Item \'X-Salada\' Desativado','2026-03-30','21:30:53'),(1,386,'Item \'X-Tudo\' Atualizado','2026-03-30','21:30:53'),(1,387,'Item \'X-Tudo\' Desativado','2026-03-30','21:30:53'),(1,388,'Item \'Batata Frita Pequena\' Atualizado','2026-03-30','21:30:53'),(1,389,'Item \'Batata Frita Pequena\' Desativado','2026-03-30','21:30:53'),(1,390,'Item \'Batata Frita Grande\' Atualizado','2026-03-30','21:30:53'),(1,391,'Item \'Batata Frita Grande\' Desativado','2026-03-30','21:30:54'),(1,392,'Item \'Batata com Cheddar e Bacon\' Atualizado','2026-03-30','21:30:54'),(1,393,'Item \'Batata com Cheddar e Bacon\' Desativado','2026-03-30','21:30:54'),(1,394,'Item \'Pizza Calabresa\' Atualizado','2026-03-30','21:30:54'),(1,395,'Item \'Pizza Calabresa\' Desativado','2026-03-30','21:30:54'),(1,396,'Item \'Pizza Marguerita\' Atualizado','2026-03-30','21:30:54'),(1,397,'Item \'Pizza Marguerita\' Desativado','2026-03-30','21:30:54'),(1,398,'Item \'Pizza Frango com Catupiry\' Atualizado','2026-03-30','21:30:54'),(1,399,'Item \'Pizza Frango com Catupiry\' Desativado','2026-03-30','21:30:54'),(1,400,'Item \'Refrigerante Lata\' Atualizado','2026-03-30','21:30:54'),(1,401,'Item \'Refrigerante Lata\' Desativado','2026-03-30','21:30:54'),(1,402,'Item \'Refrigerante 2L\' Atualizado','2026-03-30','21:30:54'),(1,403,'Item \'Refrigerante 2L\' Desativado','2026-03-30','21:30:54'),(1,404,'Item \'Suco Natural Laranja\' Atualizado','2026-03-30','21:30:54'),(1,405,'Item \'Suco Natural Laranja\' Desativado','2026-03-30','21:30:54'),(1,406,'Item \'Suco Natural Maracuja\' Atualizado','2026-03-30','21:30:54'),(1,407,'Item \'Suco Natural Maracuja\' Desativado','2026-03-30','21:30:54'),(1,408,'Item \'Agua Mineral\' Atualizado','2026-03-30','21:30:54'),(1,409,'Item \'Agua Mineral\' Desativado','2026-03-30','21:30:54'),(1,410,'Item \'Cerveja Long Neck\' Atualizado','2026-03-30','21:30:54'),(1,411,'Item \'Cerveja Long Neck\' Desativado','2026-03-30','21:30:54'),(1,412,'Item \'Cerveja Lata\' Atualizado','2026-03-30','21:30:54'),(1,413,'Item \'Cerveja Lata\' Desativado','2026-03-30','21:30:54'),(1,414,'Item \'Macarrao com cheddar e Baicon\' Atualizado','2026-03-30','21:30:54'),(1,415,'Item \'Macarrao com cheddar e Baicon\' Desativado','2026-03-30','21:30:54'),(1,416,'Item \'Prato Feito Frango\' Atualizado','2026-03-30','21:30:54'),(1,417,'Item \'Prato Feito Frango\' Desativado','2026-03-30','21:30:54'),(1,418,'Item \'Prato Feito Carne\' Atualizado','2026-03-30','21:30:54'),(1,419,'Item \'Prato Feito Carne\' Desativado','2026-03-30','21:30:54'),(1,420,'Item \'Prato Feito Peixe\' Atualizado','2026-03-30','21:30:54'),(1,421,'Item \'Prato Feito Peixe\' Desativado','2026-03-30','21:30:54'),(1,422,'Item \'Esfiha Carne\' Atualizado','2026-03-30','21:30:54'),(1,423,'Item \'Esfiha Carne\' Desativado','2026-03-30','21:30:54'),(1,424,'Item \'Esfiha Frango\' Atualizado','2026-03-30','21:30:54'),(1,425,'Item \'Esfiha Frango\' Desativado','2026-03-30','21:30:54'),(1,426,'Item \'Coxinha\' Atualizado','2026-03-30','21:30:54'),(1,427,'Item \'Coxinha\' Desativado','2026-03-30','21:30:54'),(1,428,'Item \'Kibe\' Atualizado','2026-03-30','21:30:54'),(1,429,'Item \'Kibe\' Desativado','2026-03-30','21:30:54'),(1,430,'Item \'Mousse Chocolate\' Atualizado','2026-03-30','21:30:54'),(1,431,'Item \'Mousse Chocolate\' Desativado','2026-03-30','21:30:54'),(1,432,'Item \'Lasanha Bolonhesa\' Atualizado','2026-03-30','21:32:39'),(1,433,'Item \'Lasanha Bolonhesa\' Desativado','2026-03-30','21:32:39'),(1,434,'Item \'Lasanha Frango\' Atualizado','2026-03-30','21:32:39'),(1,435,'Item \'Lasanha Frango\' Desativado','2026-03-30','21:32:39'),(1,436,'Item \'Hamburguer Artesanal\' Atualizado','2026-03-30','21:32:39'),(1,437,'Item \'Hamburguer Artesanal\' Desativado','2026-03-30','21:32:39'),(1,438,'Item \'X-Bacon\' Atualizado','2026-03-30','21:32:39'),(1,439,'Item \'X-Bacon\' Desativado','2026-03-30','21:32:39'),(1,440,'Item \'X-Salada\' Atualizado','2026-03-30','21:32:39'),(1,441,'Item \'X-Salada\' Desativado','2026-03-30','21:32:39'),(1,442,'Item \'X-Tudo\' Atualizado','2026-03-30','21:32:39'),(1,443,'Item \'X-Tudo\' Desativado','2026-03-30','21:32:39'),(1,444,'Item \'Batata Frita Pequena\' Atualizado','2026-03-30','21:32:39'),(1,445,'Item \'Batata Frita Pequena\' Desativado','2026-03-30','21:32:39'),(1,446,'Item \'Batata Frita Grande\' Atualizado','2026-03-30','21:32:39'),(1,447,'Item \'Batata Frita Grande\' Desativado','2026-03-30','21:32:39'),(1,448,'Item \'Batata com Cheddar e Bacon\' Atualizado','2026-03-30','21:32:39'),(1,449,'Item \'Batata com Cheddar e Bacon\' Desativado','2026-03-30','21:32:39'),(1,450,'Item \'Pizza Calabresa\' Atualizado','2026-03-30','21:32:39'),(1,451,'Item \'Pizza Calabresa\' Desativado','2026-03-30','21:32:39'),(1,452,'Item \'Pizza Marguerita\' Atualizado','2026-03-30','21:32:39'),(1,453,'Item \'Pizza Marguerita\' Desativado','2026-03-30','21:32:39'),(1,454,'Item \'Pizza Frango com Catupiry\' Atualizado','2026-03-30','21:32:40'),(1,455,'Item \'Pizza Frango com Catupiry\' Desativado','2026-03-30','21:32:40'),(1,456,'Item \'Refrigerante Lata\' Atualizado','2026-03-30','21:32:40'),(1,457,'Item \'Refrigerante Lata\' Desativado','2026-03-30','21:32:40'),(1,458,'Item \'Refrigerante 2L\' Atualizado','2026-03-30','21:32:40'),(1,459,'Item \'Refrigerante 2L\' Desativado','2026-03-30','21:32:40'),(1,460,'Item \'Suco Natural Laranja\' Atualizado','2026-03-30','21:32:40'),(1,461,'Item \'Suco Natural Laranja\' Desativado','2026-03-30','21:32:40'),(1,462,'Item \'Suco Natural Maracuja\' Atualizado','2026-03-30','21:32:40'),(1,463,'Item \'Suco Natural Maracuja\' Desativado','2026-03-30','21:32:40'),(1,464,'Item \'Agua Mineral\' Atualizado','2026-03-30','21:32:40'),(1,465,'Item \'Agua Mineral\' Desativado','2026-03-30','21:32:40'),(1,466,'Item \'Cerveja Long Neck\' Atualizado','2026-03-30','21:32:40'),(1,467,'Item \'Cerveja Long Neck\' Desativado','2026-03-30','21:32:40'),(1,468,'Item \'Cerveja Lata\' Atualizado','2026-03-30','21:32:40'),(1,469,'Item \'Cerveja Lata\' Desativado','2026-03-30','21:32:40'),(1,470,'Item \'Macarrao com cheddar e Baicon\' Atualizado','2026-03-30','21:32:40'),(1,471,'Item \'Macarrao com cheddar e Baicon\' Desativado','2026-03-30','21:32:40'),(1,472,'Item \'Prato Feito Frango\' Atualizado','2026-03-30','21:32:40'),(1,473,'Item \'Prato Feito Frango\' Desativado','2026-03-30','21:32:40'),(1,474,'Item \'Prato Feito Carne\' Atualizado','2026-03-30','21:32:40'),(1,475,'Item \'Prato Feito Carne\' Desativado','2026-03-30','21:32:40'),(1,476,'Item \'Prato Feito Peixe\' Atualizado','2026-03-30','21:32:40'),(1,477,'Item \'Prato Feito Peixe\' Desativado','2026-03-30','21:32:40'),(1,478,'Item \'Esfiha Carne\' Atualizado','2026-03-30','21:32:40'),(1,479,'Item \'Esfiha Carne\' Desativado','2026-03-30','21:32:40'),(1,480,'Item \'Esfiha Frango\' Atualizado','2026-03-30','21:32:40'),(1,481,'Item \'Esfiha Frango\' Desativado','2026-03-30','21:32:40'),(1,482,'Item \'Coxinha\' Atualizado','2026-03-30','21:32:40'),(1,483,'Item \'Coxinha\' Desativado','2026-03-30','21:32:40'),(1,484,'Item \'Kibe\' Atualizado','2026-03-30','21:32:40'),(1,485,'Item \'Kibe\' Desativado','2026-03-30','21:32:40'),(1,486,'Item \'Mousse Chocolate\' Atualizado','2026-03-30','21:32:40'),(1,487,'Item \'Mousse Chocolate\' Desativado','2026-03-30','21:32:40'),(1,488,'Item \'Lasanha Bolonhesa\' Atualizado','2026-03-30','21:33:45'),(1,489,'Item \'Lasanha Bolonhesa\' Ativado','2026-03-30','21:33:45'),(1,490,'Item \'Lasanha Frango\' Atualizado','2026-03-30','21:33:45'),(1,491,'Item \'Lasanha Frango\' Ativado','2026-03-30','21:33:45'),(1,492,'Item \'Hamburguer Artesanal\' Atualizado','2026-03-30','21:33:45'),(1,493,'Item \'Hamburguer Artesanal\' Ativado','2026-03-30','21:33:45'),(1,494,'Item \'X-Bacon\' Atualizado','2026-03-30','21:33:45'),(1,495,'Item \'X-Bacon\' Ativado','2026-03-30','21:33:45'),(1,496,'Item \'X-Salada\' Atualizado','2026-03-30','21:33:45'),(1,497,'Item \'X-Salada\' Ativado','2026-03-30','21:33:45'),(1,498,'Item \'X-Tudo\' Atualizado','2026-03-30','21:33:45'),(1,499,'Item \'X-Tudo\' Ativado','2026-03-30','21:33:45'),(1,500,'Item \'Batata Frita Pequena\' Atualizado','2026-03-30','21:33:45'),(1,501,'Item \'Batata Frita Pequena\' Ativado','2026-03-30','21:33:45'),(1,502,'Item \'Batata Frita Grande\' Atualizado','2026-03-30','21:33:45'),(1,503,'Item \'Batata Frita Grande\' Ativado','2026-03-30','21:33:45'),(1,504,'Item \'Batata com Cheddar e Bacon\' Atualizado','2026-03-30','21:33:45'),(1,505,'Item \'Batata com Cheddar e Bacon\' Ativado','2026-03-30','21:33:45'),(1,506,'Item \'Pizza Calabresa\' Atualizado','2026-03-30','21:33:45'),(1,507,'Item \'Pizza Calabresa\' Ativado','2026-03-30','21:33:45'),(1,508,'Item \'Pizza Marguerita\' Atualizado','2026-03-30','21:33:45'),(1,509,'Item \'Pizza Marguerita\' Ativado','2026-03-30','21:33:45'),(1,510,'Item \'Pizza Frango com Catupiry\' Atualizado','2026-03-30','21:33:45'),(1,511,'Item \'Pizza Frango com Catupiry\' Ativado','2026-03-30','21:33:45'),(1,512,'Item \'Refrigerante Lata\' Atualizado','2026-03-30','21:33:45'),(1,513,'Item \'Refrigerante Lata\' Ativado','2026-03-30','21:33:45'),(1,514,'Item \'Refrigerante 2L\' Atualizado','2026-03-30','21:33:45'),(1,515,'Item \'Refrigerante 2L\' Ativado','2026-03-30','21:33:45'),(1,516,'Item \'Suco Natural Laranja\' Atualizado','2026-03-30','21:33:45'),(1,517,'Item \'Suco Natural Laranja\' Ativado','2026-03-30','21:33:45'),(1,518,'Item \'Suco Natural Maracuja\' Atualizado','2026-03-30','21:33:45'),(1,519,'Item \'Suco Natural Maracuja\' Ativado','2026-03-30','21:33:45'),(1,520,'Item \'Agua Mineral\' Atualizado','2026-03-30','21:33:45'),(1,521,'Item \'Agua Mineral\' Ativado','2026-03-30','21:33:45'),(1,522,'Item \'Cerveja Long Neck\' Atualizado','2026-03-30','21:33:45'),(1,523,'Item \'Cerveja Long Neck\' Ativado','2026-03-30','21:33:45'),(1,524,'Item \'Cerveja Lata\' Atualizado','2026-03-30','21:33:45'),(1,525,'Item \'Cerveja Lata\' Ativado','2026-03-30','21:33:45'),(1,526,'Item \'Macarrao com cheddar e Baicon\' Atualizado','2026-03-30','21:33:45'),(1,527,'Item \'Macarrao com cheddar e Baicon\' Ativado','2026-03-30','21:33:45'),(1,528,'Item \'Prato Feito Frango\' Atualizado','2026-03-30','21:33:45'),(1,529,'Item \'Prato Feito Frango\' Ativado','2026-03-30','21:33:45'),(1,530,'Item \'Prato Feito Carne\' Atualizado','2026-03-30','21:33:45'),(1,531,'Item \'Prato Feito Carne\' Ativado','2026-03-30','21:33:45'),(1,532,'Item \'Prato Feito Peixe\' Atualizado','2026-03-30','21:33:46'),(1,533,'Item \'Prato Feito Peixe\' Ativado','2026-03-30','21:33:46'),(1,534,'Item \'Esfiha Carne\' Atualizado','2026-03-30','21:33:46'),(1,535,'Item \'Esfiha Carne\' Ativado','2026-03-30','21:33:46'),(1,536,'Item \'Esfiha Frango\' Atualizado','2026-03-30','21:33:46'),(1,537,'Item \'Esfiha Frango\' Ativado','2026-03-30','21:33:46'),(1,538,'Item \'Coxinha\' Atualizado','2026-03-30','21:33:46'),(1,539,'Item \'Coxinha\' Ativado','2026-03-30','21:33:46'),(1,540,'Item \'Kibe\' Atualizado','2026-03-30','21:33:46'),(1,541,'Item \'Kibe\' Ativado','2026-03-30','21:33:46'),(1,542,'Item \'Mousse Chocolate\' Atualizado','2026-03-30','21:33:46'),(1,543,'Item \'Mousse Chocolate\' Ativado','2026-03-30','21:33:46'),(1,544,'Item \'Lasanha Bolonhesa\' Desativado','2026-03-31','21:34:17'),(1,545,'Item \'Lasanha Bolonhesa\' Ativado','2026-03-31','21:34:17'),(1,546,'Categoria \'Massas\' Atualizado','2026-04-05','13:35:37'),(1,547,'Categoria \'Lanches\' Atualizado','2026-04-05','13:39:05'),(1,548,'Categoria \'Pizzas\' Atualizado','2026-04-05','13:39:08'),(1,549,'Categoria \'Bebidas\' Atualizado','2026-04-05','13:39:16'),(1,550,'Categoria \'Pizzas\' Atualizado','2026-04-05','13:39:19'),(1,551,'Categoria \'Lanches\' Atualizado','2026-04-05','13:39:22'),(1,552,'Categoria \'Massas\' Atualizado','2026-04-05','13:39:25'),(1,553,'Categoria \'Pratos\' Atualizado','2026-04-05','13:39:30'),(1,554,'Categoria \'Salgados\' Atualizado','2026-04-05','13:39:41'),(1,555,'Categoria \'Sobremesas\' Atualizado','2026-04-05','13:39:50'),(1,556,'Permissão de perfil alterada','2026-04-05','14:30:23'),(1,557,'Permissão de perfil alterada','2026-04-05','14:30:24'),(1,558,'Permissão de perfil alterada','2026-04-05','14:30:24'),(1,559,'Permissão de perfil alterada','2026-04-05','14:30:25'),(1,560,'Permissão de perfil alterada','2026-04-05','14:30:29'),(1,561,'Permissão de perfil alterada','2026-04-05','14:30:30'),(1,562,'Restrição de tela alterada','2026-04-05','14:31:09'),(1,563,'Restrição de tela alterada','2026-04-05','14:31:40'),(1,564,'Permissão de perfil alterada','2026-04-07','21:07:07'),(1,565,'Permissão de perfil alterada','2026-04-07','21:07:07'),(1,566,'Permissão de perfil alterada','2026-04-07','21:07:09'),(1,567,'Permissão de perfil alterada','2026-04-07','21:07:10'),(1,568,'Permissão de perfil alterada','2026-04-07','21:07:14'),(1,569,'Permissão de perfil alterada','2026-04-07','21:07:15'),(1,570,'Permissão de perfil alterada','2026-04-07','21:07:15'),(1,571,'Permissão de perfil alterada','2026-04-07','21:07:16'),(1,572,'Restrição de tela alterada','2026-04-07','21:07:19'),(1,573,'Restrição de tela alterada','2026-04-07','21:07:20');
/*!40000 ALTER TABLE `usuario_historico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-29 22:29:11
