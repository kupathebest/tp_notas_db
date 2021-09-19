-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema tp_notas
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema tp_notas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tp_notas` DEFAULT CHARACTER SET utf8 ;
USE `tp_notas` ;

-- -----------------------------------------------------
-- Table `tp_notas`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tp_notas`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tp_notas`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `tp_notas`.`notes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tp_notas`.`notes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `createDate` DATE NOT NULL,
  `lastUpdate` DATE NULL,
  `description` VARCHAR(500) NOT NULL,
  `destroy` TINYINT(1) NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fki_userId_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fki_userId`
    FOREIGN KEY (`user_id`)
    REFERENCES `tp_notas`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tp_notas`.`categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tp_notas`.`categories` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tp_notas`.`noteCategory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tp_notas`.`noteCategory` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `note_id` INT NOT NULL,
  `category_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_noteId_idx` (`note_id` ASC) VISIBLE,
  INDEX `fk_categoryId_idx` (`category_id` ASC) VISIBLE,
  CONSTRAINT `fk_noteId`
    FOREIGN KEY (`note_id`)
    REFERENCES `tp_notas`.`notes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_categoryId`
    FOREIGN KEY (`category_id`)
    REFERENCES `tp_notas`.`categories` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- AGREGANDO CATEGORIAS

INSERT INTO `tp_notas`. `categories` (`name`) VALUES ('loren ipsum');
INSERT INTO `tp_notas`.`categories` (`name`) VALUES ('loren ipsum');
INSERT INTO `tp_notas`.`categories` (`name`) VALUES ('loren ipsum');
INSERT INTO `tp_notas`.`categories` (`name`) VALUES ('loren ipsum');
INSERT INTO `tp_notas`.`categories` (`name`) VALUES ('loren ipsum');
INSERT INTO `tp_notas`.`categories` (`name`) VALUES ('loren ipsum');
INSERT INTO `tp_notas`.`categories` (`name`) VALUES ('loren ipsum');
INSERT INTO `tp_notas`.`categories` (`name`) VALUES ('loren ipsum');
INSERT INTO `tp_notas`.`categories` (`name`) VALUES ('loren ipsum');
INSERT INTO `tp_notas`.`categories` (`name`) VALUES ('loren ipsum');
INSERT INTO `tp_notas`.`categories` (`name`) VALUES ('loren ipsum');

-- AGREGANDO USUARIOS

INSERT INTO `tp_notas`. `users` (`name`, `email`) VALUES ('juan', 'juan@gmail.com');
INSERT INTO `tp_notas`.`users` (`name`, `email`) VALUES ('jose', 'jose@gmail.com');
INSERT INTO `tp_notas`.`users` (`name`, `email`) VALUES ('romina', 'romina@gmail.com');
INSERT INTO `tp_notas`.`users` (`name`, `email`) VALUES ('ariel', 'ariel@gmail.com');
INSERT INTO `tp_notas`.`users` (`name`, `email`) VALUES ('sebastian', 'sebastian@gmail.com');
INSERT INTO `tp_notas`.`users` (`name`, `email`) VALUES ('hector', 'hector@gmail.com');
INSERT INTO `tp_notas`.`users` (`name`, `email`) VALUES ('maria', 'maria@gmail.com');
INSERT INTO `tp_notas`.`users` (`name`, `email`) VALUES ('antonella', 'antonella@gmail.com');
INSERT INTO `tp_notas`.`users` (`name`, `email`) VALUES ('micaela', 'micaela@gmail.com');
INSERT INTO `tp_notas`.`users` (`name`, `email`) VALUES ('gonzalo', 'gonzalo@gmail.com');

-- AGREGANDO NOTAS

INSERT INTO `tp_notas`.`notes` (`title`, `createDate`, `description`, `destroy`, `user_id`) VALUES ('lorem ipsum', '2021-09-18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae libero lacinia, egestas diam quis, lacinia arcu. Ut nec aliquet turpis. Phasellus consectetur, massa et hendrerit auctor', '0', '1');
INSERT INTO `tp_notas`.`notes` (`title`, `createDate`, `description`, `destroy`, `user_id`) VALUES ('lorem ipsum', '2021-09-18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae libero lacinia, egestas diam quis, lacinia arcu. Ut nec aliquet turpis. Phasellus consectetur, massa et hendrerit auctor', '1', '10');
INSERT INTO `tp_notas`.`notes` (`title`, `createDate`, `description`, `destroy`, `user_id`) VALUES ('lorem ipsum', '2021-09-18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae libero lacinia, egestas diam quis, lacinia arcu. Ut nec aliquet turpis. Phasellus consectetur, massa et hendrerit auctor', '1', '3');
INSERT INTO `tp_notas`.`notes` (`title`, `createDate`, `description`, `destroy`, `user_id`) VALUES ('lorem ipsum', '2021-09-18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae libero lacinia, egestas diam quis, lacinia arcu. Ut nec aliquet turpis. Phasellus consectetur, massa et hendrerit auctor', '0', '3');
INSERT INTO `tp_notas`.`notes` (`title`, `createDate`, `description`, `destroy`, `user_id`) VALUES ('lorem ipsum', '2021-09-18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae libero lacinia, egestas diam quis, lacinia arcu. Ut nec aliquet turpis. Phasellus consectetur, massa et hendrerit auctor', '0', '2');
INSERT INTO `tp_notas`.`notes` (`title`, `createDate`, `description`, `destroy`, `user_id`) VALUES ('lorem ipsum', '2021-09-18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae libero lacinia, egestas diam quis, lacinia arcu. Ut nec aliquet turpis. Phasellus consectetur, massa et hendrerit auctor', '0', '1');
INSERT INTO `tp_notas`.`notes` (`title`, `createDate`, `description`, `destroy`, `user_id`) VALUES ('lorem ipsum', '2021-09-18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae libero lacinia, egestas diam quis, lacinia arcu. Ut nec aliquet turpis. Phasellus consectetur, massa et hendrerit auctor', '1', '7');
INSERT INTO `tp_notas`.`notes` (`title`, `createDate`, `description`, `destroy`, `user_id`) VALUES ('lorem ipsum', '2021-09-18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae libero lacinia, egestas diam quis, lacinia arcu. Ut nec aliquet turpis. Phasellus consectetur, massa et hendrerit auctor', '0', '8');
INSERT INTO `tp_notas`.`notes` (`title`, `createDate`, `description`, `destroy`, `user_id`) VALUES ('lorem ipsum', '2021-09-18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae libero lacinia, egestas diam quis, lacinia arcu. Ut nec aliquet turpis. Phasellus consectetur, massa et hendrerit auctor', '1', '4');
INSERT INTO `tp_notas`.`notes` (`title`, `createDate`, `description`, `destroy`, `user_id`) VALUES ('lorem ipsum', '2021-09-18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae libero lacinia, egestas diam quis, lacinia arcu. Ut nec aliquet turpis. Phasellus consectetur, massa et hendrerit auctor', '0', '6');

-- VINCULANDO NOTAS CON SUS CATEGORIAS

INSERT INTO `tp_notas`.`notecategory` (`note_id`, `category_id`) VALUES ('1', '1');
INSERT INTO `tp_notas`.`notecategory` (`note_id`, `category_id`) VALUES ('2', '5');
INSERT INTO `tp_notas`.`notecategory` (`note_id`, `category_id`) VALUES ('3', '6');
INSERT INTO `tp_notas`.`notecategory` (`note_id`, `category_id`) VALUES ('4', '4');
INSERT INTO `tp_notas`.`notecategory` (`note_id`, `category_id`) VALUES ('5', '10');
INSERT INTO `tp_notas`.`notecategory` (`note_id`, `category_id`) VALUES ('6', '4');
INSERT INTO `tp_notas`.`notecategory` (`note_id`, `category_id`) VALUES ('7', '3');
INSERT INTO `tp_notas`.`notecategory` (`note_id`, `category_id`) VALUES ('8', '2');
INSERT INTO `tp_notas`.`notecategory` (`note_id`, `category_id`) VALUES ('9', '1');
INSERT INTO `tp_notas`.`notecategory` (`note_id`, `category_id`) VALUES ('10', '1');
INSERT INTO `tp_notas`.`notecategory` (`note_id`, `category_id`) VALUES ('1', '10');
INSERT INTO `tp_notas`.`notecategory` (`note_id`, `category_id`) VALUES ('2', '8');
INSERT INTO `tp_notas`.`notecategory` (`note_id`, `category_id`) VALUES ('3', '7');
INSERT INTO `tp_notas`.`notecategory` (`note_id`, `category_id`) VALUES ('4', '3');
INSERT INTO `tp_notas`.`notecategory` (`note_id`, `category_id`) VALUES ('5', '5');
INSERT INTO `tp_notas`.`notecategory` (`note_id`, `category_id`) VALUES ('6', '9');
INSERT INTO `tp_notas`.`notecategory` (`note_id`, `category_id`) VALUES ('7', '9');
INSERT INTO `tp_notas`.`notecategory` (`note_id`, `category_id`) VALUES ('8', '2');
INSERT INTO `tp_notas`.`notecategory` (`note_id`, `category_id`) VALUES ('9', '3');
INSERT INTO `tp_notas`.`notecategory` (`note_id`, `category_id`) VALUES ('10', '1');
