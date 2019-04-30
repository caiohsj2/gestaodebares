-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 27/04/2019 às 20:13
-- Versão do servidor: 5.6.41-84.1
-- Versão do PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `synap062_barerest`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(10) NOT NULL,
  `nome` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nome`) VALUES
(12, 'Petiscos'),
(4, 'Caldos'),
(13, 'Prato Executivo'),
(6, 'Doses'),
(7, 'Refrigerantes'),
(15, 'Escondidinhos'),
(14, 'Pasteizinhos'),
(16, 'Espetinhos'),
(17, 'Hamburguers'),
(18, 'Litros'),
(19, 'Drinks'),
(20, 'Bebidas'),
(21, 'Cerveja Artesanal'),
(22, 'Chopp');

-- --------------------------------------------------------

--
-- Estrutura para tabela `config`
--

CREATE TABLE `config` (
  `id_conf` int(30) NOT NULL,
  `empresa` varchar(200) NOT NULL,
  `telefone` varchar(30) NOT NULL,
  `pgarcon` int(10) NOT NULL,
  `ativo` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `config`
--

INSERT INTO `config` (`id_conf`, `empresa`, `telefone`, `pgarcon`, `ativo`) VALUES
(0, 'Ber e restaurante', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cozinha`
--

CREATE TABLE `cozinha` (
  `id` int(10) NOT NULL,
  `produto` varchar(200) NOT NULL,
  `qtd` int(10) NOT NULL,
  `observacao` varchar(45) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `entrega`
--

CREATE TABLE `entrega` (
  `id` int(11) NOT NULL,
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
  `feito` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `entrega`
--

INSERT INTO `entrega` (`id`, `cod`, `nome`, `preco`, `qtd`, `comanda`, `data`, `time`, `id_mesa`, `situacao`, `idGarcon`, `status`, `destino`, `entregue`, `feito`) VALUES
(485, 125, 'Marisco', '6.00', 1, 0, '2019-04-18', '12:21:00', 51, 0, '', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `garcon`
--

CREATE TABLE `garcon` (
  `idGarcon` int(10) NOT NULL,
  `nomeGarcon` varchar(200) NOT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `nv` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `garcon`
--

INSERT INTO `garcon` (`idGarcon`, `nomeGarcon`, `login`, `senha`, `nv`) VALUES
(1, 'Administrador', 'admin', '1234', 0),
(6, 'Fernando', 'fernando', '1234', 1),
(7, 'Carlos', 'carlos', '1234', 1),
(8, 'COZINHA', 'cozinha', '1234', 2),
(9, 'DESPACHO DE ITENS', 'despacho', '1234', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `mesa`
--

CREATE TABLE `mesa` (
  `id_mesa` int(10) NOT NULL,
  `numero` int(10) NOT NULL,
  `idGarcon` varchar(200) CHARACTER SET utf8 NOT NULL,
  `situacao` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `mesa`
--

INSERT INTO `mesa` (`id_mesa`, `numero`, `idGarcon`, `situacao`) VALUES
(4, 4, '', 0),
(2, 2, '7', 1),
(3, 3, '7', 1),
(1, 1, '7', 1),
(5, 5, '', 0),
(6, 6, '', 0),
(7, 7, '', 0),
(8, 8, '', 0),
(9, 9, '', 0),
(10, 10, '', 0),
(11, 11, '', 0),
(12, 12, '', 0),
(13, 13, '', 0),
(14, 14, '', 0),
(15, 15, '', 0),
(16, 16, '', 0),
(17, 17, '', 0),
(18, 18, '', 0),
(19, 19, '', 0),
(20, 20, '', 0),
(21, 21, '', 0),
(22, 22, '', 0),
(23, 23, '', 0),
(24, 24, '', 0),
(25, 25, '', 0),
(26, 26, '', 0),
(27, 27, '', 0),
(28, 28, '', 0),
(29, 29, '', 0),
(30, 30, '', 0),
(31, 31, '', 0),
(32, 32, '', 0),
(33, 33, '', 0),
(34, 34, '', 0),
(35, 35, '', 0),
(36, 36, '', 0),
(37, 37, '', 0),
(38, 38, '', 0),
(39, 39, '', 0),
(40, 40, '', 0),
(41, 41, '', 0),
(42, 42, '', 0),
(43, 43, '', 0),
(44, 44, '', 0),
(45, 45, '', 0),
(46, 46, '', 0),
(47, 47, '', 0),
(48, 48, '', 0),
(49, 49, '', 0),
(50, 50, '', 0),
(51, 51, '', 0),
(52, 52, '', 0),
(53, 53, '', 0),
(54, 54, '', 0),
(55, 55, '', 0),
(56, 56, '', 0),
(57, 57, '', 0),
(58, 58, '', 0),
(59, 59, '', 0),
(60, 60, '', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido`
--

CREATE TABLE `pedido` (
  `id_mesa` int(10) NOT NULL,
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
  `detalhes` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `pedido`
--

INSERT INTO `pedido` (`id_mesa`, `numero`, `idGarcon`, `situacao`, `email`, `nome`, `sobrenome`, `telefone`, `bairro`, `rua`, `numerocasa`, `detalhes`) VALUES
(51, 18, '7', 1, 'teste@teste', 'teste', 'teste', '9999999999999999999', 'teste', 'teste', '123', 'teste de cadastro de cliente');

-- --------------------------------------------------------

--
-- Estrutura para tabela `subcategoria`
--

CREATE TABLE `subcategoria` (
  `nome` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `subcategoria`
--

INSERT INTO `subcategoria` (`nome`) VALUES
('1/2 pizza');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_carrinho`
--

CREATE TABLE `tbl_carrinho` (
  `id` int(11) NOT NULL,
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
  `observacao` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tbl_carrinho`
--

INSERT INTO `tbl_carrinho` (`id`, `cod`, `nome`, `preco`, `qtd`, `comanda`, `data`, `time`, `id_mesa`, `situacao`, `idGarcon`, `status`, `destino`, `entregue`, `feito`, `observacao`) VALUES
(238, 110, 'Batata Frita Sublime', '18.00', 1, 0, '2019-04-11', '21:42:00', 1, 1, '7', 0, 1, 0, 0, ''),
(296, 53, 'Budweiser long neck', '7.00', 1, 0, '2019-04-20', '22:54:00', 1, 1, '7', 0, 0, 0, 0, ''),
(297, 143, 'OBSERVAÇÂO', '', 1, 0, '2019-04-20', '23:05:00', 1, 1, '7', 0, 1, 0, 0, ''),
(298, 53, 'Budweiser long neck', '7.00', 1, 0, '2019-04-26', '21:47:00', 1, 1, '7', 0, 0, 0, 0, ''),
(299, 53, 'Budweiser long neck', '7.00', 1, 0, '2019-04-26', '21:49:00', 1, 1, '7', 0, 0, 0, 0, ''),
(300, 55, 'Eisenbah 600ml', '9.00', 1, 0, '2019-04-26', '21:51:00', 1, 1, '7', 0, 0, 0, 0, ''),
(301, 53, 'Budweiser long neck', '7.00', 1, 0, '2019-04-26', '21:53:00', 1, 1, '7', 0, 0, 0, 0, ''),
(302, 53, 'Budweiser long neck', '7.00', 1, 0, '2019-04-26', '22:14:00', 2, 1, '7', 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_obs`
--

CREATE TABLE `tbl_obs` (
  `id_produto` int(11) NOT NULL,
  `id_mesa` int(30) NOT NULL,
  `observacao` int(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_produtos`
--

CREATE TABLE `tbl_produtos` (
  `cod` int(11) NOT NULL,
  `nome` varchar(150) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `img` varchar(36) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `preco` varchar(10) NOT NULL,
  `id_categoria` int(30) NOT NULL,
  `destino` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tbl_produtos`
--

INSERT INTO `tbl_produtos` (`cod`, `nome`, `img`, `preco`, `id_categoria`, `destino`) VALUES
(82, 'Soda lata 350ml', '', '4.00', 7, 0),
(81, 'Fanta lata 350ml', '', '4.00', 7, 0),
(80, 'Coca Cola lata 350ml', '', '4.00', 7, 0),
(79, 'Soda litro', '', '6.00', 7, 0),
(78, 'Coca Cola litro', '', '6.00', 7, 0),
(77, 'Lata de Pitú 350ml', '', '10.00', 6, 0),
(76, 'Red Bull', '', '10.00', 6, 0),
(75, 'Tequila', '', '10.00', 6, 0),
(74, 'Rum', '', '4.00', 6, 0),
(73, 'Dreher', '', '3.00', 6, 0),
(72, 'Gin', '', '8.00', 6, 0),
(71, 'Sky', '', '5.00', 6, 0),
(70, 'Absolut', '', '10.00', 6, 0),
(69, 'Teacher´s', '', '4.00', 6, 0),
(68, 'Black & White', '', '6.00', 6, 0),
(67, 'Johnnie Walker', '', '10.00', 6, 0),
(66, 'Rum (litro)', '', '45.00', 18, 0),
(65, 'Dreher (litro)', '', '35.00', 18, 0),
(64, 'Gin (litro)', '', '90.00', 18, 0),
(63, 'Sky (litro)', '', '70.00', 18, 0),
(62, 'Absolut (litro)', '', '150.00', 18, 0),
(61, 'Teacher´s (litro)', '', '60.00', 18, 0),
(60, 'Black & White (litro)', '', '80.00', 18, 0),
(59, 'Johnnie Walker (litro)', '', '150.00', 18, 0),
(58, 'Old Parr (litro)', '', '220.00', 18, 0),
(57, 'Chopp Babylon Larger 300ml', '', '6.00', 22, 0),
(56, 'Cerveja Babylon 600ml', '', '10.00', 21, 0),
(55, 'Eisenbah 600ml', '', '9.00', 20, 0),
(54, 'Heineken long neck', '', '7.00', 20, 0),
(53, 'Budweiser long neck', '', '7.00', 20, 0),
(83, 'Água Tônica lata 350ml', '', '4.00', 7, 0),
(84, 'Água Mineral', '', '2.00', 7, 0),
(85, 'Água com gás', '', '3.00', 7, 0),
(86, 'H2O', '', '4.00', 7, 0),
(87, 'Planters Ponch', '', '10.00', 19, 0),
(88, 'Mint Julep', '', '12.00', 19, 0),
(89, 'Long Island Iced Tra', '', '15.00', 19, 0),
(90, 'Moscow Mule', '', '10.00', 19, 0),
(91, 'Tequila Sunrise', '', '15.00', 19, 0),
(92, 'Mojito', '', '8.00', 19, 0),
(93, 'Insoniac', '', '12.00', 19, 0),
(94, 'Gin Tônica', '', '12.00', 19, 0),
(95, 'Bombeirinho', '', '12.00', 19, 0),
(96, 'Margarita', '', '15.00', 19, 0),
(97, 'Caipirosca', '', '8.00', 19, 0),
(98, 'Caipirinha', '', '8.00', 19, 0),
(99, 'Nevada', '', '8.00', 19, 0),
(100, 'Carne de Sol', '', '25.00', 12, 1),
(101, 'Carne de Sol de Porco', '', '30.00', 12, 1),
(102, 'Filé com Fritas', '', '25.00', 12, 1),
(103, 'Filé de Frango', '', '20.00', 12, 1),
(104, 'Pernil de Cordeiro', '', '30.00', 12, 1),
(105, 'Gurjões', '', '20.00', 12, 1),
(106, 'Queijo Coalho Chapeado', '', '10.00', 12, 1),
(107, 'Queijo Coalho Chapeado com mel de e', '', '10.00', 12, 1),
(108, 'Queijo Coalho à Milanesa', '', '11.00', 12, 1),
(109, 'Batata Frita', '', '10.00', 12, 1),
(110, 'Batata Frita Sublime', '', '18.00', 12, 1),
(111, 'Macaxeira Arretada', '', '14.00', 12, 1),
(112, 'Chips', '', '7.00', 12, 1),
(113, 'Camarão Alho e Óleo', '', '29.90', 12, 1),
(114, 'Spaghetti ao molho branco', '', '12.90', 13, 1),
(115, 'Spaghetti à Bolonhesa frango', '', '12.90', 13, 1),
(137, 'Spaghetti à Bolonhesa bovino', '', '14.90', 13, 1),
(117, 'Pastel de Carne', '', '9.90', 14, 1),
(118, 'Pastel de Camarão', '', '12.90', 14, 1),
(119, 'Pastel de Queijo', '', '9.90', 14, 1),
(120, 'Quibe', '', '12.90', 12, 1),
(121, 'Macaxeira com Charque', '', '9.90', 15, 1),
(122, 'Batata Doce com Charque', '', '9.90', 15, 1),
(123, 'Batata com Camarão', '', '12.90', 15, 1),
(124, 'Camarão', '', '6.00', 4, 1),
(125, 'Marisco', '', '6.00', 4, 1),
(126, 'Peixe', '', '5.00', 4, 1),
(127, 'Feijão', '', '5.00', 4, 1),
(128, 'Frango com Bacon', '', '6.00', 16, 1),
(129, 'Charque', '', '6.00', 16, 1),
(130, 'Frango', '', '5.00', 16, 1),
(131, 'Bovino', '', '5.00', 16, 1),
(132, 'Central Burguer', '', '9.90', 17, 1),
(133, 'Central Bacon', '', '10.90', 17, 1),
(134, 'Central Bruto', '', '11.90', 17, 1),
(135, 'Central Imperial', '', '14.90', 17, 1),
(136, 'Central Vegano', '', '14.90', 17, 1),
(143, 'OBSERVAÇÂO', '', '', 4, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUser` int(10) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `login` varchar(100) NOT NULL,
  `senha` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `usuario`
--

INSERT INTO `usuario` (`idUser`, `nome`, `email`, `login`, `senha`) VALUES
(1, 'Seu Nome', '', 'aidecb', '8520');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices de tabela `cozinha`
--
ALTER TABLE `cozinha`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `entrega`
--
ALTER TABLE `entrega`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `garcon`
--
ALTER TABLE `garcon`
  ADD PRIMARY KEY (`idGarcon`);

--
-- Índices de tabela `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`id_mesa`);

--
-- Índices de tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_mesa`);

--
-- Índices de tabela `tbl_carrinho`
--
ALTER TABLE `tbl_carrinho`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tbl_obs`
--
ALTER TABLE `tbl_obs`
  ADD PRIMARY KEY (`id_produto`);

--
-- Índices de tabela `tbl_produtos`
--
ALTER TABLE `tbl_produtos`
  ADD PRIMARY KEY (`cod`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `cozinha`
--
ALTER TABLE `cozinha`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `entrega`
--
ALTER TABLE `entrega`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=486;

--
-- AUTO_INCREMENT de tabela `garcon`
--
ALTER TABLE `garcon`
  MODIFY `idGarcon` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `mesa`
--
ALTER TABLE `mesa`
  MODIFY `id_mesa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_mesa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de tabela `tbl_carrinho`
--
ALTER TABLE `tbl_carrinho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT de tabela `tbl_produtos`
--
ALTER TABLE `tbl_produtos`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUser` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
