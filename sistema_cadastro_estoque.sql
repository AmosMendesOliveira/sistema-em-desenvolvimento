-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Jul-2022 às 03:09
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema_cadastro_estoque`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro_cliente_fornecedor`
--

CREATE TABLE `cadastro_cliente_fornecedor` (
  `id_cliente` int(6) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf_cnpj` varchar(18) NOT NULL,
  `rg` varchar(15) NOT NULL,
  `mae` varchar(50) NOT NULL,
  `pai` varchar(50) NOT NULL,
  `data_nascimento` varchar(15) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `logradouro` varchar(50) NOT NULL,
  `n_casa` varchar(6) NOT NULL,
  `condominio` varchar(50) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `complemento` varchar(100) NOT NULL,
  `cidade_estado` varchar(80) NOT NULL,
  `telefone_residencial` varchar(14) NOT NULL,
  `operadora_movel` varchar(20) NOT NULL,
  `telefone_celular` varchar(14) NOT NULL,
  `whatsapp` varchar(14) NOT NULL,
  `e-mail` varchar(50) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `linkedin` varchar(100) NOT NULL,
  `nome_contato` varchar(50) NOT NULL,
  `referencia_comercial1` varchar(100) NOT NULL,
  `referencia_comercial2` varchar(100) NOT NULL,
  `referencia_comercial3` varchar(100) NOT NULL,
  `Salario_cliente` varchar(7) NOT NULL,
  `estado_civil` varchar(100) NOT NULL,
  `nome_conjugue` varchar(50) NOT NULL,
  `telefone_trabalho` varchar(14) NOT NULL,
  `telefone_referencia1` varchar(14) NOT NULL,
  `telefone_referencia2` varchar(14) NOT NULL,
  `telefone_referencia3` varchar(14) NOT NULL,
  `telefone_conjugue` varchar(14) NOT NULL,
  `genero_cliente` varchar(50) NOT NULL,
  `data_cadastro_cliente` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_estoque`
--

CREATE TABLE `produtos_estoque` (
  `id_produto` int(11) NOT NULL,
  `id_cadastro` int(11) NOT NULL,
  `nome_produto` varchar(100) NOT NULL,
  `descricao_produto` varchar(100) NOT NULL,
  `saldo_produto` double NOT NULL,
  `kg_produto` double NOT NULL,
  `patrimonio_produto` varchar(50) NOT NULL,
  `valor_uni_produto` double NOT NULL,
  `valor_kg_produto` double NOT NULL,
  `valor_total_produto` double NOT NULL,
  `data_cadastro_produto` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadastro_cliente_fornecedor`
--
ALTER TABLE `cadastro_cliente_fornecedor`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `produtos_estoque`
--
ALTER TABLE `produtos_estoque`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `id_cadastro` (`id_cadastro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro_cliente_fornecedor`
--
ALTER TABLE `cadastro_cliente_fornecedor`
  MODIFY `id_cliente` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtos_estoque`
--
ALTER TABLE `produtos_estoque`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `produtos_estoque`
--
ALTER TABLE `produtos_estoque`
  ADD CONSTRAINT `produtos_estoque_ibfk_1` FOREIGN KEY (`id_cadastro`) REFERENCES `cadastro_cliente_fornecedor` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
