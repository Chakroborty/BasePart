SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema ERIparameters
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `ERIparameters` ;
CREATE SCHEMA IF NOT EXISTS `ERIparameters` DEFAULT CHARACTER SET cp1251 COLLATE cp1251_general_ci ;
USE `ERIparameters` ;

-- -----------------------------------------------------
-- Table `ERIparameters`.`PartType`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`PartType` (
  `idPartType` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NULL,
  PRIMARY KEY (`idPartType`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idPartTipe_UNIQUE` ON `ERIparameters`.`PartType` (`idPartType` ASC);

CREATE UNIQUE INDEX `Name_UNIQUE` ON `ERIparameters`.`PartType` (`Name` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`Pic3D`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`Pic3D` (
  `idPic3D` INT NOT NULL AUTO_INCREMENT,
  `Pic3NAME` VARCHAR(45) NULL,
  `Pic3D` BLOB NULL,
  PRIMARY KEY (`idPic3D`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idPic3D_UNIQUE` ON `ERIparameters`.`Pic3D` (`idPic3D` ASC);

CREATE UNIQUE INDEX `Pic3Dcol_UNIQUE` ON `ERIparameters`.`Pic3D` (`Pic3NAME` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`PartSubType`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`PartSubType` (
  `idPartSubTipe` INT NOT NULL AUTO_INCREMENT,
  `PartType_idPartType` INT NULL,
  `Pic3D_idPic3D` INT NULL,
  `SubTipe` VARCHAR(100) NULL,
  `SubTipe1` VARCHAR(100) NULL,
  `SubTipe2` VARCHAR(100) NULL,
  `SubTipe3` VARCHAR(100) NULL,
  `Klass` VARCHAR(160) NULL,
  `ParName` VARCHAR(45) NULL,
  `ParName1` VARCHAR(45) NULL,
  `ParName2` VARCHAR(45) NULL,
  `ParName3` VARCHAR(45) NULL,
  `ParName4` VARCHAR(45) NULL,
  `ParName5` VARCHAR(45) NULL,
  `ParName6` VARCHAR(45) NULL,
  `ParName7` VARCHAR(45) NULL,
  `ParName8` VARCHAR(45) NULL,
  `ParName9` VARCHAR(45) NULL,
  `Type` VARCHAR(45) NULL,
  `ObshNTD` INT(11) NULL,
  `ALLPIC3D` BLOB NULL,
  `ALLPIC3DName` VARCHAR(100) NULL,
  `DatashetPath` VARCHAR(512) NULL,
  `DatashetSubPath` VARCHAR(512) NULL,
  PRIMARY KEY (`idPartSubTipe`),
  CONSTRAINT `fk_PartSubTipe_PartTipe1`
    FOREIGN KEY (`PartType_idPartType`)
    REFERENCES `ERIparameters`.`PartType` (`idPartType`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PartSubType_Pic3D1`
    FOREIGN KEY (`Pic3D_idPic3D`)
    REFERENCES `ERIparameters`.`Pic3D` (`idPic3D`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_PartSubTipe_PartTipe1_idx` ON `ERIparameters`.`PartSubType` (`PartType_idPartType` ASC);

CREATE UNIQUE INDEX `idPartSubTipe_UNIQUE` ON `ERIparameters`.`PartSubType` (`idPartSubTipe` ASC);

CREATE INDEX `fk_PartSubType_Pic3D1_idx` ON `ERIparameters`.`PartSubType` (`Pic3D_idPic3D` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`TIP_REA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`TIP_REA` (
  `idTIP_REA` INT NOT NULL AUTO_INCREMENT,
  `Naime` VARCHAR(45) NULL,
  PRIMARY KEY (`idTIP_REA`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idTIP_REA_UNIQUE` ON `ERIparameters`.`TIP_REA` (`idTIP_REA` ASC);

CREATE UNIQUE INDEX `Naime_UNIQUE` ON `ERIparameters`.`TIP_REA` (`Naime` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`Strani`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`Strani` (
  `idStrani` INT NOT NULL AUTO_INCREMENT,
  `Strana` VARCHAR(45) NULL,
  PRIMARY KEY (`idStrani`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idStrani_UNIQUE` ON `ERIparameters`.`Strani` (`idStrani` ASC);

CREATE UNIQUE INDEX `Strana_UNIQUE` ON `ERIparameters`.`Strani` (`Strana` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`Atestacia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`Atestacia` (
  `idAtestacia` INT NOT NULL AUTO_INCREMENT,
  `AtestaciaTipe` VARCHAR(45) NULL,
  PRIMARY KEY (`idAtestacia`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idAtestacia_UNIQUE` ON `ERIparameters`.`Atestacia` (`idAtestacia` ASC);

CREATE UNIQUE INDEX `AtestaciaTipe_UNIQUE` ON `ERIparameters`.`Atestacia` (`AtestaciaTipe` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`Firms`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`Firms` (
  `idFirms` INT NOT NULL AUTO_INCREMENT,
  `Strani_idStrani` INT NOT NULL,
  `FirmNAME` VARCHAR(45) NULL,
  `SSilka` VARCHAR(512) NULL,
  `Atestacia_idAtestacia` INT NULL,
  PRIMARY KEY (`idFirms`),
  CONSTRAINT `fk_Firms_Strani1`
    FOREIGN KEY (`Strani_idStrani`)
    REFERENCES `ERIparameters`.`Strani` (`idStrani`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Firms_Atestacia1`
    FOREIGN KEY (`Atestacia_idAtestacia`)
    REFERENCES `ERIparameters`.`Atestacia` (`idAtestacia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Firms_Strani1_idx` ON `ERIparameters`.`Firms` (`Strani_idStrani` ASC);

CREATE UNIQUE INDEX `idFirms_UNIQUE` ON `ERIparameters`.`Firms` (`idFirms` ASC);

CREATE INDEX `fk_Firms_Atestacia1_idx` ON `ERIparameters`.`Firms` (`Atestacia_idAtestacia` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`Edinici`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`Edinici` (
  `idEdinici` INT NOT NULL AUTO_INCREMENT,
  `EdiniciName` VARCHAR(45) NULL,
  PRIMARY KEY (`idEdinici`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idEdinici_UNIQUE` ON `ERIparameters`.`Edinici` (`idEdinici` ASC);

CREATE UNIQUE INDEX `EdiniciName_UNIQUE` ON `ERIparameters`.`Edinici` (`EdiniciName` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`PCADLib`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`PCADLib` (
  `idPCADLib` INT NOT NULL AUTO_INCREMENT,
  `PCADLibName` VARCHAR(100) NULL,
  PRIMARY KEY (`idPCADLib`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idPCADLib_UNIQUE` ON `ERIparameters`.`PCADLib` (`idPCADLib` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`IPCPattern`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`IPCPattern` (
  `idIPCPattern` INT NOT NULL AUTO_INCREMENT,
  `PatternName` VARCHAR(45) NULL,
  `PinCol` INT NULL,
  PRIMARY KEY (`idIPCPattern`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idPattern_UNIQUE` ON `ERIparameters`.`IPCPattern` (`idIPCPattern` ASC);

CREATE UNIQUE INDEX `PatternName_UNIQUE` ON `ERIparameters`.`IPCPattern` (`PatternName` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`PCADPattern`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`PCADPattern` (
  `idPattern` INT NOT NULL AUTO_INCREMENT,
  `IPCPattern_idIPCPattern` INT NULL,
  `PatternName` VARCHAR(254) NULL,
  `Pattern3D` BLOB NULL,
  `PCADLib_idPCADLib` INT NOT NULL,
  PRIMARY KEY (`idPattern`),
  CONSTRAINT `fk_Pattern_IPCPattern1`
    FOREIGN KEY (`IPCPattern_idIPCPattern`)
    REFERENCES `ERIparameters`.`IPCPattern` (`idIPCPattern`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PCADPattern_PCADLib1`
    FOREIGN KEY (`PCADLib_idPCADLib`)
    REFERENCES `ERIparameters`.`PCADLib` (`idPCADLib`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idPattern_UNIQUE` ON `ERIparameters`.`PCADPattern` (`idPattern` ASC);

CREATE INDEX `fk_Pattern_IPCPattern1_idx` ON `ERIparameters`.`PCADPattern` (`IPCPattern_idIPCPattern` ASC);

CREATE INDEX `fk_PCADPattern_PCADLib1_idx` ON `ERIparameters`.`PCADPattern` (`PCADLib_idPCADLib` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`PCADSymbols`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`PCADSymbols` (
  `idSymbols` INT NOT NULL AUTO_INCREMENT,
  `Symbol` VARCHAR(45) NULL,
  `SymbolsPIC` BLOB NULL,
  `PCADLib_idPCADLib` INT NOT NULL,
  PRIMARY KEY (`idSymbols`),
  CONSTRAINT `fk_PCADSymbols_PCADLib1`
    FOREIGN KEY (`PCADLib_idPCADLib`)
    REFERENCES `ERIparameters`.`PCADLib` (`idPCADLib`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idSymbols_UNIQUE` ON `ERIparameters`.`PCADSymbols` (`idSymbols` ASC);

CREATE UNIQUE INDEX `Symbol_UNIQUE` ON `ERIparameters`.`PCADSymbols` (`Symbol` ASC);

CREATE INDEX `fk_PCADSymbols_PCADLib1_idx` ON `ERIparameters`.`PCADSymbols` (`PCADLib_idPCADLib` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`PCADLiBparts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`PCADLiBparts` (
  `idPCADLiBparts` INT NOT NULL AUTO_INCREMENT,
  `PCADLib_idPCADLib` INT NOT NULL,
  `PCADLiBpartName` VARCHAR(252) NULL,
  `PCADPattern_idPattern` INT NOT NULL,
  `PCADSymbols_idSymbols` INT NOT NULL,
  PRIMARY KEY (`idPCADLiBparts`),
  CONSTRAINT `fk_PCADLiBparts_PCADLib1`
    FOREIGN KEY (`PCADLib_idPCADLib`)
    REFERENCES `ERIparameters`.`PCADLib` (`idPCADLib`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PCADLiBparts_PCADPattern1`
    FOREIGN KEY (`PCADPattern_idPattern`)
    REFERENCES `ERIparameters`.`PCADPattern` (`idPattern`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PCADLiBparts_PCADSymbols1`
    FOREIGN KEY (`PCADSymbols_idSymbols`)
    REFERENCES `ERIparameters`.`PCADSymbols` (`idSymbols`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_PCADLiBparts_PCADLib1_idx` ON `ERIparameters`.`PCADLiBparts` (`PCADLib_idPCADLib` ASC);

CREATE INDEX `fk_PCADLiBparts_PCADPattern1_idx` ON `ERIparameters`.`PCADLiBparts` (`PCADPattern_idPattern` ASC);

CREATE INDEX `fk_PCADLiBparts_PCADSymbols1_idx` ON `ERIparameters`.`PCADLiBparts` (`PCADSymbols_idSymbols` ASC);

CREATE UNIQUE INDEX `idPCADLiBparts_UNIQUE` ON `ERIparameters`.`PCADLiBparts` (`idPCADLiBparts` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`LibPaths`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`LibPaths` (
  `idLibPath` INT NOT NULL AUTO_INCREMENT,
  `LibPath` VARCHAR(256) NULL,
  PRIMARY KEY (`idLibPath`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idLibPath_UNIQUE` ON `ERIparameters`.`LibPaths` (`idLibPath` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`LibRefs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`LibRefs` (
  `idLibRef` INT NOT NULL AUTO_INCREMENT,
  `LibRef` VARCHAR(256) NULL,
  `LibPaths_idLibPath` INT NOT NULL,
  PRIMARY KEY (`idLibRef`),
  CONSTRAINT `fk_LibRefs_LibPaths1`
    FOREIGN KEY (`LibPaths_idLibPath`)
    REFERENCES `ERIparameters`.`LibPaths` (`idLibPath`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idLibRef_UNIQUE` ON `ERIparameters`.`LibRefs` (`idLibRef` ASC);

CREATE INDEX `fk_LibRefs_LibPaths1_idx` ON `ERIparameters`.`LibRefs` (`LibPaths_idLibPath` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`FootprPaths`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`FootprPaths` (
  `idFootprPath` INT NOT NULL AUTO_INCREMENT,
  `FootprPath` VARCHAR(256) NULL,
  PRIMARY KEY (`idFootprPath`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idFootprPath_UNIQUE` ON `ERIparameters`.`FootprPaths` (`idFootprPath` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`FootprRefs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`FootprRefs` (
  `idFootprRef` INT NOT NULL AUTO_INCREMENT,
  `FootprRef` VARCHAR(256) NULL,
  `FootprPaths_idFootprPath` INT NOT NULL,
  `IPCPattern_idIPCPattern` INT NULL,
  PRIMARY KEY (`idFootprRef`),
  CONSTRAINT `fk_FootprRefs_FootprPaths1`
    FOREIGN KEY (`FootprPaths_idFootprPath`)
    REFERENCES `ERIparameters`.`FootprPaths` (`idFootprPath`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_FootprRefs_IPCPattern1`
    FOREIGN KEY (`IPCPattern_idIPCPattern`)
    REFERENCES `ERIparameters`.`IPCPattern` (`idIPCPattern`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idFootprRef_UNIQUE` ON `ERIparameters`.`FootprRefs` (`idFootprRef` ASC);

CREATE INDEX `fk_FootprRefs_FootprPaths1_idx` ON `ERIparameters`.`FootprRefs` (`FootprPaths_idFootprPath` ASC);

CREATE INDEX `fk_FootprRefs_IPCPattern1_idx` ON `ERIparameters`.`FootprRefs` (`IPCPattern_idIPCPattern` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`Dblib`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`Dblib` (
  `idDblib` INT NOT NULL AUTO_INCREMENT,
  `DblibNAME` VARCHAR(45) NULL,
  PRIMARY KEY (`idDblib`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idDblib_UNIQUE` ON `ERIparameters`.`Dblib` (`idDblib` ASC);

CREATE UNIQUE INDEX `DblibNAME_UNIQUE` ON `ERIparameters`.`Dblib` (`DblibNAME` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`AltiumParts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`AltiumParts` (
  `idAltiumPart` INT NOT NULL AUTO_INCREMENT,
  `LibRefs_idLibRef` INT NOT NULL,
  `FootprRefs_idFootprRef` INT NOT NULL,
  `Dblib_idDblib` INT NULL,
  `AltiumPart` VARCHAR(256) NULL,
  PRIMARY KEY (`idAltiumPart`),
  CONSTRAINT `fk_AltiumParts_LibRefs1`
    FOREIGN KEY (`LibRefs_idLibRef`)
    REFERENCES `ERIparameters`.`LibRefs` (`idLibRef`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_AltiumParts_FootprRefs1`
    FOREIGN KEY (`FootprRefs_idFootprRef`)
    REFERENCES `ERIparameters`.`FootprRefs` (`idFootprRef`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_AltiumParts_Dblib1`
    FOREIGN KEY (`Dblib_idDblib`)
    REFERENCES `ERIparameters`.`Dblib` (`idDblib`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idAltiumPart_UNIQUE` ON `ERIparameters`.`AltiumParts` (`idAltiumPart` ASC);

CREATE INDEX `fk_AltiumParts_LibRefs1_idx` ON `ERIparameters`.`AltiumParts` (`LibRefs_idLibRef` ASC);

CREATE INDEX `fk_AltiumParts_FootprRefs1_idx` ON `ERIparameters`.`AltiumParts` (`FootprRefs_idFootprRef` ASC);

CREATE INDEX `fk_AltiumParts_Dblib1_idx` ON `ERIparameters`.`AltiumParts` (`Dblib_idDblib` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`Podrazdelenie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`Podrazdelenie` (
  `idPodrazdelenie` INT NOT NULL AUTO_INCREMENT,
  `PodrNum` INT NULL,
  `PodrName` VARCHAR(45) NULL,
  PRIMARY KEY (`idPodrazdelenie`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERIparameters`.`Doljnost`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`Doljnost` (
  `idDoljnost` INT NOT NULL AUTO_INCREMENT,
  `DoljnostName` VARCHAR(45) NULL,
  PRIMARY KEY (`idDoljnost`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERIparameters`.`UserStatus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`UserStatus` (
  `idUserStatus` INT NOT NULL AUTO_INCREMENT,
  `Status` VARCHAR(100) NULL,
  `StaNum` INT NOT NULL,
  PRIMARY KEY (`idUserStatus`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idUserStatus_UNIQUE` ON `ERIparameters`.`UserStatus` (`idUserStatus` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`Person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`Person` (
  `idPerson` INT NOT NULL AUTO_INCREMENT,
  `Podrazdelenie_idPodrazdelenie` INT NULL,
  `Doljnost_idDoljnost` INT NULL,
  `UserStatus_idUserStatus` INT NOT NULL,
  `Login` VARCHAR(45) NULL,
  `Password` VARCHAR(45) NULL,
  `Name` VARCHAR(45) NULL,
  `Otchestvo` VARCHAR(45) NULL,
  `Famili` VARCHAR(45) NULL,
  PRIMARY KEY (`idPerson`),
  CONSTRAINT `fk_Rabotnik_Podrazdelenie1`
    FOREIGN KEY (`Podrazdelenie_idPodrazdelenie`)
    REFERENCES `ERIparameters`.`Podrazdelenie` (`idPodrazdelenie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Rabotnik_Doljnost1`
    FOREIGN KEY (`Doljnost_idDoljnost`)
    REFERENCES `ERIparameters`.`Doljnost` (`idDoljnost`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Person_UserStatus1`
    FOREIGN KEY (`UserStatus_idUserStatus`)
    REFERENCES `ERIparameters`.`UserStatus` (`idUserStatus`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Rabotnik_Podrazdelenie1_idx` ON `ERIparameters`.`Person` (`Podrazdelenie_idPodrazdelenie` ASC);

CREATE INDEX `fk_Rabotnik_Doljnost1_idx` ON `ERIparameters`.`Person` (`Doljnost_idDoljnost` ASC);

CREATE UNIQUE INDEX `RabotnikName_UNIQUE` ON `ERIparameters`.`Person` (`Login` ASC);

CREATE INDEX `fk_Person_UserStatus1_idx` ON `ERIparameters`.`Person` (`UserStatus_idUserStatus` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`CADkomponents`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`CADkomponents` (
  `idCADkomponents` INT NOT NULL AUTO_INCREMENT,
  `Pic3D_idPic3D` INT NULL DEFAULT NULL,
  `PCADLiBparts_idPCADLiBparts` INT NULL DEFAULT NULL,
  `AltiumParts_idAltiumPart` INT NULL DEFAULT NULL,
  `Person_idPerson` INT NOT NULL,
  `PartNumber` VARCHAR(252) NOT NULL,
  `CADkomponentDATE` DATETIME NOT NULL,
  PRIMARY KEY (`idCADkomponents`),
  CONSTRAINT `fk_CADkomponents_Pic3D1`
    FOREIGN KEY (`Pic3D_idPic3D`)
    REFERENCES `ERIparameters`.`Pic3D` (`idPic3D`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CADkomponents_PCADLiBparts1`
    FOREIGN KEY (`PCADLiBparts_idPCADLiBparts`)
    REFERENCES `ERIparameters`.`PCADLiBparts` (`idPCADLiBparts`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CADkomponents_AltiumParts1`
    FOREIGN KEY (`AltiumParts_idAltiumPart`)
    REFERENCES `ERIparameters`.`AltiumParts` (`idAltiumPart`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CADkomponents_Person1`
    FOREIGN KEY (`Person_idPerson`)
    REFERENCES `ERIparameters`.`Person` (`idPerson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idCADkomponents_UNIQUE` ON `ERIparameters`.`CADkomponents` (`idCADkomponents` ASC);

CREATE INDEX `fk_CADkomponents_Pic3D1_idx` ON `ERIparameters`.`CADkomponents` (`Pic3D_idPic3D` ASC);

CREATE INDEX `fk_CADkomponents_PCADLiBparts1_idx` ON `ERIparameters`.`CADkomponents` (`PCADLiBparts_idPCADLiBparts` ASC);

CREATE INDEX `fk_CADkomponents_AltiumParts1_idx` ON `ERIparameters`.`CADkomponents` (`AltiumParts_idAltiumPart` ASC);

CREATE INDEX `fk_CADkomponents_Person1_idx` ON `ERIparameters`.`CADkomponents` (`Person_idPerson` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`OblPrimenenia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`OblPrimenenia` (
  `idOblPrimenenia` INT NOT NULL,
  `OblName` VARCHAR(45) NULL,
  PRIMARY KEY (`idOblPrimenenia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERIparameters`.`Perspektiva`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`Perspektiva` (
  `idPerspektiva` INT NOT NULL AUTO_INCREMENT,
  `PerspektivaName` VARCHAR(45) NULL,
  `Ball` INT NULL,
  PRIMARY KEY (`idPerspektiva`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idPerspektiva_UNIQUE` ON `ERIparameters`.`Perspektiva` (`idPerspektiva` ASC);

CREATE UNIQUE INDEX `PerspektivaName_UNIQUE` ON `ERIparameters`.`Perspektiva` (`PerspektivaName` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`Patents`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`Patents` (
  `idPatents` INT NOT NULL AUTO_INCREMENT,
  `PatentNumber` VARCHAR(100) NULL,
  `PatentTheme` VARCHAR(256) NULL,
  `PatentTag1` VARCHAR(100) NULL,
  `PatentTag2` VARCHAR(100) NULL,
  `PatentTag3` VARCHAR(100) NULL,
  `PatentTag4` VARCHAR(100) NULL,
  `PatentTag5` VARCHAR(100) NULL,
  `PatentTag6` VARCHAR(100) NULL,
  PRIMARY KEY (`idPatents`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idPatents_UNIQUE` ON `ERIparameters`.`Patents` (`idPatents` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`Parts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`Parts` (
  `idParts` INT NOT NULL AUTO_INCREMENT,
  `PartSubTipe_idPartSubTipe` INT NULL,
  `TIP_REA_idTIP_REA` INT NULL,
  `OblPrimenenia_idOblPrimenenia` INT NULL,
  `Firms_idFirmsI` INT NULL,
  `Firms_idFirms` INT NULL,
  `Patents_idPatents` INT NULL,
  `Strani_idStranaRazrab` INT NULL,
  `CADkomponents_idCADkomponents` INT NULL,
  `Perspektiva_idPerspektiva` INT NULL,
  `Person_idPerson` INT NULL,
  `Edinici_idEdinici` INT NULL,
  `PartImKey` VARCHAR(100) NULL,
  `PartName` VARCHAR(250) NULL,
  `PartFULLName` VARCHAR(250) NULL,
  `Value` DECIMAL NULL,
  `TplusXR` DOUBLE NULL,
  `TminXR` DOUBLE NULL,
  `TplusRAB` DOUBLE NULL,
  `TminRAB` DOUBLE NULL,
  `Voltaj` DOUBLE NULL,
  `Tolerans` DOUBLE NULL,
  `ParamVal` DECIMAL NULL,
  `ParamVal1` DECIMAL NULL,
  `ParamVal2` DECIMAL NULL,
  `ParamVal3` DECIMAL NULL,
  `ParamVal4` DECIMAL NULL,
  `ParamVal5` DECIMAL NULL,
  `ParamVal6` DECIMAL NULL,
  `ParamVal7` DECIMAL NULL,
  `ParamVal8` DECIMAL NULL,
  `ParamVal9` DECIMAL NULL,
  `Shifr` LONGBLOB NULL,
  `Funkcional` LONGBLOB NULL,
  `OsnParam` LONGBLOB NULL,
  `Datasheet` LONGBLOB NULL,
  `DatasheetLong` LONGBLOB NULL,
  `DateTime` DATETIME NULL,
  PRIMARY KEY (`idParts`),
  CONSTRAINT `fk_Parts_PartSubTipe`
    FOREIGN KEY (`PartSubTipe_idPartSubTipe`)
    REFERENCES `ERIparameters`.`PartSubType` (`idPartSubTipe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Parts_TIP_REA1`
    FOREIGN KEY (`TIP_REA_idTIP_REA`)
    REFERENCES `ERIparameters`.`TIP_REA` (`idTIP_REA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Parts_Firms1`
    FOREIGN KEY (`Firms_idFirms`)
    REFERENCES `ERIparameters`.`Firms` (`idFirms`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Parts_Strani1`
    FOREIGN KEY (`Strani_idStranaRazrab`)
    REFERENCES `ERIparameters`.`Strani` (`idStrani`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Parts_Edinicii1`
    FOREIGN KEY (`Edinici_idEdinici`)
    REFERENCES `ERIparameters`.`Edinici` (`idEdinici`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Parts_CADkomponents1`
    FOREIGN KEY (`CADkomponents_idCADkomponents`)
    REFERENCES `ERIparameters`.`CADkomponents` (`idCADkomponents`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Parts_OblPrimenenia1`
    FOREIGN KEY (`OblPrimenenia_idOblPrimenenia`)
    REFERENCES `ERIparameters`.`OblPrimenenia` (`idOblPrimenenia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Parts_Perspektiva1`
    FOREIGN KEY (`Perspektiva_idPerspektiva`)
    REFERENCES `ERIparameters`.`Perspektiva` (`idPerspektiva`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Parts_Person1`
    FOREIGN KEY (`Person_idPerson`)
    REFERENCES `ERIparameters`.`Person` (`idPerson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Parts_Patents1`
    FOREIGN KEY (`Patents_idPatents`)
    REFERENCES `ERIparameters`.`Patents` (`idPatents`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Parts_PartSubTipe_idx` ON `ERIparameters`.`Parts` (`PartSubTipe_idPartSubTipe` ASC);

CREATE INDEX `fk_Parts_TIP_REA1_idx` ON `ERIparameters`.`Parts` (`TIP_REA_idTIP_REA` ASC);

CREATE INDEX `fk_Parts_Firms1_idx` ON `ERIparameters`.`Parts` (`Firms_idFirms` ASC);

CREATE INDEX `fk_Parts_Strani1_idx` ON `ERIparameters`.`Parts` (`Strani_idStranaRazrab` ASC);

CREATE INDEX `fk_Parts_Edinicii1_idx` ON `ERIparameters`.`Parts` (`Edinici_idEdinici` ASC);

CREATE UNIQUE INDEX `idParts_UNIQUE` ON `ERIparameters`.`Parts` (`idParts` ASC);

CREATE INDEX `fk_Parts_CADkomponents1_idx` ON `ERIparameters`.`Parts` (`CADkomponents_idCADkomponents` ASC);

CREATE INDEX `fk_Parts_OblPrimenenia1_idx` ON `ERIparameters`.`Parts` (`OblPrimenenia_idOblPrimenenia` ASC);

CREATE INDEX `fk_Parts_Perspektiva1_idx` ON `ERIparameters`.`Parts` (`Perspektiva_idPerspektiva` ASC);

CREATE INDEX `fk_Parts_Person1_idx` ON `ERIparameters`.`Parts` (`Person_idPerson` ASC);

CREATE UNIQUE INDEX `PartName_UNIQUE` ON `ERIparameters`.`Parts` (`PartImKey` ASC);

CREATE INDEX `fk_Parts_Patents1_idx` ON `ERIparameters`.`Parts` (`Patents_idPatents` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`Zakaz`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`Zakaz` (
  `idZakaz` INT NOT NULL AUTO_INCREMENT,
  `Zakaz` VARCHAR(45) NULL,
  `ZakazShifr` VARCHAR(45) NULL,
  `ZakazDEC` VARCHAR(45) NULL,
  PRIMARY KEY (`idZakaz`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `Zakaz_UNIQUE` ON `ERIparameters`.`Zakaz` (`Zakaz` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`Ustroistva`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`Ustroistva` (
  `idUstroistva` INT NOT NULL AUTO_INCREMENT,
  `Ustroistva` VARCHAR(45) NULL,
  PRIMARY KEY (`idUstroistva`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `Ustroistva_UNIQUE` ON `ERIparameters`.`Ustroistva` (`Ustroistva` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`IspolnUST`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`IspolnUST` (
  `idIspolnUST` INT NOT NULL AUTO_INCREMENT,
  `Ustroistva_idUstroistva` INT NULL,
  `IspolnUST` VARCHAR(45) NULL,
  `IspolnUSTDEC` VARCHAR(45) NULL,
  PRIMARY KEY (`idIspolnUST`),
  CONSTRAINT `fk_IspolnUST_Ustroistva1`
    FOREIGN KEY (`Ustroistva_idUstroistva`)
    REFERENCES `ERIparameters`.`Ustroistva` (`idUstroistva`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_IspolnUST_Ustroistva1_idx` ON `ERIparameters`.`IspolnUST` (`Ustroistva_idUstroistva` ASC);

CREATE UNIQUE INDEX `IspolnUST_UNIQUE` ON `ERIparameters`.`IspolnUST` (`IspolnUST` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`UstrZakaz`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`UstrZakaz` (
  `idUstrZakaz` INT NOT NULL AUTO_INCREMENT,
  `Zakaz_idZakaz` INT NOT NULL,
  `IspolnUST_idIspolnUST` INT NOT NULL,
  `Zaimstvovan` TINYINT(1) NULL,
  PRIMARY KEY (`idUstrZakaz`),
  CONSTRAINT `fk_UstrZakaz_Zakaz1`
    FOREIGN KEY (`Zakaz_idZakaz`)
    REFERENCES `ERIparameters`.`Zakaz` (`idZakaz`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_UstrZakaz_IspolnUST1`
    FOREIGN KEY (`IspolnUST_idIspolnUST`)
    REFERENCES `ERIparameters`.`IspolnUST` (`idIspolnUST`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_UstrZakaz_Zakaz1_idx` ON `ERIparameters`.`UstrZakaz` (`Zakaz_idZakaz` ASC);

CREATE INDEX `fk_UstrZakaz_IspolnUST1_idx` ON `ERIparameters`.`UstrZakaz` (`IspolnUST_idIspolnUST` ASC);

CREATE UNIQUE INDEX `Zaimstvovan_UNIQUE` ON `ERIparameters`.`UstrZakaz` (`Zaimstvovan` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`SostavUstr`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`SostavUstr` (
  `idSostavUstr` INT NOT NULL AUTO_INCREMENT,
  `IspolnUST_idIspolnUST` INT NOT NULL,
  `IspolnUST_idIspolnUST1` INT NOT NULL,
  PRIMARY KEY (`idSostavUstr`),
  CONSTRAINT `fk_SostavUstr_IspolnUST1`
    FOREIGN KEY (`IspolnUST_idIspolnUST`)
    REFERENCES `ERIparameters`.`IspolnUST` (`idIspolnUST`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_SostavUstr_IspolnUST2`
    FOREIGN KEY (`IspolnUST_idIspolnUST1`)
    REFERENCES `ERIparameters`.`IspolnUST` (`idIspolnUST`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_SostavUstr_IspolnUST1_idx` ON `ERIparameters`.`SostavUstr` (`IspolnUST_idIspolnUST` ASC);

CREATE INDEX `fk_SostavUstr_IspolnUST2_idx` ON `ERIparameters`.`SostavUstr` (`IspolnUST_idIspolnUST1` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`PartsUsroistv`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`PartsUsroistv` (
  `idPartsUsroistv` INT NOT NULL AUTO_INCREMENT,
  `Parts_idParts` INT NOT NULL,
  `IspolnUST_idIspolnUST` INT NOT NULL,
  PRIMARY KEY (`idPartsUsroistv`),
  CONSTRAINT `fk_PartsUsroistv_Parts1`
    FOREIGN KEY (`Parts_idParts`)
    REFERENCES `ERIparameters`.`Parts` (`idParts`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PartsUsroistv_IspolnUST1`
    FOREIGN KEY (`IspolnUST_idIspolnUST`)
    REFERENCES `ERIparameters`.`IspolnUST` (`idIspolnUST`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_PartsUsroistv_Parts1_idx` ON `ERIparameters`.`PartsUsroistv` (`Parts_idParts` ASC);

CREATE INDEX `fk_PartsUsroistv_IspolnUST1_idx` ON `ERIparameters`.`PartsUsroistv` (`IspolnUST_idIspolnUST` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`Analog`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`Analog` (
  `idAnalog` INT NOT NULL AUTO_INCREMENT,
  `AnalogNAME` VARCHAR(45) NULL,
  PRIMARY KEY (`idAnalog`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idAnalog_UNIQUE` ON `ERIparameters`.`Analog` (`idAnalog` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`Razrabotchik`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`Razrabotchik` (
  `idRazrabotchik` INT NOT NULL AUTO_INCREMENT,
  `Rabotnik_idRabotnik` INT NOT NULL,
  `IspolnUST_idIspolnUST` INT NOT NULL,
  PRIMARY KEY (`idRazrabotchik`),
  CONSTRAINT `fk_Razrabotchik_Rabotnik1`
    FOREIGN KEY (`Rabotnik_idRabotnik`)
    REFERENCES `ERIparameters`.`Person` (`idPerson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Razrabotchik_IspolnUST1`
    FOREIGN KEY (`IspolnUST_idIspolnUST`)
    REFERENCES `ERIparameters`.`IspolnUST` (`idIspolnUST`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Razrabotchik_Rabotnik1_idx` ON `ERIparameters`.`Razrabotchik` (`Rabotnik_idRabotnik` ASC);

CREATE INDEX `fk_Razrabotchik_IspolnUST1_idx` ON `ERIparameters`.`Razrabotchik` (`IspolnUST_idIspolnUST` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`MexanoKlimt`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`MexanoKlimt` (
  `idMexanoKlimt` INT NOT NULL AUTO_INCREMENT,
  `GruppaZ` VARCHAR(45) NULL,
  `Opisanie` LONGBLOB NULL,
  `TplusXR` DOUBLE NULL,
  `TminXR` DOUBLE NULL,
  `TplusRAB` DOUBLE NULL,
  `TminRAB` DOUBLE NULL,
  PRIMARY KEY (`idMexanoKlimt`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idMexanoKlimt_UNIQUE` ON `ERIparameters`.`MexanoKlimt` (`idMexanoKlimt` ASC);

CREATE UNIQUE INDEX `GruppaZ_UNIQUE` ON `ERIparameters`.`MexanoKlimt` (`GruppaZ` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`SpiskiRazr`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`SpiskiRazr` (
  `idSpickiRazr` INT NOT NULL AUTO_INCREMENT,
  `SpisokIma` VARCHAR(45) NULL,
  PRIMARY KEY (`idSpickiRazr`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idSpickiRazr_UNIQUE` ON `ERIparameters`.`SpiskiRazr` (`idSpickiRazr` ASC);

CREATE UNIQUE INDEX `SpisokIma_UNIQUE` ON `ERIparameters`.`SpiskiRazr` (`SpisokIma` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`PartSpisok`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`PartSpisok` (
  `idPartsSpisok` INT NOT NULL AUTO_INCREMENT,
  `Parts_idParts` INT NOT NULL,
  `SpiskiRazr_idSpickiRazr` INT NOT NULL,
  `PartSubType_idPartSubTipe` INT NOT NULL,
  PRIMARY KEY (`idPartsSpisok`),
  CONSTRAINT `fk_PartsSpisok_Parts1`
    FOREIGN KEY (`Parts_idParts`)
    REFERENCES `ERIparameters`.`Parts` (`idParts`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PartsSpisok_SpiskiRazr1`
    FOREIGN KEY (`SpiskiRazr_idSpickiRazr`)
    REFERENCES `ERIparameters`.`SpiskiRazr` (`idSpickiRazr`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PartSpisok_PartSubType1`
    FOREIGN KEY (`PartSubType_idPartSubTipe`)
    REFERENCES `ERIparameters`.`PartSubType` (`idPartSubTipe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idPartsSpisok_UNIQUE` ON `ERIparameters`.`PartSpisok` (`idPartsSpisok` ASC);

CREATE INDEX `fk_PartsSpisok_Parts1_idx` ON `ERIparameters`.`PartSpisok` (`Parts_idParts` ASC);

CREATE INDEX `fk_PartsSpisok_SpiskiRazr1_idx` ON `ERIparameters`.`PartSpisok` (`SpiskiRazr_idSpickiRazr` ASC);

CREATE INDEX `fk_PartSpisok_PartSubType1_idx` ON `ERIparameters`.`PartSpisok` (`PartSubType_idPartSubTipe` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`SpisokAnalog`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`SpisokAnalog` (
  `idSpisokAnalog` INT NOT NULL,
  `Parts_idParts` INT NOT NULL,
  `Analog_idAnalog` INT NOT NULL,
  `Person_idPerson` INT NOT NULL,
  PRIMARY KEY (`idSpisokAnalog`),
  CONSTRAINT `fk_SpisokAnalog_Parts1`
    FOREIGN KEY (`Parts_idParts`)
    REFERENCES `ERIparameters`.`Parts` (`idParts`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_SpisokAnalog_Analog1`
    FOREIGN KEY (`Analog_idAnalog`)
    REFERENCES `ERIparameters`.`Analog` (`idAnalog`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_SpisokAnalog_Person1`
    FOREIGN KEY (`Person_idPerson`)
    REFERENCES `ERIparameters`.`Person` (`idPerson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_SpisokAnalog_Parts1_idx` ON `ERIparameters`.`SpisokAnalog` (`Parts_idParts` ASC);

CREATE INDEX `fk_SpisokAnalog_Analog1_idx` ON `ERIparameters`.`SpisokAnalog` (`Analog_idAnalog` ASC);

CREATE INDEX `fk_SpisokAnalog_Person1_idx` ON `ERIparameters`.`SpisokAnalog` (`Person_idPerson` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`CARTS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`CARTS` (
  `idCARDS` INT NOT NULL,
  `CARTNUMBER` VARCHAR(256) NULL,
  `CARTNAME` VARCHAR(256) NULL,
  `Par1` VARCHAR(256) NULL,
  `Par2` VARCHAR(256) NULL,
  `Par3` VARCHAR(256) NULL,
  `Par4` VARCHAR(256) NULL,
  `Par5` VARCHAR(256) NULL,
  `Par6` VARCHAR(256) NULL,
  `Par7` VARCHAR(256) NULL,
  `Par8` VARCHAR(256) NULL,
  `Par9` VARCHAR(256) NULL,
  `Par10` VARCHAR(256) NULL,
  `Par11` VARCHAR(256) NULL,
  `Par12` VARCHAR(256) NULL,
  `Par13` VARCHAR(256) NULL,
  `Par14` VARCHAR(256) NULL,
  `Par15` VARCHAR(256) NULL,
  `Par16` VARCHAR(256) NULL,
  `Par17` VARCHAR(256) NULL,
  `Par18` VARCHAR(256) NULL,
  `Par19` VARCHAR(256) NULL,
  `Par20` VARCHAR(256) NULL,
  `Par21` VARCHAR(256) NULL,
  `Par22` VARCHAR(256) NULL,
  `Par23` VARCHAR(256) NULL,
  `Par24` VARCHAR(256) NULL,
  `Par25` VARCHAR(256) NULL,
  `Par26` VARCHAR(256) NULL,
  `Par27` VARCHAR(256) NULL,
  `Par28` VARCHAR(256) NULL,
  `Par29` VARCHAR(256) NULL,
  `Par30` VARCHAR(256) NULL,
  `Par31` VARCHAR(256) NULL,
  PRIMARY KEY (`idCARDS`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERIparameters`.`vSHEME`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`vSHEME` (
  `idpoNTD` INT NOT NULL,
  `CARDS_idCARDS` INT NOT NULL,
  `Person_idPerson` INT NOT NULL,
  `Time` DATETIME NULL,
  `vSHEME` VARCHAR(45) NULL,
  `vSHEME1` VARCHAR(45) NULL,
  `vSHEME2` VARCHAR(45) NULL,
  `vSHEME3` VARCHAR(45) NULL,
  `vSHEME4` VARCHAR(45) NULL,
  `vSHEME5` VARCHAR(45) NULL,
  `vSHEME6` VARCHAR(45) NULL,
  `vSHEME7` VARCHAR(45) NULL,
  `vSHEME8` VARCHAR(45) NULL,
  `vSHEME9` VARCHAR(45) NULL,
  `vSHEME10` VARCHAR(45) NULL,
  `vSHEME11` VARCHAR(45) NULL,
  `vSHEME12` VARCHAR(45) NULL,
  `Parts_idParts` INT NOT NULL,
  `PartSubType_idPartSubTipe` INT NOT NULL,
  PRIMARY KEY (`idpoNTD`),
  CONSTRAINT `fk_poNTD_CARDS10`
    FOREIGN KEY (`CARDS_idCARDS`)
    REFERENCES `ERIparameters`.`CARTS` (`idCARDS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_vSHEME_Person1`
    FOREIGN KEY (`Person_idPerson`)
    REFERENCES `ERIparameters`.`Person` (`idPerson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_vSHEME_Parts1`
    FOREIGN KEY (`Parts_idParts`)
    REFERENCES `ERIparameters`.`Parts` (`idParts`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_vSHEME_PartSubType1`
    FOREIGN KEY (`PartSubType_idPartSubTipe`)
    REFERENCES `ERIparameters`.`PartSubType` (`idPartSubTipe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_poNTD_CARDS1_idx` ON `ERIparameters`.`vSHEME` (`CARDS_idCARDS` ASC);

CREATE INDEX `fk_vSHEME_Person1_idx` ON `ERIparameters`.`vSHEME` (`Person_idPerson` ASC);

CREATE INDEX `fk_vSHEME_Parts1_idx` ON `ERIparameters`.`vSHEME` (`Parts_idParts` ASC);

CREATE INDEX `fk_vSHEME_PartSubType1_idx` ON `ERIparameters`.`vSHEME` (`PartSubType_idPartSubTipe` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`Thems`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`Thems` (
  `idThems` INT NOT NULL AUTO_INCREMENT,
  `ThemName` VARCHAR(256) NULL,
  `ThemTag` VARCHAR(100) NULL,
  `ThemTag1` VARCHAR(100) NULL,
  `ThemTag2` VARCHAR(100) NULL,
  `ThemTag3` VARCHAR(100) NULL,
  `ThemTag4` VARCHAR(100) NULL,
  `ThemTag5` VARCHAR(100) NULL,
  PRIMARY KEY (`idThems`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idThems_UNIQUE` ON `ERIparameters`.`Thems` (`idThems` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`ThemsPatents`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`ThemsPatents` (
  `idThemsPatents` INT NOT NULL AUTO_INCREMENT,
  `Thems_idThems` INT NOT NULL,
  `Patents_idPatents` INT NOT NULL,
  `ThemsPatentscol` VARCHAR(45) NULL,
  PRIMARY KEY (`idThemsPatents`),
  CONSTRAINT `fk_ThemsPatents_Thems1`
    FOREIGN KEY (`Thems_idThems`)
    REFERENCES `ERIparameters`.`Thems` (`idThems`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ThemsPatents_Patents1`
    FOREIGN KEY (`Patents_idPatents`)
    REFERENCES `ERIparameters`.`Patents` (`idPatents`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idThemsPatents_UNIQUE` ON `ERIparameters`.`ThemsPatents` (`idThemsPatents` ASC);

CREATE INDEX `fk_ThemsPatents_Thems1_idx` ON `ERIparameters`.`ThemsPatents` (`Thems_idThems` ASC);

CREATE INDEX `fk_ThemsPatents_Patents1_idx` ON `ERIparameters`.`ThemsPatents` (`Patents_idPatents` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`Folders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`Folders` (
  `idFolder` INT NOT NULL AUTO_INCREMENT,
  `Folder` VARCHAR(512) NULL,
  PRIMARY KEY (`idFolder`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idFolder_UNIQUE` ON `ERIparameters`.`Folders` (`idFolder` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`TFolders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`TFolders` (
  `idTFolder` INT NOT NULL AUTO_INCREMENT,
  `TFolder` VARCHAR(512) NULL,
  PRIMARY KEY (`idTFolder`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idFolder_UNIQUE` ON `ERIparameters`.`TFolders` (`idTFolder` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`Subpaths`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`Subpaths` (
  `idSubpaths` INT NOT NULL AUTO_INCREMENT,
  `Folders_idFolder` INT NOT NULL,
  `Subpath` VARCHAR(512) NULL,
  `TFolders_idTFolder` INT NOT NULL,
  `Priority` INT NULL,
  PRIMARY KEY (`idSubpaths`),
  CONSTRAINT `fk_Subpaths_Folders1`
    FOREIGN KEY (`Folders_idFolder`)
    REFERENCES `ERIparameters`.`Folders` (`idFolder`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Subpaths_TFolders1`
    FOREIGN KEY (`TFolders_idTFolder`)
    REFERENCES `ERIparameters`.`TFolders` (`idTFolder`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idSubpaths_UNIQUE` ON `ERIparameters`.`Subpaths` (`idSubpaths` ASC);

CREATE INDEX `fk_Subpaths_Folders1_idx` ON `ERIparameters`.`Subpaths` (`Folders_idFolder` ASC);

CREATE INDEX `fk_Subpaths_TFolders1_idx` ON `ERIparameters`.`Subpaths` (`TFolders_idTFolder` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`Datashets`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`Datashets` (
  `idDatashets` INT NOT NULL AUTO_INCREMENT,
  `DatashetName` VARCHAR(150) NULL,
  `DatashetPath` VARCHAR(512) NULL,
  `Folder` VARCHAR(512) NULL,
  `DatashetSubPath` VARCHAR(512) NULL,
  `Subpaths_idSubpaths` INT NOT NULL,
  `Person_idPerson` INT NOT NULL,
  `Data_tame` DATETIME NULL,
  PRIMARY KEY (`idDatashets`),
  CONSTRAINT `fk_Datashets_Person1`
    FOREIGN KEY (`Person_idPerson`)
    REFERENCES `ERIparameters`.`Person` (`idPerson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Datashets_Subpaths1`
    FOREIGN KEY (`Subpaths_idSubpaths`)
    REFERENCES `ERIparameters`.`Subpaths` (`idSubpaths`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Datashets_Person1_idx` ON `ERIparameters`.`Datashets` (`Person_idPerson` ASC);

CREATE INDEX `fk_Datashets_Subpaths1_idx` ON `ERIparameters`.`Datashets` (`Subpaths_idSubpaths` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`PartsData`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`PartsData` (
  `idPartsData` INT NOT NULL,
  `PartsDataTip` VARCHAR(128) NULL,
  `Datashets_idDatashets` INT NOT NULL,
  `Parts_idParts` INT NOT NULL,
  `PartSubType_idPartSubTipe` INT NOT NULL,
  PRIMARY KEY (`idPartsData`),
  CONSTRAINT `fk_PartsData_Datashets1`
    FOREIGN KEY (`Datashets_idDatashets`)
    REFERENCES `ERIparameters`.`Datashets` (`idDatashets`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PartsData_Parts1`
    FOREIGN KEY (`Parts_idParts`)
    REFERENCES `ERIparameters`.`Parts` (`idParts`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PartsData_PartSubType1`
    FOREIGN KEY (`PartSubType_idPartSubTipe`)
    REFERENCES `ERIparameters`.`PartSubType` (`idPartSubTipe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_PartsData_Datashets1_idx` ON `ERIparameters`.`PartsData` (`Datashets_idDatashets` ASC);

CREATE INDEX `fk_PartsData_Parts1_idx` ON `ERIparameters`.`PartsData` (`Parts_idParts` ASC);

CREATE INDEX `fk_PartsData_PartSubType1_idx` ON `ERIparameters`.`PartsData` (`PartSubType_idPartSubTipe` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`TAO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`TAO` (
  `idTAO` INT NOT NULL,
  `TAOName` VARCHAR(150) NULL,
  `TAOPath` VARCHAR(512) NULL,
  `TAOSubPath` VARCHAR(512) NULL,
  `Person_idPerson` INT NOT NULL,
  `Subpaths_idSubpaths` INT NOT NULL,
  PRIMARY KEY (`idTAO`),
  CONSTRAINT `fk_TAO_Person1`
    FOREIGN KEY (`Person_idPerson`)
    REFERENCES `ERIparameters`.`Person` (`idPerson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TAO_Subpaths1`
    FOREIGN KEY (`Subpaths_idSubpaths`)
    REFERENCES `ERIparameters`.`Subpaths` (`idSubpaths`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_TAO_Person1_idx` ON `ERIparameters`.`TAO` (`Person_idPerson` ASC);

CREATE INDEX `fk_TAO_Subpaths1_idx` ON `ERIparameters`.`TAO` (`Subpaths_idSubpaths` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`PartsTAO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`PartsTAO` (
  `idPartsTAO` INT NOT NULL,
  `Parts_idParts` INT NOT NULL,
  `TAO_idTAO` INT NOT NULL,
  `PartsTAOName` VARCHAR(256) NULL,
  `PartsTAOcol` VARCHAR(45) NULL,
  `TAOPriority` INT NULL,
  PRIMARY KEY (`idPartsTAO`),
  CONSTRAINT `fk_PartsTAO_Parts1`
    FOREIGN KEY (`Parts_idParts`)
    REFERENCES `ERIparameters`.`Parts` (`idParts`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PartsTAO_TAO1`
    FOREIGN KEY (`TAO_idTAO`)
    REFERENCES `ERIparameters`.`TAO` (`idTAO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_PartsTAO_Parts1_idx` ON `ERIparameters`.`PartsTAO` (`Parts_idParts` ASC);

CREATE INDEX `fk_PartsTAO_TAO1_idx` ON `ERIparameters`.`PartsTAO` (`TAO_idTAO` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`PartPoNTD`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`PartPoNTD` (
  `idPartPoNTD` INT NOT NULL AUTO_INCREMENT,
  `Parts_idParts` INT NOT NULL,
  `CARTS_idCARDS` INT NOT NULL,
  `PartSubType_idPartSubTipe` INT NOT NULL,
  `Person_idPerson` INT NOT NULL,
  `PartPoNTD` VARCHAR(512) NULL,
  `PartPoNTDDTAME` DATETIME NULL,
  `poNTDcol` DECIMAL NULL,
  `poNTDcol1` DECIMAL NULL,
  `poNTDcol2` DECIMAL NULL,
  `poNTDcol3` DECIMAL NULL,
  `poNTDcol4` DECIMAL NULL,
  `poNTDcol5` DECIMAL NULL,
  `poNTDcol6` DECIMAL NULL,
  `poNTDcol7` DECIMAL NULL,
  `poNTDcol8` DECIMAL NULL,
  `poNTDcol9` DECIMAL NULL,
  `poNTDcol10` DECIMAL NULL,
  `poNTDcol11` DECIMAL NULL,
  `poNTDcol12` DECIMAL NULL,
  `poNTDcol13` DECIMAL NULL,
  `poNTDcol14` DECIMAL NULL,
  `poNTDcol15` DECIMAL NULL,
  `poNTDcol16` DECIMAL NULL,
  `poNTDcol17` DECIMAL NULL,
  `poNTDcol18` DECIMAL NULL,
  `poNTDcol19` DECIMAL NULL,
  `poNTDcol20` DECIMAL NULL,
  `poNTDcol21` DECIMAL NULL,
  `poNTDcol22` DECIMAL NULL,
  `poNTDcol23` DECIMAL NULL,
  `poNTDcol24` DECIMAL NULL,
  `poNTDcol25` DECIMAL NULL,
  `poNTDcol26` DECIMAL NULL,
  `poNTDcol27` DECIMAL NULL,
  `poNTDcol28` DECIMAL NULL,
  `poNTDcol29` DECIMAL NULL,
  `poNTDcol30` DECIMAL NULL,
  PRIMARY KEY (`idPartPoNTD`),
  CONSTRAINT `fk_PatPoNTD_Parts1`
    FOREIGN KEY (`Parts_idParts`)
    REFERENCES `ERIparameters`.`Parts` (`idParts`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PartPoNTD_PartSubType1`
    FOREIGN KEY (`PartSubType_idPartSubTipe`)
    REFERENCES `ERIparameters`.`PartSubType` (`idPartSubTipe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PartPoNTD_Person1`
    FOREIGN KEY (`Person_idPerson`)
    REFERENCES `ERIparameters`.`Person` (`idPerson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PartPoNTD_CARTS1`
    FOREIGN KEY (`CARTS_idCARDS`)
    REFERENCES `ERIparameters`.`CARTS` (`idCARDS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idPatPoNTD_UNIQUE` ON `ERIparameters`.`PartPoNTD` (`idPartPoNTD` ASC);

CREATE INDEX `fk_PatPoNTD_Parts1_idx` ON `ERIparameters`.`PartPoNTD` (`Parts_idParts` ASC);

CREATE INDEX `fk_PartPoNTD_PartSubType1_idx` ON `ERIparameters`.`PartPoNTD` (`PartSubType_idPartSubTipe` ASC);

CREATE INDEX `fk_PartPoNTD_Person1_idx` ON `ERIparameters`.`PartPoNTD` (`Person_idPerson` ASC);

CREATE INDEX `fk_PartPoNTD_CARTS1_idx` ON `ERIparameters`.`PartPoNTD` (`CARTS_idCARDS` ASC);


-- -----------------------------------------------------
-- Table `ERIparameters`.`PartVsheme`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERIparameters`.`PartVsheme` (
  `idPatVsheme` INT NOT NULL AUTO_INCREMENT,
  `vSHEME_idpoNTD` INT NOT NULL,
  `Person_idPerson` INT NOT NULL,
  `IspolnUST_idIspolnUST` INT NOT NULL,
  `PatVshemecol` VARCHAR(100) NULL,
  `Time` DATETIME NULL,
  PRIMARY KEY (`idPatVsheme`),
  CONSTRAINT `fk_PatVsheme_vSHEME1`
    FOREIGN KEY (`vSHEME_idpoNTD`)
    REFERENCES `ERIparameters`.`vSHEME` (`idpoNTD`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PatVsheme_Person1`
    FOREIGN KEY (`Person_idPerson`)
    REFERENCES `ERIparameters`.`Person` (`idPerson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PartVsheme_IspolnUST1`
    FOREIGN KEY (`IspolnUST_idIspolnUST`)
    REFERENCES `ERIparameters`.`IspolnUST` (`idIspolnUST`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idPatPoNTD_UNIQUE` ON `ERIparameters`.`PartVsheme` (`idPatVsheme` ASC);

CREATE INDEX `fk_PatVsheme_vSHEME1_idx` ON `ERIparameters`.`PartVsheme` (`vSHEME_idpoNTD` ASC);

CREATE INDEX `fk_PatVsheme_Person1_idx` ON `ERIparameters`.`PartVsheme` (`Person_idPerson` ASC);

CREATE INDEX `fk_PartVsheme_IspolnUST1_idx` ON `ERIparameters`.`PartVsheme` (`IspolnUST_idIspolnUST` ASC);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
