DROP TABLE cadastro;

CREATE TABLE `cadastro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `sobrenome` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `numero` varchar(20) DEFAULT NULL,
  `proximo` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO cadastro VALUES("1","","cghgf","hfghf","","fghfg","","hfg","hf","hfh","f");
INSERT INTO cadastro VALUES("2","","cghgf","hfghf","","fghfg","","hfg","hf","hfh","f");
INSERT INTO cadastro VALUES("3","Pablo","gomes","4435235165","","Campo Mourão","","hfg","hf","131","");
INSERT INTO cadastro VALUES("4","Pablo","gomes","4435235165","","Campo Mourão","","hfg","hf","131","");
INSERT INTO cadastro VALUES("5","Pablo","gomes","4435235165","","Campo Mourão","","hfg","hf","","274656");
INSERT INTO cadastro VALUES("6","Pablo","gomes","4435235165","(44)98806004","Campo Mourão","pabloapologomes@gmail.com","hfg","hf","131","ghjhj");
INSERT INTO cadastro VALUES("7","Pablo","gomes","4435235165","(44)98806004","Campo Mourão","pabloapologomes@gmail.com","hfg","hf","131","ghjhj");
INSERT INTO cadastro VALUES("8","Pablo","gomes","4435235165","(44)98806004","Campo Mourão","pabloapologomes@gmail.com","hfg","hf","131","ghjhj");
INSERT INTO cadastro VALUES("9","Pablo apolo barros gomes","gomes","4435235165","(44)98806004","Campo Mourão","pabloapologomes@gmail.com","hfg","hf","131","");
INSERT INTO cadastro VALUES("10","Pablo apolo barros gomes","gomes","4435235165","(44)98806004","Campo Mourão","pabloapologomes@gmail.com","hfg","hf","131","");
INSERT INTO cadastro VALUES("11","Pablo apolo barros gomes","gomes","4435235165","(44)98806004","Campo Mourão","pabloapologomes@gmail.com","hfg","hf","131","");
INSERT INTO cadastro VALUES("12","Pablo apolo barros gomes","gomes","4435235165","(44)98806004","Campo Mourão","pabloapologomes@gmail.com","hfg","hf","131","");
INSERT INTO cadastro VALUES("13","Pablo apolo barros gomes","gomes","4435235165","(44)98806004","Campo Mourão","pabloapologomes@gmail.com","hfg","hf","131","");



DROP TABLE categoria;

CREATE TABLE `categoria` (
  `id_categoria` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO categoria VALUES("6","sabor");
INSERT INTO categoria VALUES("2","bebidas");
INSERT INTO categoria VALUES("3","peda�os");
INSERT INTO categoria VALUES("5","por��es");



DROP TABLE config;

CREATE TABLE `config` (
  `id_conf` int(30) NOT NULL,
  `empresa` varchar(200) NOT NULL,
  `telefone` varchar(30) NOT NULL,
  `pgarcon` int(10) NOT NULL,
  `ativo` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO config VALUES("0","op��o web","(44)98806004","10","0");



DROP TABLE cozinha;

CREATE TABLE `cozinha` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `produto` varchar(200) NOT NULL,
  `qtd` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




DROP TABLE entrega;

CREATE TABLE `entrega` (
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
) ENGINE=MyISAM AUTO_INCREMENT=252 DEFAULT CHARSET=latin1;

INSERT INTO entrega VALUES("56","7","virgulas","1350.00","1","0","2013-10-04","18:59:00","7","0","2","1","0","1","0");
INSERT INTO entrega VALUES("54","7","virgulas","1350.00","1","0","2013-10-04","18:55:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("55","2","teste2","300.00","1","0","2013-10-04","18:55:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("57","14","45645","456450.00","1","0","2013-10-04","18:59:00","7","0","2","1","0","1","0");
INSERT INTO entrega VALUES("115","9","guilherme","500.00","1","0","2013-10-05","19:45:00","7","0","3","0","1","0","1");
INSERT INTO entrega VALUES("113","15","45654","456450.00","1","0","2013-10-05","19:45:00","7","0","3","0","1","0","1");
INSERT INTO entrega VALUES("114","15","45654","456450.00","1","0","2013-10-05","19:45:00","7","0","3","0","1","0","1");
INSERT INTO entrega VALUES("111","15","45654","456450.00","1","0","2013-10-05","19:45:00","7","0","3","0","1","0","1");
INSERT INTO entrega VALUES("110","15","45654","456450.00","1","0","2013-10-05","19:45:00","7","0","3","0","1","0","1");
INSERT INTO entrega VALUES("127","14","45645","","1","0","2013-10-06","12:39:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("109","14","45645","456450.00","1","0","2013-10-05","19:45:00","7","0","3","0","0","0","0");
INSERT INTO entrega VALUES("69","16","8","32.00","1","0","2013-10-05","19:34:00","7","0","0","0","1","0","0");
INSERT INTO entrega VALUES("70","16","8","32.00","1","0","2013-10-05","19:34:00","7","0","0","0","1","0","0");
INSERT INTO entrega VALUES("71","16","8","32.00","1","0","2013-10-05","19:34:00","7","0","0","0","1","0","0");
INSERT INTO entrega VALUES("72","16","8","32.00","1","0","2013-10-05","19:34:00","7","0","0","0","1","0","0");
INSERT INTO entrega VALUES("112","15","45654","456450.00","1","0","2013-10-05","19:45:00","7","0","3","0","1","0","1");
INSERT INTO entrega VALUES("75","13","45654","45360.00","1","0","2013-10-05","19:34:00","7","0","0","0","1","0","0");
INSERT INTO entrega VALUES("121","14","45645","","1","0","2013-10-05","20:00:00","7","0","3","0","0","0","0");
INSERT INTO entrega VALUES("120","14","45645","","1","0","2013-10-05","20:00:00","7","0","3","0","0","0","0");
INSERT INTO entrega VALUES("119","14","45645","","1","0","2013-10-05","20:00:00","7","0","3","0","0","0","0");
INSERT INTO entrega VALUES("118","10","sdghf","4560.00","1","0","2013-10-05","19:45:00","7","0","3","0","0","0","0");
INSERT INTO entrega VALUES("117","8","quatro queijo","9.00","1","0","2013-10-05","19:45:00","7","0","3","0","1","0","1");
INSERT INTO entrega VALUES("178","16","8","32.00","1","0","2013-10-07","22:35:00","1","0","3","0","1","0","1");
INSERT INTO entrega VALUES("116","9","guilherme","500.00","1","0","2013-10-05","19:45:00","7","0","3","0","1","0","1");
INSERT INTO entrega VALUES("128","8","quatro queijo","9.00","1","0","2013-10-06","12:39:00","7","0","0","0","1","0","0");
INSERT INTO entrega VALUES("85","13","45654","45360.00","1","0","2013-10-05","19:35:00","7","0","0","0","1","0","0");
INSERT INTO entrega VALUES("86","13","45654","45360.00","1","0","2013-10-05","19:35:00","7","0","0","0","1","0","0");
INSERT INTO entrega VALUES("87","13","45654","45360.00","1","0","2013-10-05","19:35:00","7","0","0","0","1","0","0");
INSERT INTO entrega VALUES("88","13","45654","45360.00","1","0","2013-10-05","19:35:00","7","0","0","0","1","0","0");
INSERT INTO entrega VALUES("89","13","45654","45360.00","1","0","2013-10-05","19:35:00","7","0","0","0","1","0","0");
INSERT INTO entrega VALUES("90","13","45654","45360.00","1","0","2013-10-05","19:35:00","7","0","0","0","1","0","0");
INSERT INTO entrega VALUES("91","13","45654","45360.00","1","0","2013-10-05","19:35:00","7","0","0","0","1","0","0");
INSERT INTO entrega VALUES("92","13","45654","45360.00","1","0","2013-10-05","19:35:00","7","0","0","0","1","0","0");
INSERT INTO entrega VALUES("123","14","45645","","1","0","2013-10-05","20:00:00","7","0","3","0","0","0","0");
INSERT INTO entrega VALUES("122","14","45645","","1","0","2013-10-05","20:00:00","7","0","3","0","0","0","0");
INSERT INTO entrega VALUES("96","12","54035","453050.00","1","0","2013-10-05","00:00:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("97","12","54035","453050.00","1","0","2013-10-05","00:00:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("98","12","54035","453050.00","1","0","2013-10-05","00:00:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("99","12","54035","453050.00","1","0","2013-10-05","00:00:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("100","12","54035","453050.00","1","0","2013-10-05","00:00:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("101","12","54035","453050.00","1","0","2013-10-05","00:00:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("102","12","54035","453050.00","1","0","2013-10-05","00:00:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("103","12","54035","453050.00","1","0","2013-10-05","00:00:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("104","12","54035","453050.00","1","0","0000-00-00","00:00:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("136","15","45654","15.00","1","0","2013-10-06","12:41:00","7","0","0","0","1","0","0");
INSERT INTO entrega VALUES("106","14","45645","456450.00","1","0","0000-00-00","00:00:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("107","16","8","32.00","1","0","0000-00-00","00:00:00","8","0","0","0","1","0","0");
INSERT INTO entrega VALUES("129","9","guilherme","500.00","1","0","2013-10-06","12:39:00","7","0","0","0","1","0","0");
INSERT INTO entrega VALUES("130","11","adg","453.00","1","0","2013-10-06","12:39:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("131","2","teste2","300.00","1","0","2013-10-06","12:39:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("132","7","virgulas","15.50","1","0","2013-10-06","12:39:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("133","7","virgulas","15.50","1","0","2013-10-06","12:39:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("134","7","virgulas","15.50","1","0","2013-10-06","12:39:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("135","7","virgulas","15.50","1","0","2013-10-06","12:39:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("137","9","guilherme","500.00","1","0","2013-10-06","12:41:00","7","0","0","0","1","0","0");
INSERT INTO entrega VALUES("138","8","quatro queijo","9.00","1","0","2013-10-06","12:41:00","7","0","0","0","1","0","0");
INSERT INTO entrega VALUES("139","10","sdghf","18.00","1","0","2013-10-06","12:41:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("140","16","8","32.00","1","0","2013-10-06","12:41:00","7","0","0","0","1","0","0");
INSERT INTO entrega VALUES("141","15","45654","15.00","1","0","2013-10-06","14:37:00","7","0","0","0","1","0","0");
INSERT INTO entrega VALUES("142","16","8","32.00","1","0","2013-10-06","14:44:00","7","0","0","0","1","0","0");
INSERT INTO entrega VALUES("143","16","8","32.00","1","0","2013-10-06","14:51:00","7","0","3","1","1","1","1");
INSERT INTO entrega VALUES("144","26","eryrtyertyrt","","1","0","2013-10-06","16:41:00","7","0","3","1","0","1","0");
INSERT INTO entrega VALUES("145","19","etyiuiy","","1","0","2013-10-06","16:41:00","7","0","3","1","0","1","0");
INSERT INTO entrega VALUES("146","19","etyiuiy","","1","0","2013-10-06","16:41:00","7","0","3","1","0","1","0");
INSERT INTO entrega VALUES("147","19","etyiuiy","","1","0","2013-10-06","16:41:00","7","0","3","1","0","1","0");
INSERT INTO entrega VALUES("148","19","etyiuiy","","1","0","2013-10-06","16:41:00","7","0","3","1","0","1","0");
INSERT INTO entrega VALUES("149","19","etyiuiy","","1","0","2013-10-06","16:41:00","7","0","3","1","0","1","0");
INSERT INTO entrega VALUES("159","13","45654","60.00","1","0","2013-10-06","16:43:00","7","0","0","0","1","0","0");
INSERT INTO entrega VALUES("160","15","45654","15.00","1","0","2013-10-06","16:43:00","7","0","0","0","1","0","0");
INSERT INTO entrega VALUES("161","14","45645","","1","0","2013-10-06","16:43:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("162","14","45645","","1","0","2013-10-06","16:43:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("163","14","45645","","1","0","2013-10-06","16:43:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("164","14","45645","","1","0","2013-10-06","16:43:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("165","14","45645","","1","0","2013-10-06","16:43:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("166","28","wutyutyuty","","1","0","2013-10-06","16:43:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("167","24","wrywrtyr","","1","0","2013-10-06","16:43:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("168","23","wrtyrtyrtyrt","","1","0","2013-10-06","16:43:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("169","21","wqerytwrrtyrt","","1","0","2013-10-06","16:43:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("170","7","virgulas","15.50","1","0","2013-10-06","16:43:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("171","31","6","20.00","1","0","2013-10-06","16:48:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("172","16","8","32.00","1","0","2013-10-06","16:48:00","7","0","0","0","1","0","0");
INSERT INTO entrega VALUES("173","30","12","12.00","1","0","2013-10-06","16:48:00","7","0","0","0","0","0","0");
INSERT INTO entrega VALUES("174","23","wrtyrtyrtyrt","","1","0","2013-10-06","17:22:00","4","0","0","0","0","0","0");
INSERT INTO entrega VALUES("175","25","wryrtyrtyrt","","1","0","2013-10-06","17:22:00","4","0","0","0","0","0","0");
INSERT INTO entrega VALUES("176","21","wqerytwrrtyrt","","1","0","2013-10-06","17:22:00","4","0","0","0","0","0","0");
INSERT INTO entrega VALUES("177","32","4","50.00","1","0","2013-10-06","17:23:00","4","0","0","0","0","0","0");
INSERT INTO entrega VALUES("194","30","12","12.00","1","0","2013-10-10","17:21:00","2","0","0","0","0","0","0");
INSERT INTO entrega VALUES("180","31","6","20.00","1","0","2013-10-10","16:54:00","2","0","0","0","0","0","0");
INSERT INTO entrega VALUES("192","30","12","12.00","1","0","2013-10-10","16:59:00","2","0","0","0","0","0","0");
INSERT INTO entrega VALUES("182","30","12","12.00","1","0","2013-10-10","16:54:00","2","0","0","0","0","0","0");
INSERT INTO entrega VALUES("183","32","4","50.00","1","0","2013-10-10","16:54:00","2","0","0","0","0","0","0");
INSERT INTO entrega VALUES("184","31","6","20.00","1","0","2013-10-10","16:54:00","2","0","0","0","0","0","0");
INSERT INTO entrega VALUES("185","16","8","32.00","1","0","2013-10-10","16:54:00","2","0","0","0","1","0","0");
INSERT INTO entrega VALUES("186","30","12","12.00","1","0","2013-10-10","16:55:00","2","0","0","0","0","0","0");
INSERT INTO entrega VALUES("187","16","8","32.00","1","0","2013-10-10","16:56:00","2","0","0","0","1","0","0");
INSERT INTO entrega VALUES("188","30","12","12.00","1","0","2013-10-10","16:56:00","2","0","0","0","0","0","0");
INSERT INTO entrega VALUES("189","30","12","12.00","1","0","2013-10-10","16:56:00","2","0","0","0","0","0","0");
INSERT INTO entrega VALUES("190","30","12","12.00","1","0","2013-10-10","16:56:00","2","0","0","0","0","0","0");
INSERT INTO entrega VALUES("191","30","12","12.00","1","0","2013-10-10","16:56:00","2","0","0","0","0","0","0");
INSERT INTO entrega VALUES("195","32","4","50.00","1","0","2013-10-10","17:21:00","2","0","0","0","0","0","0");
INSERT INTO entrega VALUES("196","32","4","50.00","1","0","2013-10-10","17:21:00","2","0","0","0","0","0","0");
INSERT INTO entrega VALUES("197","32","4","50.00","1","0","2013-10-10","17:21:00","2","0","0","0","0","0","0");
INSERT INTO entrega VALUES("198","32","4","50.00","1","0","2013-10-10","17:21:00","2","0","0","0","0","0","0");
INSERT INTO entrega VALUES("199","32","4","50.00","1","0","2013-10-10","17:21:00","2","0","0","0","0","0","0");
INSERT INTO entrega VALUES("200","32","4","50.00","1","0","2013-10-10","17:21:00","2","0","0","0","0","0","0");
INSERT INTO entrega VALUES("201","30","12","12.00","1","0","2013-10-10","17:25:00","2","0","0","0","0","0","0");
INSERT INTO entrega VALUES("202","31","6","20.00","1","0","2013-10-10","17:25:00","2","0","0","0","0","0","0");
INSERT INTO entrega VALUES("203","16","8","32.00","1","0","2013-10-10","18:00:00","2","0","0","0","1","0","0");
INSERT INTO entrega VALUES("204","30","12","12.00","1","0","2013-10-10","18:26:00","2","0","0","0","0","0","0");
INSERT INTO entrega VALUES("205","30","12","12.00","1","0","2013-10-10","18:26:00","2","0","0","0","0","0","0");
INSERT INTO entrega VALUES("206","30","12","12.00","1","0","2013-10-10","18:30:00","1","0","0","0","0","0","0");
INSERT INTO entrega VALUES("225","32","4","50.00","1","0","2013-10-10","22:11:00","1","0","3","0","0","0","0");
INSERT INTO entrega VALUES("224","32","4","50.00","1","0","2013-10-10","22:11:00","1","0","3","0","0","0","0");
INSERT INTO entrega VALUES("212","30","12","12.00","1","0","2013-10-10","18:55:00","1","0","0","0","0","0","0");
INSERT INTO entrega VALUES("215","31","6","20.00","1","0","2013-10-10","20:50:00","1","0","0","0","0","0","0");
INSERT INTO entrega VALUES("216","30","12","12.00","1","0","2013-10-10","20:51:00","1","0","0","0","0","0","0");
INSERT INTO entrega VALUES("217","30","12","12.00","1","0","2013-10-10","20:51:00","1","0","0","0","0","0","0");
INSERT INTO entrega VALUES("218","30","12","12.00","1","0","2013-10-10","21:56:00","1","0","5","0","0","0","0");
INSERT INTO entrega VALUES("219","30","12","12.00","1","0","2013-10-10","22:00:00","1","0","3","0","0","0","0");
INSERT INTO entrega VALUES("220","30","12","12.00","1","0","2013-10-10","22:07:00","1","0","3","0","0","0","0");
INSERT INTO entrega VALUES("221","30","12","12.00","1","0","2013-10-10","22:08:00","1","0","3","0","0","0","0");
INSERT INTO entrega VALUES("223","32","4","50.00","1","0","2013-10-10","22:09:00","1","0","3","0","0","0","0");
INSERT INTO entrega VALUES("226","32","4","50.00","1","0","2013-10-10","22:11:00","1","0","3","0","0","0","0");
INSERT INTO entrega VALUES("227","16","8","32.00","1","0","2013-10-10","22:11:00","1","0","3","0","1","0","0");
INSERT INTO entrega VALUES("250","30","12","15.00","1","0","2013-10-13","11:18:00","1","1","3","0","0","0","0");
INSERT INTO entrega VALUES("251","31","6","20.00","1","0","2013-10-13","11:18:00","1","1","3","0","0","0","0");
INSERT INTO entrega VALUES("248","31","6","20.00","1","0","2013-10-11","21:27:00","1","0","6","0","0","0","0");
INSERT INTO entrega VALUES("249","32","4","12.00","1","0","2013-10-13","11:18:00","1","1","0","0","0","0","0");
INSERT INTO entrega VALUES("238","32","4","12.00","1","0","2013-10-11","20:51:00","1","0","3","0","0","0","0");
INSERT INTO entrega VALUES("239","32","4","12.00","1","0","2013-10-11","20:51:00","1","0","3","0","0","0","0");
INSERT INTO entrega VALUES("240","32","4","12.00","1","0","2013-10-11","20:51:00","1","0","3","0","0","0","0");
INSERT INTO entrega VALUES("241","32","4","12.00","1","0","2013-10-11","20:51:00","1","0","3","0","0","0","0");
INSERT INTO entrega VALUES("242","32","4","12.00","1","0","2013-10-11","20:51:00","1","0","3","0","0","0","0");
INSERT INTO entrega VALUES("243","32","4","12.00","1","0","2013-10-11","20:51:00","1","0","3","0","0","0","0");
INSERT INTO entrega VALUES("244","32","4","12.00","1","0","2013-10-11","20:51:00","1","0","3","0","0","0","0");
INSERT INTO entrega VALUES("245","32","4","12.00","1","0","2013-10-11","20:51:00","1","0","3","0","0","0","0");
INSERT INTO entrega VALUES("247","30","12","15.00","1","0","2013-10-11","21:21:00","1","0","11","0","0","0","0");



DROP TABLE garcon;

CREATE TABLE `garcon` (
  `idGarcon` int(10) NOT NULL AUTO_INCREMENT,
  `nomeGarcon` varchar(200) NOT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `nv` int(1) NOT NULL,
  PRIMARY KEY (`idGarcon`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO garcon VALUES("1","Administrador","admin","admin","0");
INSERT INTO garcon VALUES("3","pablo","pablo2","123","1");
INSERT INTO garcon VALUES("5","ghjhj","pabloapolo","123","2");
INSERT INTO garcon VALUES("6","123","cozinha","123","2");
INSERT INTO garcon VALUES("7","pabloapolog","pabloapolog","123","0");
INSERT INTO garcon VALUES("8","pabloapologomes","pabloapologomes","123","1");



DROP TABLE mesa;

CREATE TABLE `mesa` (
  `id_mesa` int(10) NOT NULL AUTO_INCREMENT,
  `numero` int(10) NOT NULL,
  `idGarcon` varchar(200) NOT NULL,
  `situacao` int(1) NOT NULL,
  PRIMARY KEY (`id_mesa`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

INSERT INTO mesa VALUES("2","2","","0");
INSERT INTO mesa VALUES("3","3","","0");
INSERT INTO mesa VALUES("4","4","","0");
INSERT INTO mesa VALUES("1","1","","0");
INSERT INTO mesa VALUES("5","5","","0");
INSERT INTO mesa VALUES("6","6","","0");
INSERT INTO mesa VALUES("7","7","","0");
INSERT INTO mesa VALUES("8","8","","0");



DROP TABLE pedido;

CREATE TABLE `pedido` (
  `id_mesa` int(10) NOT NULL AUTO_INCREMENT,
  `numero` int(10) NOT NULL,
  `idGarcon` varchar(200) NOT NULL,
  `situacao` int(1) NOT NULL,
  PRIMARY KEY (`id_mesa`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

INSERT INTO pedido VALUES("2","2","","0");
INSERT INTO pedido VALUES("3","3","","0");
INSERT INTO pedido VALUES("4","4","","0");
INSERT INTO pedido VALUES("1","1","3","1");
INSERT INTO pedido VALUES("5","5","","0");
INSERT INTO pedido VALUES("6","6","","0");
INSERT INTO pedido VALUES("7","7","","0");
INSERT INTO pedido VALUES("8","8","","0");



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
) ENGINE=MyISAM AUTO_INCREMENT=193 DEFAULT CHARSET=latin1;

INSERT INTO tbl_carrinho VALUES("56","7","virgulas","1350.00","1","0","2013-10-04","18:59:00","7","0","2","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("54","7","virgulas","1350.00","1","0","2013-10-04","18:55:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("55","2","teste2","300.00","1","0","2013-10-04","18:55:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("57","14","45645","456450.00","1","0","2013-10-04","18:59:00","7","0","2","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("115","9","guilherme","500.00","1","0","2013-10-05","19:45:00","7","0","3","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("113","15","45654","456450.00","1","0","2013-10-05","19:45:00","7","0","3","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("114","15","45654","456450.00","1","0","2013-10-05","19:45:00","7","0","3","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("111","15","45654","456450.00","1","0","2013-10-05","19:45:00","7","0","3","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("110","15","45654","456450.00","1","0","2013-10-05","19:45:00","7","0","3","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("127","14","45645","","1","0","2013-10-06","12:39:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("109","14","45645","456450.00","1","0","2013-10-05","19:45:00","7","0","3","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("69","16","8","32.00","1","0","2013-10-05","19:34:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("70","16","8","32.00","1","0","2013-10-05","19:34:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("71","16","8","32.00","1","0","2013-10-05","19:34:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("72","16","8","32.00","1","0","2013-10-05","19:34:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("112","15","45654","456450.00","1","0","2013-10-05","19:45:00","7","0","3","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("75","13","45654","45360.00","1","0","2013-10-05","19:34:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("121","14","45645","","1","0","2013-10-05","20:00:00","7","0","3","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("120","14","45645","","1","0","2013-10-05","20:00:00","7","0","3","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("119","14","45645","","1","0","2013-10-05","20:00:00","7","0","3","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("118","10","sdghf","4560.00","1","0","2013-10-05","19:45:00","7","0","3","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("181","30","12","12.00","1","0","2013-10-10","18:21:00","1","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("117","8","quatro queijo","9.00","1","0","2013-10-05","19:45:00","7","0","3","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("178","16","8","32.00","1","0","2013-10-07","22:35:00","1","0","3","0","1","0","0");
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
INSERT INTO tbl_carrinho VALUES("180","30","12","12.00","1","0","2013-10-10","15:20:00","6","0","0","0","0","0","0");
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
INSERT INTO tbl_carrinho VALUES("179","30","12","12.00","1","0","2013-10-10","14:46:00","1","0","3","0","0","0","0");
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
INSERT INTO tbl_carrinho VALUES("143","16","8","32.00","1","0","2013-10-06","14:51:00","7","0","3","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("144","26","eryrtyertyrt","","1","0","2013-10-06","16:41:00","7","0","3","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("145","19","etyiuiy","","1","0","2013-10-06","16:41:00","7","0","3","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("146","19","etyiuiy","","1","0","2013-10-06","16:41:00","7","0","3","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("147","19","etyiuiy","","1","0","2013-10-06","16:41:00","7","0","3","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("148","19","etyiuiy","","1","0","2013-10-06","16:41:00","7","0","3","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("149","19","etyiuiy","","1","0","2013-10-06","16:41:00","7","0","3","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("182","32","4","50.00","1","0","2013-10-10","18:21:00","1","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("183","30","12","12.00","1","0","2013-10-10","18:26:00","2","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("184","30","12","12.00","1","0","2013-10-10","18:35:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("159","13","45654","60.00","1","0","2013-10-06","16:43:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("160","15","45654","15.00","1","0","2013-10-06","16:43:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("161","14","45645","","1","0","2013-10-06","16:43:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("162","14","45645","","1","0","2013-10-06","16:43:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("163","14","45645","","1","0","2013-10-06","16:43:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("164","14","45645","","1","0","2013-10-06","16:43:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("165","14","45645","","1","0","2013-10-06","16:43:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("166","28","wutyutyuty","","1","0","2013-10-06","16:43:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("167","24","wrywrtyr","","1","0","2013-10-06","16:43:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("168","23","wrtyrtyrtyrt","","1","0","2013-10-06","16:43:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("169","21","wqerytwrrtyrt","","1","0","2013-10-06","16:43:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("170","7","virgulas","15.50","1","0","2013-10-06","16:43:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("171","31","6","20.00","1","0","2013-10-06","16:48:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("172","16","8","32.00","1","0","2013-10-06","16:48:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("173","30","12","12.00","1","0","2013-10-06","16:48:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("174","23","wrtyrtyrtyrt","","1","0","2013-10-06","17:22:00","4","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("175","25","wryrtyrtyrt","","1","0","2013-10-06","17:22:00","4","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("176","21","wqerytwrrtyrt","","1","0","2013-10-06","17:22:00","4","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("177","32","4","50.00","1","0","2013-10-06","17:23:00","4","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("185","31","6","20.00","1","0","2013-10-10","18:35:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("186","16","8","32.00","1","0","2013-10-10","18:35:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("187","30","12","12.00","1","0","2013-10-11","17:39:00","1","0","3","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("188","32","4","50.00","1","0","2013-10-11","17:39:00","1","0","3","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("189","31","6","20.00","1","0","2013-10-11","17:39:00","1","0","3","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("191","31","6","20.00","1","0","2013-10-12","12:45:00","1","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("192","30","12","15.00","1","0","2013-10-12","12:45:00","1","0","0","0","0","0","0");



DROP TABLE tbl_produtos;

CREATE TABLE `tbl_produtos` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `img` varchar(36) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `preco` varchar(10) NOT NULL,
  `id_categoria` int(30) NOT NULL,
  `destino` int(1) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

INSERT INTO tbl_produtos VALUES("8","quatro queijo","","9.00","1","1");
INSERT INTO tbl_produtos VALUES("9","guilherme","","500.00","1","1");
INSERT INTO tbl_produtos VALUES("10","sdghf","","18.00","1","0");
INSERT INTO tbl_produtos VALUES("11","adg","","453.00","1","0");
INSERT INTO tbl_produtos VALUES("12","54035","","50.00","1","0");
INSERT INTO tbl_produtos VALUES("13","45654","","60.00","1","1");
INSERT INTO tbl_produtos VALUES("16","8","","32.00","3","1");
INSERT INTO tbl_produtos VALUES("17","fcyuyi","","","1","0");
INSERT INTO tbl_produtos VALUES("19","etyiuiy","","","1","0");
INSERT INTO tbl_produtos VALUES("20","euiyuiyuiyu","","","1","0");
INSERT INTO tbl_produtos VALUES("22","rwyrtyrtyrt","","","1","0");
INSERT INTO tbl_produtos VALUES("23","wrtyrtyrtyrt","","","1","0");
INSERT INTO tbl_produtos VALUES("24","wrywrtyr","","","1","0");
INSERT INTO tbl_produtos VALUES("25","wryrtyrtyrt","","","1","0");
INSERT INTO tbl_produtos VALUES("26","eryrtyertyrt","","","1","0");
INSERT INTO tbl_produtos VALUES("27","yuetutyu","","","1","0");
INSERT INTO tbl_produtos VALUES("28","wutyutyuty","","","1","0");
INSERT INTO tbl_produtos VALUES("30","12","","15.00","3","0");
INSERT INTO tbl_produtos VALUES("31","6","","20.00","3","0");
INSERT INTO tbl_produtos VALUES("32","4","","12.00","3","0");



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



