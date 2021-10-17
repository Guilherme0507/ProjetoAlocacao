-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Out-2021 às 23:49
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema_ferramentas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastros_ferramentas`
--

CREATE TABLE `cadastros_ferramentas` (
  `id_ferramenta` int(11) NOT NULL,
  `ferramenta` varchar(60) NOT NULL,
  `disp` varchar(45) NOT NULL DEFAULT 'Disponível'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cadastros_ferramentas`
--

INSERT INTO `cadastros_ferramentas` (`id_ferramenta`, `ferramenta`, `disp`) VALUES
(2, 'martelo', 'Disponível'),
(3, 'furadeira', 'Disponível'),
(4, 'giselle', 'Disponível'),
(5, 'lll', 'Disponível'),
(6, 'makita', 'Indisponível'),
(7, 'martelo', 'Indisponível');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ferramentas`
--

CREATE TABLE `ferramentas` (
  `id_ferramenta` int(11) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `disp` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ferramentas`
--

INSERT INTO `ferramentas` (`id_ferramenta`, `categoria`, `disp`) VALUES
(1, 'martelo', 'Indisponível'),
(2, 'prego', 'Indisponível'),
(3, 'chave de fenda', 'Disponível');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `login_usuario` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `login_usuario`, `senha`) VALUES
(111, 'giselle1', '123'),
(112, 'gis', '145'),
(113, 'a', '1'),
(114, 'giselle2', '123'),
(115, 'giselle3', '545'),
(116, 'giselle4', '454'),
(117, 'giselle5', '1215'),
(118, 'giselle6', '123');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadastros_ferramentas`
--
ALTER TABLE `cadastros_ferramentas`
  ADD PRIMARY KEY (`id_ferramenta`);

--
-- Índices para tabela `ferramentas`
--
ALTER TABLE `ferramentas`
  ADD PRIMARY KEY (`id_ferramenta`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastros_ferramentas`
--
ALTER TABLE `cadastros_ferramentas`
  MODIFY `id_ferramenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `ferramentas`
--
ALTER TABLE `ferramentas`
  MODIFY `id_ferramenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
