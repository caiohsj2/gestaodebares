DROP TABLE categoria;

CREATE TABLE `categoria` (
  `id_categoria` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

INSERT INTO categoria VALUES("12","Petiscos");
INSERT INTO categoria VALUES("4","Caldos");
INSERT INTO categoria VALUES("13","Prato Executivo");
INSERT INTO categoria VALUES("6","Doses");
INSERT INTO categoria VALUES("7","Refrigerantes");
INSERT INTO categoria VALUES("15","Escondidinhos");
INSERT INTO categoria VALUES("14","Pasteizinhos");
INSERT INTO categoria VALUES("16","Espetos");
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

INSERT INTO cozinha VALUES("1","BRAHMA","1");



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
) ENGINE=MyISAM AUTO_INCREMENT=485 DEFAULT CHARSET=latin1;

INSERT INTO entrega VALUES("470","9","Tra","74.90","1","0","2019-04-07","19:22:00","46","0","","0","1","0","0");
INSERT INTO entrega VALUES("471","15","Frango c/ Catupiry","35.00","1","0","2019-04-07","23:53:00","48","0","","0","1","0","0");
INSERT INTO entrega VALUES("472","43","2 Litros","7.00","1","0","2019-04-07","23:53:00","48","0","","0","0","0","0");
INSERT INTO entrega VALUES("473","134","Central Bruto","11.90","1","0","2019-04-08","01:40:00","49","0","","0","1","0","0");
INSERT INTO entrega VALUES("474","80","Coca Cola lata 350ml","4.00","1","0","2019-04-08","01:40:00","49","0","","0","0","0","0");
INSERT INTO entrega VALUES("475","122","Batata Doce com Charque","9.90","1","0","2019-04-08","01:41:00","49","0","","0","1","0","0");
INSERT INTO entrega VALUES("476","72","Gin","8.00","1","0","2019-04-08","01:43:00","49","0","","0","0","0","0");
INSERT INTO entrega VALUES("477","74","Rum","4.00","1","0","2019-04-08","01:43:00","49","0","","0","0","0","0");
INSERT INTO entrega VALUES("478","68","Black ","6.00","1","0","2019-04-08","01:43:00","49","0","","0","0","0","0");
INSERT INTO entrega VALUES("479","57","Chopp Babylon Larger 300ml","6.00","1","0","2019-04-08","01:55:00","49","0","","0","0","0","0");
INSERT INTO entrega VALUES("480","134","Central Bruto","11.90","1","0","2019-04-08","01:55:00","49","0","","0","1","0","0");
INSERT INTO entrega VALUES("481","118","Pastel de CamarÃ£o","12.90","1","0","2019-04-08","01:56:00","49","0","","0","1","0","0");
INSERT INTO entrega VALUES("482","137","Spaghetti Ã  Bolonhesa bovino","14.90","1","0","2019-04-08","01:59:00","49","1","","0","1","0","0");
INSERT INTO entrega VALUES("483","137","Spaghetti Ã  Bolonhesa bovino","14.90","1","0","2019-04-08","02:00:00","50","1","","0","1","0","0");
INSERT INTO entrega VALUES("484","57","Chopp Babylon Larger 300ml","6.00","1","0","2019-04-08","02:04:00","49","1","","0","0","0","0");



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
INSERT INTO mesa VALUES("7","7","6","1");
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
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

INSERT INTO pedido VALUES("46","12","","0","teste@gmail.com","Carla Costa","Barcelos","(31) 34542345","Giovanini","Av. Purus ","540","");
INSERT INTO pedido VALUES("49","7","7","1","","Ilsomberto","","996344308","São Sebastião","Av. São Sebastião","308","Casa de primeiro andar");
INSERT INTO pedido VALUES("47","7","","0","teste@teste.com","teste","teste","996344308","teste","teste","123","teste de cliente");
INSERT INTO pedido VALUES("48","7","","0","","joão carlos","","99999999","","","","pizza sem cebola");
INSERT INTO pedido VALUES("50","7","8","1","","teste 2","","","","são","","");



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
) ENGINE=MyISAM AUTO_INCREMENT=223 DEFAULT CHARSET=latin1;

INSERT INTO tbl_carrinho VALUES("49","2","teste2","300.00","1","0","2013-07-10","23:40:00","9","0","2","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("53","2","teste2","300.00","1","0","2014-12-02","22:34:00","8","0","15","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("159","26","SKOL","6.50","1","0","2018-03-29","17:04:00","3","0","6","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("160","29","Cerveja Lata","3.50","1","0","2018-03-29","17:13:00","3","0","6","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("161","17","Bacon","35.00","1","0","2018-04-03","18:09:00","1","0","6","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("162","14","Frango","35.00","1","0","2018-04-03","18:21:00","1","0","6","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("174","28","ANTARTICA","5.50","1","0","2019-04-07","17:24:00","2","0","6","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("169","30","Ice","5.50","1","0","2019-04-07","17:00:00","1","0","6","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("170","42","Amarula","10.00","1","0","2019-04-07","17:01:00","1","0","6","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("171","9","Traíra Completa","74.90","1","0","2019-04-07","17:02:00","2","0","6","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("172","10","Traíra Média","64.90","1","0","2019-04-07","17:03:00","2","0","6","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("173","10","Traíra Média","64.90","1","0","2019-04-07","17:12:00","6","0","7","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("175","29","Cerveja Lata","3.50","1","0","2019-04-07","20:22:00","3","0","6","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("176","49","Feijão","10.00","1","0","2019-04-07","20:47:00","6","0","7","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("177","17","Bacon","35.00","1","0","2019-04-07","21:23:00","2","0","6","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("178","14","Frango","35.00","1","0","2019-04-07","21:23:00","2","0","6","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("189","121","Macaxeira com Charque","9.90","1","0","2019-04-08","20:36:00","1","0","6","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("187","56","Cerveja Babylon 600ml","10.00","1","0","2019-04-08","20:35:00","1","0","6","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("188","77","Lata de Pitú 350ml","10.00","1","0","2019-04-08","20:36:00","1","0","6","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("185","125","Marisco","6.00","1","0","2019-04-08","14:12:00","1","0","6","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("190","55","Eisenbah 600ml","9.00","1","0","2019-04-08","21:08:00","4","0","7","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("191","57","Chopp Babylon Larger 300ml","6.00","1","0","2019-04-08","21:08:00","3","0","6","1","0","0","0");
INSERT INTO tbl_carrinho VALUES("192","53","Budweiser long neck","7.00","1","0","2019-04-08","21:10:00","4","0","7","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("193","123","Batata com Camarão","12.90","1","0","2019-04-08","21:10:00","3","0","6","1","1","0","1");
INSERT INTO tbl_carrinho VALUES("194","95","Bombeirinho","12.00","1","0","2019-04-08","21:10:00","4","0","7","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("195","96","Margarita","15.00","1","0","2019-04-08","21:10:00","4","0","7","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("196","101","Carne de Sol de Porco","30.00","1","0","2019-04-08","21:11:00","4","0","7","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("197","110","Batata Frita Sublime","18.00","1","0","2019-04-08","21:11:00","4","0","7","1","1","0","1");
INSERT INTO tbl_carrinho VALUES("200","95","Bombeirinho","12.00","1","0","2019-04-08","22:17:00","1","1","7","1","0","0","0");
INSERT INTO tbl_carrinho VALUES("198","128","Frango com Bacon","6.00","1","0","2019-04-09","00:09:00","3","0","6","1","1","0","1");
INSERT INTO tbl_carrinho VALUES("199","53","Budweiser long neck","7.00","1","0","2019-04-09","00:10:00","3","0","6","1","0","0","0");
INSERT INTO tbl_carrinho VALUES("201","124","Camarão","6.00","1","0","2019-04-09","08:02:00","1","1","7","1","1","0","1");
INSERT INTO tbl_carrinho VALUES("202","125","Marisco","6.00","1","0","2019-04-09","08:02:00","1","1","7","1","1","0","1");
INSERT INTO tbl_carrinho VALUES("203","124","Camarão","6.00","1","0","2019-04-09","08:57:00","1","1","7","1","1","0","1");
INSERT INTO tbl_carrinho VALUES("204","70","Absolut","10.00","1","0","2019-04-09","08:59:00","4","0","6","1","0","0","0");
INSERT INTO tbl_carrinho VALUES("205","72","Gin","8.00","1","0","2019-04-09","08:59:00","4","0","6","1","0","0","0");
INSERT INTO tbl_carrinho VALUES("206","77","Lata de Pitú 350ml","10.00","1","0","2019-04-09","08:59:00","4","0","6","1","0","0","0");
INSERT INTO tbl_carrinho VALUES("207","117","Pastel de Carne","9.90","1","0","2019-04-09","08:59:00","4","0","6","1","1","0","1");
INSERT INTO tbl_carrinho VALUES("208","56","Cerveja Babylon 600ml","10.00","1","0","2019-04-09","09:03:00","7","1","6","1","0","0","0");
INSERT INTO tbl_carrinho VALUES("209","114","Spaghetti ao molho branco","12.90","1","0","2019-04-09","09:04:00","7","1","6","1","1","0","1");
INSERT INTO tbl_carrinho VALUES("210","127","Feijão","5.00","1","0","2019-04-09","10:07:00","4","0","6","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("211","53","Budweiser long neck","7.00","1","0","2019-04-09","10:08:00","4","0","6","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("212","53","Budweiser long neck","7.00","1","0","2019-04-09","15:21:00","4","0","6","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("213","55","Eisenbah 600ml","9.00","1","0","2019-04-09","15:23:00","1","1","7","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("214","53","Budweiser long neck","7.00","1","0","2019-04-09","18:34:00","4","0","6","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("215","123","Batata com Camarão","12.90","1","0","2019-04-09","18:35:00","4","0","6","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("217","56","Cerveja Babylon 600ml","10.00","1","0","2019-04-09","19:01:00","4","0","6","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("218","123","Batata com Camarão","12.90","1","0","2019-04-09","19:21:00","4","0","6","0","1","0","1");
INSERT INTO tbl_carrinho VALUES("222","134","Central Bruto","11.90","1","0","2019-04-09","20:28:00","1","1","7","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("220","55","Eisenbah 600ml","9.00","1","0","2019-04-09","20:17:00","1","1","7","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("221","131","Bovino","5.00","1","0","2019-04-09","20:24:00","1","1","7","0","1","0","0");



DROP TABLE tbl_produtos;

CREATE TABLE `tbl_produtos` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `img` varchar(36) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `preco` varchar(10) NOT NULL,
  `id_categoria` int(30) NOT NULL,
  `destino` int(1) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=latin1;

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
INSERT INTO tbl_produtos VALUES("66","Rum","","45.00","18","0");
INSERT INTO tbl_produtos VALUES("65","Dreher","","35.00","18","0");
INSERT INTO tbl_produtos VALUES("64","Gin","","90.00","18","0");
INSERT INTO tbl_produtos VALUES("63","Sky","","70.00","18","0");
INSERT INTO tbl_produtos VALUES("62","Absolut","","150.00","18","0");
INSERT INTO tbl_produtos VALUES("61","Teacher´s","","60.00","18","0");
INSERT INTO tbl_produtos VALUES("60","Black & White","","80.00","18","0");
INSERT INTO tbl_produtos VALUES("59","Johnnie Walker","","150.00","18","0");
INSERT INTO tbl_produtos VALUES("58","Old Parr","","220.00","18","0");
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



