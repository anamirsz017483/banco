-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/09/2025 às 16:00
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
-- Estrutura para tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `ID_Pedido` int(11) NOT NULL,
  `ID_Cliente` int(11) DEFAULT NULL,
  `DataPedido` datetime DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `ValorTotal` double DEFAULT NULL,
  `EnderecoEntrega` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pedidos`
--

INSERT INTO `pedidos` (`ID_Pedido`, `ID_Cliente`, `DataPedido`, `Status`, `ValorTotal`, `EnderecoEntrega`) VALUES
(1, 1, '2025-09-17 10:17:57', 'no caminho', 100, 'Endereco de Entrega 1'),
(2, 2, '2025-09-17 20:40:23', 'no caminho', 150, 'Endereco de Entrega 2'),
(3, 3, '2025-09-17 08:33:37', 'entregue', 200, 'Endereco de Entrega 3'),
(4, 4, '2025-09-17 13:40:50', 'entregue', 250, 'Endereco de Entrega 4'),
(5, 5, '2025-09-17 12:30:54', 'recusado', 300, 'Endereco de Entrega 5'),
(6, 6, '2025-09-17 12:00:45', 'no caminho', 350, 'Endereco de Entrega 6'),
(7, 7, '2025-09-17 06:05:09', 'entregue', 400, 'Endereco de Entrega 7'),
(8, 8, '2025-09-17 15:30:00', 'entregue', 450, 'Endereco de Entrega 8'),
(9, 9, '2025-09-17 09:30:12', 'no caminho', 500, 'Endereco de Entrega 9'),
(10, 10, '2025-09-17 10:40:57', 'entregue', 550, 'Endereco de Entrega 10');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`ID_Pedido`),
  ADD KEY `ID_Cliente` (`ID_Cliente`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `ID_Pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `clientes` (`ID_Cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
