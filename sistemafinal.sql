-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Jun-2023 às 10:33
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistemafinal`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ajuda`
--

CREATE TABLE `ajuda` (
  `ID_AJUDA` int(11) NOT NULL,
  `NOME` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `MENSAGEM` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `ajuda`
--

INSERT INTO `ajuda` (`ID_AJUDA`, `NOME`, `EMAIL`, `MENSAGEM`) VALUES
(1, 'alexandre', 'alexandrenecher@gmail.com', 'teste de cadastro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `ID_ENDERECO` int(11) NOT NULL,
  `RUA` varchar(60) NOT NULL,
  `BAIRRO` varchar(60) NOT NULL,
  `COMPLEMENTO` varchar(60) NOT NULL,
  `CEP` varchar(60) NOT NULL,
  `CIDADE` varchar(60) NOT NULL,
  `ESTADO` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`ID_ENDERECO`, `RUA`, `BAIRRO`, `COMPLEMENTO`, `CEP`, `CIDADE`, `ESTADO`) VALUES
(1, 'durval', 'divino', 'esquina', '85555-000', 'Palmas', 'PR'),
(2, '', '', '', '', '', ''),
(3, 'Dr. Bevilaqua ', 'Centro', 'Casa', '85555000', 'Palmas', 'Pa'),
(4, 'Dr. Bevilaqua ', 'Centro', 'Casa', '85555000', 'Palmas', 'Pa'),
(5, 'Dr. Bevilaqua ', 'Centro', 'Casa', '85555000', 'Palmas', 'Pa'),
(6, 'Dr. Bevilaqua ', 'Centro', 'Casa', '85555000', 'Palmas', 'Pa'),
(7, 'Dr. Bevilaqua ', 'Centro', 'Casa', '85555000', 'Palmas', 'Pa'),
(8, 'Dr. Bevilaqua ', 'Centro', 'Casa', '85555000', 'Palmas', 'Pa'),
(9, 'Dr. Bevilaqua ', 'Centro', 'Casa', '85555000', 'Palmas', 'Pa'),
(10, 'trevo', 'divino', 'esquina', '85555-000', 'Palmas', 'PR');

-- --------------------------------------------------------

--
-- Estrutura da tabela `evento`
--

CREATE TABLE `evento` (
  `ID_EVENTO` int(11) NOT NULL,
  `NOME_EVENTO` varchar(150) NOT NULL,
  `DESCRICAO_EVENTO` varchar(700) NOT NULL,
  `DIA` date NOT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  `ID_INSTITUICAO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `evento`
--

INSERT INTO `evento` (`ID_EVENTO`, `NOME_EVENTO`, `DESCRICAO_EVENTO`, `DIA`, `ID_USUARIO`, `ID_INSTITUICAO`) VALUES
(3, 'PROGRAMAÇÃO', 'Java', '2023-06-14', 1, 1),
(4, 'Oracle', 'Banco de dados', '2023-07-07', 1, 1),
(5, 'redes', 'TCP/IP', '2023-08-09', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `inscricoes`
--

CREATE TABLE `inscricoes` (
  `id` int(11) NOT NULL,
  `id_evento` int(11) NOT NULL,
  `nome_evento` varchar(100) NOT NULL,
  `nome_participante` varchar(100) NOT NULL,
  `email_participante` varchar(100) NOT NULL,
  `data_inscricao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `inscricoes`
--

INSERT INTO `inscricoes` (`id`, `id_evento`, `nome_evento`, `nome_participante`, `email_participante`, `data_inscricao`) VALUES
(1, 3, '', 'Alexandre Necher Donner', 'alexandre@alexandre.com', '2023-06-25 19:20:59'),
(4, 3, '', 'Caroline', 'carolsutil022@gmail.com', '2023-06-25 21:47:45'),
(5, 4, '', 'mateus', 'MATHEUS@matheus.com', '2023-06-25 23:04:58');

-- --------------------------------------------------------

--
-- Estrutura da tabela `instituicao`
--

CREATE TABLE `instituicao` (
  `ID_INSTITUICAO` int(11) NOT NULL,
  `NOME_INSTITUICAO` varchar(90) NOT NULL,
  `EMAIL` varchar(90) NOT NULL,
  `CNPJ` varchar(14) NOT NULL,
  `INSCRICAO_ESTADUAL` varchar(9) NOT NULL,
  `TELEFONE` varchar(14) NOT NULL,
  `DIRETOR` varchar(90) NOT NULL,
  `ID_ENDERECO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `instituicao`
--

INSERT INTO `instituicao` (`ID_INSTITUICAO`, `NOME_INSTITUICAO`, `EMAIL`, `CNPJ`, `INSCRICAO_ESTADUAL`, `TELEFONE`, `DIRETOR`, `ID_ENDERECO`) VALUES
(1, 'ifpr', 'ifpr@gmail', '', '455265', '', 'Roberto', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagens`
--

CREATE TABLE `mensagens` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mensagem` text DEFAULT NULL,
  `lida` tinyint(1) DEFAULT 0,
  `data_envio` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `mensagens`
--

INSERT INTO `mensagens` (`id`, `nome`, `email`, `mensagem`, `lida`, `data_envio`) VALUES
(1, 'alexandre', 'alexandre@alexandre.com', 'erro na tela de cadastro', 1, '2023-06-11 15:24:54'),
(6, 'Alexandre Necher Donner', 'alexandrenecher@gmail.com', 'erro no cadastro', 1, '2023-06-15 20:02:40'),
(7, 'mateus', 'alexandre@alexandre', 'erro calendario', 1, '2023-06-15 20:03:23'),
(8, 'mateus', 'alexandre@alexandre', 'erro calendario', 1, '2023-06-15 20:03:24'),
(9, 'mateus', 'alexandrenecher@gmail.com', 'dfdsss', 1, '2023-06-15 20:24:31'),
(10, 'mateus', 'alexandrenecher@gmail.com', 'erro a tela de cadastro', 1, '2023-06-21 20:58:47'),
(11, 'Alexandre Necher Donner', 'alexandre@alexandre.com', 'preciso de ajuda para me cadastrar em evento nao estou conseguindo', 1, '2023-06-25 22:12:29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `ID_USUARIO` int(11) NOT NULL,
  `NOME` varchar(60) NOT NULL,
  `DATA_NASC` date NOT NULL,
  `CPF` varchar(14) NOT NULL,
  `RG` varchar(20) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `TIPO_USUARIO` varchar(25) NOT NULL,
  `ID_ENDERECO` int(11) DEFAULT NULL,
  `SENHA` varchar(120) NOT NULL,
  `IMAGEM` longblob DEFAULT NULL,
  `CACHORRO` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`ID_USUARIO`, `NOME`, `DATA_NASC`, `CPF`, `RG`, `EMAIL`, `TIPO_USUARIO`, `ID_ENDERECO`, `SENHA`, `IMAGEM`, `CACHORRO`) VALUES
(1, 'alexandre', '1999-12-16', '117.722.309-01', '1360545484', 'alexandre@alexandre.com', 'admin', 1, '123', NULL, 'bob'),
(10, 'mateus', '2002-04-27', '486.525.569-88', '1360545484', 'MATHEUS@matheus.com', 'palestrante', 10, '123', NULL, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios_inscritos`
--

CREATE TABLE `usuarios_inscritos` (
  `ID_USUARIOS_INSCRITOS` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `ID_EVENTO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ajuda`
--
ALTER TABLE `ajuda`
  ADD PRIMARY KEY (`ID_AJUDA`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`ID_ENDERECO`);

--
-- Índices para tabela `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`ID_EVENTO`),
  ADD KEY `ID_USUARIO` (`ID_USUARIO`),
  ADD KEY `ID_INSTITUICAO` (`ID_INSTITUICAO`);

--
-- Índices para tabela `inscricoes`
--
ALTER TABLE `inscricoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `instituicao`
--
ALTER TABLE `instituicao`
  ADD PRIMARY KEY (`ID_INSTITUICAO`),
  ADD KEY `ID_ENDERECO` (`ID_ENDERECO`);

--
-- Índices para tabela `mensagens`
--
ALTER TABLE `mensagens`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_USUARIO`),
  ADD KEY `ID_ENDERECO` (`ID_ENDERECO`);

--
-- Índices para tabela `usuarios_inscritos`
--
ALTER TABLE `usuarios_inscritos`
  ADD PRIMARY KEY (`ID_USUARIOS_INSCRITOS`),
  ADD KEY `ID_USUARIO` (`ID_USUARIO`),
  ADD KEY `ID_EVENTO` (`ID_EVENTO`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `ajuda`
--
ALTER TABLE `ajuda`
  MODIFY `ID_AJUDA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `ID_ENDERECO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `evento`
--
ALTER TABLE `evento`
  MODIFY `ID_EVENTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `inscricoes`
--
ALTER TABLE `inscricoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `instituicao`
--
ALTER TABLE `instituicao`
  MODIFY `ID_INSTITUICAO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `mensagens`
--
ALTER TABLE `mensagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `usuarios_inscritos`
--
ALTER TABLE `usuarios_inscritos`
  MODIFY `ID_USUARIOS_INSCRITOS` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`),
  ADD CONSTRAINT `evento_ibfk_2` FOREIGN KEY (`ID_INSTITUICAO`) REFERENCES `instituicao` (`ID_INSTITUICAO`);

--
-- Limitadores para a tabela `instituicao`
--
ALTER TABLE `instituicao`
  ADD CONSTRAINT `instituicao_ibfk_1` FOREIGN KEY (`ID_ENDERECO`) REFERENCES `endereco` (`ID_ENDERECO`);

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`ID_ENDERECO`) REFERENCES `endereco` (`ID_ENDERECO`);

--
-- Limitadores para a tabela `usuarios_inscritos`
--
ALTER TABLE `usuarios_inscritos`
  ADD CONSTRAINT `usuarios_inscritos_ibfk_1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`),
  ADD CONSTRAINT `usuarios_inscritos_ibfk_2` FOREIGN KEY (`ID_EVENTO`) REFERENCES `evento` (`ID_EVENTO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
