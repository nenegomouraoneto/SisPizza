DROP TABLE cadastro;

CREATE TABLE `cadastro` (
  `id` int(11) NOT NULL auto_increment,
  `nome` varchar(50) default NULL,
  `sobrenome` varchar(50) default NULL,
  `telefone` varchar(20) default NULL,
  `celular` varchar(20) default NULL,
  `cidade` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `bairro` varchar(50) default NULL,
  `rua` varchar(50) default NULL,
  `numero` varchar(20) default NULL,
  `proximo` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO cadastro VALUES("1","","cghgf","hfghf","","fghfg","","hfg","hf","hfh","f");
INSERT INTO cadastro VALUES("2","","cghgf","hfghf","","fghfg","","hfg","hf","hfh","f");
INSERT INTO cadastro VALUES("3","Pablo","gomes","4435235165","","Campo MourÃ£o","","hfg","hf","131","");
INSERT INTO cadastro VALUES("4","Pablo","gomes","4435235165","","Campo MourÃ£o","","hfg","hf","131","");
INSERT INTO cadastro VALUES("5","Pablo","gomes","4435235165","","Campo MourÃ£o","","hfg","hf","","274656");
INSERT INTO cadastro VALUES("6","Pablo","gomes","4435235165","(44)98806004","Campo MourÃ£o","pabloapologomes@gmail.com","hfg","hf","131","ghjhj");
INSERT INTO cadastro VALUES("7","Pablo","gomes","4435235165","(44)98806004","Campo MourÃ£o","pabloapologomes@gmail.com","hfg","hf","131","ghjhj");
INSERT INTO cadastro VALUES("8","Pablo","gomes","4435235165","(44)98806004","Campo MourÃ£o","pabloapologomes@gmail.com","hfg","hf","131","ghjhj");
INSERT INTO cadastro VALUES("9","Pablo apolo barros gomes","gomes","4435235165","(44)98806004","Campo MourÃ£o","pabloapologomes@gmail.com","hfg","hf","131","");
INSERT INTO cadastro VALUES("10","Pablo apolo barros gomes","gomes","4435235165","(44)98806004","Campo MourÃ£o","pabloapologomes@gmail.com","hfg","hf","131","");
INSERT INTO cadastro VALUES("11","Pablo apolo barros gomes","gomes","4435235165","(44)98806004","Campo MourÃ£o","pabloapologomes@gmail.com","hfg","hf","131","");
INSERT INTO cadastro VALUES("12","Pablo apolo barros gomes","gomes","4435235165","(44)98806004","Campo MourÃ£o","pabloapologomes@gmail.com","hfg","hf","131","");
INSERT INTO cadastro VALUES("13","Pablo apolo barros gomes","gomes","4435235165","(44)98806004","Campo MourÃ£o","pabloapologomes@gmail.com","hfg","hf","131","");



DROP TABLE categoria;

CREATE TABLE `categoria` (
  `id_categoria` int(10) NOT NULL auto_increment,
  `nome` varchar(200) NOT NULL,
  PRIMARY KEY  (`id_categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

INSERT INTO categoria VALUES("13","Pizzas");
INSERT INTO categoria VALUES("16","Chopp");
INSERT INTO categoria VALUES("15","la");
INSERT INTO categoria VALUES("14","Self-Serce");
INSERT INTO categoria VALUES("10","Bebidas Quentes");
INSERT INTO categoria VALUES("9","Bebidas Frias");
INSERT INTO categoria VALUES("11","Sandwiches");
INSERT INTO categoria VALUES("12","Sorvetes");
INSERT INTO categoria VALUES("17","Salgados");



DROP TABLE config;

CREATE TABLE `config` (
  `id_conf` int(30) NOT NULL,
  `empresa` varchar(200) NOT NULL,
  `telefone` varchar(30) NOT NULL,
  `pgarcon` int(10) NOT NULL,
  `ativo` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO config VALUES("0","Panlela de Barro","91894547","10","1");



DROP TABLE conteudo;

CREATE TABLE `conteudo` (
  `id` int(5) NOT NULL auto_increment,
  `titulo` varchar(255) NOT NULL,
  `conteudo` text NOT NULL,
  `data` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO conteudo VALUES("1","Quem Somos","<div class=\"txt_interna\"><div class=\"txt_interna\"><p>Desde outubro de&nbsp;2010 a emissora foi segmentada ao público jovem, com uma linguagem din&acirc;mica e irreverente. Seguindo uma programa&ccedil;&atilde;o musical no estilo Jovem e Popular, a rádio atinge diretamente o gosto do jovem brasileiro na atualidade.</p><p>Contando com uma talentosa e criativa equipe de profissionais, hoje a&nbsp;Positiva Fm&nbsp;&eacute; refer&ecirc;ncia por seus programas, ditando tend&ecirc;ncias, ao levar entretenimento e divers&atilde;o de qualidade a todos os seus ouvintes.</p><p>Com muitas novidades, lan&ccedil;amentos, informa&ccedil;&atilde;o, humor, e interatividade, a Positiva Fm se consolida como a rádio que mais cresce em audi&ecirc;ncia no público jovem em todo país.</p></div></div>","2011-08-18 23:58:09");
INSERT INTO conteudo VALUES("2","Programação","<p align=\"left\">Fique ligado na programa&ccedil;&atilde;o da Rádio After para conferir o melhor som com a melhor programa&ccedil;&atilde;o.</p><p align=\"left\">Aqui voc&ecirc; terá a chance de ganhar vips para as principais festas e baladas que acontecem em S&atilde;o Paulo.</p><p align=\"left\">Em breve estaremos divulgando toda a grade de programa&ccedil;&atilde;o Rádio After.</p><p align=\"left\">Obrigada </p>","2011-07-27 06:46:13");
INSERT INTO conteudo VALUES("3","Promoções","<p align=\"center\">&nbsp;</p><p align=\"center\">&nbsp;</p><p align=\"center\">&nbsp;</p><p align=\"center\">&nbsp;</p><p align=\"center\">Central de Promo&ccedil;&otilde;es</p>","2011-05-19 20:36:52");
INSERT INTO conteudo VALUES("4","Fale Conosco","<p align=\"center\">&nbsp;</p><p align=\"center\">&nbsp;</p><p align=\"center\">&nbsp;</p><p align=\"center\">Interatividade, dúvidas, dicas, sugest&otilde;es:</p>","2012-07-05 23:11:38");
INSERT INTO conteudo VALUES("5","Como Ouvir","<p>Apesar de nossos esfor&ccedil;os para tornar o acesso totalmente automático para os<br />ouvintes, algumas v&ecirc;zes os internautas poder&atilde;o enfrentar problemas para<br />acessar a rádio. Para solucionar estes problemas, criamos esta página.<br /><br /><strong>&bull; <a href=\"#1\"><font color=\"#000000\">Entro no site mas n&atilde;o ou&ccedil;o a rádio.</font></a><br /><br />&bull; <a href=\"#2\"><font color=\"#000000\">Utilizo o Firefox e n&atilde;o consigo ouvir a rádio.</font></a><br /><br />&bull; <a href=\"#3\"><font color=\"#000000\">Utilizo Internet Explorer e n&atilde;o consigo ouvir a rádio.</font></a><br /><br />&bull; <a href=\"#4\"><font color=\"#000000\">O áudio sofre interrup&ccedil;&otilde;es constantes.</font></a><br /><br />&bull; <a href=\"#5\"><font color=\"#000000\">Sou usuário de Macintosh e n&atilde;o estou conseguindo ouvir a rádio.</font></a></strong><br /><br /><br /><a name=\"1\" /><strong>Entro no site mas n&atilde;o ou&ccedil;o a rádio.</strong><br /><br />Verifique a conex&atilde;o dos cabos das caixas de som, o volume do áudio, nas<br />próprias caixas e tamb&eacute;m no Windows. Verifique se a placa de áudio está<br />funcionando apropriadamente. Para verificar se a placa de áudio está<br />funcionando adequadamente, tente abrir um arquivo de áudio no Windows Media<br />Player (mp3 ou wma).<br /><br /><a name=\"2\" /><strong>Utilizo o Firefox e n&atilde;o consigo ouvir a rádio.</strong><br /><br />Se voc&ecirc; navega na internet utilizando Firefox, verifique se foi instalado o<br />Windows Media Player Plug-in for Firefox. Caso n&atilde;o tenha sido instalado,<br /><a href=\"https://addons.mozilla.org/pt-BR/firefox/addon/2119\" target=\"_blank\"><font color=\"#000000\">clique aqui</font></a> para acessar a página de download e instale o plug-in.<br /><br /><a name=\"3\" /><strong>Utilizo Internet Explorer e n&atilde;o consigo ouvir a rádio.</strong><br /><br />Se voc&ecirc; utiliza Internet Explorer, verifique se voc&ecirc; possui a última vers&atilde;o<br />do Microsoft Windows Player. Para fazer o download da última vers&atilde;o, clique<br />no link abaixo.<br /><a href=\"http://www.microsoft.com/windows/windowsmedia/player/download/\" target=\"_blank\"><strong><font color=\"#000000\">http://www.microsoft.com/windows/windowsmedia/player/download/</font></strong></a> Se voc&ecirc; acessar o site e o Internet Explorer solicitar a ativa&ccedil;&atilde;o do Active<br />X, autorize. Sem ele, n&atilde;o será possível ouvir a rádio.<br />Ou tente ouvir a rádio pelo próprio programa do Windows Media Player, clicando no ícone<br />na barra superior da página da Rádio. <br /><a name=\"4\" /><strong>O áudio sofre interrup&ccedil;&otilde;es constantes.</strong><br /><br />Verifique se a sua conex&atilde;o de banda larga está com a qualidade adequada:<br />interrup&ccedil;&otilde;es e quedas de velocidade na conex&atilde;o influenciam diretamente na<br />sua experi&ecirc;ncia de áudio. Se voc&ecirc; estiver compartilhando a conex&atilde;o com<br />outros usuários, a taxa de transfer&ecirc;ncia de dados &eacute; dividida pela quantidade<br />de pessoas conectadas ao servi&ccedil;o. A taxa mínima de conex&atilde;o necessária para<br />ouvir a rádio adequadamente &eacute; de 256 Kbps por computador.<br /><br /><a name=\"5\" /><strong>Sou usuário de Macintosh e n&atilde;o estou conseguindo ouvir a rádio.</strong><br /><br />Para usuários de Macintosh rodando OSX 10.4.x ou superior, recomendamos a<br />instala&ccedil;&atilde;o do Flip4Mac (www.flip4mac.com).Ao ouvir a rádio no Mac, com o<br />Flip4Mac instalado, o QuickTime deverá ser acionado automaticamente. Aguarde<br />alguns segundos e o QuickTime irá carregar o streaming. Se mesmo assim<br />continuar a ter problemas para acessar a rádio, verifique as configura&ccedil;&otilde;es<br />do QuickTime (no menu QuickTime Player&gt;QuickTime Preferences&gt;Advanced,<br />desabilite o ítem &sup2;enable kiosk mode&sup2;. Em Streaming, ajuste a velocidade de<br />conex&atilde;o. Em Brownser, ajuste o tamanho do cache. Cache em 0 pode gerar<br />problemas de interrup&ccedil;&otilde;es. Se voc&ecirc; acessa a internet via rede, verifique se<br />programas como firewalls est&atilde;o impedindo o tr&acirc;nsito do streaming atrav&eacute;s das<br />portas padr&otilde;es. Em QuickTime Preferences&gt;Advanced&gt;Transport Setup, vefique<br />se o protocolo de transporte (Transport protocol) está configurado em HTTP e<br />a porta (Port ID) está configurada como 80.<br /><br />Continua a enfrentar problemas? Entre em contato conosco e fa&ccedil;a um relato do<br />problema para que possamos encontrar a solu&ccedil;&atilde;o.</p>","2011-07-16 11:06:38");
INSERT INTO conteudo VALUES("6","Como Anunciar","<p><strong>POR QUE ANUNCIAR NO MEIO RÁDIO?</strong></p><p><strong>O rádio está junto ao consumidor na hora da compra.<br /></strong>Segundo as pesquisas relizadas, o rádio &eacute; o veículo que está junto a 93% dos consumidores na hora que antecede a compra.</p><p><strong>As pessoas passam mais tempo ouvindo rádio.<br /></strong>Para convencer o consumidor o comercial tem que ser ouvido várias vezes ao dia e o rádio &eacute; o veículo que ele mais ouve, em m&eacute;dia 3 horas e 45 minutos por dia.</p><p><strong>Consumidor passa 17% mais tempo com o rádio que outros meios.<br /></strong>Pesquisa do Ibope confirma que as pessoas que fazem compras passam em m&eacute;dia 17% mais tempo ouvindo o rádio que vendo a televis&atilde;o, lendo jornal, revista ou internet - o que dá a seu comercial 17% mais chance de ser absorvido.</p><p><strong>O rádio chega onde outros veículos n&atilde;o.<br /></strong>O rádio &eacute; o único veículo que atinge o consumidor em qualquer lugar: come&ccedil;ando o dia com o rádio-relógio, sendo companhia no caf&eacute; da manh&atilde;, no &ocirc;nibus e no carro, a caminho do trabalho, no restaurante ou na lanchonete, na praia, na fazenda, no cooper e na bicicleta com o walkman (possuído por 51% da popula&ccedil;&atilde;o), ao lado, enquanto navega na internet. Enfim, o rádio &eacute; o único veículo que tem um público exclusivo, enorme e pronto para receber sua mensagem.</p><p><strong>O rádio está em 99% das casas.<br /></strong>Al&eacute;m desta vantagem nas casas, o rádio está em 83% dos carros.</p><p><strong>O horário nobre do rádio dura 13 horas.<br /></strong>O rádio &eacute; imbatível das 6 horas da manh&atilde; at&eacute; as 19 horas. S&atilde;o quatro vezes mais efici&ecirc;ncia a favor do rádio, uma das raz&otilde;es do grande crescimento do veículo nos últimos anos.</p><p><strong>Uma produ&ccedil;&atilde;o de alto nível no rádio custa 95% a menos.<br /></strong>Isto porque o rádio usa a imagina&ccedil;&atilde;o do consumidor. Ex.:... quando voc&ecirc; mostra uma &quot;bela mulher&quot; nos outros meios, ela pode ou n&atilde;o agradar o consumidor. Mas se voc&ecirc; diz a ele, no rádio que ali está uma &quot;bela mulher&quot;, ele imagina a mulher de seus sonhos.</p><p>&nbsp;</p><p><table width=\"96%\" height=\"\" align=\"center\" border=\"0\"><tr><td>Em 01 dia sozinho o rádio consegue cobrir</td><td>66% da popula&ccedil;&atilde;o</td></tr><tr><td>Em 02 dias</td><td>78% da popula&ccedil;&atilde;o</td></tr><tr><td>Em 07 dias</td><td>95% da popula&ccedil;&atilde;o</td></tr><tr><td>Em 15 dias vai a </td><td>97% da popula&ccedil;&atilde;o</td></tr><tr><td><font size=\"1\">Fonte: IBOPE</font></td></tr></table><a href=\"mailto:comercial@radioafter.com\" /></p>","2012-05-04 17:09:36");



DROP TABLE cozinha;

CREATE TABLE `cozinha` (
  `id` int(10) NOT NULL auto_increment,
  `produto` varchar(200) NOT NULL,
  `qtd` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




DROP TABLE dados;

CREATE TABLE `dados` (
  `id` int(11) NOT NULL auto_increment,
  `titulo` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `palavras` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `rodape` varchar(200) NOT NULL,
  `orkut` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO dados VALUES("1","Forrozeiros Gospel - A radio dos Forrozeiros Adoradores","forro gospel, radio de forro gospel, Forrozeiros Gospel","","","Forrozeiros Gospel © 2013 - Todos os direitos reservados.","","","");



DROP TABLE entrega;

CREATE TABLE `entrega` (
  `id` int(11) NOT NULL auto_increment,
  `cod` int(11) NOT NULL,
  `nome` varchar(150) character set latin1 collate latin1_general_ci NOT NULL,
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
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=468 DEFAULT CHARSET=latin1;

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
INSERT INTO entrega VALUES("255","16","8","32.00","1","0","2013-10-13","15:26:00","15","0","9","0","1","0","0");
INSERT INTO entrega VALUES("253","32","4","12.00","1","0","2013-10-13","15:26:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("254","31","6","20.00","1","0","2013-10-13","15:26:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("252","30","12","15.00","1","0","2013-10-13","15:26:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("250","30","12","15.00","1","0","2013-10-13","11:18:00","1","0","3","0","0","0","0");
INSERT INTO entrega VALUES("251","31","6","20.00","1","0","2013-10-13","11:18:00","1","0","3","0","0","0","0");
INSERT INTO entrega VALUES("248","31","6","20.00","1","0","2013-10-11","21:27:00","1","0","6","0","0","0","0");
INSERT INTO entrega VALUES("249","32","4","12.00","1","0","2013-10-13","11:18:00","1","0","0","0","0","0","0");
INSERT INTO entrega VALUES("238","32","4","12.00","1","0","2013-10-11","20:51:00","1","0","3","0","0","0","0");
INSERT INTO entrega VALUES("239","32","4","12.00","1","0","2013-10-11","20:51:00","1","0","3","0","0","0","0");
INSERT INTO entrega VALUES("240","32","4","12.00","1","0","2013-10-11","20:51:00","1","0","3","0","0","0","0");
INSERT INTO entrega VALUES("241","32","4","12.00","1","0","2013-10-11","20:51:00","1","0","3","0","0","0","0");
INSERT INTO entrega VALUES("242","32","4","12.00","1","0","2013-10-11","20:51:00","1","0","3","0","0","0","0");
INSERT INTO entrega VALUES("243","32","4","12.00","1","0","2013-10-11","20:51:00","1","0","3","0","0","0","0");
INSERT INTO entrega VALUES("244","32","4","12.00","1","0","2013-10-11","20:51:00","1","0","3","0","0","0","0");
INSERT INTO entrega VALUES("245","32","4","12.00","1","0","2013-10-11","20:51:00","1","0","3","0","0","0","0");
INSERT INTO entrega VALUES("247","30","12","15.00","1","0","2013-10-11","21:21:00","1","0","11","0","0","0","0");
INSERT INTO entrega VALUES("256","38","teste","40.00","1","0","2013-10-13","15:26:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("257","34","guilherme","5640.00","1","0","2013-10-13","15:26:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("258","37","´paha","50.00","1","0","2013-10-13","15:26:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("259","35","pizza","50.00","1","0","2013-10-13","15:26:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("260","33","mbnmnb","50.00","1","0","2013-10-13","15:26:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("261","39","Pablo apolo barros gomes","650.00","1","0","2013-10-13","15:26:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("262","36","queijo","50.00","1","0","2013-10-13","15:26:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("263","33","mbnmnb","50.00","1","0","2013-10-13","15:32:00","1","0","0","0","0","0","0");
INSERT INTO entrega VALUES("264","39","Pablo apolo barros gomes","650.00","1","0","2013-10-13","15:32:00","1","0","0","0","0","0","0");
INSERT INTO entrega VALUES("265","36","queijo","50.00","1","0","2013-10-13","15:32:00","1","0","0","0","0","0","0");
INSERT INTO entrega VALUES("266","30","12","15.00","1","0","2013-10-13","15:32:00","1","0","0","0","0","0","0");
INSERT INTO entrega VALUES("267","32","4","12.00","1","0","2013-10-13","15:32:00","1","0","0","0","0","0","0");
INSERT INTO entrega VALUES("268","31","6","20.00","1","0","2013-10-13","15:32:00","1","0","0","0","0","0","0");
INSERT INTO entrega VALUES("269","16","8","32.00","1","0","2013-10-13","15:32:00","1","0","0","0","1","0","0");
INSERT INTO entrega VALUES("270","38","teste","40.00","1","0","2013-10-13","15:32:00","1","0","0","0","0","0","0");
INSERT INTO entrega VALUES("271","34","guilherme","5640.00","1","0","2013-10-13","15:33:00","1","0","0","0","0","0","0");
INSERT INTO entrega VALUES("272","37","´paha","50.00","1","0","2013-10-13","15:33:00","1","0","0","0","0","0","0");
INSERT INTO entrega VALUES("273","35","pizza","50.00","1","0","2013-10-13","15:33:00","1","0","0","0","0","0","0");
INSERT INTO entrega VALUES("274","33","mbnmnb","50.00","1","0","2013-10-13","15:35:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("275","33","mbnmnb","50.00","1","0","2013-10-13","15:35:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("278","30","12","15.00","1","0","2013-10-13","15:40:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("290","30","12","15.00","1","0","2013-10-13","17:10:00","22","0","","0","0","0","0");
INSERT INTO entrega VALUES("279","38","teste","40.00","1","0","2013-10-13","15:40:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("280","33","mbnmnb","50.00","1","0","2013-10-13","15:40:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("281","39","Pablo apolo barros gomes","650.00","1","0","2013-10-13","15:40:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("282","36","queijo","50.00","1","0","2013-10-13","15:40:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("283","32","4","12.00","1","0","2013-10-13","15:40:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("284","31","6","20.00","1","0","2013-10-13","15:40:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("285","16","8","32.00","1","0","2013-10-13","15:40:00","15","0","9","0","1","0","0");
INSERT INTO entrega VALUES("286","38","teste","40.00","1","0","2013-10-13","15:40:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("287","34","guilherme","5640.00","1","0","2013-10-13","15:40:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("288","37","´paha","50.00","1","0","2013-10-13","15:40:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("289","35","pizza","50.00","1","0","2013-10-13","15:40:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("294","34","guilherme","5640.00","1","0","2013-10-13","17:21:00","21","0","","0","0","0","0");
INSERT INTO entrega VALUES("292","16","8","32.00","1","0","2013-10-13","17:11:00","20","0","","0","1","0","0");
INSERT INTO entrega VALUES("293","30","12","15.00","1","0","2013-10-13","17:11:00","20","0","","0","0","0","0");
INSERT INTO entrega VALUES("295","33","mbnmnb","50.00","1","0","2013-10-13","17:23:00","26","0","","0","0","0","0");
INSERT INTO entrega VALUES("296","33","mbnmnb","50.00","1","0","2013-10-13","21:20:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("297","39","Pablo apolo barros gomes","650.00","1","0","2013-10-13","21:20:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("298","36","queijo","50.00","1","0","2013-10-13","21:20:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("299","36","queijo","50.00","1","0","2013-10-13","21:22:00","15","0","9","0","0","0","0");
INSERT INTO entrega VALUES("300","30","12","15.00","1","0","2013-10-14","18:04:00","26","0","","0","0","0","0");
INSERT INTO entrega VALUES("301","32","4","12.00","1","0","2013-10-14","18:04:00","26","0","","0","0","0","0");
INSERT INTO entrega VALUES("302","30","12","15.00","1","0","2013-10-14","18:04:00","26","0","","0","0","0","0");
INSERT INTO entrega VALUES("303","32","4","12.00","1","0","2013-10-14","18:05:00","26","0","","0","0","0","0");
INSERT INTO entrega VALUES("304","32","4","12.00","1","0","2013-10-14","18:05:00","26","0","","0","0","0","0");
INSERT INTO entrega VALUES("305","34","guilherme","5640.00","1","0","2013-10-15","12:45:00","20","0","","0","0","0","0");
INSERT INTO entrega VALUES("306","30","12","15.00","1","0","2013-10-19","01:06:00","29","0","","0","0","0","0");
INSERT INTO entrega VALUES("307","33","mbnmnb","50.00","1","0","2013-10-31","09:57:00","29","0","","0","0","0","0");
INSERT INTO entrega VALUES("310","37","´paha","50.00","1","0","2013-10-31","09:58:00","29","0","","0","0","0","0");
INSERT INTO entrega VALUES("311","37","´paha","50.00","1","0","2013-10-31","09:58:00","29","0","","0","0","0","0");
INSERT INTO entrega VALUES("312","37","´paha","50.00","1","0","2013-10-31","09:58:00","29","0","","0","0","0","0");
INSERT INTO entrega VALUES("313","37","´paha","50.00","1","0","2013-10-31","09:58:00","29","0","","0","0","0","0");
INSERT INTO entrega VALUES("314","37","´paha","50.00","1","0","2013-10-31","09:58:00","29","0","","0","0","0","0");
INSERT INTO entrega VALUES("315","37","´paha","50.00","1","0","2013-10-31","09:58:00","29","0","","0","0","0","0");
INSERT INTO entrega VALUES("316","37","´paha","50.00","1","0","2013-10-31","09:58:00","29","0","","0","0","0","0");
INSERT INTO entrega VALUES("317","37","´paha","50.00","1","0","2013-10-31","09:58:00","29","0","","0","0","0","0");
INSERT INTO entrega VALUES("318","30","12","15.00","1","0","2013-10-31","10:58:00","28","0","","0","0","0","0");
INSERT INTO entrega VALUES("319","32","4","12.00","1","0","2013-10-31","10:58:00","28","0","","0","0","0","0");
INSERT INTO entrega VALUES("320","39","Pablo apolo barros gomes","650.00","1","0","2013-10-31","13:24:00","28","0","","0","0","0","0");
INSERT INTO entrega VALUES("321","40","coca","5.00","1","0","2013-11-01","01:07:00","30","0","","0","1","0","0");
INSERT INTO entrega VALUES("322","34","guilherme","5640.00","1","0","2013-11-01","01:07:00","30","0","","0","0","0","0");
INSERT INTO entrega VALUES("323","40","coca","5.00","1","0","2013-11-01","01:50:00","23","0","","0","1","0","0");
INSERT INTO entrega VALUES("324","42","pepsi","4.00","1","0","2013-11-01","01:50:00","23","0","","0","0","0","0");
INSERT INTO entrega VALUES("325","40","coca","5.00","1","0","2013-11-01","01:50:00","23","0","","0","1","0","0");
INSERT INTO entrega VALUES("326","40","coca","5.00","1","0","2013-11-01","01:51:00","23","0","","0","1","0","0");
INSERT INTO entrega VALUES("327","32","4","12.00","1","0","2013-11-04","11:10:00","30","0","","0","0","0","0");
INSERT INTO entrega VALUES("330","43","coca","3.00","1","0","2013-11-05","14:39:00","30","0","","0","0","0","0");
INSERT INTO entrega VALUES("329","43","coca","3.00","1","0","2013-11-05","14:37:00","31","0","","0","0","0","0");
INSERT INTO entrega VALUES("331","30","carne de sol com aipim","15.00","1","0","2013-11-05","14:39:00","30","0","","0","0","0","0");
INSERT INTO entrega VALUES("332","41","torta","4.00","1","0","2013-11-05","14:40:00","31","0","","0","1","0","0");
INSERT INTO entrega VALUES("333","44","X SALADA","10.00","1","0","2013-11-05","22:04:00","29","0","","0","1","0","0");
INSERT INTO entrega VALUES("334","44","X SALADA","10.00","1","0","2013-11-06","08:30:00","28","0","","0","1","0","0");
INSERT INTO entrega VALUES("335","45","FRANGO PASSARINHO","20.00","1","0","2013-11-07","23:10:00","24","0","","0","1","0","0");
INSERT INTO entrega VALUES("336","45","FRANGO PASSARINHO","20.00","1","0","2013-11-07","23:11:00","16","0","","0","1","0","0");
INSERT INTO entrega VALUES("337","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-07","23:48:00","19","0","","0","1","0","0");
INSERT INTO entrega VALUES("338","45","FRANGO PASSARINHO","20.00","1","0","2013-11-07","23:48:00","19","0","","0","1","0","0");
INSERT INTO entrega VALUES("339","45","FRANGO PASSARINHO","20.00","1","0","2013-11-07","23:48:00","19","0","","0","1","0","0");
INSERT INTO entrega VALUES("340","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-07","23:48:00","19","0","","0","1","0","0");
INSERT INTO entrega VALUES("341","47","COCA COLA","3.00","1","0","2013-11-08","17:59:00","27","0","","0","0","0","0");
INSERT INTO entrega VALUES("342","47","COCA COLA","3.00","1","0","2013-11-08","17:59:00","27","0","","0","0","0","0");
INSERT INTO entrega VALUES("343","47","COCA COLA","3.00","1","0","2013-11-08","17:59:00","27","0","","0","0","0","0");
INSERT INTO entrega VALUES("344","47","COCA COLA","3.00","1","0","2013-11-12","18:09:00","16","0","","0","0","0","0");
INSERT INTO entrega VALUES("345","47","COCA COLA","3.00","1","0","2013-11-14","19:56:00","29","0","","0","0","0","0");
INSERT INTO entrega VALUES("346","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-14","19:57:00","29","0","","0","1","0","0");
INSERT INTO entrega VALUES("347","51","X SALADA","6.00","1","0","2013-11-15","02:52:00","29","0","","0","1","0","0");
INSERT INTO entrega VALUES("348","52","Coca-Cola","2.50","1","0","2013-11-16","18:44:00","16","0","9","0","0","0","0");
INSERT INTO entrega VALUES("349","57","Cerveja Bhama","3.00","1","0","2013-11-16","18:44:00","16","0","9","0","0","0","0");
INSERT INTO entrega VALUES("350","57","Cerveja Bhama","3.00","1","0","2013-11-16","18:44:00","16","0","9","0","0","0","0");
INSERT INTO entrega VALUES("351","57","Cerveja Bhama","3.00","1","0","2013-11-16","18:45:00","16","0","9","0","0","0","0");
INSERT INTO entrega VALUES("352","60","Pão de Queijo","2.50","1","0","2013-11-16","18:45:00","16","0","9","0","0","0","0");
INSERT INTO entrega VALUES("353","58","Cerveja Antartica","3.00","1","0","2013-11-16","19:02:00","32","0","","0","0","0","0");
INSERT INTO entrega VALUES("354","62","Hot Dog","3.00","1","0","2013-11-16","19:02:00","32","0","","0","1","0","0");
INSERT INTO entrega VALUES("355","58","Cerveja Antartica","3.00","1","0","2013-11-16","19:03:00","32","0","","0","0","0","0");
INSERT INTO entrega VALUES("356","61","Bauru Especial","4.00","1","0","2013-11-16","19:03:00","32","0","","0","1","0","0");
INSERT INTO entrega VALUES("357","59","Whisky Black jack","4.00","1","0","2013-11-17","11:42:00","15","0","0","0","0","0","0");
INSERT INTO entrega VALUES("358","59","Whisky Black jack","4.00","1","0","2013-11-17","11:42:00","15","0","0","0","0","0","0");
INSERT INTO entrega VALUES("359","59","Whisky Black jack","4.00","1","0","2013-11-17","11:42:00","15","0","0","0","0","0","0");
INSERT INTO entrega VALUES("360","58","Cerveja Antartica","3.00","1","0","2013-11-17","15:16:00","20","0","","0","0","0","0");
INSERT INTO entrega VALUES("361","55","Fanta Uva","2.50","1","0","2013-11-17","15:16:00","20","0","","0","0","0","0");
INSERT INTO entrega VALUES("362","54","Fata Laranja","2.50","1","0","2013-11-17","15:16:00","20","0","","0","0","0","0");
INSERT INTO entrega VALUES("363","53","Sprite","2.00","1","0","2013-11-17","15:16:00","20","0","","0","0","0","0");
INSERT INTO entrega VALUES("364","58","Cerveja Antartica","3.00","1","0","2013-11-19","10:24:00","31","0","","0","0","0","0");
INSERT INTO entrega VALUES("365","57","Cerveja Bhama","3.00","1","0","2013-11-19","10:24:00","31","0","","0","0","0","0");
INSERT INTO entrega VALUES("366","52","Coca-Cola","2.50","1","0","2013-11-19","10:24:00","31","0","","0","0","0","0");
INSERT INTO entrega VALUES("367","54","Fata Laranja","2.50","1","0","2013-11-19","10:24:00","31","0","","0","0","0","0");
INSERT INTO entrega VALUES("368","56","Guarana","2.50","1","0","2013-11-19","10:24:00","31","0","","0","0","0","0");
INSERT INTO entrega VALUES("369","56","Guarana","2.50","1","0","2013-11-19","10:24:00","31","0","","0","0","0","0");
INSERT INTO entrega VALUES("370","56","Guarana","2.50","1","0","2013-11-19","10:24:00","31","0","","0","0","0","0");
INSERT INTO entrega VALUES("371","56","Guarana","2.50","1","0","2013-11-19","10:24:00","31","0","","0","0","0","0");
INSERT INTO entrega VALUES("372","53","Sprite","2.00","1","0","2013-11-19","10:24:00","31","0","","0","0","0","0");
INSERT INTO entrega VALUES("373","53","Sprite","2.00","1","0","2013-11-19","10:24:00","31","0","","0","0","0","0");
INSERT INTO entrega VALUES("374","53","Sprite","2.00","1","0","2013-11-19","10:24:00","31","0","","0","0","0","0");
INSERT INTO entrega VALUES("375","52","Coca-Cola","2.50","1","0","2013-11-19","22:46:00","15","0","22","0","0","0","0");
INSERT INTO entrega VALUES("376","52","Coca-Cola","2.50","1","0","2013-11-19","22:46:00","15","0","22","0","0","0","0");
INSERT INTO entrega VALUES("377","58","Cerveja Antartica","3.00","1","0","2013-11-27","17:43:00","33","0","","0","0","0","0");
INSERT INTO entrega VALUES("378","57","Cerveja Bhama","3.00","1","0","2013-11-27","17:44:00","34","0","","0","0","0","0");
INSERT INTO entrega VALUES("379","59","Whisky Black jack","4.00","1","0","2013-11-27","17:45:00","18","0","","0","0","0","0");
INSERT INTO entrega VALUES("380","63","a moda","16.00","1","0","2013-11-27","17:46:00","18","0","","0","1","0","0");
INSERT INTO entrega VALUES("381","63","a moda","16.00","1","0","2013-11-27","17:46:00","34","0","","0","1","0","0");
INSERT INTO entrega VALUES("382","62","Hot Dog","3.00","1","0","2013-11-27","17:47:00","34","0","","0","1","0","0");
INSERT INTO entrega VALUES("383","62","Hot Dog","3.00","1","0","2013-11-27","17:50:00","34","0","","0","1","0","0");
INSERT INTO entrega VALUES("384","60","Pão de Queijo","2.50","1","0","2013-11-27","17:50:00","34","0","","0","0","0","0");
INSERT INTO entrega VALUES("385","61","Bauru Especial","4.00","1","0","2013-11-27","17:50:00","34","0","","0","1","0","0");
INSERT INTO entrega VALUES("387","63","a moda","16.00","1","0","2013-11-27","17:56:00","34","0","","0","1","0","0");
INSERT INTO entrega VALUES("388","58","Cerveja Antartica","3.00","1","0","2013-11-29","11:44:00","34","0","","0","0","0","0");
INSERT INTO entrega VALUES("389","57","Cerveja Bhama","3.00","1","0","2013-11-29","11:44:00","34","0","","0","0","0","0");
INSERT INTO entrega VALUES("390","52","Coca-Cola","2.50","1","0","2013-11-29","11:44:00","34","0","","0","0","0","0");
INSERT INTO entrega VALUES("391","57","Cerveja Bhama","3.00","1","0","2013-11-29","11:44:00","34","0","","0","0","0","0");
INSERT INTO entrega VALUES("392","57","Cerveja Bhama","3.00","1","0","2013-11-29","11:44:00","34","0","","0","0","0","0");
INSERT INTO entrega VALUES("393","57","Cerveja Bhama","3.00","1","0","2013-11-29","11:44:00","34","0","","0","0","0","0");
INSERT INTO entrega VALUES("394","58","Cerveja Antartica","3.00","1","0","2013-11-29","11:44:00","34","0","","0","0","0","0");
INSERT INTO entrega VALUES("395","58","Cerveja Antartica","3.00","1","0","2013-11-29","11:45:00","34","0","","0","0","0","0");
INSERT INTO entrega VALUES("396","58","Cerveja Antartica","3.00","1","0","2013-11-29","11:45:00","34","0","","0","0","0","0");
INSERT INTO entrega VALUES("397","52","Coca-Cola","2.50","1","0","2013-11-29","11:45:00","34","0","","0","0","0","0");
INSERT INTO entrega VALUES("398","52","Coca-Cola","2.50","1","0","2013-11-29","11:45:00","34","0","","0","0","0","0");
INSERT INTO entrega VALUES("399","52","Coca-Cola","2.50","1","0","2013-11-29","11:45:00","34","0","","0","0","0","0");
INSERT INTO entrega VALUES("400","63","a moda","16.00","1","0","2013-11-29","11:45:00","29","0","","0","1","0","0");
INSERT INTO entrega VALUES("401","63","a moda","16.00","1","0","2013-11-29","11:45:00","29","0","","0","1","0","0");
INSERT INTO entrega VALUES("402","63","a moda","16.00","1","0","2013-11-29","11:45:00","29","0","","0","1","0","0");
INSERT INTO entrega VALUES("403","56","Guarana","2.50","1","0","2013-11-30","16:17:00","34","1","","0","0","0","0");
INSERT INTO entrega VALUES("409","58","Cerveja Antartica","3.00","1","0","2013-12-06","17:58:00","18","1","","0","0","0","0");
INSERT INTO entrega VALUES("407","61","Bauru Especial","4.00","1","0","2013-12-06","17:46:00","35","0","","0","1","0","0");
INSERT INTO entrega VALUES("406","63","a moda","16.00","1","0","2013-12-01","02:02:00","33","1","","0","1","0","0");
INSERT INTO entrega VALUES("408","63","a moda","16.00","1","0","2013-12-06","17:46:00","35","0","","0","1","0","0");
INSERT INTO entrega VALUES("410","57","Cerveja Bhama","3.00","1","0","2013-12-06","17:58:00","18","1","","0","0","0","0");
INSERT INTO entrega VALUES("411","52","Coca-Cola","2.50","1","0","2013-12-06","17:58:00","18","1","","0","0","0","0");
INSERT INTO entrega VALUES("412","54","Fata Laranja","2.50","1","0","2013-12-09","03:39:00","32","1","","0","0","0","0");
INSERT INTO entrega VALUES("413","63","a moda","16.00","1","0","2013-12-09","03:39:00","32","1","","0","1","0","0");
INSERT INTO entrega VALUES("414","52","Coca-Cola","2.50","1","0","2013-12-12","03:24:00","36","0","","0","0","0","0");
INSERT INTO entrega VALUES("415","63","a moda","16.00","1","0","2013-12-12","03:24:00","36","0","","0","1","0","0");
INSERT INTO entrega VALUES("416","64","pizza mussarela","10.00","1","0","2013-12-12","03:24:00","36","0","","0","1","0","0");
INSERT INTO entrega VALUES("417","60","Pão de Queijo","2.50","1","0","2013-12-15","03:57:00","30","0","","0","0","0","0");
INSERT INTO entrega VALUES("418","62","Hot Dog","3.00","1","0","2013-12-15","03:57:00","30","0","","0","1","0","0");
INSERT INTO entrega VALUES("419","58","Cerveja Antartica","3.00","1","0","2013-12-16","11:13:00","37","0","","0","0","0","0");
INSERT INTO entrega VALUES("420","58","Cerveja Antartica","3.00","1","0","2013-12-16","11:13:00","37","0","","0","0","0","0");
INSERT INTO entrega VALUES("421","58","Cerveja Antartica","3.00","1","0","2013-12-16","11:13:00","37","0","","0","0","0","0");
INSERT INTO entrega VALUES("426","64","pizza mussarela","10.00","1","0","2013-12-16","18:12:00","37","0","","0","1","0","0");
INSERT INTO entrega VALUES("423","66","Tolipa 200ml","2.00","1","0","2013-12-16","11:46:00","37","0","","0","0","0","0");
INSERT INTO entrega VALUES("424","66","Tolipa 200ml","2.00","1","0","2013-12-16","11:46:00","37","0","","0","0","0","0");
INSERT INTO entrega VALUES("425","66","Tolipa 200ml","2.00","1","0","2013-12-16","11:46:00","37","0","","0","0","0","0");
INSERT INTO entrega VALUES("427","63","a moda","16.00","1","0","2013-12-16","18:13:00","37","0","","0","1","0","0");
INSERT INTO entrega VALUES("428","64","pizza mussarela","10.00","1","0","2013-12-16","18:13:00","37","0","","0","1","0","0");
INSERT INTO entrega VALUES("429","67","Tolipa 400ml","5.00","1","0","2013-12-16","18:13:00","37","0","","0","0","0","0");
INSERT INTO entrega VALUES("430","67","Tolipa 400ml","5.00","1","0","2013-12-16","18:13:00","37","0","","0","0","0","0");
INSERT INTO entrega VALUES("431","60","Pão de Queijo","2.50","1","0","2013-12-16","18:13:00","37","0","","0","0","0","0");
INSERT INTO entrega VALUES("432","69","1/4 pizza calabrasa","8.00","1","0","2013-12-17","18:21:00","37","0","","0","0","0","0");
INSERT INTO entrega VALUES("433","68","1/4 pizza frango catupiry","8.00","1","0","2013-12-17","18:21:00","37","0","","0","1","0","0");
INSERT INTO entrega VALUES("434","63","a moda","16.00","1","0","2013-12-17","18:21:00","37","0","","0","1","0","0");
INSERT INTO entrega VALUES("435","58","Cerveja Antartica","3.00","1","0","2013-12-18","00:30:00","26","1","","0","0","0","0");
INSERT INTO entrega VALUES("436","68","1/4 pizza frango catupiry","8.00","1","0","2013-12-18","00:31:00","26","1","","0","1","0","0");
INSERT INTO entrega VALUES("437","69","1/4 pizza calabrasa","8.00","1","0","2013-12-18","00:31:00","26","1","","0","0","0","0");
INSERT INTO entrega VALUES("438","58","Cerveja Antartica","3.00","1","0","2013-12-19","14:28:00","37","0","","0","0","0","0");
INSERT INTO entrega VALUES("439","52","Coca-Cola","2.50","1","0","2013-12-19","14:28:00","37","0","","0","0","0","0");
INSERT INTO entrega VALUES("440","58","Cerveja Antartica","3.00","1","0","2013-12-21","13:51:00","28","1","","0","0","0","0");
INSERT INTO entrega VALUES("441","67","Tolipa 400ml","5.00","1","0","2013-12-29","20:58:00","15","1","25","0","0","0","0");
INSERT INTO entrega VALUES("442","62","Hot Dog","3.00","1","0","2013-12-30","10:48:00","38","0","","0","1","0","0");
INSERT INTO entrega VALUES("443","62","Hot Dog","3.00","1","0","2013-12-30","11:31:00","38","0","","0","1","0","0");
INSERT INTO entrega VALUES("444","71","Coxinha","12.00","1","0","2013-12-30","12:26:00","38","0","","0","1","0","0");
INSERT INTO entrega VALUES("445","70","1/4 pizza alho e oleo","8.00","1","0","2013-12-30","12:27:00","38","0","","0","0","0","0");
INSERT INTO entrega VALUES("446","61","Bauru Especial","4.00","1","0","2013-12-30","12:27:00","38","0","","0","1","0","0");
INSERT INTO entrega VALUES("448","61","Bauru Especial","4.00","1","0","2014-01-07","11:18:00","32","1","","0","1","0","0");
INSERT INTO entrega VALUES("449","62","Hot Dog","3.00","1","0","2014-01-07","11:18:00","32","1","","0","1","0","0");
INSERT INTO entrega VALUES("450","58","Cerveja Antartica","5.00","1","0","2014-01-08","15:47:00","31","1","","0","0","0","0");
INSERT INTO entrega VALUES("451","57","Cerveja Brahma","5.00","1","0","2014-01-08","15:47:00","31","1","","0","0","0","0");
INSERT INTO entrega VALUES("452","52","Coca-Cola zero","4.50","1","0","2014-01-08","15:47:00","31","1","","0","0","0","0");
INSERT INTO entrega VALUES("453","53","Sprite","2.00","1","0","2014-01-08","15:47:00","31","1","","0","0","0","0");
INSERT INTO entrega VALUES("454","70","1/4 pizza alho e oleo","8.00","1","0","2014-01-09","22:08:00","41","0","","0","0","0","0");
INSERT INTO entrega VALUES("455","64","pizza mussarela","10.00","1","0","2014-01-09","22:08:00","41","0","","0","1","0","0");
INSERT INTO entrega VALUES("456","67","Tolipa 400ml","5.00","1","0","2014-01-10","16:50:00","40","0","","0","0","0","0");
INSERT INTO entrega VALUES("457","69","1/4 pizza calabrasa","8.00","1","0","2014-01-13","10:34:00","36","1","","0","0","0","0");
INSERT INTO entrega VALUES("458","68","1/4 pizza frango catupiry","8.00","1","0","2014-01-13","10:35:00","36","1","","0","1","0","0");
INSERT INTO entrega VALUES("459","67","Tolipa 400ml","5.00","1","0","2014-01-13","10:36:00","26","1","","0","0","0","0");
INSERT INTO entrega VALUES("460","67","Tolipa 400ml","5.00","1","0","2014-01-13","10:36:00","26","1","","0","0","0","0");
INSERT INTO entrega VALUES("461","67","Tolipa 400ml","5.00","1","0","2014-01-13","10:36:00","26","1","","0","0","0","0");
INSERT INTO entrega VALUES("462","67","Tolipa 400ml","5.00","1","0","2014-01-13","10:36:00","26","1","","0","0","0","0");
INSERT INTO entrega VALUES("463","67","Tolipa 400ml","5.00","1","0","2014-01-13","10:36:00","26","1","","0","0","0","0");
INSERT INTO entrega VALUES("464","59","Whisky Black jack","4.00","1","0","2014-01-25","09:40:00","40","1","","0","0","0","0");
INSERT INTO entrega VALUES("465","70","1/4 pizza alho e oleo","8.00","1","0","2014-02-14","13:52:00","43","1","","0","0","0","0");
INSERT INTO entrega VALUES("466","68","1/4 pizza frango catupiry","8.00","1","0","2014-02-14","13:52:00","43","1","","0","1","0","0");
INSERT INTO entrega VALUES("467","64","pizza mussarela","10.00","1","0","2014-02-14","13:52:00","43","1","","0","1","0","0");



DROP TABLE garcon;

CREATE TABLE `garcon` (
  `idGarcon` int(10) NOT NULL auto_increment,
  `nomeGarcon` varchar(200) NOT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `nv` int(1) NOT NULL,
  PRIMARY KEY  (`idGarcon`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

INSERT INTO garcon VALUES("1","Elenildo","admin","admin","0");
INSERT INTO garcon VALUES("32","Cozinha","cozinha","cozinha","0");
INSERT INTO garcon VALUES("26","marcos","marcos","1234","1");
INSERT INTO garcon VALUES("25","Renato","renato","bh12","1");
INSERT INTO garcon VALUES("24","teste","teste","teste","1");



DROP TABLE login;

CREATE TABLE `login` (
  `id` int(11) NOT NULL auto_increment,
  `login` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO login VALUES("1","admin","admin");



DROP TABLE mesa;

CREATE TABLE `mesa` (
  `id_mesa` int(10) NOT NULL auto_increment,
  `numero` int(10) NOT NULL,
  `idGarcon` varchar(200) NOT NULL,
  `situacao` int(1) NOT NULL,
  PRIMARY KEY  (`id_mesa`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

INSERT INTO mesa VALUES("44","44","","0");
INSERT INTO mesa VALUES("45","45","","0");
INSERT INTO mesa VALUES("46","46","","0");
INSERT INTO mesa VALUES("47","47","","0");
INSERT INTO mesa VALUES("48","48","","0");
INSERT INTO mesa VALUES("49","49","","0");
INSERT INTO mesa VALUES("67","67","","0");
INSERT INTO mesa VALUES("62","62","25","1");
INSERT INTO mesa VALUES("64","64","","0");
INSERT INTO mesa VALUES("65","65","","0");
INSERT INTO mesa VALUES("66","66","","0");
INSERT INTO mesa VALUES("56","56","24","1");
INSERT INTO mesa VALUES("63","63","","0");
INSERT INTO mesa VALUES("58","58","25","1");
INSERT INTO mesa VALUES("61","61","","0");
INSERT INTO mesa VALUES("60","60","","0");
INSERT INTO mesa VALUES("76","76","","0");
INSERT INTO mesa VALUES("75","75","","0");
INSERT INTO mesa VALUES("74","74","","0");
INSERT INTO mesa VALUES("73","73","25","1");
INSERT INTO mesa VALUES("69","69","","0");
INSERT INTO mesa VALUES("68","68","","0");
INSERT INTO mesa VALUES("72","72","","0");
INSERT INTO mesa VALUES("71","71","","0");
INSERT INTO mesa VALUES("70","70","","0");
INSERT INTO mesa VALUES("42","42","","0");
INSERT INTO mesa VALUES("43","43","","0");



DROP TABLE pedido;

CREATE TABLE `pedido` (
  `id_mesa` int(10) NOT NULL auto_increment,
  `numero` int(10) NOT NULL,
  `idGarcon` varchar(200) NOT NULL,
  `situacao` int(1) NOT NULL,
  `email` varchar(50) default NULL,
  `nome` varchar(50) default NULL,
  `sobrenome` varchar(50) default NULL,
  `telefone` varchar(30) default NULL,
  `bairro` varchar(50) default NULL,
  `rua` varchar(50) default NULL,
  `numerocasa` varchar(20) default NULL,
  `detalhes` longtext,
  PRIMARY KEY  (`id_mesa`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

INSERT INTO pedido VALUES("2","2","0","1","","","","","","","","");
INSERT INTO pedido VALUES("3","3","","0","","","","","","","","");
INSERT INTO pedido VALUES("4","4","","0","","","","","","","","");
INSERT INTO pedido VALUES("1","1","","0","","","","","","","","");
INSERT INTO pedido VALUES("5","5","","0","","","","","","","","");
INSERT INTO pedido VALUES("6","6","","0","","","","","","","","");
INSERT INTO pedido VALUES("7","7","","0","","","","","","","","");
INSERT INTO pedido VALUES("8","8","","0","","","","","","","","");
INSERT INTO pedido VALUES("15","15","25","1","pabloapologomes@gmail.com","Pablo","gomes","4435235165","hfg","hf","dstryu","hfghfg");
INSERT INTO pedido VALUES("16","0","","0","pabloapologomes@gmail.com","rose","gomes","4435235165","hfg","hf","dstryu","hfghfg");
INSERT INTO pedido VALUES("17","0","55","0","pabloapologomes@gmail.com","Pablo","gomes","4435235165","hfg","hf","dstryu","xvcjg");
INSERT INTO pedido VALUES("18","0","0","1","pabloapologomes@gmail.com","Pablo","gomes","4435235165","hfg","hf","dstryu","xvcjg");
INSERT INTO pedido VALUES("19","0","","0","pabloapologomes@gmail.com","Pablo","gomes","4435235165","hfg","hf","dstryu","ghjhjhg");
INSERT INTO pedido VALUES("20","0","","0","pabloapologomes@gmail.com","Pablo","gomes","4435235165","hfg","hf","dstryu","ghjghjhg");
INSERT INTO pedido VALUES("21","0","","0","pabloapologomes@gmail.com","Pablo","gomes","4435235165","hfg","hf","dstryu","ghjghjhg");
INSERT INTO pedido VALUES("22","0","","0","pabloapologomes@gmail.com","Pablo","gomes","4435235165","hfg","hf","dstryu","sdafhfg");
INSERT INTO pedido VALUES("23","0","","0","pablo-apolo@hotmail.com","Pablo","gomes","4435235165","hfg","hf","dstryu","fhfghfg");
INSERT INTO pedido VALUES("24","0","","0","pablo-apolo@hotmail.com","Pablo","gomes","4435235165","hfg","hf","dstryu","fhfghfg");
INSERT INTO pedido VALUES("25","0","","0","pabloapologomes@gmail.com","Pablo","gomes","4435235165","hfg","hf","dstryu","zfnbv");
INSERT INTO pedido VALUES("26","0","23","1","pabloapologomes@gmail.com","Pablo","gomes","4435235165","hfg","hf","dstryu","vbjmb");
INSERT INTO pedido VALUES("27","0","","0","rose20santos@hotmail.com","rose","dos santos","98806004","tropical 2","ponta grossa","131","proximo ao mercado san diego");
INSERT INTO pedido VALUES("28","0","23","1","guilherme1991sanchez@hotmail.com","guilherme","souza","(44)98027807","centro","santa cruz","131","em frente ao colegio sigma");
INSERT INTO pedido VALUES("29","0","","0","RODRIGO@hotmail.com","rodrigo","souza","","","","","");
INSERT INTO pedido VALUES("31","5","23","1","jackson","","","","","","","");
INSERT INTO pedido VALUES("34","27","0","1","lucas@uplife.com.br","Lucas ","Silva Borges","1634064022","SÃ£o Vicente","Domingos Sanna","440","");
INSERT INTO pedido VALUES("30","1","23","1","","","","","","","","");
INSERT INTO pedido VALUES("33","16","21","1","","","","","","","","");
INSERT INTO pedido VALUES("32","16","0","1","joserui@hotmail.com","Robson","Pereira","","Petropolis","Rua aderbal de figueiredo, 22"," 22","estou testando o programa. achei legal.");
INSERT INTO pedido VALUES("35","6","","0","teste@teste.com.br","Teste","da Silva","46656565656","Centro","XYZ","121","CAdastro");
INSERT INTO pedido VALUES("36","11","23","1","teste@teste.com","TESTE","TESTE","17 98362-9882","","","","");
INSERT INTO pedido VALUES("37","16","0","1","tassio_neri@hotmail.com","tassio","","2797992677","centro","centro","sas","123564");
INSERT INTO pedido VALUES("38","30","","0","","alessandro","","36676520","jd fenix","av cotinga","2247","");
INSERT INTO pedido VALUES("42","25","9","0","","","","","","","","");
INSERT INTO pedido VALUES("39","9","","0","","","","","","","","");
INSERT INTO pedido VALUES("40","9","27","1","","DEDE","","","","","","");
INSERT INTO pedido VALUES("41","9","","0","","DEDE","XIMENES","32130475","ARI","FRONTEIRA","170","");
INSERT INTO pedido VALUES("43","14","26","1","amaurib2010@hotmail.com","Amauri","Bastos","7591894547","Centro","Esplanada ","125","Sim");



DROP TABLE planos;

CREATE TABLE `planos` (
  `id` int(11) NOT NULL auto_increment,
  `titulo` text NOT NULL,
  `valor` varchar(250) NOT NULL,
  `descricao` longtext NOT NULL,
  `tipo` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO planos VALUES("6","site + hospedagem","300,00","<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\n	<tbody>\n		<tr>\n			<td>acessos ilimitados</td>\n			<td>suporte 7 dias da semana</td>\n		</tr>\n		<tr>\n			<td>pagamento anual</td>\n			<td>domineo gratuito</td>\n		</tr>\n		<tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n","revenda");
INSERT INTO planos VALUES("7","hospedagem bronze","99,90","<p>10MG de espa&ccedil;o</p>\n\n<p>trafego ilimitado</p>\n\n<p>PHPMYADMIN</p>\n\n<p>1 banco de dados</p>\n","hospedagem");
INSERT INTO planos VALUES("8","hospedagem prata","199,90","<p>50MG de espa&ccedil;o</p>\n\n<p>trafego ilimitado</p>\n\n<p>5 emails</p>\n\n<p>2 banco de dados</p>\n\n<p>&nbsp;</p>\n","hospedagem");



DROP TABLE tbl_carrinho;

CREATE TABLE `tbl_carrinho` (
  `id` int(11) NOT NULL auto_increment,
  `cod` int(11) NOT NULL,
  `nome` varchar(150) character set latin1 collate latin1_general_ci NOT NULL,
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
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=855 DEFAULT CHARSET=latin1;

INSERT INTO tbl_carrinho VALUES("56","7","virgulas","1350.00","1","0","2013-10-04","18:59:00","7","0","2","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("54","7","virgulas","1350.00","1","0","2013-10-04","18:55:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("55","2","teste2","300.00","1","0","2013-10-04","18:55:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("57","14","45645","456450.00","1","0","2013-10-04","18:59:00","7","0","2","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("115","9","guilherme","500.00","1","0","2013-10-05","19:45:00","7","0","3","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("113","15","45654","456450.00","1","0","2013-10-05","19:45:00","7","0","3","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("114","15","45654","456450.00","1","0","2013-10-05","19:45:00","7","0","3","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("111","15","45654","456450.00","1","0","2013-10-05","19:45:00","7","0","3","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("110","15","45654","456450.00","1","0","2013-10-05","19:45:00","7","0","3","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("127","14","45645","","1","0","2013-10-06","12:39:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("109","14","45645","456450.00","1","0","2013-10-05","19:45:00","7","0","3","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("69","16","8","32.00","1","0","2013-10-05","19:34:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("70","16","8","32.00","1","0","2013-10-05","19:34:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("71","16","8","32.00","1","0","2013-10-05","19:34:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("72","16","8","32.00","1","0","2013-10-05","19:34:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("112","15","45654","456450.00","1","0","2013-10-05","19:45:00","7","0","3","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("75","13","45654","45360.00","1","0","2013-10-05","19:34:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("121","14","45645","","1","0","2013-10-05","20:00:00","7","0","3","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("120","14","45645","","1","0","2013-10-05","20:00:00","7","0","3","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("119","14","45645","","1","0","2013-10-05","20:00:00","7","0","3","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("118","10","sdghf","4560.00","1","0","2013-10-05","19:45:00","7","0","3","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("181","30","12","12.00","1","0","2013-10-10","18:21:00","1","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("117","8","quatro queijo","9.00","1","0","2013-10-05","19:45:00","7","0","3","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("178","16","8","32.00","1","0","2013-10-07","22:35:00","1","0","3","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("116","9","guilherme","500.00","1","0","2013-10-05","19:45:00","7","0","3","1","1","1","1");
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
INSERT INTO tbl_carrinho VALUES("193","34","guilherme","5640.00","1","0","2013-10-13","15:42:00","1","0","3","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("185","31","6","20.00","1","0","2013-10-10","18:35:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("186","16","8","32.00","1","0","2013-10-10","18:35:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("187","30","12","12.00","1","0","2013-10-11","17:39:00","1","0","3","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("188","32","4","50.00","1","0","2013-10-11","17:39:00","1","0","3","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("189","31","6","20.00","1","0","2013-10-11","17:39:00","1","0","3","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("191","31","6","20.00","1","0","2013-10-12","12:45:00","1","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("192","30","12","15.00","1","0","2013-10-12","12:45:00","1","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("194","34","guilherme","5640.00","1","0","2013-10-18","23:44:00","1","0","1","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("195","30","12","15.00","1","0","2013-10-18","23:45:00","1","0","1","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("196","16","8","32.00","1","0","2013-10-18","23:45:00","1","0","1","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("197","38","teste","40.00","1","0","2013-10-18","23:46:00","1","0","1","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("198","39","Pablo apolo barros gomes","650.00","1","0","2013-10-19","01:04:00","4","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("199","36","queijo","50.00","1","0","2013-10-19","01:04:00","4","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("200","33","mbnmnb","50.00","1","0","2013-10-19","01:04:00","4","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("201","36","queijo","50.00","1","0","2013-10-19","01:04:00","4","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("202","39","Pablo apolo barros gomes","650.00","1","0","2013-10-19","01:04:00","4","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("203","39","Pablo apolo barros gomes","650.00","1","0","2013-10-19","01:04:00","4","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("204","39","Pablo apolo barros gomes","650.00","1","0","2013-10-19","01:04:00","4","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("205","39","Pablo apolo barros gomes","650.00","1","0","2013-10-19","01:04:00","4","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("206","39","Pablo apolo barros gomes","650.00","1","0","2013-10-19","01:04:00","4","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("207","30","12","15.00","1","0","2013-10-19","01:05:00","5","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("208","30","12","15.00","1","0","2013-10-19","01:05:00","5","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("209","30","12","15.00","1","0","2013-10-19","01:05:00","5","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("210","39","Pablo apolo barros gomes","650.00","1","0","2013-10-19","01:05:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("211","33","mbnmnb","50.00","1","0","2013-10-19","01:05:00","7","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("212","33","mbnmnb","50.00","1","0","2013-10-19","01:41:00","2","0","9","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("213","39","Pablo apolo barros gomes","650.00","1","0","2013-10-19","01:41:00","2","0","9","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("214","36","queijo","50.00","1","0","2013-10-19","01:41:00","2","0","9","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("215","39","Pablo apolo barros gomes","650.00","1","0","2013-10-19","16:24:00","2","0","6","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("216","34","guilherme","5640.00","1","0","2013-10-19","16:24:00","2","0","6","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("229","39","Pablo apolo barros gomes","650.00","1","0","2013-11-01","01:00:00","21","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("218","36","queijo","50.00","1","0","2013-10-31","09:54:00","9","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("230","33","mbnmnb","50.00","1","0","2013-11-01","01:03:00","3","0","12","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("221","36","queijo","50.00","1","0","2013-10-31","11:11:00","9","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("222","33","mbnmnb","50.00","1","0","2013-10-31","11:25:00","1","1","9","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("227","31","6","20.00","1","0","2013-11-01","00:47:00","4","0","12","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("224","36","queijo","50.00","1","0","2013-10-31","11:26:00","1","1","9","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("226","36","queijo","50.00","1","0","2013-11-01","00:47:00","4","0","12","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("228","35","pizza","50.00","1","0","2013-11-01","00:47:00","4","0","12","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("231","40","coca","5.00","1","0","2013-11-01","01:13:00","9","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("236","40","coca","5.00","1","0","2013-11-01","01:37:00","4","0","12","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("233","33","mbnmnb","50.00","1","0","2013-11-01","01:17:00","6","0","1","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("234","41","torta","4.00","1","0","2013-11-01","01:18:00","6","0","1","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("235","42","pepsi","4.00","1","0","2013-11-01","01:22:00","6","0","1","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("237","41","torta","4.00","1","0","2013-11-01","01:39:00","9","0","12","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("297","44","X SALADA","10.00","1","0","2013-11-05","20:19:00","2","0","15","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("238","30","12","15.00","1","0","2013-11-01","01:49:00","7","0","12","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("240","42","pepsi","4.00","1","0","2013-11-01","04:01:00","4","0","12","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("241","42","pepsi","4.00","1","0","2013-11-01","04:01:00","4","0","12","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("242","42","pepsi","4.00","1","0","2013-11-01","04:01:00","4","0","12","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("243","42","pepsi","4.00","1","0","2013-11-01","07:10:00","4","0","12","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("244","33","mbnmnb","50.00","1","0","2013-11-01","10:38:00","9","0","12","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("245","40","coca","5.00","1","0","2013-11-01","10:42:00","18","0","12","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("246","42","pepsi","4.00","1","0","2013-11-01","10:47:00","18","0","12","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("247","41","torta","4.00","1","0","2013-11-01","10:47:00","18","0","12","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("248","40","coca","5.00","1","0","2013-11-01","13:28:00","5","0","9","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("249","39","Pablo apolo barros gomes","650.00","1","0","2013-11-01","13:28:00","5","0","9","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("250","42","pepsi","4.00","1","0","2013-11-01","13:28:00","5","0","9","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("251","34","guilherme","5640.00","1","0","2013-11-01","13:28:00","11","0","11","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("252","40","coca","5.00","1","0","2013-11-01","17:30:00","4","0","12","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("253","41","torta","4.00","1","0","2013-11-01","17:32:00","4","0","12","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("254","41","torta","4.00","1","0","2013-11-01","17:33:00","4","0","12","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("257","41","torta","4.00","1","0","2013-11-03","21:47:00","2","0","11","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("258","41","torta","4.00","1","0","2013-11-03","21:47:00","2","0","11","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("259","40","coca","5.00","1","0","2013-11-04","11:11:00","3","0","12","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("260","42","pepsi","4.00","1","0","2013-11-04","11:11:00","3","0","12","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("261","36","queijo","50.00","1","0","2013-11-04","11:11:00","3","0","12","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("262","37","´paha","50.00","1","0","2013-11-04","11:11:00","3","0","12","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("263","40","coca","5.00","1","0","2013-11-05","11:42:00","12","0","11","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("264","40","coca","5.00","1","0","2013-11-05","12:25:00","3","0","15","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("265","40","coca","5.00","1","0","2013-11-05","13:56:00","13","0","1","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("266","39","Pablo apolo barros gomes","650.00","1","0","2013-11-05","13:56:00","13","0","1","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("267","36","queijo","50.00","1","0","2013-11-05","13:56:00","13","0","1","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("271","41","torta","4.00","1","0","2013-11-05","14:45:00","7","0","12","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("298","44","X SALADA","10.00","1","0","2013-11-05","20:19:00","3","1","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("296","44","X SALADA","10.00","1","0","2013-11-05","20:10:00","19","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("273","35","pizza","50.00","1","0","2013-11-05","14:46:00","18","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("274","30","carne de sol com aipim","15.00","1","0","2013-11-05","14:49:00","18","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("367","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-07","22:18:00","16","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("284","43","coca","3.00","1","0","2013-11-05","15:35:00","10","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("300","44","X SALADA","10.00","1","0","2013-11-05","20:20:00","5","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("283","41","torta","4.00","1","0","2013-11-05","15:35:00","10","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("301","44","X SALADA","10.00","1","0","2013-11-05","20:21:00","6","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("285","41","torta","4.00","1","0","2013-11-05","15:36:00","17","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("286","33","mbnmnb","50.00","1","0","2013-11-05","15:48:00","4","0","12","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("287","33","mbnmnb","50.00","1","0","2013-11-05","15:49:00","4","0","12","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("288","44","X SALADA","10.00","1","0","2013-11-05","15:58:00","4","0","12","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("289","44","X SALADA","10.00","1","0","2013-11-05","15:59:00","16","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("440","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","16:36:00","7","0","15","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("302","44","X SALADA","10.00","1","0","2013-11-05","20:23:00","7","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("303","44","X SALADA","10.00","1","0","2013-11-05","20:34:00","3","1","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("293","16","8","32.00","1","0","2013-11-05","16:37:00","3","0","14","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("295","41","torta","4.00","1","0","2013-11-05","20:06:00","20","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("304","44","X SALADA","10.00","1","0","2013-11-05","20:34:00","3","1","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("305","44","X SALADA","10.00","1","0","2013-11-05","20:35:00","3","1","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("311","44","X SALADA","10.00","1","0","2013-11-05","22:05:00","3","1","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("307","30","carne de sol com aipim","15.00","1","0","2013-11-05","20:35:00","2","0","15","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("308","38","teste","40.00","1","0","2013-11-05","20:35:00","2","0","15","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("309","41","torta","4.00","1","0","2013-11-05","20:35:00","2","0","15","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("310","44","X SALADA","10.00","1","0","2013-11-05","21:31:00","14","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("312","44","X SALADA","10.00","1","0","2013-11-05","22:07:00","21","1","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("313","44","X SALADA","10.00","1","0","2013-11-06","08:26:00","12","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("314","45","FRANGO PASSARINHO","20.00","1","0","2013-11-06","08:36:00","9","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("315","45","FRANGO PASSARINHO","20.00","1","0","2013-11-06","08:36:00","3","1","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("316","45","FRANGO PASSARINHO","20.00","1","0","2013-11-06","08:37:00","3","1","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("317","45","FRANGO PASSARINHO","20.00","1","0","2013-11-06","08:37:00","8","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("318","45","FRANGO PASSARINHO","20.00","1","0","2013-11-06","08:38:00","6","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("333","45","FRANGO PASSARINHO","20.00","1","0","2013-11-06","08:59:00","16","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("320","45","FRANGO PASSARINHO","20.00","1","0","2013-11-06","08:42:00","21","1","16","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("321","45","FRANGO PASSARINHO","20.00","1","0","2013-11-06","08:42:00","21","1","16","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("322","45","FRANGO PASSARINHO","20.00","1","0","2013-11-06","08:44:00","18","1","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("323","45","FRANGO PASSARINHO","20.00","1","0","2013-11-06","08:45:00","25","1","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("324","45","FRANGO PASSARINHO","20.00","1","0","2013-11-06","08:46:00","26","1","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("325","45","FRANGO PASSARINHO","20.00","1","0","2013-11-06","08:46:00","22","1","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("326","45","FRANGO PASSARINHO","20.00","1","0","2013-11-06","08:46:00","23","1","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("327","45","FRANGO PASSARINHO","20.00","1","0","2013-11-06","08:55:00","5","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("332","45","FRANGO PASSARINHO","20.00","1","0","2013-11-06","08:58:00","10","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("329","45","FRANGO PASSARINHO","20.00","1","0","2013-11-06","08:56:00","9","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("330","45","FRANGO PASSARINHO","20.00","1","0","2013-11-06","08:57:00","15","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("331","45","FRANGO PASSARINHO","20.00","1","0","2013-11-06","08:57:00","16","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("334","45","FRANGO PASSARINHO","20.00","1","0","2013-11-06","08:59:00","16","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("366","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-07","22:13:00","23","1","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("362","47","COCA COLA","3.00","1","0","2013-11-07","17:29:00","36","1","14","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("337","45","FRANGO PASSARINHO","20.00","1","0","2013-11-06","09:38:00","23","1","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("338","45","FRANGO PASSARINHO","20.00","1","0","2013-11-06","09:38:00","25","1","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("339","45","FRANGO PASSARINHO","20.00","1","0","2013-11-06","09:39:00","25","1","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("340","45","FRANGO PASSARINHO","20.00","1","0","2013-11-06","09:40:00","13","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("341","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-06","09:58:00","8","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("342","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-06","10:29:00","8","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("343","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-06","11:12:00","9","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("344","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-06","11:34:00","26","1","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("345","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-06","12:24:00","7","0","15","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("346","45","FRANGO PASSARINHO","20.00","1","0","2013-11-06","12:50:00","19","1","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("347","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-06","13:29:00","12","0","14","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("348","47","COCA COLA","3.00","1","0","2013-11-06","13:37:00","5","0","14","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("349","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-07","07:52:00","2","0","15","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("369","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-07","23:47:00","5","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("351","47","COCA COLA","3.00","1","0","2013-11-07","13:55:00","24","0","14","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("352","45","FRANGO PASSARINHO","20.00","1","0","2013-11-07","13:55:00","24","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("353","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-07","13:55:00","24","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("354","47","COCA COLA","3.00","1","0","2013-11-07","14:00:00","2","1","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("355","45","FRANGO PASSARINHO","20.00","1","0","2013-11-07","14:00:00","2","1","1","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("356","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-07","14:00:00","2","1","1","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("357","47","COCA COLA","3.00","1","0","2013-11-07","14:09:00","17","0","14","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("358","47","COCA COLA","3.00","1","0","2013-11-07","14:09:00","17","0","14","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("368","45","FRANGO PASSARINHO","20.00","1","0","2013-11-07","23:47:00","5","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("370","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-07","23:47:00","5","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("371","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-07","23:47:00","5","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("372","47","COCA COLA","3.00","1","0","2013-11-07","23:47:00","5","0","14","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("373","47","COCA COLA","3.00","1","0","2013-11-07","23:47:00","5","0","14","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("374","47","COCA COLA","3.00","1","0","2013-11-07","23:47:00","5","0","14","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("375","47","COCA COLA","3.00","1","0","2013-11-07","23:47:00","5","0","14","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("376","47","COCA COLA","3.00","1","0","2013-11-07","23:47:00","5","0","14","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("377","47","COCA COLA","3.00","1","0","2013-11-07","23:47:00","5","0","14","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("378","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-08","08:12:00","10","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("379","45","FRANGO PASSARINHO","20.00","1","0","2013-11-08","08:13:00","7","0","15","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("380","45","FRANGO PASSARINHO","20.00","1","0","2013-11-08","08:13:00","7","0","15","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("381","45","FRANGO PASSARINHO","20.00","1","0","2013-11-08","08:31:00","5","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("382","45","FRANGO PASSARINHO","20.00","1","0","2013-11-08","08:31:00","5","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("383","45","FRANGO PASSARINHO","20.00","1","0","2013-11-08","09:33:00","5","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("384","47","COCA COLA","3.00","1","0","2013-11-08","11:46:00","27","1","14","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("385","47","COCA COLA","3.00","1","0","2013-11-08","11:46:00","27","1","14","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("386","47","COCA COLA","3.00","1","0","2013-11-08","11:46:00","27","1","14","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("387","47","COCA COLA","3.00","1","0","2013-11-08","13:03:00","6","0","14","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("388","47","COCA COLA","3.00","1","0","2013-11-08","13:03:00","6","0","14","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("389","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-08","13:16:00","19","1","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("390","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-08","13:55:00","10","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("391","45","FRANGO PASSARINHO","20.00","1","0","2013-11-08","13:56:00","11","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("392","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-08","14:36:00","11","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("393","47","COCA COLA","3.00","1","0","2013-11-08","17:27:00","28","1","14","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("394","47","COCA COLA","3.00","1","0","2013-11-08","17:27:00","28","1","14","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("395","47","COCA COLA","3.00","1","0","2013-11-08","18:16:00","4","0","15","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("396","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-08","18:17:00","19","1","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("397","47","COCA COLA","3.00","1","0","2013-11-08","18:17:00","19","1","14","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("399","47","COCA COLA","3.00","1","0","2013-11-08","21:12:00","24","1","14","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("400","45","FRANGO PASSARINHO","20.00","1","0","2013-11-08","23:09:00","5","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("401","47","COCA COLA","3.00","1","0","2013-11-08","23:27:00","11","0","14","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("402","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-08","23:29:00","13","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("403","45","FRANGO PASSARINHO","20.00","1","0","2013-11-09","01:28:00","4","0","15","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("404","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","01:31:00","7","0","15","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("405","45","FRANGO PASSARINHO","20.00","1","0","2013-11-09","01:32:00","8","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("406","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","01:32:00","15","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("407","45","FRANGO PASSARINHO","20.00","1","0","2013-11-09","01:33:00","4","0","15","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("408","45","FRANGO PASSARINHO","20.00","1","0","2013-11-09","01:35:00","4","0","15","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("409","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","01:37:00","29","1","15","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("410","45","FRANGO PASSARINHO","20.00","1","0","2013-11-09","01:37:00","29","1","15","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("411","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","01:38:00","29","1","15","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("412","45","FRANGO PASSARINHO","20.00","1","0","2013-11-09","01:50:00","30","1","15","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("413","45","FRANGO PASSARINHO","20.00","1","0","2013-11-09","01:51:00","4","0","15","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("414","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","01:52:00","14","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("415","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","01:53:00","15","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("416","47","COCA COLA","3.00","1","0","2013-11-09","02:31:00","4","0","15","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("417","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","02:31:00","4","0","15","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("418","45","FRANGO PASSARINHO","20.00","1","0","2013-11-09","07:02:00","7","0","15","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("419","45","FRANGO PASSARINHO","20.00","1","0","2013-11-09","09:09:00","27","1","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("420","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","09:11:00","7","0","15","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("421","45","FRANGO PASSARINHO","20.00","1","0","2013-11-09","09:11:00","8","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("422","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","09:19:00","8","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("423","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","09:27:00","4","0","15","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("424","47","COCA COLA","3.00","1","0","2013-11-09","09:28:00","4","0","15","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("425","47","COCA COLA","3.00","1","0","2013-11-09","09:28:00","4","0","16","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("426","45","FRANGO PASSARINHO","20.00","1","0","2013-11-09","09:33:00","8","0","14","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("427","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","09:34:00","8","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("428","45","FRANGO PASSARINHO","20.00","1","0","2013-11-09","09:41:00","5","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("429","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","09:41:00","5","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("430","45","FRANGO PASSARINHO","20.00","1","0","2013-11-09","09:45:00","14","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("431","45","FRANGO PASSARINHO","20.00","1","0","2013-11-09","09:59:00","8","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("432","45","FRANGO PASSARINHO","20.00","1","0","2013-11-09","10:15:00","9","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("433","45","FRANGO PASSARINHO","20.00","1","0","2013-11-09","13:33:00","5","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("434","47","COCA COLA","3.00","1","0","2013-11-09","13:37:00","9","0","15","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("435","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","13:52:00","6","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("436","45","FRANGO PASSARINHO","20.00","1","0","2013-11-09","14:06:00","6","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("437","47","COCA COLA","3.00","1","0","2013-11-09","16:21:00","4","0","16","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("438","47","COCA COLA","3.00","1","0","2013-11-09","16:21:00","4","0","16","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("439","47","COCA COLA","3.00","1","0","2013-11-09","16:21:00","4","0","16","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("441","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","16:38:00","12","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("442","45","FRANGO PASSARINHO","20.00","1","0","2013-11-09","16:39:00","17","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("443","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","16:40:00","8","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("444","47","COCA COLA","3.00","1","0","2013-11-09","16:58:00","5","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("445","45","FRANGO PASSARINHO","20.00","1","0","2013-11-09","16:58:00","5","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("446","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","16:58:00","5","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("447","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","16:58:00","5","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("448","45","FRANGO PASSARINHO","20.00","1","0","2013-11-09","16:58:00","5","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("449","45","FRANGO PASSARINHO","20.00","1","0","2013-11-09","17:14:00","8","0","14","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("450","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","17:15:00","10","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("451","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","17:16:00","10","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("452","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","17:19:00","6","0","20","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("453","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","17:19:00","6","0","20","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("454","45","FRANGO PASSARINHO","20.00","1","0","2013-11-09","19:11:00","17","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("455","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","19:11:00","17","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("456","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","19:11:00","17","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("457","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","19:11:00","17","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("458","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","19:11:00","17","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("459","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","19:12:00","17","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("460","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","19:12:00","17","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("461","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","19:12:00","17","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("462","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","19:12:00","17","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("463","45","FRANGO PASSARINHO","20.00","1","0","2013-11-09","19:12:00","17","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("464","47","COCA COLA","3.00","1","0","2013-11-09","19:23:00","6","0","20","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("465","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","23:38:00","6","0","20","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("466","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-09","23:44:00","17","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("499","50","PROVOLONE A MILANESA","25.00","1","0","2013-11-10","19:03:00","11","1","20","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("497","50","PROVOLONE A MILANESA","25.00","1","0","2013-11-10","18:59:00","5","1","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("498","50","PROVOLONE A MILANESA","25.00","1","0","2013-11-10","19:00:00","9","1","20","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("470","45","FRANGO PASSARINHO","20.00","1","0","2013-11-10","10:42:00","8","1","20","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("471","47","COCA COLA","3.00","1","0","2013-11-10","13:01:00","6","0","20","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("472","47","COCA COLA","3.00","1","0","2013-11-10","13:01:00","6","0","20","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("473","47","COCA COLA","3.00","1","0","2013-11-10","13:01:00","6","0","20","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("474","47","COCA COLA","3.00","1","0","2013-11-10","13:02:00","4","0","19","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("476","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-10","13:19:00","4","0","19","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("477","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-10","13:23:00","4","0","19","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("478","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-10","14:23:00","9","1","20","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("479","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-10","14:51:00","9","1","20","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("496","47","COCA COLA","3.00","1","0","2013-11-10","18:59:00","5","1","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("495","47","COCA COLA","3.00","1","0","2013-11-10","18:49:00","5","1","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("489","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-10","17:03:00","5","0","20","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("494","49","FILÉ DE FRANGO","20.00","1","0","2013-11-10","18:48:00","42","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("493","49","FILÉ DE FRANGO","20.00","1","0","2013-11-10","18:48:00","42","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("492","47","COCA COLA","3.00","1","0","2013-11-10","17:03:00","5","0","20","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("488","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-10","17:03:00","5","0","20","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("500","50","PROVOLONE A MILANESA","25.00","1","0","2013-11-10","19:03:00","11","1","20","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("567","57","Cerveja Bhama","3.00","1","0","2013-11-16","18:46:00","39","0","21","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("502","49","FILÉ DE FRANGO","20.00","1","0","2013-11-10","19:07:00","5","1","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("503","50","PROVOLONE A MILANESA","25.00","1","0","2013-11-10","20:00:00","4","0","19","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("504","50","PROVOLONE A MILANESA","25.00","1","0","2013-11-10","20:43:00","4","0","19","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("505","45","FRANGO PASSARINHO","20.00","1","0","2013-11-10","20:49:00","4","0","19","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("506","50","PROVOLONE A MILANESA","25.00","1","0","2013-11-10","20:49:00","4","0","19","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("507","50","PROVOLONE A MILANESA","25.00","1","0","2013-11-10","20:50:00","4","0","19","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("508","49","FILÉ DE FRANGO","20.00","1","0","2013-11-10","20:50:00","4","0","19","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("509","50","PROVOLONE A MILANESA","25.00","1","0","2013-11-10","20:50:00","4","0","19","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("510","50","PROVOLONE A MILANESA","25.00","1","0","2013-11-10","20:51:00","6","0","20","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("511","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-10","20:52:00","6","0","20","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("512","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-10","20:52:00","6","0","20","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("513","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-10","20:52:00","6","0","20","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("514","50","PROVOLONE A MILANESA","25.00","1","0","2013-11-10","20:52:00","6","0","20","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("515","50","PROVOLONE A MILANESA","25.00","1","0","2013-11-10","20:53:00","6","0","20","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("516","50","PROVOLONE A MILANESA","25.00","1","0","2013-11-10","21:05:00","6","0","20","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("517","50","PROVOLONE A MILANESA","25.00","1","0","2013-11-10","21:05:00","6","0","20","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("518","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-11","07:16:00","6","0","20","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("519","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-11","07:19:00","6","0","20","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("520","49","FILÉ DE FRANGO","20.00","1","0","2013-11-11","07:19:00","6","0","20","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("521","50","PROVOLONE A MILANESA","25.00","1","0","2013-11-11","07:19:00","6","0","20","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("522","49","FILÉ DE FRANGO","20.00","1","0","2013-11-11","07:19:00","6","0","20","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("523","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-11","08:07:00","6","0","20","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("524","50","PROVOLONE A MILANESA","25.00","1","0","2013-11-11","08:33:00","6","0","20","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("525","50","PROVOLONE A MILANESA","25.00","1","0","2013-11-11","09:53:00","8","1","20","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("526","50","PROVOLONE A MILANESA","25.00","1","0","2013-11-11","09:58:00","8","1","20","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("527","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-11","11:04:00","8","1","20","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("528","49","FILÉ DE FRANGO","20.00","1","0","2013-11-11","11:05:00","8","1","20","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("529","50","PROVOLONE A MILANESA","25.00","1","0","2013-11-11","11:05:00","8","1","20","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("561","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-13","08:36:00","8","1","20","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("530","50","PROVOLONE A MILANESA","25.00","1","0","2013-11-11","11:07:00","6","0","20","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("531","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-11","11:07:00","6","0","20","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("532","45","FRANGO PASSARINHO","20.00","1","0","2013-11-11","11:07:00","6","0","20","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("533","49","FILÉ DE FRANGO","20.00","1","0","2013-11-11","11:07:00","6","0","20","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("534","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-11","11:07:00","6","0","20","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("535","51","X SALADA","6.00","1","0","2013-11-11","11:11:00","17","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("536","51","X SALADA","6.00","1","0","2013-11-11","11:12:00","17","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("537","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-11","11:44:00","12","1","20","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("538","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-11","11:44:00","12","1","20","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("539","50","PROVOLONE A MILANESA","25.00","1","0","2013-11-11","11:44:00","12","1","20","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("540","51","X SALADA","6.00","1","0","2013-11-11","11:45:00","12","1","20","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("541","47","COCA COLA","3.00","1","0","2013-11-11","16:40:00","4","0","19","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("542","47","COCA COLA","3.00","1","0","2013-11-11","16:40:00","4","0","19","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("543","47","COCA COLA","3.00","1","0","2013-11-11","16:40:00","4","0","19","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("544","51","X SALADA","6.00","1","0","2013-11-11","16:40:00","4","0","19","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("545","50","PROVOLONE A MILANESA","25.00","1","0","2013-11-12","12:52:00","6","0","20","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("546","51","X SALADA","6.00","1","0","2013-11-12","12:54:00","8","1","20","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("547","51","X SALADA","6.00","1","0","2013-11-12","14:38:00","8","1","20","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("548","51","X SALADA","6.00","1","0","2013-11-12","14:38:00","8","1","20","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("549","51","X SALADA","6.00","1","0","2013-11-12","14:38:00","8","1","20","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("550","51","X SALADA","6.00","1","0","2013-11-12","14:38:00","8","1","20","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("551","51","X SALADA","6.00","1","0","2013-11-12","14:38:00","8","1","20","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("552","51","X SALADA","6.00","1","0","2013-11-12","16:30:00","8","1","20","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("560","51","X SALADA","6.00","1","0","2013-11-13","08:36:00","7","1","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("553","51","X SALADA","6.00","1","0","2013-11-12","18:21:00","8","1","20","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("554","51","X SALADA","6.00","1","0","2013-11-12","18:24:00","8","1","20","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("555","51","X SALADA","6.00","1","0","2013-11-12","18:24:00","8","1","20","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("556","46","PORÇÃO DE BATATAS FRITAS","12.00","1","0","2013-11-12","19:21:00","12","1","20","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("557","50","PROVOLONE A MILANESA","25.00","1","0","2013-11-12","20:01:00","6","0","20","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("558","47","COCA COLA","3.00","1","0","2013-11-12","22:34:00","4","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("559","45","FRANGO PASSARINHO","20.00","1","0","2013-11-12","22:34:00","4","0","1","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("562","49","FILÉ DE FRANGO","20.00","1","0","2013-11-13","10:02:00","8","1","20","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("563","50","PROVOLONE A MILANESA","25.00","1","0","2013-11-13","13:37:00","6","1","","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("564","50","PROVOLONE A MILANESA","25.00","1","0","2013-11-14","08:15:00","6","1","","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("565","49","FILÉ DE FRANGO","20.00","1","0","2013-11-14","08:15:00","8","1","20","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("566","47","COCA COLA","3.00","1","0","2013-11-15","02:48:00","4","0","21","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("568","52","Coca-Cola","2.50","1","0","2013-11-16","18:46:00","39","0","21","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("569","57","Cerveja Bhama","3.00","1","0","2013-11-16","18:46:00","39","0","21","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("570","57","Cerveja Bhama","3.00","1","0","2013-11-16","18:48:00","42","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("571","55","Fanta Uva","2.50","1","0","2013-11-16","18:48:00","42","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("572","54","Fata Laranja","2.50","1","0","2013-11-16","18:48:00","42","0","1","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("577","63","a moda","16.00","1","0","2013-11-18","21:00:00","38","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("606","56","Guarana","2.50","1","0","2013-11-29","11:47:00","38","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("605","56","Guarana","2.50","1","0","2013-11-29","11:47:00","38","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("578","58","Cerveja Antartica","3.00","1","0","2013-11-18","22:13:00","40","0","22","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("603","55","Fanta Uva","2.50","1","0","2013-11-29","11:47:00","38","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("604","55","Fanta Uva","2.50","1","0","2013-11-29","11:47:00","38","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("580","58","Cerveja Antartica","3.00","1","0","2013-11-19","10:27:00","38","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("581","58","Cerveja Antartica","3.00","1","0","2013-11-19","10:27:00","38","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("582","53","Sprite","2.00","1","0","2013-11-19","10:28:00","38","0","22","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("583","56","Guarana","2.50","1","0","2013-11-19","10:28:00","38","0","22","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("584","54","Fata Laranja","2.50","1","0","2013-11-19","10:28:00","38","0","22","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("585","55","Fanta Uva","2.50","1","0","2013-11-19","10:28:00","38","0","22","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("586","55","Fanta Uva","2.50","1","0","2013-11-19","10:28:00","38","0","22","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("587","55","Fanta Uva","2.50","1","0","2013-11-19","10:28:00","38","0","22","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("588","55","Fanta Uva","2.50","1","0","2013-11-19","10:28:00","38","0","22","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("589","55","Fanta Uva","2.50","1","0","2013-11-19","10:28:00","38","0","22","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("590","52","Coca-Cola","2.50","1","0","2013-11-19","10:28:00","38","0","22","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("596","58","Cerveja Antartica","3.00","1","0","2013-11-20","22:04:00","38","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("593","58","Cerveja Antartica","3.00","1","0","2013-11-19","11:16:00","38","0","22","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("594","58","Cerveja Antartica","3.00","1","0","2013-11-19","22:25:00","38","0","22","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("595","63","a moda","16.00","1","0","2013-11-19","22:25:00","38","0","22","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("597","52","Coca-Cola","2.50","1","0","2013-11-20","22:04:00","38","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("598","52","Coca-Cola","2.50","1","0","2013-11-20","22:04:00","38","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("600","57","Cerveja Bhama","3.00","1","0","2013-11-25","19:14:00","38","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("601","63","a moda","16.00","1","0","2013-11-27","17:57:00","42","0","21","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("621","63","a moda","16.00","1","0","2013-11-30","19:02:00","39","0","21","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("607","56","Guarana","2.50","1","0","2013-11-29","11:47:00","38","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("608","53","Sprite","2.00","1","0","2013-11-29","11:47:00","38","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("609","52","Coca-Cola","2.50","1","0","2013-11-29","11:47:00","38","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("610","57","Cerveja Bhama","3.00","1","0","2013-11-29","11:47:00","38","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("611","58","Cerveja Antartica","3.00","1","0","2013-11-29","11:47:00","38","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("612","55","Fanta Uva","2.50","1","0","2013-11-29","11:47:00","38","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("613","54","Fata Laranja","2.50","1","0","2013-11-29","11:47:00","38","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("614","56","Guarana","2.50","1","0","2013-11-29","11:47:00","38","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("615","59","Whisky Black jack","4.00","1","0","2013-11-29","11:48:00","38","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("616","61","Bauru Especial","4.00","1","0","2013-11-29","11:48:00","38","0","1","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("617","62","Hot Dog","3.00","1","0","2013-11-29","11:48:00","38","0","1","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("618","60","Pão de Queijo","2.50","1","0","2013-11-29","11:48:00","38","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("619","59","Whisky Black jack","4.00","1","0","2013-11-29","13:30:00","39","0","21","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("620","61","Bauru Especial","4.00","1","0","2013-11-30","16:14:00","39","0","21","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("622","58","Cerveja Antartica","3.00","1","0","2013-12-03","14:30:00","42","0","21","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("623","63","a moda","16.00","1","0","2013-12-04","23:48:00","40","0","22","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("624","57","Cerveja Bhama","3.00","1","0","2013-12-06","17:43:00","41","0","21","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("625","55","Fanta Uva","2.50","1","0","2013-12-06","17:43:00","41","0","21","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("626","53","Sprite","2.00","1","0","2013-12-06","17:43:00","41","0","21","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("627","57","Cerveja Bhama","3.00","1","0","2013-12-06","17:43:00","41","0","21","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("628","57","Cerveja Bhama","3.00","1","0","2013-12-06","17:43:00","41","0","21","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("629","55","Fanta Uva","2.50","1","0","2013-12-06","17:43:00","41","0","21","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("631","63","a moda","16.00","1","0","2013-12-06","17:45:00","41","0","22","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("632","62","Hot Dog","3.00","1","0","2013-12-06","17:54:00","41","0","22","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("633","60","Pão de Queijo","2.50","1","0","2013-12-06","17:54:00","41","0","22","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("634","63","a moda","16.00","1","0","2013-12-06","18:29:00","47","0","1","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("635","58","Cerveja Antartica","3.00","1","0","2013-12-06","18:29:00","47","0","1","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("636","52","Coca-Cola","2.50","1","0","2013-12-06","18:29:00","47","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("637","52","Coca-Cola","2.50","1","0","2013-12-06","18:29:00","47","0","1","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("638","56","Guarana","2.50","1","0","2013-12-06","18:29:00","47","0","1","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("639","52","Coca-Cola","2.50","1","0","2013-12-07","14:50:00","43","0","22","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("640","63","a moda","16.00","1","0","2013-12-09","12:59:00","39","0","21","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("641","58","Cerveja Antartica","3.00","1","0","2013-12-11","16:51:00","41","0","22","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("642","58","Cerveja Antartica","3.00","1","0","2013-12-11","16:51:00","41","0","22","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("643","58","Cerveja Antartica","3.00","1","0","2013-12-11","16:51:00","41","0","22","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("644","53","Sprite","2.00","1","0","2013-12-11","16:51:00","41","0","22","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("645","56","Guarana","3.50","1","0","2013-12-11","16:51:00","41","0","22","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("646","54","Fata Laranja","2.50","1","0","2013-12-11","16:51:00","41","0","22","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("648","58","Cerveja Antartica","3.00","1","0","2013-12-11","16:57:00","38","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("650","52","Coca-Cola","2.50","1","0","2013-12-11","16:57:00","38","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("651","58","Cerveja Antartica","3.00","1","0","2013-12-11","16:57:00","38","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("652","54","Fata Laranja","2.50","1","0","2013-12-11","16:57:00","38","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("653","63","a moda","16.00","1","0","2013-12-11","16:58:00","38","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("654","64","pizza mussarela","10.00","1","0","2013-12-11","16:58:00","38","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("655","64","pizza mussarela","10.00","1","0","2013-12-11","23:14:00","39","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("656","64","pizza mussarela","10.00","1","0","2013-12-11","23:14:00","39","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("657","55","Fanta Uva","2.50","1","0","2013-12-11","23:14:00","39","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("658","52","Coca-Cola","2.50","1","0","2013-12-11","23:14:00","39","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("659","63","a moda","16.00","1","0","2013-12-13","17:36:00","45","0","1","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("660","63","a moda","16.00","1","0","2013-12-13","17:36:00","45","0","1","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("661","58","Cerveja Antartica","3.00","1","0","2013-12-13","17:36:00","45","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("662","58","Cerveja Antartica","3.00","1","0","2013-12-13","17:36:00","45","0","1","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("663","52","Coca-Cola","2.50","1","0","2013-12-13","17:36:00","45","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("664","52","Coca-Cola","2.50","1","0","2013-12-13","17:36:00","45","0","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("665","55","Fanta Uva","2.50","1","0","2013-12-13","17:38:00","45","0","1","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("666","57","Cerveja Bhama","3.00","1","0","2013-12-15","03:50:00","38","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("667","52","Coca-Cola","2.50","1","0","2013-12-15","03:50:00","38","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("668","65","fanta","19.99","1","0","2013-12-15","03:54:00","40","0","23","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("669","55","Fanta Uva","2.50","1","0","2013-12-15","03:54:00","40","0","23","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("670","58","Cerveja Antartica","3.00","1","0","2013-12-16","08:42:00","38","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("671","58","Cerveja Antartica","3.00","1","0","2013-12-16","08:43:00","40","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("672","64","pizza mussarela","10.00","1","0","2013-12-16","08:43:00","40","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("673","63","a moda","16.00","1","0","2013-12-16","08:48:00","45","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("674","52","Coca-Cola","2.50","1","0","2013-12-16","08:48:00","45","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("675","66","Tolipa 200ml","2.00","1","0","2013-12-16","08:51:00","38","0","23","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("676","66","Tolipa 200ml","2.00","1","0","2013-12-16","08:51:00","38","0","23","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("677","66","Tolipa 200ml","2.00","1","0","2013-12-16","08:51:00","38","0","23","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("678","66","Tolipa 200ml","2.00","1","0","2013-12-16","08:51:00","38","0","23","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("679","66","Tolipa 200ml","2.00","1","0","2013-12-16","08:51:00","38","0","23","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("680","66","Tolipa 200ml","2.00","1","0","2013-12-16","08:51:00","38","0","23","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("681","66","Tolipa 200ml","2.00","1","0","2013-12-16","08:51:00","38","0","23","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("682","66","Tolipa 200ml","2.00","1","0","2013-12-16","11:43:00","38","0","23","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("683","66","Tolipa 200ml","2.00","1","0","2013-12-16","11:43:00","38","0","23","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("684","66","Tolipa 200ml","2.00","1","0","2013-12-16","11:43:00","38","0","23","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("685","57","Cerveja Bhama","3.00","1","0","2013-12-16","15:26:00","38","0","23","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("825","66","Tolipa 200ml","2.00","1","0","2014-01-20","22:15:00","42","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("687","63","a moda","16.00","1","0","2013-12-16","18:19:00","48","0","1","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("711","60","Pão de Queijo","2.50","1","0","2013-12-17","18:20:00","38","1","1","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("691","70","1/4 pizza alho e oleo","8.00","1","0","2013-12-16","18:28:00","38","1","1","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("692","59","Whisky Black jack","4.00","1","0","2013-12-16","18:53:00","39","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("693","70","1/4 pizza alho e oleo","8.00","1","0","2013-12-16","18:55:00","39","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("694","69","1/4 pizza calabrasa","8.00","1","0","2013-12-16","18:55:00","39","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("695","58","Cerveja Antartica","3.00","1","0","2013-12-17","08:54:00","40","0","23","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("696","57","Cerveja Bhama","3.00","1","0","2013-12-17","08:54:00","40","0","23","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("697","52","Coca-Cola","2.50","1","0","2013-12-17","08:54:00","40","0","23","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("700","61","Bauru Especial","4.00","1","0","2013-12-17","18:17:00","49","0","23","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("699","65","fanta","19.99","1","0","2013-12-17","08:54:00","40","0","23","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("701","62","Hot Dog","3.00","1","0","2013-12-17","18:17:00","49","0","23","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("702","60","Pão de Queijo","2.50","1","0","2013-12-17","18:17:00","49","0","23","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("703","67","Tolipa 400ml","5.00","1","0","2013-12-17","18:17:00","49","0","23","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("704","66","Tolipa 200ml","2.00","1","0","2013-12-17","18:17:00","49","0","23","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("748","71","Coxinha","12.00","1","0","2013-12-30","11:30:00","44","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("749","60","Pão de Queijo","2.50","1","0","2013-12-30","11:34:00","42","0","24","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("750","53","Sprite","2.00","1","0","2013-12-30","11:36:00","42","0","24","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("751","63","a moda","16.00","1","0","2013-12-30","11:58:00","42","0","24","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("752","71","Coxinha","12.00","1","0","2013-12-30","12:24:00","42","0","24","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("712","62","Hot Dog","3.00","1","0","2013-12-19","00:10:00","38","1","1","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("710","69","1/4 pizza calabrasa","8.00","1","0","2013-12-17","18:20:00","38","1","1","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("713","61","Bauru Especial","4.00","1","0","2013-12-19","00:10:00","38","1","1","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("714","58","Cerveja Antartica","3.00","1","0","2013-12-20","00:21:00","46","0","24","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("715","65","fanta","19.99","1","0","2013-12-20","00:21:00","46","0","24","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("716","61","Bauru Especial","4.00","1","0","2013-12-20","00:21:00","46","0","24","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("717","53","Sprite","2.00","1","0","2013-12-20","21:45:00","49","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("718","53","Sprite","2.00","1","0","2013-12-20","21:45:00","49","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("721","58","Cerveja Antartica","3.00","1","0","2013-12-21","11:55:00","39","0","24","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("720","71","Coxinha","2.00","1","0","2013-12-21","10:42:00","39","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("722","58","Cerveja Antartica","3.00","1","0","2013-12-21","11:55:00","39","0","24","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("723","52","Coca-Cola","2.50","1","0","2013-12-21","11:55:00","39","0","24","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("726","57","Cerveja Bhama","3.00","1","0","2013-12-21","17:53:00","39","0","23","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("725","64","pizza mussarela","10.00","1","0","2013-12-21","11:55:00","39","0","24","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("727","65","fanta","19.99","1","0","2013-12-21","17:53:00","39","0","23","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("728","65","fanta","19.99","1","0","2013-12-21","17:53:00","39","0","23","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("729","58","Cerveja Antartica","3.00","1","0","2013-12-23","15:16:00","41","0","22","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("730","58","Cerveja Antartica","3.00","1","0","2013-12-23","15:16:00","41","0","22","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("731","58","Cerveja Antartica","3.00","1","0","2013-12-23","15:16:00","41","0","22","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("732","69","1/4 pizza calabrasa","8.00","1","0","2013-12-23","22:40:00","40","0","24","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("733","52","Coca-Cola","2.50","1","0","2013-12-23","22:41:00","40","0","24","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("734","69","1/4 pizza calabrasa","8.00","1","0","2013-12-29","20:10:00","40","0","24","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("746","54","Fata Laranja","2.50","1","0","2013-12-30","10:44:00","39","0","24","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("747","53","Sprite","2.00","1","0","2013-12-30","10:44:00","39","0","24","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("753","66","Tolipa 200ml","2.00","1","0","2013-12-30","19:02:00","42","0","24","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("745","52","Coca-Cola zero","4.50","1","0","2013-12-30","10:44:00","39","0","24","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("740","67","Tolipa 400ml","5.00","1","0","2013-12-29","20:22:00","40","0","25","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("741","64","pizza mussarela","10.00","1","0","2013-12-29","20:22:00","40","0","25","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("742","66","Tolipa 200ml","2.00","1","0","2013-12-29","20:22:00","40","0","25","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("743","67","Tolipa 400ml","5.00","1","0","2013-12-29","20:55:00","45","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("754","67","Tolipa 400ml","5.00","1","0","2013-12-31","16:05:00","42","0","24","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("755","66","Tolipa 200ml","2.00","1","0","2014-01-02","22:05:00","43","0","24","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("756","58","Cerveja Antartica","5.00","1","0","2014-01-02","22:27:00","43","0","24","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("757","58","Cerveja Antartica","5.00","1","0","2014-01-02","22:27:00","43","0","24","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("767","67","Tolipa 400ml","5.00","1","0","2014-01-03","08:24:00","44","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("766","66","Tolipa 200ml","2.00","1","0","2014-01-03","08:24:00","44","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("765","66","Tolipa 200ml","2.00","1","0","2014-01-02","22:30:00","42","0","23","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("761","69","1/4 pizza calabrasa","8.00","1","0","2014-01-02","22:29:00","42","0","23","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("762","68","1/4 pizza frango catupiry","8.00","1","0","2014-01-02","22:29:00","42","0","23","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("763","63","a moda","16.00","1","0","2014-01-02","22:29:00","42","0","23","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("764","63","a moda","16.00","1","0","2014-01-02","22:29:00","42","0","23","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("768","64","pizza mussarela","10.00","1","0","2014-01-03","08:24:00","44","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("769","52","Coca-Cola zero","4.50","1","0","2014-01-03","11:26:00","56","0","25","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("770","66","Tolipa 200ml","2.00","1","0","2014-01-03","18:54:00","42","0","24","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("786","55","Fanta Uva","2.50","1","0","2014-01-07","03:54:00","58","1","25","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("772","58","Cerveja Antartica","5.00","1","0","2014-01-04","01:48:00","49","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("773","55","Fanta Uva","2.50","1","0","2014-01-04","01:48:00","49","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("774","57","Cerveja Brahma","5.00","1","0","2014-01-04","16:25:00","42","0","24","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("775","57","Cerveja Brahma","5.00","1","0","2014-01-04","16:26:00","42","0","24","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("776","52","Coca-Cola zero","4.50","1","0","2014-01-04","16:36:00","42","0","24","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("777","60","Pão de Queijo","2.50","1","0","2014-01-04","16:36:00","42","0","24","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("778","58","Cerveja Antartica","5.00","1","0","2014-01-07","00:32:00","42","0","24","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("779","70","1/4 pizza alho e oleo","8.00","1","0","2014-01-07","00:33:00","42","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("780","69","1/4 pizza calabrasa","8.00","1","0","2014-01-07","00:33:00","42","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("781","68","1/4 pizza frango catupiry","8.00","1","0","2014-01-07","00:33:00","42","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("782","69","1/4 pizza calabrasa","8.00","1","0","2014-01-07","00:33:00","42","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("783","69","1/4 pizza calabrasa","8.00","1","0","2014-01-07","00:34:00","42","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("784","62","Hot Dog","3.00","1","0","2014-01-07","00:34:00","42","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("785","58","Cerveja Antartica","5.00","1","0","2014-01-07","03:39:00","42","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("787","52","Coca-Cola zero","4.50","1","0","2014-01-07","03:54:00","58","1","25","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("788","52","Coca-Cola zero","4.50","1","0","2014-01-07","03:54:00","58","1","25","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("789","57","Cerveja Brahma","5.00","1","0","2014-01-07","03:54:00","58","1","25","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("790","57","Cerveja Brahma","5.00","1","0","2014-01-07","03:54:00","58","1","25","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("791","57","Cerveja Brahma","5.00","1","0","2014-01-07","03:54:00","58","1","25","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("805","58","Cerveja Antartica","5.00","1","0","2014-01-09","09:20:00","43","0","26","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("793","71","Coxinha","12.00","1","0","2014-01-07","03:54:00","58","1","25","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("794","62","Hot Dog","3.00","1","0","2014-01-07","03:55:00","58","1","25","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("795","69","1/4 pizza calabrasa","8.00","1","0","2014-01-07","11:13:00","73","1","25","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("796","58","Cerveja Antartica","5.00","1","0","2014-01-07","11:13:00","73","1","25","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("797","52","Coca-Cola zero","4.50","1","0","2014-01-07","11:13:00","73","1","25","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("798","52","Coca-Cola zero","4.50","1","0","2014-01-07","11:13:00","73","1","25","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("800","65","fanta","19.99","1","0","2014-01-07","16:15:00","64","0","26","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("802","69","1/4 pizza calabrasa","8.00","1","0","2014-01-07","16:15:00","64","0","26","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("815","58","Cerveja Antartica","5.00","1","0","2014-01-10","16:34:00","62","1","25","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("804","64","pizza mussarela","10.00","1","0","2014-01-07","16:15:00","64","0","26","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("806","52","Coca-Cola zero","4.50","1","0","2014-01-09","09:20:00","43","0","26","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("807","54","Fata Laranja","2.50","1","0","2014-01-09","09:20:00","43","0","26","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("808","53","Sprite","2.00","1","0","2014-01-09","16:09:00","43","0","26","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("809","71","Coxinha","12.00","1","0","2014-01-09","17:16:00","47","0","25","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("810","71","Coxinha","12.00","1","0","2014-01-09","17:16:00","47","0","25","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("811","71","Coxinha","12.00","1","0","2014-01-09","17:16:00","47","0","25","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("812","71","Coxinha","12.00","1","0","2014-01-09","17:16:00","47","0","25","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("813","73","Coxinha","4.00","1","0","2014-01-09","17:17:00","47","0","25","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("814","71","Coxinha","12.00","1","0","2014-01-09","18:02:00","73","1","25","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("818","67","Tolipa 400ml","5.00","1","0","2014-01-10","16:42:00","42","0","25","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("817","58","Cerveja Antartica","5.00","1","0","2014-01-10","16:34:00","62","1","25","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("819","63","a moda","16.00","1","0","2014-01-10","16:42:00","42","0","25","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("820","66","Tolipa 200ml","2.00","1","0","2014-01-10","19:48:00","47","0","26","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("821","59","Whisky Black jack","4.00","1","0","2014-01-18","17:40:00","42","0","25","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("822","64","pizza mussarela","10.00","1","0","2014-01-20","22:07:00","49","0","25","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("823","59","Whisky Black jack","4.00","1","0","2014-01-20","22:09:00","48","0","25","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("826","67","Tolipa 400ml","5.00","1","0","2014-01-20","22:16:00","42","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("827","66","Tolipa 200ml","2.00","1","0","2014-01-20","22:16:00","42","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("828","58","Cerveja Antartica","5.00","1","0","2014-01-20","23:59:00","42","0","23","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("829","52","Coca-Cola zero","4.50","1","0","2014-01-24","09:57:00","49","0","27","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("830","65","fanta","19.99","1","0","2014-01-24","09:57:00","49","0","27","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("831","59","Whisky Black jack","4.00","1","0","2014-01-24","10:20:00","44","0","26","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("832","57","Cerveja Brahma","5.00","1","0","2014-01-24","10:20:00","44","0","26","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("833","57","Cerveja Brahma","5.00","1","0","2014-01-24","10:21:00","44","0","26","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("834","55","Fanta Uva","2.50","1","0","2014-01-24","10:21:00","44","0","26","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("835","54","Fata Laranja","2.50","1","0","2014-01-24","10:21:00","44","0","26","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("836","58","Cerveja Antartica","5.00","1","0","2014-01-25","09:44:00","43","0","32","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("837","57","Cerveja Brahma","5.00","1","0","2014-01-25","09:44:00","43","0","32","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("838","52","Coca-Cola zero","4.50","1","0","2014-01-25","09:44:00","43","0","32","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("839","55","Fanta Uva","2.50","1","0","2014-01-25","09:44:00","43","0","32","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("840","56","Guarana","3.50","1","0","2014-01-25","09:44:00","43","0","32","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("841","56","Guarana","3.50","1","0","2014-01-25","09:44:00","43","0","32","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("842","54","Fata Laranja","2.50","1","0","2014-01-25","09:44:00","43","0","32","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("843","72","Fanta uva","4.50","1","0","2014-01-25","09:44:00","43","0","32","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("844","55","Fanta Uva","2.50","1","0","2014-01-25","09:44:00","43","0","32","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("845","65","fanta","19.99","1","0","2014-01-25","09:44:00","43","0","32","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("846","58","Cerveja Antartica","5.00","1","0","2014-01-25","09:44:00","43","0","32","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("847","54","Fata Laranja","2.50","1","0","2014-01-25","09:44:00","43","0","32","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("848","53","Sprite","2.00","1","0","2014-01-25","09:44:00","43","0","32","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("849","56","Guarana","3.50","1","0","2014-01-25","09:44:00","43","0","32","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("850","56","Guarana","3.50","1","0","2014-01-25","09:44:00","43","0","32","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("851","54","Fata Laranja","2.50","1","0","2014-01-25","09:44:00","43","0","32","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("852","72","Fanta uva","4.50","1","0","2014-01-25","09:44:00","43","0","32","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("853","65","fanta","19.99","1","0","2014-01-25","09:44:00","43","0","32","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("854","52","Coca-Cola zero","4.50","1","0","2014-01-25","09:44:00","43","0","32","1","0","1","0");



DROP TABLE tbl_produtos;

CREATE TABLE `tbl_produtos` (
  `cod` int(11) NOT NULL auto_increment,
  `nome` varchar(150) character set latin1 collate latin1_general_ci NOT NULL,
  `img` varchar(36) character set latin1 collate latin1_general_ci NOT NULL,
  `preco` varchar(10) NOT NULL,
  `id_categoria` int(30) NOT NULL,
  `destino` int(1) NOT NULL,
  PRIMARY KEY  (`cod`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

INSERT INTO tbl_produtos VALUES("56","Guarana","","3.50","9","0");
INSERT INTO tbl_produtos VALUES("55","Fanta Uva","","2.50","9","0");
INSERT INTO tbl_produtos VALUES("45","FRANGO PASSARINHO","","20.00","5","1");
INSERT INTO tbl_produtos VALUES("60","Pão de Queijo","","2.50","11","0");
INSERT INTO tbl_produtos VALUES("54","Fata Laranja","","2.50","9","0");
INSERT INTO tbl_produtos VALUES("50","PROVOLONE A MILANESA","","25.00","5","0");
INSERT INTO tbl_produtos VALUES("51","X SALADA","","6.00","8","1");
INSERT INTO tbl_produtos VALUES("52","Coca-Cola zero","","4.50","9","0");
INSERT INTO tbl_produtos VALUES("53","Sprite","","2.00","9","0");
INSERT INTO tbl_produtos VALUES("49","FILÉ DE FRANGO","","20.00","5","0");
INSERT INTO tbl_produtos VALUES("59","Whisky Black jack","","4.00","10","0");
INSERT INTO tbl_produtos VALUES("47","COCA COLA","","4.50","2","0");
INSERT INTO tbl_produtos VALUES("57","Cerveja Brahma","","5.00","9","0");
INSERT INTO tbl_produtos VALUES("63","a moda","","16.00","13","1");
INSERT INTO tbl_produtos VALUES("58","Cerveja Antartica","","5.00","9","0");
INSERT INTO tbl_produtos VALUES("46","PORÇÃO DE BATATAS FRITAS","","12.00","5","1");
INSERT INTO tbl_produtos VALUES("61","Bauru Especial","","4.00","11","1");
INSERT INTO tbl_produtos VALUES("62","Hot Dog","","3.00","11","1");
INSERT INTO tbl_produtos VALUES("64","pizza mussarela","","10.00","13","1");
INSERT INTO tbl_produtos VALUES("65","fanta","","19.99","9","0");
INSERT INTO tbl_produtos VALUES("66","Tolipa 200ml","","2.00","16","0");
INSERT INTO tbl_produtos VALUES("67","Tolipa 400ml","","5.00","16","0");
INSERT INTO tbl_produtos VALUES("68","1/4 pizza frango catupiry","","8.00","13","1");
INSERT INTO tbl_produtos VALUES("69","1/4 pizza calabrasa","","8.00","13","0");
INSERT INTO tbl_produtos VALUES("70","1/4 pizza alho e oleo","","8.00","13","0");
INSERT INTO tbl_produtos VALUES("71","Coxinha","","12.00","17","1");
INSERT INTO tbl_produtos VALUES("72","Fanta uva","","4.50","9","0");
INSERT INTO tbl_produtos VALUES("73","Coxinha","","3.00","17","1");



DROP TABLE usuario;

CREATE TABLE `usuario` (
  `idUser` int(10) NOT NULL auto_increment,
  `nome` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `login` varchar(100) NOT NULL,
  `senha` varchar(20) NOT NULL,
  PRIMARY KEY  (`idUser`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO usuario VALUES("1","admin","","admin","admin");



