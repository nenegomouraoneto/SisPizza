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
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

INSERT INTO cadastro VALUES("2","CARLOS BARBOSA","SOARES","001101111","232323232","FORTALEZA","carlos@carlos","MESSEJANA","DOS PARDAIS","101","");
INSERT INTO cadastro VALUES("14","ANA CECILIA","","93823823882","","","ana@gmail.com","TAPUIO","DAS FLORES COLORIDAS","05/06/2017","");
INSERT INTO cadastro VALUES("22","ARNALDO SOARES","","9922888311","","","","GUARIBAS","TRAVESSA JOAO PESSOA","06/06/2017","");
INSERT INTO cadastro VALUES("19","MARCIA RODRIGUES","","9928282828","","","","ALDEOTA","DAS MENINAS","05/06/2017","");
INSERT INTO cadastro VALUES("1","MARIZETE","ALVES","9933112233","3939393939","EUSEBIO","mari@mari","COAÇU","PARAISO","507","");



DROP TABLE categoria;

CREATE TABLE `categoria` (
  `id_categoria` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

INSERT INTO categoria VALUES("13","Pizzas");
INSERT INTO categoria VALUES("14","Self-Serce");
INSERT INTO categoria VALUES("10","Bebidas Quentes");
INSERT INTO categoria VALUES("9","Bebidas Frias");
INSERT INTO categoria VALUES("11","Sandwiches");
INSERT INTO categoria VALUES("12","Sorvetes");
INSERT INTO categoria VALUES("17","Salgados");
INSERT INTO categoria VALUES("19","pizza");



DROP TABLE config;

CREATE TABLE `config` (
  `id_conf` int(30) NOT NULL,
  `empresa` varchar(200) NOT NULL,
  `telefone` varchar(30) NOT NULL,
  `pgarcon` int(10) NOT NULL,
  `ativo` int(2) NOT NULL,
  `logo` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO config VALUES("0","ConcepTI Soluções em TI","999999999999","5","1","logo.png");
INSERT INTO config VALUES("0","ConcepTI Soluções em TI","999999999999","0","0","logo.png");



DROP TABLE conteudo;

CREATE TABLE `conteudo` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `conteudo` text NOT NULL,
  `data` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO conteudo VALUES("1","Quem Somos","<div class=\"txt_interna\"><div class=\"txt_interna\"><p>Desde outubro de&nbsp;2010 a emissora foi segmentada ao público jovem, com uma linguagem din&acirc;mica e irreverente. Seguindo uma programa&ccedil;&atilde;o musical no estilo Jovem e Popular, a rádio atinge diretamente o gosto do jovem brasileiro na atualidade.</p><p>Contando com uma talentosa e criativa equipe de profissionais, hoje a&nbsp;Positiva Fm&nbsp;&eacute; refer&ecirc;ncia por seus programas, ditando tend&ecirc;ncias, ao levar entretenimento e divers&atilde;o de qualidade a todos os seus ouvintes.</p><p>Com muitas novidades, lan&ccedil;amentos, informa&ccedil;&atilde;o, humor, e interatividade, a Positiva Fm se consolida como a rádio que mais cresce em audi&ecirc;ncia no público jovem em todo país.</p></div></div>","2011-08-18 23:58:09");
INSERT INTO conteudo VALUES("2","Programação","<p align=\"left\">Fique ligado na programa&ccedil;&atilde;o da Rádio After para conferir o melhor som com a melhor programa&ccedil;&atilde;o.</p><p align=\"left\">Aqui voc&ecirc; terá a chance de ganhar vips para as principais festas e baladas que acontecem em S&atilde;o Paulo.</p><p align=\"left\">Em breve estaremos divulgando toda a grade de programa&ccedil;&atilde;o Rádio After.</p><p align=\"left\">Obrigada </p>","2011-07-27 06:46:13");
INSERT INTO conteudo VALUES("3","Promoções","<p align=\"center\">&nbsp;</p><p align=\"center\">&nbsp;</p><p align=\"center\">&nbsp;</p><p align=\"center\">&nbsp;</p><p align=\"center\">Central de Promo&ccedil;&otilde;es</p>","2011-05-19 20:36:52");
INSERT INTO conteudo VALUES("4","Fale Conosco","<p align=\"center\">&nbsp;</p><p align=\"center\">&nbsp;</p><p align=\"center\">&nbsp;</p><p align=\"center\">Interatividade, dúvidas, dicas, sugest&otilde;es:</p>","2012-07-05 23:11:38");
INSERT INTO conteudo VALUES("5","Como Ouvir","<p>Apesar de nossos esfor&ccedil;os para tornar o acesso totalmente automático para os<br />ouvintes, algumas v&ecirc;zes os internautas poder&atilde;o enfrentar problemas para<br />acessar a rádio. Para solucionar estes problemas, criamos esta página.<br /><br /><strong>&bull; <a href=\"#1\"><font color=\"#000000\">Entro no site mas n&atilde;o ou&ccedil;o a rádio.</font></a><br /><br />&bull; <a href=\"#2\"><font color=\"#000000\">Utilizo o Firefox e n&atilde;o consigo ouvir a rádio.</font></a><br /><br />&bull; <a href=\"#3\"><font color=\"#000000\">Utilizo Internet Explorer e n&atilde;o consigo ouvir a rádio.</font></a><br /><br />&bull; <a href=\"#4\"><font color=\"#000000\">O áudio sofre interrup&ccedil;&otilde;es constantes.</font></a><br /><br />&bull; <a href=\"#5\"><font color=\"#000000\">Sou usuário de Macintosh e n&atilde;o estou conseguindo ouvir a rádio.</font></a></strong><br /><br /><br /><a name=\"1\" /><strong>Entro no site mas n&atilde;o ou&ccedil;o a rádio.</strong><br /><br />Verifique a conex&atilde;o dos cabos das caixas de som, o volume do áudio, nas<br />próprias caixas e tamb&eacute;m no Windows. Verifique se a placa de áudio está<br />funcionando apropriadamente. Para verificar se a placa de áudio está<br />funcionando adequadamente, tente abrir um arquivo de áudio no Windows Media<br />Player (mp3 ou wma).<br /><br /><a name=\"2\" /><strong>Utilizo o Firefox e n&atilde;o consigo ouvir a rádio.</strong><br /><br />Se voc&ecirc; navega na internet utilizando Firefox, verifique se foi instalado o<br />Windows Media Player Plug-in for Firefox. Caso n&atilde;o tenha sido instalado,<br /><a href=\"https://addons.mozilla.org/pt-BR/firefox/addon/2119\" target=\"_blank\"><font color=\"#000000\">clique aqui</font></a> para acessar a página de download e instale o plug-in.<br /><br /><a name=\"3\" /><strong>Utilizo Internet Explorer e n&atilde;o consigo ouvir a rádio.</strong><br /><br />Se voc&ecirc; utiliza Internet Explorer, verifique se voc&ecirc; possui a última vers&atilde;o<br />do Microsoft Windows Player. Para fazer o download da última vers&atilde;o, clique<br />no link abaixo.<br /><a href=\"http://www.microsoft.com/windows/windowsmedia/player/download/\" target=\"_blank\"><strong><font color=\"#000000\">http://www.microsoft.com/windows/windowsmedia/player/download/</font></strong></a> Se voc&ecirc; acessar o site e o Internet Explorer solicitar a ativa&ccedil;&atilde;o do Active<br />X, autorize. Sem ele, n&atilde;o será possível ouvir a rádio.<br />Ou tente ouvir a rádio pelo próprio programa do Windows Media Player, clicando no ícone<br />na barra superior da página da Rádio. <br /><a name=\"4\" /><strong>O áudio sofre interrup&ccedil;&otilde;es constantes.</strong><br /><br />Verifique se a sua conex&atilde;o de banda larga está com a qualidade adequada:<br />interrup&ccedil;&otilde;es e quedas de velocidade na conex&atilde;o influenciam diretamente na<br />sua experi&ecirc;ncia de áudio. Se voc&ecirc; estiver compartilhando a conex&atilde;o com<br />outros usuários, a taxa de transfer&ecirc;ncia de dados &eacute; dividida pela quantidade<br />de pessoas conectadas ao servi&ccedil;o. A taxa mínima de conex&atilde;o necessária para<br />ouvir a rádio adequadamente &eacute; de 256 Kbps por computador.<br /><br /><a name=\"5\" /><strong>Sou usuário de Macintosh e n&atilde;o estou conseguindo ouvir a rádio.</strong><br /><br />Para usuários de Macintosh rodando OSX 10.4.x ou superior, recomendamos a<br />instala&ccedil;&atilde;o do Flip4Mac (www.flip4mac.com).Ao ouvir a rádio no Mac, com o<br />Flip4Mac instalado, o QuickTime deverá ser acionado automaticamente. Aguarde<br />alguns segundos e o QuickTime irá carregar o streaming. Se mesmo assim<br />continuar a ter problemas para acessar a rádio, verifique as configura&ccedil;&otilde;es<br />do QuickTime (no menu QuickTime Player&gt;QuickTime Preferences&gt;Advanced,<br />desabilite o ítem &sup2;enable kiosk mode&sup2;. Em Streaming, ajuste a velocidade de<br />conex&atilde;o. Em Brownser, ajuste o tamanho do cache. Cache em 0 pode gerar<br />problemas de interrup&ccedil;&otilde;es. Se voc&ecirc; acessa a internet via rede, verifique se<br />programas como firewalls est&atilde;o impedindo o tr&acirc;nsito do streaming atrav&eacute;s das<br />portas padr&otilde;es. Em QuickTime Preferences&gt;Advanced&gt;Transport Setup, vefique<br />se o protocolo de transporte (Transport protocol) está configurado em HTTP e<br />a porta (Port ID) está configurada como 80.<br /><br />Continua a enfrentar problemas? Entre em contato conosco e fa&ccedil;a um relato do<br />problema para que possamos encontrar a solu&ccedil;&atilde;o.</p>","2011-07-16 11:06:38");
INSERT INTO conteudo VALUES("6","Como Anunciar","<p><strong>POR QUE ANUNCIAR NO MEIO RÁDIO?</strong></p><p><strong>O rádio está junto ao consumidor na hora da compra.<br /></strong>Segundo as pesquisas relizadas, o rádio &eacute; o veículo que está junto a 93% dos consumidores na hora que antecede a compra.</p><p><strong>As pessoas passam mais tempo ouvindo rádio.<br /></strong>Para convencer o consumidor o comercial tem que ser ouvido várias vezes ao dia e o rádio &eacute; o veículo que ele mais ouve, em m&eacute;dia 3 horas e 45 minutos por dia.</p><p><strong>Consumidor passa 17% mais tempo com o rádio que outros meios.<br /></strong>Pesquisa do Ibope confirma que as pessoas que fazem compras passam em m&eacute;dia 17% mais tempo ouvindo o rádio que vendo a televis&atilde;o, lendo jornal, revista ou internet - o que dá a seu comercial 17% mais chance de ser absorvido.</p><p><strong>O rádio chega onde outros veículos n&atilde;o.<br /></strong>O rádio &eacute; o único veículo que atinge o consumidor em qualquer lugar: come&ccedil;ando o dia com o rádio-relógio, sendo companhia no caf&eacute; da manh&atilde;, no &ocirc;nibus e no carro, a caminho do trabalho, no restaurante ou na lanchonete, na praia, na fazenda, no cooper e na bicicleta com o walkman (possuído por 51% da popula&ccedil;&atilde;o), ao lado, enquanto navega na internet. Enfim, o rádio &eacute; o único veículo que tem um público exclusivo, enorme e pronto para receber sua mensagem.</p><p><strong>O rádio está em 99% das casas.<br /></strong>Al&eacute;m desta vantagem nas casas, o rádio está em 83% dos carros.</p><p><strong>O horário nobre do rádio dura 13 horas.<br /></strong>O rádio &eacute; imbatível das 6 horas da manh&atilde; at&eacute; as 19 horas. S&atilde;o quatro vezes mais efici&ecirc;ncia a favor do rádio, uma das raz&otilde;es do grande crescimento do veículo nos últimos anos.</p><p><strong>Uma produ&ccedil;&atilde;o de alto nível no rádio custa 95% a menos.<br /></strong>Isto porque o rádio usa a imagina&ccedil;&atilde;o do consumidor. Ex.:... quando voc&ecirc; mostra uma &quot;bela mulher&quot; nos outros meios, ela pode ou n&atilde;o agradar o consumidor. Mas se voc&ecirc; diz a ele, no rádio que ali está uma &quot;bela mulher&quot;, ele imagina a mulher de seus sonhos.</p><p>&nbsp;</p><p><table width=\"96%\" height=\"\" align=\"center\" border=\"0\"><tr><td>Em 01 dia sozinho o rádio consegue cobrir</td><td>66% da popula&ccedil;&atilde;o</td></tr><tr><td>Em 02 dias</td><td>78% da popula&ccedil;&atilde;o</td></tr><tr><td>Em 07 dias</td><td>95% da popula&ccedil;&atilde;o</td></tr><tr><td>Em 15 dias vai a </td><td>97% da popula&ccedil;&atilde;o</td></tr><tr><td><font size=\"1\">Fonte: IBOPE</font></td></tr></table><a href=\"mailto:comercial@radioafter.com\" /></p>","2012-05-04 17:09:36");



DROP TABLE cozinha;

CREATE TABLE `cozinha` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `produto` varchar(200) NOT NULL,
  `qtd` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO cozinha VALUES("1","À MODA DA CASA","1");
INSERT INTO cozinha VALUES("2","À MODA DA CASA","1");
INSERT INTO cozinha VALUES("3","Coca-Cola zero","1");
INSERT INTO cozinha VALUES("4","À MODA DA CASA","1");
INSERT INTO cozinha VALUES("5","Coca-Cola zero","1");
INSERT INTO cozinha VALUES("6","À MODA DA CASA","1");
INSERT INTO cozinha VALUES("7","À MODA DA CASA","1");
INSERT INTO cozinha VALUES("8","Coca-Cola zero","1");
INSERT INTO cozinha VALUES("9","Hot Dog","1");
INSERT INTO cozinha VALUES("10","pizza mussarela","1");



DROP TABLE dados;

CREATE TABLE `dados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `palavras` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `rodape` varchar(200) NOT NULL,
  `orkut` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO dados VALUES("1","Forrozeiros Gospel - A radio dos Forrozeiros Adoradores","forro gospel, radio de forro gospel, Forrozeiros Gospel","","","Forrozeiros Gospel © 2013 - Todos os direitos reservados.","","","");



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
) ENGINE=MyISAM AUTO_INCREMENT=536 DEFAULT CHARSET=latin1;




DROP TABLE garcon;

CREATE TABLE `garcon` (
  `idGarcon` int(10) NOT NULL AUTO_INCREMENT,
  `nomeGarcon` varchar(200) NOT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `nv` int(1) NOT NULL,
  PRIMARY KEY (`idGarcon`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

INSERT INTO garcon VALUES("1","","","","0");
INSERT INTO garcon VALUES("32","garcom","garcom","garcom","1");
INSERT INTO garcon VALUES("25","PAULO","paulo","paulo","2");
INSERT INTO garcon VALUES("33","LUCAS","lucas","lucas","1");
INSERT INTO garcon VALUES("34","MARIA","maria","maria","1");
INSERT INTO garcon VALUES("35","KELLY SANTOS","kelly","kelly","2");
INSERT INTO garcon VALUES("47","ADMIN","admin","admin","0");



DROP TABLE login;

CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO login VALUES("1","admin","admin");
INSERT INTO login VALUES("2","erasto","era123");



DROP TABLE mesa;

CREATE TABLE `mesa` (
  `id_mesa` int(10) NOT NULL AUTO_INCREMENT,
  `numero` int(10) NOT NULL,
  `idGarcon` varchar(200) NOT NULL,
  `situacao` int(1) NOT NULL,
  PRIMARY KEY (`id_mesa`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

INSERT INTO mesa VALUES("44","44","","0");
INSERT INTO mesa VALUES("45","45","","0");
INSERT INTO mesa VALUES("46","46","","0");
INSERT INTO mesa VALUES("47","47","","0");
INSERT INTO mesa VALUES("48","48","","0");
INSERT INTO mesa VALUES("104","104","","0");
INSERT INTO mesa VALUES("102","102","","0");
INSERT INTO mesa VALUES("96","96","","0");
INSERT INTO mesa VALUES("87","87","","0");
INSERT INTO mesa VALUES("103","103","","0");
INSERT INTO mesa VALUES("97","97","","0");
INSERT INTO mesa VALUES("93","93","","0");
INSERT INTO mesa VALUES("95","95","","0");
INSERT INTO mesa VALUES("88","88","","0");
INSERT INTO mesa VALUES("89","89","","0");
INSERT INTO mesa VALUES("98","98","","0");
INSERT INTO mesa VALUES("99","99","","0");
INSERT INTO mesa VALUES("100","100","","0");
INSERT INTO mesa VALUES("42","42","","0");
INSERT INTO mesa VALUES("43","43","","0");
INSERT INTO mesa VALUES("92","92","","0");
INSERT INTO mesa VALUES("91","91","","0");
INSERT INTO mesa VALUES("90","90","","0");
INSERT INTO mesa VALUES("94","94","","0");



DROP TABLE pedido;

CREATE TABLE `pedido` (
  `id_mesa` int(10) NOT NULL AUTO_INCREMENT,
  `numero` int(10) NOT NULL,
  `idGarcon` varchar(200) NOT NULL,
  `situacao` int(1) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `sobrenome` varchar(50) DEFAULT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `numerocasa` varchar(20) DEFAULT NULL,
  `detalhes` longtext,
  PRIMARY KEY (`id_mesa`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

INSERT INTO pedido VALUES("51","5","9","0","ana@gmail.com","ANA CECILIA","COSTA","332332323","TAPUIO","DAS FLORES COLORIDAS","310","");



DROP TABLE planos;

CREATE TABLE `planos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` text NOT NULL,
  `valor` varchar(250) NOT NULL,
  `descricao` longtext NOT NULL,
  `tipo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO planos VALUES("6","site + hospedagem","300,00","<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\n	<tbody>\n		<tr>\n			<td>acessos ilimitados</td>\n			<td>suporte 7 dias da semana</td>\n		</tr>\n		<tr>\n			<td>pagamento anual</td>\n			<td>domineo gratuito</td>\n		</tr>\n		<tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n","revenda");
INSERT INTO planos VALUES("7","hospedagem bronze","99,90","<p>10MG de espa&ccedil;o</p>\n\n<p>trafego ilimitado</p>\n\n<p>PHPMYADMIN</p>\n\n<p>1 banco de dados</p>\n","hospedagem");
INSERT INTO planos VALUES("8","hospedagem prata","199,90","<p>50MG de espa&ccedil;o</p>\n\n<p>trafego ilimitado</p>\n\n<p>5 emails</p>\n\n<p>2 banco de dados</p>\n\n<p>&nbsp;</p>\n","hospedagem");



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
) ENGINE=MyISAM AUTO_INCREMENT=1136 DEFAULT CHARSET=latin1;

INSERT INTO tbl_carrinho VALUES("1135","55","Fanta Uva","2.50","1","0","2017-06-13","19:11:00","42","0","33","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1134","73","Coxinha","4,00","1","0","2017-06-13","19:09:00","42","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1133","60","Pão de Queijo","2.50","1","0","2017-06-13","19:07:00","42","0","33","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1132","60","Pão de Queijo","2.50","1","0","2017-06-13","19:07:00","42","0","33","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1131","60","Pão de Queijo","2.50","1","0","2017-06-13","19:07:00","42","0","33","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1130","58","Cerveja Antartica","5.00","1","0","2017-06-13","19:06:00","42","0","33","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1129","57","Cerveja Brahma","4,50","1","0","2017-06-13","19:06:00","42","0","33","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1128","58","Cerveja Antartica","5.00","1","0","2017-06-13","19:06:00","42","0","33","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1127","68","1/4 pizza frango catupiry","8.00","1","0","2017-06-12","12:00:00","96","0","34","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1126","69","1/4 pizza calabresa","9,00","1","0","2017-06-12","11:10:00","96","0","34","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1125","65","fanta","19.99","1","0","2017-06-12","10:41:00","96","0","34","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1124","73","Coxinha","4,00","1","0","2017-06-12","10:41:00","96","0","34","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1123","73","Coxinha","4,00","1","0","2017-06-12","10:41:00","96","0","34","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1122","73","Coxinha","4,00","1","0","2017-06-12","10:41:00","96","0","34","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1121","61","Bauru Especial","4.00","1","0","2017-06-12","10:40:00","42","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1120","63","À MODA DA CASA","22,00","1","0","2017-06-12","10:40:00","42","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1119","63","À MODA DA CASA","22,00","1","0","2017-06-12","10:40:00","42","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1118","74","COCA COLA 2L","7,00","1","0","2017-06-12","10:40:00","42","0","33","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1117","74","COCA COLA 2L","7,00","1","0","2017-06-12","10:40:00","42","0","33","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1116","69","1/4 pizza calabresa","9,00","1","0","2017-06-11","17:44:00","94","0","34","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1115","68","1/4 pizza frango catupiry","8.00","1","0","2017-06-11","17:44:00","94","0","34","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1114","64","pizza mussarela","10.00","1","0","2017-06-11","17:44:00","94","0","34","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1113","74","COCA COLA 2L","7,00","1","0","2017-06-11","17:43:00","103","0","34","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1112","69","1/4 pizza calabresa","9,00","1","0","2017-06-11","17:43:00","103","0","34","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1110","69","1/4 pizza calabresa","9,00","1","0","2017-06-11","17:39:00","103","0","34","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1109","61","Bauru Especial","4.00","1","0","2017-06-11","17:38:00","103","0","34","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1108","63","À MODA DA CASA","22,00","1","0","2017-06-11","17:35:00","103","0","34","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1111","72","Fanta uva","4.50","1","0","2017-06-11","17:41:00","103","0","34","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1106","73","Coxinha","4,00","1","0","2017-06-11","17:31:00","103","0","34","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1105","57","Cerveja Brahma","4,50","1","0","2017-06-11","17:30:00","103","0","34","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1104","58","Cerveja Antartica","5.00","1","0","2017-06-11","17:30:00","103","0","34","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1103","73","Coxinha","4,00","1","0","2017-06-11","13:10:00","43","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1102","59","Whisky Black jack","4.00","1","0","2017-06-11","13:10:00","43","0","33","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1101","64","pizza mussarela","10.00","1","0","2017-06-11","13:06:00","42","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1100","64","pizza mussarela","10.00","1","0","2017-06-11","13:06:00","42","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1099","64","pizza mussarela","10.00","1","0","2017-06-11","12:58:00","42","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1098","63","À MODA DA CASA","22,00","1","0","2017-06-11","12:58:00","42","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1097","69","1/4 pizza calabresa","9,00","1","0","2017-06-11","12:58:00","42","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1096","60","Pão de Queijo","2.50","1","0","2017-06-11","11:38:00","42","0","33","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1095","62","Hot Dog","3.00","1","0","2017-06-11","11:38:00","42","0","33","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("1094","61","Bauru Especial","4.00","1","0","2017-06-11","11:38:00","42","0","33","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("1093","62","Hot Dog","3.00","1","0","2017-06-11","10:57:00","45","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1092","62","Hot Dog","3.00","1","0","2017-06-11","10:57:00","45","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1091","60","Pão de Queijo","2.50","1","0","2017-06-11","10:57:00","45","0","33","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1090","62","Hot Dog","3.00","1","0","2017-06-11","10:57:00","42","0","35","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1089","61","Bauru Especial","4.00","1","0","2017-06-11","10:57:00","42","0","35","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1088","73","Coxinha","4,00","1","0","2017-06-11","10:56:00","43","0","34","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1087","69","1/4 pizza calabresa","9,00","1","0","2017-06-11","10:56:00","43","0","34","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1086","69","1/4 pizza calabresa","9,00","1","0","2017-06-11","10:56:00","43","0","34","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1085","69","1/4 pizza calabresa","9,00","1","0","2017-06-11","10:56:00","43","0","34","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1084","69","1/4 pizza calabresa","9,00","1","0","2017-06-11","10:55:00","43","0","34","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1083","74","COCA COLA 2L","7,00","1","0","2017-06-11","09:59:00","44","0","34","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1082","69","1/4 pizza calabresa","9,00","1","0","2017-06-11","09:58:00","44","0","34","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("1081","69","1/4 pizza calabresa","9,00","1","0","2017-06-11","09:58:00","44","0","34","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("1080","69","1/4 pizza calabresa","9,00","1","0","2017-06-11","09:57:00","44","0","34","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("1079","69","1/4 pizza calabresa","9,00","1","0","2017-06-11","09:57:00","44","0","34","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("1078","58","Cerveja Antartica","5.00","1","0","2017-06-10","16:42:00","95","0","33","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1077","63","À MODA DA CASA","22,00","1","0","2017-06-10","16:41:00","95","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1076","63","À MODA DA CASA","22,00","1","0","2017-06-10","16:41:00","95","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1075","63","À MODA DA CASA","22,00","1","0","2017-06-10","16:41:00","95","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1074","63","À MODA DA CASA","22,00","1","0","2017-06-10","16:41:00","95","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1073","64","pizza mussarela","10.00","1","0","2017-06-10","16:41:00","95","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1072","64","pizza mussarela","10.00","1","0","2017-06-10","16:41:00","95","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1071","69","1/4 pizza calabresa","9,00","1","0","2017-06-10","16:41:00","95","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1070","59","Whisky Black jack","4.00","1","0","2017-06-10","16:31:00","95","0","33","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1069","62","Hot Dog","3.00","1","0","2017-06-10","16:18:00","95","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1068","62","Hot Dog","3.00","1","0","2017-06-10","16:18:00","95","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1066","62","Hot Dog","3.00","1","0","2017-06-10","16:13:00","95","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1067","60","Pão de Queijo","2.50","1","0","2017-06-10","16:17:00","95","0","33","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1062","64","pizza mussarela","10.00","1","0","2017-06-10","15:54:00","95","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1063","68","1/4 pizza frango catupiry","8.00","1","0","2017-06-10","15:55:00","95","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1058","63","À MODA DA CASA","22,00","1","0","2017-06-10","15:48:00","95","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1057","63","À MODA DA CASA","22,00","1","0","2017-06-10","15:48:00","95","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1056","68","1/4 pizza frango catupiry","8.00","1","0","2017-06-10","15:48:00","95","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1064","64","pizza mussarela","10.00","1","0","2017-06-10","15:55:00","95","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1054","73","Coxinha","4,00","1","0","2017-06-10","11:58:00","88","0","34","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1053","52","Coca-Cola zero","4.50","1","0","2017-06-10","11:57:00","98","0","35","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1052","74","COCA COLA 2L","7,00","1","0","2017-06-10","11:57:00","98","0","35","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1051","57","Cerveja Brahma","4,50","1","0","2017-06-10","11:57:00","98","0","35","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1050","58","Cerveja Antartica","5.00","1","0","2017-06-10","11:57:00","98","0","35","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1049","64","pizza mussarela","10.00","1","0","2017-06-10","11:49:00","95","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1048","63","À MODA DA CASA","22,00","1","0","2017-06-10","11:49:00","95","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1047","68","1/4 pizza frango catupiry","8.00","1","0","2017-06-10","11:49:00","95","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1065","69","1/4 pizza calabresa","9,00","1","0","2017-06-10","16:10:00","95","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1045","65","fanta","19.99","1","0","2017-06-09","14:52:00","43","0","33","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1044","63","À MODA DA CASA","22,00","1","0","2017-06-09","14:51:00","43","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1043","64","pizza mussarela","10.00","1","0","2017-06-09","14:51:00","43","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1042","73","Coxinha","4,00","1","0","2017-06-09","14:51:00","43","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1041","61","Bauru Especial","4.00","1","0","2017-06-09","14:51:00","43","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1040","59","Whisky Black jack","4.00","1","0","2017-06-09","14:51:00","43","0","33","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1038","74","COCA COLA 2L","7,00","1","0","2017-06-09","14:51:00","43","0","33","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1039","52","Coca-Cola zero","4.50","1","0","2017-06-09","14:51:00","43","0","33","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1037","62","Hot Dog","3.00","1","0","2017-06-09","14:50:00","43","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1024","58","Cerveja Antartica","5.00","1","0","2017-06-08","22:43:00","95","0","34","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1025","58","Cerveja Antartica","5.00","1","0","2017-06-08","22:43:00","95","0","34","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1026","62","Hot Dog","3.00","1","0","2017-06-08","22:43:00","95","0","34","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1027","62","Hot Dog","3.00","1","0","2017-06-08","22:43:00","95","0","34","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1028","62","Hot Dog","3.00","1","0","2017-06-08","22:43:00","95","0","34","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1029","62","Hot Dog","3.00","1","0","2017-06-08","22:43:00","95","0","34","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1030","73","Coxinha","4,00","1","0","2017-06-09","09:14:00","88","0","35","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1031","73","Coxinha","4,00","1","0","2017-06-09","09:14:00","88","0","35","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1032","73","Coxinha","4,00","1","0","2017-06-09","10:56:00","42","0","25","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1033","63","À MODA DA CASA","22,00","1","0","2017-06-09","12:12:00","97","0","34","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1034","52","Coca-Cola zero","4.50","1","0","2017-06-09","12:12:00","97","0","34","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1035","52","Coca-Cola zero","4.50","1","0","2017-06-09","12:12:00","97","0","34","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1036","62","Hot Dog","3.00","1","0","2017-06-09","14:50:00","43","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1016","63","À MODA DA CASA","22,00","1","0","2017-06-08","22:38:00","45","0","25","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1018","74","COCA COLA 2L","7,00","1","0","2017-06-08","22:39:00","45","0","25","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1019","74","COCA COLA 2L","7,00","1","0","2017-06-08","22:39:00","45","0","25","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1020","59","Whisky Black jack","4.00","1","0","2017-06-08","22:41:00","45","0","25","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1021","59","Whisky Black jack","4.00","1","0","2017-06-08","22:41:00","45","0","25","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1022","58","Cerveja Antartica","5.00","1","0","2017-06-08","22:43:00","95","0","34","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1023","58","Cerveja Antartica","5.00","1","0","2017-06-08","22:43:00","95","0","34","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1015","63","À MODA DA CASA","22,00","1","0","2017-06-08","22:38:00","45","0","25","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1008","72","Fanta uva","4.50","1","0","2017-06-08","17:47:00","42","0","35","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1009","61","Bauru Especial","4.00","1","0","2017-06-08","22:34:00","42","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1010","62","Hot Dog","3.00","1","0","2017-06-08","22:34:00","42","0","33","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1011","60","Pão de Queijo","2.50","1","0","2017-06-08","22:34:00","42","0","33","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1012","74","COCA COLA 2L","7,00","1","0","2017-06-08","22:34:00","42","0","33","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1013","63","À MODA DA CASA","22,00","1","0","2017-06-08","22:38:00","45","0","25","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1014","63","À MODA DA CASA","22,00","1","0","2017-06-08","22:38:00","45","0","25","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1007","54","Fata Laranja","2.50","1","0","2017-06-08","17:47:00","42","0","35","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1006","63","À MODA DA CASA","22,00","1","0","2017-06-08","17:47:00","42","0","35","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1005","63","À MODA DA CASA","22,00","1","0","2017-06-08","17:47:00","42","0","35","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1004","55","Fanta Uva","2.50","1","0","2017-06-08","10:05:00","97","0","35","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1003","52","Coca-Cola zero","4.50","1","0","2017-06-08","10:05:00","97","0","35","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("1002","64","pizza mussarela","10.00","1","0","2017-06-08","10:04:00","97","0","35","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("1001","64","pizza mussarela","10.00","1","0","2017-06-08","10:04:00","97","0","35","1","1","1","1");



DROP TABLE tbl_produtos;

CREATE TABLE `tbl_produtos` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `img` varchar(36) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `preco` varchar(10) NOT NULL,
  `id_categoria` int(30) NOT NULL,
  `destino` int(1) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

INSERT INTO tbl_produtos VALUES("56","Guarana","","3.50","9","0");
INSERT INTO tbl_produtos VALUES("55","Fanta Uva","","2.50","9","0");
INSERT INTO tbl_produtos VALUES("45","FRANGO PASSARINHO","","20.00","5","1");
INSERT INTO tbl_produtos VALUES("60","Pão de Queijo","","2.50","11","0");
INSERT INTO tbl_produtos VALUES("54","Fata Laranja","","2.50","9","0");
INSERT INTO tbl_produtos VALUES("50","PROVOLONE A MILANESA","","25.00","5","0");
INSERT INTO tbl_produtos VALUES("51","X SALADA","","6.00","8","1");
INSERT INTO tbl_produtos VALUES("52","Coca-Cola zero","","4.50","9","0");
INSERT INTO tbl_produtos VALUES("49","FILÉ DE FRANGO","","20.00","5","0");
INSERT INTO tbl_produtos VALUES("59","Whisky Black jack","","4.00","10","0");
INSERT INTO tbl_produtos VALUES("47","COCA COLA","","4.50","2","0");
INSERT INTO tbl_produtos VALUES("57","Cerveja Brahma","","4,50","9","0");
INSERT INTO tbl_produtos VALUES("63","À MODA DA CASA","","22,00","13","1");
INSERT INTO tbl_produtos VALUES("58","Cerveja Antartica","","5.00","9","0");
INSERT INTO tbl_produtos VALUES("46","PORÇÃO DE BATATAS FRITAS","","12.00","5","1");
INSERT INTO tbl_produtos VALUES("61","Bauru Especial","","4.00","11","1");
INSERT INTO tbl_produtos VALUES("62","Hot Dog","","3.00","11","1");
INSERT INTO tbl_produtos VALUES("64","pizza mussarela","","10.00","13","1");
INSERT INTO tbl_produtos VALUES("65","fanta","","19.99","9","0");
INSERT INTO tbl_produtos VALUES("66","Tolipa 200ml","","2.00","16","0");
INSERT INTO tbl_produtos VALUES("67","Tolipa 400ml","","5.00","16","0");
INSERT INTO tbl_produtos VALUES("68","1/4 pizza frango catupiry","","8.00","13","1");
INSERT INTO tbl_produtos VALUES("69","1/4 pizza calabresa","","9,00","13","1");
INSERT INTO tbl_produtos VALUES("72","Fanta uva","","4.50","9","0");
INSERT INTO tbl_produtos VALUES("73","Coxinha","","4,00","17","1");
INSERT INTO tbl_produtos VALUES("74","COCA COLA 2L","","7,00","9","0");
INSERT INTO tbl_produtos VALUES("75","CELULAR MOTO G3","","400.00","12","0");



DROP TABLE usuario;

CREATE TABLE `usuario` (
  `idUser` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `login` varchar(100) NOT NULL,
  `senha` varchar(20) NOT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO usuario VALUES("1","admin","","admin","admin");
INSERT INTO usuario VALUES("10","Erasto","erastoalpes@gmail.com","erasto","era123");



