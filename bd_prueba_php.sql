-- --------------------------------------------------------
-- Host:                         localhost
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


-- Volcando estructura de base de datos para prueba
DROP DATABASE IF EXISTS `prueba`;
CREATE DATABASE IF NOT EXISTS `prueba` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `prueba`;

-- Volcando estructura para tabla prueba.acudiente
DROP TABLE IF EXISTS `acudiente`;
CREATE TABLE IF NOT EXISTS `acudiente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(1000) DEFAULT NULL,
  `Identificacion` varchar(100) DEFAULT NULL,
  `Parentesco` varchar(80) DEFAULT NULL,
  `estado_civil` varchar(80) DEFAULT NULL,
  `pais` varchar(80) DEFAULT NULL,
  `ciudad` varchar(80) DEFAULT NULL,
  `id_estudiante` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla prueba.acudiente: ~0 rows (aproximadamente)
DELETE FROM `acudiente`;
/*!40000 ALTER TABLE `acudiente` DISABLE KEYS */;
INSERT INTO `acudiente` (`id`, `Nombre`, `Identificacion`, `Parentesco`, `estado_civil`, `pais`, `ciudad`, `id_estudiante`) VALUES
	(1, 'acudiente 1', '79383160', 'padre', 'Soltero', 'colombia', 'bogota', '123');
INSERT INTO `acudiente` (`id`, `Nombre`, `Identificacion`, `Parentesco`, `estado_civil`, `pais`, `ciudad`, `id_estudiante`) VALUES
	(2, 'acudiente 1', '11', '11', 'Soltero', 'colombia', 'alguna', '123');
INSERT INTO `acudiente` (`id`, `Nombre`, `Identificacion`, `Parentesco`, `estado_civil`, `pais`, `ciudad`, `id_estudiante`) VALUES
	(3, '111', '113', 'padre', 'Soltero', 'colombia', '11', '123');
INSERT INTO `acudiente` (`id`, `Nombre`, `Identificacion`, `Parentesco`, `estado_civil`, `pais`, `ciudad`, `id_estudiante`) VALUES
	(4, 'acudiente 1', '113', 'padre', 'Soltero', 'colombia', 'alguna', '123');
INSERT INTO `acudiente` (`id`, `Nombre`, `Identificacion`, `Parentesco`, `estado_civil`, `pais`, `ciudad`, `id_estudiante`) VALUES
	(5, 'acudiente 1', '78945', 'padre', 'Soltero', 'colombia', 'bogota', '1456');
INSERT INTO `acudiente` (`id`, `Nombre`, `Identificacion`, `Parentesco`, `estado_civil`, `pais`, `ciudad`, `id_estudiante`) VALUES
	(6, 'acudiente 1', '78945123', 'padre', 'Soltero', 'colombia', 'bogota', '1456');
INSERT INTO `acudiente` (`id`, `Nombre`, `Identificacion`, `Parentesco`, `estado_civil`, `pais`, `ciudad`, `id_estudiante`) VALUES
	(7, 'acudiente 2', '793834', 'madre', 'Casado', 'colombia', 'alguna', '1456');
INSERT INTO `acudiente` (`id`, `Nombre`, `Identificacion`, `Parentesco`, `estado_civil`, `pais`, `ciudad`, `id_estudiante`) VALUES
	(8, '111', '11', '11', 'Soltero', 'colombia', 'alguna', '1456122');
/*!40000 ALTER TABLE `acudiente` ENABLE KEYS */;

-- Volcando estructura para tabla prueba.departamentos
DROP TABLE IF EXISTS `departamentos`;
CREATE TABLE IF NOT EXISTS `departamentos` (
  `id_departamento` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `departamento` varchar(255) NOT NULL DEFAULT '',
  `cod_pais` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla prueba.departamentos: ~33 rows (aproximadamente)
DELETE FROM `departamentos`;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(5, 'ANTIOQUIA', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(8, 'ATLÁNTICO', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(11, 'BOGOTÁ, D.C.', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(13, 'BOLÍVAR', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(15, 'BOYACÁ', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(17, 'CALDAS', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(18, 'CAQUETÁ', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(19, 'CAUCA', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(20, 'CESAR', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(23, 'CÓRDOBA', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(25, 'CUNDINAMARCA', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(27, 'CHOCÓ', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(41, 'HUILA', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(44, 'LA GUAJIRA', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(47, 'MAGDALENA', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(50, 'META', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(52, 'NARIÑO', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(54, 'NORTE DE SANTANDER', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(63, 'QUINDIO', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(66, 'RISARALDA', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(68, 'SANTANDER', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(70, 'SUCRE', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(73, 'TOLIMA', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(76, 'VALLE DEL CAUCA', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(81, 'ARAUCA', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(85, 'CASANARE', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(86, 'PUTUMAYO', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(88, 'ARCHIPIÉLAGO DE SAN ANDRÉS, PROVIDENCIA Y SANTA CATALINA', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(91, 'AMAZONAS', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(94, 'GUAINÍA', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(95, 'GUAVIARE', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(97, 'VAUPÉS', 'CO');
INSERT INTO `departamentos` (`id_departamento`, `departamento`, `cod_pais`) VALUES
	(99, 'VICHADA', 'CO');
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;

-- Volcando estructura para tabla prueba.info_estudiante
DROP TABLE IF EXISTS `info_estudiante`;
CREATE TABLE IF NOT EXISTS `info_estudiante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(4000) NOT NULL,
  `fecha_nacimiento` varchar(200) NOT NULL,
  `identificacion` int(11) NOT NULL,
  `edad` int(11) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `cod_estudiante` varchar(20) NOT NULL,
  `pais_naci` varchar(50) NOT NULL DEFAULT '',
  `departamento_naci` int(11) NOT NULL,
  `ciudad_naci` int(11) NOT NULL,
  `subsidio` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla prueba.info_estudiante: ~0 rows (aproximadamente)
DELETE FROM `info_estudiante`;
/*!40000 ALTER TABLE `info_estudiante` DISABLE KEYS */;
INSERT INTO `info_estudiante` (`nombre`, `fecha_nacimiento`, `identificacion`, `edad`, `sexo`, `cod_estudiante`, `pais_naci`, `departamento_naci`, `ciudad_naci`, `subsidio`) VALUES
	('estudiante 1', '2021-08-21', 1456, 12, 'Femenino', 'asd123', 'CO', 11, 107, '100000');
/*!40000 ALTER TABLE `info_estudiante` ENABLE KEYS */;

-- Volcando estructura para tabla prueba.municipios
DROP TABLE IF EXISTS `municipios`;
CREATE TABLE IF NOT EXISTS `municipios` (
  `id_municipio` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `municipio` varchar(255) NOT NULL DEFAULT '',
  `estado` int(1) unsigned NOT NULL,
  `departamento_id` int(2) unsigned NOT NULL,
  PRIMARY KEY (`id_municipio`),
  KEY `departamento_id` (`departamento_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1101 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla prueba.municipios: ~1.100 rows (aproximadamente)
DELETE FROM `municipios`;
/*!40000 ALTER TABLE `municipios` DISABLE KEYS */;
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1, 'Abriaquí', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(2, 'Acacías', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(3, 'Acandí', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(4, 'Acevedo', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(5, 'Achí', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(6, 'Agrado', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(7, 'Agua de Dios', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(8, 'Aguachica', 1, 20);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(9, 'Aguada', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(10, 'Aguadas', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(11, 'Aguazul', 1, 85);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(12, 'Agustín Codazzi', 1, 20);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(13, 'Aipe', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(14, 'Albania', 1, 18);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(15, 'Albania', 1, 44);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(16, 'Albania', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(17, 'Albán', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(18, 'Albán (San José)', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(19, 'Alcalá', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(20, 'Alejandria', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(21, 'Algarrobo', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(22, 'Algeciras', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(23, 'Almaguer', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(24, 'Almeida', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(25, 'Alpujarra', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(26, 'Altamira', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(27, 'Alto Baudó (Pie de Pato)', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(28, 'Altos del Rosario', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(29, 'Alvarado', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(30, 'Amagá', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(31, 'Amalfi', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(32, 'Ambalema', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(33, 'Anapoima', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(34, 'Ancuya', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(35, 'Andalucía', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(36, 'Andes', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(37, 'Angelópolis', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(38, 'Angostura', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(39, 'Anolaima', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(40, 'Anorí', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(41, 'Anserma', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(42, 'Ansermanuevo', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(43, 'Anzoátegui', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(44, 'Anzá', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(45, 'Apartadó', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(46, 'Apulo', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(47, 'Apía', 1, 66);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(48, 'Aquitania', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(49, 'Aracataca', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(50, 'Aranzazu', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(51, 'Aratoca', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(52, 'Arauca', 1, 81);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(53, 'Arauquita', 1, 81);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(54, 'Arbeláez', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(55, 'Arboleda (Berruecos)', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(56, 'Arboledas', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(57, 'Arboletes', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(58, 'Arcabuco', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(59, 'Arenal', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(60, 'Argelia', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(61, 'Argelia', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(62, 'Argelia', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(63, 'Ariguaní (El Difícil)', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(64, 'Arjona', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(65, 'Armenia', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(66, 'Armenia', 1, 63);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(67, 'Armero (Guayabal)', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(68, 'Arroyohondo', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(69, 'Astrea', 1, 20);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(70, 'Ataco', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(71, 'Atrato (Yuto)', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(72, 'Ayapel', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(73, 'Bagadó', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(74, 'Bahía Solano (Mútis)', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(75, 'Bajo Baudó (Pizarro)', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(76, 'Balboa', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(77, 'Balboa', 1, 66);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(78, 'Baranoa', 1, 8);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(79, 'Baraya', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(80, 'Barbacoas', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(81, 'Barbosa', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(82, 'Barbosa', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(83, 'Barichara', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(84, 'Barranca de Upía', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(85, 'Barrancabermeja', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(86, 'Barrancas', 1, 44);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(87, 'Barranco de Loba', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(88, 'Barranquilla', 1, 8);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(89, 'Becerríl', 1, 20);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(90, 'Belalcázar', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(91, 'Bello', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(92, 'Belmira', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(93, 'Beltrán', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(94, 'Belén', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(95, 'Belén', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(96, 'Belén de Bajirá', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(97, 'Belén de Umbría', 1, 66);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(98, 'Belén de los Andaquíes', 1, 18);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(99, 'Berbeo', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(100, 'Betania', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(101, 'Beteitiva', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(102, 'Betulia', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(103, 'Betulia', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(104, 'Bituima', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(105, 'Boavita', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(106, 'Bochalema', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(107, 'Bogotá D.C.', 1, 11);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(108, 'Bojacá', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(109, 'Bojayá (Bellavista)', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(110, 'Bolívar', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(111, 'Bolívar', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(112, 'Bolívar', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(113, 'Bolívar', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(114, 'Bosconia', 1, 20);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(115, 'Boyacá', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(116, 'Briceño', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(117, 'Briceño', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(118, 'Bucaramanga', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(119, 'Bucarasica', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(120, 'Buenaventura', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(121, 'Buenavista', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(122, 'Buenavista', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(123, 'Buenavista', 1, 63);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(124, 'Buenavista', 1, 70);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(125, 'Buenos Aires', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(126, 'Buesaco', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(127, 'Buga', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(128, 'Bugalagrande', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(129, 'Burítica', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(130, 'Busbanza', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(131, 'Cabrera', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(132, 'Cabrera', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(133, 'Cabuyaro', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(134, 'Cachipay', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(135, 'Caicedo', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(136, 'Caicedonia', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(137, 'Caimito', 1, 70);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(138, 'Cajamarca', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(139, 'Cajibío', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(140, 'Cajicá', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(141, 'Calamar', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(142, 'Calamar', 1, 95);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(143, 'Calarcá', 1, 63);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(144, 'Caldas', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(145, 'Caldas', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(146, 'Caldono', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(147, 'California', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(148, 'Calima (Darién)', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(149, 'Caloto', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(150, 'Calí', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(151, 'Campamento', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(152, 'Campo de la Cruz', 1, 8);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(153, 'Campoalegre', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(154, 'Campohermoso', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(155, 'Canalete', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(156, 'Candelaria', 1, 8);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(157, 'Candelaria', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(158, 'Cantagallo', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(159, 'Cantón de San Pablo', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(160, 'Caparrapí', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(161, 'Capitanejo', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(162, 'Caracolí', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(163, 'Caramanta', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(164, 'Carcasí', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(165, 'Carepa', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(166, 'Carmen de Apicalá', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(167, 'Carmen de Carupa', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(168, 'Carmen de Viboral', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(169, 'Carmen del Darién (CURBARADÓ)', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(170, 'Carolina', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(171, 'Cartagena', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(172, 'Cartagena del Chairá', 1, 18);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(173, 'Cartago', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(174, 'Carurú', 1, 97);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(175, 'Casabianca', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(176, 'Castilla la Nueva', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(177, 'Caucasia', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(178, 'Cañasgordas', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(179, 'Cepita', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(180, 'Cereté', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(181, 'Cerinza', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(182, 'Cerrito', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(183, 'Cerro San Antonio', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(184, 'Chachaguí', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(185, 'Chaguaní', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(186, 'Chalán', 1, 70);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(187, 'Chaparral', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(188, 'Charalá', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(189, 'Charta', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(190, 'Chigorodó', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(191, 'Chima', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(192, 'Chimichagua', 1, 20);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(193, 'Chimá', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(194, 'Chinavita', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(195, 'Chinchiná', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(196, 'Chinácota', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(197, 'Chinú', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(198, 'Chipaque', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(199, 'Chipatá', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(200, 'Chiquinquirá', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(201, 'Chiriguaná', 1, 20);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(202, 'Chiscas', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(203, 'Chita', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(204, 'Chitagá', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(205, 'Chitaraque', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(206, 'Chivatá', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(207, 'Chivolo', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(208, 'Choachí', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(209, 'Chocontá', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(210, 'Chámeza', 1, 85);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(211, 'Chía', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(212, 'Chíquiza', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(213, 'Chívor', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(214, 'Cicuco', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(215, 'Cimitarra', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(216, 'Circasia', 1, 63);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(217, 'Cisneros', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(218, 'Ciénaga', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(219, 'Ciénaga', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(220, 'Ciénaga de Oro', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(221, 'Clemencia', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(222, 'Cocorná', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(223, 'Coello', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(224, 'Cogua', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(225, 'Colombia', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(226, 'Colosó (Ricaurte)', 1, 70);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(227, 'Colón', 1, 86);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(228, 'Colón (Génova)', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(229, 'Concepción', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(230, 'Concepción', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(231, 'Concordia', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(232, 'Concordia', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(233, 'Condoto', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(234, 'Confines', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(235, 'Consaca', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(236, 'Contadero', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(237, 'Contratación', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(238, 'Convención', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(239, 'Copacabana', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(240, 'Coper', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(241, 'Cordobá', 1, 63);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(242, 'Corinto', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(243, 'Coromoro', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(244, 'Corozal', 1, 70);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(245, 'Corrales', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(246, 'Cota', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(247, 'Cotorra', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(248, 'Covarachía', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(249, 'Coveñas', 1, 70);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(250, 'Coyaima', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(251, 'Cravo Norte', 1, 81);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(252, 'Cuaspud (Carlosama)', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(253, 'Cubarral', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(254, 'Cubará', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(255, 'Cucaita', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(256, 'Cucunubá', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(257, 'Cucutilla', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(258, 'Cuitiva', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(259, 'Cumaral', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(260, 'Cumaribo', 1, 99);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(261, 'Cumbal', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(262, 'Cumbitara', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(263, 'Cunday', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(264, 'Curillo', 1, 18);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(265, 'Curití', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(266, 'Curumaní', 1, 20);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(267, 'Cáceres', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(268, 'Cáchira', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(269, 'Cácota', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(270, 'Cáqueza', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(271, 'Cértegui', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(272, 'Cómbita', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(273, 'Córdoba', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(274, 'Córdoba', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(275, 'Cúcuta', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(276, 'Dabeiba', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(277, 'Dagua', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(278, 'Dibulla', 1, 44);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(279, 'Distracción', 1, 44);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(280, 'Dolores', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(281, 'Don Matías', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(282, 'Dos Quebradas', 1, 66);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(283, 'Duitama', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(284, 'Durania', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(285, 'Ebéjico', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(286, 'El Bagre', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(287, 'El Banco', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(288, 'El Cairo', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(289, 'El Calvario', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(290, 'El Carmen', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(291, 'El Carmen', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(292, 'El Carmen de Atrato', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(293, 'El Carmen de Bolívar', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(294, 'El Castillo', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(295, 'El Cerrito', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(296, 'El Charco', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(297, 'El Cocuy', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(298, 'El Colegio', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(299, 'El Copey', 1, 20);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(300, 'El Doncello', 1, 18);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(301, 'El Dorado', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(302, 'El Dovio', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(303, 'El Espino', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(304, 'El Guacamayo', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(305, 'El Guamo', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(306, 'El Molino', 1, 44);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(307, 'El Paso', 1, 20);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(308, 'El Paujil', 1, 18);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(309, 'El Peñol', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(310, 'El Peñon', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(311, 'El Peñon', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(312, 'El Peñón', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(313, 'El Piñon', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(314, 'El Playón', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(315, 'El Retorno', 1, 95);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(316, 'El Retén', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(317, 'El Roble', 1, 70);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(318, 'El Rosal', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(319, 'El Rosario', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(320, 'El Tablón de Gómez', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(321, 'El Tambo', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(322, 'El Tambo', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(323, 'El Tarra', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(324, 'El Zulia', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(325, 'El Águila', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(326, 'Elías', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(327, 'Encino', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(328, 'Enciso', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(329, 'Entrerríos', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(330, 'Envigado', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(331, 'Espinal', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(332, 'Facatativá', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(333, 'Falan', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(334, 'Filadelfia', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(335, 'Filandia', 1, 63);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(336, 'Firavitoba', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(337, 'Flandes', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(338, 'Florencia', 1, 18);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(339, 'Florencia', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(340, 'Floresta', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(341, 'Florida', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(342, 'Floridablanca', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(343, 'Florián', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(344, 'Fonseca', 1, 44);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(345, 'Fortúl', 1, 81);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(346, 'Fosca', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(347, 'Francisco Pizarro', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(348, 'Fredonia', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(349, 'Fresno', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(350, 'Frontino', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(351, 'Fuente de Oro', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(352, 'Fundación', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(353, 'Funes', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(354, 'Funza', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(355, 'Fusagasugá', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(356, 'Fómeque', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(357, 'Fúquene', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(358, 'Gachalá', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(359, 'Gachancipá', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(360, 'Gachantivá', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(361, 'Gachetá', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(362, 'Galapa', 1, 8);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(363, 'Galeras (Nueva Granada)', 1, 70);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(364, 'Galán', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(365, 'Gama', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(366, 'Gamarra', 1, 20);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(367, 'Garagoa', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(368, 'Garzón', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(369, 'Gigante', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(370, 'Ginebra', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(371, 'Giraldo', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(372, 'Girardot', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(373, 'Girardota', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(374, 'Girón', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(375, 'Gonzalez', 1, 20);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(376, 'Gramalote', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(377, 'Granada', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(378, 'Granada', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(379, 'Granada', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(380, 'Guaca', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(381, 'Guacamayas', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(382, 'Guacarí', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(383, 'Guachavés', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(384, 'Guachené', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(385, 'Guachetá', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(386, 'Guachucal', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(387, 'Guadalupe', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(388, 'Guadalupe', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(389, 'Guadalupe', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(390, 'Guaduas', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(391, 'Guaitarilla', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(392, 'Gualmatán', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(393, 'Guamal', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(394, 'Guamal', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(395, 'Guamo', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(396, 'Guapota', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(397, 'Guapí', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(398, 'Guaranda', 1, 70);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(399, 'Guarne', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(400, 'Guasca', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(401, 'Guatapé', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(402, 'Guataquí', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(403, 'Guatavita', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(404, 'Guateque', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(405, 'Guavatá', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(406, 'Guayabal de Siquima', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(407, 'Guayabetal', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(408, 'Guayatá', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(409, 'Guepsa', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(410, 'Guicán', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(411, 'Gutiérrez', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(412, 'Guática', 1, 66);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(413, 'Gámbita', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(414, 'Gámeza', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(415, 'Génova', 1, 63);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(416, 'Gómez Plata', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(417, 'Hacarí', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(418, 'Hatillo de Loba', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(419, 'Hato', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(420, 'Hato Corozal', 1, 85);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(421, 'Hatonuevo', 1, 44);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(422, 'Heliconia', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(423, 'Herrán', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(424, 'Herveo', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(425, 'Hispania', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(426, 'Hobo', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(427, 'Honda', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(428, 'Ibagué', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(429, 'Icononzo', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(430, 'Iles', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(431, 'Imúes', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(432, 'Inzá', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(433, 'Inírida', 1, 94);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(434, 'Ipiales', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(435, 'Isnos', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(436, 'Istmina', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(437, 'Itagüí', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(438, 'Ituango', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(439, 'Izá', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(440, 'Jambaló', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(441, 'Jamundí', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(442, 'Jardín', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(443, 'Jenesano', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(444, 'Jericó', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(445, 'Jericó', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(446, 'Jerusalén', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(447, 'Jesús María', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(448, 'Jordán', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(449, 'Juan de Acosta', 1, 8);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(450, 'Junín', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(451, 'Juradó', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(452, 'La Apartada y La Frontera', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(453, 'La Argentina', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(454, 'La Belleza', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(455, 'La Calera', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(456, 'La Capilla', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(457, 'La Ceja', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(458, 'La Celia', 1, 66);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(459, 'La Cruz', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(460, 'La Cumbre', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(461, 'La Dorada', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(462, 'La Esperanza', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(463, 'La Estrella', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(464, 'La Florida', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(465, 'La Gloria', 1, 20);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(466, 'La Jagua de Ibirico', 1, 20);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(467, 'La Jagua del Pilar', 1, 44);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(468, 'La Llanada', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(469, 'La Macarena', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(470, 'La Merced', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(471, 'La Mesa', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(472, 'La Montañita', 1, 18);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(473, 'La Palma', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(474, 'La Paz', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(475, 'La Paz (Robles)', 1, 20);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(476, 'La Peña', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(477, 'La Pintada', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(478, 'La Plata', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(479, 'La Playa', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(480, 'La Primavera', 1, 99);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(481, 'La Salina', 1, 85);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(482, 'La Sierra', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(483, 'La Tebaida', 1, 63);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(484, 'La Tola', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(485, 'La Unión', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(486, 'La Unión', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(487, 'La Unión', 1, 70);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(488, 'La Unión', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(489, 'La Uvita', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(490, 'La Vega', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(491, 'La Vega', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(492, 'La Victoria', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(493, 'La Victoria', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(494, 'La Victoria', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(495, 'La Virginia', 1, 66);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(496, 'Labateca', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(497, 'Labranzagrande', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(498, 'Landázuri', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(499, 'Lebrija', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(500, 'Leiva', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(501, 'Lejanías', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(502, 'Lenguazaque', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(503, 'Leticia', 1, 91);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(504, 'Liborina', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(505, 'Linares', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(506, 'Lloró', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(507, 'Lorica', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(508, 'Los Córdobas', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(509, 'Los Palmitos', 1, 70);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(510, 'Los Patios', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(511, 'Los Santos', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(512, 'Lourdes', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(513, 'Luruaco', 1, 8);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(514, 'Lérida', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(515, 'Líbano', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(516, 'López (Micay)', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(517, 'Macanal', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(518, 'Macaravita', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(519, 'Maceo', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(520, 'Machetá', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(521, 'Madrid', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(522, 'Magangué', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(523, 'Magüi (Payán)', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(524, 'Mahates', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(525, 'Maicao', 1, 44);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(526, 'Majagual', 1, 70);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(527, 'Malambo', 1, 8);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(528, 'Mallama (Piedrancha)', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(529, 'Manatí', 1, 8);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(530, 'Manaure', 1, 44);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(531, 'Manaure Balcón del Cesar', 1, 20);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(532, 'Manizales', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(533, 'Manta', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(534, 'Manzanares', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(535, 'Maní', 1, 85);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(536, 'Mapiripan', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(537, 'Margarita', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(538, 'Marinilla', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(539, 'Maripí', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(540, 'Mariquita', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(541, 'Marmato', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(542, 'Marquetalia', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(543, 'Marsella', 1, 66);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(544, 'Marulanda', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(545, 'María la Baja', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(546, 'Matanza', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(547, 'Medellín', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(548, 'Medina', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(549, 'Medio Atrato', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(550, 'Medio Baudó', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(551, 'Medio San Juan (ANDAGOYA)', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(552, 'Melgar', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(553, 'Mercaderes', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(554, 'Mesetas', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(555, 'Milán', 1, 18);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(556, 'Miraflores', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(557, 'Miraflores', 1, 95);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(558, 'Miranda', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(559, 'Mistrató', 1, 66);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(560, 'Mitú', 1, 97);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(561, 'Mocoa', 1, 86);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(562, 'Mogotes', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(563, 'Molagavita', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(564, 'Momil', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(565, 'Mompós', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(566, 'Mongua', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(567, 'Monguí', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(568, 'Moniquirá', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(569, 'Montebello', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(570, 'Montecristo', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(571, 'Montelíbano', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(572, 'Montenegro', 1, 63);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(573, 'Monteria', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(574, 'Monterrey', 1, 85);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(575, 'Morales', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(576, 'Morales', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(577, 'Morelia', 1, 18);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(578, 'Morroa', 1, 70);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(579, 'Mosquera', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(580, 'Mosquera', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(581, 'Motavita', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(582, 'Moñitos', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(583, 'Murillo', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(584, 'Murindó', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(585, 'Mutatá', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(586, 'Mutiscua', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(587, 'Muzo', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(588, 'Málaga', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(589, 'Nariño', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(590, 'Nariño', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(591, 'Nariño', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(592, 'Natagaima', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(593, 'Nechí', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(594, 'Necoclí', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(595, 'Neira', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(596, 'Neiva', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(597, 'Nemocón', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(598, 'Nilo', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(599, 'Nimaima', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(600, 'Nobsa', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(601, 'Nocaima', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(602, 'Norcasia', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(603, 'Norosí', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(604, 'Novita', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(605, 'Nueva Granada', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(606, 'Nuevo Colón', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(607, 'Nunchía', 1, 85);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(608, 'Nuquí', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(609, 'Nátaga', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(610, 'Obando', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(611, 'Ocamonte', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(612, 'Ocaña', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(613, 'Oiba', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(614, 'Oicatá', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(615, 'Olaya', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(616, 'Olaya Herrera', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(617, 'Onzaga', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(618, 'Oporapa', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(619, 'Orito', 1, 86);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(620, 'Orocué', 1, 85);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(621, 'Ortega', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(622, 'Ospina', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(623, 'Otanche', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(624, 'Ovejas', 1, 70);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(625, 'Pachavita', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(626, 'Pacho', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(627, 'Padilla', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(628, 'Paicol', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(629, 'Pailitas', 1, 20);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(630, 'Paime', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(631, 'Paipa', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(632, 'Pajarito', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(633, 'Palermo', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(634, 'Palestina', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(635, 'Palestina', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(636, 'Palmar', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(637, 'Palmar de Varela', 1, 8);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(638, 'Palmas del Socorro', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(639, 'Palmira', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(640, 'Palmito', 1, 70);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(641, 'Palocabildo', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(642, 'Pamplona', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(643, 'Pamplonita', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(644, 'Pandi', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(645, 'Panqueba', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(646, 'Paratebueno', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(647, 'Pasca', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(648, 'Patía (El Bordo)', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(649, 'Pauna', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(650, 'Paya', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(651, 'Paz de Ariporo', 1, 85);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(652, 'Paz de Río', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(653, 'Pedraza', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(654, 'Pelaya', 1, 20);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(655, 'Pensilvania', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(656, 'Peque', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(657, 'Pereira', 1, 66);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(658, 'Pesca', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(659, 'Peñol', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(660, 'Piamonte', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(661, 'Pie de Cuesta', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(662, 'Piedras', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(663, 'Piendamó', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(664, 'Pijao', 1, 63);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(665, 'Pijiño', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(666, 'Pinchote', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(667, 'Pinillos', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(668, 'Piojo', 1, 8);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(669, 'Pisva', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(670, 'Pital', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(671, 'Pitalito', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(672, 'Pivijay', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(673, 'Planadas', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(674, 'Planeta Rica', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(675, 'Plato', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(676, 'Policarpa', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(677, 'Polonuevo', 1, 8);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(678, 'Ponedera', 1, 8);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(679, 'Popayán', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(680, 'Pore', 1, 85);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(681, 'Potosí', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(682, 'Pradera', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(683, 'Prado', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(684, 'Providencia', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(685, 'Providencia', 1, 88);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(686, 'Pueblo Bello', 1, 20);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(687, 'Pueblo Nuevo', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(688, 'Pueblo Rico', 1, 66);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(689, 'Pueblorrico', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(690, 'Puebloviejo', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(691, 'Puente Nacional', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(692, 'Puerres', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(693, 'Puerto Asís', 1, 86);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(694, 'Puerto Berrío', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(695, 'Puerto Boyacá', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(696, 'Puerto Caicedo', 1, 86);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(697, 'Puerto Carreño', 1, 99);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(698, 'Puerto Colombia', 1, 8);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(699, 'Puerto Concordia', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(700, 'Puerto Escondido', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(701, 'Puerto Gaitán', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(702, 'Puerto Guzmán', 1, 86);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(703, 'Puerto Leguízamo', 1, 86);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(704, 'Puerto Libertador', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(705, 'Puerto Lleras', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(706, 'Puerto López', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(707, 'Puerto Nare', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(708, 'Puerto Nariño', 1, 91);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(709, 'Puerto Parra', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(710, 'Puerto Rico', 1, 18);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(711, 'Puerto Rico', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(712, 'Puerto Rondón', 1, 81);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(713, 'Puerto Salgar', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(714, 'Puerto Santander', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(715, 'Puerto Tejada', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(716, 'Puerto Triunfo', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(717, 'Puerto Wilches', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(718, 'Pulí', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(719, 'Pupiales', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(720, 'Puracé (Coconuco)', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(721, 'Purificación', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(722, 'Purísima', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(723, 'Pácora', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(724, 'Páez', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(725, 'Páez (Belalcazar)', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(726, 'Páramo', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(727, 'Quebradanegra', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(728, 'Quetame', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(729, 'Quibdó', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(730, 'Quimbaya', 1, 63);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(731, 'Quinchía', 1, 66);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(732, 'Quipama', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(733, 'Quipile', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(734, 'Ragonvalia', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(735, 'Ramiriquí', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(736, 'Recetor', 1, 85);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(737, 'Regidor', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(738, 'Remedios', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(739, 'Remolino', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(740, 'Repelón', 1, 8);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(741, 'Restrepo', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(742, 'Restrepo', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(743, 'Retiro', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(744, 'Ricaurte', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(745, 'Ricaurte', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(746, 'Rio Negro', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(747, 'Rioblanco', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(748, 'Riofrío', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(749, 'Riohacha', 1, 44);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(750, 'Risaralda', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(751, 'Rivera', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(752, 'Roberto Payán (San José)', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(753, 'Roldanillo', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(754, 'Roncesvalles', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(755, 'Rondón', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(756, 'Rosas', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(757, 'Rovira', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(758, 'Ráquira', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(759, 'Río Iró', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(760, 'Río Quito', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(761, 'Río Sucio', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(762, 'Río Viejo', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(763, 'Río de oro', 1, 20);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(764, 'Ríonegro', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(765, 'Ríosucio', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(766, 'Sabana de Torres', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(767, 'Sabanagrande', 1, 8);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(768, 'Sabanalarga', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(769, 'Sabanalarga', 1, 8);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(770, 'Sabanalarga', 1, 85);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(771, 'Sabanas de San Angel (SAN ANGEL)', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(772, 'Sabaneta', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(773, 'Saboyá', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(774, 'Sahagún', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(775, 'Saladoblanco', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(776, 'Salamina', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(777, 'Salamina', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(778, 'Salazar', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(779, 'Saldaña', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(780, 'Salento', 1, 63);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(781, 'Salgar', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(782, 'Samacá', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(783, 'Samaniego', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(784, 'Samaná', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(785, 'Sampués', 1, 70);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(786, 'San Agustín', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(787, 'San Alberto', 1, 20);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(788, 'San Andrés', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(789, 'San Andrés Sotavento', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(790, 'San Andrés de Cuerquía', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(791, 'San Antero', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(792, 'San Antonio', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(793, 'San Antonio de Tequendama', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(794, 'San Benito', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(795, 'San Benito Abad', 1, 70);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(796, 'San Bernardo', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(797, 'San Bernardo', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(798, 'San Bernardo del Viento', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(799, 'San Calixto', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(800, 'San Carlos', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(801, 'San Carlos', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(802, 'San Carlos de Guaroa', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(803, 'San Cayetano', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(804, 'San Cayetano', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(805, 'San Cristobal', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(806, 'San Diego', 1, 20);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(807, 'San Eduardo', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(808, 'San Estanislao', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(809, 'San Fernando', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(810, 'San Francisco', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(811, 'San Francisco', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(812, 'San Francisco', 1, 86);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(813, 'San Gíl', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(814, 'San Jacinto', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(815, 'San Jacinto del Cauca', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(816, 'San Jerónimo', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(817, 'San Joaquín', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(818, 'San José', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(819, 'San José de Miranda', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(820, 'San José de Montaña', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(821, 'San José de Pare', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(822, 'San José de Uré', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(823, 'San José del Fragua', 1, 18);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(824, 'San José del Guaviare', 1, 95);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(825, 'San José del Palmar', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(826, 'San Juan de Arama', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(827, 'San Juan de Betulia', 1, 70);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(828, 'San Juan de Nepomuceno', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(829, 'San Juan de Pasto', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(830, 'San Juan de Río Seco', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(831, 'San Juan de Urabá', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(832, 'San Juan del Cesar', 1, 44);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(833, 'San Juanito', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(834, 'San Lorenzo', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(835, 'San Luis', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(836, 'San Luís', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(837, 'San Luís de Gaceno', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(838, 'San Luís de Palenque', 1, 85);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(839, 'San Marcos', 1, 70);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(840, 'San Martín', 1, 20);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(841, 'San Martín', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(842, 'San Martín de Loba', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(843, 'San Mateo', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(844, 'San Miguel', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(845, 'San Miguel', 1, 86);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(846, 'San Miguel de Sema', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(847, 'San Onofre', 1, 70);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(848, 'San Pablo', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(849, 'San Pablo', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(850, 'San Pablo de Borbur', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(851, 'San Pedro', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(852, 'San Pedro', 1, 70);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(853, 'San Pedro', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(854, 'San Pedro de Cartago', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(855, 'San Pedro de Urabá', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(856, 'San Pelayo', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(857, 'San Rafael', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(858, 'San Roque', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(859, 'San Sebastián', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(860, 'San Sebastián de Buenavista', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(861, 'San Vicente', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(862, 'San Vicente del Caguán', 1, 18);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(863, 'San Vicente del Chucurí', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(864, 'San Zenón', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(865, 'Sandoná', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(866, 'Santa Ana', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(867, 'Santa Bárbara', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(868, 'Santa Bárbara', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(869, 'Santa Bárbara (Iscuandé)', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(870, 'Santa Bárbara de Pinto', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(871, 'Santa Catalina', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(872, 'Santa Fé de Antioquia', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(873, 'Santa Genoveva de Docorodó', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(874, 'Santa Helena del Opón', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(875, 'Santa Isabel', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(876, 'Santa Lucía', 1, 8);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(877, 'Santa Marta', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(878, 'Santa María', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(879, 'Santa María', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(880, 'Santa Rosa', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(881, 'Santa Rosa', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(882, 'Santa Rosa de Cabal', 1, 66);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(883, 'Santa Rosa de Osos', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(884, 'Santa Rosa de Viterbo', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(885, 'Santa Rosa del Sur', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(886, 'Santa Rosalía', 1, 99);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(887, 'Santa Sofía', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(888, 'Santana', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(889, 'Santander de Quilichao', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(890, 'Santiago', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(891, 'Santiago', 1, 86);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(892, 'Santo Domingo', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(893, 'Santo Tomás', 1, 8);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(894, 'Santuario', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(895, 'Santuario', 1, 66);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(896, 'Sapuyes', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(897, 'Saravena', 1, 81);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(898, 'Sardinata', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(899, 'Sasaima', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(900, 'Sativanorte', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(901, 'Sativasur', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(902, 'Segovia', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(903, 'Sesquilé', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(904, 'Sevilla', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(905, 'Siachoque', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(906, 'Sibaté', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(907, 'Sibundoy', 1, 86);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(908, 'Silos', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(909, 'Silvania', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(910, 'Silvia', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(911, 'Simacota', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(912, 'Simijaca', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(913, 'Simití', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(914, 'Sincelejo', 1, 70);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(915, 'Sincé', 1, 70);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(916, 'Sipí', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(917, 'Sitionuevo', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(918, 'Soacha', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(919, 'Soatá', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(920, 'Socha', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(921, 'Socorro', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(922, 'Socotá', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(923, 'Sogamoso', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(924, 'Solano', 1, 18);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(925, 'Soledad', 1, 8);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(926, 'Solita', 1, 18);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(927, 'Somondoco', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(928, 'Sonsón', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(929, 'Sopetrán', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(930, 'Soplaviento', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(931, 'Sopó', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(932, 'Sora', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(933, 'Soracá', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(934, 'Sotaquirá', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(935, 'Sotara (Paispamba)', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(936, 'Sotomayor (Los Andes)', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(937, 'Suaita', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(938, 'Suan', 1, 8);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(939, 'Suaza', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(940, 'Subachoque', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(941, 'Sucre', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(942, 'Sucre', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(943, 'Sucre', 1, 70);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(944, 'Suesca', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(945, 'Supatá', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(946, 'Supía', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(947, 'Suratá', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(948, 'Susa', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(949, 'Susacón', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(950, 'Sutamarchán', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(951, 'Sutatausa', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(952, 'Sutatenza', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(953, 'Suárez', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(954, 'Suárez', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(955, 'Sácama', 1, 85);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(956, 'Sáchica', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(957, 'Tabio', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(958, 'Tadó', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(959, 'Talaigua Nuevo', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(960, 'Tamalameque', 1, 20);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(961, 'Tame', 1, 81);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(962, 'Taminango', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(963, 'Tangua', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(964, 'Taraira', 1, 97);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(965, 'Tarazá', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(966, 'Tarqui', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(967, 'Tarso', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(968, 'Tasco', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(969, 'Tauramena', 1, 85);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(970, 'Tausa', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(971, 'Tello', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(972, 'Tena', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(973, 'Tenerife', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(974, 'Tenjo', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(975, 'Tenza', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(976, 'Teorama', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(977, 'Teruel', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(978, 'Tesalia', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(979, 'Tibacuy', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(980, 'Tibaná', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(981, 'Tibasosa', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(982, 'Tibirita', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(983, 'Tibú', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(984, 'Tierralta', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(985, 'Timaná', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(986, 'Timbiquí', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(987, 'Timbío', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(988, 'Tinjacá', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(989, 'Tipacoque', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(990, 'Tiquisio (Puerto Rico)', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(991, 'Titiribí', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(992, 'Toca', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(993, 'Tocaima', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(994, 'Tocancipá', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(995, 'Toguí', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(996, 'Toledo', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(997, 'Toledo', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(998, 'Tolú', 1, 70);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(999, 'Tolú Viejo', 1, 70);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1000, 'Tona', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1001, 'Topagá', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1002, 'Topaipí', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1003, 'Toribío', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1004, 'Toro', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1005, 'Tota', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1006, 'Totoró', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1007, 'Trinidad', 1, 85);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1008, 'Trujillo', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1009, 'Tubará', 1, 8);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1010, 'Tuchín', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1011, 'Tulúa', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1012, 'Tumaco', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1013, 'Tunja', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1014, 'Tunungua', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1015, 'Turbaco', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1016, 'Turbaná', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1017, 'Turbo', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1018, 'Turmequé', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1019, 'Tuta', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1020, 'Tutasá', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1021, 'Támara', 1, 85);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1022, 'Támesis', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1023, 'Túquerres', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1024, 'Ubalá', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1025, 'Ubaque', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1026, 'Ubaté', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1027, 'Ulloa', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1028, 'Une', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1029, 'Unguía', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1030, 'Unión Panamericana (ÁNIMAS)', 1, 27);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1031, 'Uramita', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1032, 'Uribe', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1033, 'Uribia', 1, 44);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1034, 'Urrao', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1035, 'Urumita', 1, 44);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1036, 'Usiacuri', 1, 8);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1037, 'Valdivia', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1038, 'Valencia', 1, 23);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1039, 'Valle de San José', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1040, 'Valle de San Juan', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1041, 'Valle del Guamuez', 1, 86);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1042, 'Valledupar', 1, 20);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1043, 'Valparaiso', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1044, 'Valparaiso', 1, 18);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1045, 'Vegachí', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1046, 'Venadillo', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1047, 'Venecia', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1048, 'Venecia (Ospina Pérez)', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1049, 'Ventaquemada', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1050, 'Vergara', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1051, 'Versalles', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1052, 'Vetas', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1053, 'Viani', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1054, 'Vigía del Fuerte', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1055, 'Vijes', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1056, 'Villa Caro', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1057, 'Villa Rica', 1, 19);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1058, 'Villa de Leiva', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1059, 'Villa del Rosario', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1060, 'Villagarzón', 1, 86);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1061, 'Villagómez', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1062, 'Villahermosa', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1063, 'Villamaría', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1064, 'Villanueva', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1065, 'Villanueva', 1, 44);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1066, 'Villanueva', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1067, 'Villanueva', 1, 85);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1068, 'Villapinzón', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1069, 'Villarrica', 1, 73);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1070, 'Villavicencio', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1071, 'Villavieja', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1072, 'Villeta', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1073, 'Viotá', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1074, 'Viracachá', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1075, 'Vista Hermosa', 1, 50);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1076, 'Viterbo', 1, 17);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1077, 'Vélez', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1078, 'Yacopí', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1079, 'Yacuanquer', 1, 52);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1080, 'Yaguará', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1081, 'Yalí', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1082, 'Yarumal', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1083, 'Yolombó', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1084, 'Yondó (Casabe)', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1085, 'Yopal', 1, 85);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1086, 'Yotoco', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1087, 'Yumbo', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1088, 'Zambrano', 1, 13);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1089, 'Zapatoca', 1, 68);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1090, 'Zapayán (PUNTA DE PIEDRAS)', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1091, 'Zaragoza', 1, 5);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1092, 'Zarzal', 1, 76);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1093, 'Zetaquirá', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1094, 'Zipacón', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1095, 'Zipaquirá', 1, 25);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1096, 'Zona Bananera (PRADO - SEVILLA)', 1, 47);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1097, 'Ábrego', 1, 54);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1098, 'Íquira', 1, 41);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1099, 'Úmbita', 1, 15);
INSERT INTO `municipios` (`id_municipio`, `municipio`, `estado`, `departamento_id`) VALUES
	(1100, 'Útica', 1, 25);
/*!40000 ALTER TABLE `municipios` ENABLE KEYS */;

-- Volcando estructura para tabla prueba.paises
DROP TABLE IF EXISTS `paises`;
CREATE TABLE IF NOT EXISTS `paises` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso` char(2) DEFAULT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla prueba.paises: ~240 rows (aproximadamente)
DELETE FROM `paises`;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(1, 'AF', 'Afganistán');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(2, 'AX', 'Islas Gland');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(3, 'AL', 'Albania');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(4, 'DE', 'Alemania');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(5, 'AD', 'Andorra');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(6, 'AO', 'Angola');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(7, 'AI', 'Anguilla');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(8, 'AQ', 'Antártida');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(9, 'AG', 'Antigua y Barbuda');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(10, 'AN', 'Antillas Holandesas');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(11, 'SA', 'Arabia Saudí');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(12, 'DZ', 'Argelia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(13, 'AR', 'Argentina');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(14, 'AM', 'Armenia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(15, 'AW', 'Aruba');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(16, 'AU', 'Australia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(17, 'AT', 'Austria');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(18, 'AZ', 'Azerbaiyán');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(19, 'BS', 'Bahamas');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(20, 'BH', 'Bahréin');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(21, 'BD', 'Bangladesh');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(22, 'BB', 'Barbados');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(23, 'BY', 'Bielorrusia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(24, 'BE', 'Bélgica');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(25, 'BZ', 'Belice');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(26, 'BJ', 'Benin');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(27, 'BM', 'Bermudas');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(28, 'BT', 'Bhután');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(29, 'BO', 'Bolivia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(30, 'BA', 'Bosnia y Herzegovina');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(31, 'BW', 'Botsuana');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(32, 'BV', 'Isla Bouvet');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(33, 'BR', 'Brasil');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(34, 'BN', 'Brunéi');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(35, 'BG', 'Bulgaria');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(36, 'BF', 'Burkina Faso');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(37, 'BI', 'Burundi');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(38, 'CV', 'Cabo Verde');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(39, 'KY', 'Islas Caimán');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(40, 'KH', 'Camboya');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(41, 'CM', 'Camerún');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(42, 'CA', 'Canadá');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(43, 'CF', 'República Centroafricana');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(44, 'TD', 'Chad');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(45, 'CZ', 'República Checa');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(46, 'CL', 'Chile');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(47, 'CN', 'China');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(48, 'CY', 'Chipre');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(49, 'CX', 'Isla de Navidad');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(50, 'VA', 'Ciudad del Vaticano');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(51, 'CC', 'Islas Cocos');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(52, 'CO', 'Colombia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(53, 'KM', 'Comoras');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(54, 'CD', 'República Democrática del Congo');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(55, 'CG', 'Congo');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(56, 'CK', 'Islas Cook');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(57, 'KP', 'Corea del Norte');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(58, 'KR', 'Corea del Sur');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(59, 'CI', 'Costa de Marfil');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(60, 'CR', 'Costa Rica');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(61, 'HR', 'Croacia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(62, 'CU', 'Cuba');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(63, 'DK', 'Dinamarca');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(64, 'DM', 'Dominica');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(65, 'DO', 'República Dominicana');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(66, 'EC', 'Ecuador');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(67, 'EG', 'Egipto');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(68, 'SV', 'El Salvador');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(69, 'AE', 'Emiratos Árabes Unidos');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(70, 'ER', 'Eritrea');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(71, 'SK', 'Eslovaquia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(72, 'SI', 'Eslovenia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(73, 'ES', 'España');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(74, 'UM', 'Islas ultramarinas de Estados Unidos');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(75, 'US', 'Estados Unidos');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(76, 'EE', 'Estonia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(77, 'ET', 'Etiopía');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(78, 'FO', 'Islas Feroe');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(79, 'PH', 'Filipinas');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(80, 'FI', 'Finlandia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(81, 'FJ', 'Fiyi');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(82, 'FR', 'Francia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(83, 'GA', 'Gabón');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(84, 'GM', 'Gambia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(85, 'GE', 'Georgia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(86, 'GS', 'Islas Georgias del Sur y Sandwich del Sur');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(87, 'GH', 'Ghana');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(88, 'GI', 'Gibraltar');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(89, 'GD', 'Granada');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(90, 'GR', 'Grecia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(91, 'GL', 'Groenlandia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(92, 'GP', 'Guadalupe');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(93, 'GU', 'Guam');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(94, 'GT', 'Guatemala');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(95, 'GF', 'Guayana Francesa');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(96, 'GN', 'Guinea');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(97, 'GQ', 'Guinea Ecuatorial');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(98, 'GW', 'Guinea-Bissau');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(99, 'GY', 'Guyana');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(100, 'HT', 'Haití');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(101, 'HM', 'Islas Heard y McDonald');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(102, 'HN', 'Honduras');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(103, 'HK', 'Hong Kong');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(104, 'HU', 'Hungría');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(105, 'IN', 'India');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(106, 'ID', 'Indonesia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(107, 'IR', 'Irán');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(108, 'IQ', 'Iraq');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(109, 'IE', 'Irlanda');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(110, 'IS', 'Islandia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(111, 'IL', 'Israel');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(112, 'IT', 'Italia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(113, 'JM', 'Jamaica');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(114, 'JP', 'Japón');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(115, 'JO', 'Jordania');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(116, 'KZ', 'Kazajstán');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(117, 'KE', 'Kenia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(118, 'KG', 'Kirguistán');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(119, 'KI', 'Kiribati');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(120, 'KW', 'Kuwait');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(121, 'LA', 'Laos');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(122, 'LS', 'Lesotho');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(123, 'LV', 'Letonia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(124, 'LB', 'Líbano');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(125, 'LR', 'Liberia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(126, 'LY', 'Libia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(127, 'LI', 'Liechtenstein');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(128, 'LT', 'Lituania');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(129, 'LU', 'Luxemburgo');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(130, 'MO', 'Macao');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(131, 'MK', 'ARY Macedonia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(132, 'MG', 'Madagascar');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(133, 'MY', 'Malasia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(134, 'MW', 'Malawi');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(135, 'MV', 'Maldivas');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(136, 'ML', 'Malí');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(137, 'MT', 'Malta');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(138, 'FK', 'Islas Malvinas');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(139, 'MP', 'Islas Marianas del Norte');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(140, 'MA', 'Marruecos');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(141, 'MH', 'Islas Marshall');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(142, 'MQ', 'Martinica');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(143, 'MU', 'Mauricio');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(144, 'MR', 'Mauritania');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(145, 'YT', 'Mayotte');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(146, 'MX', 'México');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(147, 'FM', 'Micronesia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(148, 'MD', 'Moldavia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(149, 'MC', 'Mónaco');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(150, 'MN', 'Mongolia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(151, 'MS', 'Montserrat');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(152, 'MZ', 'Mozambique');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(153, 'MM', 'Myanmar');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(154, 'NA', 'Namibia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(155, 'NR', 'Nauru');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(156, 'NP', 'Nepal');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(157, 'NI', 'Nicaragua');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(158, 'NE', 'Níger');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(159, 'NG', 'Nigeria');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(160, 'NU', 'Niue');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(161, 'NF', 'Isla Norfolk');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(162, 'NO', 'Noruega');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(163, 'NC', 'Nueva Caledonia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(164, 'NZ', 'Nueva Zelanda');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(165, 'OM', 'Omán');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(166, 'NL', 'Países Bajos');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(167, 'PK', 'Pakistán');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(168, 'PW', 'Palau');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(169, 'PS', 'Palestina');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(170, 'PA', 'Panamá');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(171, 'PG', 'Papúa Nueva Guinea');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(172, 'PY', 'Paraguay');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(173, 'PE', 'Perú');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(174, 'PN', 'Islas Pitcairn');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(175, 'PF', 'Polinesia Francesa');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(176, 'PL', 'Polonia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(177, 'PT', 'Portugal');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(178, 'PR', 'Puerto Rico');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(179, 'QA', 'Qatar');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(180, 'GB', 'Reino Unido');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(181, 'RE', 'Reunión');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(182, 'RW', 'Ruanda');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(183, 'RO', 'Rumania');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(184, 'RU', 'Rusia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(185, 'EH', 'Sahara Occidental');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(186, 'SB', 'Islas Salomón');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(187, 'WS', 'Samoa');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(188, 'AS', 'Samoa Americana');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(189, 'KN', 'San Cristóbal y Nevis');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(190, 'SM', 'San Marino');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(191, 'PM', 'San Pedro y Miquelón');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(192, 'VC', 'San Vicente y las Granadinas');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(193, 'SH', 'Santa Helena');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(194, 'LC', 'Santa Lucía');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(195, 'ST', 'Santo Tomé y Príncipe');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(196, 'SN', 'Senegal');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(197, 'CS', 'Serbia y Montenegro');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(198, 'SC', 'Seychelles');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(199, 'SL', 'Sierra Leona');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(200, 'SG', 'Singapur');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(201, 'SY', 'Siria');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(202, 'SO', 'Somalia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(203, 'LK', 'Sri Lanka');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(204, 'SZ', 'Suazilandia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(205, 'ZA', 'Sudáfrica');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(206, 'SD', 'Sudán');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(207, 'SE', 'Suecia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(208, 'CH', 'Suiza');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(209, 'SR', 'Surinam');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(210, 'SJ', 'Svalbard y Jan Mayen');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(211, 'TH', 'Tailandia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(212, 'TW', 'Taiwán');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(213, 'TZ', 'Tanzania');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(214, 'TJ', 'Tayikistán');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(215, 'IO', 'Territorio Británico del Océano Índico');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(216, 'TF', 'Territorios Australes Franceses');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(217, 'TL', 'Timor Oriental');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(218, 'TG', 'Togo');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(219, 'TK', 'Tokelau');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(220, 'TO', 'Tonga');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(221, 'TT', 'Trinidad y Tobago');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(222, 'TN', 'Túnez');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(223, 'TC', 'Islas Turcas y Caicos');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(224, 'TM', 'Turkmenistán');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(225, 'TR', 'Turquía');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(226, 'TV', 'Tuvalu');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(227, 'UA', 'Ucrania');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(228, 'UG', 'Uganda');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(229, 'UY', 'Uruguay');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(230, 'UZ', 'Uzbekistán');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(231, 'VU', 'Vanuatu');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(232, 'VE', 'Venezuela');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(233, 'VN', 'Vietnam');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(234, 'VG', 'Islas Vírgenes Británicas');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(235, 'VI', 'Islas Vírgenes de los Estados Unidos');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(236, 'WF', 'Wallis y Futuna');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(237, 'YE', 'Yemen');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(238, 'DJ', 'Yibuti');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(239, 'ZM', 'Zambia');
INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
	(240, 'ZW', 'Zimbabue');
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
