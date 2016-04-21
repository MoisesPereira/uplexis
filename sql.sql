CREATE DATABASE  IF NOT EXISTS `uplexis` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `uplexis`;
-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: uplexis
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.14.04.1

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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2016_04_20_001205_create_usuarios_table',1),('2016_04_20_001223_create_sintegras_table',1),('2016_04_20_015254_create_todos_table',2),('2016_04_20_201013_create_sintegras_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sintegras`
--

DROP TABLE IF EXISTS `sintegras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sintegras` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) NOT NULL,
  `cnpj` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resultado_json` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sintegras`
--

LOCK TABLES `sintegras` WRITE;
/*!40000 ALTER TABLE `sintegras` DISABLE KEYS */;
INSERT INTO `sintegras` VALUES (70,35,'31.804.115-0002-43','{\"&nbsp;CNPJ:\":\"&nbsp;31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual:\":\"&nbsp;082.254.28-1\",\"&nbsp;Raz\\u00e3o Social :\":\"&nbsp;CEREAIS DO NICO LTDA\",\"&nbsp;Logradouro:\":\"&nbsp;RUA IPE\",\"&nbsp;N\\u00famero:\":\"&nbsp;10\",\"&nbsp;Complemento:\":\"&nbsp;\",\"&nbsp;Bairro:\":\"&nbsp;MOVELAR\",\"&nbsp;Munic\\u00edpio:\":\"&nbsp;LINHARES\",\"&nbsp;UF:\":\"&nbsp;ES\",\"&nbsp;CEP:\":\"&nbsp;29906-120\",\"&nbsp;Telefone:\":\"&nbsp;        \",\"Atividade Econ\\u00f4mica:&nbsp;\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade:&nbsp;\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente:&nbsp;\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral:&nbsp;\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o:&nbsp;\":\"ORDINARIO\",\"Obrigatoriedade de EFD:&nbsp;\":\" \",\"In\\u00edcio de obrigatoriedade de EFD:&nbsp;\":\" \",\"Emitente de NFe desde:&nbsp;\":\"31\\/08\\/2009\"}','2016-04-21 23:21:08','2016-04-21 23:21:08'),(71,35,'31.804.115-0002-43','{\"&nbsp;CNPJ:\":\"&nbsp;31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual:\":\"&nbsp;082.254.28-1\",\"&nbsp;Raz\\u00e3o Social :\":\"&nbsp;CEREAIS DO NICO LTDA\",\"&nbsp;Logradouro:\":\"&nbsp;RUA IPE\",\"&nbsp;N\\u00famero:\":\"&nbsp;10\",\"&nbsp;Complemento:\":\"&nbsp;\",\"&nbsp;Bairro:\":\"&nbsp;MOVELAR\",\"&nbsp;Munic\\u00edpio:\":\"&nbsp;LINHARES\",\"&nbsp;UF:\":\"&nbsp;ES\",\"&nbsp;CEP:\":\"&nbsp;29906-120\",\"&nbsp;Telefone:\":\"&nbsp;        \",\"Atividade Econ\\u00f4mica:&nbsp;\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade:&nbsp;\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente:&nbsp;\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral:&nbsp;\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o:&nbsp;\":\"ORDINARIO\",\"Obrigatoriedade de EFD:&nbsp;\":\" \",\"In\\u00edcio de obrigatoriedade de EFD:&nbsp;\":\" \",\"Emitente de NFe desde:&nbsp;\":\"31\\/08\\/2009\"}','2016-04-21 23:22:19','2016-04-21 23:22:19'),(73,35,'31.804.115-0002-43','{\"&nbsp;CNPJ:\":\"&nbsp;31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual:\":\"&nbsp;082.254.28-1\",\"&nbsp;Raz\\u00e3o Social :\":\"&nbsp;CEREAIS DO NICO LTDA\",\"&nbsp;Logradouro:\":\"&nbsp;RUA IPE\",\"&nbsp;N\\u00famero:\":\"&nbsp;10\",\"&nbsp;Complemento:\":\"&nbsp;\",\"&nbsp;Bairro:\":\"&nbsp;MOVELAR\",\"&nbsp;Munic\\u00edpio:\":\"&nbsp;LINHARES\",\"&nbsp;UF:\":\"&nbsp;ES\",\"&nbsp;CEP:\":\"&nbsp;29906-120\",\"&nbsp;Telefone:\":\"&nbsp;        \",\"Atividade Econ\\u00f4mica:&nbsp;\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade:&nbsp;\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente:&nbsp;\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral:&nbsp;\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o:&nbsp;\":\"ORDINARIO\",\"Obrigatoriedade de EFD:&nbsp;\":\" \",\"In\\u00edcio de obrigatoriedade de EFD:&nbsp;\":\" \",\"Emitente de NFe desde:&nbsp;\":\"31\\/08\\/2009\"}','2016-04-21 23:28:06','2016-04-21 23:28:06'),(75,35,'31.804.115-0002-43','{\"&nbsp;CNPJ:\":\"&nbsp;31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual:\":\"&nbsp;082.254.28-1\",\"&nbsp;Raz\\u00e3o Social :\":\"&nbsp;CEREAIS DO NICO LTDA\",\"&nbsp;Logradouro:\":\"&nbsp;RUA IPE\",\"&nbsp;N\\u00famero:\":\"&nbsp;10\",\"&nbsp;Complemento:\":\"&nbsp;\",\"&nbsp;Bairro:\":\"&nbsp;MOVELAR\",\"&nbsp;Munic\\u00edpio:\":\"&nbsp;LINHARES\",\"&nbsp;UF:\":\"&nbsp;ES\",\"&nbsp;CEP:\":\"&nbsp;29906-120\",\"&nbsp;Telefone:\":\"&nbsp;        \",\"Atividade Econ\\u00f4mica:&nbsp;\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade:&nbsp;\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente:&nbsp;\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral:&nbsp;\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o:&nbsp;\":\"ORDINARIO\",\"Obrigatoriedade de EFD:&nbsp;\":\" \",\"In\\u00edcio de obrigatoriedade de EFD:&nbsp;\":\" \",\"Emitente de NFe desde:&nbsp;\":\"31\\/08\\/2009\"}','2016-04-21 23:29:14','2016-04-21 23:29:14'),(76,35,'31.804.115-0002-43','{\"&nbsp;CNPJ:\":\"&nbsp;31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual:\":\"&nbsp;082.254.28-1\",\"&nbsp;Raz\\u00e3o Social :\":\"&nbsp;CEREAIS DO NICO LTDA\",\"&nbsp;Logradouro:\":\"&nbsp;RUA IPE\",\"&nbsp;N\\u00famero:\":\"&nbsp;10\",\"&nbsp;Complemento:\":\"&nbsp;\",\"&nbsp;Bairro:\":\"&nbsp;MOVELAR\",\"&nbsp;Munic\\u00edpio:\":\"&nbsp;LINHARES\",\"&nbsp;UF:\":\"&nbsp;ES\",\"&nbsp;CEP:\":\"&nbsp;29906-120\",\"&nbsp;Telefone:\":\"&nbsp;        \",\"Atividade Econ\\u00f4mica:&nbsp;\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade:&nbsp;\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente:&nbsp;\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral:&nbsp;\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o:&nbsp;\":\"ORDINARIO\",\"Obrigatoriedade de EFD:&nbsp;\":\" \",\"In\\u00edcio de obrigatoriedade de EFD:&nbsp;\":\" \",\"Emitente de NFe desde:&nbsp;\":\"31\\/08\\/2009\"}','2016-04-21 23:33:29','2016-04-21 23:33:29'),(78,35,'31.804.115-0002-43','{\"&nbsp;CNPJ:\":\"&nbsp;31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual:\":\"&nbsp;082.254.28-1\",\"&nbsp;Raz\\u00e3o Social :\":\"&nbsp;CEREAIS DO NICO LTDA\",\"&nbsp;Logradouro:\":\"&nbsp;RUA IPE\",\"&nbsp;N\\u00famero:\":\"&nbsp;10\",\"&nbsp;Complemento:\":\"&nbsp;\",\"&nbsp;Bairro:\":\"&nbsp;MOVELAR\",\"&nbsp;Munic\\u00edpio:\":\"&nbsp;LINHARES\",\"&nbsp;UF:\":\"&nbsp;ES\",\"&nbsp;CEP:\":\"&nbsp;29906-120\",\"&nbsp;Telefone:\":\"&nbsp;        \",\"Atividade Econ\\u00f4mica:&nbsp;\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade:&nbsp;\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente:&nbsp;\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral:&nbsp;\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o:&nbsp;\":\"ORDINARIO\",\"Obrigatoriedade de EFD:&nbsp;\":\" \",\"In\\u00edcio de obrigatoriedade de EFD:&nbsp;\":\" \",\"Emitente de NFe desde:&nbsp;\":\"31\\/08\\/2009\"}','2016-04-21 23:40:20','2016-04-21 23:40:20'),(79,35,'31.804.115-0002-43','{\"&nbsp;CNPJ:\":\"&nbsp;31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual:\":\"&nbsp;082.254.28-1\",\"&nbsp;Raz\\u00e3o Social :\":\"&nbsp;CEREAIS DO NICO LTDA\",\"&nbsp;Logradouro:\":\"&nbsp;RUA IPE\",\"&nbsp;N\\u00famero:\":\"&nbsp;10\",\"&nbsp;Complemento:\":\"&nbsp;\",\"&nbsp;Bairro:\":\"&nbsp;MOVELAR\",\"&nbsp;Munic\\u00edpio:\":\"&nbsp;LINHARES\",\"&nbsp;UF:\":\"&nbsp;ES\",\"&nbsp;CEP:\":\"&nbsp;29906-120\",\"&nbsp;Telefone:\":\"&nbsp;        \",\"Atividade Econ\\u00f4mica:&nbsp;\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade:&nbsp;\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente:&nbsp;\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral:&nbsp;\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o:&nbsp;\":\"ORDINARIO\",\"Obrigatoriedade de EFD:&nbsp;\":\" \",\"In\\u00edcio de obrigatoriedade de EFD:&nbsp;\":\" \",\"Emitente de NFe desde:&nbsp;\":\"31\\/08\\/2009\"}','2016-04-21 23:44:47','2016-04-21 23:44:47'),(80,35,'31.804.115-0002-43','{\"&nbsp;CNPJ:\":\"&nbsp;31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual:\":\"&nbsp;082.254.28-1\",\"&nbsp;Raz\\u00e3o Social :\":\"&nbsp;CEREAIS DO NICO LTDA\",\"&nbsp;Logradouro:\":\"&nbsp;RUA IPE\",\"&nbsp;N\\u00famero:\":\"&nbsp;10\",\"&nbsp;Complemento:\":\"&nbsp;\",\"&nbsp;Bairro:\":\"&nbsp;MOVELAR\",\"&nbsp;Munic\\u00edpio:\":\"&nbsp;LINHARES\",\"&nbsp;UF:\":\"&nbsp;ES\",\"&nbsp;CEP:\":\"&nbsp;29906-120\",\"&nbsp;Telefone:\":\"&nbsp;        \",\"Atividade Econ\\u00f4mica:&nbsp;\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade:&nbsp;\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente:&nbsp;\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral:&nbsp;\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o:&nbsp;\":\"ORDINARIO\",\"Obrigatoriedade de EFD:&nbsp;\":\" \",\"In\\u00edcio de obrigatoriedade de EFD:&nbsp;\":\" \",\"Emitente de NFe desde:&nbsp;\":\"31\\/08\\/2009\"}','2016-04-21 23:45:00','2016-04-21 23:45:00'),(81,35,'31.804.115-0002-43','{\"&nbsp;CNPJ:\":\"&nbsp;31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual:\":\"&nbsp;082.254.28-1\",\"&nbsp;Raz\\u00e3o Social :\":\"&nbsp;CEREAIS DO NICO LTDA\",\"&nbsp;Logradouro:\":\"&nbsp;RUA IPE\",\"&nbsp;N\\u00famero:\":\"&nbsp;10\",\"&nbsp;Complemento:\":\"&nbsp;\",\"&nbsp;Bairro:\":\"&nbsp;MOVELAR\",\"&nbsp;Munic\\u00edpio:\":\"&nbsp;LINHARES\",\"&nbsp;UF:\":\"&nbsp;ES\",\"&nbsp;CEP:\":\"&nbsp;29906-120\",\"&nbsp;Telefone:\":\"&nbsp;        \",\"Atividade Econ\\u00f4mica:&nbsp;\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade:&nbsp;\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente:&nbsp;\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral:&nbsp;\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o:&nbsp;\":\"ORDINARIO\",\"Obrigatoriedade de EFD:&nbsp;\":\" \",\"In\\u00edcio de obrigatoriedade de EFD:&nbsp;\":\" \",\"Emitente de NFe desde:&nbsp;\":\"31\\/08\\/2009\"}','2016-04-21 23:45:17','2016-04-21 23:45:17'),(82,35,'31.804.115-0002-43','{\"&nbsp;CNPJ:\":\"&nbsp;31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual:\":\"&nbsp;082.254.28-1\",\"&nbsp;Raz\\u00e3o Social :\":\"&nbsp;CEREAIS DO NICO LTDA\",\"&nbsp;Logradouro:\":\"&nbsp;RUA IPE\",\"&nbsp;N\\u00famero:\":\"&nbsp;10\",\"&nbsp;Complemento:\":\"&nbsp;\",\"&nbsp;Bairro:\":\"&nbsp;MOVELAR\",\"&nbsp;Munic\\u00edpio:\":\"&nbsp;LINHARES\",\"&nbsp;UF:\":\"&nbsp;ES\",\"&nbsp;CEP:\":\"&nbsp;29906-120\",\"&nbsp;Telefone:\":\"&nbsp;        \",\"Atividade Econ\\u00f4mica:&nbsp;\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade:&nbsp;\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente:&nbsp;\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral:&nbsp;\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o:&nbsp;\":\"ORDINARIO\",\"Obrigatoriedade de EFD:&nbsp;\":\" \",\"In\\u00edcio de obrigatoriedade de EFD:&nbsp;\":\" \",\"Emitente de NFe desde:&nbsp;\":\"31\\/08\\/2009\"}','2016-04-21 23:45:46','2016-04-21 23:45:46'),(83,35,'31.804.115-0002-43','{\"&nbsp;CNPJ:\":\"&nbsp;31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual:\":\"&nbsp;082.254.28-1\",\"&nbsp;Raz\\u00e3o Social :\":\"&nbsp;CEREAIS DO NICO LTDA\",\"&nbsp;Logradouro:\":\"&nbsp;RUA IPE\",\"&nbsp;N\\u00famero:\":\"&nbsp;10\",\"&nbsp;Complemento:\":\"&nbsp;\",\"&nbsp;Bairro:\":\"&nbsp;MOVELAR\",\"&nbsp;Munic\\u00edpio:\":\"&nbsp;LINHARES\",\"&nbsp;UF:\":\"&nbsp;ES\",\"&nbsp;CEP:\":\"&nbsp;29906-120\",\"&nbsp;Telefone:\":\"&nbsp;        \",\"Atividade Econ\\u00f4mica:&nbsp;\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade:&nbsp;\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente:&nbsp;\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral:&nbsp;\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o:&nbsp;\":\"ORDINARIO\",\"Obrigatoriedade de EFD:&nbsp;\":\" \",\"In\\u00edcio de obrigatoriedade de EFD:&nbsp;\":\" \",\"Emitente de NFe desde:&nbsp;\":\"31\\/08\\/2009\"}','2016-04-21 23:48:10','2016-04-21 23:48:10'),(84,35,'31.804.115-0002-43','{\"CNPJ\":\"&nbsp;31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual:\":\"&nbsp;082.254.28-1\",\"&nbsp;Raz\\u00e3o Social :\":\"&nbsp;CEREAIS DO NICO LTDA\",\"&nbsp;Logradouro:\":\"&nbsp;RUA IPE\",\"&nbsp;N\\u00famero:\":\"&nbsp;10\",\"&nbsp;Complemento:\":\"&nbsp;\",\"&nbsp;Bairro:\":\"&nbsp;MOVELAR\",\"&nbsp;Munic\\u00edpio:\":\"&nbsp;LINHARES\",\"&nbsp;UF:\":\"&nbsp;ES\",\"&nbsp;CEP:\":\"&nbsp;29906-120\",\"&nbsp;Telefone:\":\"&nbsp;        \",\"Atividade Econ\\u00f4mica:&nbsp;\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade:&nbsp;\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente:&nbsp;\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral:&nbsp;\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o:&nbsp;\":\"ORDINARIO\",\"Obrigatoriedade de EFD:&nbsp;\":\" \",\"In\\u00edcio de obrigatoriedade de EFD:&nbsp;\":\" \",\"Emitente de NFe desde:&nbsp;\":\"31\\/08\\/2009\"}','2016-04-21 23:53:59','2016-04-21 23:53:59'),(85,35,'31.804.115-0002-43','{\"CNPJ\":\"&nbsp;31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual:\":\"&nbsp;082.254.28-1\",\"&nbsp;Raz\\u00e3o Social :\":\"&nbsp;CEREAIS DO NICO LTDA\",\"&nbsp;Logradouro:\":\"&nbsp;RUA IPE\",\"&nbsp;N\\u00famero:\":\"&nbsp;10\",\"&nbsp;Complemento:\":\"&nbsp;\",\"&nbsp;Bairro:\":\"&nbsp;MOVELAR\",\"&nbsp;Munic\\u00edpio:\":\"&nbsp;LINHARES\",\"&nbsp;UF:\":\"&nbsp;ES\",\"&nbsp;CEP:\":\"&nbsp;29906-120\",\"&nbsp;Telefone:\":\"&nbsp;        \",\"Atividade Econ\\u00f4mica:&nbsp;\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade:&nbsp;\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente:&nbsp;\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral:&nbsp;\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o:&nbsp;\":\"ORDINARIO\",\"Obrigatoriedade de EFD:&nbsp;\":\" \",\"In\\u00edcio de obrigatoriedade de EFD:&nbsp;\":\" \",\"Emitente de NFe desde:&nbsp;\":\"31\\/08\\/2009\"}','2016-04-21 23:54:12','2016-04-21 23:54:12'),(86,35,'31.804.115-0002-43','{\"CNPJ\":\"31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual\":\"082.254.28-1\",\"Raz\\u00e3o Social \":\"CEREAIS DO NICO LTDA\",\"Logradouro\":\"RUA IPE\",\"N\\u00famero\":\"10\",\"Complemento\":\"\",\"Bairro\":\"MOVELAR\",\"Munic\\u00edpio\":\"LINHARES\",\"UF\":\"ES\",\"CEP\":\"29906-120\",\"Telefone\":\"        \",\"Atividade Econ\\u00f4mica\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o\":\"ORDINARIO\",\"Obrigatoriedade de EFD\":\" \",\"In\\u00edcio de obrigatoriedade de EFD\":\" \",\"Emitente de NFe desde\":\"31\\/08\\/2009\"}','2016-04-22 00:06:57','2016-04-22 00:06:57'),(87,35,'31.804.115-0002-43','{\"CNPJ\":\"31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual\":\"082.254.28-1\",\"Raz\\u00e3o Social \":\"CEREAIS DO NICO LTDA\",\"Logradouro\":\"RUA IPE\",\"N\\u00famero\":\"10\",\"Complemento\":\"\",\"Bairro\":\"MOVELAR\",\"Munic\\u00edpio\":\"LINHARES\",\"UF\":\"ES\",\"CEP\":\"29906-120\",\"Telefone\":\"        \",\"Atividade Econ\\u00f4mica\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o\":\"ORDINARIO\",\"Obrigatoriedade de EFD\":\" \",\"In\\u00edcio de obrigatoriedade de EFD\":\" \",\"Emitente de NFe desde\":\"31\\/08\\/2009\"}','2016-04-22 00:07:21','2016-04-22 00:07:21'),(89,35,'31.804.115-0002-43','{\"CNPJ\":\"31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual\":\"082.254.28-1\",\"Raz\\u00e3o Social \":\"CEREAIS DO NICO LTDA\",\"Logradouro\":\"RUA IPE\",\"N\\u00famero\":\"10\",\"Complemento\":\"\",\"Bairro\":\"MOVELAR\",\"Munic\\u00edpio\":\"LINHARES\",\"UF\":\"ES\",\"CEP\":\"29906-120\",\"Telefone\":\"        \",\"Atividade Econ\\u00f4mica\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o\":\"ORDINARIO\",\"Obrigatoriedade de EFD\":\" \",\"In\\u00edcio de obrigatoriedade de EFD\":\" \",\"Emitente de NFe desde\":\"31\\/08\\/2009\"}','2016-04-22 00:08:01','2016-04-22 00:08:01'),(90,35,'31.804.115-000243','{\"CNPJ\":\"31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual\":\"082.254.28-1\",\"Raz\\u00e3o Social \":\"CEREAIS DO NICO LTDA\",\"Logradouro\":\"RUA IPE\",\"N\\u00famero\":\"10\",\"Complemento\":\"\",\"Bairro\":\"MOVELAR\",\"Munic\\u00edpio\":\"LINHARES\",\"UF\":\"ES\",\"CEP\":\"29906-120\",\"Telefone\":\"        \",\"Atividade Econ\\u00f4mica\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o\":\"ORDINARIO\",\"Obrigatoriedade de EFD\":\" \",\"In\\u00edcio de obrigatoriedade de EFD\":\" \",\"Emitente de NFe desde\":\"31\\/08\\/2009\"}','2016-04-22 00:09:18','2016-04-22 00:09:18'),(91,35,'31.804.115-0002-43','{\"CNPJ\":\"31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual\":\"082.254.28-1\",\"Raz\\u00e3o Social \":\"CEREAIS DO NICO LTDA\",\"Logradouro\":\"RUA IPE\",\"N\\u00famero\":\"10\",\"Complemento\":\"\",\"Bairro\":\"MOVELAR\",\"Munic\\u00edpio\":\"LINHARES\",\"UF\":\"ES\",\"CEP\":\"29906-120\",\"Telefone\":\"        \",\"Atividade Econ\\u00f4mica\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o\":\"ORDINARIO\",\"Obrigatoriedade de EFD\":\" \",\"In\\u00edcio de obrigatoriedade de EFD\":\" \",\"Emitente de NFe desde\":\"31\\/08\\/2009\"}','2016-04-22 00:09:31','2016-04-22 00:09:31'),(92,35,'31.804.115-0002-43','{\"CNPJ\":\"31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual\":\"082.254.28-1\",\"Raz\\u00e3o Social \":\"CEREAIS DO NICO LTDA\",\"Logradouro\":\"RUA IPE\",\"N\\u00famero\":\"10\",\"Complemento\":\"\",\"Bairro\":\"MOVELAR\",\"Munic\\u00edpio\":\"LINHARES\",\"UF\":\"ES\",\"CEP\":\"29906-120\",\"Telefone\":\"        \",\"Atividade Econ\\u00f4mica\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o\":\"ORDINARIO\",\"Obrigatoriedade de EFD\":\" \",\"In\\u00edcio de obrigatoriedade de EFD\":\" \",\"Emitente de NFe desde\":\"31\\/08\\/2009\"}','2016-04-22 00:09:41','2016-04-22 00:09:41'),(93,35,'31.804.115-0002-43','{\"CNPJ\":\"31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual\":\"082.254.28-1\",\"Raz\\u00e3o Social \":\"CEREAIS DO NICO LTDA\",\"Logradouro\":\"RUA IPE\",\"N\\u00famero\":\"10\",\"Complemento\":\"\",\"Bairro\":\"MOVELAR\",\"Munic\\u00edpio\":\"LINHARES\",\"UF\":\"ES\",\"CEP\":\"29906-120\",\"Telefone\":\"        \",\"Atividade Econ\\u00f4mica\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o\":\"ORDINARIO\",\"Obrigatoriedade de EFD\":\" \",\"In\\u00edcio de obrigatoriedade de EFD\":\" \",\"Emitente de NFe desde\":\"31\\/08\\/2009\"}','2016-04-22 00:15:51','2016-04-22 00:15:51'),(94,35,'31.804.115-0002-43','{\"CNPJ\":\"31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual\":\"082.254.28-1\",\"Raz\\u00e3o Social \":\"CEREAIS DO NICO LTDA\",\"Logradouro\":\"RUA IPE\",\"N\\u00famero\":\"10\",\"Complemento\":\"\",\"Bairro\":\"MOVELAR\",\"Munic\\u00edpio\":\"LINHARES\",\"UF\":\"ES\",\"CEP\":\"29906-120\",\"Telefone\":\"        \",\"Atividade Econ\\u00f4mica\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o\":\"ORDINARIO\",\"Obrigatoriedade de EFD\":\" \",\"In\\u00edcio de obrigatoriedade de EFD\":\" \",\"Emitente de NFe desde\":\"31\\/08\\/2009\"}','2016-04-22 00:17:21','2016-04-22 00:17:21'),(95,35,'31.804.115-0002-43','{\"CNPJ\":\"31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual\":\"082.254.28-1\",\"Raz\\u00e3o Social \":\"CEREAIS DO NICO LTDA\",\"Logradouro\":\"RUA IPE\",\"N\\u00famero\":\"10\",\"Complemento\":\"\",\"Bairro\":\"MOVELAR\",\"Munic\\u00edpio\":\"LINHARES\",\"UF\":\"ES\",\"CEP\":\"29906-120\",\"Telefone\":\"        \",\"Atividade Econ\\u00f4mica\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o\":\"ORDINARIO\",\"Obrigatoriedade de EFD\":\" \",\"In\\u00edcio de obrigatoriedade de EFD\":\" \",\"Emitente de NFe desde\":\"31\\/08\\/2009\"}','2016-04-22 00:48:29','2016-04-22 00:48:29'),(96,35,'31.804.115-0002-43','{\"CNPJ\":\"31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual\":\"082.254.28-1\",\"Raz\\u00e3o Social \":\"CEREAIS DO NICO LTDA\",\"Logradouro\":\"RUA IPE\",\"N\\u00famero\":\"10\",\"Complemento\":\"\",\"Bairro\":\"MOVELAR\",\"Munic\\u00edpio\":\"LINHARES\",\"UF\":\"ES\",\"CEP\":\"29906-120\",\"Telefone\":\"        \",\"Atividade Econ\\u00f4mica\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o\":\"ORDINARIO\",\"Obrigatoriedade de EFD\":\" \",\"In\\u00edcio de obrigatoriedade de EFD\":\" \",\"Emitente de NFe desde\":\"31\\/08\\/2009\"}','2016-04-22 00:49:39','2016-04-22 00:49:39'),(97,35,'31.804.115-0002-43','{\"CNPJ\":\"31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual\":\"082.254.28-1\",\"Raz\\u00e3o Social \":\"CEREAIS DO NICO LTDA\",\"Logradouro\":\"RUA IPE\",\"N\\u00famero\":\"10\",\"Complemento\":\"\",\"Bairro\":\"MOVELAR\",\"Munic\\u00edpio\":\"LINHARES\",\"UF\":\"ES\",\"CEP\":\"29906-120\",\"Telefone\":\"        \",\"Atividade Econ\\u00f4mica\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o\":\"ORDINARIO\",\"Obrigatoriedade de EFD\":\" \",\"In\\u00edcio de obrigatoriedade de EFD\":\" \",\"Emitente de NFe desde\":\"31\\/08\\/2009\"}','2016-04-22 00:49:39','2016-04-22 00:49:39'),(98,35,'31.804.115-0002-43','{\"CNPJ\":\"31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual\":\"082.254.28-1\",\"Raz\\u00e3o Social \":\"CEREAIS DO NICO LTDA\",\"Logradouro\":\"RUA IPE\",\"N\\u00famero\":\"10\",\"Complemento\":\"\",\"Bairro\":\"MOVELAR\",\"Munic\\u00edpio\":\"LINHARES\",\"UF\":\"ES\",\"CEP\":\"29906-120\",\"Telefone\":\"        \",\"Atividade Econ\\u00f4mica\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o\":\"ORDINARIO\",\"Obrigatoriedade de EFD\":\" \",\"In\\u00edcio de obrigatoriedade de EFD\":\" \",\"Emitente de NFe desde\":\"31\\/08\\/2009\"}','2016-04-22 00:49:49','2016-04-22 00:49:49'),(99,35,'31.804.115-0002-43','{\"CNPJ\":\"31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual\":\"082.254.28-1\",\"Raz\\u00e3o Social \":\"CEREAIS DO NICO LTDA\",\"Logradouro\":\"RUA IPE\",\"N\\u00famero\":\"10\",\"Complemento\":\"\",\"Bairro\":\"MOVELAR\",\"Munic\\u00edpio\":\"LINHARES\",\"UF\":\"ES\",\"CEP\":\"29906-120\",\"Telefone\":\"        \",\"Atividade Econ\\u00f4mica\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o\":\"ORDINARIO\",\"Obrigatoriedade de EFD\":\" \",\"In\\u00edcio de obrigatoriedade de EFD\":\" \",\"Emitente de NFe desde\":\"31\\/08\\/2009\"}','2016-04-22 00:50:06','2016-04-22 00:50:06'),(100,35,'31.804.115-0002-43','{\"CNPJ\":\"31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual\":\"082.254.28-1\",\"Raz\\u00e3o Social \":\"CEREAIS DO NICO LTDA\",\"Logradouro\":\"RUA IPE\",\"N\\u00famero\":\"10\",\"Complemento\":\"\",\"Bairro\":\"MOVELAR\",\"Munic\\u00edpio\":\"LINHARES\",\"UF\":\"ES\",\"CEP\":\"29906-120\",\"Telefone\":\"        \",\"Atividade Econ\\u00f4mica\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o\":\"ORDINARIO\",\"Obrigatoriedade de EFD\":\" \",\"In\\u00edcio de obrigatoriedade de EFD\":\" \",\"Emitente de NFe desde\":\"31\\/08\\/2009\"}','2016-04-22 00:54:42','2016-04-22 00:54:42'),(101,35,'31.804.115-0002-43','{\"CNPJ\":\"31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual\":\"082.254.28-1\",\"Raz\\u00e3o Social \":\"CEREAIS DO NICO LTDA\",\"Logradouro\":\"RUA IPE\",\"N\\u00famero\":\"10\",\"Complemento\":\"\",\"Bairro\":\"MOVELAR\",\"Munic\\u00edpio\":\"LINHARES\",\"UF\":\"ES\",\"CEP\":\"29906-120\",\"Telefone\":\"        \",\"Atividade Econ\\u00f4mica\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o\":\"ORDINARIO\",\"Obrigatoriedade de EFD\":\" \",\"In\\u00edcio de obrigatoriedade de EFD\":\" \",\"Emitente de NFe desde\":\"31\\/08\\/2009\"}','2016-04-22 00:54:43','2016-04-22 00:54:43'),(102,35,'31.804.115-0002-43','{\"CNPJ\":\"31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual\":\"082.254.28-1\",\"Raz\\u00e3o Social \":\"CEREAIS DO NICO LTDA\",\"Logradouro\":\"RUA IPE\",\"N\\u00famero\":\"10\",\"Complemento\":\"\",\"Bairro\":\"MOVELAR\",\"Munic\\u00edpio\":\"LINHARES\",\"UF\":\"ES\",\"CEP\":\"29906-120\",\"Telefone\":\"        \",\"Atividade Econ\\u00f4mica\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o\":\"ORDINARIO\",\"Obrigatoriedade de EFD\":\" \",\"In\\u00edcio de obrigatoriedade de EFD\":\" \",\"Emitente de NFe desde\":\"31\\/08\\/2009\"}','2016-04-22 00:56:49','2016-04-22 00:56:49'),(103,35,'31.804.115-0002-43','{\"CNPJ\":\"31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual\":\"082.254.28-1\",\"Raz\\u00e3o Social \":\"CEREAIS DO NICO LTDA\",\"Logradouro\":\"RUA IPE\",\"N\\u00famero\":\"10\",\"Complemento\":\"\",\"Bairro\":\"MOVELAR\",\"Munic\\u00edpio\":\"LINHARES\",\"UF\":\"ES\",\"CEP\":\"29906-120\",\"Telefone\":\"        \",\"Atividade Econ\\u00f4mica\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o\":\"ORDINARIO\",\"Obrigatoriedade de EFD\":\" \",\"In\\u00edcio de obrigatoriedade de EFD\":\" \",\"Emitente de NFe desde\":\"31\\/08\\/2009\"}','2016-04-22 00:58:58','2016-04-22 00:58:58'),(104,35,'31.804.115-0002-43','{\"CNPJ\":\"31.804.115\\/0002-43\",\"Inscri\\u00e7\\u00e3o Estadual\":\"082.254.28-1\",\"Raz\\u00e3o Social \":\"CEREAIS DO NICO LTDA\",\"Logradouro\":\"RUA IPE\",\"N\\u00famero\":\"10\",\"Complemento\":\"\",\"Bairro\":\"MOVELAR\",\"Munic\\u00edpio\":\"LINHARES\",\"UF\":\"ES\",\"CEP\":\"29906-120\",\"Telefone\":\"        \",\"Atividade Econ\\u00f4mica\":\"COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS\",\"Data de Inicio de Atividade\":\"26\\/03\\/2004\",\"Situa\\u00e7\\u00e3o Cadastral Vigente\":\"HABILITADO\",\"Data desta Situa\\u00e7\\u00e3o Cadastral\":\"26\\/03\\/2004\",\"Regime de Apura&ccedil;&atilde;o\":\"ORDINARIO\",\"Obrigatoriedade de EFD\":\" \",\"In\\u00edcio de obrigatoriedade de EFD\":\" \",\"Emitente de NFe desde\":\"31\\/08\\/2009\"}','2016-04-22 01:01:21','2016-04-22 01:01:21');
/*!40000 ALTER TABLE `sintegras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todos`
--

DROP TABLE IF EXISTS `todos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isDone` tinyint(1) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `todos_user_id_foreign` (`user_id`),
  CONSTRAINT `todos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todos`
--

LOCK TABLES `todos` WRITE;
/*!40000 ALTER TABLE `todos` DISABLE KEYS */;
INSERT INTO `todos` VALUES (1,'0000-00-00 00:00:00','0000-00-00 00:00:00','Titulo',1,1);
/*!40000 ALTER TABLE `todos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Moises','moisesrmendes','moisesrmendes@gmail.com','123456',NULL,'2016-04-20 05:47:18','2016-04-20 05:47:18');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-21 19:43:58
