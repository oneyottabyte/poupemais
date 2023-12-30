# Host: localhost  (Version 5.5.5-10.4.11-MariaDB)
# Date: 2023-07-21 11:13:25
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "brindes"
#

CREATE TABLE `brindes` (
  `id_brinde` int(3) NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) NOT NULL DEFAULT '',
  `qtde_inicial` int(3) DEFAULT NULL,
  `qtde_atual` int(3) DEFAULT NULL,
  PRIMARY KEY (`id_brinde`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "brindes"
#

INSERT INTO `brindes` VALUES (1,'Massageador de mão',200,1),(2,'Moleskine',100,0),(3,'Squeeze',100,0);

#
# Structure for table "categorias"
#

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "categorias"
#

INSERT INTO `categorias` VALUES (1,'Saúde'),(2,'Gastronomia'),(3,'Turismo'),(4,'TI'),(5,'Design'),(6,'Gestão'),(7,'Senac'),(8,'Moda');

#
# Structure for table "leads"
#

CREATE TABLE `leads` (
  `id_lead` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `idade` int(2) DEFAULT NULL,
  `codigo` varchar(5) NOT NULL,
  `ensino` int(1) DEFAULT NULL,
  `email` varchar(35) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `data_cadastro` datetime DEFAULT NULL,
  PRIMARY KEY (`id_lead`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "leads"
#


#
# Structure for table "perguntas"
#

CREATE TABLE `perguntas` (
  `id_pergunta` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` int(11) NOT NULL,
  `tipo` char(2) NOT NULL,
  `enunciado` varchar(255) DEFAULT NULL,
  `pergunta` text DEFAULT NULL,
  `respostaa` varchar(255) DEFAULT '',
  `respostab` varchar(255) DEFAULT '',
  `respostac` varchar(255) DEFAULT '',
  `respostad` varchar(255) DEFAULT '',
  `correta` varchar(1) DEFAULT '',
  PRIMARY KEY (`id_pergunta`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "perguntas"
#

#INSERT INTO `perguntas` VALUES (1,2,'it','Essa foto foi tirada em qual país?','Brasil','Cancun','Filipinas','Estados Unidos','a'),(2,2,'tt','Lorem Ipsum Dolor Sit Amet','Lorem','Ipsum','Dolor','Sit','b'),(3,1,'ti','Em qual das alternativas é possível identificar um bar molhado?','1','1','1','1','c');

#ALTER TABLE perguntas ADD enunciado varchar(255) AFTER tipo;

#ALTER TABLE leads ADD codigo varchar(5) AFTER idade;