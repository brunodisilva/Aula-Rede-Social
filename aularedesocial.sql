-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 29-Mar-2014 às 01:59
-- Versão do servidor: 5.6.12-log
-- versão do PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `aularedesocial`
--
CREATE DATABASE IF NOT EXISTS `aularedesocial` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `aularedesocial`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `albuns`
--

CREATE TABLE IF NOT EXISTS `albuns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` int(11) NOT NULL,
  `titulo` varchar(128) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `permissao` int(1) DEFAULT NULL,
  `capa` varchar(255) DEFAULT 'default.jpg',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Extraindo dados da tabela `albuns`
--

INSERT INTO `albuns` (`id`, `usuario`, `titulo`, `descricao`, `status`, `data`, `permissao`, `capa`) VALUES
(1, 1, 'meu aniversario', '18 anos', 0, '2012-01-02 12:20:16', 2, '52b567bf890056421edaab0b4ef16b81b761deca.jpg'),
(2, 1, 'testando pemissao', 'hoje', 0, '2012-01-02 12:04:56', 1, 'default.jpg'),
(9, 1, 'testando album 02', 'testando novamene', 0, '2012-01-02 12:04:56', 2, 'default.jpg'),
(10, 1, '', '', 0, '2012-01-02 12:04:57', 2, 'default.jpg'),
(11, 2, 'roberto', '', 0, '2012-01-02 12:04:58', 2, 'default.jpg'),
(12, 2, 'testando', '', 0, '2012-01-02 12:02:50', 2, 'e7d185479c.jpg'),
(13, 2, 'testando este album', '', 0, '2012-01-02 12:04:59', 1, 'default.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `amisade`
--

CREATE TABLE IF NOT EXISTS `amisade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `de` int(11) NOT NULL,
  `para` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Extraindo dados da tabela `amisade`
--

INSERT INTO `amisade` (`id`, `de`, `para`, `status`) VALUES
(10, 2, 3, 1),
(21, 1, 2, 1),
(22, 1, 3, 1),
(24, 1, 4, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `depimentos`
--

CREATE TABLE IF NOT EXISTS `depimentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `de` int(11) NOT NULL,
  `para` int(11) NOT NULL,
  `depoimento` text NOT NULL,
  `data` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotos`
--

CREATE TABLE IF NOT EXISTS `fotos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album` int(11) NOT NULL,
  `foto` varchar(128) NOT NULL,
  `views` int(11) NOT NULL DEFAULT '1',
  `data` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `legenda` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Extraindo dados da tabela `fotos`
--

INSERT INTO `fotos` (`id`, `album`, `foto`, `views`, `data`, `legenda`) VALUES
(37, 2, '00a9f34f1c.jpg', 1, '0000-00-00 00:00:00', NULL),
(38, 2, '320c98f64c.jpg', 1, '0000-00-00 00:00:00', NULL),
(39, 2, '92989dbda4.jpg', 1, '0000-00-00 00:00:00', NULL),
(40, 2, '04eaf0a14f.jpg', 1, '0000-00-00 00:00:00', NULL),
(41, 2, 'e7d185479c.jpg', 1, '0000-00-00 00:00:00', NULL),
(43, 2, '94b8e8cf4f.jpg', 1, '0000-00-00 00:00:00', NULL),
(44, 9, '21ab308203.jpg', 1, '0000-00-00 00:00:00', NULL),
(45, 9, 'e7d185479c.jpg', 1, '0000-00-00 00:00:00', NULL),
(46, 2, '0ab051f566.jpg', 1, '0000-00-00 00:00:00', NULL),
(47, 1, '21ab308203.jpg', 1, '0000-00-00 00:00:00', NULL),
(48, 1, '21ab308203.jpg', 1, '0000-00-00 00:00:00', NULL),
(49, 1, '050f428796.jpg', 1, '0000-00-00 00:00:00', NULL),
(51, 13, 'e7d185479c.jpg', 1, '0000-00-00 00:00:00', NULL),
(52, 11, '00a9f34f1c.jpg', 1, '0000-00-00 00:00:00', NULL),
(53, 11, '320c98f64c.jpg', 1, '0000-00-00 00:00:00', NULL),
(54, 11, '92989dbda4.jpg', 1, '0000-00-00 00:00:00', NULL),
(55, 11, '04eaf0a14f.jpg', 1, '0000-00-00 00:00:00', NULL),
(65, 12, 'e7d185479c.jpg', 1, '2012-01-02 12:02:50', NULL),
(66, 1, '2ddbfbe3a1.jpg', 1, '2012-01-02 12:08:29', NULL),
(67, 1, '52b567bf890056421edaab0b4ef16b81b761deca.jpg', 1, '2012-01-02 12:20:17', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `notificacoes`
--

CREATE TABLE IF NOT EXISTS `notificacoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `result` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `recados`
--

CREATE TABLE IF NOT EXISTS `recados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `de` int(11) NOT NULL,
  `para` varchar(10) NOT NULL,
  `recado` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Extraindo dados da tabela `recados`
--

INSERT INTO `recados` (`id`, `de`, `para`, `recado`, `status`, `data`) VALUES
(43, 1, 'amigos', 'recado para amigos', 1, '2011-12-08 02:01:32'),
(44, 1, '3', 'recado para ana...', 1, '2011-12-08 02:02:30'),
(45, 1, 'publico', 'recado para todo mundo', 1, '2011-12-08 02:03:31'),
(46, 1, 'amigos', 'teste', 1, '2014-03-29 01:58:51');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(64) NOT NULL,
  `senha` varchar(128) NOT NULL,
  `nome` varchar(32) NOT NULL,
  `sobrenome` varchar(64) NOT NULL,
  `nascimento` date NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `imagem` varchar(128) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `cadastro` date NOT NULL,
  `nivel` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `senha`, `nome`, `sobrenome`, `nascimento`, `sexo`, `imagem`, `status`, `cadastro`, `nivel`) VALUES
(1, 'gilglecio_765@hotmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'gilglecio', 'santos', '2002-10-10', 'masculino', '126.jpg', 0, '2011-10-26', 0),
(2, 'roberto@hotmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'roberto', 'silva santos', '2011-01-01', 'masculino', '254.jpg', 0, '2011-10-26', 0),
(3, 'anapaula@hotmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'ana paula', 'francisca', '2011-01-01', 'feminino', '331.jpg', 0, '2011-10-26', 0),
(10, 'juli@hotmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'juliane', 'santos', '2011-01-01', 'masculino', NULL, 0, '2011-12-07', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` int(11) NOT NULL,
  `embed` varchar(128) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` text,
  `status` int(1) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
