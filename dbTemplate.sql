-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 27, 2017 at 04:36 AM
-- Server version: 5.6.32-78.1
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `eksanaly_clienty`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_harvests_active`
--

CREATE TABLE IF NOT EXISTS `audit_harvests_active` (
  `internalId` int(11) NOT NULL,
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
  `active` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `audit_harvests_inactive`
--

CREATE TABLE IF NOT EXISTS `audit_harvests_inactive` (
  `internalId` int(11) NOT NULL,
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
  `active` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `audit_harvests_onhold`
--

CREATE TABLE IF NOT EXISTS `audit_harvests_onhold` (
  `internalId` int(11) NOT NULL,
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
  `active` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `audit_items_active`
--

CREATE TABLE IF NOT EXISTS `audit_items_active` (
  `internalId` int(11) NOT NULL,
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
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_items_categories`
--

CREATE TABLE IF NOT EXISTS `audit_items_categories` (
  `internalId` int(11) NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProductCategoryType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `QuantityType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RequiresStrain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RequiresUnitThcContent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RequiresUnitWeight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CanContainSeeds` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CanBeRemediated` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_labtests_states`
--

CREATE TABLE IF NOT EXISTS `audit_labtests_states` (
  `internalId` int(11) NOT NULL,
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_labtests_types`
--

CREATE TABLE IF NOT EXISTS `audit_labtests_types` (
  `internalId` int(11) NOT NULL,
  `Id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RequiresTestResult` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AlwaysPasses` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DependencyMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_packages_active`
--

CREATE TABLE IF NOT EXISTS `audit_packages_active` (
  `internalId` int(11) NOT NULL,
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
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_packages_inactive`
--

CREATE TABLE IF NOT EXISTS `audit_packages_inactive` (
  `internalId` int(11) NOT NULL,
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
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_packages_onhold`
--

CREATE TABLE IF NOT EXISTS `audit_packages_onhold` (
  `internalId` int(11) NOT NULL,
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
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_plantbatches_active`
--

CREATE TABLE IF NOT EXISTS `audit_plantbatches_active` (
  `internalId` int(11) NOT NULL,
  `Id` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Strain` varchar(255) DEFAULT NULL,
  `Count` varchar(255) DEFAULT NULL,
  `ActualDate` date DEFAULT NULL,
  `active` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `audit_plantbatches_inactive`
--

CREATE TABLE IF NOT EXISTS `audit_plantbatches_inactive` (
  `internalId` int(11) NOT NULL,
  `Id` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Strain` varchar(255) DEFAULT NULL,
  `Count` varchar(255) DEFAULT NULL,
  `ActualDate` date DEFAULT NULL,
  `active` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `audit_plants_active`
--

CREATE TABLE IF NOT EXISTS `audit_plants_active` (
  `internalId` int(11) NOT NULL,
  `Id` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Strain` varchar(255) DEFAULT NULL,
  `Count` varchar(255) DEFAULT NULL,
  `ActualDate` date DEFAULT NULL,
  `active` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `audit_plants_flowering`
--

CREATE TABLE IF NOT EXISTS `audit_plants_flowering` (
  `internalId` int(11) NOT NULL,
  `Id` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Strain` varchar(255) DEFAULT NULL,
  `Count` varchar(255) DEFAULT NULL,
  `ActualDate` date DEFAULT NULL,
  `active` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `audit_plants_inactive`
--

CREATE TABLE IF NOT EXISTS `audit_plants_inactive` (
  `internalId` int(11) NOT NULL,
  `Id` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Strain` varchar(255) DEFAULT NULL,
  `Count` varchar(255) DEFAULT NULL,
  `ActualDate` date DEFAULT NULL,
  `active` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `audit_plants_onhold`
--

CREATE TABLE IF NOT EXISTS `audit_plants_onhold` (
  `internalId` int(11) NOT NULL,
  `Id` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Strain` varchar(255) DEFAULT NULL,
  `Count` varchar(255) DEFAULT NULL,
  `ActualDate` date DEFAULT NULL,
  `active` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `audit_plants_vegetative`
--

CREATE TABLE IF NOT EXISTS `audit_plants_vegetative` (
  `internalId` int(11) NOT NULL,
  `Id` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Strain` varchar(255) DEFAULT NULL,
  `Count` varchar(255) DEFAULT NULL,
  `ActualDate` date DEFAULT NULL,
  `active` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `audit_rooms_active`
--

CREATE TABLE IF NOT EXISTS `audit_rooms_active` (
  `internalId` int(11) NOT NULL,
  `Id` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `active` char(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `audit_strains_active`
--

CREATE TABLE IF NOT EXISTS `audit_strains_active` (
  `internalId` int(11) NOT NULL,
  `Id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TestingStatus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThcLevel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CbdLevel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IndicaPercentage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SativaPercentage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Genetics` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_transfers_delivery_packages_states`
--

CREATE TABLE IF NOT EXISTS `audit_transfers_delivery_packages_states` (
  `internalId` int(11) NOT NULL,
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_transfers_incoming`
--

CREATE TABLE IF NOT EXISTS `audit_transfers_incoming` (
  `internalId` int(11) NOT NULL,
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
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_transfers_outgoing`
--

CREATE TABLE IF NOT EXISTS `audit_transfers_outgoing` (
  `internalId` int(11) NOT NULL,
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
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_unitsofmeasure`
--

CREATE TABLE IF NOT EXISTS `audit_unitsofmeasure` (
  `internalId` int(11) NOT NULL,
  `QuantityType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Abbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_unitsofmeasure_active`
--

CREATE TABLE IF NOT EXISTS `audit_unitsofmeasure_active` (
  `internalId` int(11) NOT NULL,
  `QuantityType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Abbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `convertToGrams`
--

drop TABLE IF  EXISTS convertToGrams;

CREATE TABLE IF NOT EXISTS `convertToGrams` (
  `id` int(11) NOT NULL,
  `conversionValue` float NOT NULL,
  `UnitOfMeasure` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `convertToGrams`
--

INSERT INTO `convertToGrams` (`id`, `conversionValue`, `UnitOfMeasure`) VALUES
(1, 16, 'Ounces'),
(2, 448, 'Pounds'),
(3, 1000, 'Kilograms'),
(4, 0.001, 'Milligrams');

-- --------------------------------------------------------

--
-- Table structure for table `delivered_image`
--

CREATE TABLE IF NOT EXISTS `delivered_image` (
  `id` bigint(20) NOT NULL,
  `delivery_package_id` bigint(20) DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `ManifestNumber` varchar(255) NOT NULL,
  `recipientLicense` varchar(255) NOT NULL,
  `record_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delivered_package`
--

CREATE TABLE IF NOT EXISTS `delivered_package` (
  `id` bigint(20) NOT NULL,
  `label` varchar(255) NOT NULL,
  `ManifestNumber` varchar(255) NOT NULL,
  `recipientLicense` varchar(255) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delivered_package_estimate`
--

CREATE TABLE IF NOT EXISTS `delivered_package_estimate` (
  `id` bigint(20) NOT NULL,
  `ManifestNumber` varchar(255) NOT NULL,
  `recipientLicense` varchar(255) NOT NULL,
  `distance` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delivered_results`
--

CREATE TABLE IF NOT EXISTS `delivered_results` (
  `id` bigint(20) NOT NULL,
  `ManifestNumber` varchar(255) NOT NULL,
  `recipientLicense` varchar(255) NOT NULL,
  `badgeId` varchar(255) NOT NULL,
  `lat` float DEFAULT NULL,
  `lng` float DEFAULT NULL,
  `comments` varchar(255) NOT NULL,
  `mimeType` varchar(255) NOT NULL,
  `signature` blob NOT NULL,
  `CreatedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_jane_transfers_outgoing`
--

CREATE TABLE IF NOT EXISTS `delivery_jane_transfers_outgoing` (
  `internalId` int(11) NOT NULL,
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
  `triggerForDeliveryOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_policy`
--

CREATE TABLE IF NOT EXISTS `delivery_policy` (
  `id` int(11) NOT NULL,
  `recipientLicense` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `signatureRequired` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idRequired` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idImageRequired` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pictureRequried` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amDelivery` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pmDelivery` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_unschedule_stop`
--

CREATE TABLE IF NOT EXISTS `delivery_unschedule_stop` (
  `id` bigint(20) NOT NULL,
  `ManifestNumber` varchar(255) NOT NULL,
  `reasonType` varchar(255) NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `comments` varchar(255) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `harvests`
--

CREATE TABLE IF NOT EXISTS `harvests` (
  `internalId` int(11) NOT NULL,
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
  `active` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `internalId` int(11) NOT NULL,
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
  `active` char(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items_categories`
--

CREATE TABLE IF NOT EXISTS `items_categories` (
  `internalId` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `ProductCategoryType` varchar(255) DEFAULT NULL,
  `QuantityType` varchar(255) DEFAULT NULL,
  `RequiresStrain` varchar(255) DEFAULT NULL,
  `RequiresUnitThcContent` varchar(255) DEFAULT NULL,
  `RequiresUnitWeight` varchar(255) DEFAULT NULL,
  `CanContainSeeds` varchar(255) DEFAULT NULL,
  `CanBeRemediated` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE IF NOT EXISTS `packages` (
  `internalId` int(11) NOT NULL,
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
  `active` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Package_Harvest`
--

CREATE TABLE IF NOT EXISTS `Package_Harvest` (
  `packageId` int(11) NOT NULL,
  `HarvetsName` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `plantbatches`
--

CREATE TABLE IF NOT EXISTS `plantbatches` (
  `internalId` int(11) NOT NULL,
  `Id` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Strain` varchar(255) DEFAULT NULL,
  `Count` varchar(255) DEFAULT NULL,
  `ActualDate` date DEFAULT NULL,
  `active` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE IF NOT EXISTS `plants` (
  `internalId` int(11) NOT NULL,
  `Id` varchar(255) DEFAULT NULL,
  `Label` varchar(255) DEFAULT NULL,
  `PlantBatchId` varchar(255) DEFAULT NULL,
  `StrainId` varchar(255) DEFAULT NULL,
  `RoomId` varchar(255) DEFAULT NULL,
  `HarvestId` varchar(255) DEFAULT NULL,
  `active` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recommendation`
--

CREATE TABLE IF NOT EXISTS `recommendation` (
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

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE IF NOT EXISTS `rooms` (
  `internalId` int(11) NOT NULL,
  `Id` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `active` char(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `strains`
--

CREATE TABLE IF NOT EXISTS `strains` (
  `internalId` int(11) NOT NULL,
  `Id` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `TestingStatus` varchar(255) DEFAULT NULL,
  `ThcLevel` varchar(255) DEFAULT NULL,
  `CbdLevel` varchar(255) DEFAULT NULL,
  `IndicaPercentage` varchar(255) DEFAULT NULL,
  `SativaPercentage` varchar(255) DEFAULT NULL,
  `Genetics` varchar(255) DEFAULT NULL,
  `active` char(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE IF NOT EXISTS `transfers` (
  `internalId` int(11) NOT NULL,
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
  `createdOn` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_packages`
--

CREATE TABLE IF NOT EXISTS `transfer_packages` (
  `id` int(11) NOT NULL,
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
  `createdOn` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `unitsofmeasure`
--

CREATE TABLE IF NOT EXISTS `unitsofmeasure` (
  `internalId` int(11) NOT NULL,
  `QuantityType` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Abbreviation` varchar(255) DEFAULT NULL,
  `active` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `user_name` varchar(30) NOT NULL,
  `user_passwd` varchar(30) NOT NULL,
  `user_group` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_harvests_active`
--
ALTER TABLE `audit_harvests_active`
  ADD PRIMARY KEY (`internalId`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `audit_harvests_inactive`
--
ALTER TABLE `audit_harvests_inactive`
  ADD PRIMARY KEY (`internalId`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `audit_harvests_onhold`
--
ALTER TABLE `audit_harvests_onhold`
  ADD PRIMARY KEY (`internalId`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `audit_items_active`
--
ALTER TABLE `audit_items_active`
  ADD PRIMARY KEY (`internalId`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `audit_items_categories`
--
ALTER TABLE `audit_items_categories`
  ADD PRIMARY KEY (`internalId`);

--
-- Indexes for table `audit_labtests_states`
--
ALTER TABLE `audit_labtests_states`
  ADD PRIMARY KEY (`internalId`);

--
-- Indexes for table `audit_labtests_types`
--
ALTER TABLE `audit_labtests_types`
  ADD PRIMARY KEY (`internalId`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `audit_packages_active`
--
ALTER TABLE `audit_packages_active`
  ADD PRIMARY KEY (`internalId`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `audit_packages_inactive`
--
ALTER TABLE `audit_packages_inactive`
  ADD PRIMARY KEY (`internalId`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `audit_packages_onhold`
--
ALTER TABLE `audit_packages_onhold`
  ADD PRIMARY KEY (`internalId`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `audit_plantbatches_active`
--
ALTER TABLE `audit_plantbatches_active`
  ADD PRIMARY KEY (`internalId`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `audit_plantbatches_inactive`
--
ALTER TABLE `audit_plantbatches_inactive`
  ADD PRIMARY KEY (`internalId`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `audit_plants_active`
--
ALTER TABLE `audit_plants_active`
  ADD PRIMARY KEY (`internalId`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `audit_plants_flowering`
--
ALTER TABLE `audit_plants_flowering`
  ADD PRIMARY KEY (`internalId`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `audit_plants_inactive`
--
ALTER TABLE `audit_plants_inactive`
  ADD PRIMARY KEY (`internalId`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `audit_plants_onhold`
--
ALTER TABLE `audit_plants_onhold`
  ADD PRIMARY KEY (`internalId`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `audit_plants_vegetative`
--
ALTER TABLE `audit_plants_vegetative`
  ADD PRIMARY KEY (`internalId`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `audit_rooms_active`
--
ALTER TABLE `audit_rooms_active`
  ADD PRIMARY KEY (`internalId`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `audit_strains_active`
--
ALTER TABLE `audit_strains_active`
  ADD PRIMARY KEY (`internalId`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `audit_transfers_delivery_packages_states`
--
ALTER TABLE `audit_transfers_delivery_packages_states`
  ADD PRIMARY KEY (`internalId`);

--
-- Indexes for table `audit_transfers_incoming`
--
ALTER TABLE `audit_transfers_incoming`
  ADD PRIMARY KEY (`internalId`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `audit_transfers_outgoing`
--
ALTER TABLE `audit_transfers_outgoing`
  ADD PRIMARY KEY (`internalId`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `audit_unitsofmeasure`
--
ALTER TABLE `audit_unitsofmeasure`
  ADD PRIMARY KEY (`internalId`);

--
-- Indexes for table `audit_unitsofmeasure_active`
--
ALTER TABLE `audit_unitsofmeasure_active`
  ADD PRIMARY KEY (`internalId`);

--
-- Indexes for table `convertToGrams`
--
ALTER TABLE `convertToGrams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivered_image`
--
ALTER TABLE `delivered_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivered_package`
--
ALTER TABLE `delivered_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivered_package_estimate`
--
ALTER TABLE `delivered_package_estimate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivered_results`
--
ALTER TABLE `delivered_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_jane_transfers_outgoing`
--
ALTER TABLE `delivery_jane_transfers_outgoing`
  ADD PRIMARY KEY (`internalId`);

--
-- Indexes for table `delivery_unschedule_stop`
--
ALTER TABLE `delivery_unschedule_stop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `harvests`
--
ALTER TABLE `harvests`
  ADD PRIMARY KEY (`internalId`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`internalId`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `items_categories`
--
ALTER TABLE `items_categories`
  ADD PRIMARY KEY (`internalId`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`internalId`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `plantbatches`
--
ALTER TABLE `plantbatches`
  ADD PRIMARY KEY (`internalId`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`internalId`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`internalId`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `strains`
--
ALTER TABLE `strains`
  ADD PRIMARY KEY (`internalId`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`internalId`), ADD KEY `Id` (`Id`);

--
-- Indexes for table `transfer_packages`
--
ALTER TABLE `transfer_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unitsofmeasure`
--
ALTER TABLE `unitsofmeasure`
  ADD PRIMARY KEY (`internalId`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_harvests_active`
--
ALTER TABLE `audit_harvests_active`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `audit_harvests_inactive`
--
ALTER TABLE `audit_harvests_inactive`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `audit_harvests_onhold`
--
ALTER TABLE `audit_harvests_onhold`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `audit_items_active`
--
ALTER TABLE `audit_items_active`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `audit_items_categories`
--
ALTER TABLE `audit_items_categories`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `audit_labtests_states`
--
ALTER TABLE `audit_labtests_states`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `audit_labtests_types`
--
ALTER TABLE `audit_labtests_types`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `audit_packages_active`
--
ALTER TABLE `audit_packages_active`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `audit_packages_inactive`
--
ALTER TABLE `audit_packages_inactive`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `audit_packages_onhold`
--
ALTER TABLE `audit_packages_onhold`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `audit_plantbatches_active`
--
ALTER TABLE `audit_plantbatches_active`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `audit_plantbatches_inactive`
--
ALTER TABLE `audit_plantbatches_inactive`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `audit_plants_active`
--
ALTER TABLE `audit_plants_active`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `audit_plants_flowering`
--
ALTER TABLE `audit_plants_flowering`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `audit_plants_inactive`
--
ALTER TABLE `audit_plants_inactive`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `audit_plants_onhold`
--
ALTER TABLE `audit_plants_onhold`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `audit_plants_vegetative`
--
ALTER TABLE `audit_plants_vegetative`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `audit_rooms_active`
--
ALTER TABLE `audit_rooms_active`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `audit_strains_active`
--
ALTER TABLE `audit_strains_active`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `audit_transfers_delivery_packages_states`
--
ALTER TABLE `audit_transfers_delivery_packages_states`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `audit_transfers_incoming`
--
ALTER TABLE `audit_transfers_incoming`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `audit_transfers_outgoing`
--
ALTER TABLE `audit_transfers_outgoing`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `audit_unitsofmeasure`
--
ALTER TABLE `audit_unitsofmeasure`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `audit_unitsofmeasure_active`
--
ALTER TABLE `audit_unitsofmeasure_active`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `convertToGrams`
--
ALTER TABLE `convertToGrams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `delivered_image`
--
ALTER TABLE `delivered_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `delivered_package`
--
ALTER TABLE `delivered_package`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `delivered_package_estimate`
--
ALTER TABLE `delivered_package_estimate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `delivered_results`
--
ALTER TABLE `delivered_results`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=296;
--
-- AUTO_INCREMENT for table `delivery_jane_transfers_outgoing`
--
ALTER TABLE `delivery_jane_transfers_outgoing`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `delivery_unschedule_stop`
--
ALTER TABLE `delivery_unschedule_stop`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `harvests`
--
ALTER TABLE `harvests`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `items_categories`
--
ALTER TABLE `items_categories`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plantbatches`
--
ALTER TABLE `plantbatches`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plants`
--
ALTER TABLE `plants`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `strains`
--
ALTER TABLE `strains`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `transfer_packages`
--
ALTER TABLE `transfer_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `unitsofmeasure`
--
ALTER TABLE `unitsofmeasure`
  MODIFY `internalId` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
