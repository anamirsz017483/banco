-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/09/2025 às 15:54
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
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `ID_Cliente` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Senha` varchar(100) DEFAULT NULL,
  `CPF` varchar(20) DEFAULT NULL,
  `Endereco` varchar(255) DEFAULT NULL,
  `Cidade` varchar(50) DEFAULT NULL,
  `Estado` varchar(50) DEFAULT NULL,
  `CEP` varchar(10) DEFAULT NULL,
  `DataCadastro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`ID_Cliente`, `Nome`, `Email`, `Senha`, `CPF`, `Endereco`, `Cidade`, `Estado`, `CEP`, `DataCadastro`) VALUES
(1, 'Ana rosa ', 'anamiranda@gmail.com', 'senha1', '111.222.333-44', 'Rua A, 123', 'São Paulo', 'SP', '01111-111', '2025-09-17 10:08:55'),
(2, 'Eduardo henrique ', 'eduhenrique@gmail.com', 'senha2', '111.222.333-45', 'Rua B, 456', 'Rio de Janeiro', 'RJ', '02222-112', '2025-09-17 10:08:55'),
(3, 'Carlos Almeida', 'carlos.almeida@gmail.com', 'senha3', '111.222.333-46', 'Rua C, 789', 'Belo Horizonte', 'MG', '03333-113', '2025-09-17 10:08:55'),
(4, 'Diana cruz', 'dianacruz@gmail.com', 'senha4', '111.222.333-47', 'Rua D, 101', 'Curitiba', 'PR', '04444-114', '2025-09-17 10:08:55'),
(5, 'Jairo Antônio', 'Jairoantonio@gmail.com', 'senha5', '111.222.333-48', 'Rua E, 202', 'Fortaleza', 'CE', '05555-115', '2025-09-17 10:08:55'),
(6, 'Rita de cassia', 'ritacassia@gmail.com', 'senha6', '111.222.333-49', 'Rua F, 303', 'Salvador', 'BA', '06666-116', '2025-09-17 10:08:55'),
(7, 'Gustavo mineiro', 'gustavomineiro@gmail.com', 'senha7', '111.222.333-50', 'Rua G, 404', 'Recife', 'PE', '07777-117', '2025-09-17 10:08:55'),
(8, 'Helena Martins', 'helena.martins@gmail.com', 'senha8', '111.222.333-51', 'Rua H, 505', 'Porto Alegre', 'RS', '08888-118', '2025-09-17 10:08:55'),
(9, 'pietro cassio', 'pietrocassio@gmail.com', 'senha9', '111.222.333-52', 'Rua I, 606', 'Manaus', 'AM', '09999-119', '2025-09-17 10:08:55'),
(10, 'davi ', 'davi@gmail.com', 'senha10', '111.222.333-53', 'Rua J, 707', 'Goiânia', 'GO', '10000-120', '2025-09-17 10:08:55');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID_Cliente`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ID_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
