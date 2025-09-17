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
-- Estrutura para tabela `itenspedido`
--

CREATE TABLE `itenspedido` (
  `ID_ItemPedido` int(11) NOT NULL,
  `ID_Pedido` int(11) DEFAULT NULL,
  `ID_Produto` int(11) DEFAULT NULL,
  `Quantidade` int(11) DEFAULT NULL,
  `PrecoUnitario` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `itenspedido`
--

INSERT INTO `itenspedido` (`ID_ItemPedido`, `ID_Pedido`, `ID_Produto`, `Quantidade`, `PrecoUnitario`) VALUES
(1, 1, 1, 2, 10),
(2, 1, 2, 1, 15),
(3, 1, 3, 3, 20),
(4, 2, 4, 1, 25),
(5, 2, 5, 2, 30),
(6, 2, 6, 1, 35),
(7, 3, 7, 4, 40),
(8, 3, 8, 2, 45),
(9, 3, 9, 1, 50),
(10, 4, 10, 5, 55),
(11, 4, 1, 3, 10),
(12, 4, 2, 2, 15),
(13, 10, 9, 2, 50),
(14, 10, 8, 1, 45),
(15, 10, 7, 2, 40);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `itenspedido`
--
ALTER TABLE `itenspedido`
  ADD PRIMARY KEY (`ID_ItemPedido`),
  ADD KEY `ID_Pedido` (`ID_Pedido`),
  ADD KEY `ID_Produto` (`ID_Produto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `itenspedido`
--
ALTER TABLE `itenspedido`
  MODIFY `ID_ItemPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `itenspedido`
--
ALTER TABLE `itenspedido`
  ADD CONSTRAINT `itenspedido_ibfk_1` FOREIGN KEY (`ID_Pedido`) REFERENCES `pedidos` (`ID_Pedido`),
  ADD CONSTRAINT `itenspedido_ibfk_2` FOREIGN KEY (`ID_Produto`) REFERENCES `produtos` (`ID_Produto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
