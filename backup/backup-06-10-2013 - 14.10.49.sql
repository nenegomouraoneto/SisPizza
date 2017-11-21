DROP TABLE categoria;

CREATE TABLE `categoria` (
  `id_categoria` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO categoria VALUES("1","Pizza");
INSERT INTO categoria VALUES("2","bebidas");
INSERT INTO categoria VALUES("3","pedaços");



DROP TABLE config;

CREATE TABLE `config` (
  `id_conf` int(30) NOT NULL,
  `empresa` varchar(200) NOT NULL,
  `telefone` varchar(30) NOT NULL,
  `pgarcon` int(10) NOT NULL,
  `ativo` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO config VALUES("0","opção web","(44)98806004","10","0");



DROP TABLE cozinha;

CREATE TABLE `cozinha` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `produto` varchar(200) NOT NULL,
  `qtd` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




DROP TABLE garcon;

CREATE TABLE `garcon` (
  `idGarcon` int(10) NOT NULL AUTO_INCREMENT,
  `nomeGarcon` varchar(200) NOT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `nv` int(1) NOT NULL,
  PRIMARY KEY (`idGarcon`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO garcon VALUES("1","Administrador","admin","admin","0");
INSERT INTO garcon VALUES("3","pablo","pablo","123","1");



DROP TABLE mesa;

CREATE TABLE `mesa` (
  `id_mesa` int(10) NOT NULL AUTO_INCREMENT,
  `numero` int(10) NOT NULL,
  `idGarcon` varchar(200) NOT NULL,
  `situacao` int(1) NOT NULL,
  PRIMARY KEY (`id_mesa`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

INSERT INTO mesa VALUES("11","11","","0");
INSERT INTO mesa VALUES("9","9","","0");
INSERT INTO mesa VALUES("10","10","","0");
INSERT INTO mesa VALUES("7","7","3","1");
INSERT INTO mesa VALUES("8","8","","0");
INSERT INTO mesa VALUES("12","12","","0");



DROP TABLE tbl_carrinho;

CREATE TABLE `tbl_carrinho` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod` int(11) NOT NULL,
  `nome` varchar(150) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `preco` varchar(10) NOT NULL,
  `qtd` int(11) NOT NULL,
  `comanda` int(200) NOT NULL,
  `data` date NOT NULL,
  `time` time NOT NULL,
  `id_mesa` int(30) NOT NULL,
  `situacao` int(2) NOT NULL,
  `idGarcon` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `destino` int(1) NOT NULL,
  `entregue` int(1) NOT NULL,
  `feito` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=latin1;

INSERT INTO tbl_carrinho VALUES("56","7","virgulas","1350.00","1","0","2013-10-04","18:59:00","7","0","2","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("54","7","virgulas","1350.00","1","0","2013-10-04","18:55:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("55","2","teste2","300.00","1","0","2013-10-04","18:55:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("57","14","45645","456450.00","1","0","2013-10-04","18:59:00","7","0","2","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("115","9","guilherme","500.00","1","0","2013-10-05","19:45:00","7","0","3","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("113","15","45654","456450.00","1","0","2013-10-05","19:45:00","7","0","3","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("114","15","45654","456450.00","1","0","2013-10-05","19:45:00","7","0","3","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("111","15","45654","456450.00","1","0","2013-10-05","19:45:00","7","0","3","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("110","15","45654","456450.00","1","0","2013-10-05","19:45:00","7","0","3","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("127","14","45645","","1","0","2013-10-06","12:39:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("109","14","45645","456450.00","1","0","2013-10-05","19:45:00","7","0","3","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("69","16","8","32.00","1","0","2013-10-05","19:34:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("70","16","8","32.00","1","0","2013-10-05","19:34:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("71","16","8","32.00","1","0","2013-10-05","19:34:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("72","16","8","32.00","1","0","2013-10-05","19:34:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("112","15","45654","456450.00","1","0","2013-10-05","19:45:00","7","0","3","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("75","13","45654","45360.00","1","0","2013-10-05","19:34:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("121","14","45645","","1","0","2013-10-05","20:00:00","7","0","3","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("120","14","45645","","1","0","2013-10-05","20:00:00","7","0","3","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("119","14","45645","","1","0","2013-10-05","20:00:00","7","0","3","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("118","10","sdghf","4560.00","1","0","2013-10-05","19:45:00","7","0","3","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("126","12","54035","50.00","1","0","2013-10-06","12:35:00","7","0","3","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("117","8","quatro queijo","9.00","1","0","2013-10-05","19:45:00","7","0","3","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("125","16","8","32.00","1","0","2013-10-06","12:34:00","7","0","3","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("116","9","guilherme","500.00","1","0","2013-10-05","19:45:00","7","0","3","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("128","8","quatro queijo","9.00","1","0","2013-10-06","12:39:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("85","13","45654","45360.00","1","0","2013-10-05","19:35:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("86","13","45654","45360.00","1","0","2013-10-05","19:35:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("87","13","45654","45360.00","1","0","2013-10-05","19:35:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("88","13","45654","45360.00","1","0","2013-10-05","19:35:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("89","13","45654","45360.00","1","0","2013-10-05","19:35:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("90","13","45654","45360.00","1","0","2013-10-05","19:35:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("91","13","45654","45360.00","1","0","2013-10-05","19:35:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("92","13","45654","45360.00","1","0","2013-10-05","19:35:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("124","14","45645","","1","0","2013-10-05","20:00:00","7","0","3","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("123","14","45645","","1","0","2013-10-05","20:00:00","7","0","3","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("122","14","45645","","1","0","2013-10-05","20:00:00","7","0","3","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("96","12","54035","453050.00","1","0","2013-10-05","00:00:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("97","12","54035","453050.00","1","0","2013-10-05","00:00:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("98","12","54035","453050.00","1","0","2013-10-05","00:00:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("99","12","54035","453050.00","1","0","2013-10-05","00:00:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("100","12","54035","453050.00","1","0","2013-10-05","00:00:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("101","12","54035","453050.00","1","0","2013-10-05","00:00:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("102","12","54035","453050.00","1","0","2013-10-05","00:00:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("103","12","54035","453050.00","1","0","2013-10-05","00:00:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("104","12","54035","453050.00","1","0","0000-00-00","00:00:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("136","15","45654","15.00","1","0","2013-10-06","12:41:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("106","14","45645","456450.00","1","0","0000-00-00","00:00:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("107","16","8","32.00","1","0","0000-00-00","00:00:00","8","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("108","16","8","32.00","1","0","2013-10-05","19:43:00","8","0","3","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("129","9","guilherme","500.00","1","0","2013-10-06","12:39:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("130","11","adg","453.00","1","0","2013-10-06","12:39:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("131","2","teste2","300.00","1","0","2013-10-06","12:39:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("132","7","virgulas","15.50","1","0","2013-10-06","12:39:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("133","7","virgulas","15.50","1","0","2013-10-06","12:39:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("134","7","virgulas","15.50","1","0","2013-10-06","12:39:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("135","7","virgulas","15.50","1","0","2013-10-06","12:39:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("137","9","guilherme","500.00","1","0","2013-10-06","12:41:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("138","8","quatro queijo","9.00","1","0","2013-10-06","12:41:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("139","10","sdghf","18.00","1","0","2013-10-06","12:41:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("140","16","8","32.00","1","0","2013-10-06","12:41:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("141","15","45654","15.00","1","0","2013-10-06","14:37:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("142","16","8","32.00","1","0","2013-10-06","14:44:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("143","16","8","32.00","1","0","2013-10-06","14:51:00","7","1","3","0","1","0","0");



DROP TABLE tbl_produtos;

CREATE TABLE `tbl_produtos` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `img` varchar(36) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `preco` varchar(10) NOT NULL,
  `id_categoria` int(30) NOT NULL,
  `destino` int(1) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

INSERT INTO tbl_produtos VALUES("2","teste2","","300.00","1","0");
INSERT INTO tbl_produtos VALUES("7","virgulas","","15.50","1","0");
INSERT INTO tbl_produtos VALUES("8","quatro queijo","","9.00","1","1");
INSERT INTO tbl_produtos VALUES("9","guilherme","","500.00","1","1");
INSERT INTO tbl_produtos VALUES("10","sdghf","","18.00","1","0");
INSERT INTO tbl_produtos VALUES("11","adg","","453.00","1","0");
INSERT INTO tbl_produtos VALUES("12","54035","","50.00","1","0");
INSERT INTO tbl_produtos VALUES("13","45654","","60.00","1","1");
INSERT INTO tbl_produtos VALUES("14","45645","","","1","0");
INSERT INTO tbl_produtos VALUES("15","45654","","15.00","1","1");
INSERT INTO tbl_produtos VALUES("16","8","","32.00","3","1");



DROP TABLE usuario;

CREATE TABLE `usuario` (
  `idUser` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `login` varchar(100) NOT NULL,
  `senha` varchar(20) NOT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO usuario VALUES("1","Seu Nome","","admin","admin");



