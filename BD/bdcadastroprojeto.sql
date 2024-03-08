-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08/03/2024 às 18:32
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdcadastroprojeto`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `bairro`
--

CREATE TABLE `bairro` (
  `idBairro` int(11) NOT NULL,
  `nomeBairro` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `bairro`
--

INSERT INTO `bairro` (`idBairro`, `nomeBairro`) VALUES
(1, 'Vila A'),
(2, 'Vila B'),
(3, 'Vila C');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidade`
--

CREATE TABLE `cidade` (
  `idCidade` int(11) NOT NULL,
  `nomeCidade` varchar(200) DEFAULT NULL,
  `UnidadeFederacao_idUnidadeFederacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cidade`
--

INSERT INTO `cidade` (`idCidade`, `nomeCidade`, `UnidadeFederacao_idUnidadeFederacao`) VALUES
(1, 'Foz do Iguacu', 1),
(2, 'Medianeira', 1),
(3, 'Sao Paulo', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `nomeCliente` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nomeCliente`) VALUES
(1, 'Maria Fernanda Legal'),
(2, 'Maria Santos'),
(3, 'Angelina Calgaroto');

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereco`
--

CREATE TABLE `endereco` (
  `idEndereco` int(11) NOT NULL,
  `CEP` varchar(45) DEFAULT NULL,
  `Cidade_idCidade` int(11) NOT NULL,
  `Bairro_idBairro` int(11) NOT NULL,
  `Logradouro_idLogradouro` int(11) NOT NULL,
  `nroEnd` int(11) DEFAULT NULL,
  `complemento` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `endereco`
--

INSERT INTO `endereco` (`idEndereco`, `CEP`, `Cidade_idCidade`, `Bairro_idBairro`, `Logradouro_idLogradouro`, `nroEnd`, `complemento`) VALUES
(1, '85857470', 1, 1, 1, 123, ''),
(2, '85857477', 1, 1, 2, 321, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `especialidade`
--

CREATE TABLE `especialidade` (
  `idEspecialidade` int(11) NOT NULL,
  `nomeEspecialidade` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `especialidade`
--

INSERT INTO `especialidade` (`idEspecialidade`, `nomeEspecialidade`) VALUES
(1, 'Analista'),
(2, 'Desenvolvedor'),
(3, 'DBA'),
(4, 'Designer');

-- --------------------------------------------------------

--
-- Estrutura para tabela `logradouro`
--

CREATE TABLE `logradouro` (
  `idLogradouro` int(11) NOT NULL,
  `nomeLogradouro` varchar(200) DEFAULT NULL,
  `TipoLogradouro_idTipoLogradouro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `logradouro`
--

INSERT INTO `logradouro` (`idLogradouro`, `nomeLogradouro`, `TipoLogradouro_idTipoLogradouro`) VALUES
(1, 'Duque de Caixias', 2),
(2, 'Comercios', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `profissional`
--

CREATE TABLE `profissional` (
  `idProfissional` int(11) NOT NULL,
  `nomeProfissional` varchar(45) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `genero` varchar(45) DEFAULT NULL,
  `Especialidade_idEspecialidade` int(11) NOT NULL,
  `Endereco_idEndereco` int(11) NOT NULL,
  `Raca_idRaca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `profissional`
--

INSERT INTO `profissional` (`idProfissional`, `nomeProfissional`, `dataNascimento`, `genero`, `Especialidade_idEspecialidade`, `Endereco_idEndereco`, `Raca_idRaca`) VALUES
(1, 'Ana Silva', '1988-05-01', 'Feminino', 1, 1, 1),
(2, 'Ana Maria Almeida', '1988-05-01', 'Neutro', 2, 1, 2),
(3, 'Marcos Marca', '1999-06-10', 'Masculino', 3, 2, 3),
(4, 'Joana Pires', '1987-12-12', 'Feminino', 4, 1, 4),
(5, 'Matheus Matheus', '1978-05-02', 'Masculino', 1, 1, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `projeto`
--

CREATE TABLE `projeto` (
  `idProjeto` int(11) NOT NULL,
  `nomeProjeto` varchar(45) DEFAULT NULL,
  `objetivo` varchar(200) DEFAULT NULL,
  `dataInicio` date DEFAULT NULL,
  `dataFim` date DEFAULT NULL,
  `valorFinal` double DEFAULT NULL,
  `Time_idTime` int(11) NOT NULL,
  `Cliente_idCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `projeto`
--

INSERT INTO `projeto` (`idProjeto`, `nomeProjeto`, `objetivo`, `dataInicio`, `dataFim`, `valorFinal`, `Time_idTime`, `Cliente_idCliente`) VALUES
(1, 'Projeto 1', 'Desenvolver um aplicativo educacinal', '2023-05-05', '2023-12-12', 10000, 1, 1),
(2, 'Projeto 2', 'Sistema simulador de donuts', '2022-05-05', '2023-01-18', 100000, 2, 2),
(3, 'SCRUM EX 1', 'Trabalhar no projeto', '2022-02-20', '2024-03-08', 900, 3, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `raca`
--

CREATE TABLE `raca` (
  `idRaca` int(11) NOT NULL,
  `nomeRaca` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `raca`
--

INSERT INTO `raca` (`idRaca`, `nomeRaca`) VALUES
(1, 'Branco'),
(2, 'Pardo'),
(3, 'Preto'),
(4, 'Indígena '),
(5, 'Amarelo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `time`
--

CREATE TABLE `time` (
  `idTime` int(11) NOT NULL,
  `nomeTime` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `time`
--

INSERT INTO `time` (`idTime`, `nomeTime`) VALUES
(1, 'Time 1'),
(2, 'Time 2'),
(3, 'Time Projeto SCRUM');

-- --------------------------------------------------------

--
-- Estrutura para tabela `time_has_profissional`
--

CREATE TABLE `time_has_profissional` (
  `Time_idTime` int(11) NOT NULL,
  `Profissional_idProfissional` int(11) NOT NULL,
  `relacaoProficionais` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `time_has_profissional`
--

INSERT INTO `time_has_profissional` (`Time_idTime`, `Profissional_idProfissional`, `relacaoProficionais`) VALUES
(3, 1, 'Analista chefe'),
(3, 2, 'Desenvolvedor chefe'),
(3, 3, 'Analista de BD'),
(3, 4, 'Designer'),
(3, 5, 'Analista de suporte');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipologradouro`
--

CREATE TABLE `tipologradouro` (
  `idTipoLogradouro` int(11) NOT NULL,
  `nomeLogradouro` varchar(200) DEFAULT NULL,
  `siglaLogradouro` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tipologradouro`
--

INSERT INTO `tipologradouro` (`idTipoLogradouro`, `nomeLogradouro`, `siglaLogradouro`) VALUES
(1, 'Area', 'A'),
(2, 'Duque', 'DU');

-- --------------------------------------------------------

--
-- Estrutura para tabela `unidadefederacao`
--

CREATE TABLE `unidadefederacao` (
  `idUnidadeFederacao` int(11) NOT NULL,
  `nomeUF` varchar(45) DEFAULT NULL,
  `siglaUF` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `unidadefederacao`
--

INSERT INTO `unidadefederacao` (`idUnidadeFederacao`, `nomeUF`, `siglaUF`) VALUES
(1, 'Parana', 'PR'),
(2, 'Sao Paulo', 'SP');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `bairro`
--
ALTER TABLE `bairro`
  ADD PRIMARY KEY (`idBairro`);

--
-- Índices de tabela `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`idCidade`),
  ADD KEY `fk_Cidade_UnidadeFederacao` (`UnidadeFederacao_idUnidadeFederacao`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices de tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`idEndereco`),
  ADD KEY `fk_Endereco_Cidade` (`Cidade_idCidade`),
  ADD KEY `fk_Endereco_Bairro` (`Bairro_idBairro`),
  ADD KEY `fk_Endereco_Logradouro` (`Logradouro_idLogradouro`);

--
-- Índices de tabela `especialidade`
--
ALTER TABLE `especialidade`
  ADD PRIMARY KEY (`idEspecialidade`);

--
-- Índices de tabela `logradouro`
--
ALTER TABLE `logradouro`
  ADD PRIMARY KEY (`idLogradouro`),
  ADD KEY `fk_Logradouro_TipoLogradouro` (`TipoLogradouro_idTipoLogradouro`);

--
-- Índices de tabela `profissional`
--
ALTER TABLE `profissional`
  ADD PRIMARY KEY (`idProfissional`),
  ADD KEY `fk_Profissional_Especialidade` (`Especialidade_idEspecialidade`),
  ADD KEY `fk_Profissional_Endereco` (`Endereco_idEndereco`),
  ADD KEY `fk_Profissional_Raca` (`Raca_idRaca`);

--
-- Índices de tabela `projeto`
--
ALTER TABLE `projeto`
  ADD PRIMARY KEY (`idProjeto`),
  ADD KEY `fk_Projeto_Time` (`Time_idTime`),
  ADD KEY `fk_Projeto_Cliente` (`Cliente_idCliente`);

--
-- Índices de tabela `raca`
--
ALTER TABLE `raca`
  ADD PRIMARY KEY (`idRaca`);

--
-- Índices de tabela `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`idTime`);

--
-- Índices de tabela `time_has_profissional`
--
ALTER TABLE `time_has_profissional`
  ADD PRIMARY KEY (`Time_idTime`,`Profissional_idProfissional`),
  ADD KEY `fk_Time_has_Profissional_Profissional` (`Profissional_idProfissional`);

--
-- Índices de tabela `tipologradouro`
--
ALTER TABLE `tipologradouro`
  ADD PRIMARY KEY (`idTipoLogradouro`);

--
-- Índices de tabela `unidadefederacao`
--
ALTER TABLE `unidadefederacao`
  ADD PRIMARY KEY (`idUnidadeFederacao`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `cidade`
--
ALTER TABLE `cidade`
  ADD CONSTRAINT `fk_Cidade_UnidadeFederacao` FOREIGN KEY (`UnidadeFederacao_idUnidadeFederacao`) REFERENCES `unidadefederacao` (`idUnidadeFederacao`);

--
-- Restrições para tabelas `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `fk_Endereco_Bairro` FOREIGN KEY (`Bairro_idBairro`) REFERENCES `bairro` (`idBairro`),
  ADD CONSTRAINT `fk_Endereco_Cidade` FOREIGN KEY (`Cidade_idCidade`) REFERENCES `cidade` (`idCidade`),
  ADD CONSTRAINT `fk_Endereco_Logradouro` FOREIGN KEY (`Logradouro_idLogradouro`) REFERENCES `logradouro` (`idLogradouro`);

--
-- Restrições para tabelas `logradouro`
--
ALTER TABLE `logradouro`
  ADD CONSTRAINT `fk_Logradouro_TipoLogradouro` FOREIGN KEY (`TipoLogradouro_idTipoLogradouro`) REFERENCES `tipologradouro` (`idTipoLogradouro`);

--
-- Restrições para tabelas `profissional`
--
ALTER TABLE `profissional`
  ADD CONSTRAINT `fk_Profissional_Endereco` FOREIGN KEY (`Endereco_idEndereco`) REFERENCES `endereco` (`idEndereco`),
  ADD CONSTRAINT `fk_Profissional_Especialidade` FOREIGN KEY (`Especialidade_idEspecialidade`) REFERENCES `especialidade` (`idEspecialidade`),
  ADD CONSTRAINT `fk_Profissional_Raca` FOREIGN KEY (`Raca_idRaca`) REFERENCES `raca` (`idRaca`);

--
-- Restrições para tabelas `projeto`
--
ALTER TABLE `projeto`
  ADD CONSTRAINT `fk_Projeto_Cliente` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`),
  ADD CONSTRAINT `fk_Projeto_Time` FOREIGN KEY (`Time_idTime`) REFERENCES `time` (`idTime`);

--
-- Restrições para tabelas `time_has_profissional`
--
ALTER TABLE `time_has_profissional`
  ADD CONSTRAINT `fk_Time_has_Profissional_Profissional` FOREIGN KEY (`Profissional_idProfissional`) REFERENCES `profissional` (`idProfissional`),
  ADD CONSTRAINT `fk_Time_has_Profissional_Time` FOREIGN KEY (`Time_idTime`) REFERENCES `time` (`idTime`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
