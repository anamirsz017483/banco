-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/09/2025 às 16:01
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `clientes`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `ID_Produto` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Descricao` text DEFAULT NULL,
  `Preco` double DEFAULT NULL,
  `SKU` varchar(50) DEFAULT NULL,
  `Estoque` int(11) DEFAULT NULL,
  `DataCriacao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`ID_Produto`, `Nome`, `Descricao`, `Preco`, `SKU`, `Estoque`, `DataCriacao`) VALUES
(1, 'Camiseta Básica', 'Camiseta de algodão de alta qualidade', 10, 'SKU1', 100, '2025-09-17 10:10:55'),
(2, 'Tênis Esportivo', 'Tênis confortável e durável para esportes', 15, 'SKU2', 150, '2025-09-17 10:10:55'),
(3, 'Relógio Digital', 'Relógio digital com cronômetro e alarme', 20, 'SKU3', 200, '2025-09-17 10:10:55'),
(4, 'Mochila de Couro', 'Mochila de couro legítimo com vários compartimentos', 25, 'SKU4', 50, '2025-09-17 10:10:55'),
(5, 'Caderno Universitário', 'Caderno espiral com 200 folhas', 30, 'SKU5', 10, '2025-09-17 10:10:55'),
(6, 'Smartphone X200', 'Smartphone com tela Full HD e 64GB de armazenamento', 35, 'SKU6', 300, '2025-09-17 10:10:55'),
(7, 'Fones de Ouvido Bluetooth', 'Fones de ouvido sem fio com cancelamento de ruído', 40, 'SKU7', 120, '2025-09-17 10:10:55'),
(8, 'Cadeira Gamer', 'Cadeira ergonômica para gamers', 45, 'SKU8', 80, '2025-09-17 10:10:55'),
(9, 'Notebook Ultrafino', 'Notebook com processador i7 e 16GB de RAM', 50, 'SKU9', 60, '2025-09-17 10:10:55'),
(10, 'Câmera Fotográfica Profissional', 'Câmera DSLR com lente de 50mm', 55, 'SKU10', 30, '2025-09-17 10:10:55');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`ID_Produto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `ID_Produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
