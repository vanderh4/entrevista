CREATE DATABASE `xschema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

CREATE TABLE `clientes` (
  `codigo` int NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `id_UNIQUE` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `produtos` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `preco` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `id_UNIQUE` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `pedidos` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `idcliente` int DEFAULT NULL,
  `data` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`codigo`),
  KEY `fkcliente_idx` (`idcliente`),
  CONSTRAINT `fkcliente` FOREIGN KEY (`idcliente`) REFERENCES `clientes` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `pedidosvenda` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `idpedido` int DEFAULT NULL,
  `idproduto` int DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  `valorunitario` decimal(10,0) DEFAULT NULL,
  `valortotal` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fkpedido_idx` (`idpedido`),
  KEY `fkproduto_idx` (`idproduto`),
  CONSTRAINT `fkpedido` FOREIGN KEY (`idpedido`) REFERENCES `pedidos` (`codigo`),
  CONSTRAINT `fkproduto` FOREIGN KEY (`idproduto`) REFERENCES `produtos` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

insert into clientes (name, city, state) values ('Vanderson', 
'Chapeco', 'SC'),('Deizi', 
'Chapeco', 'SC'),('Valdecir', 
'Lindoia do sul', 'SC'), ('Viviana', 
'Campo Grande', 'MS'),('Vanessa', 'Floripa', 'SC');

