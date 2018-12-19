-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.15


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema two_wheeler
--

CREATE DATABASE IF NOT EXISTS two_wheeler;
USE two_wheeler;

--
-- Definition of table `add_cus`
--

DROP TABLE IF EXISTS `add_cus`;
CREATE TABLE `add_cus` (
  `Date` date NOT NULL,
  `Vehicle_ID` varchar(45) NOT NULL,
  `Cus_ID` varchar(45) NOT NULL,
  `Cus_name` varchar(45) NOT NULL,
  `Cus_Add` varchar(45) NOT NULL,
  `Contact` bigint(20) NOT NULL,
  `Model_Name` varchar(45) NOT NULL,
  `Color` varchar(45) NOT NULL,
  KEY `Vehicle_ID` (`Vehicle_ID`),
  CONSTRAINT `Vehicle_ID` FOREIGN KEY (`Vehicle_ID`) REFERENCES `info_tab` (`VehicleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_cus`
--

/*!40000 ALTER TABLE `add_cus` DISABLE KEYS */;
INSERT INTO `add_cus` (`Date`,`Vehicle_ID`,`Cus_ID`,`Cus_name`,`Cus_Add`,`Contact`,`Model_Name`,`Color`) VALUES 
 ('2015-05-12','HDA6774','CI4531','Saurabh','280, Mota Singh Nagar',9871345231,'CBR 150R','Vibrant Orange'),
 ('2015-05-12','HDA6776','CI4532','Arun Sharma','345 Model Town, Jalandhar',8146352789,'CB Trigger','Black'),
 ('2015-05-01','HDA6775','CI4533','Kartikeyan','45 Urban Estate, Phase 1, Jalandhar',9216835641,'CB Unicorn','Imperial Red Metallic'),
 ('2015-05-06','HDA6783','CI4534','Rishabh Dhir','80 Adarsh Nagar, Jalandhar',7837847831,'CBR 250R','Cynas Grey'),
 ('2015-04-15','HDA6784','CI4535','Navroz','856, New Jawahar Nagar, Jalandhar',9878673561,'Activa','Grey');
/*!40000 ALTER TABLE `add_cus` ENABLE KEYS */;


--
-- Definition of table `info_tab`
--

DROP TABLE IF EXISTS `info_tab`;
CREATE TABLE `info_tab` (
  `VehicleID` varchar(25) NOT NULL,
  `ModelName` varchar(45) NOT NULL,
  `EngineType` varchar(45) NOT NULL,
  `Displacement` float NOT NULL,
  `MaxSpeed` int(11) NOT NULL,
  `Size` varchar(45) NOT NULL,
  `TankCapacity` float NOT NULL,
  `GClearance` int(11) NOT NULL,
  `KWeight` int(11) NOT NULL,
  `Color1` varchar(45) NOT NULL,
  `EXPrice` int(11) NOT NULL,
  `TPrice` varchar(45) NOT NULL,
  PRIMARY KEY (`VehicleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info_tab`
--

/*!40000 ALTER TABLE `info_tab` DISABLE KEYS */;
INSERT INTO `info_tab` (`VehicleID`,`ModelName`,`EngineType`,`Displacement`,`MaxSpeed`,`Size`,`TankCapacity`,`GClearance`,`KWeight`,`Color1`,`EXPrice`,`TPrice`) VALUES 
 ('HDA6768','Activa','Air-Cooled CDI Engine ',109,84,'1761mm*710mm*1147mm',5,135,110,'Trance Blue',50135,'54855'),
 ('HDA6769','Aviator','Air-Cooled CDI Engine ',109.19,83,'1802mm*703mm*1162mm',6,145,109,'Pearl Igneous Black',51622,'56447'),
 ('HDA6770','Dio','Air-Cooled CDI Engine ',109.2,83,'1781mm*710mm*1133mm',5.3,158,105,'Sports Red',48598,'53209'),
 ('HDA6771','Activa 125','Air-Cooled SI Engine ',124.99,85,'1814mm*704mm*1151mm',5.3,155,110,'Red Rebel Metallic',56525,'61699'),
 ('HDA6772','Activa I','Air-Cooled SI Engine ',109.19,83,'1795mm*705mm*1115mm',5.3,165,103,'Alpha Red Metallic',46897,'51388'),
 ('HDA6773','CD110Dream','Air-Cooled SI Engine ',109.19,86,'2009mm*737mm*1074mm',8,179,105,'Black',43520,'47771'),
 ('HDA6774','CBR 150R','Liquid-Cooled 4 Stroke SI Engine ',149.4,109,'2000mm*825mm*1120mm',13,190,138,'Vibrant Orange',124235,'134209'),
 ('HDA6775','CB Unicorn160','Air-Cooled 4 Stroke SI Engine ',162.71,106,'2045mm*757mm*1060mm',12,150,135,'Imperial Red Metallic',73445,'79875'),
 ('HDA6776','CB Trigger','Air-Cooled 4 Stroke SI Engine ',149.1,104,'2045mm*757mm*1060mm',12,175,135,'Black',69639,'75743'),
 ('HDA6778','CBF Stunner','Air-Cooled 4 Stroke SI Engine ',124.7,95,'2012mm*734mm*1116mm',10,173,126,'Sparks Red',59535,'64921'),
 ('HDA6779','CB Shiner','Air-Cooled 4 Stroke SI Engine ',124.7,93,'2012mm*726mm*1090mm',10.5,157,123,'Black',56322,'61481'),
 ('HDA6780','CB Twister','Air-Cooled 4 Stroke SI Engine ',109.19,89,'1972mm*742mm*1075mm',8,180,107,'Black',50676,'55434'),
 ('HDA6781','Dream Yuga','Air-Cooled 4 Stroke SI Engine ',109.19,8135,'2022mm*1033mm*1094mm',8,169,108,'Sports Black',51676,'56507'),
 ('HDA6782','Dream Neo','Air-Cooled 4 Stroke SI Engine ',109.19,86,'2022mm*1033mm*1094mm',8,179,107,'Alpha Red Metallic',498781,'54580'),
 ('HDA6783','CBR 250R','Liquid-Cooled 4 Stroke SI Engine ',249.6,135,'2032mm*720mm*1127mm',13,145,163,'Cynas Grey',161044,'173733'),
 ('HDA6784','Activa','Air-Cooled CDI Engine',109,84,'1761mm*710mm*1147',5,135,110,'Grey',50135,'54855'),
 ('HDA6785','Aviator','Air-Cooled CDI Engine',109.19,83,'1802mm*703mm*1162',6,145,109,'Blue',50135,'54855'),
 ('HDA6786','Dio','Air-Cooled CDI Engine',109.2,83,'1781mm*710mm*1133',5.3,158,105,'Metallic Black',48598,'56447'),
 ('HDA6787','Activa 125','Air-Cooled SI Engine',124,85,'1814mm*704mm*1151',5.3,155,110,'Metallic Blue',56525,'61899'),
 ('HDA6788','Activa I','Air-Cooled SI Engine',109.19,83,'1795mm*705mm*1115',5.3,165,103,'Black',46897,'51388'),
 ('HDA6789','CD110Dream','Air-Cooled SI Engine',109.19,86,'2009mm*737mm*1074mm',8,179,105,'Grey',43520,'47771'),
 ('HDA6790','CBR150','Liquid Cooled 4 Stroke SI Engine',149.4,109,'2000mm*825mm*1120mm',13,190,138,'Black & Caandy Palm',124235,'134209'),
 ('HDA6791','CB Unicorn160 ','Air-cooled 4 Stroke SI Engine',162.71,106,'2045mm*757mm*1060mm',12,150,135,'White',73445,'79875'),
 ('HDA6792','CB Trigger ','Air-cooled 4 Stroke SI Engine',149.1,104,'2045mm*757mm*1060mm',12,175,135,'Red',69639,'75743'),
 ('HDA6793','CB Stunner ','Air-cooled 4 Stroke SI Engine',124.7,95,'2012mm*734mm*1111mm',10,173,126,'Candy Palm Green',59535,'64921'),
 ('HDA6794','CB Shiner ','Air-cooled 4 Stroke SI Engine',124.7,93,'2012mm*762mm*1090mm',10.5,157,123,'Red Metallic',56322,'61481'),
 ('HDA6795','CB Twister','Air-cooled 4 Stroke SI Engine',109.19,89,'1972mm*742mm*1075mm',8,180,107,'Electric Yellow',50676,'55434'),
 ('HDA6796','Dream Yuga ','Air-cooled 4 Stroke SI Engine',109.19,86,'2022mm*733mm*1095mm',8,169,108,'Sports Red',51677,'56507'),
 ('HDA6797','Dream Neo ','Air-cooled 4 Stroke SI Engine',109.19,86,'2009mm*737mm*1074mm',8,179,107,'Monsoon Grey',49878,'54580'),
 ('HDA6798','CBR 250R ','Liquid-cooled 4 Stroke SI Engine',249.6,135,'2032mm*720mm*1127mm',13,145,163,'Sports Red',161044,'173733');
/*!40000 ALTER TABLE `info_tab` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
