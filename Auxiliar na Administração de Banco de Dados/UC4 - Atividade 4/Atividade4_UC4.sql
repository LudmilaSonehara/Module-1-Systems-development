-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Atividade4_UC4
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Atividade4_UC4
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Atividade4_UC4` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `Atividade4_UC4` ;

-- -----------------------------------------------------
-- Table `Atividade4_UC4`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Atividade4_UC4`.`cliente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Atividade4_UC4`.`funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Atividade4_UC4`.`funcionario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Atividade4_UC4`.`venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Atividade4_UC4`.`venda` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `data` DATETIME NULL DEFAULT NULL,
  `data_envio` DATETIME NULL DEFAULT NULL,
  `status` VARCHAR(45) NULL DEFAULT NULL,
  `valor_total` DECIMAL(9,2) NULL DEFAULT NULL,
  `cliente_id` INT NOT NULL,
  `funcionario_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `cliente_id` (`cliente_id` ASC) VISIBLE,
  INDEX `funcionario_id` (`funcionario_id` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  CONSTRAINT `venda_ibfk_1`
    FOREIGN KEY (`cliente_id`)
    REFERENCES `Atividade4_UC4`.`cliente` (`id`),
  CONSTRAINT `venda_ibfk_2`
    FOREIGN KEY (`funcionario_id`)
    REFERENCES `Atividade4_UC4`.`funcionario` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Atividade4_UC4`.`produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Atividade4_UC4`.`produto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `descricao` VARCHAR(255) NULL DEFAULT NULL,
  `estoque` INT NULL DEFAULT NULL,
  `fabricante` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Atividade4_UC4`.`item_venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Atividade4_UC4`.`item_venda` (
  `quantidade` INT NOT NULL,
  `valor_unitario` INT NOT NULL,
  `venda_id` INT NOT NULL,
  `produto_id` INT NOT NULL,
  INDEX `venda_id` (`venda_id` ASC) VISIBLE,
  INDEX `produto_id` (`produto_id` ASC) VISIBLE,
  PRIMARY KEY (`venda_id`, `produto_id`),
  CONSTRAINT `item_venda_ibfk_1`
    FOREIGN KEY (`venda_id`)
    REFERENCES `Atividade4_UC4`.`venda` (`id`),
  CONSTRAINT `item_venda_ibfk_2`
    FOREIGN KEY (`produto_id`)
    REFERENCES `Atividade4_UC4`.`produto` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Solução proposta para a tabela 'venda'--
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table `Atividade4_UC4`.`pagamento_dinheiro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Atividade4_UC4`.`pagamento_dinheiro` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `data_pagamento` DATETIME NOT NULL,
  `venda_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pagamento_dinheiro_venda1_idx` (`venda_id` ASC) VISIBLE,
  CONSTRAINT `fk_pagamento_dinheiro_venda1`
    FOREIGN KEY (`venda_id`)
    REFERENCES `Atividade4_UC4`.`venda` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Atividade4_UC4`.`pagamento_cartao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Atividade4_UC4`.`pagamento_cartao` (
  `id` INT NOT NULL,
  `numero_cartao_pagamento` VARCHAR(16) NOT NULL,
  `numero_parcelas_pagamento` INT NOT NULL,
  `data_pagamento` DATETIME NOT NULL,
  `venda_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pagamento_cartao_venda1_idx` (`venda_id` ASC) VISIBLE,
  CONSTRAINT `fk_pagamento_cartao_venda1`
    FOREIGN KEY (`venda_id`)
    REFERENCES `Atividade4_UC4`.`venda` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Solução proposta para a tabela 'item_venda'
-- -----------------------------------------------------
create view subtotal as 
select quantidade, valor_unitario, (quantidade * valor_unitario) as subtotal 
from item_venda group by venda_id;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
