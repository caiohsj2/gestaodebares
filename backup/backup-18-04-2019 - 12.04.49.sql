DROP TABLE categoria;

CREATE TABLE `categoria` (
  `id_categoria` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

INSERT INTO categoria VALUES("12","Petiscos");
INSERT INTO categoria VALUES("4","Caldos");
INSERT INTO categoria VALUES("13","Prato Executivo");
INSERT INTO categoria VALUES("6","Doses");
INSERT INTO categoria VALUES("7","Refrigerantes");
INSERT INTO categoria VALUES("15","Escondidinhos");
INSERT INTO categoria VALUES("14","Pasteizinhos");
INSERT INTO categoria VALUES("16","Espetinhos");
INSERT INTO categoria VALUES("17","Hamburguers");
INSERT INTO categoria VALUES("18","Litros");
INSERT INTO categoria VALUES("19","Drinks");
INSERT INTO categoria VALUES("20","Bebidas");
INSERT INTO categoria VALUES("21","Cerveja Artesanal");
INSERT INTO categoria VALUES("22","Chopp");



DROP TABLE config;

CREATE TABLE `config` (
  `id_conf` int(30) NOT NULL,
  `empresa` varchar(200) NOT NULL,
  `telefone` varchar(30) NOT NULL,
  `pgarcon` int(10) NOT NULL,
  `ativo` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO config VALUES("0","Petiscaria Central","(81) 99693-3030","0","1");



DROP TABLE cozinha;

CREATE TABLE `cozinha` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `produto` varchar(200) NOT NULL,
  `qtd` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;




DROP TABLE entrega;

CREATE TABLE `entrega` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=486 DEFAULT CHARSET=latin1;

INSERT INTO entrega VALUES("485","125","Marisco","6.00","1","0","2019-04-18","12:21:00","51","1","","0","1","0","0");



DROP TABLE garcon;

CREATE TABLE `garcon` (
  `idGarcon` int(10) NOT NULL AUTO_INCREMENT,
  `nomeGarcon` varchar(200) NOT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `nv` int(1) NOT NULL,
  PRIMARY KEY (`idGarcon`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO garcon VALUES("1","Administrador","admin","1234","0");
INSERT INTO garcon VALUES("6","Fernando","fernando","1234","1");
INSERT INTO garcon VALUES("7","Carlos","carlos","1234","1");
INSERT INTO garcon VALUES("8","COZINHA","cozinha","1234","2");
INSERT INTO garcon VALUES("9","DESPACHO DE ITENS","despacho","1234","3");



DROP TABLE mesa;

CREATE TABLE `mesa` (
  `id_mesa` int(10) NOT NULL AUTO_INCREMENT,
  `numero` int(10) NOT NULL,
  `idGarcon` varchar(200) CHARACTER SET utf8 NOT NULL,
  `situacao` int(1) NOT NULL,
  PRIMARY KEY (`id_mesa`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

INSERT INTO mesa VALUES("4","4","","0");
INSERT INTO mesa VALUES("2","2","","0");
INSERT INTO mesa VALUES("3","3","","0");
INSERT INTO mesa VALUES("1","1","7","1");
INSERT INTO mesa VALUES("5","5","","0");
INSERT INTO mesa VALUES("6","6","","0");
INSERT INTO mesa VALUES("7","7","","0");
INSERT INTO mesa VALUES("8","8","","0");
INSERT INTO mesa VALUES("9","9","","0");
INSERT INTO mesa VALUES("10","10","","0");
INSERT INTO mesa VALUES("11","11","","0");
INSERT INTO mesa VALUES("12","12","","0");
INSERT INTO mesa VALUES("13","13","","0");
INSERT INTO mesa VALUES("14","14","","0");
INSERT INTO mesa VALUES("15","15","","0");
INSERT INTO mesa VALUES("16","16","","0");
INSERT INTO mesa VALUES("17","17","","0");
INSERT INTO mesa VALUES("18","18","","0");
INSERT INTO mesa VALUES("19","19","","0");
INSERT INTO mesa VALUES("20","20","","0");
INSERT INTO mesa VALUES("21","21","","0");
INSERT INTO mesa VALUES("22","22","","0");
INSERT INTO mesa VALUES("23","23","","0");
INSERT INTO mesa VALUES("24","24","","0");
INSERT INTO mesa VALUES("25","25","","0");
INSERT INTO mesa VALUES("26","26","","0");
INSERT INTO mesa VALUES("27","27","","0");
INSERT INTO mesa VALUES("28","28","","0");
INSERT INTO mesa VALUES("29","29","","0");
INSERT INTO mesa VALUES("30","30","","0");
INSERT INTO mesa VALUES("31","31","","0");
INSERT INTO mesa VALUES("32","32","","0");
INSERT INTO mesa VALUES("33","33","","0");
INSERT INTO mesa VALUES("34","34","","0");
INSERT INTO mesa VALUES("35","35","","0");
INSERT INTO mesa VALUES("36","36","","0");
INSERT INTO mesa VALUES("37","37","","0");
INSERT INTO mesa VALUES("38","38","","0");
INSERT INTO mesa VALUES("39","39","","0");
INSERT INTO mesa VALUES("40","40","","0");
INSERT INTO mesa VALUES("41","41","","0");
INSERT INTO mesa VALUES("42","42","","0");
INSERT INTO mesa VALUES("43","43","","0");
INSERT INTO mesa VALUES("44","44","","0");
INSERT INTO mesa VALUES("45","45","","0");
INSERT INTO mesa VALUES("46","46","","0");
INSERT INTO mesa VALUES("47","47","","0");
INSERT INTO mesa VALUES("48","48","","0");
INSERT INTO mesa VALUES("49","49","","0");
INSERT INTO mesa VALUES("50","50","","0");
INSERT INTO mesa VALUES("51","51","","0");
INSERT INTO mesa VALUES("52","52","","0");
INSERT INTO mesa VALUES("53","53","","0");
INSERT INTO mesa VALUES("54","54","","0");
INSERT INTO mesa VALUES("55","55","","0");
INSERT INTO mesa VALUES("56","56","","0");
INSERT INTO mesa VALUES("57","57","","0");
INSERT INTO mesa VALUES("58","58","","0");
INSERT INTO mesa VALUES("59","59","","0");
INSERT INTO mesa VALUES("60","60","","0");



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
  `bairro` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `rua` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `numerocasa` varchar(20) DEFAULT NULL,
  `detalhes` longtext,
  PRIMARY KEY (`id_mesa`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

INSERT INTO pedido VALUES("51","18","9","1","teste@teste","teste","teste","9999999999999999999","teste","teste","123","teste de cadastro de cliente");



DROP TABLE subcategoria;

CREATE TABLE `subcategoria` (
  `nome` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO subcategoria VALUES("1/2 pizza");



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
) ENGINE=MyISAM AUTO_INCREMENT=272 DEFAULT CHARSET=latin1;

INSERT INTO tbl_carrinho VALUES("270","115","Spaghetti à Bolonhesa frango","12.90","1","0","2019-04-18","09:48:00","1","1","7","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("271","114","Spaghetti ao molho branco","12.90","1","0","2019-04-18","09:52:00","1","1","7","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("269","114","Spaghetti ao molho branco","12.90","1","0","2019-04-18","09:46:00","1","1","7","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("268","114","Spaghetti ao molho branco","12.90","1","0","2019-04-18","09:46:00","1","1","7","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("267","114","Spaghetti ao molho branco","12.90","1","0","2019-04-18","09:46:00","1","1","7","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("266","56","Cerveja Babylon 600ml","10.00","1","0","2019-04-18","09:28:00","1","1","7","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("264","123","Batata com Camarão","12.90","1","0","2019-04-16","21:07:00","1","1","7","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("265","133","Central Bacon","10.90","1","0","2019-04-17","00:16:00","1","1","7","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("263","66","Rum (litro)","45.00","1","0","2019-04-16","02:24:00","1","1","7","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("261","54","Heineken long neck","7.00","1","0","2019-04-16","02:23:00","1","1","7","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("262","64","Gin (litro)","90.00","1","0","2019-04-16","02:24:00","1","1","7","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("259","125","Marisco","6.00","1","0","2019-04-16","02:23:00","1","1","7","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("260","124","Camarão","6.00","1","0","2019-04-16","02:23:00","1","1","7","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("254","53","Budweiser long neck","7.00","1","0","2019-04-15","22:40:00","1","1","7","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("258","124","Camarão","6.00","1","0","2019-04-16","00:04:00","1","1","7","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("257","53","Budweiser long neck","7.00","1","0","2019-04-16","00:03:00","1","1","7","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("255","53","Budweiser long neck","7.00","1","0","2019-04-15","22:42:00","1","1","7","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("253","53","Budweiser long neck","7.00","1","0","2019-04-15","22:34:00","1","1","7","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("252","97","Caipirosca","8.00","1","0","2019-04-12","09:07:00","1","1","7","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("256","53","Budweiser long neck","7.00","1","0","2019-04-15","23:33:00","1","1","7","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("251","123","Batata com Camarão","12.90","1","0","2019-04-12","00:04:00","1","1","7","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("249","123","Batata com Camarão","12.90","1","0","2019-04-11","23:45:00","1","1","7","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("247","123","Batata com Camarão","12.90","1","0","2019-04-11","23:44:00","1","1","7","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("248","121","Macaxeira com Charque","9.90","1","0","2019-04-11","23:44:00","1","1","7","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("242","123","Batata com Camarão","12.90","1","0","2019-04-11","23:20:00","1","1","7","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("236","53","Budweiser long neck","7.00","1","0","2019-04-11","18:33:00","1","1","7","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("237","108","Queijo Coalho à Milanesa","11.00","1","0","2019-04-11","21:41:00","1","1","7","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("238","110","Batata Frita Sublime","18.00","1","0","2019-04-11","21:42:00","1","1","7","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("239","55","Eisenbah 600ml","9.00","1","0","2019-04-11","21:42:00","1","1","7","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("240","53","Budweiser long neck","7.00","1","0","2019-04-11","21:42:00","1","1","7","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("241","123","Batata com Camarão","12.90","1","0","2019-04-11","22:50:00","1","1","7","0","1","0","0");



DROP TABLE tbl_obs;

CREATE TABLE `tbl_obs` (
  `id_produto` int(11) NOT NULL,
  `id_mesa` int(30) NOT NULL,
  `observacao` int(40) NOT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




DROP TABLE tbl_produtos;

CREATE TABLE `tbl_produtos` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `img` varchar(36) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `preco` varchar(10) NOT NULL,
  `id_categoria` int(30) NOT NULL,
  `destino` int(1) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=latin1;

INSERT INTO tbl_produtos VALUES("82","Soda lata 350ml","","4.00","7","0");
INSERT INTO tbl_produtos VALUES("81","Fanta lata 350ml","","4.00","7","0");
INSERT INTO tbl_produtos VALUES("80","Coca Cola lata 350ml","","4.00","7","0");
INSERT INTO tbl_produtos VALUES("79","Soda litro","","6.00","7","0");
INSERT INTO tbl_produtos VALUES("78","Coca Cola litro","","6.00","7","0");
INSERT INTO tbl_produtos VALUES("77","Lata de Pitú 350ml","","10.00","6","0");
INSERT INTO tbl_produtos VALUES("76","Red Bull","","10.00","6","0");
INSERT INTO tbl_produtos VALUES("75","Tequila","","10.00","6","0");
INSERT INTO tbl_produtos VALUES("74","Rum","","4.00","6","0");
INSERT INTO tbl_produtos VALUES("73","Dreher","","3.00","6","0");
INSERT INTO tbl_produtos VALUES("72","Gin","","8.00","6","0");
INSERT INTO tbl_produtos VALUES("71","Sky","","5.00","6","0");
INSERT INTO tbl_produtos VALUES("70","Absolut","","10.00","6","0");
INSERT INTO tbl_produtos VALUES("69","Teacher´s","","4.00","6","0");
INSERT INTO tbl_produtos VALUES("68","Black & White","","6.00","6","0");
INSERT INTO tbl_produtos VALUES("67","Johnnie Walker","","10.00","6","0");
INSERT INTO tbl_produtos VALUES("66","Rum (litro)","","45.00","18","0");
INSERT INTO tbl_produtos VALUES("65","Dreher (litro)","","35.00","18","0");
INSERT INTO tbl_produtos VALUES("64","Gin (litro)","","90.00","18","0");
INSERT INTO tbl_produtos VALUES("63","Sky (litro)","","70.00","18","0");
INSERT INTO tbl_produtos VALUES("62","Absolut (litro)","","150.00","18","0");
INSERT INTO tbl_produtos VALUES("61","Teacher´s (litro)","","60.00","18","0");
INSERT INTO tbl_produtos VALUES("60","Black & White (litro)","","80.00","18","0");
INSERT INTO tbl_produtos VALUES("59","Johnnie Walker (litro)","","150.00","18","0");
INSERT INTO tbl_produtos VALUES("58","Old Parr (litro)","","220.00","18","0");
INSERT INTO tbl_produtos VALUES("57","Chopp Babylon Larger 300ml","","6.00","22","0");
INSERT INTO tbl_produtos VALUES("56","Cerveja Babylon 600ml","","10.00","21","0");
INSERT INTO tbl_produtos VALUES("55","Eisenbah 600ml","","9.00","20","0");
INSERT INTO tbl_produtos VALUES("54","Heineken long neck","","7.00","20","0");
INSERT INTO tbl_produtos VALUES("53","Budweiser long neck","","7.00","20","0");
INSERT INTO tbl_produtos VALUES("83","Água Tônica lata 350ml","","4.00","7","0");
INSERT INTO tbl_produtos VALUES("84","Água Mineral","","2.00","7","0");
INSERT INTO tbl_produtos VALUES("85","Água com gás","","3.00","7","0");
INSERT INTO tbl_produtos VALUES("86","H2O","","4.00","7","0");
INSERT INTO tbl_produtos VALUES("87","Planters Ponch","","10.00","19","0");
INSERT INTO tbl_produtos VALUES("88","Mint Julep","","12.00","19","0");
INSERT INTO tbl_produtos VALUES("89","Long Island Iced Tra","","15.00","19","0");
INSERT INTO tbl_produtos VALUES("90","Moscow Mule","","10.00","19","0");
INSERT INTO tbl_produtos VALUES("91","Tequila Sunrise","","15.00","19","0");
INSERT INTO tbl_produtos VALUES("92","Mojito","","8.00","19","0");
INSERT INTO tbl_produtos VALUES("93","Insoniac","","12.00","19","0");
INSERT INTO tbl_produtos VALUES("94","Gin Tônica","","12.00","19","0");
INSERT INTO tbl_produtos VALUES("95","Bombeirinho","","12.00","19","0");
INSERT INTO tbl_produtos VALUES("96","Margarita","","15.00","19","0");
INSERT INTO tbl_produtos VALUES("97","Caipirosca","","8.00","19","0");
INSERT INTO tbl_produtos VALUES("98","Caipirinha","","8.00","19","0");
INSERT INTO tbl_produtos VALUES("99","Nevada","","8.00","19","0");
INSERT INTO tbl_produtos VALUES("100","Carne de Sol","","25.00","12","1");
INSERT INTO tbl_produtos VALUES("101","Carne de Sol de Porco","","30.00","12","1");
INSERT INTO tbl_produtos VALUES("102","Filé com Fritas","","25.00","12","1");
INSERT INTO tbl_produtos VALUES("103","Filé de Frango","","20.00","12","1");
INSERT INTO tbl_produtos VALUES("104","Pernil de Cordeiro","","30.00","12","1");
INSERT INTO tbl_produtos VALUES("105","Gurjões","","20.00","12","1");
INSERT INTO tbl_produtos VALUES("106","Queijo Coalho Chapeado","","10.00","12","1");
INSERT INTO tbl_produtos VALUES("107","Queijo Coalho Chapeado com mel de e","","10.00","12","1");
INSERT INTO tbl_produtos VALUES("108","Queijo Coalho à Milanesa","","11.00","12","1");
INSERT INTO tbl_produtos VALUES("109","Batata Frita","","10.00","12","1");
INSERT INTO tbl_produtos VALUES("110","Batata Frita Sublime","","18.00","12","1");
INSERT INTO tbl_produtos VALUES("111","Macaxeira Arretada","","14.00","12","1");
INSERT INTO tbl_produtos VALUES("112","Chips","","7.00","12","1");
INSERT INTO tbl_produtos VALUES("113","Camarão Alho e Óleo","","29.90","12","1");
INSERT INTO tbl_produtos VALUES("114","Spaghetti ao molho branco","","12.90","13","1");
INSERT INTO tbl_produtos VALUES("115","Spaghetti à Bolonhesa frango","","12.90","13","1");
INSERT INTO tbl_produtos VALUES("137","Spaghetti à Bolonhesa bovino","","14.90","13","1");
INSERT INTO tbl_produtos VALUES("117","Pastel de Carne","","9.90","14","1");
INSERT INTO tbl_produtos VALUES("118","Pastel de Camarão","","12.90","14","1");
INSERT INTO tbl_produtos VALUES("119","Pastel de Queijo","","9.90","14","1");
INSERT INTO tbl_produtos VALUES("120","Quibe","","12.90","12","1");
INSERT INTO tbl_produtos VALUES("121","Macaxeira com Charque","","9.90","15","1");
INSERT INTO tbl_produtos VALUES("122","Batata Doce com Charque","","9.90","15","1");
INSERT INTO tbl_produtos VALUES("123","Batata com Camarão","","12.90","15","1");
INSERT INTO tbl_produtos VALUES("124","Camarão","","6.00","4","1");
INSERT INTO tbl_produtos VALUES("125","Marisco","","6.00","4","1");
INSERT INTO tbl_produtos VALUES("126","Peixe","","5.00","4","1");
INSERT INTO tbl_produtos VALUES("127","Feijão","","5.00","4","1");
INSERT INTO tbl_produtos VALUES("128","Frango com Bacon","","6.00","16","1");
INSERT INTO tbl_produtos VALUES("129","Charque","","6.00","16","1");
INSERT INTO tbl_produtos VALUES("130","Frango","","5.00","16","1");
INSERT INTO tbl_produtos VALUES("131","Bovino","","5.00","16","1");
INSERT INTO tbl_produtos VALUES("132","Central Burguer","","9.90","17","1");
INSERT INTO tbl_produtos VALUES("133","Central Bacon","","10.90","17","1");
INSERT INTO tbl_produtos VALUES("134","Central Bruto","","11.90","17","1");
INSERT INTO tbl_produtos VALUES("135","Central Imperial","","14.90","17","1");
INSERT INTO tbl_produtos VALUES("136","Central Vegano","","14.90","17","1");



DROP TABLE usuario;

CREATE TABLE `usuario` (
  `idUser` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `login` varchar(100) NOT NULL,
  `senha` varchar(20) NOT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO usuario VALUES("1","Seu Nome","","aidecb","8520");



