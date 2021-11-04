-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.20-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para as
CREATE DATABASE IF NOT EXISTS `as` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `as`;

-- Volcando estructura para tabla as.articulo
CREATE TABLE IF NOT EXISTS `articulo` (
  `idarticulo` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `referencia` varchar(100) DEFAULT NULL,
  `codigoalfanumerico` varchar(50) DEFAULT NULL,
  `codigobarra` varchar(50) DEFAULT NULL,
  `estado` varchar(1) NOT NULL,
  `observacion` varchar(250) DEFAULT NULL,
  `idmarca` int(11) NOT NULL,
  `idlinea` int(11) NOT NULL,
  `idseccion` int(11) NOT NULL,
  `idtipo` int(11) NOT NULL,
  `idunidad` int(11) NOT NULL,
  `idimpuesto` int(11) NOT NULL,
  PRIMARY KEY (`idarticulo`),
  KEY `FK_ARTICULO_MARCA` (`idmarca`),
  KEY `FK_ARTICULO_LINEA` (`idlinea`),
  KEY `FK_ARTICULO_SECCION` (`idseccion`),
  KEY `FK_ARTICULO_TIPO_ARTICULO` (`idtipo`),
  KEY `FK_ARTICULO_UNIDAD_MEDIDA` (`idunidad`),
  KEY `FK_ARTICULO_IMPUESTO` (`idimpuesto`),
  CONSTRAINT `FK_ARTICULO_IMPUESTO` FOREIGN KEY (`idimpuesto`) REFERENCES `impuesto` (`idimpuesto`),
  CONSTRAINT `FK_ARTICULO_LINEA` FOREIGN KEY (`idlinea`) REFERENCES `linea` (`idlinea`),
  CONSTRAINT `FK_ARTICULO_MARCA` FOREIGN KEY (`idmarca`) REFERENCES `marca` (`idmarca`),
  CONSTRAINT `FK_ARTICULO_SECCION` FOREIGN KEY (`idseccion`) REFERENCES `seccion` (`idseccion`),
  CONSTRAINT `FK_ARTICULO_TIPO_ARTICULO` FOREIGN KEY (`idtipo`) REFERENCES `tipo_articulo` (`idtipo`),
  CONSTRAINT `FK_ARTICULO_UNIDAD_MEDIDA` FOREIGN KEY (`idunidad`) REFERENCES `unidad_medida` (`idunidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla as.articulo: ~15.170 rows (aproximadamente)
/*!40000 ALTER TABLE `articulo` DISABLE KEYS */;
REPLACE INTO `articulo` (`idarticulo`, `descripcion`, `referencia`, `codigoalfanumerico`, `codigobarra`, `estado`, `observacion`, `idmarca`, `idlinea`, `idseccion`, `idtipo`, `idunidad`, `idimpuesto`) VALUES
	(1, 'HARINA DE TRIGO 1 KG TIPO 000', '', '1', '', 'A', '', 1, 1, 1, 2, 1, 2),
	(2, 'HARINA DE TRIGO 1 KG 0000', '', '2', '', 'A', '', 1, 2, 1, 2, 1, 2),
	(3, 'HARINA DE TRIGO 5 KG 000', '', '3', '', 'A', '', 1, 1, 1, 2, 1, 2),
	(4, 'HARINA DE TRIGO 5 KG 0000', '', '4', '', 'A', '', 1, 2, 1, 2, 1, 2),
	(5, 'HARINA DE TRIGO 50 KG 000 PANADERA', '', '5', '', 'A', '', 1, 1, 1, 2, 1, 2),
	(6, 'HARINA DE TRIGO 50 KG 0000', '', '6', '', 'A', '', 1, 2, 1, 2, 1, 2),
	(7, 'HARINA DE TRIGO 50 KG 000 FIDERA', '', '7', '', 'A', '', 1, 1, 1, 2, 1, 2),
	(8, 'AFRECHO DE TRIGO DE 30 KG', '', '8', '', 'A', '', 2, 3, 1, 2, 1, 2),
	(9, 'HARINA INTEGRAL DE 30 KG', '', '9', '', 'A', '', 1, 6, 1, 2, 1, 2),
	(10, 'HARINA SALVADO DE 25 KG', '', '10', '', 'A', '', 1, 7, 1, 2, 1, 2),
	(11, 'VITAMINA P/ HARINA', '', '11', '', 'A', '', 3, 4, 1, 1, 1, 3),
	(12, 'OXIBLAN', '', '12', '', 'A', '', 3, 4, 1, 1, 1, 3),
	(13, 'REFORTEN PREMIUN ECO', '', '13', '', 'A', '', 3, 4, 1, 1, 1, 3),
	(14, 'GASOIL', '', '14', '', 'A', '', 10, 4, 1, 4, 1, 1),
	(15, 'TRIGO A GRANEL', '', '15', '', 'A', '', 3, 4, 1, 1, 1, 2),
	(16, 'BOLSAS DE PANADERA 50 KG', '', '16', '', 'A', '', 4, 1, 1, 1, 1, 3),
	(17, 'ENVASES DE 5 KG 000', '', '17', '', 'A', '', 4, 1, 1, 1, 1, 3),
	(18, 'SERVICIO FLETE   SOJA', '', '18', '', 'A', '', 3, 4, 1, 4, 1, 3),
	(19, 'HARINA TIPO 000 A GRANEL', '', '19', '', 'A', '', 1, 1, 1, 2, 1, 2),
	(20, 'HARINA TIPO 0000 A GRANEL', '', '20', '', 'A', '', 1, 2, 1, 2, 1, 2),
	(21, 'BOLSAS DE 50 KG 0000', '', '21', '', 'A', '', 4, 2, 1, 1, 1, 3),
	(22, 'ENVASES DE 5 KG 0000', '', '22', '', 'A', '', 4, 2, 1, 1, 1, 3),
	(23, 'ENVASES DE 1 KG 000', '', '23', '', 'A', '', 4, 1, 1, 1, 1, 3),
	(24, 'ENVASES DE 1 KG 0000', '', '24', '', 'A', '', 4, 2, 1, 1, 1, 3),
	(25, 'BOLSAS DE 30 KG HARINA INTEGRAL', '', '25', '', 'A', '', 4, 6, 1, 1, 1, 3),
	(26, 'BOLSAS DE AFRECHO 30 KG', '', '26', '', 'A', '', 4, 3, 1, 1, 1, 3),
	(27, 'BOLSAS DE FIDERA 50 KG', '', '27', '', 'A', '', 4, 1, 1, 1, 1, 3),
	(28, 'CAMPERAS DE AGRO ECO', '', '28', '', 'A', '', 3, 4, 1, 4, 1, 3),
	(29, 'BOLSAS DE 25 KG HARINA SALVADO', '', '29', '', 'A', '', 4, 7, 1, 1, 1, 3),
	(30, 'CUBIERTAS', '', '30', '', 'A', '', 3, 4, 1, 1, 1, 3),
	(31, 'SERVICIO DE MOLIENDA', '', '31', '', 'A', '', 3, 4, 1, 4, 1, 3),
	(32, 'AFRECHO A GRANEL', '', '32', '', 'A', '', 2, 3, 1, 2, 1, 3),
	(33, 'HARINA INTEGRAL A GRANEL', '', '33', '', 'A', '', 1, 6, 1, 2, 1, 2),
	(34, 'HARINA SALVADO A GRANEL', '', '34', '', 'A', '', 1, 7, 1, 2, 1, 2),
	(35, 'TRIGO 2014', '', '35', '', 'A', '', 3, 4, 1, 1, 1, 1),
	(36, 'TRIGUILLO 2014', '', '36', '', 'A', '', 3, 4, 1, 1, 1, 1),
	(37, 'HARINA 50 KG 000 RAYOS DEL SOL', '', '37', '', 'A', '', 1, 1, 1, 2, 1, 2),
	(38, 'AFRECHO 30 KG RAYOS DEL SOL', '', '38', '', 'A', '', 2, 3, 1, 2, 1, 3),
	(39, 'SEMOLIN  50 KG', '', '39', '', 'A', '', 1, 2, 1, 2, 1, 2),
	(40, 'BOLSAS DE SEMOLIN 50 KG', '', '40', '', 'A', '', 4, 2, 1, 1, 1, 3),
	(41, 'COPALMIX LEUDANTE', '', '41', '', 'A', '', 3, 4, 1, 1, 1, 3),
	(42, 'HARINA LEUDANTE 1 KG', '', '42', '', 'A', '', 1, 2, 1, 2, 1, 2),
	(43, 'HARINA 1 KG 000 RAYOS DEL SOL', '', '43', '', 'A', '', 1, 1, 1, 2, 1, 2),
	(44, 'HARINA DE 5 KG 000 RAYOS DEL SOL', '', '44', '', 'A', '', 1, 1, 1, 2, 1, 2),
	(45, 'ENVASES DE 1K LEUDANTE', '', '45', '', 'A', '', 4, 2, 1, 1, 1, 3),
	(46, 'ANALISIS FALING GLUTEN UMEDAD', '', '46', '', 'A', '', 5, 1, 1, 4, 1, 3),
	(47, 'PAN DULCE DE NAVIDAD', '', '47', '', 'A', '', 1, 2, 1, 4, 1, 3),
	(48, 'HARINA DE 50 KG 0000 INDUSTRIAL', '', '48', '', 'A', '', 1, 2, 1, 2, 1, 2),
	(49, 'BOLSAS IND.50KG', '', '49', '', 'A', '', 4, 2, 1, 1, 1, 3),
	(50, 'HARINA FIDERA TIPO 00 50 KG', '', '50', '', 'A', '', 1, 1, 1, 2, 1, 2),
	(51, 'TRIGO 2015', '', '51', '', 'A', '', 3, 4, 1, 1, 1, 1),
	(52, 'HARINA DE 50 KG 0000 HIL AGRO', '', '52', '', 'A', '', 1, 2, 1, 2, 1, 2),
	(53, 'HARINA DE 50 KG 000  MARELA', '', '53', '', 'A', '', 1, 1, 1, 2, 1, 2),
	(54, 'TERMOS  AGRO ECO S.R.L.', '', '54', '', 'A', '', 4, 1, 1, 4, 1, 3),
	(55, 'SERV. PRESTAR  AIRE', '', '55', '', 'A', '', 3, 4, 1, 4, 1, 3),
	(56, 'BOLSAS CRISTAL', '', '56', '', 'A', '', 1, 1, 1, 1, 1, 3),
	(57, 'HARINA TIPO 00 A GRANEL', '', '57', '', 'A', '', 1, 1, 1, 2, 1, 2),
	(58, 'ANALISES  SENIZA', '', '58', '', 'A', '', 5, 1, 1, 4, 1, 3),
	(59, 'SERVICIO  ,  FLETES', '', '59', '', 'A', '', 1, 1, 1, 4, 1, 3),
	(60, 'INTERES COBRADOS', '', '60', '', 'A', '', 1, 1, 1, 1, 1, 3),
	(61, 'HARINA  INTEGRAL X KG', '', '61', '', 'A', '', 1, 1, 1, 2, 1, 2),
	(62, 'HARINA SALVADO X  KG', '', '62', '', 'A', '', 1, 1, 1, 1, 1, 2),
	(63, 'ENVASES LIDER DE 1KG 000', '', '63', '', 'A', '', 4, 1, 1, 1, 1, 3),
	(64, 'HARINA LIDER DE 1 KG TIPO 000', '', '64', '', 'A', '', 1, 1, 1, 2, 1, 2),
	(65, 'ENVASES LIDER DE 5 KG 000', '', '65', '', 'A', '', 4, 1, 1, 1, 1, 3),
	(66, 'HARINA LIDER DE 5 KG TIPO 000', '', '66', '', 'A', '', 1, 1, 1, 1, 1, 2),
	(67, 'HARINA LIDER DE 5 KG TIPO 0000', '', '67', '', 'A', '', 1, 2, 1, 1, 1, 2),
	(68, 'HARINA LIDER DE 1 KG TIPO 0000', '', '68', '', 'A', '', 1, 2, 1, 1, 1, 2),
	(69, 'ENVASES LIDER DE 1KG 0000', '', '69', '', 'A', '', 4, 2, 1, 1, 1, 3),
	(70, 'ENVASES LIDER DE 5KG 0000', '', '70', '', 'A', '', 4, 2, 1, 1, 1, 3),
	(71, 'LLANTAS PARA CAMION', '', '71', '', 'A', '', 3, 4, 1, 1, 1, 3),
	(72, 'KEPIS AGRO ECO SRL', '', '72', '', 'A', '', 3, 1, 1, 4, 1, 3),
	(73, 'SIDRA  PREFERIDA', '', '73', '', 'A', '', 3, 4, 1, 4, 1, 3),
	(74, 'CUBIERTAS MICHELIN 315 / 80 R22.5', '', '74', '', 'A', '', 6, 4, 1, 1, 1, 3),
	(75, 'CUBIERTAS CHINO LISO 295/80 R22.5', '', '75', '', 'A', '', 7, 4, 1, 1, 1, 3),
	(76, 'CUBIERTAS MICHELIN 295 /80 R22.5', '', '76', '', 'A', '', 6, 4, 1, 1, 1, 3),
	(77, 'CUBIERTAS CHINO TAQUITOS 295/80 R22.5', '', '77', '', 'A', '', 8, 4, 1, 1, 1, 3),
	(78, 'CUBIERTAS CHINO LISO 315/80 R22.5', '', '78', '', 'A', '', 7, 4, 1, 1, 1, 3),
	(79, 'CUBIERTA TRACCION CHINO 315/80 R22.5', '', '79', '', 'A', '', 8, 4, 1, 1, 1, 3),
	(80, 'ALMIDON DE MANDIOCA 25KG. DULCE', '', '80', '', 'A', '', 9, 1, 1, 2, 1, 2),
	(81, 'BOLSAS BLANCAS DE HARINA 50KG', '', '81', '', 'A', '', 4, 1, 1, 1, 1, 3),
	(82, 'TRIGO 2017', '', '82', '', 'A', '', 3, 4, 1, 1, 1, 2),
	(83, 'SERVICIOS DE TELEFONIA', '', '83', '', 'A', '', 3, 4, 1, 4, 1, 3),
	(84, 'SILLAS  PLASTICO', '', '84', '', 'A', '', 3, 4, 1, 4, 1, 3),
	(85, 'MESAS  REDONDO', '', '85', '', 'A', '', 3, 4, 1, 4, 1, 3),
	(86, 'BOLSAS  USADO', '', '86', '', 'A', '', 2, 3, 1, 4, 1, 3),
	(87, 'HARINA DE 50 KG   LEUDANTE', '', '87', '', 'A', '', 1, 2, 1, 2, 1, 2),
	(88, 'TRIGO 2019', '', '88', '', 'A', '', 3, 4, 1, 1, 1, 2),
	(89, 'PARILLA ELICTRICA', '', '89', '', 'A', '', 3, 1, 1, 4, 1, 3),
	(90, 'TRIGO 2020', '', '90', '', 'A', '', 3, 4, 1, 1, 1, 2),
	(91, 'BOLSAS DE 25 KG PANADERA', '', '91', '', 'A', '', 4, 1, 1, 1, 1, 3),
	(92, 'HARINA DE TRIGO 25 KG 000 PANADERA', '', '92', '', 'A', '', 1, 1, 1, 2, 1, 2),
	(93, 'SERVICIOS EMPAQUETADO', '', '93', '', 'A', '', 3, 4, 1, 4, 1, 3),
	(94, 'MAQUINA EMPAQUETADORA', '', '94', '', 'A', '', 3, 4, 1, 4, 1, 3),
	(95, 'TRIGO 2021', '', '95', '', 'A', '', 3, 4, 1, 1, 1, 2),
	(96, 'BIDON DE 5 LTS PLASTICO', '', '96', '', 'A', '', 3, 4, 1, 4, 1, 3),
	(97, 'SEMOLIN  POR KG', '', '97', '', 'A', '', 1, 2, 1, 2, 1, 2),
	(98, 'ARTICULO AJUSTE DE INVENTARIO', '', '98', '', 'A', '', 3, 4, 1, 1, 1, 2),
	(99, 'ARTICULO DE PRUEBA PARA ACOPIO', '', '99', '', 'A', '', 3, 4, 1, 1, 1, 2),
	(100, 'HARINA X KG TIPO 000  FIDEERA', '', '100', '', 'A', '', 1, 1, 1, 2, 1, 2),
	(101, 'BOLSAS BIGBAG FIDEERA', '', '101', '', 'A', '', 4, 1, 1, 1, 1, 3),
	(102, 'BOLSA BIGBAG 0000', '', '102', '', 'A', '', 4, 2, 1, 1, 1, 3),
	(103, 'HARINA  X KG TIPO 0000', '', '103', '', 'A', '', 1, 2, 1, 2, 1, 2),
	(104, 'TRIGO 2022', '', '104', '', 'A', '', 3, 4, 1, 1, 1, 2);
/*!40000 ALTER TABLE `articulo` ENABLE KEYS */;

-- Volcando estructura para tabla as.articulo_deposito
CREATE TABLE IF NOT EXISTS `articulo_deposito` (
  `idarticulo` int(11) NOT NULL,
  `iddeposito` int(11) NOT NULL,
  `cantidad` double NOT NULL,
  PRIMARY KEY (`idarticulo`,`iddeposito`),
  KEY `FK_ARTICULO_DEPOSITO_DEPOSITO` (`iddeposito`),
  KEY `FK_ARTICULO_DEPOSITO_ARTICULO` (`idarticulo`),
  CONSTRAINT `FK_ARTICULO_DEPOSITO_ARTICULO` FOREIGN KEY (`idarticulo`) REFERENCES `articulo` (`idarticulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ARTICULO_DEPOSITO_DEPOSITO` FOREIGN KEY (`iddeposito`) REFERENCES `deposito` (`iddeposito`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.articulo_deposito: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `articulo_deposito` DISABLE KEYS */;
/*!40000 ALTER TABLE `articulo_deposito` ENABLE KEYS */;

-- Volcando estructura para tabla as.articulo_lista_precio
CREATE TABLE IF NOT EXISTS `articulo_lista_precio` (
  `idarticulo` int(11) NOT NULL,
  `idlista` int(11) NOT NULL,
  `precio` double NOT NULL,
  PRIMARY KEY (`idarticulo`,`idlista`),
  KEY `FK_ARTICULO_LISTA_PRECIO_LISTA_PRECIO` (`idlista`),
  KEY `FK_ARTICULO_LISTA_PRECIO_ARTICULO` (`idarticulo`),
  CONSTRAINT `FK_ARTICULO_LISTA_PRECIO_ARTICULO` FOREIGN KEY (`idarticulo`) REFERENCES `articulo` (`idarticulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ARTICULO_LISTA_PRECIO_LISTA_PRECIO` FOREIGN KEY (`idlista`) REFERENCES `lista_precio` (`idlista`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.articulo_lista_precio: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `articulo_lista_precio` DISABLE KEYS */;
/*!40000 ALTER TABLE `articulo_lista_precio` ENABLE KEYS */;

-- Volcando estructura para tabla as.articulo_periodo
CREATE TABLE IF NOT EXISTS `articulo_periodo` (
  `idarticulo` int(11) NOT NULL,
  `idperiodo` int(11) NOT NULL,
  `idmoneda` int(11) NOT NULL,
  `costo` double NOT NULL,
  PRIMARY KEY (`idarticulo`,`idperiodo`,`idmoneda`) USING BTREE,
  KEY `FK_ARTICULO_PERIODO_PERIODO` (`idperiodo`),
  KEY `FK_ARTICULO_PERIODO_ARTICULO` (`idarticulo`),
  KEY `FK_ARTICULO_PERIODO_MONEDA` (`idmoneda`),
  CONSTRAINT `FK_ARTICULO_PERIODO_ARTICULO` FOREIGN KEY (`idarticulo`) REFERENCES `articulo` (`idarticulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ARTICULO_PERIODO_MONEDA` FOREIGN KEY (`idmoneda`) REFERENCES `moneda` (`idmoneda`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ARTICULO_PERIODO_PERIODO` FOREIGN KEY (`idperiodo`) REFERENCES `periodo` (`idperiodo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.articulo_periodo: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `articulo_periodo` DISABLE KEYS */;
/*!40000 ALTER TABLE `articulo_periodo` ENABLE KEYS */;

-- Volcando estructura para tabla as.banco
CREATE TABLE IF NOT EXISTS `banco` (
  `idbanco` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `idpais` int(11) NOT NULL,
  PRIMARY KEY (`idbanco`) USING BTREE,
  KEY `FK_BANCO_PAIS` (`idpais`) USING BTREE,
  CONSTRAINT `FK_BANCO_PAIS` FOREIGN KEY (`idpais`) REFERENCES `pais` (`idpais`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla as.banco: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `banco` DISABLE KEYS */;
REPLACE INTO `banco` (`idbanco`, `descripcion`, `idpais`) VALUES
	(1, 'FINANCIERA EL COMERCIO', 1),
	(2, 'BANCO CONTINENTAL', 1),
	(3, 'BANCO ITAU', 1);
/*!40000 ALTER TABLE `banco` ENABLE KEYS */;

-- Volcando estructura para tabla as.caja
CREATE TABLE IF NOT EXISTS `caja` (
  `idcaja` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`idcaja`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla as.caja: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `caja` DISABLE KEYS */;
REPLACE INTO `caja` (`idcaja`, `descripcion`) VALUES
	(1, 'CAJA GUARANIES'),
	(2, 'CAJA DOLARES');
/*!40000 ALTER TABLE `caja` ENABLE KEYS */;

-- Volcando estructura para tabla as.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `idcliente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `ruc` varchar(25) DEFAULT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `estado` varchar(1) NOT NULL,
  `idtipo` int(11) NOT NULL,
  PRIMARY KEY (`idcliente`),
  KEY `FK_CLIENTE_TIPO_CLIENTE` (`idtipo`),
  CONSTRAINT `FK_CLIENTE_TIPO_CLIENTE` FOREIGN KEY (`idtipo`) REFERENCES `tipo_cliente` (`idtipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla as.cliente: ~6.190 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
REPLACE INTO `cliente` (`idcliente`, `nombre`, `apellido`, `ruc`, `telefono`, `direccion`, `estado`, `idtipo`) VALUES
	(1, 'DISTRIBUIDORA TOP S.A.', '.', '80051170-0', '0', 'CIUDAD DEL ESTE', 'A', 1),
	(2, 'AGROPEQUARIA RAUL PEÑA S.A.', '.', '80055899-5', '0', '1', 'A', 1),
	(3, 'PANADERIA LA CAAGUAZEÑA', '.', '3701928-7', '45.340.159', 'CURUGUATY', 'A', 1),
	(4, 'ROSSE MARIEL ZARZA TRINIDAD', '.', '1446569-8', '52.242.676', 'CAAGUAZU', 'A', 1),
	(5, 'ORPAR S.A.C.I.', '.', '80002490-7', '21.662.433', 'ASUNCION', 'A', 1),
	(6, 'HENRY SCHROEDER B.', '.', '2658952-4', '971446533', '1', 'A', 1),
	(7, 'PANADERIA YUCUVE PORA', '.', '401716-1', '04914-32228', '0', 'A', 1),
	(8, 'INDUSTRIA FATECHA', '.', '827160-7', '971.902.500', '.', 'A', 1),
	(9, 'PANADERIA HIEBERT SU FAVORITA', '.', '2576472-1', '492.252.596', 'LOMA  PLATA  CHACO', 'A', 1),
	(10, 'CASA SANTO DOMINGO', '.', '3707055-0', '0982 711565', '0', 'A', 1),
	(11, 'OCASIONAL', '.', '44444401-7', '0', '0', 'A', 1),
	(12, 'BERNIE H. FRIESEN', '.', '1497681-1', '971.402.120', 'J.E.ESTIGARIBIA', 'A', 1),
	(13, 'ISAAC F. HILDEBRAND', '.', '951849-5', '971.401.906', 'COL. SOMMERFELD', 'A', 1),
	(14, 'DEPOSITO DON CHICO', '.', 'PEDV560560H', '983.590.305', '1', 'A', 1),
	(15, 'EDWIN HIEBERT', '.', '0', '983173378', '0', 'A', 1),
	(16, 'CARLO MARIA FERNANDEZ', '.', '0', '981.591.243', '0', 'A', 1),
	(17, 'DANIEL BRAUN HARDER', '.', '1504309-6', '971.406.433', '0', 'A', 1),
	(18, 'EMPASA', '.', '80022135-4', '981.300.202', '0', 'A', 1),
	(19, 'F H S.A.', '.', '80050065-2', '528.222.384', '0', 'A', 1),
	(20, 'PANADERIA KRAHN', '.', '4179668-3', '492.252.218', '0', 'A', 1),
	(21, 'ERNIE D. HILDEBRAND', '.', '1326660-8', '971.402.270', '0', 'A', 1),
	(22, 'HIPER PAN', '.', '0', '981.466.279', '0', 'A', 1),
	(23, 'AMADA DE ROLON', '.', '593215-7', '228.634.412', 'RUTA II KM 20 CAPIATA', 'A', 1),
	(24, 'PANADERIA MICKEY', '.', '1011260-0', '336.273.895', '0', 'A', 1),
	(25, 'DISTRIBUIDORA SAN ANDRES', '.', '0', '973.508.036', '0', 'A', 1),
	(26, 'COMERCIAL OSCAR', '.', '901896-4', '971.450.230', '0', 'A', 1),
	(27, 'COMERCIAL 101', '.', '0', '54.120.533', '0', 'A', 1),
	(28, 'PETER DUECK KRAHN', '.', '1231965-1', '971.403.433', 'J.E.ESTIGARIBIA', 'A', 1),
	(29, 'SUPERMERCADO CAMPO NUEVE S.A.', '.', '80029973-6', '528.222.218', 'J.E.ESTIGARIBIA', 'A', 1),
	(30, 'GERMAN RODRIGUEZ', '.', '762298-8', '981.181.587', '0', 'A', 1),
	(31, 'JUAN RAMON IRALA', '.', '1987665-3', '511.422.878', '0', 'A', 1),
	(32, 'NUTRIMENTOS PARAGUAYOS S.R.L.', '.', '80000024-2', '971.208.532', '1', 'A', 1),
	(33, 'COMERCIAL BUZO SACI', '.', '80078597-5', '0', 'SANTANI', 'A', 1),
	(34, 'COMERCIAL AGRO NORTE', '.', '0', '21.643.150', '0', 'A', 1),
	(35, 'SUPERMERCADO LA GERMANIA S.R.L.', '.', '80026548-3', '528.222.318', '1', 'A', 1),
	(36, 'PANADERIA SAN CAYETANO', '.', '2169863-5', '971.610.490', 'CAMPO 9', 'A', 1),
	(37, 'SUPERMERCADO SANTA ELENA II', '.', '1061675-6', '528.222.404', '0', 'A', 1),
	(38, 'RAMON GONZALEZ E HIJOS S.A.', '.', '80033585-6', '0541-43359', 'SAN JUAN', 'A', 1),
	(39, 'TODO CARNE S.A.', '.', '80028162-4', '21.642.267', 'ASUNCION LUQUE', 'A', 1),
	(40, 'LOS COLONOS', '.', '483003-2', '528.222.515', 'CAMPO 9', 'A', 1),
	(41, 'S. & H. S.R.L.', '.', '80028378-3', '971.424.471', 'CAMPO 9', 'A', 1),
	(42, 'COMERCIAL SANTA MARIA', '.', '1474839-8', '982.210.991', '0', 'A', 1),
	(43, 'DEPOSITO SAN FRANCISCO', '.', '0', '0', '0', 'A', 1),
	(44, 'INDEGA S.A.', '.', '80003239-0', '21502914', 'CHIRESA', 'A', 1),
	(45, 'JULIO VERA', '.', '623440', '971.443.224', '0', 'A', 1),
	(46, 'CEREALISTA CAMPO 9 S.A.', '.', '80010552-4', '971.402.271', '0', 'A', 1),
	(47, 'MARIO ROSALES PINTOS', '.', '3526864-6', '0986 122015', 'CAMINO LUQUE AREGUA', 'A', 1),
	(48, 'SOFI PAN S.R.L.', '.', '80028415-1', '21.650.271', '0', 'A', 1),
	(49, 'INDUSTRIA ALIMENTICIA MORETTI S.R.L.', '.', '80021059-0', '983.531.834', 'MINGA GUAZU KM: 320', 'A', 1),
	(50, 'COMERCIAL SAN CAYETANO S.R.L.', '.', '80024659-4', '21.641.488', 'CAPITAN BODA CASI', 'A', 1),
	(51, 'INDUSTRIA ALIMENTICIA  APETIT S.A.', '.', '80029082-8', '0', 'CAMPO 9', 'A', 1),
	(52, 'COMERCIAL EL CACIQUE S.R.L.', '.', '80052468-3', '971.999.806', 'LUQUE', 'A', 1),
	(53, 'GAIA S.R.L.', '.', '80023216-0', '021-675300', '0', 'A', 1),
	(54, 'COOPERATIVA AGRIC. SOMMERFELD LTDA.', '.', '80003626-3', '528.222.214', '0', 'A', 1),
	(55, 'HILAGRO S.A.', '.', '80030229-0', '0528-222815', '0', 'A', 1),
	(56, 'CRISTIAN SANCHEZ', '.', '3564696', '981.754.824', '0', 'A', 1),
	(57, 'ATILIO QUIROGA', '.', '2368125-0', '971.297.557', '0', 'A', 1),
	(58, 'FIDESA', '.', '0', '21.291.710', '0', 'A', 1),
	(59, 'FIDESA S.A.', '.', '80002823-6', '422437', '0', 'A', 1),
	(60, 'DAVID KEHLER F.', '.', '1485675-1', '971.417.935', 'CAMPO 16', 'A', 1),
	(61, 'COMERCIAL VERA', '.', '4274682-5', '983.641.668', '0', 'A', 1),
	(62, 'AGROINDUSTRIAL COLONIAL S.A.', '.', '80004573-4', '528.222.355', 'CAMPO 9', 'A', 1),
	(63, 'COOPERATIVA CHORTITZER LTDA.', '.', '80004464-9', '04922.52301/5', 'CHACO  LOMA  PLATA', 'A', 1),
	(64, 'CECILIO FERNANDEZ', '.', '0', '531.230.340', '0', 'A', 1),
	(65, 'LUCIO AREVALOS', '.', '1762131-3', '971.980.772', 'PEDRO  JUAN', 'A', 1),
	(66, 'ORLANDO MARECO', '.', '360532-9', '981.920.988', '0', 'A', 1),
	(67, 'MICKEY S.R.L.', '.', '80001567-3', '21203045', 'FELIX BOGADO', 'A', 1),
	(68, 'MOLINOS Y GRANOS DEL NORTE S.R.L.', '.', '80009763-7', '331.242.029', '0', 'A', 1),
	(69, 'HEINRICH HIEBERT DUECK', '.', '1033304-5', '0', '0', 'A', 1),
	(70, 'RUBEN CORONEL', '.', '1869706-2', '983.733.321', 'CORONEL  OVIEDO', 'A', 1),
	(71, 'DIEGUITO COMERCIAL S.R.L.', '.', '80054139-1', '52.243.390', 'CAAGUAZU', 'A', 1),
	(72, 'AGRO ECO S.R.L.', '.', '80029571-4', '528.250.225', 'CALLE  4', 'A', 1),
	(73, 'SOFI PAN S.R.L. - LOS JARDINES', '.', '80028415-1', '986139304', '0', 'A', 1),
	(74, 'TODO CARNE S.A. - LOS JARDINES', '.', '80028162-4', '1', '0', 'A', 1),
	(75, 'OSCAR MARECO', '.', '481528-9', '971.308.744', '0', 'A', 1),
	(76, 'HEIN KLASSEN  LOMA PLATA', '.', '1049498-7', '981.215.329', 'LOMA  PLATA', 'A', 1),
	(77, 'RIGAL S.A.', '.', '80029305-3', '21.670.970', '0', 'A', 1),
	(78, 'TARUMA FOREST S.A.', '.', '80016721-0', '0', '0', 'A', 1),
	(79, 'AUTOSERVICE SANTO DOMINGO', '.', '3707055-0', '52.920.028', '0', 'A', 1),
	(80, 'DISTRIBUIDORA ANITA S.R.L.', '.', '80028246-9', '983.506.750', '0', 'A', 1),
	(81, 'ALBERT H. FRIESEN', '.', '3978168-2', '971.457.535', 'CAMPO  5', 'A', 1),
	(82, 'OSCAR COMERCIAL', '.', '3363035-6', '0', '0', 'A', 1),
	(83, 'PANADERIA LA MODERNA', '.', '782718-0', '981.545.540', '0', 'A', 1),
	(84, 'ALMACEN WILLIE GIESBRECHT', '.', '0', '49.252.546', 'LOMA PLATA', 'A', 1),
	(85, 'ALONSO COMERCIAL S.R.L.', '.', '80006739-8', '21391592', 'ASUNCION', 'A', 1),
	(86, 'COOP. FERNHEIM LTDA.', '.', '80016754-6', '981.583.374', 'M.R.A KM 14,5', 'A', 1),
	(87, 'COOP  FRIESLAND', '.', '0', '41.236.344', '0', 'A', 1),
	(88, 'CONSULTORA DUERKSEN', '.', '874117-4', '21.282.242', 'ASUNCION', 'A', 1),
	(89, 'I.P.S.', '.', '0', '52.241.520', 'CAAGUAZU', 'A', 1),
	(90, 'RUBEN NOGUERA', '.', '1382022-2', '0522-40339', '0', 'A', 1),
	(91, 'PERLA COMERCIAL', '.', '3849872-3', '971.979.792', '0', 'A', 1),
	(92, 'ELVIA GOMEZ DE MARECOS', '.', '508914-0', '53.520.004', 'ACAEY  MADRE DE OSCAR MARECOS', 'A', 1),
	(93, 'AUTOCERVICE ARIELITO', '.', '2617209-7', '972.567.755', 'OVIEDO', 'A', 1),
	(94, 'DISTRIBUIDORA AMAMBAY S.R.L.', '.', '80059347-2', '991.702.762', 'ASUNCION LUQUE', 'A', 1),
	(95, 'GERBRAND PENNER HEINRICH', '.', '1231945-7', '0', 'COL. BERGTHAL', 'A', 1),
	(96, 'AGRICOLA SANTA FE S.A.', '.', '80045075-2', '63.122.191', 'SANTA FE HERNANDARIOS', 'A', 1),
	(97, 'COMERCIAL PEREIRA HERMANOS', '.', '2282056-6', '0', '0', 'A', 1),
	(98, 'COMERCIAL ALVAREZ S.R.L.', '.', '80015490-8', '971.541.798', '0', 'A', 1),
	(99, 'JAKE SCHROEDER BUHLER', '.', '3599402-9', '971454454', 'CAMPO 10', 'A', 1),
	(100, 'SOCIEDAD CIVIL SOMMERFELD KOMITE', '.', '80015343-0', '0', '0', 'A', 1),
	(101, 'PANADERIA MARUZEM', '.', '50020778-0', '0', '0', 'A', 1),
	(102, 'NANCY GODOY', '.', '1291137-2', '21.286.078', 'ASUNCION', 'A', 1),
	(103, 'DISTRIBUIDORA DON FRANCISCO', '.', '1247330-8', '0', 'PARAGUARY', 'A', 1),
	(104, 'COMERCIAL PROGRESO S.A.C.I.', '.', '80028854-8', '971.432.780', 'RIO VERDE', 'A', 1),
	(105, 'OSCAR DIONEL FEREIRA', '.', '5994050-6', '981415812', '0', 'A', 1),
	(106, 'GEMINIS SUPER CENTER S.R.L.', '.', '80068120-7', '971.314.731', '0', 'A', 1),
	(107, 'SUPER UNO S.A.', '.', '80060246-3', '492.253.486', 'LOMA PLATA', 'A', 1),
	(108, 'LUIS BENITEZ', '.', '3213823-7', '971.385.906', 'ASUNCION', 'A', 1),
	(109, 'COMERCIAL ALVERO', '.', '2126117-2', '531.433.597', 'PARAGUARY', 'A', 1),
	(110, 'COOP. MULT. NEULAND LTDA.', '.', '80017582-4', '493.240.201', 'NEULAND CHACO', 'A', 1),
	(111, 'CONDOMINIO DAVID CUELLAR Y OTROS', '.', '80035747-7', '981.678.100', 'SALTOS', 'A', 1),
	(112, 'SANTIAGO ALFREDO BENITEZ CACERES', '.', '3235104-6', '336.275.598', 'PEDRO JUAN', 'A', 1),
	(113, 'VILMA RICHTER', '.', '2841071-8', '982.856.001', 'CAMPO 9', 'A', 1),
	(114, 'COOP. FRIESLAND LTDA.', '.', '80000748-4', '318.219.032', 'CHACO', 'A', 1),
	(115, 'SUPERMERCADO BOQUERON S.A.', '.', '80046196-7', '491.432.128', 'CHACO', 'A', 1),
	(116, 'CRR TRANSPORTE', '.', '1232027-7', '973.559.823', 'COLONIA BERGTHAL', 'A', 1),
	(117, 'SUPERMERCADO LAGO AZUL', '.', '3037370-0', '0', '1', 'A', 1),
	(118, 'VICTOR VARELA', '.', '280029-2', '0', '1', 'A', 1),
	(119, 'FRANCISCA PAREDES DE ORUE', '.', '210416-4', '1', '1', 'A', 1),
	(120, 'WILHELM T. BUHLER', '.', '951854-1', '0', 'CAMPO LIMPIO', 'A', 1),
	(121, 'J.D. GROUP', '.', '4471105-0', '0', 'CAAGUAZU', 'A', 1),
	(122, 'TRANSPORTADORA 27 DE DICIEMBRE S.R.L.', '.', '80019259-1', '971.732.685', 'CAAGUAZU', 'A', 1),
	(123, 'MODESTO FLORENCIO', '.', '0', '0', 'STANCIA LA PAZ', 'A', 1),
	(124, 'ACOSIL', '.', '1629783-0', '0', '0', 'A', 1),
	(125, 'PANADERIA SAN JUAN', '.', '1018779-0', '0', '0', 'A', 1),
	(126, 'RAUL RODRIGUEZ', '.', '862716-9', '0', 'ASUNCION DE FATIMA TORRES', 'A', 1),
	(127, 'PANADERIA CRISTIAN', '.', '0', '976.455.532', 'J.E. ESTIGARIBIA', 'A', 1),
	(128, 'DAVID NARVAEZ', '.', '4242171', '983.183.166', 'J.E. ESTIGARRIBIA', 'A', 1),
	(129, 'SEM AGRO S.A.E.', '.', '80044600-3', '0', '0', 'A', 1),
	(130, 'PEDRO NARVAEZ', '.', '4242170-5', '983.183.166', 'CAMPO 9', 'A', 1),
	(131, 'NUTRISILO S.A.', '.', '80052500-0', '971.191.890', '5', 'A', 1),
	(132, 'PASTA LA DELICIA', '.', '2534470-6', '0', 'SALTOS', 'A', 1),
	(133, 'AGRO VETERINARIA SAN RAMON', '.', '667595-6', '0', 'PASTOREO', 'A', 1),
	(134, 'RUTILLO DOMINGUEZ', '.', '462035-6', '981.367.034', '0', 'A', 1),
	(135, 'SUPER MANA S.R.L.', '.', '80047967-0', '0524-225213', '1', 'A', 1),
	(136, 'JOSE ARNALDO ARANDA', '.', '4303081-5', '0', '0', 'A', 1),
	(137, 'MARTIN BACHMANN', '.', '494099', '981.425.065', '0', 'A', 1),
	(138, 'PROBAL S.A.', '.', '80061967-6', '528.222.533', 'CAMPO 9', 'A', 1),
	(139, 'IND. PARAGUAYA DE TRIGO S.A.I.C.', '.', '80044506-6', '0', '0', 'A', 1),
	(140, 'DISTRIBUIDORA BALANCEADOS J M', '.', '3818501-6', '971.418.893', '.', 'A', 1),
	(141, 'MOLINOS FLOR DEL ESTE', '.', '881837-1', '0528-222222', 'CAMPO 9', 'A', 1),
	(142, 'PANADERIA SAN FRANCISCO', '.', '3822700-2', '0', '0', 'A', 1),
	(143, 'HEIN F. HILDEBRAND', '.', '726934-0', '0', 'COL. BERGTHAL', 'A', 1),
	(144, 'DAVID KROEKER', '.', '2458647-1', '0', 'DORANGO', 'A', 1),
	(145, 'ESTABLECIMIENTO INDUSTRIAL HENMY S.A.', '.', '80068071-5', '601051', '.', 'A', 1),
	(146, 'DIOSNEL FLEITAS', '.', '702439-8', '971.458.759', '0', 'A', 1),
	(147, 'JOSE DOMINGO GARCIA MARTINEZ', '.', '4697403-2', '0', 'CAMPO 9', 'A', 1),
	(148, 'DISTRIBUIDORA ARIEL', '.', '2617209-7', '982.934.184', 'CORONEL OVIEDO', 'A', 1),
	(149, 'PANADERIA TIO ITA', '.', '3923741-9', '0', 'SALTOS DEL GUAIRA', 'A', 1),
	(150, 'AGROTEC S.A.', '.', '80020753-0', '528.250.055', 'J. M. JRUTOS', 'A', 1),
	(151, 'GALEMAR S.A.', '.', '80059360-0', '0', 'OVIEDO', 'A', 1),
	(152, 'ENRIQUE AVALOS GILL', '.', '1308117-9', '972.864.577', 'VALLEMI', 'A', 1),
	(153, 'ODONA MARTINEZ INSAUNALDE', '.', '667403-8', '0', 'PASTOREO', 'A', 1),
	(154, 'ISMAEL GONZALEZ', '.', '3821432-6', '971.591.620', '0', 'A', 1),
	(155, 'AGUSTIN OCAMPOS GOMEZ', '.', '577197-8', '984.281.970', 'CRUCE YTAKYRY', 'A', 1),
	(156, 'PANADERIA CATALINO BAEZ', '.', '609350-7', '21644128', '1', 'A', 1),
	(157, 'JUAN ORUE GIMENEZ', '.', '839901-8', '981775203', 'SANTA ROSA 39 C/ SAN SEBASTIAN', 'A', 1),
	(158, 'CELIO FERNANDEZ', '.', '1', '0', '5', 'A', 1),
	(159, 'PANADERIA LAS MARIA', '.', '4189222-4', '0', 'PIRAYU', 'A', 1),
	(160, 'SILVIO ARNALDO BENITEZ NAVARRO', '.', '3750791-5', '0975-174356', 'CAMPO 9', 'A', 1),
	(161, 'ANGEL OLMEDO', '.', '1958715-5', '0', '0', 'A', 1),
	(162, 'ALMISUR S.A.', '.', '80049197-1', '528.250.267', 'TORIN', 'A', 1),
	(163, 'JORGE BORDON', '.', '1427432-9', '0', '0', 'A', 1),
	(164, 'COINTER S.R.L.', '.', '80005336-2', '981.459.503', 'CAAGUAZU', 'A', 1),
	(165, 'NM DISTRIBUIDORA', '.', '3965197-5', '0', '1', 'A', 1),
	(166, 'ANTONIO SOSA', '.', '2260582', '985.109.281', 'PIRAYU', 'A', 1),
	(167, 'JULIAN PAREDES', '.', '5786665-1', '0', 'PASTOREO', 'A', 1),
	(168, 'ROSANNA PAIVA', '.', '1202488-0', '0', '0', 'A', 1),
	(169, 'HENRY FRIESEN', '.', '1497638-2', '0', 'SILBERFELD', 'A', 1),
	(170, 'GLORIA GIMENEZ KEHLER', '.', '4545204-0', '971683668', 'CAMPO', 'A', 1),
	(171, 'BRISA DEL SUR S.A.', '.', '80070676-5', '0', 'SAN JUAN', 'A', 1),
	(172, 'GUAMPERIA CARLITO', '.', '7003859-3', '971.779.876', 'CAMPO 9', 'A', 1),
	(173, 'CORNELIO NEUDORF FRIESEN', '.', '974005-8', '0', 'RIO VERDE', 'A', 1),
	(174, 'JAVIER LOUTEIRO', '.', '1045058-0', '0', 'CAAGUAZU', 'A', 1),
	(175, 'DISTRIBUIDORA BRISA DEL SUR S.A.', '.', '80070676-5', '0544-320024', '0', 'A', 1),
	(176, 'ALDEKE COM. IMP. E EXP. LTDA.', '.', '88888801-5', '.', 'PONTA PORA', 'A', 1),
	(177, 'BANCO ITAU PARAGUAY S.A.', '.', '80002201-7', '497237', 'ASUNCION -PARAGUAY', 'A', 1),
	(178, 'MARIA ELENA MACHADO', '.', '0', '0', 'CAMPO 9', 'A', 1),
	(179, 'COMERCIAL "JA"', '.', '580035-8', '0', '0', 'A', 1),
	(180, 'NORTE EMPRENDIMIENTOS S.A.', '.', '80070822-9', '971.474.446', '.', 'A', 1),
	(181, 'SUPERMERCADO CANTERA BOCA', '.', '2287768-1', '.', '.', 'A', 1),
	(182, 'AGRO NATALIO S.R.L.', '.', '80054074-3', '.', 'ASUNCION', 'A', 1),
	(183, 'LA PARAGUAYA S.A. DE SEGUROS', '.', '80015075-9', '.', '.', 'A', 1),
	(184, 'ACOC INDIGENA MBORAYHU PORA', '.', '80061864-5', '.', '2', 'A', 1),
	(185, 'PEDRO JAVIER FIGUEREDO PEREZ', '.', '3620432-3', '.', 'KM .6.1/2', 'A', 1),
	(186, 'PANIFICADORA KARINA', '.', '3998939-9', '.', 'LUQUE', 'A', 1),
	(187, 'PANADERIA COLON S.R.L.', '.', '80025288-8', '981401588', '8 DE DICIEMBRE', 'A', 1),
	(188, 'DISTRIBUIDORA SAN EXPEDITO', '.', '4439021-1', '0', 'CAAGUAZU', 'A', 1),
	(189, 'AGROSATO S.A.', '.', '80028926-9', '63220690', 'ALTO PARANA', 'A', 1),
	(190, 'FH-S.A.', '.', '0', '0528-222630', 'CAMPO 9', 'A', 1),
	(191, 'JC DISTRIBUIDORA', '.', '0', '0', '1', 'A', 1),
	(192, 'KE PASTAS', '.', '0', '0', '0', 'A', 1),
	(193, 'MARIA DOMINGA RAMIREZ', '.', '0', '0', '2', 'A', 1),
	(194, 'SUPER VELOZ S.A.', '.', '80034690-4', '0', 'CAAGUAZU', 'A', 1),
	(195, 'NELSON CABALLERO', '.', '2230222-0', '1212', '1', 'A', 1),
	(196, 'FREDY FLEITAS', '.', '1913055-4', '0', 'PASTOREO', 'A', 1),
	(197, 'COMERCIAL A Y A', '.', '4036267-1', '0', 'CAAGUAZU', 'A', 1),
	(198, 'ORION GROUP S.A.', '.', '80048479-7', '0', 'ASUNCION', 'A', 1),
	(199, 'CALVIN EICHORN', '.', '1088610-9', '0', 'PASTOREO', 'A', 1),
	(200, 'SANTA ANGELA S.R.L.', '.', '80027502-0', '21500632', '14 DE MAYO C/ 4 ZONA SUR', 'A', 1),
	(201, 'SUPERMERCADO DIEFER S.R.L.', '.', '80029231-6', '510147', 'ACCESO SUR', 'A', 1),
	(202, 'DEL PAPITO GROUP S.A.', '.', '80047265-9', '0', '.0', 'A', 1),
	(203, 'GILBERTO GALEANO NARVAEZ', '.', '3463431-2', '.', 'CAAGUAZU', 'A', 1),
	(204, 'DESPENSA FRUTIORTICOLA', '.', '4812721-3', '0', 'PASTOREO', 'A', 1),
	(205, 'SOMMERFELD KOMITE', '.', '80015343-0', '0', 'SOMMERFELD', 'A', 1),
	(206, 'SILVIA ROA', '.', '3824688-0', '.', 'LUQUE', 'A', 1),
	(207, 'CASA GRUTTER S.A.', '.', '80000447-7', '215177000', 'AVDA. DEFENSORES DEL CHACO - ABASTO', 'A', 1),
	(208, 'HUGO CESAR RUIZ DIAZ', '.', '1133540-8', '981802587', 'LAS RESIDENTAS N 472 - LUQUE', 'A', 1),
	(209, 'EMPANADAS ÑA CRISTINA S.A.', '.', '80051460-2', '946508', 'VILLA ELISA', 'A', 1),
	(210, 'ELID S.A.', '.', '80055024-2', '.', 'ACCESO SUR -ÑEEMBY', 'A', 1),
	(211, '4JJJJ S.R.L.', '.', '80019666-0', '781588', 'LIMPIO', 'A', 1),
	(212, 'REPRETEC TRADING LTDA.', '.', '88888801-5', '5,54535E+11', 'RUA JOINVILLE 304 EDIF.ATHON', 'A', 1),
	(213, 'VICTOR BELOTTO', '.', '1881200-7', '0', 'CAAGUAZU', 'A', 1),
	(214, 'DESPENSA ANABELL', '.', '4016866-2', '.', 'PASTOREO', 'A', 1),
	(215, 'CINTHIA MARKOVICS', '.', '1227444-5', '0', 'FDO DE LA MORA- ZONA SUR', 'A', 1),
	(216, 'CARLOS FLEITAS', '.', '528799-5', '983471205', 'LUQUE', 'A', 1),
	(217, 'CECILIO GALEANO', '.', '1902872-5', '981949573', 'SAN LORENZO', 'A', 1),
	(218, 'DISTRIBUIDORA ARCO IRIS', '.', '4112161-9', '.', 'ITAGUA', 'A', 1),
	(219, 'ALCIDES RODRIGUEZ', '.', '4644681-8', '.', 'LUQUE', 'A', 1),
	(220, 'EMPANADAS TIO JULIO', '.', '4637827-8', '0', 'LUQUE', 'A', 1),
	(221, 'FLORENCIO GOMEZ ZARATE', '.', '968536-7', '982827936', 'NAAWA C/ BRITEZ BORGES - LUQUE', 'A', 1),
	(222, 'CPA S.A.E.', '.', '80064728-9', '0', 'BAQUERIA', 'A', 1),
	(223, 'DISTRIBUIDORA VERA', '.', '4436662-0', '981850063', 'LUQUE', 'A', 1),
	(224, 'COMERCIAL VIRGEN DEL ROSARIO S.R.L.', '.', '80028327-9', '0982 888901', 'JAVIER BOGARIN ESQ. CAPITAN BADO', 'A', 1),
	(225, 'FELIX MIGUEL SUSO GIMENEZ', '.', '1687945-7', '985240157', 'BENIGNO GONZALEZ Nª 564 E/ MCAL. ESTIGAR', 'A', 1),
	(226, 'COMERCIAL LOS HERMANOS DE FERNANDO MEDIN', '.', '1593701-1', '983474186', 'LIMPIO', 'A', 1),
	(227, 'JUAN BENITEZ LEGUIZAMON', '.', '2399939-0', '961781690', '5TA CIA YKUADURE - LUQUE', 'A', 1),
	(228, 'PANADERIA LUIS MIGUEL BENITEZ', '.', '4467333-7', '986480962', 'AREGUA', 'A', 1),
	(229, 'ROSA LUNA TERMOS', '.', '4626375-6', '0', 'CLAUDIO ARRUA 670 Y SIMON BOLIVAR', 'A', 1),
	(230, 'CONFITERIA ESPINOLA', '.', '2697398-7', '992887930', 'LUQUE', 'A', 1),
	(231, 'DANIEL DUARTE MARTINEZ', '.', '4221352-5', '0', 'LAURELTY LUQUE', 'A', 1),
	(232, 'PIZZERIA LA PORTEÑA', '.', '3315966-1', '992578220', 'LUQUE', 'A', 1),
	(233, 'PANADERIA SAN JUAN - CALLE I', '.', '1295280-0', '0', 'CALLE I - SAN LORENZO', 'A', 1),
	(234, 'LEVI ZACHARIAS', '.', '2440074-2', '971.418.081', 'CAMPO 24', 'A', 1),
	(235, 'BERNARDO GOMEZ', '.', '806777-5', '983554754', 'LAURELTY LUQUE', 'A', 1),
	(236, 'ALIMENTOS Y SERVICIOS S.R.L.', '.', '80022202-4', '0', 'AVDA. LUIS ARGAÑA Y BRUNO GUGGIARI', 'A', 1),
	(237, 'PANADERIA RODRIGUEZ', '.', '00000000-0', '981653657', 'LAURELTY LUQUE', 'A', 1),
	(238, 'TERESA OLMEDO', '.', '383775-0', '0', 'SAN LORENZO', 'A', 1),
	(239, 'CARGIL AGROPECUARIA S.A.C.I.', '.', '80005966-2', '0', 'CACILLA', 'A', 1),
	(240, 'ACOSTA PAREDES OSCAR RAMON', '.', '1.206.102', '0', 'JUAN M FRUTOS', 'A', 1),
	(241, 'JUAN CARLOS RODRIGUEZ', '.', '2838502-0', '981653657', 'LAURELTY LUQUE', 'A', 1),
	(242, 'SERGIO VERA', '.', '4689188-9', '649303', 'LUQUE - CALLE LA VICTORIA', 'A', 1),
	(243, 'NADIA NATALI LEZCANO MOLINAS', '.', '3782804-5', '984764324', 'LUQUE', 'A', 1),
	(244, 'AGRICOLA SAN FRANCISCO', '.', '6175226-6', '984.778.588', '0', 'A', 1),
	(245, 'BLANCA CELINO AQUINO', '.', '3461278', '0', 'CAMPO 9', 'A', 1),
	(246, 'ALCIONE MACHADO BOROWECE', '.', '6218965-4', '981.807.120', 'CURUAGUTY', 'A', 1),
	(247, 'LIRIO BARAZETTI', '.', '3576488-0', '0', 'CURUGUATY', 'A', 1),
	(248, 'VICENTA RESQUIN', '.', '1675491-3', '648894', 'TREBOL CASI CAP INSFRAN', 'A', 1),
	(249, 'SEMIC - S.A.', '.', '80032974-0', '528.222.732', 'CAMPO 9', 'A', 1),
	(250, 'RICOLI S.A.', '.', '80069827-4', '600370', 'MCAL. LOPEZ - ASUNCION', 'A', 1),
	(251, 'ULTRA VELOZ S.A.', '.', '80032815-9', '0522-43605', 'CAAGUAZU', 'A', 1),
	(252, 'RAMON CARDOZO', '.', '3880272-4', '981.929.805', 'BARRERO', 'A', 1),
	(253, 'PORÁ S.A.', '.', '80080239-0', '0', 'CHACO', 'A', 1),
	(254, 'LIZ ROSSANA FERREIRA FERNANDEZ', '.', '3499167-0', '983777492', '4TO. BARRIO B. CABALLERO - LUQUE', 'A', 1),
	(255, 'UNI SAL S.A.', '.', '80021298-3', '21752377', '0', 'A', 1),
	(256, 'CORNELIO ALFF', '.', '2120634-1', '528.222.336', 'CAMPO 9', 'A', 1),
	(257, 'PABLINA QUINTANA', '.', '1290920-3', '584714', 'CALLE I SAN LORENZO', 'A', 1),
	(258, 'LAURA BOGADO', '.', '2970170-8', '300986', 'RCA. ARGENTINA - LAMBARE', 'A', 1),
	(259, 'CONFITERIA JOSEPH', '.', '4728433-1', '551920', 'CACIQUE LAMBARE CASI FNDO MORA', 'A', 1),
	(260, 'ALBERTO CORONEL', '.', '1163588-6', '971474628', 'AMERICO PICCO CASI LIBANO', 'A', 1),
	(261, 'PURO SABOR DE SILVANA RIVEROS', '.', '3375787-9', '906403', 'CACIQUE LAMBARE', 'A', 1),
	(262, 'AGUSTINA SENA', '.', '1051808-8', '981118789', 'FRACCION SAN CARLOS MANZ. 3940 LOTE 17 -', 'A', 1),
	(263, 'MIRIAN PORTILLO PEREZ', '.', '1773902-0', '982787107', 'LAS LOMITAS - ÑEMBY - CALLE MUNICIPAL -', 'A', 1),
	(264, 'DOÑA BLANCA', '.', '385158-3', '647830', 'LUQUE', 'A', 1),
	(265, 'SUPERMERCADO GUARANI SRL', '.', '80002449-4', '500747', 'RUTA MCAL ESTIGARRIBIA KM7', 'A', 1),
	(266, 'ASOCIACION MOVIMIENTO AGRARIO POPULAR', '.', '80050866-1', '372622', 'CHILE CASI ROMA - ASUNCION', 'A', 1),
	(267, 'ANA MARIA FIGUEREDO PEÑA', '.', '2963873-9', '983486974', 'ITAUGUA KM 24', 'A', 1),
	(268, 'ISABELINO ZAYAS CACERES', '.', '3449417-0', '971729396', 'BARRIO NUEVA ASUNCION AREGUA', 'A', 1),
	(269, 'AJ S.A. CALIDAD ANTE TODO', '.', '80009641-0', '4141141', 'ITAUGUA', 'A', 1),
	(270, 'PASTAS TIA ESTHER', '.', '1055553-6', '960-178', 'ÑEMBY', 'A', 1),
	(271, 'MATIAS ROMERO', '.', '1011349-5', '0', 'RUTA 2 - ARATIRI', 'A', 1),
	(272, 'PANADERIA LA CAAGUACEÑA SIN RUC', '.', '0', '45.340.159', 'CAPIIBARY', 'A', 1),
	(273, 'QUIERO MAS SRL', '.', '80002585-7', '0.', 'ASUNCION', 'A', 1),
	(274, 'GAMELL S.A.', '.', '80003699-9', '224.630.229', 'RUTA 1 KM 29', 'A', 1),
	(275, 'MABEL BENITEZ', '.', '1983378-4', '982.335.081', 'IPACARAY', 'A', 1),
	(276, 'PANADERIA ALFREDITO', '.', '1205947', '982905267', 'ÑEMBY', 'A', 1),
	(277, 'VANDUR KAPPES', '.', '4243864-0', '981791599', 'CRES BURGER', 'A', 1),
	(278, 'INKESA', '.', '80065557-5', '0', 'OVIEDO', 'A', 1),
	(279, 'PANADERIA DON PEDRO', '.', '1220283', '982785090', 'ÑEMBY', 'A', 1),
	(280, 'MOLINOS HARINEROS KAARENDY POTY SACI', '.', '80001608-4', '0', 'ASUNCION', 'A', 1),
	(281, 'EMPRESUP S.A.', '.', '80052800-0', '579100', 'JULIO CORREA Nº 115', 'A', 1),
	(282, 'MANUEL ANTONIO JARA', '.', '1845071-7', '584714', 'CALLE I SAN LORENZO', 'A', 1),
	(283, 'GUSTA MAS PASTAS Y PANIFICADOS', '.', '235775-5', '281491', 'ARTIGAS, ASUNCION', 'A', 1),
	(284, 'COMERCIAL AL PASO DE RAFAEL BENITEZ GONZ', '.', '1766699-6', '985896757', 'CAMINO LUQUE AREGUA', 'A', 1),
	(285, 'ALBERO COMERCIAL', '.', '2126117-2', '0976-192095', '0', 'A', 1),
	(286, 'DIAZ E HIJOS SA', '.', '80013876-7', '523260/2', 'CEFERINO RUIS Y ALGODONAL', 'A', 1),
	(287, 'INDUSTRIALIZADORA  DE HARINA S.A.I.C.', '.', '80005687-6', '0', 'SA VA LE QUE', 'A', 1),
	(288, 'AGRO VETERINARIA PARANA', '.', '1323554-0', '0', 'CAMPO 9', 'A', 1),
	(289, 'PANADERIA GABRIELITO DE YSABEL NOGUERA', '.', '1441842-8', '0', 'RUTA A ÑEMBY', 'A', 1),
	(290, 'AGRO VILL', '.', '4220893-9', '982382274', 'J. AUGUSTO SALDIVAR', 'A', 1),
	(291, 'VILLA MADRID S.A.', '.', '80013652-7', '021 232187/8', 'LIMPIO', 'A', 1),
	(292, 'MARIA CONCEPCION', '.', '12061037-9', '0', '0', 'A', 1),
	(293, 'BLANCA ELIZABETH RUID DIAZ CABRERA', '.', '5285321-7', '0', '0', 'A', 1),
	(294, 'CARNICERIA KRESSBURGER', '.', '4243864-0', '981.791.599', '0', 'A', 1),
	(295, 'SZUMANSKI ADEMIR', '.', '4285317-6', '0', '0', 'A', 1),
	(296, 'NELLY FERNANDEZ', '.', '3698863-4', '0', 'CAMPO 9', 'A', 1),
	(297, 'MARIA CONCEPCION SALINA DE SOSA', '.', '1206137-9', '0', '0', 'A', 1),
	(298, 'CLARA DUARTE', '.', '2156062-5', '971772933', 'CAMPO 9', 'A', 1),
	(299, 'FERNANDO MEDINA REYES', '.', '1593701-1', '982787015', 'LIMPIO - PIQUETE CUE', 'A', 1),
	(300, 'DANIEL GONZALEZ', '.', '2851906-0', '0', 'ÑEEMBY', 'A', 1),
	(301, 'OLINDA MARTINEZ DE DUARTE', '.', '851057-1', '0', 'LUQUE', 'A', 1),
	(302, 'DYKSA', '.', '80060199-8', '984261477', 'OVIEDO', 'A', 1),
	(303, 'COMERCIAL AA', '.', '1935893-8', '0981 561980', 'ASUNCION', 'A', 1),
	(304, 'PANADERIA L5', '.', '1860864-7', '0', 'J.A. SALDIVAR', 'A', 1),
	(305, 'PASTAS SAN JOSE', '.', '4408648-2', '994153200', 'ÑEMBY', 'A', 1),
	(306, 'PANADERIA LA CAAGUAZEÑA DE ALDO GONZALEZ', '.', '4768257-4', '0', 'CAPIIBARY', 'A', 1),
	(307, 'SUPERMERCADO LA PREFERIDA', '.', '826981-5', '0', '5', 'A', 1),
	(308, 'SUPERMERCADO PINDO', '.', '4898498-1', '983.651.497', 'CACILLA 2', 'A', 1),
	(309, 'DISTRIBUIDORA DIAGONAL LUISA NUÑEZ', '.', '1987665-3', '981433956', 'CAACUPE', 'A', 1),
	(310, 'PIZZERIA TANO EL ITALIANO- ANA DOMINGUEZ', '.', '2358878-0', '0', 'BONIFACIO OVANDO CASI CACIQUE', 'A', 1),
	(311, 'SUPER MERCADO SANTA ELENA', '.', '566028-9', '0522-', 'CAAGUAZU', 'A', 1),
	(312, 'DEL PAPITO GROUP SACI', '.', '80047265-9', '0', 'COROBNEL OVIEDO', 'A', 1),
	(313, 'GRACIELA FERNANDEZ DE OJEDA', '.', '1876289-1', '981164614', 'DOMINGO SAVIO 187 - CAPIATA RUTA 2', 'A', 1),
	(314, 'NELIA CONCEPCION GARCIA GONZALEZ', '.', '3234341-8', '981961599', 'CAPIATA KM 18 RUTA 1', 'A', 1),
	(315, 'MIRNA BEATRIZ AGUILERA', '.', '2508661-8', '0', 'SAN ANTONIO', 'A', 1),
	(316, 'COMERCIAL LAURITA', '.', '4649112-0', '0', 'SANTA ROSA', 'A', 1),
	(317, 'VERDURERIA LARY', '.', '1856717-7', '0', 'OVIEDO', 'A', 1),
	(318, 'SUPERMERCADO CUATRO VIENTO', '.', '80063697-0', '0983-841284', 'OVIEDO', 'A', 1),
	(319, 'TRIPLICE TRANSPORTE Y LOGISTICA S.A.', '.', '80071588-8', '45 3027-2141', 'BRASIL', 'A', 1),
	(320, 'COMERCIAL CARLITO', '.', '2428783-0', '0', 'OVIEDO', 'A', 1),
	(321, 'IL POSITANO S.A.', '.', '80083848-3', '991188602', 'RCA. ARGENTINA - LAMBARE', 'A', 1),
	(322, 'COOP. DURANGO LTDA', '.', '80020348-8', '.', 'DURANGO', 'A', 1),
	(323, 'COOPERATIVA CAMPO.9', '.', '80004209-3', '.', 'DURANGO', 'A', 1),
	(324, 'COOPERATIVA CAMPO.10', '.', '80020348-8', '.', 'DURANGO', 'A', 1),
	(325, 'COMERCIAL CUBILLA', '.', '3992709-1', '.', 'CAPIIBARY', 'A', 1),
	(326, 'COMERCIAL HERMANOS TORREZ', '.', '1959788-6', '.', 'CAPIIBARY', 'A', 1),
	(327, 'COMERCIAL BARETTO', '.', '2656986-8', '.', 'CRUGUATY', 'A', 1),
	(328, 'FRUTERIA VERDULERIA FERNANDITO', '.', '6018911-8', '0', 'CURUGUATY', 'A', 1),
	(329, 'MINI SUPER BIGOTE', '.', '1366421', '.', 'CRUGUATY', 'A', 1),
	(330, 'FRUTERIA J.R.', '.', '3430624', '.', 'CRUGUATI', 'A', 1),
	(331, 'COMERCIAL NUÑEZ', '.', '2601398-3', '.', 'YASY CAÑY', 'A', 1),
	(332, 'VERDULERIA SAN MIGUEL', '.', '4353516-0', '.', 'YASY CAÑY', 'A', 1),
	(333, 'CAPRICORNIO COMERCIAL', '.', '525388-8', '.', 'YRYBUCUA', 'A', 1),
	(334, 'COMERCIAL JOHNNY JAVIER', '.', '1412764-4', '.', 'N', 'A', 1),
	(335, 'AUTOCERVICE ANA ALICE', '.', '1303435-9', '.', 'N', 'A', 1),
	(336, 'COMERCIAL DIANITA DE JOSE SANTACRUZ C.', '.', '1303435-9', '.', 'YRYBUCUA', 'A', 1),
	(337, 'COMERCIAL ACUARIOS DE AMERICO PENAYO M.', '.', '1002002-0', '.', 'YBYRUCUA', 'A', 1),
	(338, 'COMERCIAL FREDY NOELIA', '.', '44444401-7', '.', 'N', 'A', 1),
	(339, 'PANADERIA COMFITERIA UNION', '.', '6113926-2', '.', 'N', 'A', 1),
	(340, 'COMERCIAL LA ECONOMIA', '.', '6293817-7', '.', 'CURUGUATY', 'A', 1),
	(341, 'MINIMERCADO AVENIDA', '.', '4383313-6', '.', 'CURUGUATY', 'A', 1),
	(342, 'FRUTERIA DIEGO BELEN', '.', '4396639-0', '.', 'N', 'A', 1),
	(343, 'FRUTERIA RAFAELITO', '.', '4012471-1', '.', 'CRUGUATY', 'A', 1),
	(344, 'FRUTERIA CACTUS', '.', '3252008-5', '.', 'CRUGUATY', 'A', 1),
	(345, 'MINI MERCADO NOELIA', '.', '4064422-7', '.', 'CRUGUATY', 'A', 1),
	(346, 'CASA DANNY', '.', '3675701-2', '.', 'CRUGUATY', 'A', 1),
	(347, 'DESPENSA DANNY ANA', '.', '1723555', '.', 'YRYBUCUA', 'A', 1),
	(348, 'PANADERIA LA CAAGUAZEÑA SIN RUC', '.', '44444401-7', '0', 'OVIEDO', 'A', 1),
	(349, 'ISLA ALTA S.A.', '.', '80064387-9', '615045', 'EUSEBIO LILIO CASI DENIS ROA', 'A', 1),
	(350, 'HERMINIA BARRETO', '.', '1005210-0', '0', 'MARIANO ROQUE ALONSO', 'A', 1),
	(351, 'DAVID RIEHL', '.', '758388-5', '0', '.', 'A', 1),
	(352, 'COMERCIAL EL SOL', '.', '1510309-9', '0', 'NAVIDAD', 'A', 1),
	(353, 'COMERCIAL DANNY', '.', '4191851-7', '0', '16', 'A', 1),
	(354, 'COMERCIAL GALEANO', '.', '2309086-3', '0', 'GUAYAIBI', 'A', 1),
	(355, 'COMERCIAL VIENES', '.', '0', '0', '0', 'A', 1),
	(356, 'AUTOSERVICE MOREL HERMANOS', '.', '1893848-5', '0', 'SANTA ROSA', 'A', 1),
	(357, 'CASA LIZ', '.', '1297344-0', '0', '0', 'A', 1),
	(358, 'CASA ÑA NINFA', '.', '44444401-7', '0', 'SANTA ROSA DEL AGUARAY', 'A', 1),
	(359, 'DESPENSA NANCY', '.', '1856710-0', '0', '0', 'A', 1),
	(360, 'COMERCIAL LUISITO', '.', '44444401-7', '0', '0', 'A', 1),
	(361, 'COMERCIAL D.L.', '.', '1460674-7', '0', '0', 'A', 1),
	(362, 'CASA LUJANI', '.', '3805621-6', '0', 'SANTA ROSA', 'A', 1),
	(363, 'COMERCIAL MARIA AUXILIADORA', '.', '5148525', '0', 'SANTA ROSA DEL AGUARAY', 'A', 1),
	(364, 'CASA MABELITA', '.', '1578050-3', '0', '0', 'A', 1),
	(365, 'COMERCIAL CARLOS', '.', '1786549-2', '0', '0', 'A', 1),
	(366, 'DESPENSA GUAYAIBI', '.', '2436212-3', '0', '0', 'A', 1),
	(367, 'PANADERIA NUESTRA SR DE ASUNCION', '.', '0', '0', '0', 'A', 1),
	(368, 'MATHIAS COMERCIAL', '.', '4400861-9', '0', 'YASY CAÑY', 'A', 1),
	(369, 'CASA LAS HERMANITAS', '.', '1297345-9', '0', 'CAMINO A SAN PEDRO (SANTA ROSA D AGUARAY', 'A', 1),
	(370, 'MINI MERCADO ALVA AURORA', '.', '2487791-3', '0', 'GENERAL RESQUIN', 'A', 1),
	(371, 'MINI MERCADO LA FAMILIA', '.', '1801880-7', '0', 'SANTA ROSA', 'A', 1),
	(372, 'DESPENSA MARIA AUXILIADORA', '.', '4027135', '0', 'SANTA ROSA', 'A', 1),
	(373, 'COMERCIAL VICKY', '.', '4025466-6', '0', 'SANTA ROSA', 'A', 1),
	(374, 'MERCADO UNI MA', '.', '6304499-4', '0', 'LIBERACION', 'A', 1),
	(375, 'COMERCIAL SAN JUAN', '.', '2661906-7', '0', 'LIBERACION', 'A', 1),
	(376, 'COMERCIAL VILLAGRA', '.', '1703312-8', '0', 'LIBERACION', 'A', 1),
	(377, 'COMERCIAL A.Y.R.', '.', '4406490-0', '0', 'JEJUI', 'A', 1),
	(378, 'CENTRO COMERCIAL VERA', '.', '2244349-5', '.', 'GENERAL RESQUIN', 'A', 1),
	(379, 'SUPERCITO ANDY', '.', '2984114-3', '.', 'GENERAL RESQUIN', 'A', 1),
	(380, 'DESPENSA LUZ DIANNA', '.', '2699564-6', '0', 'SANTA ROSA DEL AGUARAY', 'A', 1),
	(381, 'COMERCIAL C. M.', '.', '1801880-7', '0', 'DEP.SAN PEDRO LIMA', 'A', 1),
	(382, 'DAVID Z PENNER', '.', '1497629-3', '0', 'COLONIA SOMMERFELD', 'A', 1),
	(383, 'SUSANA SCHROEDER', '.', '2115707-3', '0', 'CALLE  3', 'A', 1),
	(384, 'JUSTINA BAEZ DE AMARILLA', '.', '888990', '0', 'LUQUE', 'A', 1),
	(385, 'PANADERIA FATIPAN', '.', '2062430-1', '0', 'EUSEBIO LILLIO - ASUNCION', 'A', 1),
	(386, 'GRUPO J.N. SACI', '.', '80034735-8', '551823', 'FERNANDO DE LA MORA CASI CACIQUE LAMBARE', 'A', 1),
	(387, 'PANADERIA GARCIA DE CATALINO GARCIA', '.', '1213167-9', '981265173', 'LEOPARDI SUR - SAN LORENZO', 'A', 1),
	(388, 'HORNEADITAS', '.', '1482851-0', '985267103', 'FRENTE MUNIC FERNANDO MORA', 'A', 1),
	(389, 'CHIPERIA SOL NACIENTE', '.', '1470614', '972156931', 'CAMPO 9', 'A', 1),
	(390, 'COMERCIAL AMAMBAY', '.', '917095-2', '0', 'MBURUKUYA', 'A', 1),
	(391, 'DESPENSA SAN BLAS', '.', '3368676-9', '0', 'YGATYMI', 'A', 1),
	(392, 'COMERCIAL PACHER', '.', '388960-2', '0', 'YGATYMI', 'A', 1),
	(393, 'SUPERMERCADO MOREIRA', '.', '1952885-0', '0', 'YGATYMI', 'A', 1),
	(394, 'COMERCIAL LA RUEDA', '.', '2264212-9', '0', 'VILL YGATIMI', 'A', 1),
	(395, 'GREFRAN SRL', '.', '80008711-9', '.', 'RUTA 10 JASY CAÑY', 'A', 1),
	(396, 'COMERCIAL RINER', '.', '4434293-4', '0', 'YVY PORA', 'A', 1),
	(397, 'FELIPA ROMERO', '.', '570797-8', '981659831', 'SAN LORENZO', 'A', 1),
	(398, 'NARANJITO COMPRA DE ANTONIO APEZTEGUIA', '.', '4511118-9', '.', 'NARANJITO', 'A', 1),
	(399, 'COMERCIAL GONZALEZ', '.', '2296618', '1', 'YASY CAÑY', 'A', 1),
	(400, 'DESPENSA FIDE', '.', '3564447-8', '.', 'IGUATIMI', 'A', 1),
	(401, 'DESPENSA 4.HERMANOS', '.', '3327104', '.', 'IGUATUMI', 'A', 1),
	(402, 'PANADERIA SAN EXPEDITO', '.', '137065', '.', 'IGUATIMI', 'A', 1),
	(403, 'VERDURERIA NESTOR Y LORI', '.', '3013164', '.', 'CRUGUATY', 'A', 1),
	(404, 'PANADERIA MULTIPAN', '.', '1098554-9', '.', 'CRUGUATY', 'A', 1),
	(405, 'COMERCIAL MERLIS', '.', '2526592-0', '.', 'CRUGUATY', 'A', 1),
	(406, 'PANADERIA UNION', '.', '111111', '.', 'CRUGUATY', 'A', 1),
	(407, 'RUBEN COMERCIAL', '.', '1333529-4', '.', 'CAPIIBARY', 'A', 1),
	(408, 'PANADERIA MIL MARAVILLA', '.', '3002177-4', '.', 'CAPIGUARI', 'A', 1),
	(409, 'COMERCIAL ECONOMY', '.', '1267813-9', '.', 'CAPIGUARY', 'A', 1),
	(410, 'COMERCIAL MARILDA', '.', '2382454-9', '.', 'CAPIGUARY', 'A', 1),
	(411, 'MINIMERCADO SADY', '.', '39394408', '.', 'COLONIA BURUCUYA', 'A', 1),
	(412, 'DESPENSA ADELA', '.', '2994781-2', '0', 'COLONIA BURUCUJA', 'A', 1),
	(413, 'PANADERIA SAN CAYETANO', '.', '1026736-0', '.', 'LIBERACIONES', 'A', 1),
	(414, 'PANADERIA DARIO ROMERO', '.', '3249243', '.', 'IGUATIMI', 'A', 1),
	(415, 'PANADERIA MINGA', '.', '3950192-2', '.', 'IGUATIMI', 'A', 1),
	(416, 'DESPENSA PIRIS', '.', '1770719', '.', 'IGUATIMI', 'A', 1),
	(417, 'DESPENSA PISCIS', '.', '1770719-6', '0', 'VILLA YGATIMI', 'A', 1),
	(418, 'ECE INGENIERIA S.R.L.', '.', '80033554-6', '.', 'C.D.E. KM.6.5', 'A', 1),
	(419, 'SEVERIANO ESCOBAR', '.', '2537381-1', '.', 'CAMPO.9', 'A', 1),
	(420, 'FORRAJERIA LA LUQUEÑA', '.', '1194550-8', '642-794', 'LUQUE', 'A', 1),
	(421, 'COMERCIAL SAN CAYETANO', '.', '4383374-8', '.', 'NAVIDAD', 'A', 1),
	(422, 'PANADERIA NUESTRA SRA DE LA ASUNCION', '.', '44444401-7', '.', 'SANTA ROSA', 'A', 1),
	(423, 'SUPERMERCADO SCHNEIDER', '.', '7127803-6', '.', 'SANTA ROSA', 'A', 1),
	(424, 'PANADERIA PAN CALIENTE', '.', '3174034-0', '.', 'SANTA ROSA', 'A', 1),
	(425, 'COMERCIAL MONEY', '.', '1856710-0', '.', 'GENERAL RESQUIN', 'A', 1),
	(426, 'SUPERMERCADO VIRGEN DE FATIMA', '.', '1623269-0', '.', 'GENERAL RESQUIN', 'A', 1),
	(427, 'MINI MERCADO FATIMA', '.', '1979122-4', '.', 'GENERAL RESQUIN', 'A', 1),
	(428, 'MINI MERCADO COCA COLA', '.', '2456848-1', '.', 'LIMA', 'A', 1),
	(429, 'MINI MERCADO SANTO DOMINGO', '.', '3741588-3', '.', 'GENERAL RESQUIN', 'A', 1),
	(430, 'PANADERIA SAN BLAS', '.', '4484281-3', '0', 'LUQUE', 'A', 1),
	(431, 'COMERCIAL MOREL HERMANOS', '.', '3191801-8', '.', 'DEP.SAN PEDRO LIMA', 'A', 1),
	(432, 'DISTRIBUIDORA MANDUCA DE HECTOR VERA', '.', '3463970-5', '984499000', 'CIUDAD DEL ESTE', 'A', 1),
	(433, 'GREGORIO QUINTANA', '.', '44444401-7', '981.789.119', 'OLEARY', 'A', 1),
	(434, 'DISTRIBUIDORA SAN ANTONIO', '.', '2428313-4', '981804795', '0', 'A', 1),
	(435, 'LOURDES MARTINEZ', '.', '4469336-2', '972793657', 'OVIEDO', 'A', 1),
	(436, 'CRISTIAN TORALES', '.', '5318610-9', '975925801', 'CAMPO 9', 'A', 1),
	(437, 'COMERCIAL SAN MIGUEL', '.', '4125522-4', '0', 'SONA SANTA ROSA', 'A', 1),
	(438, 'COMERCIAL SAN ESTEBAN', '.', '0', '0', '0', 'A', 1),
	(439, 'COMERCIAL ISIDORA', '.', '2631735-4', '0', 'YRYBUCUA', 'A', 1),
	(440, 'COMERCIAL MÚÑES', '.', '4671318-2', '0', 'SONA SANTA ROSA', 'A', 1),
	(441, 'COMERCIAL CAPRICORNIO', '.', '0', '0', 'SONA SANTA ROSA', 'A', 1),
	(442, 'ERDMAN HILDEBRAND HARDER', '.', '1495834-1', '0', 'COL. BERTHAL', 'A', 1),
	(443, 'COMERCIAL RENE SRL', '.', '80045878-8', '984850160', 'RUTA DE LAS RESIDENTAS - AREGUA', 'A', 1),
	(444, 'EMPRENDIMIENTOS MEDINA S.R.L', '.', '80105168-1', '982953433', 'AMERICO PICO - VILLA ELISA', 'A', 1),
	(445, 'ANTONIO MARQUES  MOMBACH', '.', '2505803-7', '985702439', 'TRONCAL 4', 'A', 1),
	(446, 'KALI SRL', '.', '80024162-2', '(021) 201515', 'G. RODRIGUEZ DE FRANCIA 1674 C/ OTAZU', 'A', 1),
	(447, 'DON JULIAN S.A', '.', '80090915-1', '21311098', 'BRUNO GUGGIERI C/ MBOCAYATY', 'A', 1),
	(448, 'ADOLFINA SANCHEZ', '.', '1887323-5', '982224007', 'ÑEMBY', 'A', 1),
	(449, 'JUAN CARLOS MARTINEZ', '.', '2311607-2', '0', 'OVIEDO', 'A', 1),
	(450, 'JUAN GIMENEZ', '.', '1249493-3', '0', 'LAURELTY LUQUE', 'A', 1),
	(451, 'DESPENSA JOSE CARLOS', '.', '1426077-8', '0', 'GUAJAYBY', 'A', 1),
	(452, '(COMERCIAL SAN JORGE)', '.', '1587318-8', '0', 'COLONIA ALMEIDA', 'A', 1),
	(453, 'COMERCIAL SOFIA', '.', '3482172-4', '0', 'COLONIA ALMEIDA', 'A', 1),
	(454, 'COMERCIAL ROQUELITO', '.', '1459047-6', '.', 'BARRIO SAN PEDRO', 'A', 1),
	(455, 'DESPENSA Y CARNICERIA MILAGRO', '.', '44444401-7', '.', 'BARRIO SAN PEDRO', 'A', 1),
	(456, 'COMERCIAL SAN JORGE DE MILCIADES OLMEDO', '.', '3720727-0', '.', 'JEJUI', 'A', 1),
	(457, 'MINI MERCADO JUAN FERNANDO', '.', '44444401-7', '.', 'NAVIDAD', 'A', 1),
	(458, 'DESPENSA LORENA', '.', '44444401-7', '1', 'LIBERACION', 'A', 1),
	(459, 'COMERCIAL RR', '.', '44444401-7', '.', '.', 'A', 1),
	(460, 'DESPENSA 2 HERMANOS', '.', '5358887-8', '.', '.', 'A', 1),
	(461, 'COMERCIAL OPEN CAR', '.', '3562159-1', '.', '.', 'A', 1),
	(462, 'COMERCIAL JESICA', '.', '44444401-7', '.', '.', 'A', 1),
	(463, 'DESPENSA SAN JORGE', '.', '1266980-6', '.', 'SANTA ROSA DEL AGUARAY', 'A', 1),
	(464, 'COMERCIAL SHISARRI', '.', '1063716-8', '.', '1', 'A', 1),
	(465, 'ALEXANDRA ZARZA', '.', '4652867-9', '3283009', 'RIO APA LAMBARE', 'A', 1),
	(466, 'PERLA VIRGINIA MORA MELGAREJO', '.', '2694284-4', '0982 642596', 'ALEMANIA 920 C/  AMERICO. PICCO', 'A', 1),
	(467, 'ORLANDO MOISES SOLIS', '.', '4662623-9', '0', 'ÑEMBY', 'A', 1),
	(468, 'DELIO CONTRERA  VEGA', '.', '4862668-6', '.', '16', 'A', 1),
	(469, 'ASOCIACION CALLE ESCUELA', '.', '80028334-1', '983746179', 'DR. SOSA CASI SOLDADO OVELAR FMORA Z SUR', 'A', 1),
	(470, 'PANADERIA NUTRIPAN DE GABRIELA VALLEJO', '.', '567339-9', '0981 105548', '10 DE AGOSTO - SAN LORENZO', 'A', 1),
	(471, 'CASA PEDRO GONZALEZ', '.', '3566845-8', '.', 'YASY CAÑY', 'A', 1),
	(472, 'CARLOS GONZALEZ', '.', '2596032-6', '.', 'YASY CAÑY', 'A', 1),
	(473, 'DESPENSA DAVALOS', '.', '80044983-5', '.', 'YBY PORA', 'A', 1),
	(474, 'SUPER SANTA ELENA', '.', '2887907-4', '0', 'CURUGUATY', 'A', 1),
	(475, 'MINIMERCADO PRIMAVERA', '.', '4102827-9', '0', 'CAPIIBARY', 'A', 1),
	(476, 'PANADERIA RUBIO', '.', '44444401-7', '.', 'CURUGUATY', 'A', 1),
	(477, 'DESPENSA QUIÑONEZ', '.', '44444401-7', '0', 'CURUGUATY', 'A', 1),
	(478, 'DESPENSA KARY', '.', '2346367-8', '.', 'CURUGUATY', 'A', 1),
	(479, 'DESPENSA 1º DE MAYO', '.', '44444401-7', '.', 'CURUGUATY', 'A', 1),
	(480, 'DESPENSA 2 DE ORO', '.', '4351060-4', '.', 'CURUGUATY', 'A', 1),
	(481, 'CASA  AMAMBAY', '.', '917095-2', '.', 'CAMINO A CAPIGUARY', 'A', 1),
	(482, 'DESPENSA EL BUEN GUSTO', '.', '44444401-7', '.', 'CAMINO A CAPIRAGUY', 'A', 1),
	(483, 'COMERCIAL SANTA MARIA', '.', '4200823-9', '.', 'LAGUNA P', 'A', 1),
	(484, 'DESPENSA LOS MELLISOS', '.', '44444401-7', '.', 'LAGUNA P.', 'A', 1),
	(485, 'COMERCIAL GARCIA', '.', '44444401-7', '.', 'CURUGUATY', 'A', 1),
	(486, 'COMERCIAL TRES HERMANOS', '.', '3249267-7', '.', 'CURUGUATY', 'A', 1),
	(487, 'COMERCIAL EL SURCO', '.', '959345-4', '.', 'CURUGUATYU', 'A', 1),
	(488, 'DESPENSA DAVID', '.', '44444401-7', '.', 'YBY PORA', 'A', 1),
	(489, 'COMERCIAL GREFRAN', '.', '44444401-7', '0', ' JASY CAÑY', 'A', 1),
	(490, 'COMERCIAL FRANCI', '.', '5452409-1', '0', 'SANTAROSA', 'A', 1),
	(491, 'OSCAR ALMIRON', '.', '4971848-7', '0', 'SANTA ROSA', 'A', 1),
	(492, 'SILVIA LILIANA BAEZ', '.', '1469399-2', '0', '0', 'A', 1),
	(493, 'PASTAS LA CRIOLLA S.R.L.', '.', '80009158-2', '981445088', 'CHILLE Y 23 PROYECTADA', 'A', 1),
	(494, 'U.C.D. Y CIA S.A.', '.', '80035089-8', '586463', 'MANUEL ORTIZ GUERRERO CASI ROSA MARENGO', 'A', 1),
	(495, 'NELSON RAMON IRALA ARIAS', '.', '2493185-3', '983135681', 'LEOVIGILDA DE ROLON C/ GAUDULIA TORRES', 'A', 1),
	(496, 'AGUSTIN RIOS OLMEDO', '.', '2702588-8', '972200332', 'RUTA 2 - ARATIRI', 'A', 1),
	(497, 'ALBA ROSA INDUSTRIAL Y COMERCIAL S.A', '.', '80083296-5', '21661020', 'ALBINOMERNES C/ CHARLES DE GAULLE', 'A', 1),
	(498, 'COMERCIAL MILAGRO', '.', '4611325-8', '.', 'NAVIDAD', 'A', 1),
	(499, 'LAS VEGAS S.A', '.', '80077095-1', '.', 'RIO VERDE', 'A', 1),
	(500, 'MULTILAC SA', '.', '80030052-1', '976.941.480', 'RIO VERDE', 'A', 1),
	(501, 'MINIMERCADO MARISOL', '.', '957309-7', '.', 'AMINO A SAN PREDRO', 'A', 1),
	(502, 'DISTRIBUIDORA AGUA VIVA', '.', '2396537-1', '.', 'LIMA', 'A', 1),
	(503, 'DISTRIBUIDORA NARDI', '.', '1075819-4', '.', 'CAMINO A GUAYAIBI', 'A', 1),
	(504, 'SUPERMERCADO LILIAN MARICELA', '.', '3356412-4', '.', 'GENERAL RESQUIN', 'A', 1),
	(505, 'COMERCIAL MARISON', '.', '1412803-9', '0', 'CAAPIIBARY', 'A', 1),
	(506, 'FERRETERIA GONZALEZ', '.', '4743729-4', '0', 'JEJUI', 'A', 1),
	(507, 'COMERCIAL BERNAL', '.', '334601-3', '0', 'SANTA ROSA', 'A', 1),
	(508, 'SUPER BUEN PRECIO', '.', '1924662-5', '.', 'CAMINPO A SAN PEDRO', 'A', 1),
	(509, 'SUPERMERCADO SANTA ROSA', '.', '1383868-7', '.', 'SANTA ROSA', 'A', 1),
	(510, 'COMERCIAL DOS HERMANITOS', '.', '1340557-8', '0', 'SAN PEDRO', 'A', 1),
	(511, 'COMERCIAL MARQUITOS DE MENA LOPEZ NORMA', '.', '3230334-3', '.', 'SAN PEDRO DEL YCAUMANDIYU', 'A', 1),
	(512, 'SUPERMERCADO ANGUZ', '.', '1520206-2', '.', 'SAN PEDRO', 'A', 1),
	(513, 'COMERCIAL HINO', '.', '1517749-1', '0', 'SAN PEDRO', 'A', 1),
	(514, 'DESPENSA LA FAMILIA', '.', '44444401-7', '0', 'SAN PEDRO', 'A', 1),
	(515, 'AGROVETERINARIA SAN ISIDRO', '.', '4419421-8', '.', 'NUEVA GERMANIA', 'A', 1),
	(516, 'COMERCIAL MINA', '.', '2975274-4', '.', 'NUEVA GERMANIA', 'A', 1),
	(517, 'COMERCIAL  MANCERO', '.', '2073849-8', '0.', 'SANTA ROSA', 'A', 1),
	(518, 'AGRO MARIPAN S.A.', '.', '80062375-0', '54.144.188', 'VILLARICA', 'A', 1),
	(519, 'VERDULERIA RAFAELITO', '.', '4012471-1', '0', 'CURUGUATY', 'A', 1),
	(520, 'ABRAM  BARRETO', '.', '44444401-7', '0', 'SANTA ROSA', 'A', 1),
	(521, 'PIZZA VICIO', '.', '7466588-0', '0', 'CLAUDIO ARRUA 840 ESQ. MAYOR ULIAMBRE', 'A', 1),
	(522, 'DAVID YOURK VALDEZ', '.', '3638630', '0', 'EN LIMPIO', 'A', 1),
	(523, 'CATVIL  EXPRESS', '.', '3476869-6', '0', '0', 'A', 1),
	(524, 'AUTOSERVICE LORENA', '.', '3174095-2', '0', 'BARRIO SAN VICENTE', 'A', 1),
	(525, 'ELVIO BARRETO', '.', '1205953-6', '0', 'SANTA ROSA', 'A', 1),
	(526, 'COMERCIAL PEDRO GONZALEZ', '.', '3566845', '0', 'SANTA ROSA', 'A', 1),
	(527, 'FRUTERIA SAN PEDRO', '.', '5575967-0', '.', 'SAN PEDRO DEL YCUAMANDIYU', 'A', 1),
	(528, 'DESPENSA LAURY', '.', '2383362-9', '.', 'CAMINO A SAN PERDO DEL YCUAMANDIYU', 'A', 1),
	(529, 'COMERCIAL LA PREFERIDA', '.', '2687588-8', '.', 'NAVIDAD', 'A', 1),
	(530, 'DESPENSA ASUGA', '.', '2404902-6', '.', 'NAVIDAD', 'A', 1),
	(531, 'YOLANDA ROMAN', '.', '2368435-6', '0', 'FERNANDO DE LA MORA ZONA SUR', 'A', 1),
	(532, 'ELDON RODRIGUEZ', '.', '2951375-8', '982491400', 'LAMBARE', 'A', 1),
	(533, 'FRUTERIA QUILMAS', '.', '6814246-3', '0', 'SANTA ROSA', 'A', 1),
	(534, 'COMERCIAL COLON', '.', '5731256-7', '0', 'SANTA ROSA', 'A', 1),
	(535, 'SHIRLEY PATRICIA  VILLALBA GOMEZ', '.', '4981635-7', '0', 'SANTA ROSA DEL AGUARAY', 'A', 1),
	(536, 'PANADERIA GOURMET', '.', '44444401-7', '0', 'J.A. SALDIVAR', 'A', 1),
	(537, 'MARWIN GOOSSEN', '.', '872617-5', '981170618', 'CHACO FILADELFIA', 'A', 1),
	(538, 'PANADERIA DOÑA BLANCA', '.', '4499910-0', '972961079', 'LAURELTY LUQUE', 'A', 1),
	(539, 'PASTA DIAZ', '.', '4324369-0', '0', 'OVIEDO', 'A', 1),
	(540, 'RIMERS COMERCIAL', '.', '4434293-4', '0', 'SANTA ROSA', 'A', 1),
	(541, 'DESPENSA EMY', '.', '4564967-7', '0', 'SANTA ROSA', 'A', 1),
	(542, 'DESPENSA BEGNINA DA ROSA', '.', '2161569-3', '0', 'SANTA ROSA', 'A', 1),
	(543, 'COMERCIAL EDISON', '.', '0', '0', 'SANTA ROSA', 'A', 1),
	(544, 'COMERCIAL SANTA TEREZA', '.', '2239000-6', '0', 'GUAYAIBY', 'A', 1),
	(545, 'DESPENSA SAN CAYETANO', '.', '44444401-7', '0', 'SANTA ROSA', 'A', 1),
	(546, 'CARMEN ROSA MENACHO', '.', '701627-1', '577112', 'CORONEL ROMERO 520 CASI DEF. CHACO - S.L', 'A', 1),
	(547, 'DANIEL H DRIEDGER', '.', '2440071-8', '0971-416947', 'COL, SOMMERFERLD', 'A', 1),
	(548, 'LUCIANO SANDOVAL', '.', '1182417-4', '0', '0', 'A', 1),
	(549, 'COMERCIAL SAN ANTONIO', '.', '3694014-3', '.', 'CORONEL OVIEDO', 'A', 1),
	(550, 'ROSSANA NUÑES', '.', '4057611-6', '981201049', 'RUTA 1 KM 22.5', 'A', 1),
	(551, 'LUIS EZEQUIEL ARCE', '.', '4174787-9', '0', 'LUQUE', 'A', 1),
	(552, 'CASA HIPOLITO RODAS', '.', '3368022-1', '.', 'SANTA ROSA', 'A', 1),
	(553, 'RUBEN FIGUEREDO RODAS', '.', '0', '0', '5', 'A', 1),
	(554, 'MOLINO SAN RAFAEL', '.', '1713580-0', '0293 932291', 'GUARAMBARE', 'A', 1),
	(555, 'SANTO DOMINGO SACI', '.', '80023312-3', '0', 'SANTA ROSA', 'A', 1),
	(556, 'JACOB BRAUN HARDER', '.', '3633035-3', '971.401.808', 'CAMPO 8', 'A', 1),
	(557, 'DESPENSA SAN MIGUEL DE JUANA RAMONA GAUT', '.', '1546082-3', '0', 'CAMINO A CAPIIBARY', 'A', 1),
	(558, 'AGROPECUARIA AGRO VERDE', '.', '4041208-3', '0', 'CAPIIBARY', 'A', 1),
	(559, 'MINI MERCADO LA ECONOMIA', '.', '2192091-5', '0', 'CAPIIBARY', 'A', 1),
	(560, 'FLORENCIO LOPEZ', '.', '1939796', '0', '0', 'A', 1),
	(561, 'ADELINO MORENO ALFONZO', '.', '2438001-6', '971482714', 'ZONA NORTE', 'A', 1),
	(562, 'ALMADA VERON , WALDINO OSMAR', '.', '1165331-0', '0', 'RUTA 2', 'A', 1),
	(563, 'ANA DELIA FRANCO', '.', '5434899-4', '0', 'CIUDAD DEL ESTE', 'A', 1),
	(564, 'ALMACEN MARIO DEL CARMEN', '.', '1394984-5', '0541-41596', 'VILLARICA', 'A', 1),
	(565, 'DESPENSA SANTA CATALINA', '.', '80053062-4', '0', 'SANTA ROSA', 'A', 1),
	(566, 'DESPENSA Nº 2', '.', '494589-1', '.', 'GENERAL RESQUIN', 'A', 1),
	(567, 'DESPENSA LETTY', '.', '44444401-7', '.', 'SANTA ROSA', 'A', 1),
	(568, 'DESPENSA SO`O PORA', '.', '1171524-3', '.', 'LIMA', 'A', 1),
	(569, 'DESPENSA A Y D', '.', '44444401-7', '.', 'GUAJAYBI', 'A', 1),
	(570, 'COMERCIAL EL PROGRESO', '.', '453191-4', '.', 'SAN PEDRO DEL YCUAMANDIYU', 'A', 1),
	(571, 'CLAN MAKY S.A.', '.', '80086697-5', '971381385', 'OVIEDO', 'A', 1),
	(572, 'CELSO BRITEZ CABALLERO', '.', '2142232-0', '981133157', 'AVELINO MARTINEZ, SAN LORENZO', 'A', 1),
	(573, 'WEIZEN DISTRIB. DE ALIMENTOS EIRELI', '.', '0', '85-862030', 'RUA GUARATINGUETA Nº 3.74', 'A', 1),
	(574, 'EDWIN P DRIEDGER', '.', '3790164-8', '972539040', 'COL, SOMMERFELD', 'A', 1),
	(575, 'COOPERATIVA ZACATECAS L.T.D.A.', '.', '80004209-3', '048-210534', 'SANTA ROSA', 'A', 1),
	(576, 'COMERCIAL J.F', '.', '5504955-9', '0', 'KURUGUATY', 'A', 1),
	(577, 'CRISTOBAL MEDINA VELAZQUEZ', '.', '2566162-0', '.', 'CURUGUATY', 'A', 1),
	(578, 'COMERCIAL JONATHAN', '.', '44444401-7', '.', '.', 'A', 1),
	(579, 'COMERCIAL EMANUEL JONATHAN', '.', '3424317-8', '0', 'SANTA ROSA', 'A', 1),
	(580, 'DESPENSA SANTO DOMINGO', '.', '851236-1', '0', 'CHORE', 'A', 1),
	(581, 'COMERCIAL LYH', '.', '376889-5', '0', 'GENERAL RESQUIN', 'A', 1),
	(582, 'COMERCIAL YCUASATI', '.', '5120074', '0', 'GUAYEBY', 'A', 1),
	(583, 'PANADERIA TOTI PAN', '.', '753625-9', '0', 'SANTA ROSA', 'A', 1),
	(584, 'HIGINIO URDAPILLETA', '.', '44444401-7', '981805741', 'CAPIATA KM 19 RUTA 1', 'A', 1),
	(585, 'COMERCIAL ASE', '.', '2528388-0', '0', 'SANTA ROSA', 'A', 1),
	(586, 'MUNDO DA FARINHA EXP. LTDA', '.', '88888801-5', '.', 'SANTA TEREZINHA', 'A', 1),
	(587, 'ELIGIO RIVEROS', '.', '982806', '0', 'CRUGAUTY', 'A', 1),
	(588, 'MIGUEL ANGEL MARTINEZ', '.', '4270522-3', '982641343', 'LUQUE', 'A', 1),
	(589, 'JUAN ANTONIO PERALTA FLORENTIN', '.', '1625300-0', '521.200.982', '0', 'A', 1),
	(590, 'JOSE LUIS CACERES', '.', '1222605', '983444892', 'CALLE I', 'A', 1),
	(591, 'COMERCIAL 9.', '.', '974188-7', '0', 'GENERAL RESQUIN', 'A', 1),
	(592, 'COMERCIAL MARILI', '.', '4613396-8', '1', 'YBYBYKUA', 'A', 1),
	(593, 'PANADERIA Y CONFITERIA MAINUMBY', '.', '866302-5', '021 962-783', 'ACCESO SUR CASI PRATT GILL', 'A', 1),
	(594, 'GRUPO MEDINA SRL', '.', '80080448-1', '393355', '21 PROYECTADA ESQ. INDEPENDENCIA - ASUNC', 'A', 1),
	(595, 'SUSANA GILL DUARTE', '.', '0', '.', 'CALLO 5', 'A', 1),
	(596, 'LUIS MARECO', '.', '481534-3', '0', 'A CA HAY', 'A', 1),
	(597, 'BONIMAR S.A.', '.', '80062616-8', '(0295) 20-602', 'KM 26 RUTA 1', 'A', 1),
	(598, 'AUTOSERVICE LETICIA GONZALEZ', '.', '4357575-7', '982451827', 'VILLETA', 'A', 1),
	(599, 'MINI MERCADO SAN ISIDRO', '.', '4440179-5', '0', 'SANTA ROSA', 'A', 1),
	(600, 'PUBLI SERVICIOS S.A.', '.', '80033948-7', '21308133', '18 DE JULIO 2454 - ASUNCION', 'A', 1),
	(601, 'MIRYAM LUCIA ENCINA MORINIGO', '.', '3694041-0', '961342615', 'DR. PACIELO E/ DR. CURIEL - SAN LORENZO', 'A', 1),
	(602, 'FORTALEZA DEL ESTE', '.', '3629244-3', '973418573', 'CIUDAD DEL ESTE', 'A', 1),
	(603, 'BENITO BRITEZ', '.', '3341981-7', '0', '0', 'A', 1),
	(604, 'SUPER CARNE ELDI', '.', '1739220-9', '0', 'CURUGUATY', 'A', 1),
	(605, 'COMERCIAL CAMPO 7', '.', '3178955-2', '971428023', 'COLONIA BERGTHAL', 'A', 1),
	(606, 'BENITO BRITEZ RAMIREZ', '.', '3344981-7', '0', '0', 'A', 1),
	(607, 'EL CASTILLO S.A.', '.', '80015104-6', '21.501.924', 'ASUNCION', 'A', 1),
	(608, 'CESAR RAMON AQUINO RAMOS', '.', '4401962-9', '984432558', 'JOSE ASUNCION FLORES Nª 414 C/ TACUARY', 'A', 1),
	(609, 'CARLOS ANTONIO CACERES ACOSTA', '.', '1282156', '981.297.309', 'SAN PEDRO', 'A', 1),
	(610, 'ILSA GOMEZ', '.', '5348010-4', '983546641', 'CTEL. LA VICTORIA REDUCTO SAN LORENZO', 'A', 1),
	(611, 'ADRIANO ARANDA', '.', '44444401-7', '984672422', 'REDUCTO SAN LORENZO', 'A', 1),
	(612, 'PANADERIA LAURA DE PABLO ROMERO', '.', '1106630', '982202392', 'ADOLFO ALVINO ESQ LA MECA - REDUCTO', 'A', 1),
	(613, 'PASTAS LA MINUTA', '.', '3826911-2', '0', 'OVIEDO', 'A', 1),
	(614, 'PARADOR RIO VERDE', '.', '3012063-2', '0', 'RIO VERDE', 'A', 1),
	(615, 'SUPERMERCADO DOMINGO SABIO', '.', '4514763-9', '0', 'SANTA ROSA', 'A', 1),
	(616, 'PANADERIA LA FE SA', '.', '2231736-8', '0', 'GUAYEBI', 'A', 1),
	(617, 'DESPENSA TORTUGA', '.', '4383469-8', '0', 'GUAYAIBI', 'A', 1),
	(618, 'COMERCIAL SANNY', '.', '2261134-7', '0', 'JEJUI', 'A', 1),
	(619, 'COMERCIAL ROCIO Y ALEX', '.', '3741892-0', '0', 'CAPIIBARY', 'A', 1),
	(620, 'DISTRUIBIDORA SAN LUIS', '.', '4426901-3', '0', 'ITACURUBI DEL ROSARIO', 'A', 1),
	(621, 'PEDRO MARTINEZ', '.', '1958120-3', '52241848', 'CAAGUAZU', 'A', 1),
	(622, 'B.R. COMERCIAL', '.', '3009309-0', '0', 'RIO VERDE', 'A', 1),
	(623, 'METALURGICA DM', '.', '4613368-2', '0', 'CAMPO 9', 'A', 1),
	(624, 'SELVA AVALOS PORTILLO', '.', '4498586-0', '0', 'NUEVA ITALIA', 'A', 1),
	(625, 'PASTAS  ESPECIAL', '.', '1022261-8', '0', 'OVIEDO', 'A', 1),
	(626, 'COMERCIAL MARGUI', '.', '2280530-3', '0985-149974', 'MAYOR OTAÑO', 'A', 1),
	(627, 'FRUTERIA RAMONITA', '.', '1751361', '0', 'CURUGUATY', 'A', 1),
	(628, 'FRUTERIA BRAIAN', '.', '4359993-1', '0', 'CURUGUATY', 'A', 1),
	(629, 'CARLOS ALBERTO CARDOZO', '.', '1285384-4', '985.707.566', 'SAN JUAN', 'A', 1),
	(630, 'COMERCIAL SANTA TEREZA', '.', '1048099-4', '0', 'SAN PEDRO DEL YCUAMANDIYU', 'A', 1),
	(631, 'COMERCIAL NUEVA ESPERANZA', '.', '2902589-3', '0', 'RO VERDE', 'A', 1),
	(632, 'RAMON HARMS', '.', '2625340-2', '971818862', 'RIO VERDE', 'A', 1),
	(633, 'DAYSI CENTURION', '.', '3187329-4', '0', 'ÑEMBY', 'A', 1),
	(634, 'DANILO LEICHTWEIS', '.', '1596515-5', '983.507.943', 'SANTARITA', 'A', 1),
	(635, 'LUIS RODRIGUEZ VIANA', '.', '3690160-1', '985380534', 'CALLE 5 DE SETIEMBRE - SAN LORENZO', 'A', 1),
	(636, 'AGRO VETERINARIA SAN CARLOS', '.', '3913233-1', '0975-701275', 'QUINDY', 'A', 1),
	(637, 'COMERCIAL PEQUEÑO', '.', '2427814-9', '0', 'SONA REPARTO', 'A', 1),
	(638, 'JOSE DOLORES RAMIREZ', '.', '2053030-7', '0', 'CRUGUATY', 'A', 1),
	(639, 'SONIA NOEMI VILLALBA', '.', '2481537-3', '984788083', 'ASUNCION 321 E/ CASTULO FRANCO - FDO. MO', 'A', 1),
	(640, 'INDEL S.A', '.', '80061506-9', '21940312', 'PASO MEDIN - VILLA ELISA', 'A', 1),
	(641, 'PANADERIA  LA  FAMILIA', '.', '3007533-5', '0', 'OVIEDO', 'A', 1),
	(642, 'SERGIO ALDERETE OVELAR', '.', '862378-3', '0', '0', 'A', 1),
	(643, 'EL AMIGO S.A.', '.', '80073080-1', '0981-331223', 'SALTOS', 'A', 1),
	(644, 'FRUTERIA FERREIRA', '.', '1307862-3', '0', 'SANTA ROSA DEL AGUARAY', 'A', 1),
	(645, 'FELICIE GERZETE ESPINOLA', '.', '3741373-2', '0', 'JUAN M. FRUTOS', 'A', 1),
	(646, 'CONDOMINIO PETER DUECK KRAHN Y OTRO', '.', '80090191-6', '0', 'CAMPO 8', 'A', 1),
	(647, 'AGRO MANDUVIRA S.A.', '.', '80079509-1', '971.816.216', 'COL, MEXICO RIO VERDE', 'A', 1),
	(648, 'NILDA MEDINA DE ALDERETE', '.', '1310037-8', '0', '0', 'A', 1),
	(649, 'COMERCIAL LOS HERMANOS', '.', '1994609-0', '0', 'ZONA CECILIO BAEZ', 'A', 1),
	(650, 'COMERCIAL F G', '.', '2534272', '0', 'CAPIIBARY', 'A', 1),
	(651, 'FRUTERIA LA FAMILIA', '.', '5259627', '0', 'CURUGUATY', 'A', 1),
	(652, 'COMERCIAL SANTIAGO', '.', '5764248-6', '0', 'CURUGUATY', 'A', 1),
	(653, 'FRUTERIA CURUGUATY', '.', '578064-0', '0', 'CURUGUATY', 'A', 1),
	(654, 'DESPENSA 3 HERMANOS', '.', '3249267-7', '0', 'CURUGUATY', 'A', 1),
	(655, 'MARIA GLORIA NOGUERA DELGADO', '.', '2265530-1', '983742729', 'SANDRA ROSALÍA E/ MÁLAGA FRACCIÓN', 'A', 1),
	(656, 'HERMANOS ALONSO S.R.L.', '.', '80088716-6', '0', '0', 'A', 1),
	(657, 'COMERCIAL NESTOR Y FABIAN', '.', '2954575-7', '0', 'BARRIO SAN PEDRO', 'A', 1),
	(658, 'COMERCIAL GLORIA', '.', '584567-0', '981178723', 'SANTA ROSA DEL AGUARAY', 'A', 1),
	(659, 'DIEGO ARMANDO AVALOS VEGA', '.', '4683891-0', '981224499', 'BARRIO TAYUZUAPE - SAN LORENZO', 'A', 1),
	(660, 'TRANSPORTADORA A Y D', '.', '4444379-0', '0', 'CAAGUAZU', 'A', 1),
	(661, 'TRANSECOM S.A.', '.', '80058746-4', '6.442.008', 'CIUDAD DEL ESTE', 'A', 1),
	(662, 'LETICIA LORENA GONZALEZ CENTURION', '.', '4357576-7', '982451817', '14 DE MAYO E/ GRAL. DIAZ', 'A', 1),
	(663, 'CENTRO DE NEGOCIO', '.', '2913299-1', '0', 'CONCEPCION', 'A', 1),
	(664, 'ANA ANTONELLI', '.', '2345761-9', '0', 'PARAGUARY', 'A', 1),
	(665, 'COMERCIAL MARIA', '.', '494581-6', '0', 'GENERAL RESQUIN', 'A', 1),
	(666, 'MATHIAS COMERCIAL', '.', '2853384-4', '0', 'SANTA ROSA', 'A', 1),
	(667, 'COMERCIAL LUJAN', '.', '41373229-0', '0', 'SANTA ROSA', 'A', 1),
	(668, 'GROUP TODD Y MEULIEN S.A.', '.', '80091296-9', '0', 'TARUMANDY - LUQUE', 'A', 1),
	(669, 'MIGUEL ZARZZA PAIVA', '.', '956933-2', '0522-42676', 'CAAGUAZU', 'A', 1),
	(670, 'MONICA GONZALEZ DE PENA', '.', '1256151-7', '52.120.057', 'CORONEL OVIEDO', 'A', 1),
	(671, 'COMERCIAL CLAUDIA ROCIO', '.', '809273-7', '0', 'YATAITY DEL NORTE', 'A', 1),
	(672, 'COMERCIAL SAN ESTEFAN', '.', '1525901-3', '0', 'GUAYAIBI', 'A', 1),
	(673, 'AUTOSERVICE LOS HERMANOS', '.', '3250097-1', '0', 'SANTA ROSA DEL AGUARAY', 'A', 1),
	(674, 'GEORGELINA VERON', '.', '692767-0', '0', 'GUAIYEBI', 'A', 1),
	(675, 'EVANGELITO LEDESMA', '.', '1740640-4', '0', 'SAN PEDRO DEL YCUAMANDIYU', 'A', 1),
	(676, 'SAN  PEDRO DE PABLO MENDOZA ZARATE', '.', '1090069-1', '0', '4 MOJONES FNDO MORA C/CACIQUE LAMBARE', 'A', 1),
	(677, 'VOLNEI MATOS SANDER', '.', '2297644-2', '983.228.382', 'TUPARENDA  CAAZAPA', 'A', 1),
	(678, 'JESUS MANUEL SILVEIRA LLANEZ', '.', '4376156-9', '0', 'PADRE RIGUAL 4853 CASI DEF. DEL CHACO', 'A', 1),
	(679, 'MONICA BENITEZ', '.', '3562621-6', '0', 'ASUNCION', 'A', 1),
	(680, 'ROSA RAMONA ROJAS LAGUARDIA', '.', '487389-0', '.', 'ASUNCION LUQUE', 'A', 1),
	(681, 'AMARI VALDIR KOHL', '.', '3627196-9', '0', 'CAAZAPA  TUPARENDA', 'A', 1),
	(682, 'MIGUEL ANGEL MARECO', '.', '653017-6', '0', '0', 'A', 1),
	(683, 'BENJAMIN  H  PETERS', '.', '1757208-8', '0', 'CAMPO 9', 'A', 1),
	(684, 'EDUARD DORING', '.', '5358708-1', '0', 'CHACO  NEULAND', 'A', 1),
	(685, 'DISTRIBUIDORA C Y P', '.', '3676414-0', '984.579.866', 'VILLARICA  HERMANO RODRIGO R G E HIJOS', 'A', 1),
	(686, 'GLADYS MARGARITA BENITEZ BOBADILLA', '.', '1313859-6', '994104546', 'HERMINIA BARRIOS C/ MCAL ESTIGARRIBIA -', 'A', 1),
	(687, 'CONFITERIA MANA DE JUAN CHAVEZ', '.', '7644795-2', '995685614', 'SANMARTIN CASI GRAL AQUINO', 'A', 1),
	(688, 'COMERCIAL FERNANDITO', '.', '3441808-3', '0', 'CAPIIBARY', 'A', 1),
	(689, 'ANTONIO BIDIN', '.', '4097636-0', '0', 'TUPARENDA', 'A', 1),
	(690, 'DESPENSA N R', '.', '4915764-7', '0', 'GUAYAIBI', 'A', 1),
	(691, 'PEDRO ABRAHAM BOGARIN', '.', '5238895', '992339874', 'POSTA YBYCUA - CAPIATA', 'A', 1),
	(692, 'DI MEZA S.R.L.', '.', '80084017-8', '961980870', 'CAMPO JORDAN 707E/ YEGROS SAN LORENZO', 'A', 1),
	(693, 'MINI MERCADO POLACO', '.', '3195027-2', '976466172', 'CAMPO 9', 'A', 1),
	(694, 'MARIA EVA SANCHEZ', '.', '5297489-8', '983418573', '0', 'A', 1),
	(695, 'RAMON MEZA FLEITAS', '.', '3382226-3', '0', 'VARIOS', 'A', 1),
	(696, 'PANADERIA PUNTO CLAVE', '.', '4691167-7', '0', 'GENERAL RESQUIN', 'A', 1),
	(697, 'TERESA CORREA', '.', '4176004-2', '983510170', 'CIUDAD DEL ESTE', 'A', 1),
	(698, 'COMERCIAL FABRICIO ADRIAN', '.', '2043905-9', '0', 'GENERAL RESQUIN', 'A', 1),
	(699, 'AGA GROUP S.A.', '.', '80090655-1', '0', 'CAAGUAZU', 'A', 1),
	(700, 'SERVI CAMPO DE MATTHIAS SAWATZKY G.', '.', '2997628-6', '981218750', 'COLONIA NEULAND - CHACO', 'A', 1),
	(701, 'MOLIPAR S.A.', '.', '80057733-7', '0', 'CAMPO 9', 'A', 1),
	(702, 'ROCIO  FERNANDEZ  DE  PETIT', '.', '1271545-0', '0981-405591', 'CORONEL OVIEDO', 'A', 1),
	(703, 'AZOTEY  S.A.', '.', '80037940-3', '971224633', 'CORONEL OVIEDO', 'A', 1),
	(704, 'CUMERCINDO CORONEL', '.', '1498171-8', '0', 'VILLARICA', 'A', 1),
	(705, 'PANADERIA SAN FRANCISCO S.A.', '.', '80044897-9', '983606746', 'MARIANO ROQUE ALONSO', 'A', 1),
	(706, 'COMERCIAL RAMIREZ', '.', '1484005-7', '0', 'CAPIIBARY', 'A', 1),
	(707, 'ALBERTO SALINAS PANIAGUA', '.', '2234711-9', '982.110.943', 'PARAGUARY', 'A', 1),
	(708, 'GANADERA SAETTONE S.A.', '.', '80080898-3', '981.726.663', 'ASUNCION', 'A', 1),
	(709, 'FRANCISCO VIERCY  Y CIA', '.', '80004265-4', '0336-272266', 'SILOS', 'A', 1),
	(710, 'MACROMIX S.A.', '.', '80079891-0', '0336-272161', 'PEDRO JUAN', 'A', 1),
	(711, 'COMERCIAL JAZMIN', '.', '3444408-4', '961672452', 'LUQUE', 'A', 1),
	(712, 'PERUGIA  S.A.', '.', '80039166-7', '33.627.100', 'MCAL. LOPÉZ ESP. JULIA MIRANDA CUETO EST', 'A', 1),
	(713, 'FASANO S.A.', '.', '80044326-8', '0336-274888', 'AVENIDA INTERNACIONAL C/RUTA V (QUINTA)', 'A', 1),
	(714, 'PANADERIA LA VICTORIA', '.', '5247450-0', '982.378.604', 'SAN IGNACIO MISIONES', 'A', 1),
	(715, 'GICAL S.A.', '.', '80003369-8', '0', '0', 'A', 1),
	(716, 'FLORINDA ESPINOLA', '.', '3195027-2', '976466172', 'CALLO 2 CAMPO 9', 'A', 1),
	(717, 'LEOCADIO GRUTZMANN WORPAGEL', '.', '2297665-5', '0', 'CAMPO 9', 'A', 1),
	(718, 'TRIUNFO DISTRIBUIDORA', '.', '1878773-8', '521201485', 'CORONEL OVIEDO', 'A', 1),
	(719, 'CINTIA GONZALEZ', '.', '4520289-3', '0', 'CAMPO 9', 'A', 1),
	(720, 'CARLOS RUBEN ESPINOLA', '.', '868036-1', '0', '0', 'A', 1),
	(721, 'EDGAR MARTINEZ FERNANDEZ', '.', '4792400', '0', 'CALLE 5', 'A', 1),
	(722, 'BERTA ROCIO  REYES', '.', '3524418-8', '971.470.250', 'CAAGUAZU', 'A', 1),
	(723, 'GOMEZ DE CABALLERO RAMONA', '.', '1414380-', '0', 'CAMPO 9', 'A', 1),
	(724, 'CAMILA CAMARAZZA', '.', '4186152-3', '986624160', 'LUQUE', 'A', 1),
	(725, 'SONIA DAISY SOMERS ARIETTI', '.', '1357323-3', '982272850', 'TTE. RAMIREZ FRANCO C/ E. AYALA ASUNCION', 'A', 1),
	(726, 'ARIEL RUIZ DIAZ', '.', '2624705-4', '0', 'LA FORTUNA CAMPO 9', 'A', 1),
	(727, 'REINALDO FRETES', '.', '3805019-6', '0', '0', 'A', 1),
	(728, 'ALIMENTO CAPRI', '.', '402377-3', '0', 'CURUGUATY', 'A', 1),
	(729, 'MADEXPORT PARAGUAY S.A.', '.', '80069963-7', '981207200', 'OVIEDO', 'A', 1),
	(730, 'AGRO PECUARIA SAN MIGUEL', '.', '3526233-8', '981847268', 'PIRIBEBUY', 'A', 1),
	(731, 'REINALDA BAEZ DE FLEITAS', '.', '667023-7', '983471205', 'LAURELTY LUQUE', 'A', 1),
	(732, 'DESPENSA FLORES', '.', '4413264-6', '0', 'NAVIDAD', 'A', 1),
	(733, 'DESPENSA 1. DE MAYO', '.', '4888362-0', '0', 'NAVIDAD', 'A', 1),
	(734, 'EVER RAMON AYALA AQUINO', '.', '2027294-4', '0973-616972', 'JUAN E OLEARY', 'A', 1),
	(735, 'GUMERCINDO CORONEL', '.', '1498171-8', '0', 'VILLARICA', 'A', 1),
	(736, 'COMERCIAL SAN ISIDRO', '.', '3929710-1', '0', 'YRYBUCUA', 'A', 1),
	(737, 'COMERCIAL DON MARIO', '.', '887724-6', '0', 'ASUNCION', 'A', 1),
	(738, 'BERNARDA SILVA VIUDA DE BENITEZ', '.', '1084543', '973501170', 'PEDRO JUAN', 'A', 1),
	(739, 'DISTRIBUIDORA LINDA', '.', '1292797-0', '0', 'CAPIATA', 'A', 1),
	(740, 'JAVIER ANTONIO ACHAR ALARCON', '.', '1244303-4', '981556172', '0', 'A', 1),
	(741, 'HUGO ATIENZA', '.', '3623654-3', '0', '0', 'A', 1),
	(742, 'MERCEDES FERREIRA', '.', '1930904-0', '0', '0', 'A', 1),
	(743, 'RUBEN BUHLER BERGEN', '.', '2282606-8', '0', 'CAMPO 1', 'A', 1),
	(744, 'ELIZABETH  SIMON  ALONSO', '.', '750268-0', '21391592', 'ASUNCION', 'A', 1),
	(745, 'AGROSOL', '.', '4346266-9', '982.399.376', 'PIRIBEBUY', 'A', 1),
	(746, 'PANADERIA Y CONFITERIA LA CORDILLERANA', '.', '3598363-9', '0', 'CAMPO 9', 'A', 1),
	(747, 'ISABEL BENITEZ FERREIRA', '.', '1391628-9', '971.897.047', 'CAMPO 9', 'A', 1),
	(748, 'COMERCIAL NUEVA ESPERANZA', '.', '2902589-3', '0', 'SANTA ROSA DEL AGUARAY', 'A', 1),
	(749, 'DESPENSA ORTEGA NO USAR MAS', '.', '923731-3', '0', 'YASY CAÑY', 'A', 1),
	(750, 'BRIGIDO VEGA MARTINEZ', '.', '178024-7', '984468262', 'GRAL. CABALLERO 751 C/ E. CADETE - ÑEMBY', 'A', 1),
	(751, 'CARLOS BENITEZ', '.', '4195330-4', '981.237.081', 'SANTANI CAMINO 25', 'A', 1),
	(752, 'BOSILIO AQUINO PORTILLO', '.', '3507539-2', '0', 'OVIEDO', 'A', 1),
	(753, 'COMERCIAL CANDIA', '.', '1462277-7', '0', 'CRUZE BERTONI', 'A', 1),
	(754, 'COMERCIAL ARIELITO', '.', '2877639-9', '0', 'ITACURUBI DEL ROSARIO', 'A', 1),
	(755, 'COMERCIAL UNIVERSAL', '.', '3244673-0', '0', 'ITACURUBI DEL ROSARIO', 'A', 1),
	(756, 'SUPERMERCADO MOSTAFA', '.', '4604839-1', '0', 'GENERAL AQUINO', 'A', 1),
	(757, 'VIRGEN DEL FATIMA', '.', '5721224-4', '0', 'VILLA DEL ROSARIO', 'A', 1),
	(758, 'COMERCIAL DANILO', '.', '4148425-8', '0', 'VILLA DEL ROSARIO', 'A', 1),
	(759, 'DESPENSA 3 L', '.', '3270579-4', '0', 'VILLA DEEL ROSARIO', 'A', 1),
	(760, 'MINI MARKET LA ESPAÑOLA', '.', '3715069-3', '0', 'VILLA DEL ROSARIO', 'A', 1),
	(761, 'CASA LEDESMA', '.', '825339-0', '0', 'VILLA DEL ROSARIO', 'A', 1),
	(762, 'CASA JANI', '.', '3959307', '0', 'VILLA DEL ROSARIO', 'A', 1),
	(763, 'DESPENSA DERLIS', '.', '2300596-3', '0', 'VILLA DEL ROSARIO', 'A', 1),
	(764, 'AGROVETERENARIA TAMBO', '.', '2575012-7', '0', 'GENERAL AQUINO', 'A', 1),
	(765, 'GUSTAVO MARCELO ROJAS', '.', '1684440-8', '992210517', 'LAURELTY LUQUE', 'A', 1),
	(766, 'DESPENSA SAN BLAS', '.', '740713', '0', 'CAMINO A CAPIIBARY', 'A', 1),
	(767, 'DESPENSA FORESTE', '.', '1842133-4', '0', 'CAMINO A CAPIIBARY', 'A', 1),
	(768, 'CASA VERDE', '.', '2299131', '0', 'CAMINO A CAPIIBARY', 'A', 1),
	(769, 'AUTOSERVICE CAÑIZA', '.', '2367101', '0', 'CAMINO A CAPIIBARY', 'A', 1),
	(770, 'DESPENSA 1. DE MARZO', '.', '4746676', '0', 'CAMINO A CAPIIBARY', 'A', 1),
	(771, 'CASA AMAMBAY', '.', '917095-2', '0', 'YRYBUCUA', 'A', 1),
	(772, 'COMERCIAL JOHNNY JAVIER', '.', '5200930-0', '0', 'YRYBUCUA', 'A', 1),
	(773, 'FRUTERIA TERMINAL', '.', '3799286-4', '0', 'CURUGUATY', 'A', 1),
	(774, 'FRUTERIA  A Y D', '.', '2299587', '0', 'CURUGUATY', 'A', 1),
	(775, 'COMERCIAL LEO', '.', '2838292-7', '0', 'CURUGUATY', 'A', 1),
	(776, 'COMERCIAL 2. HERMANOS', '.', '8001340-7', '0', 'CURUGUATY', 'A', 1),
	(777, 'COMERCIAL LA LUZ DEL MUNDO', '.', '1573855-8', '0', 'SAN PEDRO DEL YCUAMANDYYU', 'A', 1),
	(778, 'COMERCIAL ECONOMIA', '.', '395010-7', '0', 'SAN PEDRO DEL YCUAMANDYYU', 'A', 1),
	(779, 'COMERCIAL MARCELO', '.', '3686272-0', '0', 'PUERTO ANTE QUERA', 'A', 1),
	(780, 'COMERCIAL JORGITO', '.', '4053241-0', '0', 'PUERTO ANTEQUERA', 'A', 1),
	(781, 'CASA NIÑO', '.', '928718-3', '0', 'NUEVA GERMANIA', 'A', 1),
	(782, 'COMERCIAL 2 R', '.', '1512789-9', '0', 'NUEVA GERMAINA', 'A', 1),
	(783, 'DESPENSA NOGUERA', '.', '4728921', '0', 'COLONIA NAVIDAD', 'A', 1),
	(784, 'SUPERMERCADO LA ROSARINA', '.', '1512825-3', '0', 'NUEVA GERMANIA', 'A', 1),
	(785, 'DESPENSA SANNY', '.', '2261134', '0', 'JEJUI', 'A', 1),
	(786, 'DESPENSA GARRI', '.', '1020481', '0', 'CAMINO A SAN PEDRO', 'A', 1),
	(787, 'PANADERIA ARAL', '.', '3429390', '0', 'NIUEVA GERMANIA', 'A', 1),
	(788, 'COMERCIAL LAURY', '.', '2383362-9', '0', 'NUEVA GERMANIA', 'A', 1),
	(789, 'DESPENSA ANA CRISTINA', '.', '1335518-0', '0', 'NUEVA GERMANIA', 'A', 1),
	(790, 'COMERCIAL AVELENI', '.', '721158-9', '0', 'PUERTO ANTEQUERA', 'A', 1),
	(791, 'JOHAN  H  HEINRICHS', '.', '3504025-4', '0', 'COL, SOMMERFELD', 'A', 1),
	(792, 'FREDDY  K  HILDEBRAND', '.', '3568793-2', '0', 'COLONIA SOMMERFELD', 'A', 1),
	(793, 'ALFONSO ORTIZ VERA', '.', '1142481-8', '0', 'ASUNCION', 'A', 1),
	(794, 'COMERCIAL FRANCO', '.', '1896515-6', '0', 'CAPIIBARY', 'A', 1),
	(795, 'COMERCIAL 8 DE DICIEMBRE', '.', '4384305-0', '0', 'CAMINO A SALTOS', 'A', 1),
	(796, 'COMERCIAL 6 DE ENERO', '.', '1187610-7', '0', 'CAMINO ASALTOS', 'A', 1),
	(797, 'PANADERIA BELEN', '.', '1506943-5', '0', 'LA PALOMA', 'A', 1),
	(798, 'PANADERIA ELEGIDO', '.', '5172107-4', '0', 'LA PALOMA', 'A', 1),
	(799, 'COMERCIAL BUENA SUERTE', '.', '789050-8', '0', 'KATUETE', 'A', 1),
	(800, 'PANADERIA PANDELO', '.', '800852-3', '0', 'KATUETE', 'A', 1),
	(801, 'DIG S.A.', '.', '80081036-8', '0', 'SALTO DEL GUAIRA', 'A', 1),
	(802, 'COMERCIAL KARINA', '.', '1088624-9', '0', 'SALTO DEL GUAIRA', 'A', 1),
	(803, 'PANADERIA ÑA PAULI', '.', '2067275-6', '0', 'SALTO DEL GUAIRA', 'A', 1),
	(804, 'SUPERMERCADO PLUMA DE ILVO SPIELMANN', '.', '2489759-0', '0', 'KATUETE', 'A', 1),
	(805, 'DESPENSA CARNECERIA PANADERIA 4L', '.', '1679783-3', '0', 'ITACURUBI DEL ROSARIO', 'A', 1),
	(806, 'COMERCIAL CAÑETE', '.', '691822', '0', 'ITACURUBI ROSARIO', 'A', 1),
	(807, 'DESPENSA PANADERIA EL ALVA', '.', '1366665-7', '0', 'ITACURUB DEL ROSARIO', 'A', 1),
	(808, 'MATTEO FLEITAS', '.', '10902218-4', '0', 'CAMINO A GENERAL AQUINO', 'A', 1),
	(809, 'PANADERIA EL TRIGO', '.', '644771-6', '0', 'GENERAL AQUINO', 'A', 1),
	(810, 'AGROVETERINARIA LA RURAL', '.', '1052786-9', '0', 'GENERAL AQUINO', 'A', 1),
	(811, 'COMERCIAL EDIL', '.', '2427301', '0', 'VILLA DEL ROSARIO', 'A', 1),
	(812, 'DESPENSA PEREDRIEL', '.', '6048959-6', '0', 'VILLA DEL ROSARIO', 'A', 1),
	(813, 'AUTOSERVICIOS JAMY', '.', '3959807-1', '0', 'VILLA DEL ROSARIO', 'A', 1),
	(814, 'PANADERIA MATTEO RODRIGUEZ', '.', '410826-4', '0', 'VILLA DEL ROSARIO', 'A', 1),
	(815, 'PANADERIA EDER JAVIER GARCIA', '.', '80091640-9', '0', 'VILLA DEL ROSARIO', 'A', 1),
	(816, 'COMERCIAL GOSSEN', '.', '3407361-2', '0', 'VILLA DEL ROSARIO', 'A', 1),
	(817, 'CASA YHAGUY', '.', '5562716-1', '0', 'YATAITY DEL NORTE', 'A', 1),
	(818, 'DESPENSA SAN JORGE', '.', '4562450-0', '0', 'CAMINO A SANTA NI', 'A', 1),
	(819, 'PANADERIA SAN JORGE', '.', '3008325', '0', 'GENERAL AQUINO', 'A', 1),
	(820, 'BENICIO LEZCANO VERON', '.', '3942793-5', '0', 'GUAIYEBI', 'A', 1),
	(821, 'DISTRIBUIDORA LA UNION', '.', '4149824-0', '0', 'ÑEMBY', 'A', 1),
	(822, 'DESPENSA D Y R', '.', '4884754-2', '0', 'GUAYAIBI', 'A', 1),
	(823, 'DESPENSA MONICA', '.', '4255041', '0', 'BARRIO SAN PEDRO', 'A', 1),
	(824, 'SUPERMERCADO PATO LOCO', '.', '5780467', '0', 'NAVIDAD', 'A', 1),
	(825, 'DESPENSA SAN MARITANO', '.', '1704493-6', '0', 'VILLA YGATIMI', 'A', 1),
	(826, 'DESPENSA SANDRA NOEMI', '.', '3391435', '0', 'CAMINO A SAN PEDRO', 'A', 1),
	(827, 'DISTRIBUIDORA ESPINOLA E HIJOS', '.', '2942579-4', '0', 'SAN PEDRO DEL YCUAMANDYYU', 'A', 1),
	(828, 'DON ROJAS', '.', '1666314', '0', 'LIBERACION', 'A', 1),
	(829, 'COMERCIAL MARQUITOS TERMINO', '.', '1330652', '0', 'LIBERACION', 'A', 1),
	(830, 'DESPENSA SAN JOSE', '.', '1081131-1', '0', 'CAMINO A SAN PEDRO YCUAMANDIYU', 'A', 1),
	(831, 'DESPENSA CARNICERIA MARIVEL', '.', '4477992', '0', 'CAMINO A SAN PEDRO', 'A', 1),
	(832, 'PANADERIA EL TRIGAL DE GLORIA PERALTA', '.', '3381631-0', '0', 'SAN PEDRO DEL YCUAMANDIYU', 'A', 1),
	(833, 'COMERCIAL J Y E', '.', '5835973-7', '0', 'PUERTO ANTEQUERA', 'A', 1),
	(834, 'COMERCIAL J M', '.', '44444401-7', '0', 'PUERTO ANTEQUERA', 'A', 1),
	(835, 'MOLINO NUEVA TOLEDO', '.', '80075351-8', '983.500.428', 'TRES  PALMAS', 'A', 1),
	(836, 'FELIPE  SALINAS', '.', '3623025-1', '982612002', 'SAN ESTANISLADO', 'A', 1),
	(837, 'DESPENSA DANTE', '.', '3887172-3', '0', 'CAPIIBARY', 'A', 1),
	(838, 'DESPENSA DAVID', '.', '2631696', '0', 'YRYBUCUA', 'A', 1),
	(839, 'DESPENSA SOL NACIENTE', '.', '2247008-5', '0', 'CURUGUATY', 'A', 1),
	(840, 'DESPENSA COPETIN KM-121', '.', '2953970-6', '0', 'CAMINO A SALTO', 'A', 1),
	(841, 'COMERCIAL GOSSEN', '.', '5266728-8', '0', 'CAMINO A SALTO', 'A', 1),
	(842, 'COMERCIAL NARANJITO', '.', '2299952-3', '0', 'CAMINO A SALTO KM-304 1/2', 'A', 1),
	(843, 'COMERCIAL NOELIA', '.', '2587676-5', '0', 'CAMINO A SALTO', 'A', 1),
	(844, 'CRUZE SANTO DOMINGO', '.', '5752004', '0', 'CAMINO A SALTO', 'A', 1),
	(845, 'COMERCIAL 3 CORAZONES', '.', '4264616-2', '0', 'CAMINO A SALTO', 'A', 1),
	(846, 'COMERCIAL EL CENTRO', '.', '3579823', '0', 'CAMINO A SALTO', 'A', 1),
	(847, 'DESPENSA VIRGEN  DE CAACUPE', '.', '44444401-7', '0', 'CAMINO A CURUGUATY', 'A', 1),
	(848, 'COMERCIAL J N', '.', '1255856-7', '0', 'Y. HOVY', 'A', 1),
	(849, 'COMERCIAL UNION', '.', '5461805', '0', 'Y. HOVY', 'A', 1),
	(850, 'COMERCIAL ALI', '.', '3510768-5', '0', 'Y. HOVY', 'A', 1),
	(851, 'PANADERIA 12 DE OCTUBRE', '.', '5145444-0', '0', 'Y. HOVY', 'A', 1),
	(852, 'COMERCIAL SOL NACIENTE', '.', '3287339', '0', 'YJHOVY', 'A', 1),
	(853, 'CASA LA ECONOMIA', '.', '832807-2', '0', 'Y.HOVY', 'A', 1),
	(854, 'COMERCIAL SAN CAYETANO', '.', '4133860-0', '0', 'Y. HOVY', 'A', 1),
	(855, 'PANADERIA CAFE COLONIAL', '.', '3615633-9', '0', 'CRUZE GUARANI', 'A', 1),
	(856, 'PANADERIA EL PROGRESO', '.', '2411980-6', '0', 'PUENTE KYHA', 'A', 1),
	(857, 'DESPENSA NUKITO', '.', '1154094-0', '0', 'PUENTE KYHA', 'A', 1),
	(858, 'NS COMERCIAL', '.', '0', '0', 'PUENTE KYHA', 'A', 1),
	(859, 'MINIMERCADO NIKI', '.', '2523780-0', '0', 'PUENTE KYHA', 'A', 1),
	(860, 'DESPENSA SANTA RITA', '.', '80024092-8', '0', 'PUENTE KYHA', 'A', 1),
	(861, 'DESPENSA GABRIELA', '.', '7448699-3', '0', 'CRUZE GUARANI', 'A', 1),
	(862, 'AUTOSERVICE LOS MELLIZOS', '.', '80079595-4', '0', 'SALTO DEL GUAIRA KM-2', 'A', 1),
	(863, 'PANADERIA BETEL', '.', '2523733-9', '0', 'SALTO DEL GUAIRA', 'A', 1),
	(864, 'PANADERIA SAN ALFONSO', '.', '702836-9', '0', 'SALTO DEL GUAIRA', 'A', 1),
	(865, 'MINIMERCADO OBETENCE', '.', '3524391-0', '0', 'SALTO GUAIRA', 'A', 1),
	(866, 'COMERCIAL CAAGUAZU', '.', '1305870', '0', 'SALTO DEL GUAIRA', 'A', 1),
	(867, 'SUPERMERCADO MAX', '.', '6184032-7', '0', 'SALTO DEL GUAIRA', 'A', 1),
	(868, 'COMERCIAL CHENA', '.', '2576952', '0', 'SALTO DEL GUAIRA', 'A', 1),
	(869, 'COMERCIAL  CACIQUE SRL  CAACUPEMI AREGUÁ', '.', '80052468-3', '971999806', 'LUQUE', 'A', 1),
	(870, 'COMERCIAL LUZ SALINA', '.', '4176525-7', '0', 'CURUGUATY', 'A', 1),
	(871, 'DISTRIBUIDORA MILAGRO', '.', '3995183-9', '0', 'SANTANI', 'A', 1),
	(872, 'DESPENSA ELI', '.', '2882031-2', '0', 'ITACURUBI', 'A', 1),
	(873, 'PANADERIA NIÑO JESUS', '.', '4544531', '0', 'ITACURUBI DEL ROSARIO', 'A', 1),
	(874, 'PANADERIA 2 HERMANOS', '.', '3780403', '0', 'GENERAL AQUINO', 'A', 1),
	(875, 'DESPENSA LA FAMILIA', '.', '3007881-4', '0', 'VILLA DEL ROSARIO', 'A', 1),
	(876, 'PANADERIA 3 HERMANOS', '.', '392082', '0', 'VILLA DEL ROSARIO', 'A', 1),
	(877, 'PRODUCTOS EDWARD S.A.I', '.', '80009190-6', '21501012', 'AVDA DEFENSORES DEL CHACO 4885 - ASUNCIO', 'A', 1),
	(878, 'AUTOSERVICE 2 ANGELES', '.', '1352194-2', '0', 'CAMINO A GUAYAIBI', 'A', 1),
	(879, 'COMERCIAL SUSA', '.', '1925713', '0', 'GUAYAIBI', 'A', 1),
	(880, 'DESPENSA VERLI', '.', '4283941-1', '0', 'SANTA ROSA DEL AGUARAY', 'A', 1),
	(881, 'EL PUENTE S.A', '.', '80016147-5', '21754484', 'MCAL. ESTIGARRIBIA Y CAP. BOZZANO 1210', 'A', 1),
	(882, 'JOSE DEJESUS CABRERA BARRIOS', '.', '2940585-8', '991209135', 'RUTA 1 KM 27  J. A. SALDIVAR', 'A', 1),
	(883, 'COMERCIAL DANIELITO', '.', '3919524-0', '0', 'CAPIIBARY', 'A', 1),
	(884, 'DESPENSA ENSINA', '.', '1060637', '0', 'CAPIIBARY', 'A', 1),
	(885, 'COMERCIAL 3 HERMANOS', '.', '1733444-0', '0', 'CRUZE  GUARANI', 'A', 1),
	(886, 'MINIMERCADO PAULA', '.', '4217652-2', '0', 'LA PALOMA', 'A', 1),
	(887, 'AGROVETERINAIRA MARIA AUXILIADORA', '.', '80065067-0', '0', 'LA PALOMA', 'A', 1),
	(888, 'LIBIA NOEMI CHAMORRO', '.', '3970106-9', '0', 'CATUETE', 'A', 1),
	(889, 'DISTRUIBUIDORA G C', '.', '3505509-0', '0', 'SANTANI', 'A', 1),
	(890, 'DESPENSA CARNICERIA PEDRIEL', '.', '6648959-6', '0', 'VILLA DEL ROSARIO', 'A', 1),
	(891, 'DESPENSA MERCERIA LORENA', '.', '3273689', '0', 'PUERTO DEL ROSARIO', 'A', 1),
	(892, 'AUTOSERVICE GLORIA', '.', '4146377-3', '0', 'PUERTO DEL ROSARIO', 'A', 1),
	(893, 'COMERCIAL CANTERO', '.', '2355095-3', '0', 'VILLA YGATIMI', 'A', 1),
	(894, 'DESPENSA ADRI', '.', '2485617-7', '0', 'VILLA YGATIMI', 'A', 1),
	(895, 'DESPENSA GUARANI DE GABRIELA BENITEZ CAN', '.', '937912-6', '0', 'VILLA YGATIMI', 'A', 1),
	(896, 'AGROVET. VILLA CURUGUATY', '.', '3921419-5', '0', 'VILLA YGATIMI', 'A', 1),
	(897, 'PANADERIA LA MIGA', '.', '5088747-5', '0', 'VILLA YGATIMI', 'A', 1),
	(898, 'AUTOSERVICIO FIDE', '.', '.', '0', 'VILLA YGATIMI', 'A', 1),
	(899, 'DESPENSA 5 HERMANITAS', '.', '3927104-8', '0', 'VILLA YGATIMI', 'A', 1),
	(900, 'DESPENSA AMARILLA', '.', '3501262', '0', 'VILLA YGATIMI', 'A', 1),
	(901, 'DESPENSA SANTA HELENA', '.', '2679504-3', '0', 'VILLA YGATIMI', 'A', 1),
	(902, 'DESPENSA ÑA NORMA', '.', '4411038-3', '0', 'VILLA YGATIMI', 'A', 1),
	(903, 'DESPENSA OSVALDITO', '.', '2587360-1', '0', 'VILLA YGATIMI', 'A', 1),
	(904, 'DESPENSA LAURITA', '.', '2015258', '0', 'VILLA YGATIMI', 'A', 1),
	(905, 'COMERCIAL PACHER', '.', '765168-6', '0', 'VILLA YGATIMI', 'A', 1),
	(906, 'DESPENSA MBARACAYU', '.', '2901502', '0', 'VILLA YGATIMI', 'A', 1),
	(907, 'COMERCIAL MARIMAR', '.', '2246844-0', '0', 'VILLA YGATIMI', 'A', 1),
	(908, 'MINIMERCADO DARI', '.', '1941015-8', '0', 'VILLA YGATIMI', 'A', 1),
	(909, 'MINIMERCADO 2 HERMANAS', '.', '2960050-2', '0', 'VILLA YGATIMI', 'A', 1),
	(910, 'COMERCIAL POLACO', '.', '4936220', '0', 'VILLA YGATIMI', 'A', 1),
	(911, 'SUPERMERCADO LA ECONOMIA', '.', '1539696-6', '0', 'YPEJHU', 'A', 1),
	(912, 'SERVI CENTRO YPEJHU', '.', '1162492-2', '0', 'YPEJHU', 'A', 1),
	(913, 'COMERCIAL ÑA CRISTINA', '.', '2595337-0', '0', 'YPEJHU', 'A', 1),
	(914, 'COMERCIAL MEZA DE OSCAR AGUSTIN MEZA', '.', '3541847-8', '0', 'YPEJHU', 'A', 1),
	(915, 'PANADERIA ALDO JAVIER AGUILAR MARTINEZ', '.', '4088784-7', '0', 'YPEJHU', 'A', 1),
	(916, 'COMERCIAL YVERA', '.', '2597275-8', '0', 'YPEJHU', 'A', 1),
	(917, 'PARAGUAY CENTER', '.', '2845230-2', '0', 'YPEJHU', 'A', 1),
	(918, 'COM.INTERNACIO.DE BENICIO FLECHA CABELLO', '.', '2979542-7', '0', 'YPEJHU', 'A', 1),
	(919, 'ÑA JUANA DE SEVERINO ALVAREZ', '.', '44444401-7', '0', 'YPJHU', 'A', 1),
	(920, 'HUGO LOPEZ', '.', '3526233-8', '981847268', 'CASILLA', 'A', 1),
	(921, 'VICTOR VIDAL CABALLERO GOMEZ', '.', '5178082-8', '973690541', 'CAMPO 9', 'A', 1),
	(922, 'JUANA PORTILLO', '.', '3434018', '0', 'GUAYAIBI', 'A', 1),
	(923, 'DISTRIBUIDORA GUAYAIBI', '.', '1876781-9', '0', 'GUAYAIBI', 'A', 1),
	(924, 'COMERCIAL SAN JORGE', '.', '1587318', '0', 'GUAYAIBI', 'A', 1),
	(925, 'COMERCIAL GON RA', '.', '1452260-8', '0', 'NAVIDAD', 'A', 1),
	(926, 'MINIMERCADO BERNI', '.', '4283941-6', '0', 'SANTA ROSA', 'A', 1),
	(927, 'COMERCIAL SHIRLEY', '.', '1646858-9', '0', 'NUEVA GERMANIA', 'A', 1),
	(928, 'COMERCIAL LETTY', '.', '1655101-0', '0', 'NUEVA GERMANIA', 'A', 1),
	(929, 'PANADERIA LA CASONA', '.', '721496-0', '0', 'SAN PEDRO DEL YCUAMANDYYU', 'A', 1),
	(930, 'LUCIANO CASTILLO', '.', '2455183-0', '0', '.', 'A', 1),
	(931, 'PANADERIA Y CONFITERIA JAZMIN', '.', '1914017-7', '985607669', 'CAP. INSFRAN CASI DIVISORIA LUQUE', 'A', 1),
	(932, 'MINIMERCADO LAS HERMANAS', '.', '3846523-0', '0', 'CURUGUATY', 'A', 1),
	(933, 'COMERCIAL FABIANA', '.', '6979396-4', '0', 'PASANDO CURUGUATY CAM. A SALTO', 'A', 1),
	(934, 'MINIMERCADO UNION', '.', '2611405-4', '0', 'CORPUS CRISTI', 'A', 1),
	(935, 'COMERCIAL TUTI', '.', '7276951-3', '0', 'CORPUS CRISTI', 'A', 1),
	(936, 'DESPENSA JUAN JOSE', '.', '4087125', '0', 'LA PALOMA', 'A', 1),
	(937, 'COMERCIAL SAMUDIO', '.', '4830260-0', '0', 'OVIEDO', 'A', 1),
	(938, 'DESPENSA JUNIOR', '.', '294979-9', '0', 'YASY CAÑY', 'A', 1),
	(939, 'HUGO DERLIS BENITEZ', '.', '1983354-7', '983237106', 'IPACARAY', 'A', 1),
	(940, 'DESPENSA MIRIAM', '.', '3297407', '0', 'ITACURUBI DEL ROSARIO', 'A', 1),
	(941, 'COMERCIAL CRISTAL', '.', '4642628-1', '0', 'SANTANI', 'A', 1),
	(942, 'JOSE SALINA', '.', '931742', '985857525', 'JUAN M, FRUTOS', 'A', 1),
	(943, 'VIRGILIO SANCHEZ', '.', '1649953-0', '0', 'CORONEL OVIEDO', 'A', 1),
	(944, 'PANADERIA LA MIGA', '.', '5088747-5', '0', 'VILLA I GATIMI', 'A', 1),
	(945, 'SUPERMERCADO MOREIRA', '.', '50080297-1', '0', 'YPEJHU', 'A', 1),
	(946, 'COMERCIAL CARLITO', '.', '1914367-2', '0', 'SANTANI', 'A', 1),
	(947, 'DESPENSA LAURITA', '.', '2553710-5', '0', 'VILLA YGATIMI', 'A', 1),
	(948, 'COMERCIAL SAN BLAS', '.', '3368676-9', '0', 'VILLA YGATIMI', 'A', 1),
	(949, 'DESPENSA  RECALDE', '.', '3892364-5', '0', 'VILLA YGATIMI', 'A', 1),
	(950, 'AGROVETERINARIA SAN FRANCISCO', '.', '532537-4', '0', 'VILLA YGATIMI - CAMIN.A YPEJHU', 'A', 1),
	(951, 'AGROVETERINARIA FERNANDEZ', '.', '7411722-0', '0', 'YPEJHU', 'A', 1),
	(952, 'ANA RAMONA SANTACRUZ', '.', '4343575-0', '984264945', 'RUTA LUQUE LIMPIO', 'A', 1),
	(953, 'AUTOSERVICE ADRI 2 S.A.', '.', '80088900-2', '985128106', 'FERNANDO DE LA MORA ZONA SUR', 'A', 1),
	(954, 'PANADERIA CHRISTIAN  DUARTE', '.', '3276363-8', '0', 'SANTANI', 'A', 1),
	(955, 'AGROVETERENARIA SAN FRANCISCO', '.', '7411722-0', '0', 'YPEJHU', 'A', 1),
	(956, 'COMERCIAL CARLITO', '.', '1914367-2', '0', 'YPEJHU', 'A', 1),
	(957, 'MINIMERCADO SAN LUCAS', '.', '2588998', '0', 'VILLA YGATIMI', 'A', 1),
	(958, 'COMERCIAL F E', '.', '3594782-0', '0', 'VILLA YGATIMI', 'A', 1),
	(959, 'PANADERIA LA BARREREÑA', '.', '44444401-7', '0', 'YPEJHU', 'A', 1),
	(960, 'ÑA FATIMA', '.', '44444401-7', '0', 'YPEJHU', 'A', 1),
	(961, 'ALMACEN CASSOL', '.', '2431545-1', '981312346', 'CASILLA 2  GUAHOURY', 'A', 1),
	(962, 'DESPENSA MARU', '.', '3902797', '0', 'CURUGUATY', 'A', 1),
	(963, 'CASA MAVEL', '.', '3567483-0', '0', 'CURUGUATY', 'A', 1),
	(964, 'COMERCIAL LA BLANCA', '.', '1152588-6', '0', 'PINDOTY', 'A', 1),
	(965, 'DISTRIBUIDORA A V', '.', '3741748-7', '0', 'PINDOTY', 'A', 1),
	(966, 'DESPENSA CARNICERIA ROCIO', '.', '1478529-3', '0', 'CORPÚS CRISTI', 'A', 1),
	(967, 'COMERCIAL SANTA HELENA', '.', '2825170-9', '0', 'CORPUS CRISTI', 'A', 1),
	(968, 'MERCADO BUEN PRECIO', '.', '3960876-0', '0', 'CORPUS CRISTI', 'A', 1),
	(969, 'COMERCIAL MENDOZA', '.', '4591115-0', '0', 'CORPUS CRISTI', 'A', 1),
	(970, 'GRUPO AVSOL S.A', '.', '80065137-5', '(021) 524 573', 'JUAN LEOPARDI - FERNADO DE LA MORA SUR', 'A', 1),
	(971, 'CARNICERIA GANSO', '.', '657876-3', '0', 'CORPUS CRISTI', 'A', 1),
	(972, 'MERCADO CATARATAS', '.', '3926499-8', '0', 'CAMINO A SALTO', 'A', 1),
	(973, 'SUPERMERCADO LA FAMILIA', '.', '5127139-7', '0', 'YJHOVY', 'A', 1),
	(974, 'AGROPECUARIA EL PROGRESO', '.', '3744126-4', '0', 'YJHOVY', 'A', 1),
	(975, 'DESPENSA GLOBAL', '.', '1435469', '0', ' ITACURUBI DEL ROSARIO', 'A', 1),
	(976, 'DESPENSA ODILA', '.', '942716-3', '0', 'ITACURUBI DEL ROSARIO', 'A', 1),
	(977, 'COMERCIAL HUGITO', '.', '3248694-4', '0', 'ITACURUBI DEL ROSARIO', 'A', 1),
	(978, 'DIRA COMERCIAL', '.', '3598925-4', '0', 'GENERAL AQUINO', 'A', 1),
	(979, 'COMERCIAL LOS HERMANOS', '.', '4971848-7', '0', 'CHORE', 'A', 1),
	(980, 'COMERCIAL 3 HERMANOS', '.', '3032970-1', '0', 'SANTA ROSA', 'A', 1),
	(981, 'COMERCIAL CARINA', '.', '3036302-0', '0', 'SAN PEDRO', 'A', 1),
	(982, 'VICTOR CABALLERO', '.', '1478008-9', '0', 'CAMPO 9', 'A', 1),
	(983, 'COMERCIAL Y 2', '.', '3857269-9', '0', 'YPEJHU', 'A', 1),
	(984, 'ASOCIACION DE PRODUCTORES AGROPECUARIOS', '.', '80023353-0', '0', 'CAMPO 9', 'A', 1),
	(985, 'AGRO VETERINARIA CARLITO', '.', '4035003-7', '0', 'SAN  JOSE', 'A', 1),
	(986, 'AUTOSERVICE  SAN  JORGE', '.', '1511694-8', '971433204', 'CAMPO 9', 'A', 1),
	(987, 'PANADERIA CAACUPE', '.', '44993592-2', '0', 'CAPIIBARY', 'A', 1),
	(988, 'DESPENSA LOS MELLIZOS', '.', '3281281-7', '0', 'YASY CAÑY', 'A', 1),
	(989, 'DESPENSA EL BIGOTE', '.', '1366429', '0', 'CURUGUATY', 'A', 1),
	(990, 'COMERCIAL CENTRAL', '.', '2033130-4', '0', 'CURUGUATY', 'A', 1),
	(991, 'COMERCIAL ROCIO 2', '.', '3319849-7', '0', 'CORPUS CRISTI', 'A', 1),
	(992, 'SUPERMERCADO SCHMIDT', '.', '5376026-3', '0', 'Y HOVY', 'A', 1),
	(993, 'FREDDY FLEITAS', '.', '4358208-7', '0', 'GENERAL AQUINO', 'A', 1),
	(994, 'KARINA SOLEDAD AMARILLA DE ALMADA', '.', '3998939-9', '983394030', '3 DE MAYO ª 115 - LUQUE', 'A', 1),
	(995, 'COMERCIAL ANAVELL', '.', '4016866-2', '0', 'ITAGUA', 'A', 1),
	(996, 'DISTRIBUIDORA  LINDA', '.', '1292797-0', '0', 'CAPIATA', 'A', 1),
	(997, 'FELIPE SALINA', '.', '3623025-1', '0', 'SANTANI', 'A', 1),
	(998, 'MINIMERCADO ESTRELLA', '.', '2562367', '0', 'CAM.A  S.PEDR.DE YCUAMANDIYU', 'A', 1),
	(999, 'PANADERIA D LISS DE LUIS ALBERT DUARTE M', '.', '3578315-0', '0', 'YPEJHU', 'A', 1),
	(1000, '( COMERCIAL MEZA)', '.', '2234316-4', '0', 'YPEJHU', 'A', 1),
	(1001, 'FRUTERIA NIKI TONI', '.', '2234316-4', '0', 'YPEJHU', 'A', 1),
	(1002, 'AGROVETERENARIA YPEJHU DE JUAN GODOY', '.', '3814282-1', '0', 'YPEJHU', 'A', 1),
	(1003, 'SUPERMERCADO MOREIRA', '.', '5190141-2', '0', 'VILLA YGATIMI', 'A', 1),
	(1004, 'DESPENSA SAN ANTONIO', '.', '3697121-9', '0', 'VILLA YGATIMI', 'A', 1),
	(1005, 'ZOILO  VENEGAS', '.', '1223558-0', '0', 'RUTA 1 KM 31', 'A', 1),
	(1006, 'AGROVET. ZONA ANIMAL', '.', '0', '0', 'CURUGUATY', 'A', 1),
	(1007, 'BASILIO PORTILLO AQUINO', '.', '3507539', '0', 'OVIEDO- SAN ANTONIO', 'A', 1),
	(1008, 'TAMBO VERDE S.A.', '.', '80026221-2', '0', 'RIO VERDE', 'A', 1),
	(1009, 'ANEXSO MINIMERCADO', '.', '3943697-7', '0', 'GENERAL AQUINO', 'A', 1),
	(1010, 'DISTRIBUIDORA SAN LUIS', '.', '5282562-0', '0', 'BARRIO SAN PEDRO', 'A', 1),
	(1011, 'ALIN  SRL', '.', '80092046-5', '0', 'ASUNCION', 'A', 1),
	(1012, 'BERTA ROCIO REYES', '.', '3594418-8', '971470250', 'CAAGUAZU', 'A', 1),
	(1013, 'PIZZERIA LOS NIETOS DE GUILLERMO FERREIR', '.', '625286-9', '982788506', 'LUQUE 4TO BARRIO', 'A', 1),
	(1014, 'PANADERIA JOSE ALDO GONZALEZ', '.', '4768257-4', '0', 'CAPIIBARY', 'A', 1),
	(1015, 'DESPENSA ÑA LIDU', '.', '1060637-8', '0', 'CAPIIBARY', 'A', 1),
	(1016, 'COMERCIAL FABIAN', '.', '2987257-0', '0', 'YRYBUCUA', 'A', 1),
	(1017, 'DESPESNSA VIRGEN DEL CARMEN', '.', '44444401-7', '0', 'VILLA YGATIMI', 'A', 1),
	(1018, 'COMERCIAL LIDER', '.', '4891058-1', '0', 'CORPUS CRISTI', 'A', 1),
	(1019, 'DESPENSA LOPEZ', '.', '2825125-3', '0', 'CORPÚS CRISTI', 'A', 1),
	(1020, 'COMERCIAL LIDER', '.', '5129714-0', '0', 'CATUETE', 'A', 1),
	(1021, 'SUPERMERCADO LARA', '.', '7773029-1', '0', 'CATUETE', 'A', 1),
	(1022, 'SUPERMERCADO SAN FRANCISCO', '.', '4251874-1', '0', 'CATUETE', 'A', 1),
	(1023, 'LOPEZ COMERCIAL', '.', '1300694-0', '0', 'LA PALOMA', 'A', 1),
	(1024, 'ROSA  MARTINEZ', '.', '3452478-9', '0972-232354', 'PASTOREO', 'A', 1),
	(1025, 'ANDREA GATTI', '.', '798781-1', '986738396', 'CALLE CAMILA SAN BLAS - ISLA BOGADO 3RA', 'A', 1),
	(1026, 'MARIA ROSALBA SANCHEZ  PERALTA', '.', '4304416-6', '0', 'PASTOREO', 'A', 1),
	(1027, 'COMERCIAL VIRGEN DE FATIMA', '.', '1058566-4', '0', 'SANTA ROSA A.LA.OSC.', 'A', 1),
	(1028, 'CENTRO DE COMPRAS  SAN JUAN S.A.', '.', '80051481-5', '0', 'SAN  JUAN', 'A', 1),
	(1029, 'ADEMIR SZUMANSKI', '.', '4285317-6', '0', '1', 'A', 1),
	(1030, 'COMERCIAL WILLY', '.', '4247818-9', '0', 'SANTA CLARA', 'A', 1),
	(1031, 'MINIMERCADO MIL SABORES', '.', '3493697-7', '0', 'GENERAL AQUINO', 'A', 1),
	(1032, 'JUAN MENDOZA', '.', '760743-1', '985851880', 'CAAGUAZU', 'A', 1),
	(1033, 'DISTRIBUIDORA 3 FRONTERAS', '.', '4528836-4', '981766586', 'MINGA GUAZU KM 14 ACARAY', 'A', 1),
	(1034, 'COMERCIAL EMANUEL', '.', '1475153-4', '0', 'YVYRAROVANA', 'A', 1),
	(1035, 'DESPENSA CARNICERIA MEZA', '.', '1836201-6', '0', 'YVYRAROVANA', 'A', 1),
	(1036, 'MINIMERCADO TOMASA', '.', '2224767-7', '0', 'YVYRAROVANA', 'A', 1),
	(1037, 'MINIMERCADO PACHI', '.', '1793231-9', '0', 'YVYRAROVANA', 'A', 1),
	(1038, 'SUPERMERCADO ELE NINHA', '.', '6624713-6', '0', 'CRUZE GUARANI', 'A', 1),
	(1039, 'LOS MELLIZOS', '.', '2563737-8', '0', 'LA PALOMA', 'A', 1),
	(1040, 'LAURA JOSEFINA PINTO', '.', '6172598-6', '982902500', 'PASO YOVAY', 'A', 1),
	(1041, 'LILIAN RAMONA DUARTE ACOSTA', '.', '1673361-4', '976463136', 'CAMPO 9', 'A', 1),
	(1042, 'COMERCIAL MARISA RAMIREZ', '.', '7170763-8', '0', 'CAPIIBARY', 'A', 1),
	(1043, 'DESPENSA QUIÑO', '.', '2880306-0', '0', 'GENERAL AQUINO', 'A', 1),
	(1044, 'MINIMERCADO TIAGO', '.', '3440247', '0', 'NAVIDAD', 'A', 1),
	(1045, 'COMERCIAL PABLITO', '.', '1194236-3', '0', 'ASUNCION', 'A', 1),
	(1046, 'CEDERIANO LOMAQUIZ', '.', '3762167-0', '983520217', 'NUEVA ESPERANZA', 'A', 1),
	(1047, 'ÑA LIDU', '.', '1060637-8', '0', 'CAPIIBARY', 'A', 1),
	(1048, 'DESPENSA AGUEDA', '.', '44444401-7', '0', 'VILLA YGATIMI', 'A', 1),
	(1049, 'COMERCIAL VAZQUEZ', '.', '942006-1', '0', 'YPEJHU', 'A', 1),
	(1050, 'CRISTIAN ALMIRON', '.', '5074567-0', '971.457.982', 'CAMPO 9', 'A', 1),
	(1051, 'COMERCIAL SAN JUAN', '.', '2661906-7', '0', 'SANTA ROSA DEL MBUTUY JUAN R.CHAVEZ', 'A', 1),
	(1052, 'M. Y B.', '.', '2637213-4', '972228169', 'CAPIATA', 'A', 1),
	(1053, 'COMERCIAL SANTA MARIA', '.', '4174332-6', '0', 'CURUGUATY', 'A', 1),
	(1054, 'SUPERMERCADO DAVID', '.', '2536953-1', '0', 'PUENTE KYHA', 'A', 1),
	(1055, 'COMERCIAL RODRIGUEZ', '.', '3963403-5', '0', 'YVYRAROVANA', 'A', 1),
	(1056, 'DESPENSA LUZ', '.', '5410823-3', '0', 'VILLA YGATIMI', 'A', 1),
	(1057, 'PANADERIA FAVORITA SRL', '.', '80100240-0', '981.295.869', 'CHACO', 'A', 1),
	(1058, 'AGROVETERINARIA SAN LUIS', '.', '1229414-4', '0', 'CAMPO 9', 'A', 1),
	(1059, 'EDGAR  ALFREDO  DUARTE BENITEZ', '.', '2468680-8', '984656299', 'ITAGUA', 'A', 1),
	(1060, 'DIONISIO NUÑEZ RUIZ DIAZ', '.', '751977-0', '981404525', 'FERNANDO DE LA MORA KM.9,5', 'A', 1),
	(1061, 'COMERCIAL BERNARDO', '.', '1456655-9', '0', 'YATAITY DEL NORTE', 'A', 1),
	(1062, 'COMERCIAL CESARDITO', '.', '218935-6', '0', 'ITACURUBI DEL ROSARIO', 'A', 1),
	(1063, 'CYNTHIA OCAMPOS', '.', '1830024-3', '0', 'ASUNCION', 'A', 1),
	(1064, 'AGROVET.Y FERRETERIA SANTA HELENA', '.', '1594957-5', '0', 'J.E.ESTIGARIBIA', 'A', 1),
	(1065, 'PANADERIA DARIPAN DE DARIO VERA', '.', '2605819-7', '986944361', 'PAI ÑU - ÑEMBY', 'A', 1),
	(1066, 'DESPENSA MAVEL', '.', '5045475-7', '0', 'PUENTE KYHA', 'A', 1),
	(1067, 'COMERCIAL SAN ANTONIO', '.', '6065689-6', '0', 'LA PALOMA', 'A', 1),
	(1068, 'COMERCIAL MARIA AUXILIADORA', '.', '639931-2', '0', 'LA PALOMA', 'A', 1),
	(1069, 'GUSTAVO FRANCISCO PATIÑO TORRES', '.', '4848713-9', '975919564', 'CAMPO 9', 'A', 1),
	(1070, 'TEODORO LEIVA CACERES', '.', '1304299-8', '982661423', 'CAAGUAZU RUTA7 KM156', 'A', 1),
	(1071, 'TERESA MARIA PATIÑO', '.', '4355948-4', '984248824', 'POLICARPO CAÑETE CASI PEREZ URIBE', 'A', 1),
	(1072, 'RAMONA GOMEZ DE CABALLERO', '.', '1414380-1', '976446171', 'CAMPO 9', 'A', 1),
	(1073, 'AUTOSERVICE ADRI SRL', '.', '80099662-3', '983768329', 'MRI. CENTURION E/ SAN BLAS - FDO. MORA', 'A', 1),
	(1074, 'PAUBLINO JIMENEZ ARANDA', '.', '1341734-7', '984710471', '28 DE SETIEMBRE E/PILAR - CAPIATA', 'A', 1),
	(1075, 'ARIEL AQUINO AGUILAR', '.', '1827991-0', '0', 'ASUNCION', 'A', 1),
	(1076, 'SANTIAGO GONZALEZ', '.', '1708174-2', '992731300', 'CAMINO A LIMPIO', 'A', 1),
	(1077, 'SAUL ROMERO COMERCIAL', '.', '4125535-6', '982282854', 'M.R.A', 'A', 1),
	(1078, 'BENIGNO  PATIÑO', '.', '1834354-6', '985359313', 'CALLE 2 CAMPO 9', 'A', 1),
	(1079, 'NORMA CONTRERA', '.', '2417301-0', '0', 'CAMPO 9', 'A', 1),
	(1080, 'TERPAR S.R.L.', '.', '80003605-0', '0521-203547', 'OVIEDO', 'A', 1),
	(1081, 'CARLOS WOLF EDVINO', '.', '8275343-1', '983309108', 'SANTA RITA', 'A', 1),
	(1082, 'TEODALINA CARDOZO', '.', '1343427-6', '0', 'CAAGUAZU', 'A', 1),
	(1083, 'JULIAN GARCIA ACOSTA', '.', '3626485-7', '961903168', 'LUQUE AREGUA', 'A', 1),
	(1084, 'COMERCIAL 8 DE DICIEMBRE', '.', '1408613-1', '0', 'CRUZE BERTONI SANTANI', 'A', 1),
	(1085, 'PANADERIA ZULLY', '.', '1775485-2', '0', 'CRUZE BERTONI SANTANI', 'A', 1),
	(1086, 'COOPERATIVA VOLENDAM', '.', '80018632-0', '0', 'VILLA DEL ROSARIO', 'A', 1),
	(1087, 'COMERCIAL CLAUDIA', '.', '3817103-1', '982286749', 'VILLARICA', 'A', 1),
	(1088, 'MACROMIX S.A.  SUCURSAL 1', '.', '80079891-0', '0984-378592', 'CIUDAD DEL ESTE', 'A', 1),
	(1089, 'AGROVETERINARIA SAN MIGUEL', '.', '1131322-6', '0', 'CORPUS CRISTI', 'A', 1),
	(1090, 'M S COMERCIAL', '.', '44444401-7', '0', 'PUENTE KYHA', 'A', 1),
	(1091, 'MINIMERCADO SAN RAMON', '.', '505557-1', '0', 'PUENTE KYHA', 'A', 1),
	(1092, 'MINIMERCADO IDEAL', '.', '1741395-8', '0', 'CAPIIBARY', 'A', 1),
	(1093, 'AGROINVEST S.A.', '.', '80025031-1', '0', ' SOCIEDAD', 'A', 1),
	(1094, 'BLAS ANTONIO NUÑEZ VARGAS', '.', '2172196-3', '981368022', 'SONA COL, INDEPENDENCIA', 'A', 1),
	(1095, 'MINIMARKET TORRES HERMANOS', '.', '4377487-9', '0', 'NAVIDAD', 'A', 1),
	(1096, 'FERRETERIA  KIN KON', '.', '5654677-7', '0', 'JEJUI', 'A', 1),
	(1097, 'FRUTERIA VERDULERIA YPEJHU', '.', '44444401-7', '0', 'YPEJHU', 'A', 1),
	(1098, 'DESPENSA EL ABORIGEN', '.', '695402-2', '0', 'YASY CAÑY', 'A', 1),
	(1099, 'AGROVETERINARIA SAN MARCOS', '.', '1089083-1', '0', 'CAPIIBARY', 'A', 1),
	(1100, 'AGRO VETERINARIA EJE NORTE', '.', '3804724-1', '0', 'GENERAL AQUINO', 'A', 1),
	(1101, 'EUDALDO MORINIGO ARANDA', '.', '2203065-4', '982401922', 'PRIMERO LUCIANO ORREGO 9999', 'A', 1),
	(1102, 'DISTRIBUIDORA LAS MAGALI', '.', '3843444-0', '981696340', 'VILLARICA', 'A', 1),
	(1103, 'MARIO CUEVAS', '.', '763471-4', '0981 344315', 'LUQUE', 'A', 1),
	(1104, 'TEREZA CORREA', '.', '4176004-2', '0', 'PRESIDENTE FRANCO', 'A', 1),
	(1105, 'MINIMERCADO SAN FRANCISCO', '.', '3222124-0', '1', 'CORPUS CRISTI', 'A', 1),
	(1106, 'AGROVETERINARIA AGRO CAMPO', '.', '5017732-0', '0', 'CORPUS CRISTI', 'A', 1),
	(1107, 'CARNICERIA KARAPE I', '.', '3299972-0', '0', 'LA PALOMA', 'A', 1),
	(1108, 'JUAN C. ROMAN', '.', '32428872', '0994 277666', 'SAN LORENZO', 'A', 1),
	(1109, 'SCHROEDER Y CIA S.A.', '.', '80029925-6', '0971 147 003', 'FDO. DE LA MORA', 'A', 1),
	(1110, 'GANADERA TABAPY S.A.', '.', '80073993-0', '982478213', 'SAN ROQUE GONZALEZ', 'A', 1),
	(1111, 'CARMEN MARIZA IBARRA CENTURION', '.', '4231830-0', '0', 'CARLOS A, LOPEZ Y JOSE A. MOLAS BARRIO S', 'A', 1),
	(1112, 'VICENTE PAUL', '.', '1673978-7', '0', 'VILLA ROSARIO', 'A', 1),
	(1113, 'COMERCIAL EL AGRICULTOR', '.', '603296-6', '0', 'VILLA DEL ROSARIO', 'A', 1),
	(1114, 'COMERCIAL KATHERIN DE HUGO ZELAYA', '.', '4464013-7', '0', 'VILLA YGATIMI', 'A', 1),
	(1115, 'COMERCIAL SAN FRANCISCO', '.', '44444401-7', '0', 'VILLA YGATIMI', 'A', 1),
	(1116, 'COMERCIAL LILIANA', '.', '1609937-0', '0', 'VILLA YGATUMI', 'A', 1),
	(1117, 'GUSTAVO GAVILAN', '.', '4595013-0', '0994 254 697', 'CAPIATA', 'A', 1),
	(1118, 'ABELINO BARRIENTOS DISTRIBUIDORA', '.', '706731-3', '983657890', 'SANTA  ROSA', 'A', 1),
	(1119, 'WERNER  DUECK', '.', '0', '0', '0', 'A', 1),
	(1120, 'DIRECTA S.R.L.', '.', '80021767-5', '021 751141', 'ASUNCION', 'A', 1),
	(1121, 'GREGORIO ESCOBAR ROMAN', '.', '2340173', '981284380', 'SOLIS C/ FLORESTA', 'A', 1),
	(1122, 'BAZAR YPEJHU', '.', '646168-9', '0', 'YPEJHU', 'A', 1),
	(1123, 'HUGO ALFREDO FLEITAS BARRIENTOS', '.', '1349581-0', '972501441', 'CACIQUE CARACARA 1581 C/ AYUB. GIANGRECO', 'A', 1),
	(1124, 'MC SERVICE', '.', '1764018-0', '991306085', 'ISLA BOGADO-LUQUE', 'A', 1),
	(1125, 'PEDRO ANTONIO LOPEZ TORRES', '.', '1397798-9', '971207431', 'STA. LIBRADA C/ DIVINO NINO JESUS', 'A', 1),
	(1126, 'ANA RODRIGUEZ MARQUEZ', '.', '4705577-4', '986664780', 'COLONIA THOMPSON', 'A', 1),
	(1127, 'HUGO JAVIER CANTERO BRIZUELA', '.', '3877901-3', '985357841', 'JACINTO HERRERA', 'A', 1),
	(1128, 'COMERCIAL ALEX  ADRIAN', '.', '3848212-6', '0', 'LIBERACION', 'A', 1),
	(1129, 'MARCELINO CANDIA ARAUJO', '.', '1914017-7', '985607669', 'CAP. INSFRAN C/ DIVISORIA LUQUE', 'A', 1),
	(1130, 'RODOLFO MANUEL ORTIZ GUTIERREZ', '.', '700454-0', '984713522', 'MONSEÑOR VIRGILIO ROA 848 C/ AGUAYO', 'A', 1),
	(1131, 'RONIE MONTANIA', '.', '4727433-6', '0', 'C.9', 'A', 1),
	(1132, 'RUFINA DOMINGUEZ', '.', '2613533', '971562791', 'MAURICIO C. OCAMPO C/ SAN SEBASTIAN', 'A', 1),
	(1133, 'WILSON RAMON ROJAS', '.', '2344549-1', '982360031', '3 DE MAYO E/ IPATI', 'A', 1),
	(1134, 'ANNELIESE ROSEMARIE PELISSIER FISCHER', '.', '651178-3', '21390025', 'AVDA. QUINTA 157 C/ ACUNA DE FIGUEREDO', 'A', 1),
	(1135, 'RICARDO ALDERETE', '.', '3486815', '985502528', 'CAMPO VIA C/ GABRIEL PEÑON', 'A', 1),
	(1136, 'AUDELINA LOPEZ CANTERO', '.', '4271595-4', '982192775', 'ANDRES BELLO C/ DARIO GOMEZ CERATO', 'A', 1),
	(1137, 'LOURDES RAQUEL PRIVILEGGI VARGAS', '.', '3030382-6', '994257202', 'OKARA POTYKUEMI 7554 E/ AGAPITO MOREL', 'A', 1),
	(1138, 'LOS MELLIZOS', '.', '3824021-1', '0', 'CORPUS CRISTI', 'A', 1),
	(1139, 'MARCELINO ROMAN PEREIRA', '.', '4498180-5', '0972-797804', 'REMANSO 3 DE FEBRERO', 'A', 1),
	(1140, 'DISTRIBUIDORA LUANA SRL', '.', '0', '0973-523177', 'MINGA GUAZU', 'A', 1),
	(1141, 'IGNACIO DANIEL GOMEZ LEZCANO', '.', '4921596-5', '994957198', 'MANUEL O. GUERRERO C/ CARMEN DEL PARANA', 'A', 1),
	(1142, 'CATALINO UGARTE GIMENEZ', '.', '4212530-8', '994392591', '1ER PRESIDENTE C/ 22 DE JULIO', 'A', 1),
	(1143, 'ANGEL RAMON VEGA RIQUELME', '.', '2355736-2', '97569083', 'FLORIDA E/ VIRGEN DE CAACUPE - LUQUE', 'A', 1),
	(1144, 'CRISTIAN FISCHER', '.', '2487617-8', '981155563', 'CNEL. ESCURRA 976 C/ ANTOLIN IRALA', 'A', 1),
	(1145, 'VETERINARIA AGRO BERTONI DE ELVIO RECALD', '.', '4929350-8', '0', 'CRUZE BERTONI', 'A', 1),
	(1146, 'ELIZARDO MEDINA ESCOBAR', '.', '4132516-8', '981624040', 'CECILIA C/ VENECIA', 'A', 1),
	(1147, 'JOHANA LETICIA GOMEZ', '.', '4692810-3', '983554754', 'LAURELTTY - LUQUE', 'A', 1),
	(1148, 'JULIO CESAR GONZALEZ', '.', '3669341-3', '971155071', 'DIGNO GARCIA 1693 - LUQUE', 'A', 1),
	(1149, 'CLARISSA PAREDES', '.', '5205161-7', '+595 961 342615', 'SAN LORENZO', 'A', 1),
	(1150, 'BENNY HILDEBRAND', '.', '0', '2', '1', 'A', 1),
	(1151, 'COMERCIAL ALDE LUZ', '.', '44444401-7', '0', 'VILLA YGATIMI', 'A', 1),
	(1152, 'MINIMERCADO 3 HERMANAS', '.', '4411154', '0', 'YPEJHU', 'A', 1),
	(1153, 'PETRONA REGALADA DENIS MARIS', '.', '3514911-6', '981402793', 'LOMAS VALENTINAS C/ BOQUERON', 'A', 1),
	(1154, 'MARIA CONCEPCION OJEDA', '.', '1149272-4', '984470650', 'CAPELLAN DEL CHACO 1355 C/ DEF. DEL CHAC', 'A', 1),
	(1155, 'FUERTE ROBLE S.A', '.', '80097144-2', '82744540', 'SGTO. 1 ELIODORO FERNDEZ C/ AVDA. ARTIGA', 'A', 1),
	(1156, 'ANTOLIANA CABRERA MAQUETA', '.', '596977-8', '976489049', 'LUQUE', 'A', 1),
	(1157, 'HERMINIA AGUERO', '.', '2352549-5', '984878893', 'ANGEL NUÑEZ C/ SAVERA - REMANSITO', 'A', 1),
	(1158, 'PARAGUAY FOODS S.A', '.', '80078449-9', '21602901', 'LILLO E/ MALUTIN', 'A', 1),
	(1159, 'CRESCENCIO CACERES', '.', '1746371-8', '983332049', 'GRAL . CABALLERO C/ CURUZU MBOCAYA', 'A', 1),
	(1160, 'GRUPO BARRIENTOS SRL', '.', '80102235-5', '983657890', 'CIUDAD DEL ESTE', 'A', 1),
	(1161, 'PANADERIA RINCON SABORES', '.', '44444401-7', '0', 'GUAYAIBI', 'A', 1),
	(1162, 'PASTAS EMPRENDIMIENTOS MERCANTILES SRL', '.', '80102920-1', '981747474', 'DOMICILIO YPANE', 'A', 1),
	(1163, 'GABRIEL ALFONSO BENITEZ', '.', '4430208-8', '985104823', 'ITURBE GUAIRA', 'A', 1),
	(1164, 'HERIBERTO FIGUEREDO PORTILLO', '.', '4270770', '981825612', 'ARTIGAS', 'A', 1),
	(1165, 'LEONARDO JAVIER ROJAS CARDENAS', '.', '2943912', '994101923', 'PARAPITI C/ BOQUERON', 'A', 1),
	(1166, 'JULIO CESAR VERA MONGES', '.', '2008537-0', '0975-310558', 'CAAGUAZU', 'A', 1),
	(1167, 'GABRIEL NUEMANN COLINA', '.', '4410466', '986408768', 'CALLE ARENERA SAN ANDRES', 'A', 1),
	(1168, 'SALOMON GAVILAN TORRES', '.', '1731043-1', '992443094', 'PAI RICARDO C/ BOQUERON', 'A', 1),
	(1169, 'ARCO IRIS S.A', '.', '80025960-2', '21695074', 'CAÑADA C/ AMERICA', 'A', 1),
	(1170, 'LUCAS JAVIER VERGARA GOMEZ', '.', '3823013', '981858011', 'RIO RUGA C/ LA UNION', 'A', 1),
	(1171, 'LORENZO BERNAVE AVALOS SAMANIEGO', '.', '3870020', '971383645', 'MARIA AUXILIADORA ( YRENDAGUE', 'A', 1),
	(1172, 'VENANCIA GARCETE LEON', '.', '1706569', '981693450', 'RUTA 2 KM 24', 'A', 1),
	(1173, 'DAMIAN ANTONIO ROMERO BRITEZ', '.', '1658742-1', '0992 660 671', 'OLIVA 1528 - ACUPEMI AREGUA', 'A', 1),
	(1174, 'MUEBLE  NARCISO', '.', '3677594-0', '5', 'CAAGUAZU', 'A', 1),
	(1175, 'BORIS HIEBERT', '.', '2576472-1', '0', 'CHACO', 'A', 1),
	(1176, 'LORENZO MYUNG', '.', '3444267-7', '981284270', 'ASUTRIA E/ EMETERIO MIRANDA', 'A', 1),
	(1177, 'VABE S.A', '.', '80083485-2', '986160335', 'CALLE MRA 1202 C/ JUAN D. SOLIS', 'A', 1),
	(1178, 'DYLAN S.R.L', '.', '80021582-6', '21677444', 'MCAL. LOPEZ C/ LIBERTAD', 'A', 1),
	(1179, 'ALBERTO ALVAREZ', '.', '1095182-2', '0983 688 056', 'LIMPIO', 'A', 1),
	(1180, 'ZACARIAS JARA', '.', '2192633-6', '981468551', 'AVDA. SAN RAFAEL - LUQUE', 'A', 1),
	(1181, 'DANIELA FLEITAS', '.', '1295280-0', '981773329', 'SANTO MENDOZA - LUQUE', 'A', 1),
	(1182, 'BERNARDINO RAMON ESTIGARRIBIA', '.', '1007251-9', '982318530', '2DA. COMPAÑIA - LUQUE', 'A', 1),
	(1183, 'COMERCIAL LA RUEDA', '.', '2264212-0', '0', 'VILLA YGATIMI', 'A', 1),
	(1184, 'FIDELINA RUIZ', '.', '2213007', '992939398', 'REPUBLICA DE COLOMBIA C/ CATALINO CARDOZ', 'A', 1),
	(1185, 'JULIA DOMINGUEZ', '.', '4836439-8', '971715072', 'LUQUE', 'A', 1),
	(1186, 'CARLOS AXEL GUSTAFSON PEREZ', '.', '709038-2', '971923701', 'CNEL. RAMOS 1812 / YVYRAJY', 'A', 1),
	(1187, 'CLAUDIO ARIEL GOMEZ', '.', '4725161-1', '9855468839', 'SAN LORENZO', 'A', 1),
	(1188, 'CAFSA S.A', '.', '80100318-0', '976300054', 'CACIQUE LAMBARE C/ JUSTO PASTOR BENITEZ', 'A', 1),
	(1189, 'MARIELA FLORES BENITEZ', '.', '5265065-0', '984517762', 'VIRGEN DE LUJAN - LUQUE', 'A', 1),
	(1190, 'OSCAR ARTEMIO REYMOND MACHADO', '.', '2745834-3', '991861639', 'LIMPIO', 'A', 1),
	(1191, 'NANCY DEL CARMEN SOLIS MEZA', '.', '3251319-4', '982718470', 'CNEL. RAMOS C/ GUAYAIBY', 'A', 1),
	(1192, 'FERIANO GALEANO', '.', '4887730', '991357552', 'YA SY CAÑY', 'A', 1),
	(1193, 'EFREN PAEZ NUÑEZ', '.', '814908-9', '981900488', 'GUAYABAL C/ PAZ DEL CHACO Y NAZARTEH', 'A', 1),
	(1194, 'MARILINA MABEL MARTINEZ LOPEZ', '.', '5374091-2', '981825612', 'ARTIGAS - CERCA DE ALAMO', 'A', 1),
	(1195, 'DESPENSA DOS HERMANOS', '.', '1896762-1', '0', 'LA PALOMA', 'A', 1),
	(1196, 'DESPENSA SAN ROQUE', '.', '1501793-1', '0', 'CORPUS CRISTI', 'A', 1),
	(1197, 'PUNTO DE VENTAS ALEJANDRINA', '.', '4337572-3', '0', 'YASY CAÑY', 'A', 1),
	(1198, 'JUAN ARNALDO MARTINEZ CANDIA', '.', '936550-8', '985859335', 'BERTONI 2478 C/ GUMERCINDO SOSA', 'A', 1),
	(1199, 'MARIA CRISTINA VORONETZ', '.', '2092142-0', '981853767', 'LUQUE', 'A', 1),
	(1200, 'PASTAS Y PANIFICADOS LOS HERMANOS S.R.L', '.', '80085883-2', '21964407', '14 DE MAYO Y DR. FRANCIA', 'A', 1),
	(1201, 'LEONARDO FAVIO JACQUET JARA', '.', '2214369-6', '981104307', '29 DE SEPTIEMBRE N 9913 C/ GERVACIO ROLO', 'A', 1),
	(1202, 'JAIME BLAS NARCISO CAMPOS ORTIZ', '.', '1886760-0', '21613627', 'CRUZ DEL DEFENSOR C/ ALFREDO S.', 'A', 1),
	(1203, 'ARMANDO ROMERO', '.', '2000627-6', '1', 'LUQUE', 'A', 1),
	(1204, 'COMERCIAL MARIO ESTIGARRIBIA', '.', '2591182-1', '0', 'VILLARICA', 'A', 1),
	(1205, 'VIRGEN FATIMA EMPRENDIMIENTOS S.A.', '.', '80101693-2', '0', 'VILLARICA', 'A', 1),
	(1206, 'JA-VI COMERCIAL  DE JAVIER BAREIRO', '.', '1419670-0', '0', 'YUTY DEP.CAAZAPA', 'A', 1),
	(1207, 'DESPENSA FIORLITA', '.', '4092152-2', '0', 'YUTY DEP.CAAZAPA', 'A', 1),
	(1208, 'COMERCIAL THIAGO DE LILIO AYALA', '.', '4304477-8', '0', 'YUTY DEP.CAAZAPA', 'A', 1),
	(1209, 'AUTOSERVICE LA ENCARNACENA', '.', '3182429-3', '0', 'YUTY DEP.CAAZAPA', 'A', 1),
	(1210, 'AUTOSERVIS CECILIA BELEN', '.', '1579580-2', '0', 'YUTY DEP.CAAZAPA', 'A', 1),
	(1211, 'CASA LEAL', '.', '824141-4', '0', 'YUTY DEP.DE CAAZAPA', 'A', 1),
	(1212, 'DESPENSA CARLITO DE CARLOS GOMEZ', '.', '1183784-5', '0', 'YUTY DEP. DE CAAZAPA', 'A', 1),
	(1213, 'PANADERIA A B FENIX', '.', '44444401-7', '0', 'YUTY DEP. DE CAAZAPA', 'A', 1),
	(1214, 'DESPENSA KARREN', '.', '1910444-8', '0', 'YUTY DEP. DE CAAZAPA', 'A', 1),
	(1215, 'COMERCIAL LARISA', '.', '3387513-8', '0', 'YEGROS DEP.DE CAAZAPA', 'A', 1),
	(1216, 'COMERCIAL LUIS PIGISCH DE LUIS PIGISCH', '.', '955816-0', '0', 'YEGROS DEP.DE CAAZAPA', 'A', 1),
	(1217, 'COMERCIAL DITY', '.', '44444401-7', '0', 'YEGROS DEP.DE CAAZAPA ISLA SACA', 'A', 1),
	(1218, 'COMERCIAL SAN JOSE', '.', '4204348-4', '0', 'YEGROS DEP.DE CAAZAPA ISLA SACA', 'A', 1),
	(1219, 'COMERCIAL EL TRIUNFO', '.', '853754-2', '0', 'YEGROS ISLA SACA', 'A', 1),
	(1220, 'COMERCIAL CANTERO', '.', '1907494-8', '0', 'YEGROS DEP.DE CAAZAPA', 'A', 1),
	(1221, 'COMERCIAL LEO', '.', '1350132-1', '0', 'YEGROS DEP.DE CAAZAPA', 'A', 1),
	(1222, 'COMERCIAL TODO PLASTICO', '.', '35742963', '0', 'CAAZAPA', 'A', 1),
	(1223, 'NOVEDADES NANCY', '.', '1942514-7', '0', 'GENERAL HIGINIGO MORINIGO DEP.CAAZAPA', 'A', 1),
	(1224, 'PANADERIA LA FAMILIA DE TIO LILO', '.', '44444401-7', '0', 'GENERAL HIGINIO MORINIGO', 'A', 1),
	(1225, 'COMERCIAL ANALIA', '.', '1296557-0', '0', 'JOSE FASARDI DEP.DE GUIARA', 'A', 1),
	(1226, 'COMERCIAL RIVEROS DE JORGE RIVEROS', '.', '1086199-8', '0', 'JOSE FASAEDI DEP.GUAIRA', 'A', 1),
	(1227, 'PANADERIA LOS AMIGOS', '.', '1136764-4', '0', 'JOSE FASARDI DEP. DE GUAIRA', 'A', 1),
	(1228, 'COMERCIAL 3 HERMANOS DE ALCIDES TROCHE', '.', '1269231-0', '0', 'JOSE FASARDI DEP. GUAIRA', 'A', 1),
	(1229, 'COMERCIAL OTAZU DE CESAR OTAZU', '.', '2141374-0', '0', 'JOSE FASARDI DEP.GUAIRA', 'A', 1),
	(1230, 'COMERCIAL HENRYQUITO', '.', '3254066-3', '0', 'EUGENIO GARAY DEP.GUAIRA - CAAZAPA', 'A', 1),
	(1231, 'COMERCIAL SPORT S.A.', '.', '4056875-0', '0', 'GRAL.EUGENIO GARAY', 'A', 1),
	(1232, 'COMERCIAL D.A.N. DE OSVALDO SALOMON', '.', '3452371-5', '0', 'GRAL.EUGENIO GARAY', 'A', 1),
	(1233, 'DESPENSA AGUERO', '.', '1567389-8', '0', 'CAMINO A CAAZAPA', 'A', 1),
	(1234, 'FUNDACION BANCO DE ALIMENTOS', '.', '80028660-0', '21.527.039', 'AVDA, DEFENSORES DEL CHACO', 'A', 1),
	(1235, 'M Y M S.R.L', '.', '80009664-9', '21591383', 'VIENA E/ ARISTOTELES Y RENACIMIENTO', 'A', 1),
	(1236, 'VENANCIO GOMEZ', '.', '1804124-8', '983430163', 'CAMPO 9', 'A', 1),
	(1237, 'SONIA ELIZABETH JARA RAMIREZ', '.', '4258462-0', '971562791', 'MAURICIO C. OCAMPO C/ SAN SEBASTIAN', 'A', 1),
	(1238, 'GISEL CAROLINA INSFRAN RIVEROS', '.', '4485936', '985602798', 'CAPITA AVEIRO C/ CAPITAN ALLEN - MRA', 'A', 1),
	(1239, 'JUAN CARLOS CORONEL', '.', '1012270-2', '981609944', 'O´HIGGINS Y ESCRITOR DEL PARAGUAY - MRA', 'A', 1),
	(1240, 'PABLO CESAR VARELA', '.', '4508332', '984225199', 'SATURIO RIOS C/ CASTILLA', 'A', 1),
	(1241, 'COMERCIAL MARCELL', '.', '2999507-8', '0', 'CRUZE CAROLINA', 'A', 1),
	(1242, 'AUGUSTO MERCEDES PALMEROLA GARAY', '.', '1771648-9', '985990349', 'SAN PEDRO - REDUCTO', 'A', 1),
	(1243, 'COMERCIAL FABIO RAMIREZ', '.', '5796956-6', '0', 'CAPIIBARY', 'A', 1),
	(1244, 'LAS TACUARAS S.A.', '.', '80025390-6', '983980644', 'VILLETA', 'A', 1),
	(1245, 'DOMINGO DARIO VERA PERALTA', '.', '2605819-7', '0', 'ASUNCION', 'A', 1),
	(1246, 'HILDEBRAND S.A.', '.', '80029818-7', '0', 'CAMPO 9', 'A', 1),
	(1247, 'ALEJO ROMERO BRITEZ', '.', '2086529-5', '984651355', 'SAN RAMON C/ LAS RESIDENTAS - AREGUA', 'A', 1),
	(1248, 'FELICITA RAMONA CHAPARRO VILLALBA', '.', '1361497-5', '981712051', 'DEL MAESTRO C/ CALLE ULTIMA', 'A', 1),
	(1249, 'COMERCIAL JOSE LUIS', '.', '3583197-9', '0', 'VILLARICA', 'A', 1),
	(1250, 'COMERCIAL MONSERRAT', '.', '1899300-2', '0', 'VILLARICA', 'A', 1),
	(1251, 'COMERCIAL FIORELA', '.', '1869696-1', '0', 'VILLARICA', 'A', 1),
	(1252, 'MIRTA ELIZABETH SANCHEZ BOGADO', '.', '1145905-0', '982416670', 'MORA CUE - LUQUE - VILLA MARGARITA', 'A', 1),
	(1253, 'DESPENSA LUCILA', '.', '1025320-3', '0', 'ITURBE DEP. GUAIRA', 'A', 1),
	(1254, 'MINIMERCADO MENDEZ', '.', '1879612-5', '0', 'ITURBE DEP.GUAIRA', 'A', 1),
	(1255, 'COMERCIAL AMANCIO MENDEZ', '.', '3432966-8', '0', 'ITURBE DEP.GUAIRA', 'A', 1),
	(1256, 'COMERCIAL ITURBE', '.', '1196217-8', '0', 'ITURBE DEP.GUAIRA', 'A', 1),
	(1257, 'SUPERMERCADO MONSE', '.', '3006101-4', '0', 'ITURBE DEP.GUAIRA', 'A', 1),
	(1258, 'COMERCIAL SAN PATRICIO', '.', '2253926-3', '0', 'CAMINO A SAN JUAN NEPOMUCENO', 'A', 1),
	(1259, 'DESPENSA SOTO', '.', '1309134-4', '0', 'CAMINO SAN JUAN NEPOMUCENO', 'A', 1),
	(1260, 'COMERCIAL SAN ANTONIO', '.', '3452345-6', '0', 'GRAL.EUGENIO GARAY', 'A', 1),
	(1261, 'COOPERATIVA TRES KANDU', '.', '80069026-5', '0', 'GENERAL MORINIGO', 'A', 1),
	(1262, 'COMERCIAL NELSITO', '.', '1546685-0', '0', 'GENERAL MORINIGO', 'A', 1),
	(1263, 'COMERCIAL CHARARA', '.', '2048792-4', '0', 'GENERAL MORINIGO', 'A', 1),
	(1264, 'DESPENSA SAN RAMON', '.', '44444401-7', '0', 'GENERAL MORINIGO', 'A', 1),
	(1265, 'AUTOSERVICE LA FAMILIA', '.', '2396084-1', '0', 'GRAL.GARAY', 'A', 1),
	(1266, 'AGRO COMERCIAL ALGICA DE ALVA AGINAGALDE', '.', '1297899-0', '0', 'COLONIA ITURBE', 'A', 1),
	(1267, 'AGRO MONZON', '.', '611333-8', '0', 'ITURBE', 'A', 1),
	(1268, 'DISTRIBUIDORA SAN ANTONIO', '.', '4943352-0', '0', 'ITURBE', 'A', 1),
	(1269, 'GUSTAVO RAMON BENITEZ QUIROGA', '.', '4808406', '984528227', 'MAURICIO CARDOZO OCAMPOS - SAN ANTONIO', 'A', 1),
	(1270, 'JONAS MONTANIA', '.', '4545066-8', '0', 'PRIMERA LINEA', 'A', 1),
	(1271, 'H G MINIMERCADO', '.', '3853178-0', '0', 'JOSE A. FASARDI', 'A', 1),
	(1272, 'DESPENSA NOGUERA', '.', '2574860-2', '0', 'CAMINO A YUTY', 'A', 1),
	(1273, 'MINIMERCADO ROJA SILVA', '.', '2166149-9', '0', 'CAMINO A YUTY', 'A', 1),
	(1274, 'COMERCIAL SAN FRANCISCO', '.', '80094304-0', '0', 'CAAZAPA', 'A', 1),
	(1275, 'AUTOSERVIS MARIA DEL CARMEN', '.', '5075013-5', '0', 'CAAZAPA', 'A', 1),
	(1276, 'PANADERIA LIMA', '.', '1369091-4', '0', 'FLUGENCIO YEGROS', 'A', 1),
	(1277, 'COMERCIAL LA MELLIZA', '.', '2468719-7', '0', 'FLUGENCIO YEGROS ISLA SACA', 'A', 1),
	(1278, 'COMERCIAL TEBICUARY', '.', '1934452-0', '0', 'CAMINO YUTY', 'A', 1),
	(1279, 'SUPERMERCADO B Y F NO FACT.A ESTE NMBR', '.', '80101759-9', '0', 'YUTY DEP.CAAZAPA', 'A', 1),
	(1280, 'AUTOSERVIS A Y D', '.', '7506598-3', '0', 'YUTY DEP.CAAZAPA', 'A', 1),
	(1281, 'COMERCIAL LIDILUZ', '.', '881731-6', '0', 'YUTY DEP.CAAZAPA', 'A', 1),
	(1282, 'AUTOSERVICE LUISITO DE ARIEL ALVAREZ', '.', '3187683-8', '0', 'YUTY DEP.CAAZAPA', 'A', 1),
	(1283, 'PANADERIA VIVOS', '.', '1547243-4', '0', 'CAARMEN DEL PARANA', 'A', 1),
	(1284, 'PANADERIA BONANZA', '.', '3481274-1', '0', 'CARMEN DEL PARANA', 'A', 1),
	(1285, 'EDGAR LUIS PEDROZO NOTARIO', '.', '582284-0', '986673400', 'ESPAÑA 1352 C/ MEDICOS DEL CHACO', 'A', 1),
	(1286, 'KEOPS GROUP S.A', '.', '80068715-9', '982744540', 'SGTO. 1 ELIODORO FERNDEZ C/ AVDA. ARTIGA', 'A', 1),
	(1287, 'DESPENSA SAN MIGUEL', '.', '4461924-3', '0', 'YASY CAÑY', 'A', 1),
	(1288, 'MARTIN MEDINA RAMIREZ', '.', '1101313-3', '992623097', 'ALONSO RODRIGUEZ C/ JUAN 23', 'A', 1),
	(1289, 'COMERCIAL SAN MIGUEL', '.', '1156151-3', '0', 'CAMPO  9', 'A', 1),
	(1290, 'SAN  MIGUEL', '.', '4346266-9', '0', 'PIRIBEBUY', 'A', 1),
	(1291, 'LA COMERCEIAL EMI', '.', '1443055-0', '0', 'VILLARICA', 'A', 1),
	(1292, 'DESPENSA LOPEZ', '.', '3200361-7', '0', 'VILLARICA', 'A', 1),
	(1293, 'AUTOSERVICE ESPINOLA', '.', '5259856-0', '0', 'CAAZAPA', 'A', 1),
	(1294, 'AGROVETERINARIA CAAZAPA DE EDELMIRA SILV', '.', '937762-0', '0', 'CAAZAPA', 'A', 1),
	(1295, 'COMERCIAL ITO', '.', '1195304-7', '0', 'FLUGENCIO YEGROS', 'A', 1),
	(1296, 'DESPENSA EL DIAMANTE', '.', '783124-2', '0', 'YUTY', 'A', 1),
	(1297, 'CASA CHIQUITIN SRL', '.', '80005424-5', '0', 'SAN PEDRO DEL PARANA', 'A', 1),
	(1298, 'COMERCIAL SAN RAFAEL', '.', '1546852-6', '0', 'SAN PEDRO DEL PARANA', 'A', 1),
	(1299, 'DESPENSA 3 HERMANOS', '.', '1135700-2', '0', 'GENERAL ARTIGAS', 'A', 1),
	(1300, 'AUTOSERVICE VIRGEN DEL ROSARIO', '.', '1086506-3', '0', 'GENERAL ARTIGAS', 'A', 1),
	(1301, 'AGROVETERINARIA JAVIER DUARTE', '.', '1521037-5', '0', 'GENERAL ARTIGAS', 'A', 1),
	(1302, 'SUPERMERCADO SOLEY', '.', '658938-3', '0', 'GENERAL ARTIGAS', 'A', 1),
	(1303, 'WERNER N DUECK', '.', '4825708-7', '972956375', 'CAMPO 29 COL.SOMMERFELD', 'A', 1),
	(1304, 'AUTOSERVICE LA COSTA', '.', '3254839-7', '0', 'ITACURUBI DEL ROSARIO', 'A', 1),
	(1305, 'JAVIER RIVEROS', '.', '3569760-1', '0', 'CAAGUAZU', 'A', 1),
	(1306, 'VICTOR ANDRES BOGARIN OCAMPOS', '.', '1996699-7', '982744540', 'SGTO. 1 ELIODORO FERNDEZ C/ AVDA. ARTIGA', 'A', 1),
	(1307, 'AGROVETERINARIA BAEZ', '.', '1945749-9', '0', 'CAAZAPA', 'A', 1),
	(1308, 'COMERCIAL OSCAR', '.', '44444401-7', '0', 'YUTY', 'A', 1),
	(1309, 'COMERCIAL GOROSTIAGA', '.', '5133353-8', '0', 'YUTY', 'A', 1),
	(1310, 'SUPERMERCADO LA RUEDA', '.', '4409983-5', '0', 'CAAZAPA', 'A', 1),
	(1311, 'COMERCIAL TATI', '.', '2014892-5', '0', 'SAN PEDRO DEL PARANA', 'A', 1),
	(1312, 'DISTRIBUIDORA VAZQUEZ SOCIEDAD ANONIMA', '.', '80077415-9', '0', 'SAN JUAN NEPOMUCENO', 'A', 1),
	(1313, 'ENRIQUE FRETES', '.', '3856780-6', '0', 'CAMPO 9', 'A', 1),
	(1314, 'ADRIANITA S.A', '.', '80066400-0', '981660821', 'CAPIATA RUTA 2 KM 19,5', 'A', 1),
	(1315, 'MIGUEL ANGEL ACOSTA ALVARENGA', '.', '3245500', '986855385', 'SAN BLAS C/ ACAPITO MOREL - ZEBALLOS CUE', 'A', 1),
	(1316, 'ELSA NAZARIA GONZALEZ DE BENITEZ', '.', '1191143-3', '992865569', 'CNEL. MARTINEZ C/ TOMAS OZUNA - LUQUE', 'A', 1),
	(1317, 'MARCOS KOHL', '.', '4085565-1', '0986-732101', 'CAMPO 9', 'A', 1),
	(1318, 'EDINEI LEANDRO TESSMANN', '.', '4286726-6', '0', 'CAAZAPA', 'A', 1),
	(1319, 'LUIS ORLANDO PANIAGUA', '.', '2484604-0', '0983 692315', 'SAN JOSE DELOS ARROYOS', 'A', 1),
	(1320, 'DESPENSA REYES', '.', '1309058-5', '0', 'GENERAL MORINIGO', 'A', 1),
	(1321, 'SUPERMERCADO SAN JOSE', '.', '1296563-4', '0982 340475', 'GRAL.HIGINIO MORINIGO', 'A', 1),
	(1322, 'PANADERIA LOS HERMANOS S.R.L.', '.', '4060083-1', '0', 'CAMINO A SAN JUAN NEPOMUCENO', 'A', 1),
	(1323, 'SUPERMERCADO MIGUE', '.', '3534547-0', '0', 'SAN JUAN NEPUMOCENO', 'A', 1),
	(1324, 'AUTOSERVICE LAURI', '.', '1465686-8', '0', 'SAN JUAN NEPUCENO', 'A', 1),
	(1325, 'SUPER RIOS', '.', '864160-9', '0', 'SAN JUAN NEPUMOCENO', 'A', 1),
	(1326, 'PANADERIA NUEVO SABOR', '.', '2982838-4', '0', 'SAN JUAN NEPUMPOCENO', 'A', 1),
	(1327, 'PEDRO SPEZINI RIOS', '.', '2369525-0', '971305708', 'SAN LORENZO', 'A', 1),
	(1328, 'JAS S.A. EMPRENDIMIENTOS', '.', '80094203-5', '0', 'SAN JUAN NEPUMOCENO', 'A', 1),
	(1329, 'ALFREDO VALLEJOS ZARATE', '.', '3036015', '981273341', 'CHACO BOREAL C/ LAS RESIDENTAS - LUQUE', 'A', 1),
	(1330, 'FRANCISCO EULALIO FLEITAS MARTINEZ', '.', '1340716', '981976132', 'VILLA DE MAYO LOTE 13 MANZANA 8 - LUQUE', 'A', 1),
	(1331, 'CONFITERIA LA PASTELERA', '.', '475105-1', '981132800', 'PRESBITERO F. S. LEON. C/ CNEL. JUAN C.', 'A', 1),
	(1332, 'AUTOSERVICE MARIA MERCEDEZ', '.', '846131-7', '0', 'YUTY', 'A', 1),
	(1333, 'COMERCIAL SAN JAVIER', '.', '3538692-4', '0', 'GENERAL ARTIGAS', 'A', 1),
	(1334, 'COMERCIAL LUIS CARLOS', '.', '4612502-7', '0', 'SAN PEDRO DEL PARANA', 'A', 1),
	(1335, 'MINIMERCADO SAN CAYETANO', '.', '3239277-0', '0', 'FLUGENCIO YEGROS', 'A', 1),
	(1336, 'DESPENSA SAN JOSEMI', '.', '4582939-0', '0', 'YEGROS', 'A', 1),
	(1337, 'CARNICERIA EL TORERO', '.', '4584843-2', '0', 'ITURBE', 'A', 1),
	(1338, 'SUPERMERCADO KYODAI', '.', '1421939-5', '0', 'ITURBE', 'A', 1),
	(1339, 'PANADERIA CENTURION', '.', '1999884-8', '0', 'ITURBE', 'A', 1),
	(1340, 'AUTOSERVICE LUCI', '.', '455616-0', '0', 'ITURBE', 'A', 1),
	(1341, 'DESPENSA LA ESQUINA', '.', '4098966-6', '0', 'ITURBE', 'A', 1),
	(1342, 'CENTRO DE COMPRAS SAN BLAS', '.', '1561762-9', '0', 'SAN PEDRO DEL YCUAMANDIYU', 'A', 1),
	(1343, 'COMERCIAL LUIS GERARDO', '.', '1242397-1', '0', 'CAMINO A SAN PEDRO DEL YCUAMANDIYU', 'A', 1),
	(1344, 'JOSE ROSARIO AVALOS ROMAN', '.', '1171745', '981129933', 'CLORETA Y GRAL. BRITEZ', 'A', 1),
	(1345, 'VANIA SCHUSTER', '.', '4218630-7', '983162898', 'ACCESO SUR', 'A', 1),
	(1346, 'FRUTERIA CAAGUAZU', '.', '5447526-0', '0', 'CURUGUATY', 'A', 1),
	(1347, 'DESPENSA M.G.', '.', '44444401-7', '0', 'LA PALOMA', 'A', 1),
	(1348, 'MINIMERCADO TAMARA', '.', '1659133-0', '0', 'YVYRAROVANA', 'A', 1),
	(1349, 'ENRIQUE ROBERTO DE ANGELI', '.', '7029131-2', '983743863', 'AV. GASPAR RODRIGUEZ DE FRANCIA - P. ELS', 'A', 1),
	(1350, 'NILZA CABALLERO', '.', '5159766-7', '982572717', 'CASAS DE PAOLO SAN GULINO, LOS CIPRESES', 'A', 1),
	(1351, 'FASANO S.A.  ( SUCURSAL )', '.', '80044326-8', '0', 'AVDA. FERNANDO DE LA MORA E/ JUAN E. OLE', 'A', 1),
	(1352, 'MARIELA FERNANDEZ', '.', '3037956', '994733864', 'RUTA 1 KM 27 J.A SALDIVAR', 'A', 1),
	(1353, 'FEDERICO GRECO DINATALE', '.', '356407-0', '21292256', 'DIEGO SILVA 1021 Y VELAZQUEZ', 'A', 1),
	(1354, 'SONIA ELIZABETH VERA', '.', '4801116-9', '971780716', 'ABASTO', 'A', 1),
	(1355, 'AGROVETERINARIA FARMANIMAL', '.', '4838288-8', '0', 'VILLA DE ROSARIO', 'A', 1),
	(1356, 'DESPENSA MILI', '.', '2981485-5', '0', 'VIRGEN DEL ROSARIO', 'A', 1),
	(1357, 'COMERCIAL IVAN', '.', '44444401-7', '0', 'CAMINO A ROSARIO', 'A', 1),
	(1358, 'DESPENSA ABIGAIL', '.', '4541601-0', '0', 'CAM.A CAAZAPA', 'A', 1),
	(1359, 'DESPENSA ROQUITO', '.', '1157841-6', '0', 'SAN PEDRO DEL PARANA', 'A', 1),
	(1360, 'AGROVETERINARIA DEL CAMPO', '.', '4761160-0', '0', 'SAN NEPUMOCENO', 'A', 1),
	(1361, 'SANTA ROSA DE LIMA S.A', '.', '80099290-3', '974120260', 'MAURICIO J. TROCHE 743 C/ RIO VERDE Y PI', 'A', 1),
	(1362, 'LUIS GONZALEZ', '.', '1741029', '992647495', 'YUKYRY', 'A', 1),
	(1363, 'ALEX Y MARINO', '.', '5390269-6', '0', 'SANTANI', 'A', 1),
	(1364, 'EULOGIA RODRIGUEZ', '.', '593215/7', '0', 'CAPIATA', 'A', 1),
	(1365, 'SILVINO DARIO GOMEZ FRANCO', '.', '5057578-3', '984696729', 'COLINAS - THOMPSON RUTA 1', 'A', 1),
	(1366, 'WORLDMARKET S.A', '.', '80083387-2', '971474628', 'AV. AMERICO PICCO - VILLA ELISA', 'A', 1),
	(1367, 'ILSON INSAURALDE', '.', '3857269-9', '0', 'YPEJHU', 'A', 1),
	(1368, 'COMERCIAL MATTIAS', '.', '5524205-7', '0', 'YASY CAÑY', 'A', 1),
	(1369, 'MACROMIX  S.A.  ( SUCURSAL   4 )', '.', '80079891-0', '0981-413879', 'CONCEPCION', 'A', 1),
	(1370, 'RANDY  PENNER', '.', '2994850-9', '0', 'FRIESLAND', 'A', 1),
	(1371, 'LEVADURAS PARAGUAYAS S.A', '.', '80006507-7', '1', 'SAN ANTONIO', 'A', 1),
	(1372, 'EUDALIA LEZCANO', '.', '505062-6', '21521136', 'PITIANTUTA E/ F. R MOREO', 'A', 1),
	(1373, 'MANUEL GREGORIO ORUE MELGAREJO', '.', '4380811-5', '981598410', 'COLONIA THOMPSON', 'A', 1),
	(1374, 'YANINA MARTINEZ', '.', '5443097-6', '986198746', '8 DE DICIEMBRE C/ SAN MARCOS - ÑEMBY', 'A', 1),
	(1375, 'DANI RAMON MEDINA ACOSTA', '.', '4217782-0', '976532265', 'RUTA 1 KM 20, AVDA. LEONARDO MEDINA', 'A', 1),
	(1376, 'CHRISTIAN JAVIER FRANCO', '.', '1671155-6', '991529116', 'PALMA', 'A', 1),
	(1377, 'SEBASTIAN GONZALEZ', '.', '2242333-8', '981389477', 'CALLE YSAPY - J. A. SALDIVAR', 'A', 1),
	(1378, 'DESPENSA CONTINENTAL', '.', '44444401-7', '0', 'YUTY', 'A', 1),
	(1379, 'ARTURO DURE', '.', '3555849', '982783829', 'SAN LORENZO', 'A', 1),
	(1380, 'HERMINIA OVELAR', '.', '2942363', '981949573', 'YUKYRY', 'A', 1),
	(1381, 'PANADERIA DELICIA CASERA', '.', '44444401-7', '0', 'PUENTE KYHA LA PALOMA', 'A', 1),
	(1383, 'L M FERRETERIA', '.', '1645456-1', '0', 'LA PALOMA', 'A', 1),
	(1384, 'LIBRADA FERREIRA PINTOS', '.', '3486827-5', '984637369', 'LUQUE', 'A', 1),
	(1385, 'FELIPE VILLAVERDE', '.', '0', '984946738', 'ASUNCION', 'A', 1),
	(1386, 'AGROVETERINARIA RANCHO PIROY', '.', '4890863-0', '0', 'ITACURUBI DEL ROSARIO', 'A', 1),
	(1387, 'ISAAC  CORONEL', '.', '6652855-0', '984542537', 'VILLARICA', 'A', 1),
	(1388, 'HUGO RAMOS DAVID', '.', '2283811-2', '982920493', 'CARAPEGUA', 'A', 1),
	(1389, 'TIA DELVI', '.', '4830488-3', '0', 'SANTA ROSA DEL MBUTUY', 'A', 1),
	(1390, 'PAULO ROBERTO DINIZ', '.', '55034540', '0', 'BRASIL', 'A', 1),
	(1391, 'EDGAR SUAREZ', '.', ' 1697313-5', '986514986', 'AV. DR. GABRIEL PELLON', 'A', 1),
	(1392, 'DERLIS CESAR MORA GONZALEZ', '.', '4533083-2', '985857076', 'LA CATOLICA C/ CAMPO VIA', 'A', 1),
	(1393, 'ANTONIA LEZCANO', '.', '781817', '985386746', 'GUARAMBARE - SAN JUAN', 'A', 1),
	(1394, 'DESPENSA CORINA', '.', '44444401-7', '0', 'SAN PEDRO DEL YCUAMANDIYU', 'A', 1),
	(1395, 'ESTELA COLMAN', '.', '1920942-8', '981742726', 'MCAL. LOPEZ 3300 E/ JOSE VEGA', 'A', 1),
	(1396, 'COMITE PRODUCTORES DE LECHE UNIVERSAL', '.', '80033633-0', '0981-351112', 'CALLE 7', 'A', 1),
	(1397, 'MOLINO CAMPO GRANDE', '.', '1605692-2', '0984-116672', 'CAMPO 9 CALLE 7', 'A', 1),
	(1398, 'VICENTE RAMON ROSALES PINTOS', '.', '1447150-7', '991680866', 'BRITEZ BORGES', 'A', 1),
	(1399, 'CERVINO S.A', '.', '80102887-6', '976357022', 'AVDA. BOGGIANI 7190 CIRILO RIVAROLA', 'A', 1),
	(1400, 'COMERCIAL LA YEJA', '.', '2625348-8', '0', 'RIO VERDE', 'A', 1),
	(1401, 'LA CASERITA S.R.L', '.', '80064670-3', '981272548', 'FERNANDO MORA ZONA NORTE', 'A', 1),
	(1402, 'LORENZO MARTINEZ ROLON', '.', '1878765-7', '0', 'CNEL OVIEDO', 'A', 1),
	(1403, 'JUAN CARLOS ROMAN', '.', '4568406-5', '994448200', 'URUGUAY C/ LUQUE', 'A', 1),
	(1404, 'ANTONIO NUNEZ', '.', '3273949-4', '994498368', 'FERNANDO DE LA MORA', 'A', 1),
	(1405, 'OLGA BEATRIZ CASTRO RESQUIN', '.', '3180841-7', '981130125', 'LUQUE', 'A', 1),
	(1406, 'JORGE JARA', '.', '4003441', '985286810', 'HUMAITA', 'A', 1),
	(1407, 'CARLOS  CORVALAN', '.', '445849-4', '0', 'DIR, OVIEDO', 'A', 1),
	(1408, 'DISTRIBUIDORA SAN MARCOS', '.', '2925269-5', '993276981', 'CORONEL OVIEDO', 'A', 1),
	(1409, 'DARIO MARECO', '.', '3958387-2', '984159640', 'LIBERTA', 'A', 1),
	(1410, 'LEYLA ESCOBAR', '.', '4159585-8', '961933959', '.', 'A', 1),
	(1411, 'LIMPIA SOLEDAD DUARTE YNSFRAN', '.', '5033694', '992296341', 'CAÑADA SOLIS C/ AGUSTIN BARRIOS', 'A', 1),
	(1412, 'JUAN ZACARIAS VERA VILLASBOA', '.', '4698953-6', '982200032', '11 DE SEPTIEMBRE 1055 - SAN LORENZO', 'A', 1),
	(1413, 'LILIAN MAGDALENA FLORENTIN GIMENEZ', '.', '3806531-2', '971193407', 'MBURUCUY C/ CAÑADA SOLIS', 'A', 1),
	(1414, 'UNION PROGRES  S.A.', '.', '80065060-3', '0971-425876', 'SANTANI', 'A', 1),
	(1415, 'AGROPECUARIA ITAKY', '.', '4914180-5', '0', 'YATAITY DEL NORTE', 'A', 1),
	(1416, 'NICANOR ACOSTA MENDOZA', '.', '419339-3', '975420397', 'CAAGUAZU', 'A', 1),
	(1417, 'JULIO CESAR PENAYO NUÑEZ', '.', '3750876-8', '0973-213337', 'CAMPO 9', 'A', 1),
	(1418, 'MERCEDES CASTILLO', '.', '4851844-1', '983695948', 'JUAN RAMON D. C/ ASAHARES', 'A', 1),
	(1419, 'COMERCIAL FERNANDEZ', '.', '4173694-0', '0', 'VILLA YGATIMI', 'A', 1),
	(1420, 'SUPERMERCADO EXPRESS', '.', '8155904-6', '0', 'SAN PEDRO DEL PARANA', 'A', 1),
	(1421, 'SUPERMERCADO TRIANGULO DE DORIA MERCADO', '.', '312611-0', '0', 'YEGROS', 'A', 1),
	(1422, 'SUPERMERCADO JUVENTUD', '.', '444718-2', '0', 'CAAZAPA', 'A', 1),
	(1423, 'EMPRENDIMIENTOS LA ECONIMIA', '.', '3245268-3', '0', 'CAAZAPA', 'A', 1),
	(1424, 'COMERCIAL VITTI', '.', '44444401-7', '0', 'YEGROS', 'A', 1),
	(1425, 'COMERCIAL AGUERO', '.', '4558871-6', '0', 'CAAZAPA', 'A', 1),
	(1426, 'COMERC.CELINA NO USAR MAS', '.', '44444401-7', '0', 'ITURBE', 'A', 1),
	(1427, 'THEO H DRIEDGER', '.', '4272708-1', '0', 'CAMPO 8', 'A', 1),
	(1428, 'ABRAHAM WALL  WIELER', '.', '5416197-5', '0', 'RIO  VERDE', 'A', 1),
	(1429, 'COMERCIAL WILSON', '.', '1742600-6', '0', 'YVYPYTA', 'A', 1),
	(1430, 'TRANSPORTADORA YGUAZU EXPRES SRL', '.', '80096331-8', '0983-630622', 'YGUAZU', 'A', 1),
	(1431, 'OLGA GARCETE MARMOL', '.', '609824-0', '981357081', 'SATURIO RIOS C/ SANTA RITA - LAMBARE', 'A', 1),
	(1432, 'LACTEOS UNIDOS S.A.', '.', '80067527-4', '0', 'COLINIA RIO VERDE', 'A', 1),
	(1434, 'AGRICOLA  FENIX S.A.', '.', '80017083-0', '0983-149004', 'SANTA ROSA MONDAY', 'A', 1),
	(1435, 'ELVIDO  GARCIA', '.', '3834801', '0', 'CAAGUAZU', 'A', 1),
	(1436, 'AGRO VERETERIA J C', '.', '3750876-8', '0', 'CAMPO 9', 'A', 1),
	(1437, 'CABAÑA DON VICENTE S.R.L.', '.', '80052751-8', '0981-808331', 'VALENZUELA', 'A', 1),
	(1438, 'CRISTINO GUERRERO', '.', '207947-3', '021-299072', 'JULIO CORREA 1349', 'A', 1),
	(1439, 'DESPENSA MILI', '.', '3594746-2', '0', 'CAPIIBARY', 'A', 1),
	(1440, 'YANINA JAZMIN GONZALEZ  ROA', '.', '4350129-0', '982708612', 'SAN JOSE Y FULGENCIO YEGROS - LIMPIO', 'A', 1),
	(1441, 'MIGUEL MARIA PEREIRA BENITEZ', '.', '4942064-0', '991252753', 'RUTA 1 KM 23 - CALLE 15 DE NOVIEMBRE', 'A', 1),
	(1442, 'JUAN RAMON BENITEZ', '.', '3654920', '971531160', 'RINCON DE NEMBY', 'A', 1),
	(1443, 'HERCULANO FLEITAS', '.', '909345', '982342256', 'LUQUE - SAN LORENZO', 'A', 1),
	(1444, 'JOSE FELIX SOSA ORTEGA', '.', '1291145-3', '972146090', 'CAMPO 9', 'A', 1),
	(1445, 'SUPER ARIELITO', '.', '1406465-0', '0', 'ITURBE', 'A', 1),
	(1446, 'MINIMERCADO HUGITO', '.', '2063869-8', '0', 'ITURBE', 'A', 1),
	(1447, 'AUTOSERVICE GUSVER', '.', '1166877-4', '0', 'YUTY - ARTIGAS', 'A', 1),
	(1448, 'VERDULERIA LA FAMILIA', '.', '4119583-3', '0', 'YUTY', 'A', 1),
	(1449, 'SUPERMERCADO OSMAR', '.', '767234-9', '0', 'CAAZAPA', 'A', 1),
	(1450, 'SUPER EL SOL', '.', '80095942-6', '0', 'CAAZAPA', 'A', 1),
	(1451, 'MIGUEL ANGEL CAÑIZA', '.', '1238142', '981472607', 'CAÑADA SOLIS C/ SAN ROQUE', 'A', 1),
	(1452, 'MARIA CRISTINA SALINAS SANCHEZ', '.', '4513794-3', '984566984', 'PALMA C/ INDIO TUPI', 'A', 1),
	(1453, 'MARIA SIMONA ZARATE DE FAVIO', '.', '3886473-3', '983174807', 'ALGARROBO C/ 24 DE JULIO', 'A', 1),
	(1454, 'COMERCIAL C.R.', '.', '3828740-4', '0', 'CAPIIBARY', 'A', 1),
	(1455, 'DESPENSA FRUTERIA SANTO DOMINGO', '.', '2654791-6', '0', 'YASY CAÑY', 'A', 1),
	(1456, 'DESPENSA RUBENCITO', '.', '44444401-7', '0', 'YPEJHU', 'A', 1),
	(1457, 'DESPENSA SAN EXPEDITO', '.', '44444401-7', '0', 'YPEJHU', 'A', 1),
	(1458, 'ARNALDO AGUILAR', '.', '6266120-5', '991877669', 'SAN  ROQUE', 'A', 1),
	(1459, 'RUDY LUGO', '.', '44444401-7', '0', 'VILLA DEL ROSARIO', 'A', 1),
	(1460, 'DESPENSA MELLIZA', '.', '3416411-1', '0', 'VILLA DEL ROSARIO', 'A', 1),
	(1461, 'ARMELINO CARDOZO RODRIGUEZ', '.', '1066578-1', '0', 'PASTOREO', 'A', 1),
	(1462, 'FELIX CLEMENTE BENITEZ PELOZO', '.', '3188951', '972516655', 'RUTA GUARAMABARE - VILLETA', 'A', 1),
	(1463, 'FATIMA MOLINAS', '.', '3585934-2', '21512205', '.', 'A', 1),
	(1464, 'ANIBAL FERREIRA', '.', '4156895', '983845799', 'PASO DE ORO - CAPIATA KENNEDY RUTA 1', 'A', 1),
	(1465, 'FRANCISCO CASTRO  ROA', '.', '1380587-8', '0', 'SONA  ITAPUA', 'A', 1),
	(1466, 'LILIAN TERESA ESCOBAR', '.', '1326701-9', '21212639', 'GAUDIOSO NUÑEZ 726 C/ 25 DE MAYO', 'A', 1),
	(1467, 'DESPENSA FERNANDA', '.', '44444401-7', '0', 'VILLA YGATIMI', 'A', 1),
	(1468, 'DESPENSA RENACER', '.', '44444401-7', '0', 'YASY CAÑY', 'A', 1),
	(1469, 'EDWIN  GIESBRECHT', '.', '1231999-6', '976409529', 'J, E ESTIGARIBIA', 'A', 1),
	(1470, 'AGROPECUARIA MOREL HERMANOS', '.', '5343472-2', '0', 'DR.JUAN MANUEL FRUTOS', 'A', 1),
	(1471, 'AGRO PANAMBI S.A.', '.', '80038798-8', '0971-403080', 'PÁNAMBI', 'A', 1),
	(1472, 'AGROPECO S.A.', '.', '80002708-6', '0971-410480', '0', 'A', 1),
	(1473, 'STUPPENDO S.R.L', '.', '80047294', '981223344', 'ASUNCION', 'A', 1),
	(1474, 'CARNES SAN LUIS S.R.L', '.', '80096980-4', '985990349', 'SAN PEDRO - REDUCTO', 'A', 1),
	(1475, 'GILBERTO GARAY MARECOS', '.', '1110170-2', '981498378', '16 DE JULIO Y SARGENTO GAMARRA', 'A', 1),
	(1476, 'MARIA VILLALBA', '.', '5242429', '991622130', 'DECIMA COMPAÑIA - RUTA SAN BERNARDINO', 'A', 1),
	(1477, 'MARIA CRISTINA BORONETZ', '.', '2092142', '981853767', 'LUQUE - RAULELTY', 'A', 1),
	(1478, 'MARUO ROJAS', '.', '6792192-6', '982458773', '.', 'A', 1),
	(1479, 'HERIBERTO MELGAREJO', '.', '735076', '985753449', 'GRAL. GARAY C/ ANASTACIO QUITANA', 'A', 1),
	(1480, 'EDUARDO ACOSTA', '.', '1536365-1', '992443569', 'CENTRO', 'A', 1),
	(1481, 'FELIPE SANTIAGO CRISTALDO BENITEZ', '.', '1860022-0', '991888964', 'AVDA SAN ANTONIO C/ AVDA LOPEZ', 'A', 1),
	(1482, 'DULCE FE', '.', '2021997-0', '972682273', 'SAN MIGUEL - LUQUE', 'A', 1),
	(1483, 'AMADA BELEN GIMENEZ BRITEZ', '.', '2331487-7', '984862667', 'AURENGUA', 'A', 1),
	(1484, 'SUPER MANUELITO', '.', '2512595-8', '0', 'ITURBE', 'A', 1),
	(1485, 'EVARISTO OCAMPOS', '.', '1678653-0', '984440933', '.', 'A', 1),
	(1486, 'COOPERATIVA BERGTHAL LTDA', '.', '80001149-0', '0', 'COL, BERGTHAL', 'A', 1),
	(1487, 'TERESA DE JESUS GAONA ZORRILLA', '.', '3838894-4', '976345100', 'CNEL. MARTINEZ C/ INMACULADA CONCEPCION', 'A', 1),
	(1488, 'TIMMY SCHROEDER', '.', '5152117-2', '0975-430750', 'CAMPO 9', 'A', 1),
	(1489, 'FERRETERIA SAN MIGUEL', '.', '4241275-7', '973213337', 'CAMPO 9', 'A', 1),
	(1490, 'BENITA DUARTE', '.', '5402126', '993410941', 'MANDYJU PEKU C/ SAN LUCAS', 'A', 1),
	(1491, 'ERNESTO TORALES FRANCO', '.', '2378215-3', '981817743', 'YPACARAI CERRO GUE VIA FERREA', 'A', 1),
	(1492, 'JACOBO  REIMER', '.', '5521396-0', '0984-872233', 'R', 'A', 1),
	(1493, 'EUGENIA ACOSTA RUIZ', '.', '2546979-7', '982555650', 'YUMI C/ MANGORE', 'A', 1),
	(1494, 'AGRO SAN JOSE DE LUIS ORLANDO PANIAGUA', '.', '2484604-0', '983692315', 'SAN JOSE DE LOS AROYOS', 'A', 1),
	(1495, 'NORMA BORGA', '.', '2368260-4', '983664844', '.', 'A', 1),
	(1496, 'GREFRAN Y CIA S.A.', '.', '80057621-7', '0', 'CURUGUATY', 'A', 1),
	(1497, 'YLUMINADA MEDINA', '.', '3680818-0', '991498849', '34 OPYTADA. C/ ANTEQUERA', 'A', 1),
	(1498, 'EMPRENDIMIENTOS SAN JOSE S.A', '.', '80084607-9', '981745389', 'CAPITAN AVEIRO E/ MAYO CABRERA Y CALLE C', 'A', 1),
	(1499, 'LEGION DE LA BUENA VOLUNTAD', '.', '80012712-9', '021-921100/3', '0', 'A', 1),
	(1500, 'AGUSTIN  ARCE', '.', '3952474-4', '0973-215995', 'CALLE 4', 'A', 1),
	(1501, 'ALFREDO HILDEBRAND', '.', '4593321-9', '0', 'COL, SOMMERFELD', 'A', 1),
	(1502, 'ALEXIS NERY RUIZ DIAZ', '.', '857214', '982293981', 'MCAL ESTIGARRIBIA - YUKYRY', 'A', 1),
	(1503, 'JACOB S PETERS', '.', '2282618-1', '0', 'CAMPO 14', 'A', 1),
	(1504, 'LA GENOVESA S.R.L', '.', '80008143-9', '642064', '.', 'A', 1),
	(1505, 'DERLIS RUBEN CABRERA', '.', '3770749', '981918927', 'PRATT GILL Y MOISES BERTTONI - ÑEMBY', 'A', 1),
	(1506, 'GUSTAVO ADOLFO AQUINO', '.', '1857084', '985221182', 'URUGUAY C/ LUQUE', 'A', 1),
	(1507, 'ANA BEATRIZ MEZA NUÑEZ', '.', '4623928-6', '983941731', 'CEDRO E/ CONCEPCION Y ENCARNACION', 'A', 1),
	(1508, 'ADOLFINA  NELIDA ARAUJO RODRIGUEZ', '.', '3711421-2', '0', 'SAN IGNACIO', 'A', 1),
	(1509, 'ROMINA MARTINEZ', '.', '2270864-2', '991498849', 'AGUSTIN BARRIOS', 'A', 1),
	(1510, 'RUBEN FONSECA', '.', '1022261-8', '0', 'OVIEDO', 'A', 1),
	(1511, 'DESPENSA ROCIO DE JUAN BAUTISTA', '.', '846459-6', '0', 'CAMPO 9 PRIMERA LINEA', 'A', 1),
	(1512, 'DESPENSA GONZALITO', '.', '1109852-0', '0', 'YUTY', 'A', 1),
	(1513, 'DISTRIBUIDORA VERA', '.', '1407898-8', '0', 'CAAZAPA', 'A', 1),
	(1514, 'SILVA MOTO', '.', '6661962-9', '0', 'CURUGUATY', 'A', 1),
	(1515, 'TANIA SOLEDAD ALMADA', '.', '5182327-6', '0975-315705', 'CAAGUAZU', 'A', 1),
	(1516, 'SILVINO DOMINGUEZ CACERES', '.', '4417649-0', '991867539', 'SANTO REY - CAPILLA LUQUE', 'A', 1),
	(1517, 'DE LOS SANTOS RESQUIN', '.', '1296280', '985474317', 'JUAN RAMON C/ CAÑON SOLIS - LUQUE', 'A', 1),
	(1518, 'IGNACIO CARBAJAL', '.', '3256961-0', '971981098', 'TTE. RAMO DE ALFARO C/ SAMAKLAI', 'A', 1),
	(1519, 'DESPENSA MARIA LUZ', '.', '2282230-5', '0', 'ITURBE', 'A', 1),
	(1520, 'SUPERCITO DOS MIL', '.', '2142730-5', '0', 'ITURBE', 'A', 1),
	(1521, 'GOD´S PAN S.A', '.', '80022629-1', '21280212', 'SATISIMA TRINIDAD', 'A', 1),
	(1522, 'GRUPO H L  S.A.', '.', '80080321-3', '0673-221884', 'OVIEDO', 'A', 1),
	(1523, 'EL GERMANO S.A', '.', '80021971-6', '985634800', 'ISABEL LA CATOLICA C/ TUPASY REKAVO', 'A', 1),
	(1524, 'COMERCIAL PEDRITO', '.', '4667612-0', '0', 'SAN PEDRO DEL YCUAMANDIYU', 'A', 1),
	(1525, 'ROSA MABEL BENITEZ', '.', '1983378-4', '0', 'IPACARAY', 'A', 1),
	(1526, 'WILLIAN GENARO GONZALEZ CENTURION', '.', '4357576-5', '982451817', '14 DE MAYO E/ GRAL. DIAZ', 'A', 1),
	(1527, 'NANCY RAQUEL GONZALEZ CORONEL', '.', '5399547', '972951978', 'RUTA 1 KM 20', 'A', 1),
	(1528, 'VICTOR OLIVETTI', '.', '2224020', '983856094', 'TRANSCHACO', 'A', 1),
	(1529, 'LUIS MIGUEL BENITEZ', '.', '4467333', '972588534', 'NUEVA ASUNCION - AREGUA', 'A', 1),
	(1530, 'DISTRIBUIDORA GABI', '.', '44444401-7', '0', 'VILLA YGATIMI', 'A', 1),
	(1531, 'COMERCIAL 3. HERMANOS', '.', '4411154-1', '0', 'VILLA YGATIMI', 'A', 1),
	(1532, 'JUAN MARIANO MACIEL QUIÑONEZ', '.', '1744592-2', '981205115', 'LOS NARANJOS - CAPIATA KM 24 J. A. SALVI', 'A', 1),
	(1533, 'FRANZ ROJAS', '.', '2956948-6', '984423214', 'AREGUA', 'A', 1),
	(1534, 'SUPERMERCADO LOS HERMANITOS', '.', '5694315-6', '0', 'ISLA SACA FLUGENCIO  YEGROS', 'A', 1),
	(1535, 'SURCOS DE AMERICA S.A.', '.', '80040683-4', '984863742', 'CAÑADA SOLIS', 'A', 1),
	(1536, 'ROSA NATALIA RECALDE RAMIREZ', '.', '3392142-3', '983371938', 'FULGENCIO CABRERA Y URUGUAY', 'A', 1),
	(1537, 'CESAR JAVIER COLMAN AYALA', '.', '4004722-9', '983567888', 'MANDYJU PEKUA C/ ISLA POI - VILLA ELISA', 'A', 1),
	(1538, 'VICTOR DARIO FRANCO PAIVA', '.', '1231402', '994446237', 'AREGUA', 'A', 1),
	(1539, 'ANALIA MELGAREJO GOMEZ', '.', '4660002', '972229711', 'ROSADA GUAZU - YPANE', 'A', 1),
	(1540, 'FAUSTO ARAUJO', '.', '2107925', '985753449', 'GRAL. GARAY C/ ANASTACIO QUITANA', 'A', 1),
	(1541, 'MULTIRUBROS S.A.', '.', '80075772-6', '982653500', 'CAMPO 8', 'A', 1),
	(1542, 'JUAN ERNESTO MILTOS MENDEZ', '.', '4596795', '985608556', 'ANTEQUERA E/ 33 Y 34 PROYECTADA', 'A', 1),
	(1543, 'MUEBLERIA  NARCISO', '.', '3677594-0', '0', 'CAAGUAZU', 'A', 1),
	(1544, 'JULIO CESAR YURKEVICH', '.', '7653584', '981598410', 'COLONIA THOMPSON', 'A', 1),
	(1545, 'GRUPO  ORO  NEGRO  S.A.', '.', '80110725-3', '993276981', 'CORONEL OVIEDO', 'A', 1),
	(1546, 'MARTINA BEATRIZ JARA', '.', '4004556-0', '976846864', 'ADRIANO IRALA C/ NATALICIO TALAVERA', 'A', 1),
	(1547, 'CRECENCIO GENEZ', '.', '3374905-1', '0', 'CALLE 5', 'A', 1),
	(1548, 'COMERCIAL LUCHO', '.', '2565989-8', '0', 'YASY CAÑY', 'A', 1),
	(1549, 'COMERCIAL 2 HERMANOS', '.', '44444401-7', '0', 'GRAL.EUGENIO GARAY', 'A', 1),
	(1550, 'PORFIRIO SANTACRUZ', '.', '2483726-1', '0', 'CAMPO 9', 'A', 1),
	(1551, 'DAVID ARMANDO FLEITAS AVALOS', '.', '3660306', '982953117', '24 DE OCTUBRE', 'A', 1),
	(1552, 'MARCELO MEDINA', '.', '4.878.306-4', '984771138', 'LUQUE', 'A', 1),
	(1553, 'LADERO  PARAGUAYO S.A.', '.', '80018240-5', '0', 'ASUNCION', 'A', 1),
	(1554, 'CRISTINO JARA', '.', '3000830-1', '0', 'CAMPO 9', 'A', 1),
	(1555, 'JESSICA BAEZ', '.', '3233275-0', '985778362', 'FERNANDO DE LA MORA', 'A', 1),
	(1556, 'MARIA NATALIA ALEGRE GALEANO', '.', '5013475-2', '991416094', 'MANUEL ORTIZ GUERRERO C/ KUBITSCHEK - SL', 'A', 1),
	(1557, 'ALCIDES CABRERA', '.', '2510903-0', '0', 'CAPITAN MIRANDA', 'A', 1),
	(1558, 'JOSE KOHL', '.', '3590754-1', '0', 'CALLE 3', 'A', 1),
	(1559, 'MOLINOS HARINERO ITAMBEY S.A', '.', '80008471-3', '981489931', 'RUTA 1 KM 19 - CAPIATA', 'A', 1),
	(1560, 'COMEPAR S.A', '.', '80017044-0', '21440179', 'LUGANO 452 C/ 14 DE MAYO', 'A', 1),
	(1561, 'DIEGO ANDRES MONTES', '.', '6114780-0', '983960068', 'LUQUE', 'A', 1),
	(1562, 'TRANQUILINO GALEANO ESCALADA', '.', '659555-3', '972229711', 'ROSADA GUAZU - YPANE', 'A', 1),
	(1563, 'CHACRA LINDA SRL', '.', '80059265-4', '981489931', 'RUTA 1 KM 19 - CAPIATA', 'A', 1),
	(1564, 'GUILLERMO RAMIREZ', '.', '1453857-1', '981489931', 'RUTA 1 KM 19 - CAPIATA', 'A', 1),
	(1565, 'VICTOR RENE BOGARIN PEREZ', '.', '4636172-3', '991688396', 'MBOKAYATY - VILLA ELISA', 'A', 1),
	(1566, 'ESTELA MARI MEDINA ACOSTA', '.', '3.549.888-9', '992546079', 'ANTOLIN AYALA C/ YEGROS - CAPIATA', 'A', 1),
	(1567, 'BLANCA GALLARDO', '.', '1497265-4', '961901344', 'SAUCE C/ ARTIGAS - 4TO BARRIO', 'A', 1),
	(1568, 'TITO  GIMENEZ  LOPEZ', '.', '2152105-0', '0981-657152', 'COL. CLETO ROMERO', 'A', 1),
	(1569, 'FABIO ARNALDO SERVIN AVALOS', '.', '5944524', '0985 73840', 'VILLETA', 'A', 1),
	(1570, 'NESTOR BARRETO', '.', '4036816-5', '0', 'OVIEDO', 'A', 1),
	(1571, 'MIRNA ZENAIDA VALDEZ', '.', '3665819-7', '981180533', 'GUARANIES ESQ. SAN MARCOS', 'A', 1),
	(1572, 'AGRO TOLEDO S.R.L.', '.', '80094550-6', '0983 618200', 'LUCERO', 'A', 1),
	(1573, 'JUAN LEONARDO SOSA', '.', '6016561-8', '0973-529978', 'CAMPO 9', 'A', 1),
	(1574, 'MIGUEL ANGEL CABALLERO VAESKEN', '.', '815139-3', '983274232', 'J. A. SALDIVAR', 'A', 1),
	(1575, 'EMANUEL DUARTE', '.', '5599003-7', '0982 427798', 'PASO YOBAI', 'A', 1),
	(1576, 'MARIA ANGELICA BOGARIN', '.', '6362487', '0973 190526', 'CAMPO 9', 'A', 1),
	(1577, 'COMERCIAL SAN LUIS', '.', '44444401-7', '0', 'YASY CAÑY', 'A', 1),
	(1578, 'EPIFANIA BEATRIZ FRETEZ', '.', '1713580-0', '981504271', 'NICASIO INSFRAN E/ MANUEL RODRIGUEZ', 'A', 1),
	(1579, 'LURDES DE JESUS FLECHAS VARGAS', '.', '3593837-4', '0', 'PASTOREO', 'A', 1),
	(1580, 'TRANSPORTE R D', '.', '2945752-1', '983544450', 'CAMPO 9', 'A', 1),
	(1581, 'ROSALINO  ACOSTA VEGA', '.', '4039168-0', '972751304', 'THOMPSON - CAPIATA', 'A', 1),
	(1582, 'ROSSANA PEREZ', '.', '3933420-1', '982589723', 'AREGUA', 'A', 1),
	(1583, 'ALIMENTOS ESPECIALES S.A', '.', '80003296-9', '217290016', 'ESPAÑA - MOLAS LOPEZ - 4 MOJONES', 'A', 1),
	(1584, 'DELIA ROSSANA ALMADA AÑAZCO', '.', '3754905-7', '981858011', '12 DE JUNIO Y 3 DE MAYO - VILLA ELISA', 'A', 1),
	(1585, 'CESAR RAMIREZ NOGUERA', '.', '2.239.158-4', '981855528', 'LUQUE', 'A', 1),
	(1586, 'JUAN JOSE MEDINA FRETEZ', '.', '4121770', '982478293', 'GUARAMBARE', 'A', 1),
	(1587, 'NORMA ROSA MARTINEZ', '.', '1912005-2', '981921902', 'FRAY LUIS DE BOLAÑOS ESQ. MARCO ANTONIO', 'A', 1),
	(1588, 'JOSE DANIEL BARRIOS GONZALEZ', '.', '4.977.976-1', '994452161', 'MRA', 'A', 1),
	(1589, 'FERMIN SANDOVAL MOLINAS', '.', '3241378-5', '9860334613', 'AZALEA ESQ. YVAPO`O', 'A', 1),
	(1590, 'VENANCIO  VILLALBA  ROJAS', '.', '3446636-3', '0981-398102', 'CAAGUAZU', 'A', 1),
	(1591, 'ROBERTO CENTURION PEREZ', '.', '661312-8', '21571303', 'SAN LORENZO', 'A', 1),
	(1592, 'VETERINARIA CEMIKE', '.', '4384020-5', '0', 'CAPIIBARY', 'A', 1),
	(1593, 'COMERCIAL GALAXIA', '.', '4003182-9', '0', 'CAPIIBARY', 'A', 1),
	(1595, 'MYRON  EICHORN', '.', '3553467-2', '0971-526868', 'CAMPO 9', 'A', 1),
	(1596, 'KENDRIC WALTER SCHLABACH', '.', '5115277-0', '0982-694081', 'COL, LUZ Y ESPERANZA', 'A', 1),
	(1597, 'ALBERTO AREVALOS', '.', '2.225.258', '981648952', 'LUQUE', 'A', 1),
	(1598, 'MARIELA MEZA AGUIRRE', '.', '3.561.526-5', '972516655', 'TESAPE ARA Nª 1130 C/ CURUPAYTY', 'A', 1),
	(1599, 'MIRTA MABEL MELGAREJO ARAUJO', '.', '5.386.258-9', '985753449', 'GRAL. GARAY C/ ANASTACIO QUITANA (MRA)', 'A', 1),
	(1600, 'ALICIA NIDIA MULKA', '.', '4176236-3', '971280693', 'LUQUE', 'A', 1),
	(1601, 'OSVALDO VELASQUEZ', '.', '822602-4', '971500725', 'CONCEJAL VARGAS 2229 C/ DIAZ DE LEON', 'A', 1),
	(1602, 'JORGE PEREIRA CHAVEZ', '.', '2215608-9', '983255236', 'VILLA HAYES', 'A', 1),
	(1603, 'VICTOR CARDOZO', '.', '5704174-1', '0', 'SANTANI', 'A', 1),
	(1604, 'REIMUNDO CAÑETE', '.', '706332-6', '0', 'CAAGUAZU', 'A', 1),
	(1605, 'MARIA STELA AQUINO QUINTANA', '.', '562071-6', '985221182', 'URUGUAY C/ CHILE', 'A', 1),
	(1606, 'MENEVA S.R.L.', '.', '80024014-6', '0', 'ASUNCION', 'A', 1),
	(1607, 'DAVID THIESEN', '.', '3483004-9', '0', 'CAMPO 29', 'A', 1),
	(1608, 'CLAUDIA MACHUCA', '.', '1816175-8', '995696147', 'ASUNCION', 'A', 1),
	(1609, 'JUAN MOREL', '.', '2160763', '986807765', 'TTE. GONI C/ 12 DE OCTUBRE - LUQUE', 'A', 1),
	(1610, 'DIDILFO  ALCIDES  DAVALOS', '.', '2353700-0', '0983-219009', 'CIUDAD DEL ESTE', 'A', 1),
	(1611, 'KAREN ESPINOLA', '.', '5159146-4', '983378762', 'CAPIATA', 'A', 1),
	(1612, 'MARIA EUGENIA BAZAN', '.', '4229162-3', '986762510', 'LUQUE', 'A', 1),
	(1613, 'HERCOSUL INTERNATIONAL SRL', '.', '80100807-7', '0986-329157', 'S.D.ESTE', 'A', 1),
	(1614, 'HILARIO BOGADO', '.', '1591475', '991401585', 'YUKYRY', 'A', 1),
	(1615, 'FRANCISCO  FIGUEREDO', '.', '2338171-0', '0971-544950', 'CIUDAD DEL ESTE', 'A', 1),
	(1616, 'KARINA CARBALLO', '.', '3786474-2', '972667704', 'TREBOL 60', 'A', 1),
	(1617, 'ZULMA CATALINA IGLESIA DE NOGUERA', '.', '1695193-0', '983742729', 'LUQUE', 'A', 1),
	(1618, 'VIRGINIA GOMEZ CONTRERA', '.', '4903296-8', '0', 'CAMPO 9', 'A', 1),
	(1619, 'AUTOSERVICE FANNY', '.', '941224-7', '.', 'ÑUMI - FASARDI  DEP. GUAIRA', 'A', 1),
	(1620, 'CESAR DUARTE', '.', '3829903-8', '982361123', 'LUQUE', 'A', 1),
	(1621, 'ROSALBA LOPEZ SANABRIA', '.', '2121566-9', '981382911', 'RUTA KM 19,5 CAPIATA', 'A', 1),
	(1622, 'AURELIO ARCE BENITEZ', '.', '2866661-5', '0', 'CAMPO 9', 'A', 1),
	(1623, 'CANDIDA CARDOZO', '.', '3844404-6', '982980012', 'CALLE PALO SANTO 106 C/ EUGENIO GARAY', 'A', 1),
	(1624, 'LIDER AUGUSTO GODOY GODOY', '.', '2477774', '981120803', 'CAPIATA RUTA KM 24', 'A', 1),
	(1625, 'JORGE BRITEZ', '.', '555801-8', '981842132', 'LUQUE', 'A', 1),
	(1626, 'NARCISO GONZALEZ', '.', '1232050', '972591978', 'RUTA 1 KM 20 29', 'A', 1),
	(1627, 'ACOSTA BATTI SRL', '.', '80111196-0', '981838681', 'CAPIATA RUTA 1 KM 24', 'A', 1),
	(1628, 'OSCAR LUIS MARTINEZ ROMERO', '.', '1533062-1', '984396638', 'SAN ANTONIO', 'A', 1),
	(1629, 'FAUSTO ANDRES ARAUJO ACEVEDO', '.', '5813040', '971289330', 'MRA', 'A', 1),
	(1630, 'JUAN MANUEL OCAÑO', '.', '4248779-0', '0', 'ASUNCION', 'A', 1),
	(1631, 'ARTEMIO OJEDA', '.', '892930-0', '0991-199997', 'GRAL. GARAY NRO. 62', 'A', 1),
	(1632, 'PILAR TRADING S.A.', '.', '80025349-3', '0', 'OVIEDO', 'A', 1),
	(1633, 'BALANCEADOS Y DISTRIBUIDORA L Y O', '.', '4933414-0', '0', 'CAAZAPA', 'A', 1),
	(1634, 'JAUN RAMON BENITEZ', '.', '4707211-3', '0', 'ITURBE', 'A', 1),
	(1635, 'RENE CESPEDES', '.', '2477972-5', '984839402', 'JUAN DE MENA 35', 'A', 1),
	(1636, 'TRANSAGRO S.A.', '.', '80024300-5', '0', 'CAMPO 9', 'A', 1),
	(1637, 'DERLIS FLEITAS', '.', '2191425-7', '994277180', 'LUQUE', 'A', 1),
	(1638, 'DISCO S.A.', '.', '80019030-0', '0', 'ASUNCION', 'A', 1),
	(1639, 'PIKY S.A.', '.', '80028181-0', '0', 'P.J.C. AMAMBAY', 'A', 1),
	(1640, 'AURELIA MELGAREJO GAMARRA', '.', '1705283-1', '971388016', 'PALO SANTO 311 - RUTA 1 CAPIATA', 'A', 1),
	(1641, 'FERMINA CARDOZO FERNANDEZ', '.', '2044385-4', '992860235', 'NUESTRA SEÑORA DEL PILAR E/ 4TO BARRIO T', 'A', 1),
	(1642, 'AYLEN', '.', '3380113-2', '0', 'CAPIIBARY', 'A', 1),
	(1643, 'MARIA ELENA AYALA', '.', '662409-0', '992258226', 'MADAME LYNCH C/ AVIADORES DEL CHACO', 'A', 1),
	(1644, 'OPTACIANO GOMEZ', '.', '296918-1', '994973247', 'LIMPIO', 'A', 1),
	(1645, 'EDID TERESA ALMIRON', '.', '1293847-5', '981784222', 'PAI Y ÑU  Y LOTE GUAZU', 'A', 1),
	(1646, 'PLASMA SA', '.', '80034440-5', '981214327', 'LUGANO 452 C/ 14 DE MAYO', 'A', 1),
	(1647, 'YANINA MARIA BENITEZ RODRIGUEZ', '.', '5805764', '975578686', 'MISIONES', 'A', 1),
	(1648, 'BLAS DAVID IVO MARTINEZ', '.', '4178422-7', '0', 'OVIEDO', 'A', 1),
	(1649, 'SONIA ELIZABETH   GOIRIS DE ALEGRE', '.', '2601739-3', '0973-505661', 'CIUDAD DEL ESTE', 'A', 1),
	(1650, 'LAURA AVALOS', '.', '1978843-6', '9860343782', 'OÑONDIVEPA 619 CASI SAN ONOFRE', 'A', 1),
	(1651, 'LOURDES DEJESUS FLECHA VARGAS', '.', '3593837-4', '0', 'CAMPO 9', 'A', 1),
	(1652, 'VICTORIA VERA', '.', '753069-2', '975497035', 'DR. VICTORIO CURIEL Y /  FERNANDO MOMPOX', 'A', 1),
	(1653, 'ARCANGEL S.A', '.', '80015345-6', '983337041', 'SAN BLAS Y 16 DE AGOSTO - ÑEMBY', 'A', 1),
	(1654, 'DORA DOMÍNGUEZ', '.', '3.208.414', '971562791', 'MAURICIO C. OCAMPO C/ SAN SEBASTIAN', 'A', 1),
	(1655, 'RAQUEL  THOMAS', '.', '3616498-4', '0', 'SANTA RITA', 'A', 1),
	(1656, 'DAFID CABALLERO', '.', '6945636-4', '0', 'CAMPO 9', 'A', 1),
	(1657, 'JOSE LUIS GODOY SEGOVIA', '.', '4.396.560-1', '982130555', 'GUARAMBARE', 'A', 1),
	(1658, 'DERLIS AGUILERA', '.', '4.654.591-3', '962103028', 'LUQUE', 'A', 1),
	(1659, 'ANTONIO RAFAEL GALEANO', '.', '4003150-0', '0', 'PEDRO JUAN', 'A', 1),
	(1660, 'CHRISTIAN SEGOVIA', '.', '5.164.415-0', '984539032', 'LUQUE', 'A', 1),
	(1661, 'ADRIANA AMARILLA', '.', '1538947-2', '991795339', 'ASUNCION', 'A', 1),
	(1662, 'EDGAR GABRIEL  JARA  GONZALEZ', '.', '4719364-6', '0', 'CAMPO 9', 'A', 1),
	(1663, 'ANDREA CRISTINA GOMEZ MARTINEZ', '.', '4.277.895-6', '982913374', 'CAMPO VIA C/ PASEO DE FATIMA - MRA', 'A', 1),
	(1664, 'COMERCIAL JORGE RECALDE', '.', '5253787-0', '0', 'SAN PEDRO DEL YCUAMANDIYU', 'A', 1),
	(1665, 'JET  DEL  ESTE  S.A.', '.', '80033076-5', '0982-523006', 'ENCARNACION', 'A', 1),
	(1666, 'RUTH CARDOZO', '.', '3347685', '992716118', 'LAS MARGARITAS', 'A', 1),
	(1667, 'MARIO RUBEN SALINAS', '.', '4551339', '992792923', 'DEL PILAR C/ TAYI - LUQUE', 'A', 1),
	(1668, 'NERY ASUNCION BENEGAS BENITEZ', '.', '2.312.969-7', '982331817', 'VILLA DEL REY 32 C/ ITURBE', 'A', 1),
	(1669, 'MIRIAN BOGADO', '.', '2205341-7', '991537360', 'ÑEMBY', 'A', 1),
	(1670, 'ROLDING SA', '.', '80017224-8', '985984572', 'MCAL LOPEZ C/ SAN MARTIN', 'A', 1),
	(1671, 'HUGO ESPINOLA', '.', '947406-4', '0', 'ITURBE', 'A', 1),
	(1672, 'LIZ BENITEZ', '.', '5554812-1', '982710416', 'ITA', 'A', 1),
	(1673, 'ELISEO RAMIREZ NOGUERA', '.', '1.730.151', '983825466', 'LUQUE', 'A', 1),
	(1674, 'RANCHO YSAPY S.A.', '.', '80092245-0', '0971 364 920', 'LIMPIO', 'A', 1),
	(1675, 'LUIS MIGUEL BENITEZ', '.', '4467333', '972588534', 'NUEVA ASUNCION - AREGUA', 'A', 1),
	(1676, 'CECILIO SANTIAGO MARTINEZ', '.', '370390016-4', '0981-463453', 'OVIEDO', 'A', 1),
	(1677, 'PABLO MEDINA', '.', '4878306-4', '21205542', 'LUQUE', 'A', 1),
	(1678, 'CASA COMERCIAL SA', '.', '80085871-9', '986555164', 'SAN LORENZO', 'A', 1),
	(1679, 'ALEXIS DE JESUS ESPINOZA', '.', '4933035-7', '982623448', 'GUARAMBARE', 'A', 1),
	(1680, 'IRUÑA  S.A.I.C', '.', '80003501-1', '0', 'ALTO  PARANA', 'A', 1),
	(1681, 'DIEGO FIDEL RUIZ  FRANCO', '.', '3410686-3', '983236998', 'ITA -', 'A', 1),
	(1682, 'AGROVETERINARIA LA  GRANJITA DE AREGUA', '.', '2339728-4', '0981 838531', 'AREGUA', 'A', 1),
	(1683, 'DESPENSA AL PASO', '.', '7196926-8', '0', 'CAMINO A CAAZAPA', 'A', 1),
	(1684, 'DESPENSA LIZ', '.', '1284944-8', '0', 'CAAZAPA', 'A', 1),
	(1685, 'VIVIANA RAQUEL PORTILLO CIBILS', '.', '3350391-5', '0', 'ISLA SACA YEGROS', 'A', 1),
	(1686, 'AMALIO BAEZ', '.', '5.001.441', '984968309', 'LUQUE', 'A', 1),
	(1687, 'COMERCIAL KATIA', '.', '2172166-1', '0', 'MELGAREJO', 'A', 1),
	(1688, 'EDGAR RAMON DUARTE MORINIGO', '.', '3280537-3', '981116299', 'ACCESO SUR', 'A', 1),
	(1689, 'DESPENSA TIAGO', '.', '7203021-6', '0', 'YASY CAÑY', 'A', 1),
	(1690, 'FRANCISCO BENITEZ RAMOS', '.', '2261651-9', '0', 'CALLE 6', 'A', 1),
	(1691, 'MARIA BEATRIZ OVIEDO VILLAGRA', '.', '4629931-9', '986446955', 'CAÑADA SOLIS Y RAMON DALQUIS', 'A', 1),
	(1692, 'O V L S.A', '.', '80080732-4', '985624909', 'FOTOGRAFOS DEL CHACO C/ CAMPO VIA', 'A', 1),
	(1693, 'FRUTERIA Y VERDULERIA SAN JUAN', '.', '5295794-2', '0', 'SAN PEDRO DEL YCUAMANDYYU', 'A', 1),
	(1694, 'COMERCIAL CELINA DE MIRIAN BEATRIZ PIZAR', '.', '5841378-2', '0', 'ITURBE', 'A', 1),
	(1695, 'MAXIMILIANO ALEXIS MARTINEZ', '.', '5.312.465-0', '982641343', 'LUQUE', 'A', 1),
	(1696, 'SILVIO ACOSTA ARAUJO', '.', '1070278-4', '985188654', 'VILLA ELISA', 'A', 1),
	(1697, 'DESPENSA 2 HERMANOS', '.', '3646947-5', '0', 'FASSARDI', 'A', 1),
	(1698, 'ROSALBA MARIN LUGO', '.', '5286067', '985880382', 'YPANE', 'A', 1),
	(1699, 'VICTOR GABRIEL GONZALEZ PEREZ', '.', '2.115.953-0', '982176073', 'NAZARETH C/ PILAR Y ENCARNACION', 'A', 1),
	(1700, 'CRISTIAN DAVID CHAPARRO FALCON', '.', '5155458-5', '984517762', 'ITAGUA', 'A', 1),
	(1701, 'JUAN CARLOS GONZALEZ SOTTO', '.', '4553344-0', '0975-928536', 'RAUL ARSENIO', 'A', 1),
	(1702, 'ELIDA FERREIRA', '.', '3960510-8', '981120803', 'LUQUE', 'A', 1),
	(1703, 'JOSE MARIA PEREZ PORTILLO', '.', '5205895-6', '982787107', 'LAS LOMITAS - ÑEMBY - CALLE MUNICIPAL -2', 'A', 1),
	(1704, 'ROBERT WALTER GAMARRA', '.', '1907683', '981525430', 'CAPIATA - LAURELTY', 'A', 1),
	(1705, 'MARIA DEL ROSARIO COLMAN', '.', '4036267-1', '0981-754824', 'CAAGUAZU', 'A', 1),
	(1706, 'LETICIA GARCIA', '.', '2.373.072-2', '985323888', 'LUQUE', 'A', 1),
	(1707, 'JUAN PABLO GALEANO', '.', '748141', '984196455', 'LUQUE - PLAZA TREBOL', 'A', 1),
	(1708, 'ESTEBAN BERNAL RODRIGUEZ', '.', '4705035-7', '98555875', '28 PROYECTADA Y EEUU BARRIO OBRERO', 'A', 1),
	(1709, 'ESTELA MARY GOMEZ', '.', '753679-8', '974991003', 'SEMNTO CASI VAPO SANLORENZO', 'A', 1),
	(1710, 'DEJESUS CONCEPCION DA ROSA', '.', '380993-5', '981142574', 'ALEJO GARCIA 1248 C7 MEDICOS DEL CHACO -', 'A', 1),
	(1711, 'MARIA ESTHER GONZALEZ CHAPARRO', '.', '3849116-8', '983552227', 'MCAL. ESTIGARRIBIA E/ BENJAMIN ACEVAL', 'A', 1),
	(1712, 'ZACHARIAS JARA', '.', '2192633-6', '0', '0', 'A', 1),
	(1713, 'ROMPELZ SA', '.', '80089912-1', '982239630', 'SAN ANTONIO', 'A', 1),
	(1714, 'IVAN ARIEL VARGAS', '.', '712012', '982541506', 'CALLE YVATE', 'A', 1),
	(1715, 'HUGO ACUÑA', '.', '3988300-0', '982338285', 'NABUCODONOSOR Y CAMPOS DEL PY', 'A', 1),
	(1716, 'JULIO ROBERTO TRINIDAD FERREIRA', '.', '3599132-1', '971601166', 'AREGUA', 'A', 1),
	(1717, 'JOEL ZORRILLA ORTIZ', '.', '6140264', '986671276', 'BARRIO KENNEDY CAPIATA', 'A', 1),
	(1718, 'ALCA INSUMOS', '.', '3982986-3', '981560444', 'LIMPIO', 'A', 1),
	(1719, 'DOÑA BEATRIZ SA', '.', '80029283-9', '981295005', 'LUQUE', 'A', 1),
	(1720, 'OSCAR COLMAN', '.', '4204165-1', '981295005', 'LUQUE', 'A', 1),
	(1721, 'JULIO CESAR CHAVEZ', '.', '2341909-1', '994673204', 'LAS GOLONDRINAS C/ SAN ISIDRO', 'A', 1),
	(1722, 'OSCAR JOEL ORZUZA', '.', '4209745-2', '0975-491584', 'CAMPO 9', 'A', 1),
	(1723, 'COMERCIAL JESUCITO', '.', '4707211-3', '0', 'YUTY DEP.DE CAAZAPA', 'A', 1),
	(1724, 'ALBERTO AGUERO', '.', '2511499-9', '983376702', 'ZORRILLA DE SAN MARTIN 2175 C/ LOPEZ DE', 'A', 1),
	(1725, 'ALCIDES INSAURRALDE', '.', '2838057-6', '981147870', 'SAN COSME C/ SANTA BARBARA', 'A', 1),
	(1726, 'LORENA CHAVEZ', '.', '3.982.069-6', '993540878', 'LUQUE', 'A', 1),
	(1727, 'MUSTER  S.A.', '.', '80088741-7', '0331-243454', 'LOCAL FORTIS CONCEPCION', 'A', 1),
	(1728, 'ENVASES ITAPUA S.A.', '.', '80013593-8', '985109138', 'CAMBYRETA PY', 'A', 1),
	(1729, 'JUAN ISIDRO CHAVEZ', '.', '4550184', '982720941', 'CAPIATA', 'A', 1),
	(1730, 'UNIÓN INDUSTRIAL PARAGUAYA', '.', '80023473-1', '985138504', 'UIP - SAN LORENZO', 'A', 1),
	(1731, 'WILHELM PENNER FRIESEN', '.', '3291396-6', '0', 'RIO VERDE', 'A', 1),
	(1732, 'MARIO DUARTE MARTINEZ', '.', '3780304', '982463841', 'SAN JOSE C/ NARANAJA - LIMPIO', 'A', 1),
	(1733, 'JORGE RAMON JARA RUIZ', '.', '4003441', '985286810', 'MARICAL FRANCISCO SOLANO LOPEZ', 'A', 1),
	(1734, 'CARMEN BRITEZ CABALLERO', '.', '4349115-4', '984847000', 'SAN JOSE', 'A', 1),
	(1735, 'OSCAR DAVID VIERA  AÑAZCO', '.', '4553550-7', '0', 'GUYRUNGUA', 'A', 1),
	(1736, 'LICELIS GIMENEZ MIRANDA', '.', '3485992-6', '982901210', '1RO DE MAYO Y PROGRESO', 'A', 1),
	(1737, 'DESPENSA CARNICERIA DE MARIA E. ORTEGA', '.', '6096303-4', '0', 'JASY CAÑY', 'A', 1),
	(1738, 'VICTOR RENE GUILLEN LOPEZ', '.', '1.681.921-7', '981143109', 'LEANDRO PINEDO C/ ITURBE GUARAMBARE', 'A', 1),
	(1739, 'REINALDO SOSA NAVARRO', '.', '3.448.610-0', '985880382', 'YPANE', 'A', 1),
	(1740, 'MARCIAL LOPEZ BENITEZ', '.', '2.608.196', '984544629', 'MAGALLANES - LIMPIO (SECOM)', 'A', 1),
	(1741, 'CRISPIN RIVEROS', '.', '2045159-8', '986618494', 'SAN LORENZO LAURELTY', 'A', 1),
	(1742, 'VICTOR MATTO', '.', '879897-4', '984752519', 'TEODORO S. MONGELOS 2870 E/ ORIENTALES', 'A', 1),
	(1743, 'FAQPAR  S.A.', '.', '80027938-7', '0984 505500', 'OVIEDO', 'A', 1),
	(1744, 'VICTOR ARZAMENDIA', '.', '3.444.756-3', '984448011', 'CALLE 4 - MRA LOMA PYTA', 'A', 1),
	(1745, 'COM. Y CARN. LUJANI YESICA NOEMI TRUBGER', '.', '14345221', '0986-415360', 'SANTA  ROSA', 'A', 1),
	(1746, 'MARCO ESPINOLA', '.', '1638829-1', '982318152', 'LUQUE', 'A', 1),
	(1747, 'ALEXIS INSFRAN', '.', '5.135.095-5', '994481631', 'CAPIATA KM 21 - RUTA', 'A', 1),
	(1748, 'DERLIS BUSSE', '.', '3767241-0', '0', 'SAN FRANCISCO CALLE 5', 'A', 1),
	(1749, 'TRUCK SERVICE S.A.', '.', '80055982-0', '0971-422917', 'J , E, ESTIGARRIBIA', 'A', 1),
	(1750, 'VICTOR DIAZ', '.', '3404005-6', '991822730', 'LUQUE', 'A', 1),
	(1751, 'MARIA INES', '.', '1257607', '982351686', 'LUIS 14 C/ ARSENIA GARCIA - SAN LORENZO', 'A', 1),
	(1752, 'EL ANTIGUO', '.', '1704962-8', '21229787', 'TEODORO SAN MONGELOS C/ MAYOR BLAS FLEIT', 'A', 1),
	(1753, 'OSCAR DELVALLE', '.', '4485628-8', '986343782', 'LA VICTRIA CASI GRAL BRITEZ', 'A', 1),
	(1754, 'LUIS ANTONIO ESCOBAR AYALA', '.', '1225313-8', '971956435', 'ZONA 7 - BAÑANDO TAMCUMBU', 'A', 1),
	(1755, 'ARCADIO GUILLEN MATTO', '.', '964.152-1', '981143109', 'LEANDRO PINEDO C/ ITURBE GUARAMBARE', 'A', 1),
	(1756, 'PLACIDO PAEZ', '.', '5354333-5', '0', 'CAMPO 9', 'A', 1),
	(1757, 'BELCORP CIA Y S.A', '.', '80111031-9', '976345100', 'CNEL. MARTINEZ C/ INMACULADA CONCEPCION', 'A', 1),
	(1758, 'BLANCA VILLAGRA', '.', '3639472-6', '984418122', 'LUQUE', 'A', 1),
	(1759, 'JOSE FELIX ORREGO NACIMIENTO', '.', '1043737-1', '961947840', 'HEROES DEL CHACO CASI MOISES BERTONI', 'A', 1),
	(1760, 'JUAN GOMEZ', '.', '867645-3', '981970394', 'AMERICA C/ TRANSCHACO - LUQUE', 'A', 1),
	(1761, 'RUFINA VALIENTE', '.', '3892541-9', '0', 'KM15', 'A', 1),
	(1762, 'EBEN EZER FARMA', '.', '3680260-3', '985874195', 'ALFONSO RODRIGUEZ 271', 'A', 1),
	(1763, 'DARIO RAMON CABALLERO GIMENEZ', '.', '5014326-3', '0985 - 773255', 'CUIDAD DEL ESTE', 'A', 1),
	(1764, 'COOP MULT GRUENFELD LTDA', '.', '80049644-2', '0', 'RIO  VERDE', 'A', 1),
	(1765, 'DAVID ARIEL FERNANDEZ DIAZ', '.', '2.992.599-1', '98481958', 'FIDEL MAIZ E/ 3 DE MAYO', 'A', 1),
	(1766, 'EMILCE RODRIGUEZ', '.', '4331619-0', '981357081', 'SATURNINO RIOS C/ SANTA RITA - LAMBARE', 'A', 1),
	(1767, 'SHALOM ISRAEL COUSIRAT GOMEZ DE LA FUENT', '.', '2.410.357', '982572717', 'LUQUE', 'A', 1),
	(1768, 'ANTONIO FERRANDO', '.', '4877979-2', '984234759', 'SAN LORENZO', 'A', 1),
	(1769, 'AJ MUBLES', '.', '2.369.029-1', '981150118', 'CAP ANDRES INSFRAN', 'A', 1),
	(1770, 'RAUL BAEZ', '.', '3465401-1', '0983 239 276', 'RODRIGUEZ DE FRANCIA CASI ITURBE', 'A', 1),
	(1771, 'MARCELO RECALDE', '.', '4556716-6', '0992 322 516', 'SAN CARLOS', 'A', 1),
	(1772, 'RUBEN MALDONADO', '.', '4687361-9', '.', 'VILLA 24', 'A', 1),
	(1773, 'MARCELO  ASTIGARRAGA', '.', '3199531-4', '0', 'ENCARNACION', 'A', 1),
	(1774, 'AGROVETERINARIA SERVITEC', '.', '4384020-5', '0', 'CAPIIBARY', 'A', 1),
	(1775, 'AGROVETERINARIA ZANVET', '.', '6049301-1', '0', 'AV.EUSEBIO AYALA C/TACUARY CURUGUATY', 'A', 1),
	(1776, 'COMERCIAL LYF', '.', '4088582-8', '0', 'YPEJHU', 'A', 1),
	(1777, 'DESPENSA SAN EXPEDITO', '.', '4016720-8', '0', 'COLONIA TENDAL (YPEJHU)', 'A', 1),
	(1778, 'AGROVETERINARIA ÑASAINDY', '.', '4716240-6', '0', 'CURUGUATY', 'A', 1),
	(1779, 'COMERCIAL SOSMIL DE WENCELADA GIMENEZ', '.', '1442816-4', '0', 'VILLA YGATIMI', 'A', 1),
	(1780, 'GRUPO TRANS AMERICA S.A.', '.', '80088807-3', '0974-547854', 'COL LUZ Y ESPERANZA', 'A', 1),
	(1781, 'COMERCIAL GUARANI', '.', '4778089-4', '0', 'CURUGUATY', 'A', 1),
	(1782, 'SANTIAGO PERÉZ', '.', '1998251-8', '0986 638581', 'CAÑADA SAN RAFAEL', 'A', 1),
	(1783, 'MARIA ROSALINA MORALES', '.', '1093941-5', '972676588', 'MARCOS LACONICHZ', 'A', 1),
	(1784, 'NELSON ARIAS', '.', '2600252-3', '982479683', 'AVDA YCUA KAAVY E/ YASY', 'A', 1),
	(1785, 'MINIMERCADO DON DIELMA', '.', '3234402-3', '0', 'FASARDI', 'A', 1),
	(1786, 'ROBERTO CARLOS ALVARENGA GONZALEZ', '.', '1979474-6', '984517762', '4 VIENTOS LIMPIO', 'A', 1),
	(1787, 'DISTRIVET SRL', '.', '80094212-4', '994645352', 'CAPIATA RUTA 1 KM 20', 'A', 1),
	(1788, 'EDGAR ALMADA ROMAN', '.', '1673096', '982613007', 'PRATT GILL Y MOISES BERTTONI - ÑEMBY', 'A', 1),
	(1789, 'RUBEN DARIO LUGO', '.', '2446619', '994794347', '23 DE ABRIL C/ LORETA - LUQUE LAURELTY', 'A', 1),
	(1790, 'LILIANA SANTACRUZ', '.', '3234993', '983239276', 'RODRIGUEZ DE FRANCIA CASI ITURBE', 'A', 1),
	(1791, 'DESPENSA SAN MIGUEL', '.', '1440191-6', '0', 'SAN PEDRO DEL YCUAMANDIYU', 'A', 1),
	(1792, 'PANADERIA EL TRIGAL', '.', '1675104-3', '0', 'CORONEL OVIEDO', 'A', 1),
	(1793, 'PANADERIA ISMAEL ACOSTA', '.', '4031193-9', '0', 'OVIEDO', 'A', 1),
	(1794, 'HAMILTON DOS SANTOS', '.', '5226927-2', '0', '0', 'A', 1),
	(1795, 'CARLOS MEDINA', '.', '3471847', '986465960', 'CAPIATA RUTA 1', 'A', 1),
	(1796, 'ZUVELA S.A', '.', '80110393-2', '123456', 'MRA', 'A', 1),
	(1797, 'COMERCIAL FLORESTE', '.', '1842133-4', '0', 'CAPIIBARY', 'A', 1),
	(1798, 'AGROVETERINARIA YGATIMI', '.', '6023486-0', '0', 'VILLA YGATIMI', 'A', 1),
	(1799, 'JAVIER ARIAS', '.', '1402895-6', '985311623', 'SANTA MARIA C/ AVDA SAN ANTONIO', 'A', 1),
	(1800, 'CARMEN ROMINA FERREIRA FERNANDEZ', '.', '4347053-0', '983777492', '4TO. BARRIO B. CABALLERO - LUQUE', 'A', 1),
	(1801, 'MALCOLM KENNEDY', '.', '4645531-0', '0', 'CAMINO A SAN JUAN', 'A', 1),
	(1802, 'INMAPAR S.A.', '.', '80023444-8', '0', 'CORONEL OVIEDO', 'A', 1),
	(1803, 'SEVERO BARRIOS', '.', '1168937-4', '983305681', 'PRIMERA Y SEPTIMA  - LOMA PYTA', 'A', 1),
	(1804, 'FRONTERA COMERCIAL', '.', '2325892-6', '0', 'CRUCE TACUATI', 'A', 1),
	(1805, 'CENTRO COMERCIAL LA ECONOMIA', '.', '5188390-2', '0', 'SAN JUAN NEPOMUCENO', 'A', 1),
	(1806, 'PANADERIA ADA NOELIA SANTACRUZ', '.', '4060083-1', '0', 'SAN JUAN NEPOMUCENO', 'A', 1),
	(1807, 'MIGUEL BENITEZ', '.', '4214500-7', '981610497', 'CORDILLERA', 'A', 1),
	(1808, 'JUAN ANDRES MARTINEZ JARA', '.', '4191100-8', '981572390', 'REDUCTO SAN LORENZO', 'A', 1),
	(1809, 'CYNTHIA CARBALLO', '.', '2223104-8', '972667704', 'TREBOL 60', 'A', 1),
	(1810, 'AGROWHEAT S.R.L.', '.', '80113727-6', '0971448 370', 'JUAN E ESTIGARRIBIA', 'A', 1),
	(1811, 'SEFERINO LEDESMA', '.', '3538822-6', '981811855', 'SANLORENZO', 'A', 1),
	(1812, 'DARIO DANIEL SANTACRUZ CHAVEZ', '.', '7364392', '96885452', 'SAN LORENZO', 'A', 1),
	(1813, 'JOSE DOMINGO SANCHEZ MEZA', '.', '2001058', '0982-291096', 'CORONEL OVIEDO', 'A', 1),
	(1814, 'MARIA COLMAN', '.', '7127068', '992595345', 'YPANE', 'A', 1),
	(1815, 'FÉLIX AVALOS', '.', '3555772-9', '981224499', 'SAN LORENZO', 'A', 1),
	(1816, 'DIEGO RAMON DUARTE FARIÑA', '.', '5825469-2', '61575548', 'CIUDAD DEL ESTE', 'A', 1),
	(1817, 'COMERCIAL ALICE', '.', '5038948-3', '0986--415360', 'SANTA ROSA', 'A', 1),
	(1818, 'EDGAR FABIAN ORUE', '.', '3574560-6', '0983-581719', 'VASQUERIA', 'A', 1),
	(1819, 'DIGNA BOGARIN', '.', '3650355-0', '982303422', 'CLAUDIO ARRUA Y INOCENSIO SOTTO', 'A', 1),
	(1820, 'MERCEDES ESTELA GAONA MORINIGO', '.', '1420526-2', '985383484', 'JUAN DE MENA CASI ELOY RAMIREZ', 'A', 1),
	(1821, 'DESPENSA SAN MIGUEL', '.', '6831923-1', '0', 'VILLA YGATIMI', 'A', 1),
	(1822, 'COMERCIAL KATERIN HUGO RUBEN ZELAYA B.', '.', '4302068-2', '0', 'VILLA YGATIMI', 'A', 1),
	(1823, 'MILCIADES BRITEZ', '.', '2026330-9', '981278554', 'SAN LORENZO', 'A', 1),
	(1824, 'DAL MAGRO DIONE', '.', '6110265-2', '0', 'CAMPO 9', 'A', 1),
	(1825, 'REINALDO CACERES', '.', '4529533', '985516703', 'BELLA VISTA', 'A', 1),
	(1826, 'SALVADOR AGUILERA PEREZ', '.', '1938623-0', '981741223', 'ACCESO SUR', 'A', 1),
	(1827, 'CESAR DANIEL RIQUELME CANO', '.', '4261348-5', '0', 'BARRIO SANTA ROSA CAMINO ALCOTEC', 'A', 1),
	(1828, 'JOSEMARIA LEZCANO FLORES', '.', '1551407-2', '0', 'RIGOBERTO MEZA N° 396', 'A', 1),
	(1829, 'ESTANISLAA BEATRIZ AYALA', '.', '3992555-2', '984517762', 'LIMPIO', 'A', 1),
	(1830, 'DIONE DAL MAGRO', '.', '6110265-2', '0', '0', 'A', 1),
	(1831, 'DIEGO MENDEZ', '.', '1270433-4', '981441143', 'LUQUE', 'A', 1),
	(1832, 'FELICITA DOLDAN', '.', '1441974-2', '982905833', 'SANLORENZO', 'A', 1),
	(1833, 'DESPENSA SAN LORENZO', '.', '2972882-7', '0', 'SAN PEDRO YCUAMANDYYU', 'A', 1),
	(1834, 'MARIANO AVALOS', '.', '2177677', '992785889', 'CALLE TAIWAN', 'A', 1),
	(1835, 'CARNICERIA F Y S DE  MIGUEL GONZALEZ GON', '.', '2994796-0', '0', 'CAMINO A CURUGUATY (YASY CAÑY)', 'A', 1),
	(1836, 'MARTHA DUARTE', '.', '3185644-6', '991768683', 'INOCENCIO SOTO ESQ. FELIPE GONZALEZ', 'A', 1),
	(1837, 'SUPERMERCADO MITAIRORY', '.', '4840775-5', '0', 'CURUGUATY', 'A', 1),
	(1838, 'HIPERCENTER LA FAMILIA', '.', '44444401-7', '0', 'VILLA YGATIMI', 'A', 1),
	(1839, 'DESPENSA VIRGEN DE ITAPE DE DOLLY FRANCO', '.', '3747310-7', '0', 'COL.TENDAL  VILLA YGATIMI - YPEJHU', 'A', 1),
	(1840, 'CARLOS GOMEZ', '.', '3527550-2', '991253022', 'ISALA BOGADO', 'A', 1),
	(1841, 'PASTELERIA Y CONFITERIA LA DULZURA', '.', '5708774-1', '984753354', 'ÑEMBY', 'A', 1),
	(1842, 'TONY GOSSEN -  COMEDOR ACEITE PORA', '.', '4182872-0', '972444085', 'ABASTO - ASUNCION', 'A', 1),
	(1843, 'SILVESTRE SAMUEL SANTACRUZ', '.', '4286284-1', '985891741', 'ÑEMBY', 'A', 1),
	(1844, 'MARIA ELENA RIVAS CABALLERO', '.', '3861271-2', '984701660', 'ÑEMBY', 'A', 1),
	(1845, 'NICOLAS CHAMORRO', '.', '2499076-0', '991770337', 'CHERLE DE GAUYE C PACHECO 773', 'A', 1),
	(1846, 'BLASS CABALLERO', '.', '2943440-8', '962114433', 'RAFAEL MATERI C/ ANDRES BARBEROS', 'A', 1),
	(1847, 'BIANCA MORAN', '.', '4558431-1', '981873366', 'AV ARTIGAS NR 1966', 'A', 1),
	(1848, 'ALBERTO MIGUEL CENTURION', '.', '7033614-8', '984346588', 'SAN ROQUE CASI SAN MARIA', 'A', 1),
	(1849, 'CESAR NOGUERO', '.', '4288478-0', '0985 126890', 'AV. EDUARDO VASCONCELLOS CASI ACCESO SUR', 'A', 1),
	(1850, 'LUZ MARINA VELAZQUEZ SAMUDIO', '.', '4479500-9', '0', 'PASTOREO', 'A', 1),
	(1851, 'SCIO SOLUCCION SRL', '.', '80046445-1', '0984 240130', 'ARAUNANOS 249 C/ AMANCIO GONZALES', 'A', 1),
	(1852, 'DIANA ZOTELO NUÑEZ', '.', '4793034-9', '982236667', 'LUQUE', 'A', 1),
	(1853, 'JORGE LUIS AREVALOS VERA', '.', '3814636', '986319899', 'LIMPIO', 'A', 1),
	(1854, 'SELFIRIO CENTURION BARRIOS', '.', '2945714-9', '986355458', 'ASUNCION', 'A', 1),
	(1855, 'MARCELO CRISTALDO', '.', '3504460-8', '0981 207897', 'FERNANDO DE LA MORA', 'A', 1),
	(1856, 'VÍCTOR TOÑANEZ', '.', '4819453', '0981 683640', 'CALE CAAGUAZU', 'A', 1),
	(1857, 'JAZMIN MARIA GAONA DE BENITEZ', '.', '1737795-1', '981210717', 'FORTIN ARCE', 'A', 1),
	(1858, 'EL CHANCHITO RICO', '.', '2386910-0', ' 0981 224073', 'SAN ROQUE GONZÁLEZ 797 ESQ SOUSA', 'A', 1),
	(1859, 'IDIO ARMINDO GAMECHO', '.', '5512044-0', '0', 'CAMPO 9', 'A', 1),
	(1860, 'ALICIA MACHUCA', '.', '3188391-5', '982770438', 'MBOCAYA Y VENCEDORES DEL CHACO', 'A', 1),
	(1861, 'ROBERTO ACOSTA', '.', '3790776-0', '981491782', 'SAN BLAS Y ROBERYO L. PETIT', 'A', 1),
	(1862, 'CARLOS AUGUSTO MARTINEZ', '.', '3823693-1', '981491782', 'ROBERTO L. PETIT C/ SAN BLAS', 'A', 1),
	(1863, 'CELSO BRITEZ', '.', '2142232-0', '981133157', 'SAN JUDAS TADEO Y RAFAEL BARRETO', 'A', 1),
	(1864, 'JONY GONZALEZ PUCHALSKI', '.', '4582874-1', '0', 'SAN CRISTOBAL', 'A', 1),
	(1865, 'ARNALDO GOMEZ', '.', '522609-0', '0981 605 142', 'TTE ROJAS SILVA C PALMA', 'A', 1),
	(1866, 'GUSTAVO OJEDA DIAZ', '.', '1692709-5', '984480100', 'RUTA 12 KM 14 Y MEDIO', 'A', 1),
	(1867, 'PABLO MEDINA', '.', '4878306-4', '984771138', 'CAMPO VIA - PREMIX S.A', 'A', 1),
	(1868, 'FRANCISCO FERNANDEZ', '.', '1388001-2', '0', 'VILLARICA', 'A', 1),
	(1869, 'DISTRIBUIDORA CARDOZO', '.', '4749530-8', '983989469', 'FOTOGRAFOS DEL CHACO Y CENTINELA', 'A', 1),
	(1870, 'CECILIA ALEJANDRA VELAZQUEZ DE FERREIRA', '.', '2153131', '981894923', 'CALLE TRICOLOR - CAPIATA', 'A', 1),
	(1871, 'ANGELA BOGADO', '.', '3497808-9', '971218566', 'CAPITAN RIVAS - FDO MORA ZONA NORTE', 'A', 1),
	(1872, 'FRANCIANI DIERINGS', '.', '6689301-1', '0', 'CDE', 'A', 1),
	(1873, 'J K L COMERCIAL', '.', '2375947-0', '982882754', 'CURVA ROMERO - LUQUE', 'A', 1),
	(1874, 'JUAN MIGUEL BARRIOS', '.', '5075775-0', '983165389', 'RUTA CARAPEGUA-NUEVA ITALIA', 'A', 1),
	(1875, 'FRUTERIA VERDULERIA C Y G', '.', '7673202', '0', 'CURUGUATY', 'A', 1),
	(1876, 'COMERCIAL SAN JORGE DE  ALBA BEATR RODAS', '.', '4951756-2', '0', 'VILLA YGATIMI', 'A', 1),
	(1877, 'DESPENSA SAN CAYETANO', '.', '4463549', '0', 'COLONIA TENDAL CAM.A YPEJHU', 'A', 1),
	(1878, 'DISTRIBUIDORA SAN LUIS DE  LUIS RIQUELM', '.', '1893937-6', '0', 'YPEJHU', 'A', 1),
	(1879, 'JUAN RAMON JARA CESPEDES', '.', '4486882', '974232404', 'ÑEMBY', 'A', 1),
	(1880, 'INNOVACIONES ALIMENTARIAS S.R.L.', '.', '80028415-1', '21.650.271', 'ASUNCION  LUQUE', 'A', 1),
	(1881, 'HELENA REMPEL', '.', '950525-3', '0', 'CAMPO 9', 'A', 1),
	(1882, 'DESPENSA SAN RAMON', '.', '4396409-5', '0', 'FASARDI CAM.A SAN JUAN', 'A', 1),
	(1883, 'JUAN CARLOS SILVERO SANTACRUZ', '.', '4553316', '982392222', 'EPOPEYA NACIONAL - ASUNCION', 'A', 1),
	(1884, 'LUIS IBARRA', '.', '2471461', '992244116', 'LIMPIO', 'A', 1),
	(1885, 'CRISTIAN OTONELLI', '.', '3432539', '972745337', 'ISALA VALLE - AREGUA', 'A', 1),
	(1886, 'FORTALEZA  EMPRENDIMIENTOS', '.', '4119457-8', '.', 'ENCARNACION', 'A', 1),
	(1887, 'CONSORCIO  SANTA  ROSA', '.', '80096687-2', '0', 'ENCARNACION', 'A', 1),
	(1888, 'CINTIA MABEL ECHEVERRIA AGUILERA', '.', '4786411-7', '981', 'VILLA ELISA', 'A', 1),
	(1889, 'FELIPE  HILDEBRAND', '.', '1150694-6', '0', 'COL, SOMMERFELD', 'A', 1),
	(1890, 'JUAN MANUEL ORUE', '.', '4172886-6', '976398907', 'LAURELTY', 'A', 1),
	(1891, 'CRISTIAN GONZALEZ', '.', '4846246-2', '21', 'TREBOL', 'A', 1),
	(1892, 'JORGE LUIS AREVALOS', '.', '1055806-3', '994709118', 'MISIONES JESUITICAS ESQ. PEDRO CESPEDES', 'A', 1),
	(1893, 'FITRA  S.R.L.', '.', '80020224-4', '0', 'CIUDAD DEL ESTEW', 'A', 1),
	(1894, 'TOMAS JAVIER CHAVEZ', '.', '5592508-1', '982907467', '1 MAYO LAS RESIDENTAS - LUQUE', 'A', 1),
	(1895, 'DERLIS QUIÑONEZ', '.', '3404534-1', '981291211', 'JOSEFINA PLA CASI SINECIO CORONEL', 'A', 1),
	(1896, 'ERMELINDA YSFRAN', '.', '3180939', '981137680', 'ANDRES MAYADA Y FOTOGRAFOS DEL CHACO', 'A', 1),
	(1897, 'MARTA DURAÑONA', '.', '3796322', '981147870', 'FOTOGRAFOS DEL CHACO', 'A', 1),
	(1898, 'ZULMA BEATRIZ GOMEZ', '.', '3872755-2', '0985-765275', 'CAAGUAZU', 'A', 1),
	(1899, 'DISTRIBUIDORA FADA', '.', '5225600-6', '0', 'CORONEL OVIEDO', 'A', 1),
	(1900, 'DISTRIBUIDORA  PARAGUAY', '.', '4243949-3', '0', 'ENCARNACION', 'A', 1),
	(1901, 'ADRIANA LEGUIZAMON', '.', '4511698-9', '992857111', 'SARGENTO PRIMERO LEGUIZAMON', 'A', 1),
	(1902, 'DARIO MEDINA', '.', '3745020-4', '982953433', 'AMERICO PICO - VILLA ELISA', 'A', 1),
	(1903, 'ALICIA DELVALLE', '.', '2480133-0', '984782898', 'LAS FLORES ESQ. SGTO SILVA', 'A', 1),
	(1904, 'COMERDOR LOMITERIA A LO PERÚ', '.', '3296387-4', '982317324', 'ORTIZ GUERRERO CASI CAMBORIU', 'A', 1),
	(1905, 'JOSE HENRIQUE SOSA', '.', '6015930-8', '0', 'JUAN MANUEL FRUTOS', 'A', 1),
	(1906, 'WALTER DARIO TORALES FARIÑA', '.', '4550159', '983500644', 'YBYRAPYTA 9999 - RUTA 1', 'A', 1),
	(1907, 'MARIA DE LOS ANGELES SRL', '.', '80036283-7', '981210717', 'BALDERRA - LUQUE', 'A', 1),
	(1908, 'BM TRADING S.A.', '.', '80089222-4', '994357542', 'SGTO. CASTRO CASI PARAGUARI', 'A', 1),
	(1909, 'MARIA INES BENITEZ', '.', '1257607-7', '982351686', 'PADRES UNIDOS CASI CONCORDIA', 'A', 1),
	(1910, 'CRISTHIAN PEREIRA', '.', '4079318', '986441670', 'EUGENIO A GARAY ESQ, EVARISTO MELGAREJO', 'A', 1),
	(1911, 'ALICIA ELIZABETH CARDOZO', '.', '3922979', '991532023', 'TABLADA NUEVA', 'A', 1),
	(1912, 'MIGUEL CARDOZO', '.', '1448798', '991440823', 'CALLE INDIAS - TABLADA NUEVA', 'A', 1),
	(1913, 'COMERCIAL ROJAS', '.', '44444401-7', '0', 'CURUGUATY', 'A', 1),
	(1914, 'FREDY THIELMANN', '.', '565487-4', '981200822', 'SANTISIMA TRINIDAD', 'A', 1),
	(1915, 'CARLOS DUARTE', '.', '5102342-3', '981287082', 'LUGO ECHAURI', 'A', 1),
	(1916, 'MIGUEL BENITEZ', '.', '2486364-5', '981639975', 'JULIA MIRANDA CUETO - SANLORENZO', 'A', 1),
	(1917, 'ALFREDO MEZA BENITEZ', '.', '4026837-3', '0', 'C', 'A', 1),
	(1918, 'DESPENSA 2 HERMANOS', '.', '4463997-0', '0', 'VILLA YGATIMI', 'A', 1),
	(1919, 'JOSE AVALOS GONZALEZ', '.', '4510581', '981970611', 'ISLA AVEIRO - LIMPIO', 'A', 1),
	(1920, 'PETER SAWATZKY', '.', '1504313-4', '0', 'SOMMERFELD', 'A', 1),
	(1921, 'AIDA AQUINO DE  FARIAS', '.', '411382-9', '0', 'SONA LUQUE', 'A', 1),
	(1922, 'MIRTA ACHUCARRO', '.', '4784647-0', '985596686', 'ITACURUBI DE LA CORDILLERA', 'A', 1),
	(1923, 'PAGLES INTERNACIONAL PY S.A.', '.', '80056043-4', '0', 'CRUCE MBUTY', 'A', 1),
	(1924, 'ZARDUS  S.A.', '.', '80090523-7', '984655793', 'AS,   LIMPIO', 'A', 1),
	(1925, 'COMERCIAL BLANCA  NIEVES', '.', '688279-0', '0982-236667', 'CURUGUATY', 'A', 1),
	(1926, 'BEATRIZ  ZÁRATE', '.', '4388628-0', '983500644', 'YVYRAPYTA 9999 - RUTA 1', 'A', 1),
	(1927, 'GRUPO  BELMAC  S.A.', '.', '80095406-8', '0', 'ENCARNACION', 'A', 1),
	(1928, 'IVAN RAMIREZ', '.', '4837711-2', '982916590', '25 DICIEMBRE SAN LORENZO', 'A', 1),
	(1929, 'YENNINFFER ROSARINA BENITEZ APONTE', '.', '6020027', '985503183', 'YKA.A - LUQUE', 'A', 1),
	(1930, 'LUISA FRETES', '.', '3748017', '986196345', 'AVDA. MOISES BERTONI - CAPIATA', 'A', 1),
	(1931, 'INDUSTRIAS GV S.A.', '.', '80078584-3', '983403882', 'CAACUPÉ', 'A', 1),
	(1932, 'DIEGO OSMAR ROA GONZÁLEZ', '.', '4895964', '982682281', 'BOQUERON', 'A', 1),
	(1933, 'FRUTERIA ANTONI DE VICTOR ANTONI BOGADO', '.', '4951271-4', '0', 'CURUGUATY', 'A', 1),
	(1934, 'BLASIA NUÑEZ DE ORTIZ', '.', '2941842-9', '0', 'C', 'A', 1),
	(1935, 'DAISY PAMELA DUARTE DE INSFRAN', '.', '5419890-9', '992739916', 'FRACCION PEÑON DEL NORTE', 'A', 1),
	(1936, 'DAIANA PEDRINI', '.', '8051294-1', '0', 'SANTA RITA', 'A', 1),
	(1937, 'GRUPO  ALTAIR S.A.', '.', '80098783-7', '0', 'ASUNCION', 'A', 1),
	(1938, 'PANADERIA TODO CASERO', '.', '4416768-7', '971381309', 'SANTA ELENA - LUQUE', 'A', 1),
	(1939, 'CADENA REAL S.A.', '.', '80016951-4', '981857034', 'RUTA MCAL. ESTIGARRIBIA E/ R.I.3 CORRALE', 'A', 1),
	(1940, 'MARIAN SELVA ESCOBAR', '.', '1256403-6', '982539406', 'JUAN DE SALAZAR 856 CASI PADRE CARDOZO', 'A', 1),
	(1941, 'LUCAS MARTINEZ', '.', '5012390-4', '972985546', '30 AGOSTO Y SOLDADO DESCONOCIDO', 'A', 1),
	(1942, 'ROBERTO VARON SCHWEIG', '.', '4854979-7', '0', 'CAMPO 9', 'A', 1),
	(1943, 'RODLFO BENITEZ', '.', '1207751', '993593221', 'LAURELTY', 'A', 1),
	(1944, 'JERSON  AQUINO', '.', '4265807-1', '986566261', 'JOSE DOMINGO OCAMPO', 'A', 1),
	(1945, 'AURA BRITEZ', '.', '4996916-1', '982121145', 'WALDINO RAMON LOVERA CASI CORONEL', 'A', 1),
	(1946, 'JULIO CESAR LOPEZ PAREDEZ', '.', '5467211-2', '0983-478208', 'CAAGUAZU', 'A', 1);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;

-- Volcando estructura para tabla as.cliente_lista_precio
CREATE TABLE IF NOT EXISTS `cliente_lista_precio` (
  `idcliente` int(11) NOT NULL,
  `idlista` int(11) NOT NULL,
  `descuento` double NOT NULL,
  `recargo` double NOT NULL,
  PRIMARY KEY (`idcliente`,`idlista`),
  KEY `FK_CLIENTE_LISTA_PRECIO_LISTA_PRECIO` (`idlista`),
  KEY `FK_CLIENTE_LISTA_PRECIO_CLIENTE` (`idcliente`),
  CONSTRAINT `FK_CLIENTE_LISTA_PRECIO_CLIENTE` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_CLIENTE_LISTA_PRECIO_LISTA_PRECIO` FOREIGN KEY (`idlista`) REFERENCES `lista_precio` (`idlista`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.cliente_lista_precio: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente_lista_precio` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente_lista_precio` ENABLE KEYS */;

-- Volcando estructura para tabla as.compra
CREATE TABLE IF NOT EXISTS `compra` (
  `idcompra` int(11) NOT NULL,
  `numerodocumento` varchar(25) NOT NULL,
  `numerotimbrado` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `idmoneda` int(11) NOT NULL,
  `iddeposito` int(11) NOT NULL,
  `idtipomovimiento` int(11) NOT NULL,
  `idproveedor` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `totalneto` double NOT NULL,
  `totaliva` double NOT NULL,
  `idcuenta` int(11) DEFAULT NULL,
  `idempresa` int(11) NOT NULL,
  `idsucursal` int(11) NOT NULL,
  PRIMARY KEY (`idcompra`),
  KEY `FK_COMPRA_MONEDA` (`idmoneda`),
  KEY `FK_COMPRA_DEPOSITO` (`iddeposito`),
  KEY `FK_COMPRA_TIPO_MOVIMIENTO` (`idtipomovimiento`),
  KEY `FK_COMPRA_PROVEEDOR` (`idproveedor`),
  KEY `FK_COMPRA_USUARIO` (`idusuario`),
  KEY `FK_COMPRA_EMPRESA` (`idempresa`),
  KEY `FK_COMPRA_SUCURSAL` (`idsucursal`),
  CONSTRAINT `FK_COMPRA_DEPOSITO` FOREIGN KEY (`iddeposito`) REFERENCES `deposito` (`iddeposito`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_COMPRA_EMPRESA` FOREIGN KEY (`idempresa`) REFERENCES `empresa` (`idempresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_COMPRA_MONEDA` FOREIGN KEY (`idmoneda`) REFERENCES `moneda` (`idmoneda`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_COMPRA_PROVEEDOR` FOREIGN KEY (`idproveedor`) REFERENCES `proveedor` (`idproveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_COMPRA_SUCURSAL` FOREIGN KEY (`idsucursal`) REFERENCES `sucursal` (`idsucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_COMPRA_TIPO_MOVIMIENTO` FOREIGN KEY (`idtipomovimiento`) REFERENCES `tipo_movimiento` (`idtipomovimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_COMPRA_USUARIO` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.compra: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;

-- Volcando estructura para tabla as.compra_anulado
CREATE TABLE IF NOT EXISTS `compra_anulado` (
  `idcompraanulado` int(11) NOT NULL,
  `fechahoraanulado` datetime NOT NULL,
  `observacionanulado` varchar(255) DEFAULT NULL,
  `idmotivo` int(11) NOT NULL,
  `idusuarioanulado` int(11) NOT NULL,
  `idcompra` int(11) NOT NULL,
  `numerodocumento` varchar(25) NOT NULL,
  `numerotimbrado` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `idmoneda` int(11) NOT NULL,
  `iddeposito` int(11) NOT NULL,
  `idtipomovimiento` int(11) NOT NULL,
  `idproveedor` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `totalneto` double NOT NULL,
  `totaliva` double NOT NULL,
  `idcuenta` int(11) DEFAULT NULL,
  `idempresa` int(11) NOT NULL,
  `idsucursal` int(11) NOT NULL,
  PRIMARY KEY (`idcompraanulado`),
  KEY `FK_COMPRA_ANULADO_MOTIVO_ANULACION` (`idmotivo`),
  KEY `FK_COMPRA_ANULADO_USUARIO` (`idusuarioanulado`),
  CONSTRAINT `FK_COMPRA_ANULADO_MOTIVO_ANULACION` FOREIGN KEY (`idmotivo`) REFERENCES `motivo_anulacion` (`idmotivo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_COMPRA_ANULADO_USUARIO` FOREIGN KEY (`idusuarioanulado`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.compra_anulado: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `compra_anulado` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra_anulado` ENABLE KEYS */;

-- Volcando estructura para tabla as.compra_cuota
CREATE TABLE IF NOT EXISTS `compra_cuota` (
  `idcompra` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `monto` double NOT NULL,
  `fechavencimiento` date NOT NULL,
  PRIMARY KEY (`idcompra`,`numero`),
  KEY `FK_COMPRA_CUOTA_COMPRA` (`idcompra`),
  CONSTRAINT `FK_COMPRA_CUOTA_COMPRA` FOREIGN KEY (`idcompra`) REFERENCES `compra` (`idcompra`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.compra_cuota: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `compra_cuota` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra_cuota` ENABLE KEYS */;

-- Volcando estructura para tabla as.compra_detalle
CREATE TABLE IF NOT EXISTS `compra_detalle` (
  `idcompra` int(11) NOT NULL,
  `idarticulo` int(11) NOT NULL,
  `costo` double NOT NULL,
  `cantidad` double NOT NULL,
  `numeroitem` int(11) NOT NULL,
  `iva` double NOT NULL,
  `porcentajeiva` double NOT NULL,
  PRIMARY KEY (`idcompra`,`idarticulo`),
  KEY `FK_COMPRA_DETALLE_ARTICULO` (`idarticulo`),
  KEY `FK_COMPRA_DETALLE_COMPRA` (`idcompra`),
  CONSTRAINT `FK_COMPRA_DETALLE_ARTICULO` FOREIGN KEY (`idarticulo`) REFERENCES `articulo` (`idarticulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_COMPRA_DETALLE_COMPRA` FOREIGN KEY (`idcompra`) REFERENCES `compra` (`idcompra`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.compra_detalle: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `compra_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra_detalle` ENABLE KEYS */;

-- Volcando estructura para tabla as.compra_pago_cuota
CREATE TABLE IF NOT EXISTS `compra_pago_cuota` (
  `idpago` int(11) NOT NULL,
  `idcompra` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `fechapago` date NOT NULL,
  `monto` double NOT NULL,
  `idcuenta` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `numerocomprobante` varchar(25) NOT NULL,
  `idtipomovimiento` int(11) NOT NULL,
  PRIMARY KEY (`idpago`,`idcompra`,`numero`),
  KEY `FK_COMPRA_PAGO_CUOTA_COMPRA_CUOTA` (`idcompra`,`numero`),
  KEY `FK_COMPRA_PAGO_CUOTA_USUARIO` (`idusuario`),
  KEY `FK_COMPRA_PAGO_CUOTA_CUENTA` (`idcuenta`),
  KEY `FK_COMPRA_PAGO_CUOTA_TIPO_MOVIMIENTO` (`idtipomovimiento`),
  CONSTRAINT `FK_COMPRA_PAGO_CUOTA_COMPRA_CUOTA` FOREIGN KEY (`idcompra`, `numero`) REFERENCES `compra_cuota` (`idcompra`, `numero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_COMPRA_PAGO_CUOTA_CUENTA` FOREIGN KEY (`idcuenta`) REFERENCES `cuenta` (`idcuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_COMPRA_PAGO_CUOTA_TIPO_MOVIMIENTO` FOREIGN KEY (`idtipomovimiento`) REFERENCES `tipo_movimiento` (`idtipomovimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_COMPRA_PAGO_CUOTA_USUARIO` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.compra_pago_cuota: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `compra_pago_cuota` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra_pago_cuota` ENABLE KEYS */;

-- Volcando estructura para tabla as.compra_pago_cuota_anulado
CREATE TABLE IF NOT EXISTS `compra_pago_cuota_anulado` (
  `idpagoanulado` int(11) NOT NULL,
  `fechahoraanulado` datetime NOT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `idmotivo` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idpago` int(11) NOT NULL,
  `fechapago` date NOT NULL,
  `monto` double NOT NULL,
  `numerocomprobante` varchar(25) NOT NULL,
  `numerorecibo` varchar(25) NOT NULL,
  PRIMARY KEY (`idpagoanulado`),
  KEY `FK_COMPRA_PAGO_CUOTA_ANULADO_MOTIVO_ANULACION` (`idmotivo`),
  KEY `FK_COMPRA_PAGO_CUOTA_ANULADO_USUARIO` (`idusuario`),
  CONSTRAINT `FK_COMPRA_PAGO_CUOTA_ANULADO_MOTIVO_ANULACION` FOREIGN KEY (`idmotivo`) REFERENCES `motivo_anulacion` (`idmotivo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_COMPRA_PAGO_CUOTA_ANULADO_USUARIO` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.compra_pago_cuota_anulado: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `compra_pago_cuota_anulado` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra_pago_cuota_anulado` ENABLE KEYS */;

-- Volcando estructura para tabla as.configuracion
CREATE TABLE IF NOT EXISTS `configuracion` (
  `idconfiguracion` int(11) NOT NULL,
  `idsucursal` int(11) NOT NULL,
  `fac_con_rec` int(11) NOT NULL,
  `fac_cre_rec` int(11) NOT NULL,
  `rec_pag_rec` int(11) NOT NULL,
  `fac_con_emi` int(11) NOT NULL,
  `fac_cre_emi` int(11) NOT NULL,
  PRIMARY KEY (`idconfiguracion`,`idsucursal`) USING BTREE,
  KEY `FK_CONFIGURACION_SUCURSAL` (`idsucursal`),
  KEY `FK_CONFIGURACION_TIPO_MOV_FCONR` (`fac_con_rec`),
  KEY `FK_CONFIGURACION_TIPO_MOV_FCRER` (`fac_cre_rec`),
  KEY `FK_CONFIGURACION_TIPO_MOV_RPAGR` (`rec_pag_rec`),
  KEY `FK_CONFIGURACION_TIPO_MOV_FCONE` (`fac_con_emi`),
  KEY `FK_CONFIGURACION_TIPO_MOV_FCREE` (`fac_cre_emi`),
  CONSTRAINT `FK_CONFIGURACION_SUCURSAL` FOREIGN KEY (`idsucursal`) REFERENCES `sucursal` (`idsucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_CONFIGURACION_TIPO_MOV_FCONE` FOREIGN KEY (`fac_con_emi`) REFERENCES `tipo_movimiento` (`idtipomovimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_CONFIGURACION_TIPO_MOV_FCONR` FOREIGN KEY (`fac_con_rec`) REFERENCES `tipo_movimiento` (`idtipomovimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_CONFIGURACION_TIPO_MOV_FCREE` FOREIGN KEY (`fac_cre_emi`) REFERENCES `tipo_movimiento` (`idtipomovimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_CONFIGURACION_TIPO_MOV_FCRER` FOREIGN KEY (`fac_cre_rec`) REFERENCES `tipo_movimiento` (`idtipomovimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_CONFIGURACION_TIPO_MOV_RPAGR` FOREIGN KEY (`rec_pag_rec`) REFERENCES `tipo_movimiento` (`idtipomovimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.configuracion: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `configuracion` DISABLE KEYS */;
REPLACE INTO `configuracion` (`idconfiguracion`, `idsucursal`, `fac_con_rec`, `fac_cre_rec`, `rec_pag_rec`, `fac_con_emi`, `fac_cre_emi`) VALUES
	(1, 1, 1, 2, 12, 3, 4),
	(2, 2, 1, 2, 12, 3, 4);
/*!40000 ALTER TABLE `configuracion` ENABLE KEYS */;

-- Volcando estructura para tabla as.cotizacion
CREATE TABLE IF NOT EXISTS `cotizacion` (
  `idmoneda` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `tasacompra` double NOT NULL,
  `tasaventa` double NOT NULL,
  PRIMARY KEY (`fecha`,`idmoneda`) USING BTREE,
  KEY `FK_COTIZACION_MONEDA` (`idmoneda`) USING BTREE,
  CONSTRAINT `FK_COTIZACION_MONEDA` FOREIGN KEY (`idmoneda`) REFERENCES `moneda` (`idmoneda`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla as.cotizacion: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cotizacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `cotizacion` ENABLE KEYS */;

-- Volcando estructura para tabla as.cuenta
CREATE TABLE IF NOT EXISTS `cuenta` (
  `idcuenta` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `idbanco` int(11) NOT NULL,
  `idmoneda` int(11) NOT NULL,
  PRIMARY KEY (`idcuenta`),
  KEY `FK_CUENTA_BANCO` (`idbanco`),
  KEY `FK_CUENTA_MONEDA` (`idmoneda`),
  CONSTRAINT `FK_CUENTA_BANCO` FOREIGN KEY (`idbanco`) REFERENCES `banco` (`idbanco`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_CUENTA_MONEDA` FOREIGN KEY (`idmoneda`) REFERENCES `moneda` (`idmoneda`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.cuenta: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `cuenta` DISABLE KEYS */;
REPLACE INTO `cuenta` (`idcuenta`, `descripcion`, `idbanco`, `idmoneda`) VALUES
	(1, 'CAJA GUARANIES', 3, 1),
	(2, 'CAJA DOLARES', 3, 2);
/*!40000 ALTER TABLE `cuenta` ENABLE KEYS */;

-- Volcando estructura para tabla as.cuenta_saldo
CREATE TABLE IF NOT EXISTS `cuenta_saldo` (
  `idcuenta` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `entrada` double NOT NULL,
  `salida` double NOT NULL,
  `entrada_anulado` double NOT NULL,
  `salida_anulado` double NOT NULL,
  PRIMARY KEY (`idcuenta`,`fecha`),
  KEY `FK_CUENTA_SALDO_CUENTA` (`idcuenta`),
  CONSTRAINT `FK_CUENTA_SALDO_CUENTA` FOREIGN KEY (`idcuenta`) REFERENCES `cuenta` (`idcuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.cuenta_saldo: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `cuenta_saldo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuenta_saldo` ENABLE KEYS */;

-- Volcando estructura para tabla as.deposito
CREATE TABLE IF NOT EXISTS `deposito` (
  `iddeposito` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `idsucursal` int(11) NOT NULL,
  PRIMARY KEY (`iddeposito`),
  KEY `FK_DEPOSITO_SUCURSAL` (`idsucursal`),
  CONSTRAINT `FK_DEPOSITO_SUCURSAL` FOREIGN KEY (`idsucursal`) REFERENCES `sucursal` (`idsucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.deposito: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `deposito` DISABLE KEYS */;
REPLACE INTO `deposito` (`iddeposito`, `descripcion`, `idsucursal`) VALUES
	(1, 'SALON', 1);
/*!40000 ALTER TABLE `deposito` ENABLE KEYS */;

-- Volcando estructura para tabla as.empresa
CREATE TABLE IF NOT EXISTS `empresa` (
  `idempresa` int(11) NOT NULL,
  `razonsocial` varchar(100) NOT NULL DEFAULT '',
  `ruc` varchar(25) NOT NULL,
  `telefono` varchar(25) DEFAULT '',
  `direccion` varchar(250) DEFAULT '',
  PRIMARY KEY (`idempresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.empresa: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
REPLACE INTO `empresa` (`idempresa`, `razonsocial`, `ruc`, `telefono`, `direccion`) VALUES
	(1, 'ARANDU SYSTEMS DE ARMANDO ARIEL PERALTA MARTINEZ', '5955455-0', '(+595) 975 489 075', 'SAN ANTONIO GUAZU CASI RUTA 7 - DR. JUAN MANUEL FRUTOS');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;

-- Volcando estructura para tabla as.excepciones
CREATE TABLE IF NOT EXISTS `excepciones` (
  `idexcepcion` int(11) NOT NULL AUTO_INCREMENT,
  `datos` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idexcepcion`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.excepciones: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `excepciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `excepciones` ENABLE KEYS */;

-- Volcando estructura para tabla as.impresora
CREATE TABLE IF NOT EXISTS `impresora` (
  `idimpresora` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `ultimo_numero_factura` varchar(25) DEFAULT NULL,
  `ultimo_numero_recibo` varchar(25) DEFAULT NULL,
  `ultimo_numero_nota_credito` varchar(25) DEFAULT NULL,
  `ultimo_numero_nota_debito` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idimpresora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.impresora: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `impresora` DISABLE KEYS */;
REPLACE INTO `impresora` (`idimpresora`, `descripcion`, `ultimo_numero_factura`, `ultimo_numero_recibo`, `ultimo_numero_nota_credito`, `ultimo_numero_nota_debito`) VALUES
	(1, 'IMPRESORA N°1', '001-001-0000000', '001-001-0000000', '001-001-0000000', '001-001-0000000');
/*!40000 ALTER TABLE `impresora` ENABLE KEYS */;

-- Volcando estructura para tabla as.impresora_timbrado
CREATE TABLE IF NOT EXISTS `impresora_timbrado` (
  `idimpresora` int(11) NOT NULL,
  `idtimbrado` int(11) NOT NULL,
  `idtipocomprobante` int(11) NOT NULL,
  `establecimiento` int(11) NOT NULL,
  `puntoemision` int(11) NOT NULL,
  `numerotimbrado` int(11) NOT NULL,
  `numeroinicial` int(11) NOT NULL,
  `numerofinal` int(11) NOT NULL,
  `fechainicial` date NOT NULL,
  `fechafinal` date NOT NULL,
  PRIMARY KEY (`idimpresora`,`idtimbrado`),
  KEY `FK_IMPRESORA_TIMBRADO_IMPRESORA` (`idimpresora`),
  KEY `FK_IMPRESORA_TIMBRADO_TIPO_COMPROBANTE` (`idtipocomprobante`),
  CONSTRAINT `FK_IMPRESORA_TIMBRADO_IMPRESORA` FOREIGN KEY (`idimpresora`) REFERENCES `impresora` (`idimpresora`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_IMPRESORA_TIMBRADO_TIPO_COMPROBANTE` FOREIGN KEY (`idtipocomprobante`) REFERENCES `tipo_comprobante` (`idtipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.impresora_timbrado: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `impresora_timbrado` DISABLE KEYS */;
REPLACE INTO `impresora_timbrado` (`idimpresora`, `idtimbrado`, `idtipocomprobante`, `establecimiento`, `puntoemision`, `numerotimbrado`, `numeroinicial`, `numerofinal`, `fechainicial`, `fechafinal`) VALUES
	(1, 1, 1, 1, 1, 82563333, 1, 5000, '2021-01-01', '2021-12-31');
/*!40000 ALTER TABLE `impresora_timbrado` ENABLE KEYS */;

-- Volcando estructura para tabla as.impuesto
CREATE TABLE IF NOT EXISTS `impuesto` (
  `idimpuesto` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `porcentaje` double NOT NULL,
  PRIMARY KEY (`idimpuesto`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla as.impuesto: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `impuesto` DISABLE KEYS */;
REPLACE INTO `impuesto` (`idimpuesto`, `descripcion`, `porcentaje`) VALUES
	(1, 'EXENTO', 0),
	(2, 'IVA 5%', 5),
	(3, 'IVA 10%', 10);
/*!40000 ALTER TABLE `impuesto` ENABLE KEYS */;

-- Volcando estructura para tabla as.linea
CREATE TABLE IF NOT EXISTS `linea` (
  `idlinea` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`idlinea`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla as.linea: ~13 rows (aproximadamente)
/*!40000 ALTER TABLE `linea` DISABLE KEYS */;
REPLACE INTO `linea` (`idlinea`, `descripcion`) VALUES
	(1, 'TIPO 000'),
	(2, 'TIPO 0000'),
	(3, 'AFRECHO'),
	(4, 'INSUMOS'),
	(5, 'GASOIL'),
	(6, 'HARINA INTEGRAL'),
	(7, 'HARINA SALVADO'),
	(8, 'CUBIERTAS');
/*!40000 ALTER TABLE `linea` ENABLE KEYS */;

-- Volcando estructura para tabla as.lista_precio
CREATE TABLE IF NOT EXISTS `lista_precio` (
  `idlista` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `idmoneda` int(11) NOT NULL,
  PRIMARY KEY (`idlista`) USING BTREE,
  KEY `FK_LISTA_PRECIO_MONEDA` (`idmoneda`),
  CONSTRAINT `FK_LISTA_PRECIO_MONEDA` FOREIGN KEY (`idmoneda`) REFERENCES `moneda` (`idmoneda`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla as.lista_precio: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `lista_precio` DISABLE KEYS */;
REPLACE INTO `lista_precio` (`idlista`, `descripcion`, `idmoneda`) VALUES
	(1, 'MINORISTA GS', 1),
	(2, 'MINORISTA US', 2),
	(3, 'MAYORISTA GS', 1),
	(4, 'MAYORISTA US', 2);
/*!40000 ALTER TABLE `lista_precio` ENABLE KEYS */;

-- Volcando estructura para tabla as.marca
CREATE TABLE IF NOT EXISTS `marca` (
  `idmarca` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`idmarca`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla as.marca: ~17 rows (aproximadamente)
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
REPLACE INTO `marca` (`idmarca`, `descripcion`) VALUES
	(1, 'HARINA'),
	(2, 'AFRECHO'),
	(3, 'INSUMOS'),
	(4, 'ENVASES'),
	(5, 'ANALISIS'),
	(6, 'MICHELIN'),
	(7, 'CHINO LISO'),
	(8, 'CHINO TAQUITOS'),
	(9, 'ALMISUR'),
	(10, 'GASOIL');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;

-- Volcando estructura para tabla as.moneda
CREATE TABLE IF NOT EXISTS `moneda` (
  `idmoneda` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `simbolo` varchar(5) NOT NULL,
  PRIMARY KEY (`idmoneda`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla as.moneda: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `moneda` DISABLE KEYS */;
REPLACE INTO `moneda` (`idmoneda`, `descripcion`, `simbolo`) VALUES
	(1, 'GUARANIES', 'GS'),
	(2, 'DOLARES', 'US');
/*!40000 ALTER TABLE `moneda` ENABLE KEYS */;

-- Volcando estructura para tabla as.motivo_ajuste
CREATE TABLE IF NOT EXISTS `motivo_ajuste` (
  `idmotivo` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`idmotivo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla as.motivo_ajuste: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `motivo_ajuste` DISABLE KEYS */;
REPLACE INTO `motivo_ajuste` (`idmotivo`, `descripcion`) VALUES
	(1, 'REGISTROS DE PRUEBA'),
	(2, 'ERROR DE CARGA'),
	(3, 'ERROR DEL SISTEMA'),
	(4, 'OTROS MOTIVOS');
/*!40000 ALTER TABLE `motivo_ajuste` ENABLE KEYS */;

-- Volcando estructura para tabla as.motivo_anulacion
CREATE TABLE IF NOT EXISTS `motivo_anulacion` (
  `idmotivo` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`idmotivo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.motivo_anulacion: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `motivo_anulacion` DISABLE KEYS */;
REPLACE INTO `motivo_anulacion` (`idmotivo`, `descripcion`) VALUES
	(1, 'PRUEBAS DE USUARIO'),
	(2, 'ERROR DEL SISTEMA'),
	(3, 'ERROR AL CARGAR DATOS');
/*!40000 ALTER TABLE `motivo_anulacion` ENABLE KEYS */;

-- Volcando estructura para tabla as.pais
CREATE TABLE IF NOT EXISTS `pais` (
  `idpais` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `nacionalidad` varchar(100) NOT NULL,
  PRIMARY KEY (`idpais`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla as.pais: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
REPLACE INTO `pais` (`idpais`, `descripcion`, `nacionalidad`) VALUES
	(1, 'PARAGUAY', 'PARAGUAYO/A');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;

-- Volcando estructura para tabla as.periodo
CREATE TABLE IF NOT EXISTS `periodo` (
  `idperiodo` int(11) NOT NULL,
  `fecha_desde` date NOT NULL,
  `fecha_hasta` date NOT NULL,
  PRIMARY KEY (`idperiodo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla as.periodo: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `periodo` DISABLE KEYS */;
REPLACE INTO `periodo` (`idperiodo`, `fecha_desde`, `fecha_hasta`) VALUES
	(1, '2021-11-01', '2021-11-30');
/*!40000 ALTER TABLE `periodo` ENABLE KEYS */;

-- Volcando estructura para tabla as.programa
CREATE TABLE IF NOT EXISTS `programa` (
  `idprograma` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`idprograma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.programa: ~48 rows (aproximadamente)
/*!40000 ALTER TABLE `programa` DISABLE KEYS */;
REPLACE INTO `programa` (`idprograma`, `descripcion`) VALUES
	(1, 'JFrmPrograma'),
	(2, 'JFrmTipoComprobante'),
	(3, 'JFrmEmpresa'),
	(4, 'JFrmSucursal'),
	(5, 'JFrmTipoMovimiento'),
	(6, 'JFrmMoneda'),
	(7, 'JFrmTipoTarjeta'),
	(8, 'JFrmPeriodo'),
	(9, 'JFrmTipoCliente'),
	(10, 'JFrmTipoProveedor'),
	(11, 'JFrmCaja'),
	(12, 'JFrmCotizacion'),
	(13, 'JFrmBanco'),
	(14, 'JFrmCliente'),
	(15, 'JFrmProveedor'),
	(16, 'JFrmListaPrecio'),
	(17, 'JFrmMarca'),
	(18, 'JFrmLinea'),
	(19, 'JFrmSeccion'),
	(20, 'JFrmTipoArticulo'),
	(21, 'JFrmImpuesto'),
	(22, 'JFrmPais'),
	(23, 'JFrmUnidadMedida'),
	(24, 'JFrmMotivoAjuste'),
	(25, 'JFrmArticulo'),
	(26, 'JFrmUsuario'),
	(27, 'JFrmUsuarioPrograma'),
	(28, 'JFrmDeposito'),
	(29, 'JFrmImpresoraTimbrado'),
	(30, 'JFrmConfiguracion'),
	(31, 'JFrmCompra'),
	(32, 'JFrmCuenta'),
	(33, 'JFrmMotivoAnulacion'),
	(34, 'JFrmPagoCuota'),
	(35, 'JFrmPagoCuotaAnulacion'),
	(36, 'JFrmCompraAnulacion'),
	(37, 'JFrmArticuloListaPrecio'),
	(38, 'JFrmConsultaCompra'),
	(39, 'JFrmConsultaCompraAnulado'),
	(40, 'JFrmConsultaPagoCuotaAnulado'),
	(41, 'JFrmConsultaPagoCuota'),
	(42, 'JFrmImpresora'),
	(43, 'JFrmInformeCompra'),
	(44, 'JFrmUsuarioImpresora'),
	(45, 'JFrmTarjeta'),
	(46, 'JFrmVenta'),
	(47, 'JFrmClienteListaPrecio'),
	(48, 'JFrmVendedor'),
	(49, 'JFrmConsultaVenta');
/*!40000 ALTER TABLE `programa` ENABLE KEYS */;

-- Volcando estructura para tabla as.proveedor
CREATE TABLE IF NOT EXISTS `proveedor` (
  `idproveedor` int(11) NOT NULL,
  `razonsocial` varchar(100) NOT NULL,
  `propietario` varchar(100) DEFAULT NULL,
  `ruc` varchar(25) DEFAULT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `estado` varchar(1) NOT NULL,
  `idtipo` int(11) NOT NULL,
  PRIMARY KEY (`idproveedor`) USING BTREE,
  KEY `FK_PROVEEDOR_TIPO_PROVEEDOR` (`idtipo`) USING BTREE,
  CONSTRAINT `FK_PROVEEDOR_TIPO_PROVEEDOR` FOREIGN KEY (`idtipo`) REFERENCES `tipo_proveedor` (`idtipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla as.proveedor: ~2.154 rows (aproximadamente)
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
REPLACE INTO `proveedor` (`idproveedor`, `razonsocial`, `propietario`, `ruc`, `telefono`, `direccion`, `estado`, `idtipo`) VALUES
	(1, 'BANDERITA S.A.', '', '80058818-5', '0528-250223', 'RUTA 7', 'A', 1),
	(2, 'CHACOMER S.A.E.', '', '80013744-2', '021-5180000', 'EUSEBIO AYALA 3321', 'A', 1),
	(3, 'CENTURY SYSTEMS S.R.L.', '', '80020438-7', '021-281544', 'AV.ARIGAS 2.017 C/ SAN ESTANISLAO', 'A', 1),
	(4, 'KUROSO & CIA. S.A.', '', '80002592-0', '021-502727', 'MCAL.ESTIGARRIBIA 1759 KM9- FDO DE LA M.', 'A', 1),
	(5, 'JACOB BUHLER', '', '1020811-9', '0', 'COLONIA SOMMERFELD', 'A', 1),
	(6, 'CHURRASQUERIA INTERLAGOS GRILL S.A.', '', '80064755-6', '0', 'SUPER CARRETERA KM 24 HERNANDARIAS', 'A', 1),
	(7, 'ROLAPAR RULEMANES IMPORT.-EXPORT. S.R.L.', '', '80023112-0', '061-572066', 'ABDON PALACIOS C/CNEL SANCHEZ', 'A', 1),
	(8, 'ADMINISTRACION NACIONAL DE ELECTRICIDAD', '', '80009735-1', '0', 'AV.ESPAÑA 1268 ASUNCION', 'A', 1),
	(9, 'HILDEBRAND S.A.', '', '80029818-7', '0528-222232', 'RUTA 7 KM 209 J.E.ESTIGARRIBIA', 'A', 1),
	(10, 'MARIANO ESPINOLA ALMIRON', '', '1912378-7', '0', 'JOSE A.FLORES Bº SAN  JOSE OBRERO', 'A', 1),
	(11, 'GLORIA RAQUEL RODAS DE VILLAMAYOR', '', '1050519-9', '0522-42631', 'RUTA 7 DR. GASPAR R.DE FRANCIA KM 177', 'A', 1),
	(12, 'HERMINIA ROSA GAUTO VDA.DE BENITEZ', '', '2701421-5', '0', 'SAN ROQUE GONZALEZ DE SANTA CRUZ', 'A', 1),
	(13, 'MIGUEL TROCHE BOGADO', '', '5522528-4', '0', 'DR.JOSE G.RODRIGUEZ DE FRANCIA', 'A', 1),
	(14, 'ASOCIACION CIVIL LUZ Y VIDA', '', '80016535-7', '0528-222500', 'COLONIA SOMMERFELD', 'A', 1),
	(15, 'VICTOR ARCE', '', '4033015-0', '0', 'LAS RECIDENTAS J.E.ESTIGARRIBIA', 'A', 1),
	(16, 'PIETRO CAPRI - PEDRO CARLOS MARTINEZ', '', '1958120-3', '0522-41848', 'CAAGUAZU', 'A', 1),
	(17, 'FRANCISCO MENDEZ MORINIGO', '', '1345157-0', '0', 'INDEPENDENCIA NACIONAL', 'A', 1),
	(18, 'FELIX GALEANO LEGAL', '', '1345141-3', '0528-222249', 'ENFERMERAS DEL CHACO Y SAN JOSE', 'A', 1),
	(19, 'VILLA COSTA S-A', '', '80080503-8', '673220753', 'MINGA GUAZU-ALTO PARANA', 'A', 1),
	(20, 'CEREALISTA COMETA S.R.L.', '', '80013062-6', '0673-220481', 'SANTA RITA-ALTO PARANA', 'A', 1),
	(21, 'BERNARDO SANTACRUZ', '', '1203248-4', '0523-230411', 'SAN JOSE DE LOS ARROYOS', 'A', 1),
	(22, 'REJANI GOLLMANN SCHAFER', '', '4620234-0', '0511-243434', 'MCAL.ESTIGARRIBIA KM.52.5', 'A', 1),
	(23, 'COINPRO S.R.L.', '', '80004964-0', '0522-42227', 'CAAGUAZU', 'A', 1),
	(24, 'TODO CARNE S.A.', '', '80028162-4', '021 642267', 'JAVIER BOGARIN', 'A', 1),
	(25, 'AGRO INDUSTRIAL COLONIAL S.A.', '', '80004573-4', '0528-222255', 'DR.J.EULOGIO ESTIGARRIBIA KM 214', 'A', 1),
	(26, 'COMERCIAL SAN CAYETANO S.R.L.', '', '80024659-4', '645086', 'AV.HUMAITA Nº 168', 'A', 1),
	(27, 'DISTRI-ATI - ATILIO QUIROGA TRINIDAD', '', '2368125-0', '.', 'PRIMERA LINEA', 'A', 1),
	(28, 'BOLSI PLAST S.A.', '', '80005455-5', '21.672.331', 'ASUNCION, LUIS DEL PINO', 'A', 1),
	(29, 'COMPAÑIA MARITIMA PARAGUAYA S.A.', '', '80002827-9', '021. 283665 / 7', 'AV. ARTIGAS', 'A', 1),
	(30, 'ENCIMEQ S.R.L.', '', '80014833-9', '61513498', 'CDE KM. 4 1/2', 'A', 1),
	(31, 'FERRETERIA MERCANTIL CAMPO 9', '', '80077517-1', '0528 250285', 'RUTA 7, KM 212 1/2', 'A', 1),
	(32, 'ENVASES S.A.', '', '80008540-0', '0541 260100', 'VILLARRICA Y MCAL. LOPEZ', 'A', 1),
	(33, 'SEMIC S.A.', '', '80032974-0', '0528-222732', 'RUTA INT. Nº 7 DR.G. R DE FRANCIA', 'A', 1),
	(34, 'SEM AGRO S.A.', '', '80044600-3', '.', 'J.E.ESTIGARRIBIA', 'A', 1),
	(35, 'TALLER MECANICO PENNER - PETER PENNER', '', '1020804-6', '0528 222590', 'ENTRADA CAMINO CAMPO 2', 'A', 1),
	(36, 'CAR CENTER S.A.', '', '80059357-0', '0528-222988', 'RUTA VII KM.212', 'A', 1),
	(37, 'DANIEL BRAUN HARDER', '', '1504309-6', '528', 'KM.219 RUTA VII DR.G.R. DE FRANCIA', 'A', 1),
	(38, 'MARIO AUTOREPUESTOS DE MARIO ALF.ROMERO', '', '2419346-1', '0528-222364', 'J.EOLOGIO ESTIGARRIBIA', 'A', 1),
	(39, 'GRINGO CUBIERTAS S.R.L.', '', '80051884-5', '0528-222669', 'JOSE A, FLORES C/LA RECIDENTA', 'A', 1),
	(40, 'LAVADERO BRITEZ - ADILIO BRITEZ ACUÑA', '', '4377806-2', '528', 'LA FORTUNA', 'A', 1),
	(41, 'ENVAPAR  S.A.', '', '80003308-6', '021.961666 /9', 'MANUEL ORTIZ GUERRERO - ASUNCION', 'A', 1),
	(42, 'BERNIE FRIESEN HILDEBRAND', '', '1497681-1', '.', 'COL.SOMMERFELD', 'A', 1),
	(43, 'L.I.A. S.A.C.I.', '', '80018306-1', '0522-42254', '15 DE AGOSTO', 'A', 1),
	(44, 'JVR INFORMATICA - GUILLERMO R. JIMENEZ', '', '728606-6', '021-292608', 'TTE. CAÑETE MIÑO', 'A', 1),
	(45, 'SUPERM.LOS COLONOS-WILLIAM HILDEBRAND', '', '483003-2', '0528-222515', 'RUTA INTERNACIONAL Nº7', 'A', 1),
	(46, 'NESTOR ANDRES MIÑO PINTO', '', '4625505-2', '0974-832977', 'SAN ANTONIO 1947', 'A', 1),
	(47, 'RADIADORES MACIEL - ADEMIR ANTUNES M.', '', '3557856-4', '0971-413622', 'LAS RECIDENTAS', 'A', 1),
	(48, 'COOP. AGRICOLA DE PROD. SOMMERFELD LTDA.', '', '80003626-3', '0528-250588', 'COLONIA SOMMERFELD', 'A', 1),
	(49, 'HI SERVICIOS GENERALES S.R.L.', '', '80038010-0', '021-661951', 'MADAME LINCH 1993 C/ ALEJO SILVA', 'A', 1),
	(50, 'TAPE PORÁ S.A.', '', '80018781-4', '0', 'RUTA VII KM 201 DR.J.M.FRUTOS', 'A', 1),
	(51, 'TRUCK SERVICE S.A.', '', '80055982-7', '0528-222910', 'DR.JUAN EULOGIO ESTIGARRIBIA', 'A', 1),
	(52, 'HFC DESIGN S.R.L.', '', '80020602-9', '0976-563 670', 'WASHINGTON 683', 'A', 1),
	(53, 'CARLOS ALBERTO CARDOZO ROJAS', '', '1285384-4', '0985- 707 566', 'SAN JUAN BAUTISTA- MISIONES', 'A', 1),
	(54, 'LA VERDAD S.R.L', '', '80021696-2', '021-611 695', 'AVIAD.DEL CHACO', 'A', 1),
	(55, 'ESCRIBANIA - MARTA M. MINCK S.', '', '733771-0', '0', 'J.E.ESTIGARRIBIA', 'A', 1),
	(56, 'BCR S.A. IMPORTADOR-EXPORTADOR', '', '80018308-8', '021-614688', 'ASUNCION', 'A', 1),
	(57, 'DISTRIBUIDORA  1º DE MAYO S.R.L.', '', '80021238-0', '0992-293 547', 'CAAGUAZU', 'A', 1),
	(58, 'HENRY SCHROEDER B.', '', '2658952-4', '0971-446 533', 'COL.SOMMERFELD', 'A', 1),
	(59, 'LIBRERIA CAMPO 9 - RANDELL TOEWS R.', '', '3186804-5', '0528- 222 281', 'RUTA INT.Nº7', 'A', 1),
	(60, 'FARMACIA HELENA - MIRIAN H. FRANCO', '', '1642499-9', '0528-222388', 'JOSE A. FLORES', 'A', 1),
	(61, 'TORNERIA CAMPO OCHO S.R.L.', '', '80029529-3', '0528 -222 279', 'RUTA Nº7 219', 'A', 1),
	(62, 'CENTRO DE LUBRIC. LULA - ADOLFO ALVAREZ', '', '609277-2', '0961-563 966', 'LUQUE', 'A', 1),
	(63, 'ESTACION DE SERVICIO SAN RAFAEL', '', '171123-7', '021-642611', 'ASUNCION', 'A', 1),
	(64, 'GERMAN RODRIGUEZ ROJAS', '', '762298-8', '021-596368', 'SANTA BARBARA', 'A', 1),
	(65, 'ESTACION DE SERV. LAURELTY', '', '487519-2', '021-647733', 'LUQUE', 'A', 1),
	(66, 'COPETROL M-B MARIO T.BENITEZ', '', '583020-6', '021-647 810', 'LUQUE', 'A', 1),
	(67, 'OVIEDO REPUESTO - ABELINO OVIEDO', '', '4872306-1', '0522- 43628', 'CAAGUAZU', 'A', 1),
	(68, 'UNI PARAGUAY S.A.', '', '80029770-9', '021-442678', 'INDEPENDENCIA NACIONAL ASU.', 'A', 1),
	(69, 'COOP. LA HOLANDA LTDA.', '', '80004530-0', '0528-222250', 'DR.J.J.ESTIGARRIBIA', 'A', 1),
	(70, 'TELEFONICA CELULAR DEL PARAGUAY S.A.E', '', '80000519-8', '6189000', 'ZAVALAS CUE ESQ. ARTILLERIA', 'A', 1),
	(71, 'CENTRO DE LAS MANGUERAS S.R.L.', '', '80076297-5', '061-576933', 'AVDA. SAN JOSE- CDE', 'A', 1),
	(72, 'GRUPO SERGIO S.A. - PAULISTA GRILL', '', '80013832-5', '021-611 501', 'AVDA.SAN NARTIN', 'A', 1),
	(73, 'COMERCIAL EL CACIQUE S.R.L.', '', '80052468-3', '021-647462', 'LUQUE', 'A', 1),
	(74, 'TOTAL MARKETING-RIGOBERTO GONZALEZ', '', '1475664-1', '0', 'CAAGUAZU', 'A', 1),
	(75, 'CONAUDIT - CONTADORES Y AUDITORES ASO.', '', '80020807-2', '0521- 495 576', 'ASUNCION', 'A', 1),
	(76, 'CAMARA PARAGUAYA DE MOLINOS', '', '80029322-3', '021- 221 221', 'ASUNCION', 'A', 1),
	(77, 'COMPAÑIA PARAGUAYA DE COMUNICACIONES S.A', '', '80023541-0', '021-448400', 'ASUNCION', 'A', 1),
	(78, 'GANDYS S.A.', '', '80025387-6', '021- 676 596', 'ASUNCION', 'A', 1),
	(79, 'ESSO STANDAR  EL DORADO-APOLONIA BARRETO', '', '1814625-2', '039- 210214', 'YBY JA.U', 'A', 1),
	(80, 'LA PARAGUAYA S.A. DE SEGUROS', '', '80015075-9', '021-491367', 'WASHINGTON 460 C/ESPAÑA', 'A', 1),
	(81, 'ALBERT FRIESEN H.', '', '3978168-2', '0', 'CAMPO 5', 'A', 1),
	(82, 'PETER DUECK KRAHN', '', '1231965-1', '971403433', 'COLONIA SOMMERFELD', 'A', 1),
	(83, 'TODO RUEDA RESPUESTOS S.A.', '', '80069324-8', '0973-585859', 'JOSE ASUNCION FLORES', 'A', 1),
	(84, 'MEGA GLOBAL-EDITA IRENE ORZUSA', '', '1564148-1', '021-556 046', 'LAMBARE', 'A', 1),
	(85, 'AGROVETERINARIA SAN LUIS - LUIS ESPINOLA', '', '1229414-4', '0528-222492', 'DR.J.E.ESTIGARRIBIA', 'A', 1),
	(86, 'D/CONSULT-RONALD DUERKSEN FEDERAU', '', '874117-4', '021-295532', 'ASUNCION', 'A', 1),
	(87, 'ERNIE HILDEBRAND D.', '', '1326660-8', '0', 'COLONIA SOMMERFELD', 'A', 1),
	(88, 'LA BOLSA S.A.', '', '80062934-5', '0528-250232', 'RUTA 7 KM 215', 'A', 1),
	(89, 'ECE INGENIERIA S.R.L.', '', '80033554-6', '061-573282', 'C.D.E', 'A', 1),
	(90, 'ASOCIACION DE AUTOMOVILISTAS DE SOMBERG', '', '80072596-4', '0528*222232', 'RUTA N7', 'A', 1),
	(91, 'BANCO CONTINENTAL S.A.E.C.A.', '', '80019270-2', '0528 222978', 'MCAL LOPEZ Nº 3233 ESQ.GRAL GARAY', 'A', 1),
	(92, 'BANCO ATLAS S.A.', '', '80024928-3', '.', 'AV. MCAL. LOPEZ ENTRE BULNES', 'A', 1),
	(93, 'BANCO BILBAO VIZCAYA ARGENTARIA PY S.A.', '', '80022955-0', '021 6176000', 'MCAL. LOPEZ ESQ. TORREANI VIERA', 'A', 1),
	(94, 'COMERCIAL SUIZITAL S.A.', '', '99999901-0', '.', '.', 'A', 1),
	(95, 'SUDAMERIS BANK', '', '80034461-8', '021 4166000', 'IND. NACIONAL 513', 'A', 1),
	(96, 'BANCO ITAU PARAGUAY S.A.', '', '80002201-7', '497-237', 'ASUNCION PARAGUAY', 'A', 1),
	(97, 'PRESTAMO - BANCO ITAU', '', '.', '.', '.', 'A', 1),
	(98, 'PRESTAMO - ATLAS', '', '.', '.', '.', 'A', 1),
	(99, 'PRESTAMO - SUDAMERIS', '', '.', '.', '.', 'A', 1),
	(100, 'PRESTAMO - REGIONAL', '', '.', '.', '.', 'A', 1),
	(101, 'INTERESES - BANCO ITAU', '', '.', '.', '.', 'A', 1),
	(102, 'INTERESES - ATLAS', '', '.', '.', '.', 'A', 1),
	(103, 'INTERESES - SUDAMERIS', '', '.', '.', '.', 'A', 1),
	(104, 'INTERESES - REGIONAL', '', '.', '.', '.', 'A', 1),
	(105, 'PETROLEUM PARAGUAY LIMITED S.A.', '', '80019324-5', '.', 'VILLA ELISA', 'A', 1),
	(106, 'AGRICOLA SANTA FE S.A.', '', '80045075-2', '.', 'ALTO PARANA', 'A', 1),
	(107, 'AGRICOLA YGUAZU S.A.', '', '80066670-4', '.', 'CAAGUAZU', 'A', 1),
	(108, 'FARMPAR S.A', '', '80024817-1', '.', 'CAAGUAZU', 'A', 1),
	(109, 'DAVID FRIESEN H.', '', '2024994-2', '.', 'CAMPO 9', 'A', 1),
	(110, 'TRANS-GOLDPAR -ANTONIO CARLOS BARRETO', '', '1865378-2', '.', 'SANTA ROSA', 'A', 1),
	(111, 'OLINDA S.A', '', '80025503-8', '.', 'ALTO PARANA', 'A', 1),
	(112, 'DIEDRICH BRAUN HARDER', '', '1504311-8', '.', 'CAMPO 9', 'A', 1),
	(113, 'BANCO REGIONAL S.A.E.C.A.', '', '80020981-8', '595-71/204740', 'ENCARNACION', 'A', 1),
	(114, 'BASCULAS COBRAVEL S.R.L.', '', '80027622-1', '.', 'CDE', 'A', 1),
	(115, 'COMERCIAL "JP"- JAMES PETERS', '', '2422544-4', '.', 'BERTHALG', 'A', 1),
	(116, 'PHOENIX S.A.', '', '80071602-7', '0228 632 550', 'CAPIATA', 'A', 1),
	(117, 'ASTRA -HERIBERTO NEUFELD', '', '438627-2', '021-508463', 'SAN LORENZO', 'A', 1),
	(118, 'PAV REPUESTOS - PEDRO ARCE VILLALBA', '', '3700491-3', '0983-364 334', 'CAAGUAZU', 'A', 1),
	(119, 'TALLER SAN CAYETANO-RICARDO P.MARTINEZ', '', '3440148-2', '.', 'LUQUE', 'A', 1),
	(120, 'COMERCIAL ÑANDU- CARMEN D. LOPEZ', '', '789120-2', '640 540', 'LUQUE', 'A', 1),
	(121, 'AUTO REPUESTO ZB BRAULIO ZARATE SOTELO', '', '1005217-8', '644056', 'LUQUE', 'A', 1),
	(122, 'SACAB- AUGUSTO BEDOYA', '', '80001627-0', '662 458', 'ASUNCION', 'A', 1),
	(123, 'AMERICA NEUMATICOS S.A.', '', '80025545-3', '21524145', 'MCAL ESTIGARRIBIA KM 8.5', 'A', 1),
	(124, 'ESTACION DE SERVICIOS- SAUCE S.R.L.', '', '80044448-5', '.', 'LUQUE', 'A', 1),
	(125, 'TODO LONAS S.A.', '', '80068790-6', '0984- 880 475', 'CAMPO 9', 'A', 1),
	(126, 'VINILONA SAUCEDO - MIGUEL SAUCEDO', '', '2896601-5', '83- 390 404', 'CAACUPE', 'A', 1),
	(127, 'AUTO REPUESTO SAN RAMON-NIDIO CENTURION', '', '1206096-8', '528.222.556', 'CAMPO 9', 'A', 1),
	(128, 'VALDECIR PEDRO PERIUS', '', '4068441-5', '73-887 260', 'RAUL PEÑA', 'A', 1),
	(129, 'TAJA Y ARENA- SELVA L. FERREIRA L.', '', '2394382-3', '648 808', 'LUQUE', 'A', 1),
	(130, 'VIRGILIO BENITEZ SANTA CRUZ', '', '2999803-4', '640 046', 'LUQUE', 'A', 1),
	(131, 'RODOESTE REPUESTO S.A', '', '80039474-7', '0673- 221 414', 'ALTO PARANA', 'A', 1),
	(132, 'AUTOMOVIL SUPPLY S.A.', '', '80001129-5', '528.222.603', 'ASUNCION', 'A', 1),
	(133, 'AUTOREPUESTO KALA -NELSON L. CALASTRA', '', '3250067-0', '.', 'CAAGUAZU', 'A', 1),
	(134, 'GILBERTO FRANCO TRINIDAD', '', '1311752-1', '.', 'JASY CAÑY', 'A', 1),
	(135, 'LOS HERMANOS - VIDAL E.ORTEGA', '', '3530963-6', '.', 'LUQUE', 'A', 1),
	(136, 'DOLLY GIMENEZ ALONSO', '', '1601384-0', '641 982', 'LUQUE', 'A', 1),
	(137, 'CELSA CARBALLO DE TORALES', '', '1350254-9', '.', 'LUQUE', 'A', 1),
	(138, 'CAR`S -MAELENE E.SAMUDIO', '', '1501361-8', '.', 'LUQUE', 'A', 1),
	(139, 'ESTACION DE SERVICIO PAMAK S.R.L.', '', '80022461-2', '584 730', 'SAN LORENZO', 'A', 1),
	(140, 'COOPETROL -RUMAR MARINO RUIZ', '', '230307-8', '.', 'SAN LORENZO', 'A', 1),
	(141, 'GRUPO FORTALEZA S.A.', '', '80029512-9', '.', 'HORQUETA', 'A', 1),
	(142, 'ESTACION DE SERVICIO LA ESPERANZA', '', '693326-2', '.', 'LUQUE', 'A', 1),
	(143, 'FELIPE LLORET SEGALES', '', '1455630-8', '.', 'LUQUE', 'A', 1),
	(144, 'EST.SERV. PARANA DE ANEL S.A.', '', '80028202-7', '.', 'CDE', 'A', 1),
	(145, 'MANANTIAL  COMBUSTIBLES Y LUBRICANTES SA', '', '80020366-6', '.', 'FERNANDO DE LA MORA', 'A', 1),
	(146, 'GRAFICA BOREAL S.A.', '', '80038855-0', '021-3383621', 'MINGA GUAZU', 'A', 1),
	(147, 'ARTEMAC S.A.', '', '80022219-9', '021- 612404', 'ASUNCION', 'A', 1),
	(148, 'REPORTAJE EN EL CAMPO S.A', '', '80052548-5', '021-528815', 'ASUNCION', 'A', 1),
	(149, 'EDITORIAL AZETA S.A', '', '80001788-9', '415 1000', 'ASUNCION', 'A', 1),
	(150, 'PUBLIGARGON JORGE ADALBERTO GARCIA', '', '3587353-1', '.', 'CAAGUAZU', 'A', 1),
	(151, 'SOCIEDAD CIVIL SOMMERFELD KOMITEE', '', '80015343-0', '250150', 'COLONIA SOMMERFELD', 'A', 1),
	(152, 'PAPILLON S.R.L. - HOTEL', '', '80011416-7', '240280', 'BELLA VISTA', 'A', 1),
	(153, 'ISAAC HILDEBRAND FRIESEN', '', '951849-5', '.', 'CAMPO 9', 'A', 1),
	(154, 'RAPIDO YGUAZU S.A', '', '80003063-0', '.', 'ASUNCION', 'A', 1),
	(155, 'INST. NACIONAL DE TECNOLOGIA,NORM.Y MET.', '', '80000638-0', '.', 'ASUNCION', 'A', 1),
	(156, 'ANANIA ARANDA', '', '6064791-4', '.', 'CAAGUAZU', 'A', 1),
	(157, 'NELSON SAMANIEGO', '', '4377939-5', '.', 'CAAGUAZU', 'A', 1),
	(158, 'ANIBAL ALFONSO', '', '2847693-0', '.', 'CAPIATA', 'A', 1),
	(159, 'ANER ALFONSO', '', '2847698-0', '.', 'CAPIATA', 'A', 1),
	(160, 'HUGO SANCHEZ', '', '4290655-5', '.', 'CAAGUAZU', 'A', 1),
	(161, 'JUAN MARIN TORRES', '', '5306856-4', '.', 'LUQUE', 'A', 1),
	(162, 'ADOLFO ALFONZO', '', '4680890-6', '.', 'CAPIATA', 'A', 1),
	(163, 'SOFIPAN S.R.L.', '', '80028415-1', '.', 'LUQUE', 'A', 1),
	(164, 'MICKEY S.R.L.', '', '80001567-3', '.', 'ASUNCION', 'A', 1),
	(165, 'AGRO SILO SANTA CATALINA S.A.', '', '80007801-2', '0633 220071 / 4', 'ALTO PARANA', 'A', 1),
	(166, 'COOP. RAUL PEÑA LTDA', '', '80008971-5', '0672-410068', 'NARANJAL', 'A', 1),
	(167, 'AGRICOLA ALIANZA S.A.', '', '80048453-3', '0676+320174', 'NARANJAL', 'A', 1),
	(168, 'AGRO ACTIVA S.A.', '', '80024813-9', '0672-420106', 'ITAPUA', 'A', 1),
	(169, 'AGROSATO S.A.', '', '80028926-9', '0632-20690', 'ALTO PARANA', 'A', 1),
	(170, 'CONDOMINIO FRANZ FREISEN HILDEBRAND Y O.', '', '80029619-2', '0', 'CAAGUAZU', 'A', 1),
	(171, 'TRANS RAYOS DEL SOL - JAKE SCHROEDER', '', '3599402-9', '0982-454454', 'SOMMERFELD', 'A', 1),
	(172, 'DANIA MARIA VERA PORTILLO', '', '4471105-0', '0521-203539', 'CORONEL OVIEDO', 'A', 1),
	(173, 'BANCO AMAMBAY S.A.', '', '80009515-4', '021-6187000', 'AUNCION', 'A', 1),
	(174, 'ÑEMU RORY - DAISY MARIA PANE BARUJA', '', '325456-9', '595-21 445225', 'PARAGUARI', 'A', 1),
	(175, 'RUBEN BUHLER BERGEN', '', '2282606-8', '0971-404227', 'CAMPO 2', 'A', 1),
	(176, 'FRANCISCO BENITEZ RAMOS', '', '2261651-9', '971294639', 'JUAN M. FRUTOS', 'A', 1),
	(177, 'ING. REINALDO VAZQUEZ B.', '', '1649127-0', '0971-813040', 'CAAGUAZU', 'A', 1),
	(178, 'RECORD ELECTRIC S.A.E.C.A.', '', '80016166-1', '0528-0222344', 'CAMPO 9', 'A', 1),
	(179, 'EIT S.R.L.', '', '80000179-6', '964 667', 'SAN ANTONIO CNEL OVIEDO', 'A', 1),
	(180, 'NELSON DAVID RODAS BOGADO', '', '1382516-0', '0522-42580', 'CAAGUAZU', 'A', 1),
	(181, 'MOTO PLUS CAMPO 9 S.A.', '', '80049002-9', '0528-222 459', 'CAMPO 9', 'A', 1),
	(182, 'NIDIA ESTELA GONZALEZ', '', '1310620-1', '0971 483 168', 'CAMPO 9', 'A', 1),
	(183, 'AUTOMECANICA VANDO - VANDERLEI GUARESI', '', '5840199-7', '0971-404095', 'CAMPO 9', 'A', 1),
	(184, 'JOHAN FEHR KRAUSE', '', '1732942-6', '0528- 250281', 'RAUL A. OVIEDO', 'A', 1),
	(185, 'AMAZONIA S.A.', '', '80044436-1', '0971- 204 585', 'ENCARNACION', 'A', 1),
	(186, 'ESTACION DE SERV. FUTURISTA S.A', '', '80032607-5', '0336 272098', 'PEDRO JUAN CABALLERO', 'A', 1),
	(187, 'COOP.FERNHEIM LTDA', '', '80016754-6', '0981-876 905', 'FILADELFIA-CHACO', 'A', 1),
	(188, 'QLINK COMERCIAL - KAREN A. VERA', '', '5237685-0', '595 576680', 'CDE', 'A', 1),
	(189, 'MURIANA S.A.', '', '80069043-5', '061-578332', 'CDE', 'A', 1),
	(190, 'ASOCIACION CIVIL SALUD PARA TODOS', '', '80074111-0', '0', 'RAUL A. OVIEDO', 'A', 1),
	(191, 'SENAVE', '', '80029961-2', '445 769', 'ASUNCION', 'A', 1),
	(192, 'HOTEL ARTHUR - BASILIO PRANCZAK', '', '495974-4', '071-205246', 'ENCARNACION', 'A', 1),
	(193, 'ELIZANDRO CARDOZO', '', '4427932-9', '39210327', 'CONCEPCION', 'A', 1),
	(194, 'FLAVIO MIGUEL THOMAS', '', '6742123-7', '0983 685856', 'SANTA RITA', 'A', 1),
	(195, 'JUAN CARLOS BARAN', '', '855052-2', '071-202344', 'ENCARNACION', 'A', 1),
	(196, 'GRAFI EXPRES S.A.', '', '80026605-6', '550008', 'ASUNCION', 'A', 1),
	(197, 'CASA DE MOTOS CAMPO 9 - DIEDRICH HILDEBR', '', '1497664-1', '0528 222 587', 'CAMPO 9', 'A', 1),
	(198, 'RICARDO ALBERTO CASTILLO', '', '1487481-4', '0', 'ENCARNACION', 'A', 1),
	(199, 'JOSE SANCHEZ', '', '1380152-0', '0', 'CAAGUAZU', 'A', 1),
	(200, 'VALOI RAMON DUARTE', '', '2154228-7', '0', 'CAAGUAZU', 'A', 1),
	(201, 'LEVI ZACHARIAS BERGEN', '', '2440074-2', '0', 'COL.SOMMERFELD', 'A', 1),
	(202, 'VERNA HEINRICH F.', '', '3504028-9', '.', 'CAMPO 2', 'A', 1),
	(203, 'SANTIAGO ARANDA', '', '2834070-1', '0', 'CAPIATA', 'A', 1),
	(204, 'RAUL GONZALEZ', '', '3875393-6', '0', 'LUQUE', 'A', 1),
	(205, 'JAVIER SANCHEZ', '', '3564699-3', '0', 'CAAGUAZU', 'A', 1),
	(206, 'SUPERM.CAMPO 9 S.A.', '', '80029973-6', '0528-222218', 'CAMPO 9', 'A', 1),
	(207, 'PRESTAMO - BANCO CONTINETAL', '', '.', '.', '.', 'A', 1),
	(208, 'PRESTAMO - AMAMBAY S.A', '', '80009515-4', '021-6187000', 'CDE', 'A', 1),
	(209, 'PRESTAMO - BBVA.', '', '80022955-0', '0', 'CAMPO 9', 'A', 1),
	(210, 'SUPERMERCADO SANTA ELENA', '', '1061675-6', '.', 'CAAGUAZU', 'A', 1),
	(211, 'SUPERMERCADO LA GERMANIA', '', '80026548-3', '528222318', 'CAMPO9', 'A', 1),
	(212, 'SALVADOR FRANCISCO SERVIAN M.-NOTARIO', '', '517318-3', '450 564', 'ASUNCION', 'A', 1),
	(213, 'J.MARIBEL ESTECHE BAREIRO-NOTARIO', '', '615841-2', '492 336', 'ASUNCION', 'A', 1),
	(214, 'C9 EVENTOS Y PRODUCCIONES', '', '6221513-2', '0971-481 207', 'CAMPO9', 'A', 1),
	(215, 'ZUSA SACI', '', '80002613-6', '582392', 'RUTA I', 'A', 1),
	(216, 'PUMA SAN RAMON', '', '200316-3', '643 552', 'LAS RECIDENTAS', 'A', 1),
	(217, 'PETROSUR S.A.', '', '80013377-3', '0', 'MCAL LOPEZ', 'A', 1),
	(218, 'COPETROL SAN VICENTE- CARLOS A. ORTIZ C.', '', '1308407-0', '0', 'CARAJAO', 'A', 1),
	(219, 'PROGRESO S.A.C.I - COMERCIAL 101', '', '80028854-8', '235533', 'SAN PEDRO', 'A', 1),
	(220, 'SUPRIMAQ S.R.L.', '', '80049803-8', '061-571558', 'CIUDAD DEL ESTE', 'A', 1),
	(221, 'CASA SANTANDER -ALEJANDRO SANTANDER', '', '1054076-8', '.', 'SAN LORENZO', 'A', 1),
	(222, 'NEUMATICOS DEL PARAGUAY S.R.L.', '', '80021397-1', '512 113', 'CDE', 'A', 1),
	(223, 'FAUSTINO RAMIREZ ALMADA', '', '453112-4', '585224', 'SAN LORENZO', 'A', 1),
	(224, 'ALTONA S.A.E.', '', '80029363-0', '0528002902/03', 'CAMPO 9', 'A', 1),
	(225, 'FERRETERIA LAGO AZUL -MARINA VARELA', '', '2100506-0', '310813', 'CAMPO 9', 'A', 1),
	(226, 'TRANSPORTE BUHLER- GERHARD BUHLER', '', '1115811-5', '71-401841', 'SOMMERFELD', 'A', 1),
	(227, 'TRANS KRILOW TRADING S.R.L.', '', '80079106-1', '73-592583', 'CAMPO 9', 'A', 1),
	(228, 'AGRO NATALIO S.R.L.', '', '80054074-3', '765-206026', 'ITAPUA', 'A', 1),
	(229, 'ALBERTO LUCIANO LOVERA MORENO', '', '2517187-9', '0', 'RAMAL', 'A', 1),
	(230, 'SILO CERRO LARGO S.A.', '', '80025633-6', '0', 'SANTA RITA ALTO PARANA', 'A', 1),
	(231, 'AGRO SILO ITAPUA', '', '4320957-2', '0673-220443', 'ITAPUA', 'A', 1),
	(232, 'AGRO VETERINARIA CAMPO 9 EL TAMBERO S.A.', '', '80067911-3', '222 252', 'CAMPO 9', 'A', 1),
	(233, 'FRANCISCO VIERCI & CIA S.R.L.', '', '80004265-4', '0336-272266', 'PEDRO JUAN CABALLERO', 'A', 1),
	(234, 'ANITA PAULINA KAUSS BECKER', '', '1152756-0', '0.', 'ITAPUA', 'A', 1),
	(235, 'CAMPO ELECTRIC- DAVID DYCK BERGEN', '', '943284-1', '0', 'CAMPO 8', 'A', 1),
	(236, 'EDWWARD HILDEBRAND HARDER', '', '2233444-0', '.', 'CAMPO 8+', 'A', 1),
	(237, 'CESAR SAMUDIO FERNANDEZ', '', '3896404-0', '0', 'PEDRO JUAN CABALLERO', 'A', 1),
	(238, 'JOSE DE JESUS OVIEDO SOSA', '', '1410660-4', '0', 'MAURICIO J. TROCHE', 'A', 1),
	(239, 'GICAL S.A.', '', '80003369-8', '214742', 'ASUNCION', 'A', 1),
	(240, 'ESTAC.SERV.EL CAMIONERO S.A.', '', '80057671-3', '0', 'PEDRO JUAN CABALLERO', 'A', 1),
	(241, 'EST.SERV.PUERTO ALTO S.A.', '', '80020768-8', '0', 'OVIEDO', 'A', 1),
	(242, 'PUMA CAMPO 9 DE CORNELIO TOEWS', '', '857628-9', '0', 'CAMPO 9', 'A', 1),
	(243, 'PANADERIA ROLON', '', '593215-7', '228634412', 'CAPIATA', 'A', 1),
	(244, 'MARIA CELESTE YNSFRAN MONTI', '', '600906-9', '595-21-5510252', 'ASUNCION', 'A', 1),
	(245, 'EL PAPITO GROUP SACI', '', '80047265-9', '0521-200219', 'CNEL OVIEDO', 'A', 1),
	(246, 'CHURRASQUERIA SUL AMERICANA -CLECIO FISS', '', '2966134-0', '0572-216130', 'JUAN MANUEL FRUTOS', 'A', 1),
	(247, 'GUAMPERIA CARLITOS- IGNACIO RAMON RUIZ', '', '703859-3', '0528-222394', 'CAMPO 9', 'A', 1),
	(248, 'DIEGUITO COMERCIAL S.R.L.', '', '80054139-1', '0', 'CAAGUAZU', 'A', 1),
	(249, 'CRISTIAN SANCHEZ', '', '3564696-9', '0', 'CAAGUAZU', 'A', 1),
	(250, 'DIRECCION GENERA DE RECAUDACION', '', '0', '0', 'ASUNCION', 'A', 1),
	(251, 'EMBRAPAC EQUIPAMIENTOS S.A', '', '99999901-0', '11-37682810', 'SÀO PAULO', 'A', 1),
	(252, 'INTERESES - BANCO CONTINENTAL', '', '80019270-2', '0528-222978', 'ASUNCION', 'A', 1),
	(253, 'INTERESES - BANCO BBVA', '', '0', '0', 'ASUNCION', 'A', 1),
	(254, 'INTERESES - BANCO BASA S.A.', '', '0', '0', '0', 'A', 1),
	(255, 'PRESTAMO - CREDIT UNION', '', '0', '2222928', 'CAMPO 9', 'A', 1),
	(256, 'ANNP-ADMINST. NACIONAL DE NAV. Y PUERTO', '', '80003468-6', '498025', 'PEDRO J. CABALLERO', 'A', 1),
	(257, 'CAMARA NACIONAL DE COMERCIO Y SERVICIOS', '', '80025484-8', '0', 'ASUNCION', 'A', 1),
	(258, 'HOMBERGER Y CIA', '', '50081221-7', '.', '.', 'A', 1),
	(259, 'ADDAX CARGO DE ASAV S.A.', '', '.', '.', '.', 'A', 1),
	(260, 'NUTRIMENTOS PARAGUAYOS S.R.L', '', '80000024-2', '0294-220765', 'ITAUGUA', 'A', 1),
	(261, 'ESTRELLA PARAGUAYA S.R.L.', '', '80023222-4', '311-168', 'LAMBARE', 'A', 1),
	(262, 'FERRINA S.R.L.', '', '80017072-5', '652407', 'SAN LORENZO', 'A', 1),
	(263, 'AGAMAR CONSTRUCCIONES', '', '285136-9', '596 215', 'LUQUE', 'A', 1),
	(264, 'TEJAS Y ARENA - SELVA FERREIRA L.', '', '2394382-3', '648 808', 'LUQUE', 'A', 1),
	(265, 'MAS & VIC CONSTRUCIONES -VICTOR D. DIAZ', '', '980008-5', '502 004', 'FDO DE LA MORA', 'A', 1),
	(266, 'ALCIDES CESPEDES GIMENEZ', '', '1388155-8', '121 288', 'CAAGUAZU', 'A', 1),
	(267, 'INSTITUTO DE PREVISION SOCIAL', '', '0', '0276-20-0002', 'ASUNCION', 'A', 1),
	(268, 'MIRAI - YGUAZU S.A.', '', '80048047-3', '0632-20650', 'YGUAZU', 'A', 1),
	(269, 'GLADYS E. FIGUEREDO DE AGUILERA', '', '671356-4', '021491 486', 'CHILE865C/HUMAITA', 'A', 1),
	(270, 'SALINAS REPUESTOS', '', '2507565-9', '0522- 41579', 'CAAGUAZU', 'A', 1),
	(271, 'CHAPERIA Y PINTURA -MIGUEL RUIZ V.', '', '3901315-4', '0971-874618', 'CAAGUAZU', 'A', 1),
	(272, 'RADIADORES JC -FERMINA B. COLMAN', '', '4329399-9', '0985-502305', 'LUQUE', 'A', 1),
	(273, 'TOURING CAR - ISABELINO BENITEZ', '', '4209735-5', '0975-703891', 'CAAGUAZU', 'A', 1),
	(274, 'BATERIA "EL PETIZO" -IGNACIO CUQUEJO M.', '', '2877370-5', '0981-316969', 'CAAGUZU', 'A', 1),
	(275, 'JUAN FRANCISCO PRIETO SANTACRUZ', '', '1412882-9', '0521-208063', 'CNEL OVIEDO', 'A', 1),
	(276, 'ESTAC. LA RESIDENTA ISIDRO CAÑETE PEREZ', '', '563798-8', '647406', 'LUQUE', 'A', 1),
	(277, '2SG S.R.L.', '', '80068880-5', '751904', 'ASUNCION', 'A', 1),
	(278, 'MULTILONAS -DERLIS CESPEDES', '', '4069285-0', '0976-361440', 'CAAGUAZU', 'A', 1),
	(279, 'LAVADERO MARTINEZ -CELINA GAMARRA', '', '2175029-7', '0982-560642', 'TORO BLANCO', 'A', 1),
	(280, 'CATALINO TORRES MARECO', '', '1201298-0', '0', 'CAAGUAZU', 'A', 1),
	(281, 'VISION BANCO S.A.E.C.A', '', '80009310-0', '021 4143000', 'SANTA TERESA 3088', 'A', 1),
	(282, 'HILAGRO S.A.', '', '80030229-0', '0528-222815', 'CAMPO 9', 'A', 1),
	(283, 'TRANSPORTADORA CENTRAL DE NERI ACOSTA', '', '1630797-6', '0644-22098', 'MINGA GUAZU', 'A', 1),
	(284, 'CARGILL AGROPECUARIA S.A.C.I', '', '80005966-2', '595-0644-219', 'ALTO PARANA', 'A', 1),
	(285, 'AUTOMAQ S.A.E.C.A', '', '80013366-8', '493-111', 'ASUNCION', 'A', 1),
	(286, 'IMPAR - SUNSET S.A.C.I.S.', '', '80028071-7', '061-500 127', 'CDE', 'A', 1),
	(287, 'SETAC S.R.L.', '', '80002604-7', '021-502811', 'FDO DE LA MORA', 'A', 1),
	(288, 'EUDE G. CARDOZO BRITEZ', '', '2527531-3', '0985-315412', 'SAN LORENZO', 'A', 1),
	(289, 'FERRETERIA GENERAL - GUILLERMO GODZIEWSK', '', '1127399-2', '648818', 'LUQUE', 'A', 1),
	(290, 'VELAZQUEZ CONSTRUCCIONES', '', '327115-3', '021-600320', 'ASUNCION', 'A', 1),
	(291, 'ELECTRO CAR - MARIANO GARAY', '', '1055984-1', '971411055', 'CAM`PO 9', 'A', 1),
	(292, 'NEYDE FAUSTINA DE MENDOZA M.', '', '820812-3', '0528-2228948', 'CAMPO 9', 'A', 1),
	(293, 'SUDATLANTICO S.A.', '', '80012414-6', '212426/27', 'ASUNCION', 'A', 1),
	(294, 'LIEVER COMUNICACIONES', '', '3211623-3', '961858366', 'CAMPO 9', 'A', 1),
	(295, 'EDITORA ADIS - HECTOR OVEJERO', '', '662882-6', '021-497707', 'ASUNCION', 'A', 1),
	(296, 'PUBLICARTE - JULIO CLODOALDO', '', '6151298-2', '0983-515230', 'ITAPUA', 'A', 1),
	(297, 'PUERTOS Y ESTIBAJES S.A.', '', '80025504-6', '595-21-755500', 'MARIANO ROQUE ALONZO', 'A', 1),
	(298, 'TRANS NELSON - DANIELA ENCISO', '', '1129478-7', '0983-682531', 'CAPIATA', 'A', 1),
	(299, 'LUIS D.YEGROS BOGADO', '', '989701-1', '525-21 228160', 'ASUNCION', 'A', 1),
	(300, 'M.O.P.C.', '', '80004239-5', '0', '0', 'A', 1),
	(301, 'GRANUPLAST S.A.I.C.', '', '80046804-0', '228 629160', 'CAPIATA', 'A', 1),
	(302, 'HERRERIA METAL - DANIEL GONZALEZ', '', '2118818-1', '0972 807 134', 'LUQUE', 'A', 1),
	(303, 'TOTTAL S.A.', '', '80018530-7', '0', 'ASUNCION', 'A', 1),
	(304, 'CORNELIUS DUECK DYCK', '', '1981062-8', '0', 'SOMMERFELD', 'A', 1),
	(305, 'CONTIMAT S.R.L.', '', '80066155-9', '0528 222705', 'RUTA 7', 'A', 1),
	(306, 'ROBSON AMORIM PARIS', '', '6841732-2', '0983-555894', 'CDE', 'A', 1),
	(307, 'SOBRE RUEDAS S.A.', '', '80062002-0', '0981 488484', 'DEFENSORES DEL CHACO', 'A', 1),
	(308, 'AUTOMOTOR S.A.', '', '80001340-9', '595-21 2593 251', 'ASUNCION', 'A', 1),
	(309, 'RICHARD ELDON RODRIGUEZ R.', '', '2951375-8', '0', 'ASUNCION', 'A', 1),
	(310, 'NOVA OFFICE - HELIOS RAUL CANESSA', '', '762728-9', '210046/224397', 'AZARA 1631', 'A', 1),
	(311, 'HERRERIA SAN JOSE - OSMAR CONTRERAS', '', '2945727-0', '0971-979170', 'CAMPO 9', 'A', 1),
	(312, 'FERRETERIA PILAR - VICTOR M.MENDOZA', '', '3436899-0', '0981-267133', 'LUQUE', 'A', 1),
	(313, 'METALURGICA LOPEZ', '', '1100197-6', '0528-222240', 'CAAGUAZA', 'A', 1),
	(314, 'SERIGRAFIA CAMPO 9 - JULIO C.TORRES T.', '', '4209715-0', '0971-416761', 'CAMPO 9', 'A', 1),
	(315, 'JUAN GUILLERMO RECALDE TORRES', '', '1364507-2', '52240113', 'CAAGUAZU', 'A', 1),
	(316, 'JULIO R. MONZON ESTIGARRIBIA', '', '4752611-4', '983373197', 'CAACUPE', 'A', 1),
	(317, 'JAVIER GONZALEZ', '', '3901896-2', '0', 'ASUNCION', 'A', 1),
	(318, 'FERRETERIA MERC. C9  PENNER E HIJOS SA', '', '80077517-1', '0528 250285', 'RUTA 7, KM 212 1/2', 'A', 1),
	(319, 'COMERCIAL ALVAREZ S.R.L.', '', '80015490-8', '0536-282302', 'QUIINDY', 'A', 1),
	(320, 'LIZ BENITEZ BENITEZ', '', '1364163-8', '375198', 'ASUNCION', 'A', 1),
	(321, 'LUZ DEL MAR TORRES NUÑEZ', '', '4327845-0', '0971-152978', 'CAMPO 9', 'A', 1),
	(322, 'TALLER MECANICO BUHLER - JACOB BUHLER', '', '1020811-9', '0', '.', 'A', 1),
	(323, 'ACA S.A.', '', '80019301-6', '582636', 'SAN LORENZO', 'A', 1),
	(324, 'FERRARI - AUTOCENTRO S.A', '', '80045445-6', '595-61-500032', 'CDE', 'A', 1),
	(325, 'BALANZAS CASCAVEL S.R.L.', '', '80044253-9', '64422145', 'ALTO PARANA', 'A', 1),
	(326, 'MANGOPAR S.R.L.', '', '80019441-1', '061-573631', 'CDE', 'A', 1),
	(327, 'AGRO GANADERA PORVENIR S.A', '', '80048716-8', '0985-587400', 'ITAPUA', 'A', 1),
	(328, 'SUPERMERCADO GUARANI S.R.L.', '', '80002449-4', '0', 'LUQUE', 'A', 1),
	(329, 'ESPAÑA S.R.L', '', '80002024-3', '0', 'SAN LORENZO', 'A', 1),
	(330, 'LEA VICTORIA S.A', '', '80044271-7', '0', 'SACRAMENTO', 'A', 1),
	(331, 'EXCALIBUR S.A', '', '80048886-5', '0', 'ASUNCION', 'A', 1),
	(332, 'EDITORA GUIA DE LA INDUSTRIA S.R.L.', '', '80004786-9', '0', 'ASUNCION', 'A', 1),
	(333, 'LIBRERIA NOVA S.A.', '', '80024490-7', '0', '0', 'A', 1),
	(334, 'COLORPLAST S.A.', '', '80072097-0', '213679', 'ASUNCION', 'A', 1),
	(335, 'SENTAL PARAGUAY S.R.L.', '', '80012149-0', '604871', 'ASUNCION', 'A', 1),
	(336, 'LA YUTENA S.A.', '', '80023705-6', '0', 'ASUNCION', 'A', 1),
	(337, 'INFOMARKET S.R.L.', '', '80064304-6', '203278', 'ASUNCION', 'A', 1),
	(338, 'IMPRENTA GRAFI-RAP S.R.L.', '', '80016040-1', '292017', 'ASUNCION', 'A', 1),
	(339, 'OAMI S.A', '', '80016120-3', '227003', 'ASUNCION', 'A', 1),
	(340, 'GRUPO APANE S.A.', '', '80023134-1', '0464 20001', '.', 'A', 1),
	(341, 'ESTABLECIMIENTO INDUSTRIAL HENMY S.A.', '', '80068071-5', '0228-632132', 'CAPIATA', 'A', 1),
	(342, 'ALONSO COMERCIAL S.R.L.', '', '80006739-8', '021-964761', 'ASUNCION', 'A', 1),
	(343, '4 J.J.J.J. S.R.L.', '', '80019666-0', '295506', 'MARIANO R.ALONSO', 'A', 1),
	(344, 'EMPANADAS ÑA CRISTINA S.A.', '', '80051460-2', '946508', 'VILLA ELISA', 'A', 1),
	(345, 'DIONICIA MILTOS AGUILERA', '', '1778060-8', '0', 'CORDILLERA', 'A', 1),
	(346, 'HOTEL LA GERMANIA - PETER GUENTHER', '', '544373-3', '222800', 'CAMPO 9', 'A', 1),
	(347, 'JOEL ANTONIO ORREGO CANTERO', '', '4545118-4', '0', 'CAMPO 9', 'A', 1),
	(348, 'GLORIA ROSANNA GIMENEZ KEHLER', '', '4545204-0', '971683668', 'CAMPO 9', 'A', 1),
	(349, 'COPETROL - RUMAR -MARINO RUIZ DE ALONSO', '', '230307-8', '652020/1', 'SAN LORENSO', 'A', 1),
	(350, 'HB HIDRAULIUCA BRASIL S.A.', '', '80012207-0', '648994', 'LUQUE', 'A', 1),
	(351, 'DEAN INTERNATIONAL INVESTMENTS CORP.', '', '0', '0', 'ESTADOS UNIDOS', 'A', 1),
	(352, 'DISTRIBUIDORA TOP S.A.', '', '80051170-0', '0983-176888', 'ALTO PARANA', 'A', 1),
	(353, 'CASA GRUTTER S.A', '', '80000447-7', '512875', 'ASUNCION', 'A', 1),
	(354, 'ELID S.A.', '', '80055024-2', '675122', 'LUQUE', 'A', 1),
	(355, 'CARSUPLAY E.I.R.L.', '', '80044075-7', '572764', 'ASUNCION', 'A', 1),
	(356, 'ARILSON DINIZ', '', '50012616-0', '0985-532004', 'ALTO PARANA', 'A', 1),
	(357, 'ING.BLAS PESSOLANI', '', '1122020-1', '595 21- 612172', 'ASUNCION', 'A', 1),
	(358, 'ADRIANA M. ALTIERI DE BOGARIN', '', '753726-3', '614 467', 'ASUNCION', 'A', 1),
	(359, 'SEMEAR S.A.', '', '80056493-6', '0673-221007', 'SNTA RITA', 'A', 1),
	(360, 'AGROSERRANA S.A.', '', '80045652-1', '0', 'CAAZAPA', 'A', 1),
	(361, 'CONECTA - ELOIR ANTONIO', '', '50080405-2', '061-578778', 'HERNANDARIAS', 'A', 1),
	(362, 'LIBRERIA ARANDU DE MARIO AGUILERA', '', '384649-0', '642-572', 'CERRO CORA 289 - LUQUE', 'A', 1),
	(363, 'EL SHAH S.A.', '', '80074962-5', '982664644', '10 DE AGOSTO 9850 - ÑEMBY', 'A', 1),
	(364, 'LUCIO AREVALOS', '', '1746884', '21', 'LIMPIO', 'A', 1),
	(365, 'W & R TALLER DE WALTER LUIS INSFRAN GONZ', '', '1411510-7', '600327', 'BOGGIANI 4515 - ASUNCION', 'A', 1),
	(366, 'ROSSANA LEITE CORRALES', '', '3434148-0', '21', 'LUQUE', 'A', 1),
	(367, 'CICSA COMPAÑIA INTERNACIONAL DE CONT.SA', '', '80011172-9', '59561', 'ASUNCION', 'A', 1),
	(368, 'GESTION DE SERVICIOS S.A.', '', '80040939-6', '557440', 'MCAL. LOPEZ Y MDME. LYNCH - ASUNCION', 'A', 1),
	(369, 'GERMAN GALEANO VILLASBOA', '', '3858498-0', '21', 'FERNANDO DE LA MORA', 'A', 1),
	(370, 'COMERCIAL VIRGEN DEL ROSARIO S.R.L.', '', '80028327-9', '982888901', 'JAVIER BOGARIN ESQ. CAPITAN BADO', 'A', 1),
	(371, 'MALUCO DE MARIO ANDRES AGUILERA', '', '2025137-8', '654524', 'CERRO CORA CASI BENIGNO GONZALEZ', 'A', 1),
	(372, 'JOSE ROBERTO MACHADO', '', '50059408-2', '0', 'SALTO DEL GUAIRA', 'A', 1),
	(373, 'TALLER RECTIFICADORA CAMPO 9 - ALBERTO G', '', '1131734-5', '0528-222285', 'CAMPO 9', 'A', 1),
	(374, 'JOAO ULLMANN', '', '3997093-0', '0986 401667', 'ALTO PARANA', 'A', 1),
	(375, 'TRANSPORTE DE CARGA - PRIMO A. ROMERO', '', '1508888-0', '0971-426164', 'RAUL A. OVIEDO', 'A', 1),
	(376, 'LUCAS S.A.', '', '80062577-3', '984235304', 'QUESADA Y DE GAULLE', 'A', 1),
	(377, 'COPETROL SAGRADA FAMILIA SRL', '', '80058346-9', '981521295', 'EUGENIO A GARAY', 'A', 1),
	(378, 'COMERCIAL SAN LORENZO DE FAUSTINO RAMIRE', '', '453112-4', '224510331', 'SAN LORENZO', 'A', 1),
	(379, 'BERNABE CENTURION', '', '1345117', '984391399', 'FNDO. MORA ZONA SUR', 'A', 1),
	(380, 'VICTOR FERREIRA', '', '2109621', '971653406', 'CAPIATA KM 21', 'A', 1),
	(381, 'MATERIALES JULIO CESAR', '', '1712638-0', '654-544', 'CAP. INSFRAN E/ SAN CARLOS', 'A', 1),
	(382, 'AGROVETERINARIA ÑANE IRU S.R.L.', '', '80078983-0', '663630', 'HUMAITA CASI CERRO CORA LUQUE', 'A', 1),
	(383, 'GOMERIA ELIM DE LUIS FRANCISCO VAZQUEZ', '', '972625-0', '0991 820160', 'ASUNCION Y MCAL. ESTIGARRIBIA - FNDO MOR', 'A', 1),
	(384, 'CHURRASQUERIA ALFF - CORNELIO ALFF', '', '2120634-1', '0', 'CAMPO 9', 'A', 1),
	(385, 'BASCULAS Y SERVICIOS DEL ESTE', '', '2053565-1', '0983/668386', 'CDE', 'A', 1),
	(386, 'IMPRENTA CAMPO 9 -ELISA E.GARAYO', '', '3201586-0', '0528-222891', 'CAMPO 9', 'A', 1),
	(387, 'EL FAROL S.A.', '', '80022067-6', '646684', 'GRAL. CABALLERO ESQ. GRAL AQUINO LUQUE', 'A', 1),
	(388, 'AGUIAR MECANICA GENERAL', '', '814582-2', '0971 262991', 'ANTOLIN IRALA 3273 - ASUNCION', 'A', 1),
	(389, 'ASOCIACION JAPONESA DE YGUAZU DEL PARAGU', '', '80011705-0', '63220470', 'YGUAZU', 'A', 1),
	(390, 'FABIOLA S.A.', '', '80022158-3', '905777', 'CACIQUE LAMBARE Y RIO APA', 'A', 1),
	(391, 'ESTACION DE SERVICIOS YBERA', '', '487519-2', '585854', 'MCAL. LOPEZ Y EUGENIO GARAY', 'A', 1),
	(392, 'JACOB BRAUN HARDER', '', '3633035-3', '0971 401-808', 'CAMPO 9', 'A', 1),
	(393, 'DISTRIBEIDORA SCHROEDER', '', '2658952-4', '971.446.533', 'DE HENRY SCHROEDER BUHLER', 'A', 1),
	(394, 'INFORMCONF S.A.', '', '80045898-2', '595-21/449177', 'ASUNCION', 'A', 1),
	(395, 'ALCIDES GERMAN RODRIGUEZ', '', '4644681-8', '982236667', 'LUQUE', 'A', 1),
	(396, 'ECOBAR S.R.L.', '', '80051180-8', '991-102', 'CAP. INSFRAN ESQ REP COLOMBIA', 'A', 1),
	(397, 'TALLER MECANICO EL ROCIO DE RAMON CASTRO', '', '890907-5', '0228 632430', 'RUTA KM 22 1/2', 'A', 1),
	(398, 'ESTACION DE SERVCIOS ZAGATTOS SRL', '', '80000050-1', '21573476', 'MCAL. LOPEZ Y VICTOR CACERES', 'A', 1),
	(399, 'NUESTRA SEÑORA DE LA ASUNCION C.I.S.A.', '', '80002577-6', '2891000', 'LUQUE', 'A', 1),
	(400, 'INTERDENIM SACI - SUPER ARCHI', '', '80020196-5', '3249023', 'SHOPPING PINEDO', 'A', 1),
	(401, 'LIRIO BARAZETTI', '', '3576488-0', '0', 'CURUGUATY', 'A', 1),
	(402, 'BEST CAR DE JULIO GONZALEZ ROMAN', '', '658743-7', '523841', 'DEFENSORES DEL CHACO 777 FNDO MORA', 'A', 1),
	(403, 'WALTER RAY SCHLABACH', '', '2335373-2', '0', '1RA LINEA', 'A', 1),
	(404, 'GRANOS TOLEDO S.R.L.', '', '80025178-4', '0528-222796', 'RAUL A. OVIEDO', 'A', 1),
	(405, 'HOUSE NEGOCIOS DE MIGUEL ROZANSKI', '', '1591978-1', '981214340', 'SATURIO RIOS 688', 'A', 1),
	(406, 'EST.SERVICIOS DE CARLOS S.RAMIREZ A.', '', '1133094-5', '0981 128904', 'CAAGUAZU', 'A', 1),
	(407, 'TANSPORTADORA L.G. LEVI GIESBRECHT D.', '', '1849331-9', '0971-223130', 'CAMPO 9', 'A', 1),
	(408, 'TRANSPORTE L.G. - LEVI GIESBRECHT D.', '', '1849331-9', '971223130', 'CAMPO 9', 'A', 1),
	(409, 'GERMAN ALCIDES RODRIGUEZ MERELES', '', '4644681-8', '0982-236667', 'ASUNCION', 'A', 1),
	(410, 'COPROAGRO S.R-L-', '', '80008328-8', '0985-835444', 'ITAPUA', 'A', 1),
	(411, 'SALTO AGUARAY S.A', '', '80000838-3', '0', 'PEDRO J.CABALLERO', 'A', 1),
	(412, 'TRANSPORTADORA DEISY CAROLINA', '', '1457281-8', '0671-350146', 'CAAGUAZU', 'A', 1),
	(413, 'AGRO SUSIK S.A.', '', '80034161-9', '0', 'ITAPUA', 'A', 1),
	(414, 'ACACIO HUBNER', '', '4606855-4', '0', 'CERUGUATY', 'A', 1),
	(415, 'ALCIONE MACHADO BOROWECE', '', '6218965-4', '0981-807120', 'CURUGUATY', 'A', 1),
	(416, 'SILVIO PREUSS', '', '2663152-0', '0971-447776', 'CAAGUAZU', 'A', 1),
	(417, 'CARL BRAUN HARDER', '', '3633034-5', '0971-434442', 'JUAN M. FRUTOS', 'A', 1),
	(418, 'MENA SERVICIOS - BLAS FAVIO MENA', '', '1880719-4', '0985-702942', 'ITAPUA', 'A', 1),
	(419, 'SILO ORIENTE - TERRA NOSSTRA S.A.', '', '80027449-0', '0983-613254', 'ALTO PARANA', 'A', 1),
	(420, 'CEREALL S.A.', '', '80061703-7', '061-579746', 'HERNANDARIAS', 'A', 1),
	(421, 'AGRICOLA SAN FRANCISCO - ERVINO PAES', '', '6175226-6', '0984-778688', 'SAN PEDRO', 'A', 1),
	(422, 'MUNICIPALIDAD DE LUQUE', '', '80008887-5', '0', 'LUQUE', 'A', 1),
	(423, 'LUXACRIL S.A.', '', '80016252-8', '943-905', 'ACCESO SUR 1230', 'A', 1),
	(424, 'ELVA BEATRIZ VERA CABRAL', '', '641504-0', '0982-765926', 'LIMPIO', 'A', 1),
	(425, 'JUSTO LOVERA FERREIRA', '', '1042057-6', '76420145', 'ITAPUA', 'A', 1),
	(426, 'ELIAS MONTANIA PAIVA', '', '3613528-3', '0971-460114', 'JOSE D. OCAMPOS', 'A', 1),
	(427, 'ESTEBAN LOVERA ESPINOZA', '', '3490044-6', '0985-848646', 'ENCARNACION', 'A', 1),
	(428, 'AGROSILO IBIPORÄ S.A.', '', '80047729-4', '0973 200 350', 'CANINDEYU', 'A', 1),
	(429, 'IMPORTADORA PARANA S.A.', '', '80024245-9', '021-520000', 'ASUNCION', 'A', 1),
	(430, 'ADM PARAGUAY S.A.', '', '80022234-2', '0644 2192000', 'MINGA GUAZU', 'A', 1),
	(431, 'PROVINDUS SA', '', '80010810-8', '606343', 'EUSEBIO AYALA 3747', 'A', 1),
	(432, 'ANGEL ADRIANO GONZALEZ', '', '337585-4', '0983-549867', 'SAN JOSE DE LOS ARROYOS', 'A', 1),
	(433, 'NIDERA PARAGUAY GRANOS Y OLEAGINOSAS S.A', '', '80078595-9', '021-613316', 'ASUNCION', 'A', 1),
	(434, 'C.C.A. CONSTRUCCIONES S.R.L.', '', '80019225-7', '061-573539', 'CDE', 'A', 1),
	(435, 'GARDEN AUTOMOTORES S.A.', '', '80024576-8', '622410', 'ASUNCION', 'A', 1),
	(436, 'PROQUITEC S.A.', '', '80022458-2', ' 021 523979', 'FERNANDO DE LA MORA', 'A', 1),
	(437, 'COPRONAR LTDA', '', '80006620-0', '0676-320', 'NARANJAL- ALTO PARANA', 'A', 1),
	(438, 'MAXIMINA CORRALES DE LEITE', '', '1416349-7', '0', 'LUQUE', 'A', 1),
	(439, 'GES - GESTIONES ESTRATEGICAS', '', '80029746-6', '0984-910737', 'LAMBARE', 'A', 1),
	(440, 'LONAS GUARANI DE DENIEL RAMIREZ', '', '1120995-0', '520936', 'ATILIO GALFRE Y LOMAS VALENTINAS', 'A', 1),
	(441, 'CONSORCIO ASEO AMBIENTAL', '', '80081081-3', '642332', 'CERRO CORA CASI RODRIGUEZ DE FRANCIA', 'A', 1),
	(442, 'MULTITECH S.A.', '', '80067791-9', '061-578673', 'AVDA.TEODORO MONGELOS- CDE', 'A', 1),
	(443, 'D R F S.A.', '', '80020993-1', '59521-522 128/3', 'FNDO DE LA MORA', 'A', 1),
	(444, 'JUAN MARCELO MACIEL -', '', '1271960-9', '0', 'ASUNCION', 'A', 1),
	(445, 'ASITEC S.A.', '', '0', '0', 'CHILE', 'A', 1),
	(446, 'GUSTAVO PEDROZO', '', '3650846-2', '0', 'LUQUE', 'A', 1),
	(447, 'AJ SA CALIDAD ANTE TODO', '', '80009641-0', '4141 111', 'ESPAÑA 1410', 'A', 1),
	(448, 'GRANOS SASAHARA S.R.L.', '', '80059899-7', '0770-219840', 'DISTRITO DE LA PAZ', 'A', 1),
	(449, 'CASA J. GOMEZ SRL', '', '80002438-9', '500149', 'RUTA MCAL ESTIGARRIBIA KM 8.5', 'A', 1),
	(450, 'QUIERO MAS SRL', '', '80002585-7', '021 291358', 'AVDA PRIMER PRESIDENTE', 'A', 1),
	(451, 'AUTOMOTRIZ TALLER DE CARLOS LUGO', '', '777780-9', '648-792', 'ISAL BOGADO LUQUE', 'A', 1),
	(452, 'PROBAL S.A.', '', '80061967-6', '0528-222533', 'RUTA 7 DR.JASPAR R.DE FRANCIA', 'A', 1),
	(453, 'MOLINOS KAARENDY POTY SACI', '', '80001608-4', '294220947', 'RUTA MARCIAL SAMANIEGO KM 2', 'A', 1),
	(454, 'ANGEL CACERES', '', '3990679-5', '0', 'CAMPO 9', 'A', 1),
	(455, 'TONY OJEDA', '', '6720765', '0', 'LUQUE', 'A', 1),
	(456, 'EMPRESUP SA', '', '80052800-0', '21579100', 'RUTA 1 CAPIATA', 'A', 1),
	(457, 'GS1 PARAGUAY', '', '80029871-3', '59.521.202.518', 'RCA DE SIRIA', 'A', 1),
	(458, 'COMPAÑIA PARAGUAYA DE LEVADURAS S.A.', '', '80002217-3', '21582453', 'RUTA 1 KM 16 CAPIATA', 'A', 1),
	(459, 'JUAN ALEJANDRO FERREIRA', '', '3928968-0', '0', 'CAPIATA', 'A', 1),
	(460, 'DIAZ E HIJOS SA', '', '80013876-7', '634606', 'FERNANDO SUR', 'A', 1),
	(461, 'JOEL MATTO', '', '5913772-0', '0', 'CAAGUAZU', 'A', 1),
	(462, 'GOMERIA SANTANDER DE MARIA DEL CARMEN BO', '', '1063236-0', '0', 'LUQUE', 'A', 1),
	(463, 'ELOI JOSE RAUBER', '', '2563694-4', '0', 'ITAPUA', 'A', 1),
	(464, 'VILLALBA JARA DIEGO', '', '2239867-8', '0983-720206', 'ALTO PARANA', 'A', 1),
	(465, 'ALCEU APARECIDO OTTENIO', '', '2503594-0', '0983-623313', 'CZU', 'A', 1),
	(466, 'COOPASAM LTDA', '', '80005645-0', '67720090', 'SUPERCARRETERA KM 115', 'A', 1),
	(467, 'EL ANTIGUO DE HILARIO SANCHEZ V.', '', '1704962-8', '229787', 'ASUNCION', 'A', 1),
	(468, 'ZETAPLAST S.A.', '', '80058753-7', '275 720', 'MARIANO R. ALONZO', 'A', 1),
	(469, 'OMAR NAYAR ACUÑA', '', '1961004-1', '0981 165-542', 'SAN PEDRO 1645 C/ELIGIO AYALA', 'A', 1),
	(470, 'HOTEL SAN LUIS DE FERMINA CANDIA ARCE', '', '1728111-3', '0528 222610', 'DR J E ESTIGARRIBIA', 'A', 1),
	(471, 'MAX MIR DE MIRNA BEATRIZ AGUILERA', '', '2508661-8', '981180533', 'LAMBARE', 'A', 1),
	(472, 'BRASGUAY S.R.L.', '', '80018261-8', '0528-222948', 'CAMPO 9', 'A', 1),
	(473, 'GIMENEZ CALVO S.A.C.', '', '80001592-4', '225-634', 'ASUNCION', 'A', 1),
	(474, 'ALBERTO KAZUHIKO YAMADA KAWATA', '', '3717951-9', '.', 'PEDRO JUAN CABALLERO', 'A', 1),
	(475, 'JYS AUTOMOTORES S.A.', '', '80052423-3', '021 676 114', 'FDO DE LA MORA', 'A', 1),
	(476, 'MAXIMO GONZALEZ', '', '2508661-8', '0', 'LAMBARE', 'A', 1),
	(477, 'ANIBAL FERREIRA', '', '3928969-9', '0', 'CAPIATA', 'A', 1),
	(478, 'EMPRESA DE TRANSPORTE SAN LUIS SA', '', '80020610-0', '942654', 'MAURICIO TROCHE CASI DEFENSORES', 'A', 1),
	(479, 'NARANJITO COMPRA DE ANTONIO APEZTEGUIA', '', '4511118-9', '0', 'SAN PEDRO', 'A', 1),
	(480, 'EDSON LUIZ KUHN', '', '5546432-7', '0983-687888', 'ALTO PARANA', 'A', 1),
	(481, 'CIBERMAX DE OSMAR BARRIOS', '', '2368560-3', '648976', 'LAURELTY LUQUE', 'A', 1),
	(482, 'GIMENEZ & CIA. DE EDGAR D.GIMENEZ G.', '', '3580695-8', '0983-632216', 'SANTA RITA', 'A', 1),
	(483, 'AGRO YERBATERA SAN ISIDRO S.A', '', '80059353-7', '0981-967455', 'AVDA.YATYTAY KM 14', 'A', 1),
	(484, 'JULIO VELAZQUEZ VERA', '', '3968470', '0', 'CALLE ULTIMA', 'A', 1),
	(485, 'COMERCIAL RENE S.R.L.', '', '80045878-8', '634037', 'LAS RESIDENTAS 715 - AREGUA', 'A', 1),
	(486, 'CONTRUCCIONES NUÑEZ DE CESAR M.NUÑEZ', '', '3632265-2', '.', '.', 'A', 1),
	(487, 'JULIO VELAZQUEZ', '', '3968470-9', '0', 'LUQUE', 'A', 1),
	(488, 'HORACIO FRUTOS CARVALLO', '', '754130-9', '0', 'ASUNCION', 'A', 1),
	(489, 'RNV INFORMATICA DE RODRIGO BENITEZ', '', '4784008-0', '0972 133099', 'LUQUE', 'A', 1),
	(490, 'JUAN ANTONIO PERALTA FLORENTIN', '', '1625300-0', '0521-200982', 'CORONEL OVIEDO', 'A', 1),
	(491, 'ING.AGR.ANTONIO AQUINO AYALA', '', '679307-0', '.', 'CDE', 'A', 1),
	(492, 'COMERCIAL A Y A DE MARIA COLMAN', '', '4036267-1', '0', '.', 'A', 1),
	(493, 'MOLIPAR S.A.', '', '80057733-7', '0', 'CAMPO 9', 'A', 1),
	(494, 'COMERCIAL NICOL DE NATALIA NICOL ACOSTA', '', '4590199-6', '0985-687079', 'ASUNCION', 'A', 1),
	(495, 'CASA GUILLE DE GUILLERMO THOMPSON', '', '2240367-1', '500067', 'SAN LORENZO', 'A', 1),
	(496, 'UCD Y CIA S.A.', '', '80035089-8', '021-590527', 'SAN LORENZO', 'A', 1),
	(497, 'SOC.COOP.AGR. FRIESLAND LTDA', '', '80000748-4', '0318-219032', 'SAN PEDRO', 'A', 1),
	(498, 'MULTIRUBROS S.A.', '', '80075772-6', '0972-653500', 'CAMPO 8', 'A', 1),
	(499, 'GUIDO LEZCANO', '', '3398949', '0', 'LUQUE', 'A', 1),
	(500, 'ETRAVEL S.A.', '', '80064780-7', '985444409', 'ASUNCION', 'A', 1),
	(501, 'PRISILIANO AVALOS', '', '0', '0', 'CALLE 3', 'A', 1),
	(502, 'TRANSPORTE R & R DE RAMON GONZALEZ RUIZ', '', '1105355-0', '0971-436164', 'CAMPO 9', 'A', 1),
	(503, 'OMNI S.A. RADAR', '', '80020160-4', '6196000', 'OHIGGINS CASI LILLIO', 'A', 1),
	(504, 'LUIZ CARLOS FEIX', '', '2248774-3', '0983-697920', 'ALTO PARANA', 'A', 1),
	(505, 'R.R. TRNASPORTE DE ROBERTO R. GONZALEZ G', '', '1922041-3', '0976-450405', 'DR. J.E.E.', 'A', 1),
	(506, 'AGRO GIMENEZ', '', '3911111-3', '0983-677642', 'MINGA PORA', 'A', 1),
	(507, 'GRUPO J.N  S.A.C.I.', '', '80034735-8', '021-551-823', 'FDO DE LA MORA', 'A', 1),
	(508, 'OVETRIL S.A.', '', '80007802-0', '061-511188', 'C.D.E.', 'A', 1),
	(509, 'COMPAÑIA DEKALPAR S.A', '', '80029906-0', '0', '.', 'A', 1),
	(510, 'SUPERMERCADOS ESPAÑA S.A.', '', '80031987-7', '21648461', 'LUQUE', 'A', 1),
	(511, 'TALLER CAMPORA DE ZACARIAS CAMPORA', '', '415732-0', '510325', 'ZAVALAS CUE CASI 1ER PRESIDENTE', 'A', 1),
	(512, 'DIRECTA S.R.L.', '', '80021767-5', '21.751.141', 'M.R.ALONZO - PARAGUAY', 'A', 1),
	(513, 'CARLOS SANTANDER', '', '2946173-1', '.', '0', 'A', 1),
	(514, 'GUSTAVO VILLALBA ALEN', '', '3191054-8', '981541616', 'SICILIA 350 CASICHILE', 'A', 1),
	(515, 'COOP.DE AHORRO Y CREDITO CREDIT UNION LT', '', '80009625-8', '0528-222208', 'CAMPO 9', 'A', 1),
	(516, 'SPC S.A.', '', '80085060-2', '0983-637527', 'HERNANDARIAS- ALTO PARANA', 'A', 1),
	(517, 'GERMAN HUTZ', '', '941152-6', '0971-203590', 'ENCARNACION', 'A', 1),
	(518, 'LIZ BENITEZ BENITEZ', '', '1364163-8', '985984074', 'RUTA ACCESO SUR - ÑEMBY', 'A', 1),
	(519, 'GRAIN BUSINESS S.A.', '', '80055729-8', '0', 'ITAPUA', 'A', 1),
	(520, 'TRANSAGRO S.A.', '', '80024300-5', '0', 'CALLE 1.RA LINEA J.EULOGIO ESTIGARRIBIA', 'A', 1),
	(521, 'CARMEN BASUALDO', '', '44444401-7', '0', '0', 'A', 1),
	(522, 'ERNESTO PODESTA', '', '44444401-7', '0', '0', 'A', 1),
	(523, 'EVEREST INGENIERIA SRL', '', '80009334-8', '021 940 080', 'VILLA ELISA', 'A', 1),
	(524, 'COMPY CENTER S.A.', '', '80063601-5', '222824', 'CAMPO 9', 'A', 1),
	(525, 'AGROPECUARIA BUSANELLO S.A.', '', '80046488-5', '0373-320168', 'NARANJAL', 'A', 1),
	(526, 'EDWIN DRIEDGER PENNER', '', '3790164-8', '0971-539040', 'CAMPO 5', 'A', 1),
	(527, 'AGROCENTER  IMPORT.EXPORT. SRL', '', '800618877-7', '61577173', 'CIUDAD DEL ESTE', 'A', 1),
	(528, 'DISTRIBUIDORA AMANBAY S.R.L.', '', '80059347-2', '9910702762', 'SAN PEDRO', 'A', 1),
	(529, 'AGRO SAN JOSE DE LUIS ORLANDO PANIAGUA', '', '2484604-0', '983692315', 'TEBICUARY', 'A', 1),
	(530, 'RUEDA NUEVA S.R.L.', '', '80023067-1', '500149', 'RUTA 2 KM 8', 'A', 1),
	(531, 'EDGAR DIONEL MARTINEZ', '', '4792400-4', '.', '.', 'A', 1),
	(532, 'AGRO SAN ANDRES DE JUAN A. FARIÑA', '', '4823018-9', '0984-619616', 'CAAZAPA', 'A', 1),
	(533, 'JOSEMIR TADEU SIMON', '', '1556191-7', '0983-663390', 'ALTO PARANA', 'A', 1),
	(534, 'AGRO ALIANZA DE KARINA NM THOMPSON', '', '4082423-3', '0985-295384', 'ITAPUA', 'A', 1),
	(535, 'SOLAR S.A.E.C.A.', '', '80002283-1', '0', 'AVDA. MANUEL A.GODOY', 'A', 1),
	(536, 'JACOBO BERGEN LOEWEN', '', '2412520-2', '451235098', 'SAN PEDRO', 'A', 1),
	(537, 'COOPERATIVA COLONIAS UNIDAS AGROP.LTDA', '', '80017198-5', '071720005-', 'ITAPUA', 'A', 1),
	(538, 'AGRO SAN JOSEDE CELESTE PANIAGUA G.', '', '5471836-8', '983692315', 'SAN JOSE DE LOS ARROYOS', 'A', 1),
	(539, 'COOPERALBA LTDA', '', '80022809-0', '047-230411', 'PUENTE KYHA', 'A', 1),
	(540, 'CORNELIO PENNER KLASSEN', '', '2601122-0', '0', 'SAN PEDRO', 'A', 1),
	(541, 'CENTRO AGROPECUARIO S.A.', '', '80031048-9', '061-572956', 'CDE', 'A', 1),
	(542, 'COMERCIAL KONZEN S.A.', '', '80025336-1', '0673-220472', 'SANTA RITA', 'A', 1),
	(543, 'DERLIS ANTONIO IBERBUDEN MORINIGO', '', '3937588-9', '0971-538793', 'SAN JOSE DE LOS ARROYOS', 'A', 1),
	(544, 'FRANZ WALLK FROESE', '', '2601086-0', '0', 'SAN PEDRO', 'A', 1),
	(545, 'PARPACK S.A.', '', '80058710-3', '623-814', 'ASUNCION', 'A', 1),
	(546, 'AGRICOLA SAN ANTONIO SA', '', '80067444-8', '0', 'PUERTO ADELA  CANINDEYU', 'A', 1),
	(547, 'CUEVAS HERMANOS S.A.', '', '80002465-6', '521-6198000', 'ASUNCION', 'A', 1),
	(548, 'WILL S.A.', '', '80090144-4', '661951', 'ASUNCION PY', 'A', 1),
	(549, 'INSUMAGRO SA', '', '80052350-4', '0678-20071', 'ALTO PARANA', 'A', 1),
	(550, 'LAVADERO OASIS DE ISAI ESPINOLA B.-', '', '4367707-0', '0972-265155', 'CAMPO 9', 'A', 1),
	(551, 'JORGE MOLINAS', '', '1181120-0', '0983-614764', 'ALTO PARANA', 'A', 1),
	(552, 'LAS VEGAS SA', '', '80077095-1', '0985-462030', 'SANTA ROSA', 'A', 1),
	(553, 'AGRO PANAMBI S.A.', '', '80038798-8', '0971-401525', 'RAUL A. OVIEDO', 'A', 1),
	(554, 'MODA EMPRESARIAL DE GRUPO R Y R S.A.', '', '80070705-2', '942567', 'SAN ANTONIO - CENTRAL', 'A', 1),
	(555, 'TRANS LUANA DE LUIS GILBERTO LAILLA E.', '', '981369-1', '0972-409240', 'CERRO LEON', 'A', 1),
	(556, 'DISTRIBUIDORA CURUGUATY', '', '4545204-0', '0', '.', 'A', 1),
	(557, 'G.P. S.A.', '', '80023604-1', '528000896', 'KM 233 RUTA 7', 'A', 1),
	(558, 'ALBO. AGRICOLA SA', '', '80063786-0', '0985 760086', 'ITAPUA', 'A', 1),
	(559, 'METALLBAU DE RUTH JACQUET ACUÑA', '', '5725139-8', '986168485', 'SAN ISIDRO DE LUQUE', 'A', 1),
	(560, 'JOEL MOLINA', '', '4545204-0', '0', '0', 'A', 1),
	(561, 'OVIEDO REPUESTO SA', '', '80087182-0', '0', 'CAAZU', 'A', 1),
	(562, 'COMPAÑIA FRIESEN SA', '', '80067491-0', '0528-222528', 'CAMPO 9', 'A', 1),
	(563, 'PRODU AGRO S.A.', '', '80037692-7', '631232464', 'MBARACAYU', 'A', 1),
	(564, 'ALBERTO CACERES', '', '0', '0', '0', 'A', 1),
	(565, 'ELVIO PENAYO', '', '0', '.', '0', 'A', 1),
	(566, 'RIOS REPUESTOS RG S.A.', '', '80014603-4', '611296', 'E. AYALA CASI BOGGIANI', 'A', 1),
	(567, 'RODY ESTECHE', '', '0', '0', '0', 'A', 1),
	(568, 'TRANSPORTADORA A Y D DE SEBASTIAN COLMAN', '', '4444379-0', '984313638', 'CZU', 'A', 1),
	(569, 'A & B. AGROSERVICIOS DE ARNALDO BORDON S', '', '2375105-3', '983686182', 'MINGA GUASU', 'A', 1),
	(570, 'ANTONIO MASAMI YAMADA KAWATA', '', '2813514-8', '0', 'PEDRO JUAN CABALLERO', 'A', 1),
	(571, 'MONTAJES PARANA DE FRANCISCO DILMA LOPEZ', '', '4545181-8', '71-480249', 'CZU', 'A', 1),
	(572, 'CARLOS ROMAN  HUTZ', '', '1883299-7', '0985-908700', 'ENCARNACION', 'A', 1),
	(573, 'AGROFERTIL SA', '', '80023149-0', '595-61-572871', 'ALTO PARANA', 'A', 1),
	(574, 'HERIMARC S.R.L.', '', '80004379-0', '981754581', 'EUSEBIO AYALA CASI MORQUIO', 'A', 1),
	(575, 'EL CASTILLO SA', '', '80015104-6', '0', 'DEFENSORES DEL CHACO Y PYKASU', 'A', 1),
	(576, 'TECNOHAUS CONSTRUCCIONES DE EVA BENITEZ', '', '4702967-6', '981228935', 'CAP INFRAN CASI LA FLORESTA', 'A', 1),
	(577, 'MARIO AVALOS', '', '0', '0', '0', 'A', 1),
	(578, 'NORTE EMPRENDIMIENTOS', '', '0', '0', '.', 'A', 1),
	(579, 'SERGIO GONZALEZ', '', '0', '0', '0', 'A', 1),
	(580, 'RODOLFO CHILENO', '', '5438373', '0', 'LUQUE', 'A', 1),
	(581, 'DEISY TRINIDAD', '', '0', '0', '0', 'A', 1),
	(582, 'TALLER ROCIO S.A.', '', '80091291-8', '0228-632-239', 'CAPIATA PY', 'A', 1),
	(583, 'CESAR NUÑEZ', '', '0', '0', '0', 'A', 1),
	(584, 'EDWIN HIEBERT', '', '0', '2', '0', 'A', 1),
	(585, 'AGROPECUARIA DEL PARANA S.A.', '', '80047923-8', '0', '.', 'A', 1),
	(586, 'ABOG. JUAN G. THORNE', '', '3202404-5', '061-584332', 'CDE', 'A', 1),
	(587, 'BERNARDA SILVA', '', '0', '0', '0', 'A', 1),
	(588, 'REINALDO BALMORY', '', '0', '0', '0', 'A', 1),
	(589, 'PASK S.A.', '', '80048771-0', '0983-650071', 'NARANJAL', 'A', 1),
	(590, 'COOPERATIVA  CURUPAYTY LTDA', '', '80001210-0', '0678-20021', 'ALTO PARANA', 'A', 1),
	(591, 'EL MIRADOR S.A.A.G.', '', '80031118-3', '240247', 'ITAPUA', 'A', 1),
	(592, 'AGROGANADERA PINDO S.A.', '', '80052959-6', '0528-222353', 'ZU', 'A', 1),
	(593, 'RADIO EMISORA PASTOREO DE OLGA BARRIOS', '', '712628-0', '524225490', 'PASTOREO', 'A', 1),
	(594, 'CHELO PARRILLA  DE MARCELINO BAEZ G.', '', '1410489-0', '0971-446575', 'CZU', 'A', 1),
	(595, 'ALFEU LUI', '', '2514990-3', '0', 'SANTA RITA', 'A', 1),
	(596, 'FUMIGADORA ARA DE ESMIRNA A. LOPEZ F.', '', '4305644-0', '0984-678683', 'CAMPO 9', 'A', 1),
	(597, 'METALURGICA FRANCIS DE FRANCISCO BRITEZ', '', '1243696-8', '576562', 'RUTA 1 KM 15 1/2', 'A', 1),
	(598, 'CHAPERIA SANDOVAL DE PABLO SANDOVAL', '', '962662-0', '981802906', 'LAURELTY LUQUE', 'A', 1),
	(599, 'RUEDA SERVIS DE ERDMAN ZACHARIAS B.', '', '3466030-5', '0971 424 283', 'CZU', 'A', 1),
	(600, 'RELMO PARAGUAY S.A.', '', '80045028-0', '61-578691/92', 'HERNANDARIAS', 'A', 1),
	(601, 'GOMERIA G Y G DE ANIBAL GIMENEZ', '', '1381105-3', '983644144', 'CAP INSFRAN - LUQUE', 'A', 1),
	(602, 'LUIZ FELIPONI', '', '2340572-4', '0983-653630', 'SANTA RITA', 'A', 1),
	(603, 'AGROPECUARIA CAMPO Y LAVOURA S.A.I.C', '', '80038915-8', '0678-20104', 'SANTO ROSA', 'A', 1),
	(604, 'JOSIAS ACCESORIOS DE DEYSI C. GENES', '', '6366940-4', '982637595', 'CCZU', 'A', 1),
	(605, 'RIBERTO ROMERO', '', '0', '0', '0', 'A', 1),
	(606, 'AGROGANADERA SANTA VERONICA', '', '80056890-7', '0', '.', 'A', 1),
	(607, 'RADIO ARANDU DE ADRIANA BESTARD', '', '617016-1', '0', 'ASUNCION', 'A', 1),
	(608, 'RICARDO CASTILLO BASILI', '', '315902-7', '0', '0', 'A', 1),
	(609, 'RUBEN DARIO CORONEL', '', '1869706-2', '0', 'VILLA RICA', 'A', 1),
	(610, 'G Y S CUBIERTAS S.A.', '', '80026371-5', '672500', 'MADAME LYNCH ESQ PAPPALARDO', 'A', 1),
	(611, 'ANGEL FERNANDEZ', '', '0', '0', '0', 'A', 1),
	(612, 'ELMO WALTER SCHNEIDER VERRUCK', '', '763550-8', '0985-770695', 'AVDA GRAL MARCIAL SAMANIEGO ITAPUA', 'A', 1),
	(613, 'OSCAR R.CAÑETE', '', '0', '0', '0', 'A', 1),
	(614, 'METALURGICA EL GATO S.A.', '', '80085983-9', '52242047', 'CAAGUAZU', 'A', 1),
	(615, 'MARIFIESTA COTILLON DE JUDSON DINIZ', '', '7681612-5', '0986-761233', 'CDE', 'A', 1),
	(616, 'ELECTRO CAMPO 9 DE GELSON SCHAFER', '', '3916180-3', '0971-468027', 'CAMPO 9', 'A', 1),
	(617, 'TALLER MECANICO SAN FRANCISCO SA', '', '80079240-8', '0983-492371', 'CZU', 'A', 1),
	(618, 'YOSHISADA YAMAGAMI', '', '979260-0', '0985-700588', 'ITAPUA', 'A', 1),
	(619, 'ABOG.UBALDO AQUINO', '', '0', '0', '0', 'A', 1),
	(620, 'ORLANDO FRANCO RUIZ DIAZ', '', '1945359-0', '0761-265418', 'ITAPUA-PY', 'A', 1),
	(621, 'SPORT SHOP CAMPO 9 DE EWALD BUHLER', '', '3719031-8', '0528-222729', 'CAMPO 9', 'A', 1),
	(622, 'COMERCIAL FISS DE CLEMIR SILVESTRE FISS', '', '2966138-2', '0971-427505', 'CAMPO 9', 'A', 1),
	(623, 'BANCOP S.A.', '', '80070946-2', '0', 'AVDA. MCAL. LÓPEZ CASI DR. MORRA', 'A', 1),
	(624, 'ARNALDO BORDON SANCHEZ', '', '2375105-3', '0983-686182', 'ALTO PARANA', 'A', 1),
	(625, 'TRANSPORTADORA PAEZ DE RUFINO G. PAEZ', '', '982157-0', '0', 'CAPIATA', 'A', 1),
	(626, 'SISINIO BLAS PAEZ BARRIOS', '', '951985-8', '0', 'CAPIATA', 'A', 1),
	(627, 'ELADIO BENITEZ', '', '488406-0', '0', '0', 'A', 1),
	(628, 'AGRO SANTA ROSA DE CHRISTIAN A.BRITEZ', '', '4082752-6', '984340378', 'ITAPUA', 'A', 1),
	(629, 'AGRO SIPILIUK DE JORGE M.SIPILIUK', '', '1474181-4', '0971-2002510', 'ENCARNACION', 'A', 1),
	(630, 'FASANO S.A', '', '80044326-8', '336274887', 'PEDRO JUAN CABALLERO', 'A', 1),
	(631, 'CULTIVATO SA', '', '80065687-3', '0983-679012', 'ALTO PARANA', 'A', 1),
	(632, 'SUPERMAS S.A', '', '80026959-4', '524896', 'MERCADO DE ABASTO', 'A', 1),
	(633, 'JAVIER ANTINIO ACHAR ALARCON', '', '1244303-4', '0983-883513', 'ALTO PARANA', 'A', 1),
	(634, 'AGUSTIN EUGENIO KONRAD MARTH', '', '1832545-9', '0', 'ITAPUA', 'A', 1),
	(635, 'EGON DRESSLER MEYER', '', '1072932-1', '0', 'PIRAPO- ITAPUA', 'A', 1),
	(636, 'SILDO DRESSLER MEYER', '', '1073003-6', '0', 'ITAPUA', 'A', 1),
	(637, 'MUNDIAL TRAIDING S.A.', '', '80082675-2', '021229840-021-2', 'ASUNCION', 'A', 1),
	(638, 'AGRO M.MOLINAS DE CINDY LINGIERI SRL', '', '80051563-3', '0985-110290', 'CAPITANMIRANDA - ITAPUA', 'A', 1),
	(639, 'SUPER AGRO S.R.L.', '', '80023567-3', '0985-764784', 'NATALIO- ITAPUA', 'A', 1),
	(640, 'FERNANDO ARIEL MONTIEL', '', '4295284-0', '0', '0', 'A', 1),
	(641, 'AGROPAK S.R.L.', '', '80014298-5', '0767-240384', 'OBLIGADO', 'A', 1),
	(642, 'AGROTEC S.A', '', '80020753-0', '240570', 'CDE', 'A', 1),
	(643, 'PETER HILDEBRAND D.', '', '2658962-1', '0971-422898', 'CAMPO 9', 'A', 1),
	(644, 'J.C. REBOBINADOS DE JULIO AVALOS', '', '4870553-5', '0', 'CAMPO 9', 'A', 1),
	(645, 'ZULMA CHAPARRO DE SANTOS', '', '2624080-7', '0971-428012', 'CNEL OVIEDO', 'A', 1),
	(646, 'CONSTRUCCIONES FT DE ERDMAN FRIESEN', '', '1231995-3', '0971-424659', 'CAMPO 9', 'A', 1),
	(647, 'POLIFABRIL S.A.', '', '80001967-9', '578670 - 578556', 'RUTA 1 KM.7.5 CAPIATA', 'A', 1),
	(648, 'FRANCO WALTER HOMBERGER GARLASCO', '', '50081221-7', '0975-625371', '0', 'A', 1),
	(649, 'TAPICERIA RIOS DE SIXTO RIOS AQUINO', '', '584587-4', '52242412', 'CAAZU', 'A', 1),
	(650, 'FUMIGADORA ARA DE BONIFACIA FERNANDEZ', '', '1639432-1', '0', 'CAMPO 9', 'A', 1),
	(651, 'CONSTRUCCIONES SAN ANTONIO DE BLAS GARAY', '', '4829017-3', '971490044', 'DJEE', 'A', 1),
	(652, 'ING. ENRIQUE VIDAL FRETES ROJAS', '', '3856780-6', '0981-972477', 'CORDILLERA PY', 'A', 1),
	(653, 'ALAS SA', '', '80031114-0', '6593000', 'MARINO DEL VALLE CASI CAÑADA DEL CARMEN', 'A', 1),
	(654, 'CESAR SOTO', '', '0', '0', '0', 'A', 1),
	(655, 'TRACTOMEC S.A.', '', '80077548-1', '0', 'CZU PY', 'A', 1),
	(656, 'RAMON CACERES', '', '0', '0', '0', 'A', 1),
	(657, 'LORIVAN MIGUELIN', '', '50035269-0', '83677333', 'COL.NUEVA AURORA', 'A', 1),
	(658, 'SHINSUKE TAKAGI', '', '713611-0', '768245204', 'ITAPUA', 'A', 1),
	(659, 'AGRO DIANA DE ALBA DIANA MARTINEZ R.', '', '4180039-7', '0986-783512', 'ALTO PARANA', 'A', 1),
	(660, 'LIBRADO RUIZ DIAZ', '', '0', '0', '0', 'A', 1),
	(661, 'ROBERTO ROMERO', '', '0', '0', '0', 'A', 1),
	(662, 'SH INFORMATICA DE SIMON HEINRICHS', '', '4684571-2', '528222888', '0', 'A', 1),
	(663, 'HECTOR CACEREZ', '', '0', '0', '0', 'A', 1),
	(664, 'ALEMANIA BENGUI SOCIEDAD ANONIMA', '', '80081612-9', '.', '.', 'A', 1),
	(665, 'TRANS ACEL DE NILDA COROLINA ALMADA VERO', '', '3220724-7', '0981-341757', 'JEE', 'A', 1),
	(666, 'CLIMA ABANA DE ROBERTO MARIN FUENTES', '', '7964110-5', '976405152', 'DJEE', 'A', 1),
	(667, 'COBRAVEL DE VALDEMAR ANTONIO PARIS', '', '6193048-2', '061-574182', 'CDE', 'A', 1),
	(668, 'EQUIFAX PARAGUAY S.A.', '', '80045898-2', '021-4399000', 'MANUEL DOMINGUEZ Nº 344', 'A', 1),
	(669, 'ALMISUR S.A.', '', '80049197-1', '0528-250267', 'RUTA 7 KM 234,5', 'A', 1),
	(670, 'AGRO D.A DE DIOSNEL AVALOS C.', '', '3908273-3', '0', 'ALTO PARANA', 'A', 1),
	(671, 'EDERSON DA SILVSA', '', '5963805-2', '0', 'CAMPO 9', 'A', 1),
	(672, 'ESTABLECIMIENTO ROSARITO S.R.L.', '', '0', '0', '0', 'A', 1),
	(673, 'NESTOR A.MORENO- AUT.SRV.STO DOMINGO', '', '0', '0', '0', 'A', 1),
	(674, 'PARINVEST S.A', '', '80004035-0', '0983-632052', 'ALTO PARANA', 'A', 1),
	(675, 'AGRICOLA CAMPO NUEVE DE OSCAR J ORZUZA A', '', '4209745-2', '0973-508851', 'CAMPO 9', 'A', 1),
	(676, 'TEOCLECIO ALUIZO AGEWARTH', '', '4631271-4', '0', 'SALTO DEL GUAORA CANINDEJU', 'A', 1),
	(677, 'NANCY AVEIRO VILLAMAYOR', '', '3524642-1', '0', 'CZU', 'A', 1),
	(678, 'HUGO ORLANDO SOSA NUÑEZ', '', '3714765-0', '.', 'PIRAPEY K.M. 43 RUTA 6.', 'A', 1),
	(679, 'AGRO ALIANZA DE MIGUEL J. M SCHULZ', '', '3462518-6', '985295384', 'HOHENAU -ITAPUA', 'A', 1),
	(680, 'EDGAR SPERATTI', '', '4568232', '0', 'CAAGUAZU', 'A', 1),
	(681, 'ALCIDES OLMEDO', '', '0', '0', '0', 'A', 1),
	(682, 'AGROPECO S.A.', '', '80002708-6', '676.320.042', 'RUTA 6. KM.174 RAUL PEÑA', 'A', 1),
	(683, 'JOSE GABRIEL SANCHEZ ORTIZ', '', '1380152-0', '0981-892492', 'CZU', 'A', 1),
	(684, 'ONORIO JOSE GUNTZEL', '', '2233332-0', '983.681.098', 'SANTA ROSA', 'A', 1),
	(685, 'MEDICAL  ART R-4 S.A.', '', '80054552-4', '0', 'ASUNCION', 'A', 1),
	(686, 'FREDY CAÑETE', '', '0', '0', '0', 'A', 1),
	(687, 'AGRICOLA COLONIAL S.A.I.C.', '', '80028643-0', '0673-220359', 'SANTA RITA -ALTO PARANA', 'A', 1),
	(688, 'TRANS PARIZOTTO DE ROGERIO PARIZOTTO', '', '7187554-9', '971416289', 'NUEVA TOLEDO', 'A', 1),
	(689, 'AGRO DENIS DE DENIS G. RAMIREZ GIMENEZ', '', '4076009-0', '0985-101274', 'ITAPUA', 'A', 1),
	(690, 'AGRO SILO EL PRODUCTOR S.A.', '', '80017386-4', '046420024/28', 'CANINDEJU', 'A', 1),
	(691, 'TRUKÂO S.A', '', '80067174-0', '673220949', 'SANTA RITA', 'A', 1),
	(692, 'MERICE MARIA BECKER DE OLIVEIRA', '', '1516457-8', '0983-624223', 'ALTO PARANA', 'A', 1),
	(693, 'ABEL RODRIGUEZ ROSA', '', '2533819-6', '337230384', 'AMAMBAY', 'A', 1),
	(694, 'GLADYS ROSANNA LOPEZ', '', '3881078-6', '0', 'FDO DE LA MORA', 'A', 1),
	(695, 'DEFELICE & CIA S.A.', '', '80096200-1', '0981-253974', 'CDE', 'A', 1),
	(696, 'ALFREDO DAMIAN RUIZ RAMIREZ', '', '5134213', '972285539', 'CAPIATA', 'A', 1),
	(697, 'RUFINO PALMA CASUIN', '', '1459758-6', '984404584', 'CZU', 'A', 1),
	(698, 'BRISAS DEL SUR', '', '0', '0', '0', 'A', 1),
	(699, 'B.C MARKETING S.R.L.', '', '80033347-0', '557758', 'ASUNCION', 'A', 1),
	(700, 'DOROTEO ESPINOLA', '', '1028299-8', '985-77083', 'MRI AUXILIADORA', 'A', 1),
	(701, 'PERUGIA S.A.', '', '80039166-7', '0', '0', 'A', 1),
	(702, 'ALE GRANOS DE ARNALDO A. BORDON', '', '5891660-1', '0972-728422', ' KM 19 ACARAY', 'A', 1),
	(703, 'NETWORKS DE EDGAR M. FERNANDEZ C.', '', '2272517-2', '0973 880433', 'CDE', 'A', 1),
	(704, 'JM SERVICIOS DE NOLBERTO ALFONZO BENITEZ', '', '3016540-7', '983.655.019', 'MINGA GUAZU K.M 27.5', 'A', 1),
	(705, 'PRESTAMO BANCOOP SA', '', '80070946-2', '0', '.', 'A', 1),
	(706, 'OSCAR ANTONIO VEGA IRALA', '', '4194163-2', '0', 'MARIA AUXILIADORA', 'A', 1),
	(707, 'JOSE VALDIR STAZIAKI', '', '7374268-6', '984.770.097', 'BUEVA ESPERANZA', 'A', 1),
	(708, 'RICARDO SEBASTIAN GUILLEN GIMENEZ', '', '5256868', '975602085', 'LUQUE', 'A', 1),
	(709, 'AGRO SANTA CATARINA S.A.', '', '80052214-1', '0464 20314-2037', 'CANINDEJU', 'A', 1),
	(710, 'TAPICERIA CORVIN DE PORFIRIO LOPEZ', '', '1614763-4', '0981-313289', 'CZU', 'A', 1),
	(711, 'WELTON JOSE DESOUZA', '', '8249417-7', '.', 'NUEVA ESPERANZA', 'A', 1),
	(712, 'CENTRO DEL AGRO S.A.', '', '80048493-2', '0986 139383', 'CDE', 'A', 1),
	(713, 'SILO GRUPO RICARDI DE DARCI BLAS RICARDI', '', '3958360-0', '471237259', 'CANINDEYU', 'A', 1),
	(714, 'UNEXPA SA', '', '80073113-1', '061-578681', 'ALTO PARANA', 'A', 1),
	(715, 'AGRO TOLEDO S.R.L.', '', '80094550-6', '0', '0', 'A', 1),
	(716, 'SILOS APOLO 11 DE DANTE O SERVIAN', '', '1364211-1', '0985 773784', 'ITAPUA', 'A', 1),
	(717, 'AGRO SILO DEZEN S.A.', '', '80083511-5', '983645769', 'MINGA GUAZU', 'A', 1),
	(718, 'AGRO MERCANTIL LAZZAROTTO SA', '', '80017563-8', '673225110', 'ALTO PARANA', 'A', 1),
	(719, 'ESTABLECIMIENTO JOSE TORRES', '', '1606232-9', '633220105', 'LOS CEDRALES', 'A', 1),
	(720, 'JOHAN KLASSEN GIESBRECHT', '', '2605962-2', '971458883', 'SAN PEDRO', 'A', 1),
	(721, 'INVERSIONES AGRICOLAS S.A.', '', '80048509-2', '0983-132473', 'MBARACAYU', 'A', 1),
	(722, '"J.P" COMPANY S.A.', '', '80053432-8', '0', 'MCAL ESTIGARRIBIA', 'A', 1),
	(723, 'VILSON BEILNER', '', '4111130-3', '983511295', 'SANTA RITA', 'A', 1),
	(724, 'ESTABLECIMIENTO AGRICOLA S.A.', '', '80099461-2', '0985-848646', 'ITAPUA', 'A', 1),
	(725, 'ING.AVELINO DIAZ VILLASBOA', '', '632394-4', '021-515202', 'FDO DE LA MORA', 'A', 1),
	(726, 'LEONARDO FABIO GROSELLE DAVALOS', '', '3608383-6', '0985-834711', 'ITAPUA', 'A', 1),
	(727, 'COOP.CHORTITZER LTDA', '', '80004464-9', '492252301', 'LOMA PLATA', 'A', 1),
	(728, 'COOP.COL.MULTIACTIVA FERNHEIM LTDA.', '', '80016754-6', '0', 'LOMA PLATA', 'A', 1),
	(729, 'INDEGA S.A.', '', '80003239-0', '0', '0', 'A', 1),
	(730, 'CAPICI S.A', '', '80063429-2', '0981-235696', 'NUEVA ESPERANZA', 'A', 1),
	(731, 'MADERAS ALTONA S.R.L.', '', '80015473-8', '528-222234', 'CAMPO 8', 'A', 1),
	(732, 'RODAO PLAST SA', '', '80022216-4', '793223/4', 'CAMINO A SALADO 1490 C/ESPAÑA - LIMPIO', 'A', 1),
	(733, 'FASHER DE FREDERICK DAVID VAZQUEZ', '', '1392475-3', '0522-42814', 'CAAGUAZU', 'A', 1),
	(734, 'ANTONIO DOERNER', '', '1392873-2', '0631-21723', 'COLONIA PIKYRY', 'A', 1),
	(735, 'SANTA LIBRADA S.A.', '', '80020944-3', '071-204426', 'NATALIO KM.31 ITAPUA', 'A', 1),
	(736, 'BASCULAS G3 DE CLEUBER TOCHETO', '', '50082642-0', '0983-807611', 'ALTO PARANA', 'A', 1),
	(737, 'HERME FIDEL CESPEDES A.', '', '4232045-3', '0', 'CAMPO 9', 'A', 1),
	(738, 'HIERRO CAT S.A', '', '80048855-5', '0972-747632', 'CAMPO 9', 'A', 1),
	(739, 'B.A.G S.A.', '', '80096858-1', '0528 222659', 'CAMPO 9', 'A', 1),
	(740, 'SIMION CARLOS DELGADO MENDES', '', '6049362-3', '9850880027', 'PEDRO JUAM C.', 'A', 1),
	(741, 'CEREALISTA STA FE DE MANOEL DE BRITO', '', '2248346-2', '0983 518 834', 'PADRE GUIDO CORONEL', 'A', 1),
	(742, 'CHURRASQUERIA O GAUCHO DE ELISEU MUHL', '', '3708689-8', '608596', 'PACHECO ESQ MACARTHUR', 'A', 1),
	(743, 'JORGE GABRIEL FERNANDEZ', '', '4138934-4', '4', 'CAMPO 9', 'A', 1),
	(744, 'TALLER MARTINEZ DE MANUEL MARTINEZ IBARR', '', '940172-5', '982889216', '24 DE JULIO C/JULIA MIRANDA', 'A', 1),
	(745, 'MELLA S.A.', '', '80049455-5', '061-575475', 'CDE', 'A', 1),
	(746, 'ENVACO SA', '', '80007952-3', '753038', '3 DE FEBRERO - MARIANO R. ALONZO', 'A', 1),
	(747, 'TRANSPORTE EDU DE EDUARDO D.SAMUDIO', '', '5230951-7', '0', 'CAMPO 9', 'A', 1),
	(748, 'BARBASTRO S.A.', '', '80080502-0', '21.964.753', 'MAR. LOPEZ C. ACCESO SUR', 'A', 1),
	(749, 'GUSTAVO FRANCISCO PATIÑO', '', '4848713-9', '975919564', 'CAMPO 9', 'A', 1),
	(750, 'SERVELEC S.R.L.', '', '80021983-0', '021-207411', 'ASUNCION', 'A', 1),
	(751, 'MARTIRES BORBA', '', '6290669', '983705372', 'LUQUE LAURELTY', 'A', 1),
	(752, 'DANIEL OMAR JARA ROJAS', '', '573377-4', '0972-174440', 'ASUNCION', 'A', 1),
	(753, 'RONALDO CESAR MONTANIA SERRANO', '', '4727433-6', '972.875.715', 'CAMPO 9', 'A', 1),
	(754, 'TEODORO LEIVA CACERES', '', '1304299-8', '982661423', 'CZU', 'A', 1),
	(755, 'FLORENCIO FAUSTINO MENDOZA MONTANIA', '', '1009106-8', '0983-883664', 'CAAGUAZU', 'A', 1),
	(756, 'HERMANOS GALHERA AGRO VALLE DEL SOL SA', '', '80056865-6', '0', 'RUTA INT.KM.24 MINGA GUAZU', 'A', 1),
	(757, 'PAULINO JIMENEZ ARMOA', '', '1341734-7', '213383482', '28 DE SETIEMBRE E/PILAR CAPIATA', 'A', 1),
	(758, 'ARNALDO JAVIER GUERRERO A.', '', '3221924-5', '0984-950479', 'CAAZU', 'A', 1),
	(759, 'SUNSET S.A.C.I.S', '', '80028071-7', '061-600127', 'AVDA. SAN BLAS', 'A', 1),
	(760, 'NIDIA EMILCE BENITEZ B.', '', '3873516-4', '75-915972', 'CZU', 'A', 1),
	(761, 'KEPLER WEBER INDUSTRIAL S.A.', '', '0', '0', 'BRASIL', 'A', 1),
	(762, 'JORGE DE LA CRUZ COLMAN SALINAS', '', '3175596-8', '972787411', 'JJEE', 'A', 1),
	(763, 'ZULMA ESTELA MATTO DUARTE', '', '2308837-0', '986657895', 'CAMPO 9', 'A', 1),
	(764, 'NO LIMITS S.A.', '', '80057128-2', '0528 222866', 'JEE', 'A', 1),
	(765, 'BONIMAR SA', '', '80062616-8', '0', '0', 'A', 1),
	(766, 'AGRO NEGOCIOS S.A.', '', '80029509-9', '0', '0', 'A', 1),
	(767, 'PARAGUAY AGRICULTURAL CORPORATION SA', '', '80086568-5', '0', '0', 'A', 1),
	(768, 'TRADE AMERICA S.R.L.', '', '80000261-0', '021 208040', 'ASUNCION', 'A', 1),
	(769, 'TALLER DE  ELECTRICIDAD', '', '5474569-1', '0983-935444', 'VILLARICA', 'A', 1),
	(770, 'AUTOMECANICA JF DE JORGE D. VELAZQUEZ C.', '', '4214175-3', '0', 'LUQUE', 'A', 1),
	(771, 'AGRO IMPER S.A.', '', '80025661-1', '0', 'ALTO PARANA', 'A', 1),
	(772, 'SABRINE THAIS MORBACH', '', '5021189-7', '981168268', 'SAN LORENZO', 'A', 1),
	(773, 'METRO MUEBLES DE BENIGNO MARTINEZ A.', '', '1898330-8', '0975 337 489', 'JJEE', 'A', 1),
	(774, 'NUCLEO S.A.', '', '80017437-2', '0', 'ASUNCION', 'A', 1),
	(775, 'ISIDORO BRITEZ GARCETE', '', '682574-5', '0972-758323', 'CALLE 3', 'A', 1),
	(776, 'DANIELA ESTECHE DE ENRRIQUEZ', '', '336126-8', '021-642257', 'LUQUE', 'A', 1),
	(777, 'ANTONIO NUÑEZ', '', '0', '0', '0', 'A', 1),
	(778, 'RICARDO MARTINEZ', '', '2995581-5', '0981-218564', 'JEEE', 'A', 1),
	(779, 'JOCELI MARITT', '', '6531150-7', '0', 'RAUL A OVIEDO', 'A', 1),
	(780, 'KARINA N. THOMPSON F.', '', '4082423-3', '0985-702492', 'ITAPUA', 'A', 1),
	(781, 'NARCISO BENITEZ', '', '2340148-6', '0', 'D JJE', 'A', 1),
	(782, 'IVAN YEGROS BOGADO', '', '555411-0', '0981-118148', 'ASUNCION', 'A', 1),
	(783, 'ADMINISTRACION NAC.NAVEGACION Y PUERTOS', '', '80003468-6', '0', 'ASUNCION', 'A', 1),
	(784, 'ALARMAS PROSEGUR PARAGUAY S.A.', '', '80089398-0', '21289900', 'ASUNCION', 'A', 1),
	(785, 'MIRTA LILIANA MENDEZ CUBILLA', '', '3823179-4', '0983 944 998', 'ALTO PARANA', 'A', 1),
	(786, 'CLAUDIO DOS SANTOS MATTOS', '', '50026779-0', '983651001', 'ALTO PARANA', 'A', 1),
	(787, 'EVERTON VILNEI ERNZEN B-', '', '3855276-0', '983-656933', 'ITAPUA', 'A', 1),
	(788, 'SANDRO ALEX LAGO', '', '4827036-9', '83-657417', 'RAUL PEÑA', 'A', 1),
	(789, 'TRANSPORTES RODOVIARIOS S.R.L.', '', '80005416-4', '21449669', 'CDE', 'A', 1),
	(790, 'DAVID PENNER REIMER', '', '2233525-0', '0971-427230', 'COL, BERGTHAL', 'A', 1),
	(791, 'PAULINA FABER', '', '5790478-2', '0', 'ALTO PARANA', 'A', 1),
	(792, 'SILVIO ORTIZ MORINIGO', '', '4205881-3', '0', 'ALTO PARANA', 'A', 1),
	(793, 'SILVIO CABALLERO', '', '0', '0', '0', 'A', 1),
	(794, 'OSCAR ADRIANO FARBER', '', '0', '0', '0', 'A', 1),
	(795, 'CRISTIAN FISCHER', '', '0', '0', '0', 'A', 1),
	(796, 'AGRICOOLA FENIX S.A.', '', '80017083-0', '0983-405 827', 'SANTA ROSA DEL MONDAY', 'A', 1),
	(797, 'PHT S.A.', '', '80089432-4', '0971-425931', 'COL SOMMERFELD', 'A', 1),
	(798, 'PARMETAL S.A.', '', '80048747-8', '0673-220925', 'SANTA RITA', 'A', 1),
	(799, 'PANDOLFO S.A.', '', '80052961-8', '983.679.504', 'JUAN, M. FRUTOS', 'A', 1),
	(800, 'MAQUINARIA SERVICE SRL', '', '80002984-4', '0981-207237', 'FERNANDO DE LA MORA', 'A', 1),
	(801, 'AGRO SANTA ROSA S.A.', '', '80013743-4', '0', 'HERNANDARIA', 'A', 1),
	(802, 'GARDEN S.A.', '', '80012035-3', '0', 'CDE', 'A', 1),
	(803, 'HOTEL DE CORNELIO ALFF', '', '2120634-1', '0528-222336', 'JUAN E ESTIGARIBIA', 'A', 1),
	(804, 'LDC PARAGUAY S.A.', '', '80027752-0', '021 2884000', 'AVIADORES DEL CHACO', 'A', 1),
	(805, 'PRIMERA PROD PYA DE PLASTICOS SA', '', '80004001-5', '500337', 'FERNANDO DE LA MORA', 'A', 1),
	(806, 'JULIO VELAZQUEZ', '', '0', '986570424', 'ASUNCION', 'A', 1),
	(807, 'ULTRA SRL', '', '80036081-8', '973508104', 'CDE', 'A', 1),
	(808, 'D/CONSULT S.A.', '', '80064066-7', '0528 222548', 'ASUNCION', 'A', 1),
	(809, 'MARCOS GONZALEZ', '', '0', '0', 'LUQUE', 'A', 1),
	(810, 'NICANOR ACOSTA MENDOZA', '', '419339-3', '0975 420397', 'CZU', 'A', 1),
	(811, 'MARISOL MARECO VERA', '', '5508931-3', '985692219', 'CAAGUAZU', 'A', 1),
	(812, 'TRANSPORTE HEINRICHS HNOS S.A.', '', '80034088-4', '0528 222345', 'JEE', 'A', 1),
	(813, 'MAQUINARIA SERVICE S.R.L.', '', '80002984-4', '0981-207237', 'FDO DE LA MORA', 'A', 1),
	(814, 'ASEGURADORA DEL SUR S.A.', '', '80031893-5', '021-6598000', 'ASUNCION PY', 'A', 1),
	(815, 'VICTOR CASIANO AYALA FERNANDEZ', '', '3229240-6', '0984 791391', 'ITACURUBI', 'A', 1),
	(816, 'MARIO GUSTAVO GAVILA GUTIERREZ', '', '4222322-9', '0976-415987', 'CAAGUAZU', 'A', 1),
	(817, 'VISUAL MARKET DE MARIA G. SCAVONE D.', '', '3634955-0', '81-778362', 'J E. ESTIGARRIBIA', 'A', 1),
	(818, 'PANAMAQ S.R.L.', '', '80020983-4', '061-570848', 'CDE', 'A', 1),
	(819, 'PROGRESSO NH S.A.', '', '80097520-0', '0984-309371', 'SAN PEDRO', 'A', 1),
	(820, 'METALURGICA SILVA DE PABLO A. SILVA G.', '', '4877405-7', '0994 972104', 'LUQUE', 'A', 1),
	(821, 'MARTIN DANIEL RICHTER HARDER', '', '1605692-2', '0', 'MCAL. ESTIGARIBIA', 'A', 1),
	(822, 'BENICIO BERNAL DIAZ', '', '2672651-3', '981.982.029', 'CAAGUAZU', 'A', 1),
	(823, 'EDSON LUIZ NODARI', '', '2485523-5', '0983-614335', 'ALTO PARANA', 'A', 1),
	(824, 'BENJAMIN HEINRICHS BERGEN', '', '1497643-9', '71-416360', 'JEEE', 'A', 1),
	(825, 'AGRO SUBTIL DE OSIEL SUBTIL PONCE', '', '4063432-9', '83-706002', 'ALTO PARANA', 'A', 1),
	(826, 'JORGE RAMON VERA', '', '5074507-7', '0976-167577', 'SAN JOSE DE LOS AROYOS', 'A', 1),
	(827, 'FABIAN AREVALOS ACOSTA', '', '1501786-9', '0', 'ALTO PARANA', 'A', 1),
	(828, 'VALDEMIR DE BRUM', '', '1904949-8', '0981-397040', 'CANINDEJU', 'A', 1),
	(829, 'BENICIO RAMON JARA GAVILAN', '', '5135700-3', '981.714.178', 'J. E, ESTIGARIBIA', 'A', 1),
	(830, 'AGRO ALIANZA CORPUS CRISTI S.A.', '', '80079054-5', '0983 603193', 'CANINDEYU', 'A', 1),
	(831, 'ROBERTO CARLOS AVALOS BAREIRO', '', '3686079-4', '0971-444464', 'CAAGUAZU', 'A', 1),
	(832, 'IMPERIO MELIPO S.R.L.', '', '80103016-1', '021 212335', 'ASUNCION', 'A', 1),
	(833, 'MARTIN HARDER BRAUN', '', '5060714-6', '775232400', 'SAN ISIDRO CANINDEJU', 'A', 1),
	(834, 'EDGAR OSVALDO CANO BENITEZ', '', '3170733-5', '0971 173648', 'SANTA RITA', 'A', 1),
	(835, 'TUPI S.A.', '', '80008996-0', '0673 220255', 'ALTO PARANA', 'A', 1),
	(836, 'FREDESUINDA ROMAN DE ACOSTA', '', '4590043-4', '0982-170671', 'CDE', 'A', 1),
	(837, 'J.M. ACOPIOS DE RICARDO JAVIER BENITEZ L', '', '3926285-5', '0986 624 698', 'ITAPUA', 'A', 1),
	(838, 'CATALINO FERREIRA', '', '1593805-0', '0522-40791', 'CAAGUAZU', 'A', 1),
	(839, 'RICHARD DANIEL ALVARENGA AGUILAR', '', '5005620-4', '0', 'CAMPO 9', 'A', 1),
	(840, 'VITALINO RAMIREZ LUGO', '', '1194236-3', '021 583571', 'SAN LORENZO', 'A', 1),
	(841, 'ADS INDUSTRIAL Y COMERCIAL S.A.', '', '80026866-0', '0', 'ASUN', 'A', 1),
	(842, 'GERARDO', '', '0', '0', '0', 'A', 1),
	(843, 'COARCO SACI', '', '80002912-7', '0', '0', 'A', 1),
	(844, 'ACOPIO DON BOSCO DE DAGIL F. VILLORDO', '', '3551809-0', '0985 789094', 'ITAPUA', 'A', 1),
	(845, ' EDILIO ALVARENGA QUINTANA', '', '2419378-0', '71-753663', '2419378-0', 'A', 1),
	(846, 'OSMAIR IGNACIO SOSSMEIER LOHMANN', '', '4403802-0', '0983-677093', 'CANINDEYU', 'A', 1),
	(847, 'ASISA', '', '80086087-0', '021 3272972', 'ITAPUA', 'A', 1),
	(848, 'RICHTER S.R.L.', '', '80056631-9', '0528 222328', 'JEEE', 'A', 1),
	(849, 'EQUIMOB DE CARLOS SALINAS', '', '3233537-7', '021 296418', 'ASUNCION', 'A', 1),
	(850, 'SUL AMERICANA S.A.C.I.E.', '', '80051341-0', '0', 'ALTO PARANA', 'A', 1),
	(851, 'SONIMAR ALBERTO RISSARDI', '', '1791631-3', '0985 764784', 'ITAPUA', 'A', 1),
	(852, 'AGROPECUARIA S.A.', '', '80030540-0', '0', 'CANINDEJU', 'A', 1),
	(853, 'AMADO GARCETE MONTEFFIT', '', '4108462-4', '0983-174135', 'JJEE', 'A', 1),
	(854, 'PLASTICOS PARAGUAYOS S.A.', '', '80002676-4', '0531 432358', 'ASUNCION', 'A', 1),
	(855, 'HEINRIEKE FRIESEN LOEWEN', '', '5365785-3', '0', 'SAN PEDRO', 'A', 1),
	(856, 'ALDO JAVIER CALASTRA MARTINEZ', '', '4863800-5', '0975-262450', 'CAAGUAZU', 'A', 1),
	(857, 'NICOLAS GONZALEZ ODDONE S.A.E.C.A.', '', '80014137-7', '212880000', 'ASUNCION', 'A', 1),
	(858, 'ROBERTO SANABRIA PAREDES', '', '3975764-1', '222876', 'DJEE', 'A', 1),
	(859, 'RG S.A.', '', '80087144-8', '0986 893805', 'MARIA AUXILIADORA', 'A', 1),
	(860, 'JULIA ELENA CACERES DE GONZALEZ', '', '1511694-8', '0528 222767', 'JEEE', 'A', 1),
	(861, 'GRANJA YBY PORA S.R.L', '', '80016331-1', '0', 'ITAPUA', 'A', 1),
	(862, 'JAVIER FERNANDO BENITEZ NUÑEZ', '', '1215109-2', '0981 264034', 'ASUNCION', 'A', 1),
	(863, 'LA OLLA S.A.', '', '80084435-1', '0', 'ASUNCION', 'A', 1),
	(864, 'PAULO AQUINO', '', '0', '0', '0', 'A', 1),
	(865, 'IGNACIO RAMON RUIZ DIAZ', '', '703859-3', '222394', 'JJE', 'A', 1),
	(866, 'PEDRO BOGADO', '', '0', '0', '0', 'A', 1),
	(867, 'JUAN RAMON ARRIOLA DUARTE', '', '5982160-4', '0', 'CAMPO 9', 'A', 1),
	(868, 'ELENO MONGES', '', '3275515-5', '71 448186', 'SAN JOSE DE LOS ARROYOS', 'A', 1),
	(869, 'ESMIRNA ARACELLI LOPEZ FERNANDEZ', '', '4305644-0', '0984-678683', 'CAMPO 9', 'A', 1),
	(870, 'PEDRO DEL CARMEN PERALTA BOGADO', '', '1268205-5', '0975 919223', 'JEE', 'A', 1),
	(871, 'DIAGRO S.A.', '', '80013817-1', '.', '.', 'A', 1),
	(872, 'FUMISA SA', '', '80018674-5', '201 756', 'ASUNCION', 'A', 1),
	(873, 'COOP. MULT.SANTA TERESA LTDA', '', '80021808-6', '0', 'MCAL.FRANCISCO SOLANO LOPEZ', 'A', 1),
	(874, 'IMAG S.R.L.', '', '80011037-4', '971206094', 'CDE', 'A', 1),
	(875, 'ERDMAN FRIESEN TOEWS', '', '1231995-3', '0', 'BERGTHAL', 'A', 1),
	(876, 'GUSTAVO LOPEZ', '', '0', '0', '0', 'A', 1),
	(877, 'GOL NEUMATICOS SA', '', '80031509-0', '0', 'ASUNCION', 'A', 1),
	(878, 'KIMEX S.R.L.', '', '80005472-5', '072 420014', 'ALTO PARANA', 'A', 1),
	(879, 'DIEGO WALDO AQUINO JUAREZ', '', '3425189-8', '0', 'CZU', 'A', 1),
	(880, 'DISTRIFLUVIAL PARAGUAY SA', '', '80062372-0', '558901', 'ASUNCION PY', 'A', 1),
	(881, 'ELBERTO GRUTZMAN', '', '1626619-6', '412701', 'DJEE', 'A', 1),
	(882, 'CAMPO VERDE AGRONEGOCIOS SRL', '', '80057651-9', '0985 279281', 'ITAPUA', 'A', 1),
	(883, 'FREDDY JOSE CABRERA BENITEZ', '', '3263497-8', '0985-952351', 'CAMPO 9', 'A', 1),
	(884, 'DENILSON JUNIOR ARCARI DEISS', '', '6137065-7', '71494740', 'NUEVA TOLRDO', 'A', 1),
	(885, 'HUGO GERMAN HUTZ', '', '1056702-0', '71204919', 'ITAPUA', 'A', 1),
	(886, 'MAURICIO FERRERA', '', '0', '0', '0', 'A', 1),
	(887, 'IMPORTADORA IMPERIAL S.A.', '', '80079807-4', '061 503096', 'CDE', 'A', 1),
	(888, 'IMPRESOS S.A.', '', '80002840-6', '423 255', 'CAP MIRANDA - ASUNCION', 'A', 1),
	(889, 'TRANSPORTES RODOVIARIOS S.R.L.', '', '80005416-4', '0', 'CDE', 'A', 1),
	(890, 'INDUCAUCHO S.A.C.I', '', '80007796-2', '021 550705', 'ASUNCION', 'A', 1),
	(891, 'LUIS MONTALBETTI', '', '0', '0', 'ASUNCION', 'A', 1),
	(892, 'CODIF DE CODIFICACION 24/7 S.R.L.', '', '80102618-0', '81639 504', 'ASUNCION', 'A', 1),
	(893, 'SURAGRO S.A.', '', '80094904-8', '21 333055/6', 'ASUNCION PY', 'A', 1),
	(894, 'RODOPAR S.A.', '', '80070152-6', '0983-* 5986254', 'SAN PEDRO', 'A', 1),
	(895, 'ASOCIACION CIVIL VIDA SANA', '', '80032624-5', '528222980', 'DJEE', 'A', 1),
	(896, 'IMAGEN GRAFICA S.R.L.', '', '80012776-5', '471731', 'ASUNCION', 'A', 1),
	(897, 'TRUCKS SRL', '', '80087598-2', '0', 'CZU', 'A', 1),
	(898, 'PACAPAX LOGISTICA SA', '', '80077686-0', '0', '0', 'A', 1),
	(899, 'SEGEL LOGISTICA S.A.', '', '80026570-0', '233321', 'ASUNCION', 'A', 1),
	(900, 'EDGAR OSVALDO BORDON ROJAS', '', '4862672-4', '0971-487580', 'CAMPO 9', 'A', 1),
	(901, 'JULIO CESAR PENAYO NUÑEZ', '', '3750876-8', '82511080', 'DJJE', 'A', 1),
	(902, 'EVE NUMIDIA R. BRITEZ DE REYES', '', '713313-8', '0981-561344', 'FDO DE LA MORA', 'A', 1),
	(903, 'PARANA CAMPANY SA', '', '80105790-6', '.', 'LUQUE PAY', 'A', 1),
	(904, 'EQUIPAMIENTOS ST S.R.L.', '', '80090643-8', '204 262', 'ASUNCION', 'A', 1),
	(905, 'SORIANA DE JUAN EDGAR GONZALEZ', '', '1625317-5', '0', 'CDE', 'A', 1),
	(906, 'ROSA J. BERTRAND DE GONZALEZ', '', '2018913-3', '0972 452 167', 'D JEE', 'A', 1),
	(907, 'MUNICIPALIDAD JUAN M. FRUTOS', '', '80026766-4', '0', '0', 'A', 1),
	(908, 'MIGUEL ANGEL CENTURION ESCURRA', '', '3671690-1', '0971 446866', 'LAMBARE', 'A', 1),
	(909, 'NOLBERTO ALFONZO BENITEZ', '', '3016540-7', '0', 'ALTO PARANA', 'A', 1),
	(910, 'MIGUEL GIMENEZ', '', '4147068-0', '0985 598854', 'CANYNDEJU', 'A', 1),
	(911, 'LA RURAL S.A. DE SEGUROS', '', '80022376-4', '617 4100', 'AVDA RCA ARGENTINA', 'A', 1),
	(912, 'KEHLER S.A.', '', '80082512-8', '0528 222279', 'CAMPO 8', 'A', 1),
	(913, 'FABRICA PARAGUAYA DE SIERRAS SA', '', '80003192-0', '021 600558', 'ASUNCION', 'A', 1),
	(914, 'MOLINOS FLOR DEL ESTE -WILHELM SCHROEDER', '', '881837-1', '0', 'DJEE', 'A', 1),
	(915, 'INDUSERVIS IMPORT EXPORT S.R.L.', '', '80056362-0', '021-931839', 'ASUNCION', 'A', 1),
	(916, 'COMPU-CITY DE JOSEPH HEINRICHS', '', '4424775-3', '72610652', 'DJEE', 'A', 1),
	(917, 'ELVIO RAMON VILLALBA MARTYÇINEZ', '', '3422611-7', '971477391', 'CZU', 'A', 1),
	(918, 'YHAGUY REPUESTOS S.A', '', '80024884-8', '0', 'MCA ESTIGARRIBIA', 'A', 1),
	(919, 'CRIS CAR.. DE CRISTINO VERA BENITEZ', '', '1358878-8', '0981 479902', 'SAN LORENZO', 'A', 1),
	(920, 'EQUIPAR S.R.L.', '', '80046180-0', '573631', 'CDE', 'A', 1),
	(921, 'NINFA MARGARITA PEREZ GONZALEZ', '', '4236224-5', '0', 'CONCEPCION', 'A', 1),
	(922, 'GPSA -SEMILLERIA-ACOPIO DE GRANOS', '', '80023604-1', '86 316750', 'SAN PPEDRO', 'A', 1),
	(923, 'ALEXANDRO RICARDO BARAZETTI', '', '6706672-0', '0', 'CANINDEYU', 'A', 1),
	(924, 'PARANA COMPANY S.A.', '', '80105790-6', '0', 'LUQUE', 'A', 1),
	(925, 'HECTOR ANTONIO CASTRO FERNANDEZ', '', '357420-2', '0985 714 110', 'MARIA AUXILIADORA', 'A', 1),
	(926, 'FED BALANCEADO DE EDUARD DORING', '', '5358708-1', '0982 419494', 'BOQUERON', 'A', 1),
	(927, 'B.A. CONSULTING - PERCY ROMERO A.', '', '5105352-7', '021-440562', 'ASUNCION', 'A', 1),
	(928, 'OSVALDO CESPEDES JIMENEZ', '', '2430373-9', '75-101868', 'CZU', 'A', 1),
	(929, 'TALLER ROJAS DE IGNACIO R. ROJAS A.', '', '3659094-0', '336276841', 'PEDRO JUAN CABALLERO', 'A', 1),
	(930, 'CEREALISTA JM SRL', '', '80098174-0', '0983-600319', 'SANTA RITA', 'A', 1),
	(931, 'ANA FABIOLA BENITEZ SILVERO', '', '2529224-2', '0971 428871', 'CNEL OVIEDO', 'A', 1),
	(932, 'HUGO CARLOS TARABAL FRETES', '', '3519486-3', '213673798', 'LUQUE', 'A', 1),
	(933, 'JOAO EUZEBIO PRIMMAZ', '', '5445112-4', '.', 'CARLOS ANTONIO LOPEZ', 'A', 1),
	(934, 'EVOXYS SOFWARE', '', '80087224-0', '986-444444', 'AV. BOGGIANI', 'A', 1),
	(935, 'DANIEL MARTINEZ TORALEZ', '', '1430509-7', '098 431872', 'MARIANO R.ALONZO', 'A', 1),
	(936, 'COOPERATIVA CENCONORI  LTDA', '', '80086913-3', '985722045', 'ITAPUA - PARAGUAY', 'A', 1),
	(937, 'AGRO ALIANZA DE JOAO E. PRIMMAZ', '', '5445112-4', '0983 550087', 'ITAPUA', 'A', 1),
	(938, 'AGRO COMERCIAL DON BOSCO S.A.', '', '80093329-0', '0985 421025', 'ITAPUA', 'A', 1),
	(939, 'OVEVE-NET DE ANIBAL JOSE M. GONZALEZ', '', '5453302-3', '0976 422403', 'DEEJ', 'A', 1),
	(940, 'PRODUZA S.A.', '', '80074033-5', '.', 'RUTA VI-KM 142 NARANJITO', 'A', 1),
	(941, 'G5 S.A.(IMPORTADOR-EXPORTADOR MAYORISTA)', '', '80064874-9', '971 430186', 'CZU', 'A', 1),
	(942, 'OVER DE NACIR MISCEVSKI', '', '5377898-7', '061 518235', 'CDE', 'A', 1),
	(943, 'JORGE DAVID ALMADA ADORNO', '', '5678500-3', '0975-262418', 'CAMPO 9', 'A', 1),
	(944, 'PRODUCTOS EDWARD SAI', '', '80009190-6', '0', 'ASUNCION', 'A', 1),
	(945, 'CARLOS MIGUEL ESPINOLA JIMENEZ', '', '1697466-2', '021 640984', 'LUQUE', 'A', 1),
	(946, 'METALOR S.A. COMERCIAL E INDUSTRIAL', '', '80015318-9', '021 5703212', 'SAN LORENZO', 'A', 1),
	(947, 'AGROCERES S.A.', '', '80069017-6', '0983 514520', 'SANTA RITA', 'A', 1),
	(948, 'RODRIGO EMERSON BEZERRA', '', '5676659-9', '0976 415702', 'CAMPO 9', 'A', 1),
	(949, 'AGRO WE.ZA S.R.L.', '', '80062639-7', '0', 'ITAPUA', 'A', 1),
	(950, 'TALLER DE VELASTIQUERIA DE PABLO MONTIEL', '', '2099185-1', '981977278', 'SAN LORENZO', 'A', 1),
	(951, 'MARCOS DANIEL SAUCHUK DEJNEGA', '', '3334742-5', '985.235.916', 'ITAPUA', 'A', 1),
	(952, 'ESTABLECIMIENTO AGRI.YGAN.STA LIBRADA SA', '', '80020944-3', '0984 438044', 'ITAPUA', 'A', 1),
	(953, 'ANTONIO MALDONADO ALEN', '', '1504128-0', '0336 270209', 'PEDRO JUAN CABALLERO', 'A', 1),
	(954, 'JACOB PETERS SCHROEDER', '', '2282618-1', '0971-425014', 'COL, SOMMERFELD', 'A', 1),
	(955, 'MIRNA ZENAIDA VALDEZ', '', '3665819-7', '9840190782', 'FDO DE LA MORA', 'A', 1),
	(956, 'BUSINESS GROUP S.A.', '', '80107332-4', '0985 731210', 'CZU', 'A', 1),
	(957, 'METALURGICA IND GERHARD HUBER SRL', '', '80019656-2', '548 265441', 'INDEPENDENCIA', 'A', 1),
	(958, 'ENVASES ITAPUA S.A.', '', '80013593-8', '0985 109138', 'ITAPUA', 'A', 1),
	(959, 'AARON CORONEL GALEANO', '', '5753007-6', '0992-556206', 'VILLARICA', 'A', 1),
	(960, 'ALUMINIOS JL LUIS F.MANCUELLO AMARILLA', '', '3741314-7', '0983 138658', 'CAPIATA', 'A', 1),
	(961, 'DERLIS ADORNO', '', '0', '0', '0', 'A', 1),
	(962, 'EDITORIAL DE NEGOCIOS S.A.', '', '80064796-3', '0983 946660', 'ASUNCION', 'A', 1),
	(963, 'ODILIO SALVADOR ROJAS GARAY', '', '4793853-6', '0975-924301', 'CAMPO 9', 'A', 1),
	(964, 'BREMM SRL', '', '80079568-7', '71414388', 'CZU', 'A', 1),
	(965, 'SUPERMAS SA', '', '80026959-4', '0', 'STA TERESA', 'A', 1),
	(966, 'ABOG. ADAN A ESPINOLA LOPEZ', '', '2061076-9', '0971 413003', 'CNEL OVIEDO', 'A', 1),
	(967, 'EDDY PETERS GIESBRECHT', '', '2233465-3', '0983-552810', 'COL, BERGTHAL', 'A', 1),
	(968, 'MENELIO ARTURO GONZALEZ', '', '1888646-9', '0982-293880', 'LUQUE', 'A', 1),
	(969, 'FRANCISCO JAVIER SOLIZ MARIN', '', '1470515-0', '0983-883273', 'CAMPO 9', 'A', 1),
	(970, 'HECTOR LOVERA', '', '0', '0', 'LUQUE', 'A', 1),
	(971, 'AUTO MARKET S.A.', '', '80020755-6', '021-523781', 'AV.E. AYALA', 'A', 1),
	(972, 'TOP MENDOZA SERVICIOS DE BRUNOR. MENDOZA', '', '1454385-0', '0', '21553853', 'A', 1),
	(973, 'AUTO REPUESTOS SAN RAMON S.R.L', '', '80100208-7', '528 222556', 'JOSE A. FLORES', 'A', 1),
	(974, ' JORGE LUIS ROMERO VERON', '', '4399303-6', '982369592', 'ASUNCION', 'A', 1),
	(975, 'FERREMAT SRL', '', '80087175-8', '0', 'JEEE', 'A', 1),
	(976, 'ROLANDO GARAY ROMERO', '', '4376334-0', '981557744', 'JOSE AS, FLORES', 'A', 1),
	(977, 'COMERCIAL ITAL-SUIZA SPA', '', '76909172-6', '0', '.', 'A', 1),
	(978, 'INDI', '', '0', '0', '.', 'A', 1),
	(979, 'ARANCEL CONS FACTURA', '', '0', '0', '.', 'A', 1),
	(980, 'SERVICIO VALORACION', '', '0', '0', '0', 'A', 1),
	(981, 'CANON INFORMATICO', '', '0', '0', '0', 'A', 1),
	(982, 'RS COMERCIAL DE RAQUEL ELISABETH SOSA', '', '1239134-4', '981235331', 'LAMBARE', 'A', 1),
	(983, 'GLORIA INES BENITEZ MENDOZA', '', '424448-6', '021 201163', 'ASUNCION', 'A', 1),
	(984, 'INGRID NATALY FISS KLEIN', '', '6001718-0', '0971-482815', 'JUAN M FRUTOS', 'A', 1),
	(985, 'ISABELINO  GONZALEZ BENITEZ', '', '2608420-1', '981750118', 'LAMBARE', 'A', 1),
	(986, 'MIGUEL ANGEL  CHERA CAIVANO', '', '1615263-8', '0981 946 209', 'ÑEMMBY', 'A', 1),
	(987, 'ALFRED RICHTER HILDEBRAND', '', '2659010-7', '0528 222472', 'RUTA 2 JEEE', 'A', 1),
	(988, 'FRANZ FRIESEN BERGEN', '', '3195081-7', '0971 419 962', 'J EULOGIO ESTIGARRIBIA', 'A', 1),
	(989, 'AGROINDUSTRIAL TRES FRONTERAS SA', '', '80035911-9', '0983 618452', 'ALTO PARANA', 'A', 1),
	(990, 'PETROCHACO DE LA CUMBRE ESTACIONES SA', '', '80098031-0', '0986 131676', 'SAN LORENZO', 'A', 1),
	(991, 'CRISTINO SIMEON JARA GAVILAN', '', '3000830-1', '0986-516873', 'CAMPO 9', 'A', 1),
	(992, 'DIEGO RAMON DUARTE FARIÑA', '', '5825469-2', '0983 135598', 'CDE', 'A', 1),
	(993, 'AIRTON JOSE WINKELMANN', '', '3192504-9', '83 620 204', 'ALTO PARANA', 'A', 1),
	(994, 'GRUA SAN LORENZO DE ANGEL RAUL OLMEDO FL', '', '603912-0', '0522 42639', 'JMFRUTOS', 'A', 1),
	(995, 'JEOVANE SELVINO KUNZ ZANETTI', '', '4891904-7', '983665172', 'IRUÑA', 'A', 1),
	(996, 'ELMAR JOSE ALLES', '', '1672768-1', '983607071', 'ALTO PARANA', 'A', 1),
	(997, 'ROSE ACRE FAEMS SRL', '', '80045690-4', '046 242 595', 'LA PALOMA', 'A', 1),
	(998, 'INDALCO S.R.L.', '', '80026638-2', '0', 'ASUNCIOS', 'A', 1),
	(999, 'PABLINO MONTIEL MALDONADO', '', '2099185-1', '0981-977278', 'SAN LORENZO PY', 'A', 1),
	(1000, 'CULTIVOS DAIANA DE DANIEL PAREDES VEGA', '', '3546547-6', '0', 'MAYOR OTAÑO', 'A', 1),
	(1001, 'CENTRO VITAL', '', '80095493-9', '0528 222341', 'D JJE', 'A', 1),
	(1002, 'TOYOTOSHI SA', '', '80003128-8', '0', 'ASUNCION', 'A', 1),
	(1003, 'AGRO TRES FLONTERAS S.A.', '', '80103891-0', '983889833', 'ALTO PARANA', 'A', 1),
	(1004, 'EDGAR MARIA AMADIT FLECHA', '', '2344102-0', '425 616', 'CAMPO 9', 'A', 1),
	(1005, 'MONITOR SOFT GPRS S.A.', '', '80076917-1', '021 3384500', 'FDO DE LA MORA', 'A', 1),
	(1006, 'MINGA SERVIS DE SANDRA ARZAMENDIA A.', '', '6060026-8', '0', 'ALTO PARANA', 'A', 1),
	(1007, 'GEDESA IMPORT-EXPORT-', '', '80006783-5', '021 671483', 'LUQUE', 'A', 1),
	(1008, 'MOLINOS NUEVA TOLEDO S.A.C.I', '', '80075351-8', '0983-935510', 'NUEVA TOLEDO', 'A', 1),
	(1009, 'DEIDY OSMAR MONTIEL', '', '0', '0', 'CZU', 'A', 1),
	(1010, 'MADEXPORT PARAGUAY S.A.', '', '80069963-7', '0', '0', 'A', 1),
	(1011, 'DAMIAN SANCHEZ PEREIRA', '', '1041235-2', '0', 'CDE', 'A', 1),
	(1012, 'ALVOG S.A.', '', '80020177-9', '021 494 536', 'ASUNCION', 'A', 1),
	(1013, 'LOURDES R. MAIÑO GALVAN', '', '794881-6', '021 442 211', 'ASUNCION PY', 'A', 1),
	(1014, 'OSVALDO JAVIER FARIÑA PANIAGUA', '', '5474569-1', '0983-935444', 'VILLARICA', 'A', 1),
	(1015, 'ROCIO DAVALOS', '', '0', '0', '1', 'A', 1),
	(1016, 'INDUSTRIA ALIMENTICIA APETIT S.A.', '', '80029082-8', '0', 'CAMPO 9', 'A', 1),
	(1017, 'ALIMENTOS ESPECIALES S.A', '', '80003296-9', '0', 'ASUNCION', 'A', 1),
	(1018, 'BANCO BASA S.A', '', '0', '0', '0', 'A', 1),
	(1019, 'INTERES BANCOP', '', '0', '0', '0', 'A', 1),
	(1020, 'DARIO RUBEN MARTINEZ MELGAREJO', '', '2370235-4', ' 0981 639357', 'SAN LORENZO', 'A', 1),
	(1021, 'SURCOS DE AMERICA S.A.', '', '80040683-4', '0', '0', 'A', 1),
	(1022, 'FELICIANO MARIN BENITEZ', '', '1649767-8', '0973-591175', 'CAMPO 9', 'A', 1),
	(1023, 'JUANA EDITH HERMOSILLA  R.', '', '2858298-5', '0', 'LUQUE', 'A', 1),
	(1024, 'MARIA SOL AMBRASATH BISSO', '', '3285327-0', '021 334257', 'LAMBARE', 'A', 1),
	(1025, 'VICTOR VIDAL CABALLERO GOMEZ', '', '5178082-8', '0973-690541', 'CAMPO 9', 'A', 1),
	(1026, 'TECDIESEL DE PETHERSON DHIEGO ALEXANDRE', '', '5898778-9', '6373221634', 'ALTO PARANA', 'A', 1),
	(1027, 'NEWAVE S.R.L.', '', '80075488-3', '0981 490618', 'SAN LORENZO', 'A', 1),
	(1028, 'GERHARD BANMAN', '', '1788858-1', '971416038', 'SAN PEDRO', 'A', 1),
	(1029, 'PARAGUAY FARMING S.A.', '', '80071629-9', '0983 622 872', 'ALTO PARANA', 'A', 1),
	(1030, 'FIRE MASTERS S.R.L.', '', '80022912-6', '021 311847', 'AVDA GRAL SANTOS', 'A', 1),
	(1031, 'AGUARAY S.A.', '', '80058874-6', '0', 'SAN PEDRO', 'A', 1),
	(1032, 'PETERSEN INDUSTRIA Y HOGAR S.A.', '', '80032641-5', '021 206 131/6', 'ASUNCION', 'A', 1),
	(1033, 'INDUSTRIA IMAR S.R.L', '', '80063087-4', '981130713', 'EUSEBIO AYALA', 'A', 1),
	(1034, 'RENE MELGAREJO DE VARGAS', '', '4230706-6', '0', 'NUEVA ESPERANZA CANINDEYU', 'A', 1),
	(1035, 'AGRO MANDUVIRA S.A.', '', '80079509-1', '0451 235 540', 'SAN PEDRO', 'A', 1),
	(1036, 'DISTRIBUIDORA PANSEV SRL', '', '80100524-8', '0', 'AMAMBAY', 'A', 1),
	(1037, 'SILO PRESTO DE ABREU DE NELSON PRESTES', '', '4499742-6', '0', 'JOSE D.OCAMPOS', 'A', 1),
	(1038, 'REAL INVEST S.A.', '', '80053458-1', '021 282828', 'ASUNCION', 'A', 1),
	(1039, 'PEDRO BANMAN FRIESEN', '', '3039126-1', '0971-439350', 'COLONIA RIO VERDE SANTA ROSA AGUARY', 'A', 1),
	(1040, 'LILIANA SELMA VENIALGO VENIALGO', '', '6547464-3', '0984-974865', 'CAAGUAZU', 'A', 1),
	(1041, 'ASOCIACION VIDA Y ESPERANZA MG', '', '80111467-5', '0971 451750', 'SOMMERFELD', 'A', 1),
	(1042, 'ASOCIACION  CAMPO MISIONERO EMG', '', '80109591-3', '971412985', 'SOMMERFWELD', 'A', 1),
	(1043, 'FARMER GREEN S.A.', '', '80099906-1', '0', 'NUEVA TOLEDO DEP.CAAGUAZU', 'A', 1),
	(1044, 'TALITA DE OLIVEIRA MACHUCA', '', '7408300-7', '0', 'NUEVA ESPERANZA CANINDEYU', 'A', 1),
	(1045, 'SAMA S.A.', '', '80078819-2', '0', 'BARRIO SINUELO R.6 KM196 SANTA RITA', 'A', 1),
	(1046, 'AGRO JOSIAS DE MARIA CONCEPCION PEREIRA', '', '4341492-3', '0', 'JULIO D.OTAÑO - ITAPUA', 'A', 1),
	(1047, 'PRODUCTOS AGROPEC.DE SALEZIO PRESTES', '', '5701770-0', '0', 'JOSE D.OCAMPOS', 'A', 1),
	(1048, 'KENDRIC WALTER SCHLABACH', '', '5115277-0', '0', 'CALLE COLONIA LUZ Y ESPERANZA', 'A', 1),
	(1049, 'ANTONIO ADEMAR MELGAREJO DE VARGAS', '', '4230708-2', '0', 'NUEVA ESPERANZA - CANINDEYU', 'A', 1),
	(1050, 'ALIANZA S.R.L.', '', '80008210-9', '775232269', 'HOHENAU ITAPUA', 'A', 1),
	(1051, 'JCM IMPORT EXPORT S.A.', '', '80024860-0', '607 373', 'CRUZ DEL DEFENSOR  ASUNCION', 'A', 1),
	(1052, 'DISTRIBUIDORA B&D DE DIDILFO A. DAVALOS', '', '2353700-0', '0983 219009', 'ALTO PARANA', 'A', 1),
	(1053, 'LUIS GALLARDO AGUIRRES', '', '5970696-1', '0', 'D.JJE', 'A', 1),
	(1054, 'EUROMOBILI S.R.L.', '', '80038403-2', '021 524613', 'FERNANDO DE LA MORA', 'A', 1),
	(1055, 'TELLEZ & ASOCIADOS DE CINTHIA C. TELLEZ', '', '1356143-0', '021 327 2539', 'ASUNCION', 'A', 1),
	(1056, 'ARNALDO RENE MEZA OZUNA', '', '3632239-3', '0976 176699', 'CAMPO 9', 'A', 1),
	(1057, 'RAMON VERLI MARTINEZ CABRERA', '', '3418249-7', '0984450 038', 'B*MARA AUXILIADORA CAMPO 9', 'A', 1),
	(1058, 'TAPICERIA COHELO DE NELSON R. IBARRA', '', '3262903-6', '0', 'M.ROQUE ALONZO', 'A', 1),
	(1059, 'MARIA DANIELA MLAKA DE HOCKH', '', '0', '0', '0', 'A', 1),
	(1060, 'SILO OTTENIO DE EDUARDO OTTENIO SCALKOSK', '', '4635814-5', '0', 'CAM. A SANTA TERESA MCAL.F.SOLANO LOPEZ', 'A', 1),
	(1061, 'CLAUDIO BENITEZ SANTA CRUZ', '', '1709500-0', '021 506830', 'SAN LORENZO', 'A', 1),
	(1062, 'JUAN LEONARDO SOSA HILDEBRAND', '', '6016561-8', '0973 529978', 'CAMPO 9', 'A', 1),
	(1063, 'CARPINTERIA SAN JOSE DE MARIA I BENITEZ', '', '3568776-2', '0971 450 690', 'CAMPO 9', 'A', 1),
	(1064, 'AGROGANADERA SENA S.A.', '', '80096252-4', '491432879', 'COLON.FERNHEIM FILADELFIA DPTO.BOQUERON', 'A', 1),
	(1065, 'MIGUEL A.CHAPARRO LLAMOSA', '', '1326662-4', '0971 156684', 'JOSE A.FLORES', 'A', 1),
	(1066, 'RURAL MACRO IPORT - EXPORT S.A', '', '80073536-6', '0', 'CAMPO 9', 'A', 1),
	(1067, 'FARMACIA EL PUEBLO DE LIZ ROSA FIGUEREDO', '', '1043615-4', '0986 320810', 'ASUNCION', 'A', 1),
	(1068, 'GRAFICA Y EDITORIAL INTERSUDAMERICANA SA', '', '80010177-4', '021 959 3000', 'ASUNCION', 'A', 1),
	(1069, 'ORO BLANCO CEREALISTA S.A.', '', '80047145-8', '0337 230212', 'CAPITAN BADO', 'A', 1),
	(1070, 'COPALSA', '', '80002217-3', '21607087', 'EUSEBIO AYALA', 'A', 1),
	(1071, 'PEREZ RAMIREZ Y CIA S.A.C.I', '', '80002745-0', '0521 441732', 'ASUNCION', 'A', 1),
	(1072, 'INDUSTRIA & COMERCIO S.A.', '', '80099186-9', '021 3389170', 'LAMBARE', 'A', 1),
	(1073, 'AGROWHEAT S.R.L', '', '80113727-6', '0984 412 517', 'D.J.E.E.', 'A', 1),
	(1074, 'JOSE MANUEL BAEZ MELGAREJO', '', '3761831-8', '0971-446575', 'CAMPO 9', 'A', 1),
	(1075, 'CARLOS MANUEL SAMUDIO FLEITAS', '', ' 2374806-0', '0983 394 288', 'SAN LORENZO', 'A', 1),
	(1076, 'GRUPO TAVARES SRL', '', '80105200-9', '0976 488579', 'SAN PEDRO', 'A', 1),
	(1077, 'GLADYS SOTO', '', '0', '0', '0', 'A', 1),
	(1078, 'NEUMATEC S.A.', '', '80015437-1', '54142721', 'VILLARICA DEP.GUAIRA', 'A', 1),
	(1079, 'ELECTROMAQ S.R.L.', '', '80091347-7', '61574223', 'KM4 CIUDAD DEL ESTE', 'A', 1),
	(1080, 'COOPERATIVA MULTIACTIVA NEULAND LTDA', '', '80017582-4', '0', 'RUTA TRANSCHACO KM.28.5', 'A', 1),
	(1081, 'PETROBRAS NEUFELD & CIA S.A.', '', '80024093-6', '0', 'TRANSCHACO', 'A', 1),
	(1082, 'TALLER PENNER DE BILLIE PENNER THIESSEN', '', '1757209-6', '0528 222 590', 'CAMPO 2', 'A', 1),
	(1083, 'SARA E. SAMUDIO DE ACOSTA', '', '327274-5', '991518127', 'ASUNCION ´PY', 'A', 1),
	(1084, 'ERLINDA AÑDERETE BENITEZ', '', '1394984-5', '0541 41596', 'VILLARICA', 'A', 1),
	(1085, 'LAVADERO EL CHANCHITO', '', '3492750-6', '0984-724978', 'CAAGUAZU', 'A', 1),
	(1086, 'EMP, PUB. JOSE ANTONIO CONTRERRA', '', '633037-1', '0975-502460', 'CAMPO 9', 'A', 1),
	(1087, 'GABRIELA ACOSTA BENITEZ', '', '5999121-6', '0994 145997', 'CAAGUAZU', 'A', 1),
	(1088, 'CESAR AUGUSTO  GONZALEZ ARTETA', '', '4185544-2', '0', 'CAAGUAZU', 'A', 1),
	(1089, 'TALLER MEC.OVIEDO DE VICTOR R.OVIEDO BRI', '', '4222234-6', '0', 'COMPAÑIA POTRERO GUAYAKI', 'A', 1),
	(1090, 'MATIAS SEBASTIAN MATTA RUIZ DIAZ', '', '4668838-2', '982186112', 'SAN LORENZO', 'A', 1),
	(1091, 'CLAUDIO ARIEL TORALES', '', '4912784-5', '981375927', 'ASUNCION', 'A', 1),
	(1092, 'CIMA INDUSTRIAL S.A.C.', '', '80002088-0', '217289000', 'RUTA 1  KM16.35 CAPIATA', 'A', 1),
	(1093, 'NASSER CUBIERTAS S.A.C.I', '', '80017858-0', '0', 'CDE0', 'A', 1),
	(1094, '4 MOJON SRL', '', '80004664-1', '021 504066', 'FDO DE LA MORA', 'A', 1),
	(1095, 'VR AUTO REPUESTOS', '', '732061-2', '0971-842022', 'PEDRO JUAN', 'A', 1),
	(1096, 'JUANA AVALOS DE GAMARRA', '', '1785240-4', '0', 'LUQUE', 'A', 1),
	(1097, 'COOP.DE PRODUC.AGROPEC. PINDO LTDA', '', '80007716-4', '0', 'SAN CRISTOBAL', 'A', 1),
	(1098, 'IGNACIO ACOSTA', '', '3400833-0', '982532325', 'ÑEEMBY', 'A', 1),
	(1099, 'LAVADERO TAJY PORA DE SOFIA R.VILLAMAYOR', '', '3662180-3', '0', 'CAAGUAZU', 'A', 1),
	(1100, 'SAN LORENZO EQUIPAMIENT.DE JORGE BENITEZ', '', '5258959-5', '0', 'DR.JUAN E.ESTIGARRIBIA', 'A', 1),
	(1101, 'METALURGICA GARCIA DE SILVIA M.RECALDE', '', '1144516-5', '0971 168428', 'LUQUE', 'A', 1),
	(1102, 'POSTA S.A.I.C.I.F.A.', '', '80002401-0', '0', 'AVDA.EUSEBIO AYALA SUC.POZO COLORADO', 'A', 1),
	(1103, 'PUNTO 63 IDA ADELA S.A.', '', '80060843-7', '0', 'MCAL.JOSE ESTIGARRIBIA', 'A', 1),
	(1104, 'CAEL S.A. ESTACION SERV. PUMA ENERGY', '', '80084006-2', '521202745', 'CORONEL OVIEDO', 'A', 1),
	(1105, 'ABRAHAN REYES BENITEZ', '', '4397644-1', '2', 'CAMPO 9', 'A', 1),
	(1106, 'PETROCHACO TAPIRACUAI SA.', '', '80023095-7', '213385974', 'REMANSITO RUTA TRANSCHACO', 'A', 1),
	(1107, 'VOL - SCAN S.R.L.', '', '80084319-3', '0', 'ITAGUA', 'A', 1),
	(1108, 'CRISTIAN PAATS Y CIA S.C.', '', '80003859-2', '0521-202345', 'CORONEL OVIEDO', 'A', 1),
	(1109, 'LOREIRO Y ASOCIADOS S.A.', '', '80084712-1', '021 943025', 'VILLA ELISA', 'A', 1),
	(1110, 'EXTINTORES 2RR DE VICTOR M.L.RIOS GIMENE', '', '1058543-5', '0', 'AVDA.FDO.DE LA MORA', 'A', 1),
	(1111, 'ABOG.EDUARDO GERMAN ACOSTA SAMUDIO', '', '1536365-1', '021 372008', 'ASUNCION', 'A', 1),
	(1112, 'KAREN STELLA BERNAL BENITEZ', '', '2436974-8', '1', 'VILLA ELISA', 'A', 1),
	(1113, 'EDGAR ARNALDO LOPEZ MOSQUEIRA', '', '2205444-8', '0+81 659524', 'ASUNCION', 'A', 1),
	(1114, 'CARLOS ALBERTO JARA CABALLERO', '', '3706543-2', '0', 'SAN LORENZO', 'A', 1),
	(1115, 'RAMON BENITEZ FIGUEREDO', '', '3609696-2', '0981 258118', 'CZU', 'A', 1),
	(1116, 'GOMERIA EL CAMIONERO DE OSMAR AGUST.KARA', '', '7652531-7', '0', 'CALL5', 'A', 1),
	(1117, 'LUIS CESAR DELVALLE MARTINEZ', '', '4888429-4', '0975-938596', 'CAMPO 9', 'A', 1),
	(1118, 'RICHARD DOERKSEN', '', '0', '0', '0', 'A', 1),
	(1119, 'LIA S.A.C.I', '', '80018306-1', '0', 'CZU', 'A', 1),
	(1120, 'COMERCIAL 9 S-A', '', '80062369-0', '0', 'SAN PEDRO', 'A', 1),
	(1121, 'TODO SCANIA DE RUBEN DARIO CANDIA', '', '3885658-1', '0', 'LAS RESIDENTES DR.J.EULOGIO ESTIGARIBIA', 'A', 1),
	(1122, 'IDEAL BALANZAS DE JHONY H. DOS SANTOS', '', '8466472-0', '0985 692 358', 'SANTA RITA', 'A', 1),
	(1123, 'JOSE SALVADOR GIRETT', '', '4516583-1', '0', 'YPANE', 'A', 1),
	(1124, 'FABIO JOEL ALLES STEFFENS', '', '3340457-7', '0983 647 285', 'ALTO PARANA', 'A', 1),
	(1125, 'INDUCOM S.A.', '', '80099186-9', '021 3389170', 'LAMBARE', 'A', 1),
	(1126, 'MARIA BARCILISA SEGAVIA GONZALEZ', '', '7099176-6', '0', 'ALTO PRANA', 'A', 1),
	(1127, 'R & A DIESEL DE HUGO DAVID ROMAN', '', '3003438-8', '0', 'KM15 MONDAY MINGUA GUASU', 'A', 1),
	(1128, 'ARTURO ORTIZ', '', '0', '0', '0', 'A', 1),
	(1129, 'METALURGIA CARBALLO DE EDGAR A CARBALLO', '', '2812555-0', '0', 'CAMPO 9', 'A', 1),
	(1130, 'VICENTE MARTINEZ DUARTE', '', '1249870-0', '0981 900415', 'SAN LORENZO', 'A', 1),
	(1131, 'LA TEXTILERA UNIFORMES EMPRESARIALES', '', '4843405-1', '021 640 364', 'DIVINA MISERICORDIA C/ SEPTIMA', 'A', 1),
	(1132, 'TONY FABIAN GOSSEN WIEBE', '', '4182872-0', '0', 'LUQUE', 'A', 1),
	(1133, 'DAVID GABRIEL CABALLERO GOMEZ', '', '6945636-4', '0984-247418', 'CAMPO  9', 'A', 1),
	(1134, 'INNOVACIONES ALIMENTARIAS S.R.L.', '', '80028415-1', '0', 'ASUNCION', 'A', 1),
	(1135, 'GLORIA BEATRIZ MORERIRA DE LUGO', '', '2441402-6', '0972 466701', 'LUQUE', 'A', 1),
	(1136, 'ERNEU LANGE', '', '2193825-3', '0', 'MCAL.FRANCISCO SOLANO LOP. SANTA ANA', 'A', 1),
	(1137, 'JORGE DANIEL CABRERA', '', '3428194-0', '0', 'SAN PEDRO', 'A', 1),
	(1138, 'ACONCAGUA', '', '2830585-0', '0', 'ASUNCION', 'A', 1),
	(1139, 'LAVADERO JUAN JUNIOR DE JUAN OSV.GIORI R', '', '2908750-3', '0', 'BARRIO TORO BLANCO CAAGUAZU', 'A', 1),
	(1140, 'ESTACION BAHIA S.A.', '', '80016742-2', '764702', 'CAMINO A CHACO', 'A', 1),
	(1141, 'TOTAL BAÑOS DE LUZ LOPEZ FLEITAS', '', '5414330-6', '0', 'CIUDAD DEL ESTE', 'A', 1),
	(1142, 'JUAN DAMAZO MENDOZA MONTANIA', '', '760743-1', '0985-851880', 'CAMINO A  CHACO', 'A', 1),
	(1143, 'SULMETAL S.A.', '', '80044231-8', '0228 632 450', 'CAPIATA', 'A', 1),
	(1144, 'ELIAS SALOMON GUANES CUEVAS', '', '5030354-6', '0983-315943', 'CAMPO 9', 'A', 1),
	(1145, 'WALTER DANIEL ALMIRON CENTURION', '', '4610813-0', '0971-492346', 'CORONEL  OVIEDO', 'A', 1),
	(1146, 'MOBILESTE FE ROBERTO CENTURION', '', '661312-8', '0', '0', 'A', 1),
	(1147, 'SURESTE S.A', '', '80111413-6', '061 518 700', 'CDE', 'A', 1),
	(1148, 'DIONICIO CUENCAS  ROJAS', '', '3303915-1', '0975-164332', 'CAAGUAZU', 'A', 1),
	(1149, 'MARIAV COMINICACION Y PUBLICIDAD', '', '2014800-3', '0986 911347', 'ASUNCION', 'A', 1),
	(1150, 'ZULMA BEATRIZ GOMEZ', '', '3872755-2', '0985-765275', 'CAAGUAZU', 'A', 1),
	(1151, 'RIEPRACO DE RICARDO E. RAMIREZ C.', '', '384754-3', '228 643130', 'LUQUE', 'A', 1),
	(1152, 'CLIMACO SEGOVIA', '', '2091324-9', '0975 341536', 'CAAGUAZU', 'A', 1),
	(1153, 'EVELIN VIVIANA BENITEZ', '', '5982157-4', '0984-354139', 'CAAGUAZU', 'A', 1),
	(1154, 'SERGIO JAVIER SALA NUÑEZ', '', '4528518-7', '0971-469870', 'CAAGUAZU', 'A', 1),
	(1155, 'TALLER MECANICO F.B.DE FAUTO BERNAL ACOS', '', '872062-2', '521201408', 'CORONEL OVIEDO', 'A', 1),
	(1156, 'CREACIONES & ARTE DE VICENTA BEATRIZ B.', '', '2695267-0', '021 580376', 'SAN LORENZO', 'A', 1),
	(1157, 'TRANSLONA DE DERLIZ VALENZUELA GONZALEZ', '', '2925601-1', '0', 'CORONEL OVIEDO', 'A', 1),
	(1158, 'CAPLI DE ROSA MABEL CARLSON', '', '4243949-3', '071 201562', 'LOS LAURELES LUQUE', 'A', 1),
	(1159, 'ABEL PEREZ COLMAN', '', '4862908-1', '0981-678642', 'CAAGUAZU', 'A', 1),
	(1160, 'INVIPINT S.A.C.I.', '', '80022935-5', '0981 272345', 'FDO DE LA MORA', 'A', 1),
	(1161, 'STEC SERVIC.TECNIC.DE MIRTHA E. FRUTOS', '', '3761843-1', '0', 'CAMPO 9', 'A', 1),
	(1162, 'PATRICIA PARODI HERMOSILLA', '', '3688001-9', '994646310', 'ASUNCION', 'A', 1),
	(1163, 'GRANOS DE NEGOCIOS DE DIANA ZOTELO NUÑEZ', '', '4793034-9', '983292382', 'LUQUE', 'A', 1),
	(1164, 'CEREALES ITAIPU S.A.', '', '80053481-6', '0', 'SANTA FE PARANA', 'A', 1),
	(1165, 'V.T.E.VERIFICADORA TECNICA DEL ESTE S.A.', '', '80019563-9', '61574978', 'KM10 CIUDAD DEL ESTE', 'A', 1),
	(1166, 'TALLER JM DE OTILIO ROLON DOMINGUEZ', '', '1375363-0', '9820555155', 'CAPIATA', 'A', 1),
	(1167, 'FRANCISCO MENDOZA DUARTE', '', '1831777-4', '0971 408 675', 'CAMPO 9', 'A', 1),
	(1168, 'G-AGRO S.R.L.', '', '80111896-4', '0', 'HOHENAU ITAPUA', 'A', 1),
	(1169, 'IMPORTADORA ALEMANA SA', '', '80028089-0', '021 674 157', 'MADAME LYNCH', 'A', 1),
	(1170, 'AGRO ALIANZA SANTA CATALINA S.A.', '', '80114532-5', '67220100', 'CARLOS A. LOPEZ ITAPUA', 'A', 1),
	(1171, 'CERAMICA SAN JUAN DE JUAN CARLOS GONZALZ', '', '276658-2', '0', 'POTRERO GUAYAKI CAAGUAZ', 'A', 1);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;

-- Volcando estructura para tabla as.seccion
CREATE TABLE IF NOT EXISTS `seccion` (
  `idseccion` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`idseccion`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla as.seccion: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `seccion` DISABLE KEYS */;
REPLACE INTO `seccion` (`idseccion`, `descripcion`) VALUES
	(1, 'SECCION GENERAL');
/*!40000 ALTER TABLE `seccion` ENABLE KEYS */;

-- Volcando estructura para tabla as.sucursal
CREATE TABLE IF NOT EXISTS `sucursal` (
  `idsucursal` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL DEFAULT '',
  `telefono` varchar(25) DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `idempresa` int(11) NOT NULL,
  PRIMARY KEY (`idsucursal`),
  KEY `FK_SUCURSAL_EMPRESA` (`idempresa`),
  CONSTRAINT `FK_SUCURSAL_EMPRESA` FOREIGN KEY (`idempresa`) REFERENCES `empresa` (`idempresa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.sucursal: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
REPLACE INTO `sucursal` (`idsucursal`, `descripcion`, `telefono`, `direccion`, `idempresa`) VALUES
	(1, 'CASA CENTRAL', '(+595) 975 489 075', 'BARRIO SAN BLAS - EX CAMPO 9', 1),
	(2, 'SUCURSAL CAMPO 9', '', '', 1);
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;

-- Volcando estructura para tabla as.tarjeta
CREATE TABLE IF NOT EXISTS `tarjeta` (
  `idtarjeta` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL DEFAULT '',
  `idtipo` int(11) NOT NULL,
  PRIMARY KEY (`idtarjeta`),
  KEY `FK_TARJETA_TIPO_TARJETA` (`idtipo`),
  CONSTRAINT `FK_TARJETA_TIPO_TARJETA` FOREIGN KEY (`idtipo`) REFERENCES `tipo_tarjeta` (`idtipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.tarjeta: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tarjeta` DISABLE KEYS */;
REPLACE INTO `tarjeta` (`idtarjeta`, `descripcion`, `idtipo`) VALUES
	(1, '82001256325', 1),
	(2, '8254125666', 2);
/*!40000 ALTER TABLE `tarjeta` ENABLE KEYS */;

-- Volcando estructura para tabla as.tipo_articulo
CREATE TABLE IF NOT EXISTS `tipo_articulo` (
  `idtipo` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`idtipo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla as.tipo_articulo: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_articulo` DISABLE KEYS */;
REPLACE INTO `tipo_articulo` (`idtipo`, `descripcion`) VALUES
	(1, 'ADQUIRIDO'),
	(2, 'PRODUCIDO'),
	(3, 'KIT'),
	(4, 'SERVICIO'),
	(5, 'INTERES');
/*!40000 ALTER TABLE `tipo_articulo` ENABLE KEYS */;

-- Volcando estructura para tabla as.tipo_cliente
CREATE TABLE IF NOT EXISTS `tipo_cliente` (
  `idtipo` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`idtipo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla as.tipo_cliente: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_cliente` DISABLE KEYS */;
REPLACE INTO `tipo_cliente` (`idtipo`, `descripcion`) VALUES
	(1, 'OCASIONAL'),
	(2, 'NO GRATA'),
	(3, 'MOROSO'),
	(4, 'FIEL');
/*!40000 ALTER TABLE `tipo_cliente` ENABLE KEYS */;

-- Volcando estructura para tabla as.tipo_comprobante
CREATE TABLE IF NOT EXISTS `tipo_comprobante` (
  `idtipo` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`idtipo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla as.tipo_comprobante: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_comprobante` DISABLE KEYS */;
REPLACE INTO `tipo_comprobante` (`idtipo`, `descripcion`) VALUES
	(1, 'FACTURA'),
	(2, 'RECIBO'),
	(3, 'NOTA DE CRÉDITO'),
	(4, 'NOTA DE DÉBITO'),
	(5, 'REMISION');
/*!40000 ALTER TABLE `tipo_comprobante` ENABLE KEYS */;

-- Volcando estructura para tabla as.tipo_movimiento
CREATE TABLE IF NOT EXISTS `tipo_movimiento` (
  `idtipomovimiento` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `abreviacion` varchar(5) NOT NULL,
  `idtipo` int(11) NOT NULL,
  PRIMARY KEY (`idtipomovimiento`) USING BTREE,
  KEY `FK_TIPO_MOVIMIENTO_TIPO_COMPROBANTE` (`idtipo`) USING BTREE,
  CONSTRAINT `FK_TIPO_MOVIMIENTO_TIPO_COMPROBANTE` FOREIGN KEY (`idtipo`) REFERENCES `tipo_comprobante` (`idtipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla as.tipo_movimiento: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_movimiento` DISABLE KEYS */;
REPLACE INTO `tipo_movimiento` (`idtipomovimiento`, `descripcion`, `abreviacion`, `idtipo`) VALUES
	(1, 'FACTURA CONTADO RECIBIDA', 'FCONR', 1),
	(2, 'FACTURA CREDITO RECIBIDA', 'FCRER', 1),
	(3, 'FACTURA CONTADO EMITIDA', 'FCONE', 1),
	(4, 'FACTURA CREDITO EMITIDA', 'FCREE', 1),
	(5, 'NOTA DE CREDITO RECIBIDA', 'NCRER', 3),
	(6, 'NOTA DE CREDITO EMITIDA', 'NCREE', 3),
	(7, 'NOTA DE DEBITO RECIBIDA', 'NDEBR', 4),
	(8, 'NOTA DE DEBITO EMITIDA', 'NDEBE', 4),
	(9, 'NOTA DE REMISION RECIBIDA', 'NREMR', 5),
	(10, 'NOTA DE REMISION EMITIDA', 'NREME', 5),
	(11, 'RECIBO DE PAGO EMITIDA', 'RPAGE', 2),
	(12, 'RECIBO DE PAGO RECIBIDA', 'RPAGR', 2);
/*!40000 ALTER TABLE `tipo_movimiento` ENABLE KEYS */;

-- Volcando estructura para tabla as.tipo_proveedor
CREATE TABLE IF NOT EXISTS `tipo_proveedor` (
  `idtipo` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`idtipo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla as.tipo_proveedor: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_proveedor` DISABLE KEYS */;
REPLACE INTO `tipo_proveedor` (`idtipo`, `descripcion`) VALUES
	(1, 'LOCAL'),
	(2, 'EXTRANJERO'),
	(3, 'OTROS');
/*!40000 ALTER TABLE `tipo_proveedor` ENABLE KEYS */;

-- Volcando estructura para tabla as.tipo_tarjeta
CREATE TABLE IF NOT EXISTS `tipo_tarjeta` (
  `idtipo` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`idtipo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla as.tipo_tarjeta: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_tarjeta` DISABLE KEYS */;
REPLACE INTO `tipo_tarjeta` (`idtipo`, `descripcion`) VALUES
	(1, 'TARJETA DE DÉBITO'),
	(2, 'TARJETA DE CRÉDITO');
/*!40000 ALTER TABLE `tipo_tarjeta` ENABLE KEYS */;

-- Volcando estructura para tabla as.unidad_medida
CREATE TABLE IF NOT EXISTS `unidad_medida` (
  `idunidad` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `simbolo` varchar(5) NOT NULL,
  PRIMARY KEY (`idunidad`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla as.unidad_medida: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `unidad_medida` DISABLE KEYS */;
REPLACE INTO `unidad_medida` (`idunidad`, `descripcion`, `simbolo`) VALUES
	(1, 'UNIDADES', 'UN');
/*!40000 ALTER TABLE `unidad_medida` ENABLE KEYS */;

-- Volcando estructura para tabla as.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `cedula` varchar(25) NOT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `alias` varchar(25) NOT NULL,
  `clave` varchar(256) NOT NULL,
  `idempresa` int(11) NOT NULL,
  `idsucursal` int(11) NOT NULL,
  PRIMARY KEY (`idusuario`),
  KEY `FK_USUARIO_EMPRESA` (`idempresa`),
  KEY `FK_USUARIO_SUCURSAL` (`idsucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
REPLACE INTO `usuario` (`idusuario`, `nombre`, `apellido`, `cedula`, `telefono`, `direccion`, `alias`, `clave`, `idempresa`, `idsucursal`) VALUES
	(1, 'ARMANDO ARIEL', 'PERALTA MARTINEZ', '5955455', '0975489075', 'BARRIO SAN JORGE - EX CAMPO 9', 'APERALTA', 'e3e7c47572ad938642bbc9cdcdce7e3f', 1, 1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Volcando estructura para tabla as.usuario_impresora
CREATE TABLE IF NOT EXISTS `usuario_impresora` (
  `idusuario` int(11) NOT NULL,
  `idimpresora` int(11) NOT NULL,
  PRIMARY KEY (`idusuario`,`idimpresora`),
  KEY `FK_USUARIO_IMPRESORA_IMPRESORA` (`idimpresora`),
  KEY `FK_USUARIO_IMPRESORA_USUARIO` (`idusuario`),
  CONSTRAINT `FK_USUARIO_IMPRESORA_IMPRESORA` FOREIGN KEY (`idimpresora`) REFERENCES `impresora` (`idimpresora`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_USUARIO_IMPRESORA_USUARIO` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.usuario_impresora: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario_impresora` DISABLE KEYS */;
REPLACE INTO `usuario_impresora` (`idusuario`, `idimpresora`) VALUES
	(1, 1);
/*!40000 ALTER TABLE `usuario_impresora` ENABLE KEYS */;

-- Volcando estructura para tabla as.usuario_programa
CREATE TABLE IF NOT EXISTS `usuario_programa` (
  `idusuario` int(11) NOT NULL,
  `idprograma` int(11) NOT NULL,
  PRIMARY KEY (`idusuario`,`idprograma`),
  KEY `FK_USUARIO_PROGAMA_PROGRAMA` (`idprograma`),
  KEY `FK_USUARIO_PROGRAMA_USUARIO` (`idusuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.usuario_programa: 49 rows
/*!40000 ALTER TABLE `usuario_programa` DISABLE KEYS */;
REPLACE INTO `usuario_programa` (`idusuario`, `idprograma`) VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(1, 6),
	(1, 7),
	(1, 8),
	(1, 9),
	(1, 10),
	(1, 11),
	(1, 12),
	(1, 13),
	(1, 14),
	(1, 15),
	(1, 16),
	(1, 17),
	(1, 18),
	(1, 19),
	(1, 20),
	(1, 21),
	(1, 22),
	(1, 23),
	(1, 24),
	(1, 25),
	(1, 26),
	(1, 27),
	(1, 28),
	(1, 29),
	(1, 30),
	(1, 31),
	(1, 32),
	(1, 33),
	(1, 34),
	(1, 35),
	(1, 36),
	(1, 37),
	(1, 38),
	(1, 39),
	(1, 40),
	(1, 41),
	(1, 42),
	(1, 43),
	(1, 44),
	(1, 45),
	(1, 46),
	(1, 47),
	(1, 48),
	(1, 49);
/*!40000 ALTER TABLE `usuario_programa` ENABLE KEYS */;

-- Volcando estructura para tabla as.vendedor
CREATE TABLE IF NOT EXISTS `vendedor` (
  `idvendedor` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL DEFAULT '',
  `apellido` varchar(100) NOT NULL DEFAULT '',
  `estado` varchar(1) NOT NULL,
  `porcentajecomision` double NOT NULL,
  `idempresa` int(11) NOT NULL,
  `idsucursal` int(11) NOT NULL,
  PRIMARY KEY (`idvendedor`),
  KEY `FK_VENDEDOR_EMPRESA` (`idempresa`),
  KEY `FK_VENDEDOR_SUCURSAL` (`idsucursal`),
  CONSTRAINT `FK_VENDEDOR_EMPRESA` FOREIGN KEY (`idempresa`) REFERENCES `empresa` (`idempresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_VENDEDOR_SUCURSAL` FOREIGN KEY (`idsucursal`) REFERENCES `sucursal` (`idsucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.vendedor: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
REPLACE INTO `vendedor` (`idvendedor`, `nombre`, `apellido`, `estado`, `porcentajecomision`, `idempresa`, `idsucursal`) VALUES
	(1, 'MANUEL', 'DOMINGUEZ', 'A', 5, 1, 1);
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;

-- Volcando estructura para tabla as.venta
CREATE TABLE IF NOT EXISTS `venta` (
  `idventa` int(11) NOT NULL,
  `numerodocumento` varchar(25) NOT NULL,
  `numerotimbrado` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `idmoneda` int(11) NOT NULL,
  `iddeposito` int(11) NOT NULL,
  `idtipomovimiento` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `totalneto` double NOT NULL,
  `totaliva` double NOT NULL,
  `idcuenta` int(11) DEFAULT NULL,
  `idempresa` int(11) NOT NULL,
  `idsucursal` int(11) NOT NULL,
  `idvendedor` int(11) NOT NULL,
  PRIMARY KEY (`idventa`),
  KEY `FK_VENTA_MONEDA` (`idmoneda`),
  KEY `FK_VENTA_TIPO_MOVIMIENTO` (`idtipomovimiento`),
  KEY `FK_VENTA_DEPOSITO` (`iddeposito`),
  KEY `FK_VENTA_CLIENTE` (`idcliente`),
  KEY `FK_VENTA_USUARIO` (`idusuario`),
  KEY `FK_VENTA_EMPRESA` (`idempresa`),
  KEY `FK_VENTA_SUCURSAL` (`idsucursal`),
  KEY `FK_VENTA_VENDEDOR` (`idvendedor`),
  CONSTRAINT `FK_VENTA_CLIENTE` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_VENTA_DEPOSITO` FOREIGN KEY (`iddeposito`) REFERENCES `deposito` (`iddeposito`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_VENTA_EMPRESA` FOREIGN KEY (`idempresa`) REFERENCES `empresa` (`idempresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_VENTA_MONEDA` FOREIGN KEY (`idmoneda`) REFERENCES `moneda` (`idmoneda`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_VENTA_SUCURSAL` FOREIGN KEY (`idsucursal`) REFERENCES `sucursal` (`idsucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_VENTA_TIPO_MOVIMIENTO` FOREIGN KEY (`idtipomovimiento`) REFERENCES `tipo_movimiento` (`idtipomovimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_VENTA_USUARIO` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_VENTA_VENDEDOR` FOREIGN KEY (`idvendedor`) REFERENCES `vendedor` (`idvendedor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.venta: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;

-- Volcando estructura para tabla as.venta_cobro_cuota
CREATE TABLE IF NOT EXISTS `venta_cobro_cuota` (
  `idcobro` int(11) NOT NULL,
  `idcompra` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `fechacobro` date NOT NULL,
  `monto` double NOT NULL,
  `idcuenta` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `numerocomprobante` varchar(25) NOT NULL,
  `idtipomovimiento` int(11) NOT NULL,
  PRIMARY KEY (`idcobro`,`idcompra`,`numero`),
  KEY `FK_VENTA_COBRO_CUOTA_VENTA_CUOTA` (`idcompra`,`numero`),
  KEY `FK_VENTA_COBRO_CUOTA_CUENTA` (`idcuenta`),
  KEY `FK_VENTA_COBRO_CUOTA_USUARIO` (`idusuario`),
  KEY `FK_VENTA_COBRO_CUOTA_TIPO_MOVIMIENTO` (`idtipomovimiento`),
  CONSTRAINT `FK_VENTA_COBRO_CUOTA_CUENTA` FOREIGN KEY (`idcuenta`) REFERENCES `cuenta` (`idcuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_VENTA_COBRO_CUOTA_TIPO_MOVIMIENTO` FOREIGN KEY (`idtipomovimiento`) REFERENCES `tipo_movimiento` (`idtipomovimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_VENTA_COBRO_CUOTA_USUARIO` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_VENTA_COBRO_CUOTA_VENTA_CUOTA` FOREIGN KEY (`idcompra`, `numero`) REFERENCES `venta_cuota` (`idventa`, `numero`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.venta_cobro_cuota: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `venta_cobro_cuota` DISABLE KEYS */;
/*!40000 ALTER TABLE `venta_cobro_cuota` ENABLE KEYS */;

-- Volcando estructura para tabla as.venta_cuota
CREATE TABLE IF NOT EXISTS `venta_cuota` (
  `idventa` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `monto` double NOT NULL,
  `fechavencimiento` date NOT NULL,
  PRIMARY KEY (`idventa`,`numero`),
  KEY `FK_VENTA_CUOTA_VENTA` (`idventa`),
  CONSTRAINT `FK_VENTA_CUOTA_VENTA` FOREIGN KEY (`idventa`) REFERENCES `venta` (`idventa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.venta_cuota: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `venta_cuota` DISABLE KEYS */;
/*!40000 ALTER TABLE `venta_cuota` ENABLE KEYS */;

-- Volcando estructura para tabla as.venta_detalle
CREATE TABLE IF NOT EXISTS `venta_detalle` (
  `idventa` int(11) NOT NULL,
  `idarticulo` int(11) NOT NULL,
  `precio` double NOT NULL,
  `cantidad` double NOT NULL,
  `numeroitem` int(11) NOT NULL,
  `iva` double NOT NULL,
  `porcentajeiva` double NOT NULL,
  `referencia` varchar(100) NOT NULL,
  PRIMARY KEY (`idventa`,`idarticulo`),
  KEY `FK_VENTA_DETALLE_ARTICULO` (`idarticulo`),
  KEY `FK_VENTA_DETALLE_VENTA` (`idventa`),
  CONSTRAINT `FK_VENTA_DETALLE_ARTICULO` FOREIGN KEY (`idarticulo`) REFERENCES `articulo` (`idarticulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_VENTA_DETALLE_VENTA` FOREIGN KEY (`idventa`) REFERENCES `venta` (`idventa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla as.venta_detalle: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `venta_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `venta_detalle` ENABLE KEYS */;

-- Volcando estructura para vista as.v_compra_anulado
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `v_compra_anulado` (
	`idcompraanulado` INT(11) NOT NULL,
	`Fecha_hora_anulado` VARCHAR(24) NULL COLLATE 'utf8mb4_general_ci',
	`observacionanulado` VARCHAR(255) NULL COLLATE 'utf8mb4_general_ci',
	`idmotivo` INT(11) NOT NULL,
	`Motivo` VARCHAR(100) NOT NULL COLLATE 'utf8mb4_general_ci',
	`idusuarioanulado` INT(11) NOT NULL,
	`Usuario_anulacion` VARCHAR(201) NOT NULL COLLATE 'utf8mb4_general_ci',
	`idcompra` INT(11) NOT NULL,
	`numerodocumento` VARCHAR(25) NOT NULL COLLATE 'utf8mb4_general_ci',
	`numerotimbrado` INT(11) NOT NULL,
	`Fecha_comprobante` VARCHAR(10) NULL COLLATE 'utf8mb4_general_ci',
	`observacion` VARCHAR(255) NULL COLLATE 'utf8mb4_general_ci',
	`idmoneda` INT(11) NOT NULL,
	`Moneda` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`iddeposito` INT(11) NOT NULL,
	`Deposito` VARCHAR(100) NOT NULL COLLATE 'utf8mb4_general_ci',
	`idtipomovimiento` INT(11) NOT NULL,
	`Tipo_movimiento` VARCHAR(5) NOT NULL COLLATE 'utf8_general_ci',
	`idproveedor` INT(11) NOT NULL,
	`Proveedor` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`idusuario` INT(11) NOT NULL,
	`Usuario` VARCHAR(201) NOT NULL COLLATE 'utf8mb4_general_ci',
	`totalneto` DOUBLE NOT NULL,
	`totaliva` DOUBLE NOT NULL,
	`idcuenta` INT(11) NULL,
	`Cuenta` VARCHAR(100) NOT NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista as.v_compra_con_saldo
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `v_compra_con_saldo` (
	`idcompra` INT(11) NOT NULL,
	`numerodocumento` VARCHAR(25) NOT NULL COLLATE 'utf8mb4_general_ci',
	`numerotimbrado` INT(11) NOT NULL,
	`total_documento` DOUBLE NOT NULL,
	`total_pagos` DOUBLE NULL,
	`saldo_documento` DOUBLE NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista as.v_compra_credito
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `v_compra_credito` (
	`idcompra` INT(11) NOT NULL,
	`numerodocumento` VARCHAR(25) NOT NULL COLLATE 'utf8mb4_general_ci',
	`numerotimbrado` INT(11) NOT NULL,
	`fecha` DATE NOT NULL,
	`total_exento` DOUBLE NOT NULL,
	`total_gravado` DOUBLE NOT NULL,
	`idproveedor` INT(11) NOT NULL,
	`proveedor` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`cantidad_cuotas` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista as.v_compra_detallado
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `v_compra_detallado` (
	`idcompra` INT(11) NOT NULL,
	`numerodocumento` VARCHAR(25) NOT NULL COLLATE 'utf8mb4_general_ci',
	`numerotimbrado` INT(11) NOT NULL,
	`fecha` DATE NOT NULL,
	`idproveedor` INT(11) NOT NULL,
	`razonsocial` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`idarticulo` INT(11) NOT NULL,
	`numeroitem` INT(11) NOT NULL,
	`costo` DOUBLE NOT NULL,
	`cantidad` DOUBLE NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista as.v_compra_full
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `v_compra_full` (
	`Establecimiento` INT(3) NOT NULL,
	`PuntoEmision` INT(3) NOT NULL,
	`Numero` INT(7) NOT NULL,
	`Comprobante` VARCHAR(25) NOT NULL COLLATE 'utf8mb4_general_ci',
	`timbrado` INT(11) NOT NULL,
	`CodigoCompra` INT(11) NOT NULL,
	`FechaCompra` VARCHAR(10) NULL COLLATE 'utf8mb4_general_ci',
	`ObservacionCompra` VARCHAR(255) NULL COLLATE 'utf8mb4_general_ci',
	`CodigoMoneda` INT(11) NOT NULL,
	`DescripcionMoneda` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`CodigoDeposito` INT(11) NOT NULL,
	`DescripcionDeposito` VARCHAR(100) NOT NULL COLLATE 'utf8mb4_general_ci',
	`CodigoProveedor` INT(11) NOT NULL,
	`DescripcionProveedor` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`CodigoUsuario` INT(11) NOT NULL,
	`DescripcionUsuario` VARCHAR(201) NOT NULL COLLATE 'utf8mb4_general_ci',
	`MontoTotalSinIva` DOUBLE NOT NULL,
	`MontoTotalIva` DOUBLE NOT NULL,
	`CodigoCuenta` INT(11) NULL,
	`DescripcionCuenta` VARCHAR(100) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista as.v_compra_saldo
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `v_compra_saldo` (
	`idcompra` INT(11) NOT NULL,
	`numerodocumento` VARCHAR(25) NOT NULL COLLATE 'utf8mb4_general_ci',
	`numerotimbrado` INT(11) NOT NULL,
	`total_documento` DOUBLE NOT NULL,
	`total_pagos` DOUBLE NULL,
	`saldo_documento` DOUBLE NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista as.v_listado_articulo
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `v_listado_articulo` (
	`idarticulo` INT(11) NOT NULL,
	`descripcion` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`idmarca` INT(11) NOT NULL,
	`marca` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`idlinea` INT(11) NOT NULL,
	`linea` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`idseccion` INT(11) NOT NULL,
	`seccion` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`idtipo` INT(11) NOT NULL,
	`tipo_articulo` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`idunidad` INT(11) NOT NULL,
	`unidad_medida` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`um_simbolo` VARCHAR(5) NOT NULL COLLATE 'utf8_general_ci',
	`idimpuesto` INT(11) NOT NULL,
	`impuesto` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`imp_porcentaje` DOUBLE NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista as.v_listado_proveedor
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `v_listado_proveedor` (
	`idproveedor` INT(11) NOT NULL,
	`razonsocial` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`ruc` VARCHAR(25) NULL COLLATE 'utf8_general_ci',
	`telefono` VARCHAR(25) NULL COLLATE 'utf8_general_ci',
	`idtipo` INT(11) NOT NULL,
	`tipo_proveedor` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para procedimiento as.P_ACT_CUENTA_SALDO
DELIMITER //
CREATE PROCEDURE `P_ACT_CUENTA_SALDO`(
	IN `xOPERACION` VARCHAR(50),
	IN `xMONTO` DOUBLE,
	IN `xIDCOMPRA_VENTA` INT,
	IN `xTABLA` VARCHAR(50)
)
BEGIN
	DECLARE V_MONTO_ENTRADA DOUBLE;
	DECLARE V_MONTO_SALIDA DOUBLE;
	DECLARE V_MONTO_ENTRADA_ANULADO DOUBLE;
	DECLARE V_MONTO_SALIDA_ANULADO DOUBLE;
		
		IF xOPERACION = 'E' THEN
			SET V_MONTO_ENTRADA 	= xMONTO;
			SET V_MONTO_SALIDA	= 0;
			SET V_MONTO_ENTRADA_ANULADO	= 0;
			SET V_MONTO_SALIDA_ANULADO	= 0;
		END IF;
		IF xOPERACION = 'S' THEN
			SET V_MONTO_ENTRADA 	= 0;
			SET V_MONTO_SALIDA	= xMONTO;
			SET V_MONTO_ENTRADA_ANULADO	= 0;
			SET V_MONTO_SALIDA_ANULADO	= 0;
		END IF;
		IF xOPERACION = 'EA' THEN
			SET V_MONTO_ENTRADA 	= 0;
			SET V_MONTO_SALIDA	= 0;
			SET V_MONTO_ENTRADA_ANULADO	= xMONTO;
			SET V_MONTO_SALIDA_ANULADO	= 0;
		END IF;
		IF xOPERACION = 'SA' THEN
			SET V_MONTO_ENTRADA 	= 0;
			SET V_MONTO_SALIDA	= 0;
			SET V_MONTO_ENTRADA_ANULADO	= 0;
			SET V_MONTO_SALIDA_ANULADO	= xMONTO;
		END IF;
		CALL P_ACT_CUENTA_SALDO_INS_UPD(V_MONTO_ENTRADA, V_MONTO_SALIDA, xIDCOMPRA_VENTA, xTABLA, V_MONTO_ENTRADA_ANULADO, V_MONTO_SALIDA_ANULADO);
END//
DELIMITER ;

-- Volcando estructura para procedimiento as.P_ACT_CUENTA_SALDO_INS_UPD
DELIMITER //
CREATE PROCEDURE `P_ACT_CUENTA_SALDO_INS_UPD`(
	IN `xMONTO_ENTRADA` DOUBLE,
	IN `xMONTO_SALIDA` DOUBLE,
	IN `xIDCOMPRA_VENTA` INT,
	IN `xTABLA` VARCHAR(50),
	IN `xMONTO_ENTRADA_ANULADO` DOUBLE,
	IN `xMONTO_SALIDA_ANULADO` DOUBLE
)
BEGIN
		DECLARE V_REGISTROS INT;
		DECLARE V_MONEDA INT;
		DECLARE V_CUENTA INT;
		DECLARE V_FECHA DATE;
		DECLARE V_MONTO_ENTRADA DOUBLE;
		DECLARE V_MONTO_SALIDA DOUBLE;
		DECLARE V_MONTO_ENTRADA_ANULADO DOUBLE;
		DECLARE V_MONTO_SALIDA_ANULADO DOUBLE;
		
		-- INSERT INTO excepciones (datos) VALUES (CONCAT("xIDCOMPRA_VENTA: ",xIDCOMPRA_VENTA)); 
		
		-- BLOQUE DE CODIGO QUE SE DISPARA SOLO CUANDO ES UN MOVIMIENTO DE COMPRAS
		IF xTABLA = 'compra' THEN
			SELECT CO.idmoneda, CO.idcuenta AS idcuenta, CO.fecha INTO V_MONEDA, V_CUENTA, V_FECHA FROM compra AS CO WHERE CO.idcompra = xIDCOMPRA_VENTA;
		END IF;
		IF xTABLA = 'compra_pago_cuota' THEN
			SELECT (SELECT CU.idmoneda FROM cuenta AS CU WHERE CU.idcuenta = CPC.idcuenta) AS idmoneda, CPC.idcuenta AS idcuenta, CPC.fechapago INTO V_MONEDA, V_CUENTA, V_FECHA 
			FROM compra_pago_cuota AS CPC WHERE CPC.idpago = xIDCOMPRA_VENTA;
		END IF;
		
		
		-- BLOQUE DE CODIGO QUE SE DISPARA SOLO CUANDO ES UN MOVIMIENTO DE VENTAS
		IF xTABLA = 'venta' THEN
			SELECT VE.idmoneda, VE.idcuenta AS idcuenta, VE.fecha INTO V_MONEDA, V_CUENTA, V_FECHA FROM venta AS VE WHERE VE.idventa = xIDCOMPRA_VENTA;
		END IF;
		IF xTABLA = 'venta_cobro_cuota' THEN
			SELECT (SELECT CU.idmoneda FROM cuenta AS CU WHERE CU.idcuenta = CPC.idcuenta) AS idmoneda, VCC.idcuenta AS idcuenta, VCC.fechacobro INTO V_MONEDA, V_CUENTA, V_FECHA 
			FROM venta_cobro_cuota AS VCC WHERE VCC.idcobro = xIDCOMPRA_VENTA;
		END IF;
		
		
		-- INSERT INTO excepciones (datos) VALUES (CONCAT(V_MONEDA,'-',V_CUENTA,'-',V_FECHA)); 
		IF V_MONEDA != 1 THEN
			SET V_MONTO_ENTRADA = ROUND(xMONTO_ENTRADA, 3);
			SET V_MONTO_SALIDA = ROUND(xMONTO_SALIDA, 3);
			SET V_MONTO_ENTRADA_ANULADO = ROUND(xMONTO_ENTRADA_ANULADO, 3);
			SET V_MONTO_SALIDA_ANULADO = ROUND(xMONTO_SALIDA_ANULADO, 3);
		ELSE
			SET V_MONTO_ENTRADA = xMONTO_ENTRADA;
			SET V_MONTO_SALIDA = xMONTO_SALIDA;
			SET V_MONTO_ENTRADA_ANULADO = xMONTO_ENTRADA_ANULADO;
			SET V_MONTO_SALIDA_ANULADO = xMONTO_SALIDA_ANULADO;
		END IF;

		-- INSERT INTO excepciones (datos) VALUES (CONCAT("V_CUENTA: ",V_CUENTA)); 
		-- INSERT INTO excepciones (datos) VALUES (CONCAT("V_FECHA: ",V_FECHA)); 
		IF V_CUENTA > 0 THEN
			
			-- SE REALIZA LA CONSULTA PARA VER SI YA EXISTE UN REGISTRO CON LA PK DE LA TABLA CUENTA_SALDO
			SELECT COUNT(*) CONTADOR INTO V_REGISTROS
			FROM cuenta_saldo AS CS
			WHERE CS.idcuenta = V_CUENTA
			AND 	CS.fecha = V_FECHA;
			
			IF V_REGISTROS = 0 THEN
				-- INSERT INTO excepciones (datos) VALUES (CONCAT("PASO 1: ")); 
				INSERT INTO cuenta_saldo 
				(idcuenta, fecha, entrada, salida, entrada_anulado, salida_anulado)
				VALUES (V_CUENTA, V_FECHA, V_MONTO_ENTRADA, V_MONTO_SALIDA, V_MONTO_ENTRADA_ANULADO, V_MONTO_SALIDA_ANULADO);
			ELSE
				-- INSERT INTO excepciones (datos) VALUES (CONCAT("PASO 2: ")); 
				UPDATE cuenta_saldo
				SET
					entrada= entrada + V_MONTO_ENTRADA,
					salida= salida + V_MONTO_SALIDA,
					entrada_anulado = entrada_anulado + V_MONTO_ENTRADA_ANULADO,
					salida_anulado = salida_anulado + V_MONTO_SALIDA_ANULADO
				WHERE idcuenta=V_CUENTA AND fecha=V_FECHA;
			END IF;
		END IF;
END//
DELIMITER ;

-- Volcando estructura para procedimiento as.P_ACT_ITEM_COSTO
DELIMITER //
CREATE PROCEDURE `P_ACT_ITEM_COSTO`(
	IN `xIDARTICULO` INT,
	IN `xCOSTO` DOUBLE,
	IN `xIDCOMPRA` INT
)
BEGIN
	DECLARE V_CONTADOR INT;
	DECLARE V_PERIODO INT;
	DECLARE V_FECHA DATE;
	DECLARE V_MONEDA INT;
	DECLARE V_COSTO DOUBLE;
	
	SELECT C.fecha, C.idmoneda INTO V_FECHA, V_MONEDA FROM compra AS C WHERE C.idcompra = xIDCOMPRA;
	
	SET V_PERIODO = FP_ACT_PERIODO_INS_UPD(V_FECHA);
	
	SELECT COUNT(*) INTO V_CONTADOR FROM articulo_periodo AS P
	WHERE P.idarticulo = xIDARTICULO
	AND P.idperiodo = V_PERIODO
	AND P.idmoneda = V_MONEDA;
	
	IF V_MONEDA = 1 THEN
		SET V_COSTO = xCOSTO;
	ELSE
		SET V_COSTO = ROUND(xCOSTO, 3);
	END IF;
	
	IF V_CONTADOR = 0 THEN
		INSERT INTO articulo_periodo
		(idarticulo, idperiodo, idmoneda, costo)
		VALUES (xIDARTICULO, V_PERIODO, V_MONEDA, V_COSTO);
	ELSE
		UPDATE articulo_periodo
		SET
			costo=V_COSTO
		WHERE idarticulo=xIDARTICULO AND idperiodo=V_PERIODO AND idmoneda = V_MONEDA;
	END IF;
	
END//
DELIMITER ;

-- Volcando estructura para procedimiento as.P_ACT_ITEM_DEP
DELIMITER //
CREATE PROCEDURE `P_ACT_ITEM_DEP`(
	IN `xIDARTICULO` INT,
	IN `xIDVENTA_COMPRA` INT,
	IN `xCANTIDAD` DOUBLE,
	IN `xOPERACION` VARCHAR(1),
	IN `xTABLA` VARCHAR(100)
)
BEGIN
	DECLARE V_DEPOSITO INT;
	DECLARE V_CANTIDAD_ENTRADA DOUBLE;
	DECLARE V_CANTIDAD_SALIDA DOUBLE;
	

		IF xTABLA = 'compra' THEN
			SELECT iddeposito INTO V_DEPOSITO FROM compra WHERE idcompra = xIDVENTA_COMPRA;
		END IF;
		
		IF xTABLA = 'venta' THEN
			SELECT iddeposito INTO V_DEPOSITO FROM venta WHERE idventa = xIDVENTA_COMPRA;
		END IF;
		
		IF xOPERACION = 'E' THEN
			SET V_CANTIDAD_ENTRADA 	= xCANTIDAD;
			SET V_CANTIDAD_SALIDA	= 0;
		END IF;
		IF xOPERACION = 'S' THEN
			SET V_CANTIDAD_ENTRADA 	= 0;
			SET V_CANTIDAD_SALIDA	= xCANTIDAD;
		END IF;
		CALL P_ACT_ITEM_DEP_INS_UPD(V_DEPOSITO, xIDARTICULO, V_CANTIDAD_ENTRADA, V_CANTIDAD_SALIDA);	
END//
DELIMITER ;

-- Volcando estructura para procedimiento as.P_ACT_ITEM_DEP_INS_UPD
DELIMITER //
CREATE PROCEDURE `P_ACT_ITEM_DEP_INS_UPD`(
	IN `xIDDEPOSITO` INT,
	IN `xIDARTICULO` INT,
	IN `xCANTIDAD_ENTRADA` DOUBLE,
	IN `xCANTIDAD_SALIDA` DOUBLE
)
BEGIN
	DECLARE V_REGISTROS INT;	
	SELECT COUNT(*) INTO V_REGISTROS FROM articulo_deposito
	WHERE idarticulo	= xIDARTICULO
	AND 	iddeposito	= xIDDEPOSITO;	
	IF V_REGISTROS = 0 THEN
		INSERT INTO articulo_deposito (idarticulo, iddeposito, cantidad)
		VALUES(xIDARTICULO, xIDDEPOSITO, xCANTIDAD_ENTRADA - xCANTIDAD_SALIDA);
	ELSE
		UPDATE articulo_deposito 
		SET cantidad = cantidad + xCANTIDAD_ENTRADA - xCANTIDAD_SALIDA
		WHERE idarticulo	= xIDARTICULO
		AND	iddeposito	= xIDDEPOSITO;
	END IF;	
END//
DELIMITER ;

-- Volcando estructura para procedimiento as.P_COMPRA_DETALLADA
DELIMITER //
CREATE PROCEDURE `P_COMPRA_DETALLADA`(
	IN `xIDPROVEEDOR` VARCHAR(50),
	IN `xFECHA_DESDE` VARCHAR(50),
	IN `xFECHA_HASTA` VARCHAR(50),
	IN `xCANTIDAD_MINIMA` VARCHAR(50),
	IN `xCANTIDAD_MAXIMA` VARCHAR(50)
)
BEGIN
	DECLARE V_WHERE VARCHAR(1000);
	
	SELECT * FROM v_compra_detallado AS V
	WHERE V.costo > 0
	AND 	(V.cantidad >= xCANTIDAD_MINIMA OR xCANTIDAD_MINIMA IS NULL)
   AND 	(V.fecha >= xFECHA_DESDE OR xFECHA_DESDE IS NULL)
	AND   (V.fecha <= xFECHA_HASTA OR xFECHA_HASTA IS NULL)
	AND	(V.idproveedor = xIDPROVEEDOR OR xIDPROVEEDOR IS NULL)
	AND 	(V.cantidad <= xCANTIDAD_MAXIMA OR xCANTIDAD_MAXIMA IS NULL)
	;
END//
DELIMITER ;

-- Volcando estructura para procedimiento as.P_LISTA_PRECIO_CRUD
DELIMITER //
CREATE PROCEDURE `P_LISTA_PRECIO_CRUD`(
	IN `xOPERACION` VARCHAR(1),
	IN `xIDLP` VARCHAR(50),
	IN `xDESCRIPCION` VARCHAR(100)
)
BEGIN
	DECLARE V_CODIGO INT;
	 
	IF xOPERACION = 'C' THEN
		-- ESTE CONSULTA RETORNARA EL CODIGO DISPONIBLE EN LA TABLA
		select idlista + 1 as proximo_cod_libre INTO V_CODIGO
		from (select 0 as idlista
		       union all
		      select idlista
		        from lista_precio) t1
		 where not exists (select NULL
	                   from lista_precio t2
	                  where t2.idlista = t1.idlista + 1)
	 order by idlista
	 LIMIT 1;
		-- Y AQUI SE REALIZARA LA INSERCION CORRESPONDIENTE
		INSERT INTO lista_precio
		(idlista, descripcion)
		VALUES (V_CODIGO,xDESCRIPCION);
		
		-- RECUPERA EL REGISTRO INSERTADO
		SELECT * FROM lista_precio WHERE idlista=V_CODIGO;
	END IF;
	
	IF xOPERACION = 'R' THEN
		SELECT * FROM lista_precio WHERE (idlista = xIDLP OR xIDLP = '');
	END IF;

	
	IF xOPERACION = 'U' THEN
		UPDATE lista_precio
		SET
			descripcion=xDESCRIPCION
		WHERE idlista=xIDLP;
		
		-- RECUPERA EL REGISTRO MODIFICADO
		SELECT * FROM lista_precio WHERE idlista=xIDLP;
	END IF;
	
	IF xOPERACION = 'D' THEN
		DELETE FROM lista_precio WHERE idlista=xIDLP;
		
		-- RECUPERA TODOS LOS REGISTROS DESPUES DE ELIMINAR EL SELECCIONADO
		SELECT * FROM lista_precio;
	END IF;
	
	
	
END//
DELIMITER ;

-- Volcando estructura para función as.CENTENAS_LETRAS
DELIMITER //
CREATE FUNCTION `CENTENAS_LETRAS`(`xVALOR` INT
) RETURNS varchar(100) CHARSET utf8mb4
BEGIN
	DECLARE V_CADENA VARCHAR(100);
	DECLARE V_CADENA_DOS VARCHAR(100);
	SET V_CADENA = '';
	SET V_CADENA_DOS = '';
	
	IF xVALOR < 100 THEN
		SET V_CADENA = DECENAS_LETRAS(SUBSTR(xVALOR,1,2));
	ELSEIF xVALOR = 100 THEN
		SET V_CADENA = 'CIEN';
	ELSEIF xVALOR < 200 THEN
		SET V_CADENA = CONCAT(V_CADENA,'CIENTO ');
		SET V_CADENA_DOS = DECENAS_LETRAS(SUBSTR(xVALOR,2,2));
		SET V_CADENA = CONCAT(V_CADENA,V_CADENA_DOS);
	ELSEIF xVALOR = 200 THEN
		SET V_CADENA = 'DOSCIENTOS';
	ELSEIF xVALOR < 300 THEN
		SET V_CADENA = CONCAT(V_CADENA,'DOSCIENTOS ');
		SET V_CADENA_DOS = DECENAS_LETRAS(SUBSTR(xVALOR,2,2));
		SET V_CADENA = CONCAT(V_CADENA, V_CADENA_DOS);
	ELSEIF xVALOR = 300 THEN
		SET V_CADENA = 'TRESCIENTOS';
	ELSEIF xVALOR < 400 THEN
		SET V_CADENA = CONCAT(V_CADENA,'TRESCIENTOS ');
		SET V_CADENA_DOS = DECENAS_LETRAS(SUBSTR(xVALOR,2,2));
		SET V_CADENA = CONCAT(V_CADENA, V_CADENA_DOS);
	ELSEIF xVALOR = 400 THEN
		SET V_CADENA = 'CUATROCIENTOS';
	ELSEIF xVALOR < 500 THEN
		SET V_CADENA = CONCAT(V_CADENA,'CUATROCIENTOS ');
		SET V_CADENA_DOS = DECENAS_LETRAS(SUBSTR(xVALOR,2,2));
		SET V_CADENA = CONCAT(V_CADENA, V_CADENA_DOS);
	ELSEIF xVALOR = 500 THEN
		SET V_CADENA = 'QUINIENTOS';
	ELSEIF xVALOR < 600 THEN
		SET V_CADENA = CONCAT(V_CADENA,'QUINIENTOS ');
		SET V_CADENA_DOS = DECENAS_LETRAS(SUBSTR(xVALOR,2,2));
		SET V_CADENA = CONCAT(V_CADENA, V_CADENA_DOS);
	ELSEIF xVALOR = 600 THEN
		SET V_CADENA = 'SEISCIENTOS';
	ELSEIF xVALOR < 700 THEN
		SET V_CADENA = CONCAT(V_CADENA,'SEISCIENTOS ');
		SET V_CADENA_DOS = DECENAS_LETRAS(SUBSTR(xVALOR,2,2));
		SET V_CADENA = CONCAT(V_CADENA, V_CADENA_DOS);
	ELSEIF xVALOR = 700 THEN
		SET V_CADENA = 'SETECIENTOS';
	ELSEIF xVALOR < 800 THEN
		SET V_CADENA = CONCAT(V_CADENA,'SETECIENTOS ');
		SET V_CADENA_DOS = DECENAS_LETRAS(SUBSTR(xVALOR,2,2));
		SET V_CADENA = CONCAT(V_CADENA, V_CADENA_DOS);
	ELSEIF xVALOR = 800 THEN
		SET V_CADENA = 'OCHOCIENTOS';
	ELSEIF xVALOR < 900 THEN
		SET V_CADENA = CONCAT(V_CADENA,'OCHOCIENTOS ');
		SET V_CADENA_DOS = DECENAS_LETRAS(SUBSTR(xVALOR,2,2));
		SET V_CADENA = CONCAT(V_CADENA, V_CADENA_DOS);
	ELSEIF xVALOR = 900 THEN
		SET V_CADENA = 'NOVECIENTOS';
	ELSEIF xVALOR < 1000 THEN
		SET V_CADENA = CONCAT(V_CADENA,'NOVECIENTOS ');
		SET V_CADENA_DOS = DECENAS_LETRAS(SUBSTR(xVALOR,2,2));
		SET V_CADENA = CONCAT(V_CADENA, V_CADENA_DOS);
	END IF;
	
	RETURN V_CADENA;
END//
DELIMITER ;

-- Volcando estructura para función as.DECENAS_LETRAS
DELIMITER //
CREATE FUNCTION `DECENAS_LETRAS`(`xVALOR` INT
) RETURNS varchar(100) CHARSET utf8mb4
BEGIN
	DECLARE V_CADENA VARCHAR(100);
	DECLARE V_CADENA_DOS VARCHAR(100);
	SET V_CADENA = '';
	SET V_CADENA_DOS = '';
	
	IF xVALOR < 10 THEN
		SET V_CADENA = UNIDADES_LETRAS(SUBSTR(xVALOR,LENGTH(xVALOR),1));
	ELSEIF xVALOR = 10 THEN
		SET V_CADENA = CONCAT(V_CADENA,'DIEZ');
	ELSEIF xVALOR = 11 THEN
		SET V_CADENA = CONCAT(V_CADENA,'ONCE');	
	ELSEIF xVALOR = 12 THEN
		SET V_CADENA = CONCAT(V_CADENA,'DOCE');
	ELSEIF xVALOR = 13 THEN
		SET V_CADENA = CONCAT(V_CADENA,'TRECE');
	ELSEIF xVALOR = 14 THEN
		SET V_CADENA = CONCAT(V_CADENA,'CATORCE');
	ELSEIF xVALOR = 15 THEN
		SET V_CADENA = CONCAT(V_CADENA,'QUINCE');
	ELSEIF xVALOR < 20 THEN
		SET V_CADENA = CONCAT(V_CADENA,'DIECI');
		SET V_CADENA_DOS = UNIDADES_LETRAS(SUBSTR(xVALOR,LENGTH(xVALOR),1));
		SET V_CADENA = CONCAT(V_CADENA,V_CADENA_DOS);
	ELSEIF xVALOR = 20 THEN
		SET V_CADENA = CONCAT(V_CADENA,'VEINTE');
	ELSEIF xVALOR < 30 THEN
		SET V_CADENA = CONCAT(V_CADENA,'VEINTI');
		SET V_CADENA_DOS = UNIDADES_LETRAS(SUBSTR(xVALOR,LENGTH(xVALOR),1));
		SET V_CADENA = CONCAT(V_CADENA,V_CADENA_DOS);
	ELSEIF xVALOR = 30 THEN
		SET V_CADENA = CONCAT(V_CADENA,'TREINTA');
	ELSEIF xVALOR < 40 THEN
		SET V_CADENA = CONCAT(V_CADENA,'TREINTA Y ');
		SET V_CADENA_DOS = UNIDADES_LETRAS(SUBSTR(xVALOR,LENGTH(xVALOR),1));
		SET V_CADENA = CONCAT(V_CADENA,V_CADENA_DOS);	
   ELSEIF xVALOR = 40 THEN
		SET V_CADENA = CONCAT(V_CADENA,'CUARENTA');
	ELSEIF xVALOR < 50 THEN
		SET V_CADENA = CONCAT(V_CADENA,'CUARENTA Y ');
		SET V_CADENA_DOS = UNIDADES_LETRAS(SUBSTR(xVALOR,LENGTH(xVALOR),1));
		SET V_CADENA = CONCAT(V_CADENA,V_CADENA_DOS);
	ELSEIF xVALOR = 50 THEN
		SET V_CADENA = CONCAT(V_CADENA,'CINCUENTA');
	ELSEIF xVALOR < 60 THEN
		SET V_CADENA = CONCAT(V_CADENA,'CINCUENTA Y ');
		SET V_CADENA_DOS = UNIDADES_LETRAS(SUBSTR(xVALOR,LENGTH(xVALOR),1));
		SET V_CADENA = CONCAT(V_CADENA,V_CADENA_DOS);
	ELSEIF xVALOR = 60 THEN
		SET V_CADENA = CONCAT(V_CADENA,'SESENTA');
	ELSEIF xVALOR < 70 THEN
		SET V_CADENA = CONCAT(V_CADENA,'SESENTA Y ');
		SET V_CADENA_DOS = UNIDADES_LETRAS(SUBSTR(xVALOR,LENGTH(xVALOR),1));
		SET V_CADENA = CONCAT(V_CADENA,V_CADENA_DOS);
	ELSEIF xVALOR = 70 THEN
		SET V_CADENA = CONCAT(V_CADENA,'SETENTA');
	ELSEIF xVALOR < 80 THEN
		SET V_CADENA = CONCAT(V_CADENA,'SETENTA Y ');
		SET V_CADENA_DOS = UNIDADES_LETRAS(SUBSTR(xVALOR,LENGTH(xVALOR),1));
		SET V_CADENA = CONCAT(V_CADENA,V_CADENA_DOS);
	ELSEIF xVALOR = 80 THEN
		SET V_CADENA = CONCAT(V_CADENA,'OCHENTA');
	ELSEIF xVALOR < 90 THEN
		SET V_CADENA = CONCAT(V_CADENA,'OCHENTA Y ');
		SET V_CADENA_DOS = UNIDADES_LETRAS(SUBSTR(xVALOR,LENGTH(xVALOR),1));
		SET V_CADENA = CONCAT(V_CADENA,V_CADENA_DOS);
	ELSEIF xVALOR = 90 THEN
		SET V_CADENA = CONCAT(V_CADENA,'NOVENTA');
	ELSEIF xVALOR > 90 THEN
		SET V_CADENA = CONCAT(V_CADENA,'NOVENTA Y ');
		SET V_CADENA_DOS = UNIDADES_LETRAS(SUBSTR(xVALOR,LENGTH(xVALOR),1));
		SET V_CADENA = CONCAT(V_CADENA,V_CADENA_DOS);		
	END IF;
	
	RETURN V_CADENA;
END//
DELIMITER ;

-- Volcando estructura para función as.FP_ACT_PERIODO_INS_UPD
DELIMITER //
CREATE FUNCTION `FP_ACT_PERIODO_INS_UPD`(`xFECHA` DATE
) RETURNS int(11)
BEGIN
DECLARE V_CONTADOR INT;
DECLARE V_PERIODO INT;
DECLARE V_FECHA_DESDE DATE;
DECLARE V_FECHA_HASTA DATE;
DECLARE V_FECHA_INICIAL DATE;
DECLARE V_FECHA_FINAL DATE;
DECLARE V_CODIGO_NUEVO INT;
DECLARE V_CODIGO_PERIODO INT;

	SELECT COUNT(*), P.idperiodo, P.fecha_desde, P.fecha_hasta 
	INTO V_CONTADOR, V_PERIODO, V_FECHA_DESDE, V_FECHA_HASTA
	FROM periodo AS P WHERE xFECHA BETWEEN P.fecha_desde AND P.fecha_hasta;
	
	IF V_CONTADOR = 0 THEN
	
		/*OBTENER EL PRIMER Y ULTIMO DIA DEL MES EN BASE A LA FECHA DEL DOCUMENTO*/
		
		SELECT 
		CAST(DATE_FORMAT(xFECHA,'%Y-%m-01') AS DATE) PRIMER_DIA,
		LAST_DAY(xFECHA) ULTIMO_DIA
		INTO 
		V_FECHA_INICIAL,
		V_FECHA_FINAL;
		
		/*OBTENER EL NUEVO CODIGO PARA EL PERIODO*/
		select idperiodo + 1 as proximo_cod_libre
		INTO V_CODIGO_NUEVO
		from (select 0 as idperiodo
		       union all
		      select idperiodo
		        from periodo) t1
		                where not exists (select null
		                   from periodo t2
		                  where t2.idperiodo = t1.idperiodo + 1)
		                order by idperiodo
		                LIMIT 1;
		
		/*INSERTAR UN NUEVO PERIODO*/
		INSERT INTO periodo
		(idperiodo, fecha_desde, fecha_hasta)
		VALUES (V_CODIGO_NUEVO, V_FECHA_INICIAL, V_FECHA_FINAL);
		
		SET V_CODIGO_PERIODO = V_CODIGO_NUEVO;
		
	ELSE
		SET V_CODIGO_PERIODO = V_PERIODO;
	END IF;
	
	RETURN V_CODIGO_PERIODO;
END//
DELIMITER ;

-- Volcando estructura para función as.FP_CALCULAR_IVA
DELIMITER //
CREATE FUNCTION `FP_CALCULAR_IVA`(`xMONTO` DOUBLE,
	`xPORCENTAJE` INT,
	`xCANTIDAD_DECIMAL` INT
) RETURNS double
BEGIN
	DECLARE V_MONTO_IVA DOUBLE;
	
	IF xPORCENTAJE = 0 THEN
		SET V_MONTO_IVA = 0;
	END IF;
	
	IF xPORCENTAJE = 5 THEN
		SET V_MONTO_IVA = (xMONTO/21);
	END IF;
	
	IF xPORCENTAJE = 10 THEN
		SET V_MONTO_IVA = (xMONTO/11);
	END IF;
	
	RETURN ROUND(V_MONTO_IVA, xCANTIDAD_DECIMAL);
END//
DELIMITER ;

-- Volcando estructura para función as.FP_PARSE_FECHA
DELIMITER //
CREATE FUNCTION `FP_PARSE_FECHA`(`xFECHA` DATE
) RETURNS varchar(25) CHARSET utf8mb4
BEGIN
	DECLARE V_FECHA_FORMATEADA VARCHAR(25);
	SET V_FECHA_FORMATEADA = DATE_FORMAT(xFECHA, '%d/%m/%Y');
	RETURN V_FECHA_FORMATEADA;
END//
DELIMITER ;

-- Volcando estructura para función as.MILLONES_LETRAS
DELIMITER //
CREATE FUNCTION `MILLONES_LETRAS`(`xVALOR` INT
) RETURNS varchar(100) CHARSET utf8mb4
BEGIN	
	DECLARE V_CADENA VARCHAR(100);
	DECLARE V_CADENA_DOS VARCHAR(100);
	DECLARE V_CADENA_TRES VARCHAR(100);
	SET V_CADENA = '';
	SET V_CADENA_DOS = '';
	SET V_CADENA_TRES = '';
	
	IF xVALOR < 1000 THEN
		SET V_CADENA = CENTENAS_LETRAS(SUBSTR(xVALOR,1,3));
	ELSEIF xVALOR = 1000 THEN
		IF V_CADENA = '' THEN
			SET V_CADENA = 'UN MIL';
		ELSE
			SET V_CADENA = 'MIL';
		END IF;
	ELSEIF xVALOR < 2000 THEN
		SET V_CADENA = CONCAT(V_CADENA, 'MIL ');
		SET V_CADENA_DOS = CENTENAS_LETRAS(SUBSTR(xVALOR,2,3));
		SET V_CADENA = CONCAT(V_CADENA, V_CADENA_DOS);
	ELSEIF xVALOR >= 2000 THEN
		SET V_CADENA_TRES = UNIDADES_LETRAS(SUBSTR(xVALOR,LENGTH(xVALOR),1));
		SET V_CADENA_DOS = CENTENAS_LETRAS(SUBSTR(xVALOR,2,3));
		SET V_CADENA = CONCAT(V_CADENA_TRES, V_CADENA_DOS, V_CADENA);
	/*ELSEIF xVALOR = 2000 THEN
		SET V_CADENA = CONCAT(V_CADENA, 'DOS MIL');
	ELSEIF xVALOR < 3000 THEN
		SET V_CADENA = CONCAT(V_CADENA, 'DOS MIL ');
		SET V_CADENA_DOS = CENTENAS_LETRAS(SUBSTR(xVALOR,2,3));
		SET V_CADENA = CONCAT(V_CADENA, V_CADENA_DOS);
	ELSEIF xVALOR = 3000 THEN
		SET V_CADENA = CONCAT(V_CADENA, 'TRES MIL');
	ELSEIF xVALOR < 4000 THEN
		SET V_CADENA = CONCAT(V_CADENA, 'TRES MIL ');
		SET V_CADENA_DOS = CENTENAS_LETRAS(SUBSTR(xVALOR,2,3));
		SET V_CADENA = CONCAT(V_CADENA, V_CADENA_DOS);
	ELSEIF xVALOR = 4000 THEN
		SET V_CADENA = CONCAT(V_CADENA, 'CUATRO MIL');	
	ELSEIF xVALOR < 5000 THEN
		SET V_CADENA = CONCAT(V_CADENA, 'CUATRO MIL ');
		SET V_CADENA_DOS = CENTENAS_LETRAS(SUBSTR(xVALOR,2,3));
		SET V_CADENA = CONCAT(V_CADENA, V_CADENA_DOS);
	ELSEIF xVALOR = 5000 THEN
		SET V_CADENA = CONCAT(V_CADENA, 'CINCO MIL');	
	ELSEIF xVALOR < 6000 THEN
		SET V_CADENA = CONCAT(V_CADENA, 'CINCO MIL ');
		SET V_CADENA_DOS = CENTENAS_LETRAS(SUBSTR(xVALOR,2,3));
		SET V_CADENA = CONCAT(V_CADENA, V_CADENA_DOS);
	ELSEIF xVALOR = 6000 THEN
		SET V_CADENA = CONCAT(V_CADENA, 'SEIS MIL');
	ELSEIF xVALOR < 7000 THEN
		SET V_CADENA = CONCAT(V_CADENA, 'SEIS MIL ');
		SET V_CADENA_DOS = CENTENAS_LETRAS(SUBSTR(xVALOR,2,3));
		SET V_CADENA = CONCAT(V_CADENA, V_CADENA_DOS);
	ELSEIF xVALOR = 7000 THEN
		SET V_CADENA = CONCAT(V_CADENA, 'SIETE MIL');
	ELSEIF xVALOR < 8000 THEN
		SET V_CADENA = CONCAT(V_CADENA, 'SIETE MIL ');
		SET V_CADENA_DOS = CENTENAS_LETRAS(SUBSTR(xVALOR,2,3));
		SET V_CADENA = CONCAT(V_CADENA, V_CADENA_DOS);
	ELSEIF xVALOR = 8000 THEN
		SET V_CADENA = CONCAT(V_CADENA, 'OCHO MIL');
	ELSEIF xVALOR < 9000 THEN
		SET V_CADENA = CONCAT(V_CADENA, 'OCHO MIL ');
		SET V_CADENA_DOS = CENTENAS_LETRAS(SUBSTR(xVALOR,2,3));
		SET V_CADENA = CONCAT(V_CADENA, V_CADENA_DOS);	
	ELSEIF xVALOR = 9000 THEN
		SET V_CADENA = CONCAT(V_CADENA, 'NUEVE MIL');
	ELSEIF xVALOR < 10000 THEN
		SET V_CADENA = CONCAT(V_CADENA, 'NUEVE MIL ');
		SET V_CADENA_DOS = CENTENAS_LETRAS(SUBSTR(xVALOR,2,3));
		SET V_CADENA = CONCAT(V_CADENA, V_CADENA_DOS);
	ELSEIF xVALOR = 10000 THEN
		SET V_CADENA = CONCAT(V_CADENA, 'DIEZ MIL');*/
	
	END IF;
	
	
	RETURN V_CADENA;
END//
DELIMITER ;

-- Volcando estructura para función as.NUMERO_A_LETRAS
DELIMITER //
CREATE FUNCTION `NUMERO_A_LETRAS`(NUMERO DECIMAL(12,3)) RETURNS varchar(1000) CHARSET utf8mb4
BEGIN
   DECLARE MILLARES_DE_MILLON INT;
   DECLARE MILLONES INT;
   DECLARE MILLARES INT;
   DECLARE CENTENAS INT;
   DECLARE CENTIMOS INT;
   DECLARE EN_LETRAS VARCHAR(1000);
   DECLARE ENTERO INT;
   DECLARE AUX VARCHAR(15);
   DECLARE CENTIMO_AUX VARCHAR(1000);
   
   -- IF ((NUMERO < 0) OR (NUMERO > 999999999999.99)) THEN
    --        SIGNAL SQLSTATE '01000'
    --        SET MESSAGE_TEXT = 'CANTIDAD FUERA DE RANGO', MYSQL_ERRNO = 1000;
    -- END IF;
   SET EN_LETRAS = '';
   SET ENTERO = TRUNCATE(NUMERO,0);
   SET MILLARES_DE_MILLON = TRUNCATE(ENTERO / 1000000000,0);
   SET MILLONES = TRUNCATE((ENTERO MOD 1000000000) / 1000000,0);
   SET MILLARES = TRUNCATE((ENTERO MOD 1000000) / 1000,0);
   SET CENTENAS = ENTERO MOD 1000;
   SET CENTIMOS = (TRUNCATE(NUMERO,2) * 100) MOD 100;
   
   IF (MILLARES_DE_MILLON = 1) THEN
         IF (MILLONES = 0) THEN
               SET EN_LETRAS = 'MIL MILLONES ';
         ELSE
               SET EN_LETRAS = 'MIL ';
         END IF;
   END IF;   
   IF (MILLARES_DE_MILLON > 1) THEN
     SET EN_LETRAS = NUMERO_MENOR_MIL(MILLARES_DE_MILLON);
         IF (MILLONES = 0) THEN
               SET EN_LETRAS = CONCAT(EN_LETRAS, 'MIL MILLONES ');
         ELSE
             SET EN_LETRAS = CONCAT(EN_LETRAS, 'MIL ');
         END IF;
   END IF;
   IF ((MILLONES = 1) AND  (MILLARES_DE_MILLON = 0)) THEN
         SET EN_LETRAS = 'UN MILLÓN ';
   ELSE
      IF   (MILLONES > 0) THEN
         SET EN_LETRAS = CONCAT(EN_LETRAS, NUMERO_MENOR_MIL(MILLONES), 'MILLONES ');
      END IF;
   END IF;
   IF ((MILLARES = 1) AND (MILLARES_DE_MILLON = 0) AND (MILLONES = 0)) THEN
   SET EN_LETRAS = 'MIL ';
   ELSE
      IF (MILLARES > 0) THEN
            SET EN_LETRAS = CONCAT(EN_LETRAS , NUMERO_MENOR_MIL(MILLARES) ,'MIL ');
      END IF;
   END IF;
   IF ((CENTENAS > 0) OR ((ENTERO = 0) AND (CENTIMOS = 0))) THEN
      SET EN_LETRAS = CONCAT(EN_LETRAS, NUMERO_MENOR_MIL(CENTENAS));
   END IF;
   IF (CENTIMOS > 0) THEN
      IF (CENTIMOS = 1) THEN
         SET  AUX = 'CÉNTIMO';
      ELSE
         SET AUX = 'CÉNTIMOS';
      END IF;
   END IF;
   IF (ENTERO > 0) THEN
     SET CENTIMO_AUX = NUMERO_MENOR_MIL(CENTIMOS);
     SET CENTIMO_AUX = REPLACE(CENTIMO_AUX,'UNO ','UN ');
      SET EN_LETRAS = CONCAT(EN_LETRAS, 'CON ', CENTIMO_AUX , AUX);
   ELSE
      SET EN_LETRAS = CONCAT(EN_LETRAS, CENTIMO_AUX, AUX);
   END IF;
   RETURN(EN_LETRAS);
END//
DELIMITER ;

-- Volcando estructura para función as.NUMERO_MENOR_MIL
DELIMITER //
CREATE FUNCTION `NUMERO_MENOR_MIL`(NUMERO DECIMAL(4)) RETURNS varchar(1000) CHARSET utf8mb4 COLLATE utf8mb4_spanish_ci
BEGIN
       DECLARE CENTENAS INT;
       DECLARE DECENAS INT;
       DECLARE UNIDADES INT;
       DECLARE EN_LETRAS VARCHAR(1000);
       DECLARE UNIR VARCHAR(2);
          SET EN_LETRAS = '';
        IF (NUMERO = 100) THEN
            RETURN ('CIEN ');
        ELSEIF NUMERO = 0 THEN
            RETURN ('CERO ');
        ELSEIF NUMERO = 1 THEN
            RETURN ('UNO ');
        ELSE
            SET CENTENAS = TRUNCATE(NUMERO / 1000,0);
            SET DECENAS  = TRUNCATE((NUMERO MOD 1000)/10,0);
            SET UNIDADES = NUMERO MOD 10;
            SET UNIR = 'Y ';
           
                  IF CENTENAS = 1 THEN
                SET EN_LETRAS = 'CIENTO ';
            ELSEIF CENTENAS = 2 THEN
                SET EN_LETRAS = 'DOSCIENTOS ';
            ELSEIF CENTENAS = 3 THEN
                SET EN_LETRAS = 'TRESCIENTOS ';
            ELSEIF CENTENAS = 4 THEN
                SET EN_LETRAS = 'CUATROCIENTOS ';
            ELSEIF CENTENAS = 5 THEN
                SET EN_LETRAS = 'QUINIENTOS ';
            ELSEIF CENTENAS = 6 THEN
                SET EN_LETRAS = 'SEISCIENTOS ';
            ELSEIF CENTENAS = 7 THEN
                SET EN_LETRAS = 'SETECIENTOS ';
            ELSEIF CENTENAS = 8 THEN
                SET EN_LETRAS = 'OCHOCIENTOS ';
            ELSEIF CENTENAS = 9 THEN
                SET EN_LETRAS = 'NOVECIENTOS ';
            END IF;
           
                  IF DECENAS = 3 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS , 'TREINTA ');
            ELSEIF DECENAS = 4 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS , 'CUARENTA ');
            ELSEIF DECENAS = 5 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS , 'CINCUENTA ');
            ELSEIF DECENAS = 6 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS , 'SESENTA ');
            ELSEIF DECENAS = 7 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS , 'SETENTA ');
            ELSEIF DECENAS = 8 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS , 'OCHENTA ');
            ELSEIF DECENAS = 9 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS , 'NOVENTA ');
            ELSEIF DECENAS = 1 THEN
                IF UNIDADES < 6 THEN
                    IF UNIDADES = 0 THEN
                        SET EN_LETRAS = CONCAT(EN_LETRAS , 'DIEZ ');
                    ELSEIF UNIDADES = 1 THEN
                        SET EN_LETRAS = CONCAT(EN_LETRAS , 'ONCE ');
                    ELSEIF UNIDADES = 2 THEN
                        SET EN_LETRAS = CONCAT(EN_LETRAS , 'DOCE ');
                    ELSEIF UNIDADES = 3 THEN
                        SET EN_LETRAS = CONCAT(EN_LETRAS , 'TRECE ');
                    ELSEIF UNIDADES = 4 THEN
                        SET EN_LETRAS = CONCAT(EN_LETRAS , 'CATORCE ');
                    ELSEIF UNIDADES = 5 THEN
                        SET EN_LETRAS = CONCAT(EN_LETRAS , 'QUINCE ');
                    END IF;
                    SET UNIDADES = 0;
                ELSE
                    SET EN_LETRAS = CONCAT(EN_LETRAS, 'DIECI');
                    SET UNIR = '';
                END IF;
            ELSEIF (DECENAS = 2) THEN
                IF (UNIDADES = 0) THEN
                    SET EN_LETRAS = CONCAT(EN_LETRAS, 'VEINTE ');
                ELSE
                    SET EN_LETRAS = CONCAT(EN_LETRAS, 'VEINTI');
                END IF;
                SET UNIR = '';
            ELSEIF (DECENAS = 0) THEN
                SET UNIR = '';
            END IF;
                  
            IF (UNIDADES = 1) THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS, UNIR, 'UNO ');
            ELSEIF UNIDADES = 2 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS, UNIR, 'DOS ');
            ELSEIF UNIDADES = 3 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS, UNIR, 'TRES ');
            ELSEIF UNIDADES = 4 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS, UNIR, 'CUATRO ');
            ELSEIF UNIDADES = 5 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS, UNIR, 'CINCO ');
            ELSEIF UNIDADES = 6 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS, UNIR, 'SEIS ');
            ELSEIF UNIDADES = 7 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS, UNIR, 'SIETE ');
            ELSEIF UNIDADES = 8 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS, UNIR, 'OCHO ');
            ELSEIF UNIDADES = 9 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS , UNIR , 'NUEVE ');
            END IF;
        END IF;
        RETURN(EN_LETRAS);
    END//
DELIMITER ;

-- Volcando estructura para función as.UNIDADES_LETRAS
DELIMITER //
CREATE FUNCTION `UNIDADES_LETRAS`(`xVALOR` INT
) RETURNS varchar(100) CHARSET utf8mb4
BEGIN
	/*ESTE PROCEDIMIENTO SE ENCARGA DE CONVERTIR LOS NUMEROS A LETRAS EN UNIDADES*/
	DECLARE V_CADENA VARCHAR(100);
	SET V_CADENA = '';
	
	IF xVALOR = 0 THEN
		IF V_CADENA = '' THEN
			SET V_CADENA = 'CERO';
		END IF;		 
	ELSEIF xVALOR = 1 THEN	
		IF V_CADENA = '' THEN
			SET V_CADENA = 'UNO';
		ELSE
			SET V_CADENA = CONCAT(V_CADENA,'UN');
		END IF;
	ELSEIF xVALOR = 2 THEN
		SET V_CADENA = CONCAT(V_CADENA,'DOS');
	ELSEIF xVALOR = 3 THEN
		SET V_CADENA = CONCAT(V_CADENA,'TRES');
	ELSEIF xVALOR = 4 THEN
		SET V_CADENA = CONCAT(V_CADENA,'CUATRO');
	ELSEIF xVALOR = 5 THEN
		SET V_CADENA = CONCAT(V_CADENA,'CINCO');
	ELSEIF xVALOR = 6 THEN
		SET V_CADENA = CONCAT(V_CADENA,'SEIS');
	ELSEIF xVALOR = 7 THEN
		SET V_CADENA = CONCAT(V_CADENA,'SIETE');
	ELSEIF xVALOR = 8 THEN
		SET V_CADENA = CONCAT(V_CADENA,'OCHO');
	ELSEIF xVALOR = 9 THEN
		SET V_CADENA = CONCAT(V_CADENA,'NUEVE');
	END IF;
	
	RETURN V_CADENA;
END//
DELIMITER ;

-- Volcando estructura para disparador as.TR_COMPRA_ANULADO_DEL
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TR_COMPRA_ANULADO_DEL` BEFORE INSERT ON `compra_anulado` FOR EACH ROW BEGIN
	DELETE FROM compra_cuota WHERE idcompra = NEW.idcompra;
	DELETE FROM compra_detalle WHERE idcompra = NEW.idcompra;
	DELETE FROM compra WHERE idcompra = NEW.idcompra;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador as.TR_COMPRA_DETALLE_PERIODO_COSTO
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TR_COMPRA_DETALLE_PERIODO_COSTO` AFTER INSERT ON `compra_detalle` FOR EACH ROW BEGIN
	CALL P_ACT_ITEM_COSTO(NEW.idarticulo, (NEW.costo + NEW.iva), NEW.idcompra);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador as.TR_COMPRA_DETALLE_STOCK_DEL
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TR_COMPRA_DETALLE_STOCK_DEL` BEFORE DELETE ON `compra_detalle` FOR EACH ROW BEGIN
	CALL P_ACT_ITEM_DEP(OLD.idarticulo, OLD.idcompra, OLD.cantidad, 'S', 'compra');
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador as.TR_COMPRA_DETALLE_STOCK_INS
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TR_COMPRA_DETALLE_STOCK_INS` AFTER INSERT ON `compra_detalle` FOR EACH ROW BEGIN
	CALL P_ACT_ITEM_DEP(NEW.idarticulo, NEW.idcompra, NEW.cantidad, 'E', 'compra');
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador as.TR_CUENTA_SALDO_COMPRA_DEL
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `TR_CUENTA_SALDO_COMPRA_DEL` BEFORE DELETE ON `compra` FOR EACH ROW BEGIN
		CALL P_ACT_CUENTA_SALDO('SA', (OLD.totalneto + OLD.totaliva), OLD.idcompra, 'compra');
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador as.TR_CUENTA_SALDO_COMPRA_INS
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TR_CUENTA_SALDO_COMPRA_INS` AFTER INSERT ON `compra` FOR EACH ROW BEGIN
		CALL P_ACT_CUENTA_SALDO('S', (NEW.totalneto + NEW.totaliva), NEW.idcompra, 'compra');
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador as.TR_CUENTA_SALDO_COMPRA_PAGO_CUOTA_DEL
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `TR_CUENTA_SALDO_COMPRA_PAGO_CUOTA_DEL` BEFORE DELETE ON `compra_pago_cuota` FOR EACH ROW BEGIN
		CALL P_ACT_CUENTA_SALDO('SA', OLD.monto, OLD.idpago, 'compra_pago_cuota');
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador as.TR_CUENTA_SALDO_COMPRA_PAGO_CUOTA_INS
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TR_CUENTA_SALDO_COMPRA_PAGO_CUOTA_INS` AFTER INSERT ON `compra_pago_cuota` FOR EACH ROW BEGIN
		CALL P_ACT_CUENTA_SALDO('S', NEW.monto, NEW.idpago, 'compra_pago_cuota');
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador as.TR_CUENTA_SALDO_VENTA_DEL
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `TR_CUENTA_SALDO_VENTA_DEL` BEFORE DELETE ON `venta` FOR EACH ROW BEGIN
		CALL P_ACT_CUENTA_SALDO('EA', (OLD.totalneto + OLD.totaliva), OLD.idventa, 'venta');
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador as.TR_CUENTA_SALDO_VENTA_INS
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TR_CUENTA_SALDO_VENTA_INS` AFTER INSERT ON `venta` FOR EACH ROW BEGIN
		CALL P_ACT_CUENTA_SALDO('E', (NEW.totalneto + NEW.totaliva), NEW.idventa, 'venta');
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador as.TR_PAGO_ANULADO_DEL
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TR_PAGO_ANULADO_DEL` BEFORE INSERT ON `compra_pago_cuota_anulado` FOR EACH ROW BEGIN
	DELETE FROM compra_pago_cuota WHERE idpago = NEW.idpago;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador as.TR_VENTA_DETALLE_STOCK_DEL
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TR_VENTA_DETALLE_STOCK_DEL` BEFORE DELETE ON `venta_detalle` FOR EACH ROW BEGIN
	CALL P_ACT_ITEM_DEP(OLD.idarticulo, OLD.idventa, OLD.cantidad, 'E', 'venta');
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador as.TR_VENTA_DETALLE_STOCK_INS
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TR_VENTA_DETALLE_STOCK_INS` AFTER INSERT ON `venta_detalle` FOR EACH ROW BEGIN
	CALL P_ACT_ITEM_DEP(NEW.idarticulo, NEW.idventa, NEW.cantidad, 'S', 'venta');
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para vista as.v_compra_anulado
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `v_compra_anulado`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_compra_anulado` AS SELECT 
CA.idcompraanulado, 
DATE_FORMAT(CA.fechahoraanulado, '%d/%m/%Y %H:%i:%s') AS Fecha_hora_anulado, 
CA.observacionanulado, 
CA.idmotivo, 
MA.descripcion AS Motivo,
CA.idusuarioanulado, 
CONCAT(U.nombre,' ',U.apellido) AS Usuario_anulacion,
CA.idcompra, 
CA.numerodocumento, 
CA.numerotimbrado, 
DATE_FORMAT(CA.fecha, '%d/%m/%Y') AS Fecha_comprobante, 
CA.observacion, 
CA.idmoneda, 
M.descripcion AS Moneda,
CA.iddeposito, 
D.descripcion AS Deposito,
CA.idtipomovimiento, 
TM.abreviacion AS Tipo_movimiento,
CA.idproveedor, 
P.razonsocial AS Proveedor,
CA.idusuario, 
CONCAT(U.nombre,' ',U.apellido) AS Usuario,
CA.totalneto, 
CA.totaliva, 
CA.idcuenta,
C.descripcion AS Cuenta
FROM compra_anulado AS CA
INNER JOIN motivo_anulacion AS MA ON MA.idmotivo = CA.idmotivo
INNER JOIN usuario AS UA ON UA.idusuario = CA.idusuarioanulado
INNER JOIN moneda AS M ON M.idmoneda = CA.idmoneda
INNER JOIN deposito AS D ON D.iddeposito = CA.iddeposito
INNER JOIN tipo_movimiento AS TM ON TM.idtipomovimiento = CA.idtipomovimiento
INNER JOIN proveedor AS P ON P.idproveedor = CA.idproveedor
INNER JOIN usuario AS U ON U.idusuario = CA.idusuario
INNER JOIN cuenta AS C ON C.idcuenta = CA.idcuenta
ORDER BY CA.numerodocumento ;

-- Volcando estructura para vista as.v_compra_con_saldo
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `v_compra_con_saldo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_compra_con_saldo` AS SELECT 
VCS.idcompra,
VCS.numerodocumento,
VCS.numerotimbrado,
VCS.total_documento,
VCS.total_pagos,
VCS.saldo_documento
FROM v_compra_saldo  AS VCS
WHERE VCS.saldo_documento > 0 ;

-- Volcando estructura para vista as.v_compra_credito
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `v_compra_credito`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_compra_credito` AS SELECT
C.idcompra,
C.numerodocumento,
C.numerotimbrado,
C.fecha,
C.totalneto AS total_exento,
(C.totalneto + C.totaliva) AS total_gravado,
P.idproveedor,
P.razonsocial AS proveedor,
COUNT(CC.numero) AS cantidad_cuotas
FROM compra AS C
INNER JOIN compra_cuota AS CC ON C.idcompra = CC.idcompra
INNER JOIN proveedor AS P ON P.idproveedor = C.idproveedor
GROUP BY C.idcompra,
C.numerodocumento,
C.numerotimbrado,
C.fecha,
C.totalneto,
P.idproveedor,
P.razonsocial ;

-- Volcando estructura para vista as.v_compra_detallado
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `v_compra_detallado`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_compra_detallado` AS SELECT 
C.idcompra,
C.numerodocumento,
C.numerotimbrado,
C.fecha,
C.idproveedor,
P.razonsocial,
CD.idarticulo,
CD.numeroitem,
(CD.costo + CD.iva) AS costo,
CD.cantidad
FROM compra_detalle AS CD
INNER JOIN compra AS C ON C.idcompra = CD.idcompra
INNER JOIN proveedor AS P ON P.idproveedor = C.idproveedor ;

-- Volcando estructura para vista as.v_compra_full
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `v_compra_full`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_compra_full` AS SELECT
CONVERT(SUBSTR(C.numerodocumento, 1, 3), INTEGER) AS Establecimiento,
CONVERT(SUBSTR(C.numerodocumento, 5, 3), INTEGER) AS PuntoEmision,
CONVERT(SUBSTR(C.numerodocumento, 9, 7), INTEGER) AS Numero,
C.numerodocumento AS Comprobante,
C.numerotimbrado AS timbrado,
C.idcompra AS CodigoCompra,
DATE_FORMAT(C.fecha, '%d/%m/%Y') AS FechaCompra,
C.observacion AS ObservacionCompra,
C.idmoneda AS CodigoMoneda,
M.descripcion AS DescripcionMoneda,
C.iddeposito AS CodigoDeposito,
D.descripcion AS DescripcionDeposito,
C.idproveedor AS CodigoProveedor,
P.razonsocial AS DescripcionProveedor,
C.idusuario AS CodigoUsuario,
CONCAT(U.nombre,' ',U.apellido) AS DescripcionUsuario,
C.totalneto AS MontoTotalSinIva,
C.totaliva AS MontoTotalIva,
IF(C.idcuenta=0, NULL, C.idcuenta) AS CodigoCuenta,
IF(C.idcuenta=0, 'NULO',CU.descripcion) AS DescripcionCuenta
FROM compra AS C
INNER JOIN moneda AS M ON M.idmoneda = C.idmoneda
INNER JOIN deposito AS D ON D.iddeposito = C.iddeposito
INNER JOIN proveedor AS P ON P.idproveedor = C.idproveedor
INNER JOIN usuario AS U ON U.idusuario = C.idusuario
LEFT JOIN cuenta AS CU ON CU.idcuenta = C.idcuenta
ORDER BY C.fecha ;

-- Volcando estructura para vista as.v_compra_saldo
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `v_compra_saldo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_compra_saldo` AS SELECT
C.idcompra,
C.numerodocumento,
C.numerotimbrado,
(C.totalneto + C.totaliva) AS total_documento,
SUM(CPC.monto) AS total_pagos,
((C.totalneto + C.totaliva) - SUM(CPC.monto)) AS saldo_documento
FROM compra_pago_cuota AS CPC
INNER JOIN compra AS C ON C.idcompra = CPC.idcompra
GROUP BY C.idcompra,
C.numerodocumento,
C.numerotimbrado ;

-- Volcando estructura para vista as.v_listado_articulo
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `v_listado_articulo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_listado_articulo` AS SELECT 
A.idarticulo,
A.descripcion,
A.idmarca,
M.descripcion AS marca,
A.idlinea,
L.descripcion AS linea,
A.idseccion,
S.descripcion AS seccion,
A.idtipo,
TA.descripcion AS tipo_articulo,
A.idunidad,
UM.descripcion AS unidad_medida,
UM.simbolo AS um_simbolo,
A.idimpuesto,
I.descripcion AS impuesto,
I.porcentaje AS imp_porcentaje
FROM articulo AS A
INNER JOIN marca AS M ON M.idmarca = A.idmarca
INNER JOIN linea AS L ON L.idlinea = A.idlinea
INNER JOIN seccion AS S ON S.idseccion = A.idseccion
INNER JOIN tipo_articulo AS TA ON TA.idtipo = A.idtipo
INNER JOIN unidad_medida AS UM ON UM.idunidad = A.idunidad
INNER JOIN impuesto AS I ON I.idimpuesto = A.idimpuesto
ORDER BY A.idarticulo ASC ;

-- Volcando estructura para vista as.v_listado_proveedor
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `v_listado_proveedor`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_listado_proveedor` AS SELECT
P.idproveedor,
P.razonsocial,
P.ruc,
P.telefono,
P.idtipo,
TP.descripcion AS tipo_proveedor
FROM proveedor AS P
INNER JOIN tipo_proveedor AS TP ON TP.idtipo = P.idtipo
ORDER BY P.idproveedor ASC ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
