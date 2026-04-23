-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql300.infinityfree.com
-- Tempo de geração: 23-Abr-2026 às 07:28
-- Versão do servidor: 11.4.10-MariaDB
-- versão do PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `if0_40156190_db_infraestrutura`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamentos`
--

CREATE TABLE `equipamentos` (
  `id_equipamento` int(11) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `modelo` varchar(255) DEFAULT NULL,
  `endereco_ip` varchar(15) DEFAULT NULL,
  `id_sala` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `equipamentos`
--

INSERT INTO `equipamentos` (`id_equipamento`, `tipo`, `marca`, `modelo`, `endereco_ip`, `id_sala`) VALUES
(1, 'Router', 'Cisco', 'WR0932N', '192.168.11.212', 1),
(2, 'Outro', 'HP', 'MP243WN', '192.168.11.105', 2),
(3, 'Outro', 'HP Corp.', 'HPN424NM', '192.168.1.230', 1),
(4, 'Outro', 'Asus', 'ASUS TUF Gaming A520M-II', '192.168.11.20', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `intervencoes`
--

CREATE TABLE `intervencoes` (
  `id_intervencao` int(11) NOT NULL,
  `data_intervencao` datetime NOT NULL,
  `descricao` text DEFAULT NULL,
  `id_equipamento` int(11) DEFAULT NULL,
  `id_tecnico` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `intervencoes`
--

INSERT INTO `intervencoes` (`id_intervencao`, `data_intervencao`, `descricao`, `id_equipamento`, `id_tecnico`) VALUES
(1, '2026-02-23 00:00:00', 'Não liga...', 1, 1),
(2, '2026-02-27 00:00:00', 'O Computador não liga', 2, 1),
(3, '2026-04-21 00:00:00', 'não liga', 2, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `salas`
--

CREATE TABLE `salas` (
  `id_sala` int(11) NOT NULL,
  `nome_sala` varchar(255) NOT NULL,
  `localizacao` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `salas`
--

INSERT INTO `salas` (`id_sala`, `nome_sala`, `localizacao`) VALUES
(1, '3D', 'Edifício INA'),
(2, 'B5', 'Piso 2 Edifício OFICINA'),
(3, 'B1', 'Piso 2 Edifício OFICINA'),
(4, 'C1', 'Piso 1 OFICINA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tecnicos`
--

CREATE TABLE `tecnicos` (
  `id_tecnico` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contacto` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `tecnicos`
--

INSERT INTO `tecnicos` (`id_tecnico`, `nome`, `email`, `contacto`) VALUES
(1, 'Bruno Correia', 'brunocorreia@oficina.pt', '999222333'),
(2, 'Daniel Silva', 'danielsilva@oficina.pt', '933578439');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  ADD PRIMARY KEY (`id_equipamento`),
  ADD UNIQUE KEY `endereco_ip` (`endereco_ip`),
  ADD KEY `id_sala` (`id_sala`);

--
-- Índices para tabela `intervencoes`
--
ALTER TABLE `intervencoes`
  ADD PRIMARY KEY (`id_intervencao`),
  ADD KEY `id_equipamento` (`id_equipamento`),
  ADD KEY `id_tecnico` (`id_tecnico`);

--
-- Índices para tabela `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`id_sala`);

--
-- Índices para tabela `tecnicos`
--
ALTER TABLE `tecnicos`
  ADD PRIMARY KEY (`id_tecnico`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  MODIFY `id_equipamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `intervencoes`
--
ALTER TABLE `intervencoes`
  MODIFY `id_intervencao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `salas`
--
ALTER TABLE `salas`
  MODIFY `id_sala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tecnicos`
--
ALTER TABLE `tecnicos`
  MODIFY `id_tecnico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
