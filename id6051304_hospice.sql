-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema id6051304_hospice
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema id6051304_hospice
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `id6051304_hospice` DEFAULT CHARACTER SET utf8 ;
USE `id6051304_hospice` ;

-- -----------------------------------------------------
-- Table `id6051304_hospice`.`admins`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `id6051304_hospice`.`admins` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL,
  `email` VARCHAR(255) NULL,
  `password` VARCHAR(255) NULL,
  `salt_string` VARCHAR(255) NULL,
  `created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `id6051304_hospice`.`news`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `id6051304_hospice`.`news` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NULL,
  `description` LONGTEXT NULL,
  `created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `admins_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_news_admins_idx` (`admins_id` ASC),
  CONSTRAINT `fk_news_admins`
    FOREIGN KEY (`admins_id`)
    REFERENCES `id6051304_hospice`.`admins` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
