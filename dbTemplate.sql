-- MySQL dump 10.13  Distrib 5.6.32-78.1, for Linux (x86_64)
--
-- Host: localhost    Database: eksanaly_sandbox
-- ------------------------------------------------------
-- Server version	5.6.32-78.1

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
-- Table structure for table `Package_Harvest`
--

DROP TABLE IF EXISTS `Package_Harvest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Package_Harvest` (
  `packageId` int(11) NOT NULL,
  `HarvetsName` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;



--
-- Table structure for table `audit_items`
--

DROP TABLE IF EXISTS `audit_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_items` (
  `internalId` int(11) NOT NULL AUTO_INCREMENT,
  `Id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProductCategoryName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProductCategoryType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `QuantityType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitOfMeasureId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitOfMeasureName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitOfMeasureAbbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StrainId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StrainName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitThcContent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitThcContentUnitOfMeasureId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitThcContentUnitOfMeasureName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitThcContentUnitOfMeasureAbbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitWeight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitWeightUnitOfMeasureId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitWeightUnitOfMeasureName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitWeightUnitOfMeasureAbbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`internalId`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `audit_items_active`
--

DROP TABLE IF EXISTS `audit_items_active`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_items_active` (
  `internalId` int(11) NOT NULL AUTO_INCREMENT,
  `Id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProductCategoryName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProductCategoryType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `QuantityType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitOfMeasureId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitOfMeasureName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitOfMeasureAbbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StrainId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StrainName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitThcContent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitThcContentUnitOfMeasureId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitThcContentUnitOfMeasureName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitThcContentUnitOfMeasureAbbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitWeight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitWeightUnitOfMeasureId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitWeightUnitOfMeasureName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitWeightUnitOfMeasureAbbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`internalId`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Table structure for table `audit_items_categories`
--

DROP TABLE IF EXISTS `audit_items_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_items_categories` (
  `internalId` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProductCategoryType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `QuantityType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RequiresStrain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RequiresUnitThcContent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RequiresUnitWeight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CanContainSeeds` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CanBeRemediated` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`internalId`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `audit_labtests_states`
--

DROP TABLE IF EXISTS `audit_labtests_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_labtests_states` (
  `internalId` int(11) NOT NULL AUTO_INCREMENT,
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`internalId`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `audit_labtests_types`
--

DROP TABLE IF EXISTS `audit_labtests_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_labtests_types` (
  `internalId` int(11) NOT NULL AUTO_INCREMENT,
  `Id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RequiresTestResult` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AlwaysPasses` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DependencyMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`internalId`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `audit_packages`
--

DROP TABLE IF EXISTS `audit_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_packages` (
  `internalId` int(11) NOT NULL AUTO_INCREMENT,
  `Id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PackageType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SourceHarvestNames` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Quantity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitOfMeasureName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitOfMeasureAbbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProductId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProductName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProductCategoryName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PackagedDate` datetime DEFAULT NULL,
  `InitialLabTestingState` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LabTestingState` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LabTestingStateName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LabTestingStateDate` datetime DEFAULT NULL,
  `IsProductionBatch` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProductionBatchNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsTestingSample` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsProcessValidationTestingSample` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProductRequiresRemediation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ContainsRemediatedProduct` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RemediationDate` datetime DEFAULT NULL,
  `ReceivedFromManifestNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReceivedFromFacilityLicenseNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReceivedFromFacilityName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReceivedDateTime` datetime DEFAULT NULL,
  `IsOnHold` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ArchivedDate` datetime DEFAULT NULL,
  `FinishedDate` datetime DEFAULT NULL,
  `LastModified` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`internalId`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Table structure for table `audit_packages_active`
--

DROP TABLE IF EXISTS `audit_packages_active`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_packages_active` (
  `internalId` int(11) NOT NULL AUTO_INCREMENT,
  `Id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PackageType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SourceHarvestNames` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Quantity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitOfMeasureName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitOfMeasureAbbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProductId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProductName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProductCategoryName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PackagedDate` datetime DEFAULT NULL,
  `InitialLabTestingState` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LabTestingState` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LabTestingStateName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LabTestingStateDate` datetime DEFAULT NULL,
  `IsProductionBatch` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProductionBatchNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsTestingSample` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsProcessValidationTestingSample` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProductRequiresRemediation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ContainsRemediatedProduct` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RemediationDate` datetime DEFAULT NULL,
  `ReceivedFromManifestNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReceivedFromFacilityLicenseNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReceivedFromFacilityName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReceivedDateTime` datetime DEFAULT NULL,
  `IsOnHold` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ArchivedDate` datetime DEFAULT NULL,
  `FinishedDate` datetime DEFAULT NULL,
  `LastModified` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`internalId`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `audit_strains`
--

DROP TABLE IF EXISTS `audit_strains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_strains` (
  `internalId` int(11) NOT NULL AUTO_INCREMENT,
  `Id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TestingStatus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThcLevel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CbdLevel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IndicaPercentage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SativaPercentage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Genetics` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`internalId`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `audit_strains_active`
--

DROP TABLE IF EXISTS `audit_strains_active`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_strains_active` (
  `internalId` int(11) NOT NULL AUTO_INCREMENT,
  `Id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TestingStatus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThcLevel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CbdLevel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IndicaPercentage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SativaPercentage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Genetics` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`internalId`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `audit_transfers_delivery_packages_states`
--

DROP TABLE IF EXISTS `audit_transfers_delivery_packages_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_transfers_delivery_packages_states` (
  `internalId` int(11) NOT NULL AUTO_INCREMENT,
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`internalId`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Table structure for table `audit_transfers_incoming`
--

DROP TABLE IF EXISTS `audit_transfers_incoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_transfers_incoming` (
  `internalId` int(11) NOT NULL AUTO_INCREMENT,
  `Id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ManifestNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ShipperFacilityLicenseNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ShipperFacilityName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TransporterFacilityLicenseNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TransporterFacilityName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DriverName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DriverOccupationalLicenseNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DriverVehicleLicenseNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VehicleMake` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VehicleModel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VehicleLicensePlateNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeliveryCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReceivedDeliveryCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PackageCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReceivedPackageCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime DEFAULT NULL,
  `CreatedByUserName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeliveryId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RecipientFacilityLicenseNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RecipientFacilityName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ShipmentTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ShipmentTransactionType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EstimatedDepartureDateTime` datetime DEFAULT NULL,
  `ActualDepartureDateTime` datetime DEFAULT NULL,
  `EstimatedArrivalDateTime` datetime DEFAULT NULL,
  `ActualArrivalDateTime` datetime DEFAULT NULL,
  `DeliveryPackageCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeliveryReceivedPackageCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReceivedDateTime` datetime DEFAULT NULL,
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`internalId`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Table structure for table `audit_transfers_outgoing`
--

DROP TABLE IF EXISTS `audit_transfers_outgoing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_transfers_outgoing` (
  `internalId` int(11) NOT NULL AUTO_INCREMENT,
  `Id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ManifestNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ShipperFacilityLicenseNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ShipperFacilityName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TransporterFacilityLicenseNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TransporterFacilityName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DriverName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DriverOccupationalLicenseNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DriverVehicleLicenseNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VehicleMake` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VehicleModel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VehicleLicensePlateNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeliveryCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReceivedDeliveryCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PackageCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReceivedPackageCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime DEFAULT NULL,
  `CreatedByUserName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeliveryId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RecipientFacilityLicenseNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RecipientFacilityName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ShipmentTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ShipmentTransactionType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EstimatedDepartureDateTime` datetime DEFAULT NULL,
  `ActualDepartureDateTime` datetime DEFAULT NULL,
  `EstimatedArrivalDateTime` datetime DEFAULT NULL,
  `ActualArrivalDateTime` datetime DEFAULT NULL,
  `DeliveryPackageCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeliveryReceivedPackageCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReceivedDateTime` datetime DEFAULT NULL,
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`internalId`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `audit_unitsofmeasure`
--

DROP TABLE IF EXISTS `audit_unitsofmeasure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_unitsofmeasure` (
  `internalId` int(11) NOT NULL AUTO_INCREMENT,
  `QuantityType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Abbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`internalId`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `audit_unitsofmeasure_active`
--

DROP TABLE IF EXISTS `audit_unitsofmeasure_active`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_unitsofmeasure_active` (
  `internalId` int(11) NOT NULL AUTO_INCREMENT,
  `QuantityType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Abbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`internalId`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `canabis`
--

DROP TABLE IF EXISTS `canabis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `canabis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Invoice` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `Orders` int(11) DEFAULT NULL,
  `SalesValue` float DEFAULT NULL,
  `uploadTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2354 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Table structure for table `convertToGrams`
--

DROP TABLE IF EXISTS `convertToGrams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `convertToGrams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conversionValue` float NOT NULL,
  `UnitOfMeasure` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convertToGrams`
--

LOCK TABLES `convertToGrams` WRITE;
/*!40000 ALTER TABLE `convertToGrams` DISABLE KEYS */;
INSERT INTO `convertToGrams` VALUES (1,16,'Ounces'),(2,448,'Pounds'),(3,1000,'Kilograms'),(4,0.001,'Milligrams');
/*!40000 ALTER TABLE `convertToGrams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivered_image`
--

DROP TABLE IF EXISTS `delivered_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivered_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `delivery_package_id` bigint(20) DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `ManifestNumber` varchar(255) NOT NULL,
  `recipientLicense` varchar(255) NOT NULL,
  `record_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Table structure for table `delivered_package`
--

DROP TABLE IF EXISTS `delivered_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivered_package` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `ManifestNumber` varchar(255) NOT NULL,
  `recipientLicense` varchar(255) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `delivered_package_estimate`
--

DROP TABLE IF EXISTS `delivered_package_estimate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivered_package_estimate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ManifestNumber` varchar(255) NOT NULL,
  `recipientLicense` varchar(255) NOT NULL,
  `distance` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `delivered_results`
--

DROP TABLE IF EXISTS `delivered_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivered_results` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ManifestNumber` varchar(255) NOT NULL,
  `recipientLicense` varchar(255) NOT NULL,
  `badgeId` varchar(255) NOT NULL,
  `lat` float DEFAULT NULL,
  `lng` float DEFAULT NULL,
  `comments` varchar(255) NOT NULL,
  `mimeType` varchar(255) NOT NULL,
  `signature` blob NOT NULL,
  `CreatedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `delivery_jane_transfers_outgoing`
--

DROP TABLE IF EXISTS `delivery_jane_transfers_outgoing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_jane_transfers_outgoing` (
  `internalId` int(11) NOT NULL AUTO_INCREMENT,
  `Id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ManifestNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ShipperFacilityLicenseNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ShipperFacilityName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TransporterFacilityLicenseNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TransporterFacilityName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DriverName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DriverOccupationalLicenseNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DriverVehicleLicenseNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VehicleMake` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VehicleModel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VehicleLicensePlateNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeliveryCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReceivedDeliveryCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PackageCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReceivedPackageCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDateTime` datetime DEFAULT NULL,
  `CreatedByUserName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastModified` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeliveryId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RecipientFacilityLicenseNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RecipientFacilityName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ShipmentTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ShipmentTransactionType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EstimatedDepartureDateTime` datetime DEFAULT NULL,
  `ActualDepartureDateTime` datetime DEFAULT NULL,
  `EstimatedArrivalDateTime` datetime DEFAULT NULL,
  `ActualArrivalDateTime` datetime DEFAULT NULL,
  `DeliveryPackageCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeliveryReceivedPackageCount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReceivedDateTime` datetime DEFAULT NULL,
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdOn` timestamp NULL DEFAULT NULL,
  `triggerForDeliveryOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`internalId`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `delivery_policy`
--

DROP TABLE IF EXISTS `delivery_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_policy` (
  `id` int(11) NOT NULL,
  `recipientLicense` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `signatureRequired` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idRequired` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idImageRequired` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pictureRequried` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amDelivery` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pmDelivery` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_policy`
--

LOCK TABLES `delivery_policy` WRITE;
/*!40000 ALTER TABLE `delivery_policy` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery_policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_unschedule_stop`
--

DROP TABLE IF EXISTS `delivery_unschedule_stop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_unschedule_stop` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ManifestNumber` varchar(255) NOT NULL,
  `reasonType` varchar(255) NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `comments` varchar(255) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_unschedule_stop`
--

--
-- Table structure for table `harvests`
--

DROP TABLE IF EXISTS `harvests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `harvests` (
  `internalId` int(11) NOT NULL AUTO_INCREMENT,
  `Id` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `HarvestType` varchar(255) DEFAULT NULL,
  `DryingRoomId` varchar(255) DEFAULT NULL,
  `DryingRoomName` varchar(255) DEFAULT NULL,
  `CurrentWeight` varchar(255) DEFAULT NULL,
  `TotalWasteWeight` varchar(255) DEFAULT NULL,
  `PlantCount` varchar(255) DEFAULT NULL,
  `TotalWetWeight` varchar(255) DEFAULT NULL,
  `PackageCount` varchar(255) DEFAULT NULL,
  `TotalPackagedWeight` varchar(255) DEFAULT NULL,
  `UnitOfWeightName` varchar(255) DEFAULT NULL,
  `LabTestingState` varchar(255) DEFAULT NULL,
  `LabTestingStateDate` date DEFAULT NULL,
  `IsOnHold` varchar(255) DEFAULT NULL,
  `HarvestStartDate` date DEFAULT NULL,
  `FinishedDate` date DEFAULT NULL,
  `ArchivedDate` date DEFAULT NULL,
  `LastModified` varchar(255) DEFAULT NULL,
  `Strains` varchar(255) DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  PRIMARY KEY (`internalId`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

 for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `internalId` int(11) NOT NULL AUTO_INCREMENT,
  `Id` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `ItemCategory` varchar(255) DEFAULT NULL,
  `UnitOfMeasure` varchar(255) DEFAULT NULL,
  `Strain` varchar(255) DEFAULT NULL,
  `UnitThcContent` varchar(255) DEFAULT NULL,
  `UnitThcContentUnitOfMeasure` varchar(255) DEFAULT NULL,
  `UnitWeight` varchar(255) DEFAULT NULL,
  `UnitWeightUnitOfMeasure` varchar(255) DEFAULT NULL,
  `ProductCategoryName` varchar(255) NOT NULL,
  `active` char(1) DEFAULT '1',
  PRIMARY KEY (`internalId`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Table structure for table `items_categories`
--

DROP TABLE IF EXISTS `items_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items_categories` (
  `internalId` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `ProductCategoryType` varchar(255) DEFAULT NULL,
  `QuantityType` varchar(255) DEFAULT NULL,
  `RequiresStrain` varchar(255) DEFAULT NULL,
  `RequiresUnitThcContent` varchar(255) DEFAULT NULL,
  `RequiresUnitWeight` varchar(255) DEFAULT NULL,
  `CanContainSeeds` varchar(255) DEFAULT NULL,
  `CanBeRemediated` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`internalId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `packages` (
  `internalId` int(11) NOT NULL AUTO_INCREMENT,
  `Id` varchar(255) DEFAULT NULL,
  `Label` varchar(255) DEFAULT NULL,
  `PackageType` varchar(255) DEFAULT NULL,
  `SourceHarvestNames` varchar(255) DEFAULT NULL,
  `Quantity` varchar(255) DEFAULT NULL,
  `UnitOfMeasureName` varchar(255) DEFAULT NULL,
  `UnitOfMeasureAbbreviation` varchar(255) DEFAULT NULL,
  `ProductId` varchar(255) DEFAULT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `ProductCategoryName` varchar(255) DEFAULT NULL,
  `PackagedDate` date DEFAULT NULL,
  `InitialLabTestingState` varchar(255) DEFAULT NULL,
  `LabTestingState` varchar(255) DEFAULT NULL,
  `LabTestingStateName` varchar(255) DEFAULT NULL,
  `LabTestingStateDate` date DEFAULT NULL,
  `IsProductionBatch` varchar(255) DEFAULT NULL,
  `ProductionBatchNumber` varchar(255) DEFAULT NULL,
  `IsTestingSample` varchar(255) DEFAULT NULL,
  `IsProcessValidationTestingSample` varchar(255) DEFAULT NULL,
  `ProductRequiresRemediation` varchar(255) DEFAULT NULL,
  `ContainsRemediatedProduct` varchar(255) DEFAULT NULL,
  `RemediationDate` date DEFAULT NULL,
  `ReceivedFromManifestNumber` varchar(255) DEFAULT NULL,
  `ReceivedFromFacilityLicenseNumber` varchar(255) DEFAULT NULL,
  `ReceivedFromFacilityName` varchar(255) DEFAULT NULL,
  `ReceivedDateTime` date DEFAULT NULL,
  `IsOnHold` varchar(255) DEFAULT NULL,
  `ArchivedDate` date DEFAULT NULL,
  `FinishedDate` date DEFAULT NULL,
  `LastModified` varchar(255) DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  PRIMARY KEY (`internalId`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `plantbatches`
--

DROP TABLE IF EXISTS `plantbatches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plantbatches` (
  `internalId` int(11) NOT NULL AUTO_INCREMENT,
  `Id` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Strain` varchar(255) DEFAULT NULL,
  `Count` varchar(255) DEFAULT NULL,
  `ActualDate` date DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  PRIMARY KEY (`internalId`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `plants`
--

DROP TABLE IF EXISTS `plants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plants` (
  `internalId` int(11) NOT NULL AUTO_INCREMENT,
  `Id` varchar(255) DEFAULT NULL,
  `Label` varchar(255) DEFAULT NULL,
  `PlantBatchId` varchar(255) DEFAULT NULL,
  `StrainId` varchar(255) DEFAULT NULL,
  `RoomId` varchar(255) DEFAULT NULL,
  `HarvestId` varchar(255) DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  PRIMARY KEY (`internalId`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recommendation`
--

DROP TABLE IF EXISTS `recommendation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommendation` (
  `Premise Items` int(11) DEFAULT NULL,
  `Conclusion Items` int(11) DEFAULT NULL,
  `Confidence` double DEFAULT NULL,
  `Conviction` double DEFAULT NULL,
  `Gain` double DEFAULT NULL,
  `Laplace` double DEFAULT NULL,
  `Lift` double DEFAULT NULL,
  `Ps` double DEFAULT NULL,
  `Total Support` double DEFAULT NULL,
  `Premise` mediumtext,
  `Conclusion` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `internalId` int(11) NOT NULL AUTO_INCREMENT,
  `Id` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `active` char(1) DEFAULT '1',
  PRIMARY KEY (`internalId`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `strains`
--

DROP TABLE IF EXISTS `strains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strains` (
  `internalId` int(11) NOT NULL AUTO_INCREMENT,
  `Id` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `TestingStatus` varchar(255) DEFAULT NULL,
  `ThcLevel` varchar(255) DEFAULT NULL,
  `CbdLevel` varchar(255) DEFAULT NULL,
  `IndicaPercentage` varchar(255) DEFAULT NULL,
  `SativaPercentage` varchar(255) DEFAULT NULL,
  `Genetics` varchar(255) DEFAULT NULL,
  `active` char(1) DEFAULT '1',
  PRIMARY KEY (`internalId`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `transfer_packages`
--

DROP TABLE IF EXISTS `transfer_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfer_packages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ManifestNumber` varchar(255) NOT NULL,
  `RecipientFacilityLicenseNumber` varchar(255) NOT NULL,
  `PackageId` int(11) NOT NULL,
  `PackageLabel` varchar(255) NOT NULL,
  `SourceHarvestNames` varchar(255) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `ProductCategoryName` varchar(255) NOT NULL,
  `ShipmentPackageState` varchar(255) NOT NULL,
  `ShippedQuantity` int(11) NOT NULL,
  `ShippedUnitOfMeasureName` varchar(255) NOT NULL,
  `ReceivedQuantity` int(11) NOT NULL,
  `ReceivedUnitOfMeasureName` varchar(255) NOT NULL,
  `ReceivedDateTime` datetime DEFAULT NULL,
  `createdOn` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;



--
-- Table structure for table `transfers`
--

DROP TABLE IF EXISTS `transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfers` (
  `internalId` int(11) NOT NULL AUTO_INCREMENT,
  `Id` varchar(255) DEFAULT NULL,
  `ManifestNumber` varchar(255) NOT NULL,
  `RecipientFacilityLicenseNumber` varchar(255) DEFAULT NULL,
  `RecipientFacilityName` varchar(255) DEFAULT NULL,
  `ShipmentTypeName` varchar(255) DEFAULT NULL,
  `ShipmentTransactionType` varchar(255) DEFAULT NULL,
  `EstimatedDepartureDateTime` datetime DEFAULT NULL,
  `ActualDepartureDateTime` datetime DEFAULT NULL,
  `EstimatedArrivalDateTime` datetime DEFAULT NULL,
  `ActualArrivalDateTime` datetime DEFAULT NULL,
  `PlannedRoute` varchar(255) NOT NULL,
  `DeliveryPackageCount` varchar(255) DEFAULT NULL,
  `DeliveryReceivedPackageCount` varchar(255) DEFAULT NULL,
  `ReceivedDateTime` datetime DEFAULT NULL,
  `createdOn` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`internalId`),
  KEY `Id` (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `unitsofmeasure`
--

DROP TABLE IF EXISTS `unitsofmeasure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unitsofmeasure` (
  `internalId` int(11) NOT NULL AUTO_INCREMENT,
  `QuantityType` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Abbreviation` varchar(255) DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  PRIMARY KEY (`internalId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info` (
  `user_name` varchar(30) NOT NULL,
  `user_passwd` varchar(30) NOT NULL,
  `user_group` varchar(20) NOT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-25 17:14:35
