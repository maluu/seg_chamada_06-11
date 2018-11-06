-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Tempo de geração: 06/11/2018 às 09:20
-- Versão do servidor: 5.7.21-0ubuntu0.16.04.1
-- Versão do PHP: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `segundachamada`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `curso`
--

CREATE TABLE `curso` (
  `matricula` int(32) DEFAULT NULL,
  `nome` varchar(80) DEFAULT NULL,
  `cod_curso` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `nome` varchar(80) DEFAULT NULL,
  `cod_disciplina` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Pedido`
--

CREATE TABLE `Pedido` (
  `motivo` varchar(80) DEFAULT NULL,
  `dt_inicial` date DEFAULT NULL,
  `cod_pedido` int(11) NOT NULL,
  `curso` varchar(80) DEFAULT NULL,
  `disciplina` varchar(80) DEFAULT NULL,
  `turma` varchar(80) DEFAULT NULL,
  `professor` varchar(80) DEFAULT NULL,
  `anexo` varchar(1000) DEFAULT NULL,
  `fk_matricula` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Fazendo dump de dados para tabela `Pedido`
--

INSERT INTO `Pedido` (`motivo`, `dt_inicial`, `cod_pedido`, `curso`, `disciplina`, `turma`, `professor`, `anexo`, `fk_matricula`) VALUES
('das', '2018-10-03', 1, 'asda', 'asd', 'asdas', 'asd', '30102018100227Captura de tela de 2018-09-03 10-26-52.png', 0),
('ah tava votando no bolsomistoquente', '2018-10-02', 2, 'informatica', 'projeto', '3info1', 'kelly', '30102018100401Captura de tela de 2018-09-03 09-53-36.png', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `email` varchar(20) DEFAULT NULL,
  `id_usuario` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `turma`
--

CREATE TABLE `turma` (
  `cod_turma` int(30) NOT NULL,
  `cod_curso` int(30) DEFAULT NULL,
  `nome` varchar(80) DEFAULT NULL,
  `ano` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `nome` varchar(80) DEFAULT NULL,
  `senha` varchar(80) DEFAULT NULL,
  `foto` varchar(1000) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `user_id` int(32) NOT NULL,
  `matricula` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Fazendo dump de dados para tabela `usuario`
--

INSERT INTO `usuario` (`nome`, `senha`, `foto`, `email`, `user_id`, `matricula`) VALUES
('aaaa', 'dfsdfdf', NULL, '0', 0, 1),
('Bruno ', 'topzera123', NULL, '0', 0, 2),
('Bruno ', '1234', NULL, '0', 0, 3),
('dfgdfgdfg', 'sfg', NULL, '0', 0, 4),
('gustavo', 'gustavo', NULL, '0', 0, 5),
('Jessica Yohana Otto', 'jessica123', NULL, '0', 0, 6),
('joao', 'joao123', NULL, '0', 0, 7),
('maria luiza', '123456', NULL, '0', 0, 8),
('paulo cesar', '123', NULL, '0', 0, 9);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`cod_curso`),
  ADD KEY `matricula` (`matricula`);

--
-- Índices de tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`cod_disciplina`);

--
-- Índices de tabela `Pedido`
--
ALTER TABLE `Pedido`
  ADD PRIMARY KEY (`cod_pedido`),
  ADD KEY `fk_matricula` (`fk_matricula`);

--
-- Índices de tabela `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Índices de tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`cod_turma`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`matricula`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `Pedido`
--
ALTER TABLE `Pedido`
  MODIFY `cod_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `matricula` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
