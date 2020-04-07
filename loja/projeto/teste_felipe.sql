-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 22-Ago-2019 às 01:13
-- Versão do servidor: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teste_felipe`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidades`
--

CREATE TABLE `cidades` (
  `id_cidade` int(15) NOT NULL,
  `id_cidade_estado` int(15) DEFAULT NULL,
  `nome_cidade` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_nome` int(15) NOT NULL,
  `rg` int(15) DEFAULT NULL,
  `id_cidade` int(15) DEFAULT NULL,
  `endereco` varchar(30) DEFAULT NULL,
  `desconto` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `distribuidoras`
--

CREATE TABLE `distribuidoras` (
  `id_distribuidora` int(15) NOT NULL,
  `id_cidade` int(15) DEFAULT NULL,
  `cod` int(15) DEFAULT NULL,
  `nome_distribuidora` varchar(30) DEFAULT NULL,
  `endereco` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estados`
--

CREATE TABLE `estados` (
  `id_estado` int(15) NOT NULL,
  `nome_estado` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `filiais`
--

CREATE TABLE `filiais` (
  `id_filial` int(15) NOT NULL,
  `id_cidade` int(15) DEFAULT NULL,
  `endereco` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `id_livro` int(15) NOT NULL,
  `id_tipo` int(15) DEFAULT NULL,
  `autor` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(15) NOT NULL,
  `id_livro` int(15) DEFAULT NULL,
  `codigo` varchar(30) DEFAULT NULL,
  `nome_produto` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto_novo`
--

CREATE TABLE `produto_novo` (
  `novo` int(15) NOT NULL,
  `id_produto` int(15) DEFAULT NULL,
  `id_distribuidora` int(15) DEFAULT NULL,
  `data_hora` varchar(30) DEFAULT NULL,
  `pacote` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto_online`
--

CREATE TABLE `produto_online` (
  `line` int(15) NOT NULL,
  `id_produto` int(15) DEFAULT NULL,
  `url` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto_usado`
--

CREATE TABLE `produto_usado` (
  `usado` int(15) NOT NULL,
  `id_produto` int(15) DEFAULT NULL,
  `nome_doador` varchar(30) DEFAULT NULL,
  `data_hora` varchar(30) DEFAULT NULL,
  `id_filial` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipos_livros`
--

CREATE TABLE `tipos_livros` (
  `id_tipo` int(10) NOT NULL,
  `nome_tipo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id_venda` int(15) NOT NULL,
  `id_cliente` int(15) DEFAULT NULL,
  `id_produto` int(15) DEFAULT NULL,
  `valor` int(15) DEFAULT NULL,
  `data_hora` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda_fisica`
--

CREATE TABLE `venda_fisica` (
  `fisica` int(15) NOT NULL,
  `id_venda` int(15) DEFAULT NULL,
  `quantidade` int(15) DEFAULT NULL,
  `forma_pag` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda_online`
--

CREATE TABLE `venda_online` (
  `line` int(15) NOT NULL,
  `id_venda` int(15) DEFAULT NULL,
  `cod` int(15) DEFAULT NULL,
  `link` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`id_cidade`),
  ADD KEY `estado_fk` (`id_cidade_estado`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_nome`),
  ADD KEY `c_cidade_fk` (`id_cidade`);

--
-- Indexes for table `distribuidoras`
--
ALTER TABLE `distribuidoras`
  ADD PRIMARY KEY (`id_distribuidora`),
  ADD KEY `cidade_distribuidora_fk` (`id_cidade`);

--
-- Indexes for table `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indexes for table `filiais`
--
ALTER TABLE `filiais`
  ADD PRIMARY KEY (`id_filial`),
  ADD KEY `cidade_fk` (`id_cidade`);

--
-- Indexes for table `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`id_livro`),
  ADD KEY `tipo_fk` (`id_tipo`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `livro_fk` (`id_livro`);

--
-- Indexes for table `produto_novo`
--
ALTER TABLE `produto_novo`
  ADD PRIMARY KEY (`novo`),
  ADD KEY `id_produto_fk` (`id_produto`),
  ADD KEY `id_distribuidora_fk` (`id_distribuidora`);

--
-- Indexes for table `produto_online`
--
ALTER TABLE `produto_online`
  ADD PRIMARY KEY (`line`),
  ADD KEY `o_produto_fk` (`id_produto`);

--
-- Indexes for table `produto_usado`
--
ALTER TABLE `produto_usado`
  ADD PRIMARY KEY (`usado`),
  ADD KEY `u_produto_fk` (`id_produto`),
  ADD KEY `id_filial_fk` (`id_filial`);

--
-- Indexes for table `tipos_livros`
--
ALTER TABLE `tipos_livros`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indexes for table `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id_venda`),
  ADD KEY `v_produto_fk` (`id_produto`);

--
-- Indexes for table `venda_fisica`
--
ALTER TABLE `venda_fisica`
  ADD PRIMARY KEY (`fisica`),
  ADD KEY `f_venda_fk` (`id_venda`);

--
-- Indexes for table `venda_online`
--
ALTER TABLE `venda_online`
  ADD PRIMARY KEY (`line`),
  ADD KEY `o_venda_fk` (`id_venda`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cidades`
--
ALTER TABLE `cidades`
  MODIFY `id_cidade` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `distribuidoras`
--
ALTER TABLE `distribuidoras`
  MODIFY `id_distribuidora` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estados`
--
ALTER TABLE `estados`
  MODIFY `id_estado` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filiais`
--
ALTER TABLE `filiais`
  MODIFY `id_filial` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `livros`
--
ALTER TABLE `livros`
  MODIFY `id_livro` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produto` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tipos_livros`
--
ALTER TABLE `tipos_livros`
  MODIFY `id_tipo` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `cidades`
--
ALTER TABLE `cidades`
  ADD CONSTRAINT `estado_fk` FOREIGN KEY (`id_cidade_estado`) REFERENCES `estados` (`id_estado`);

--
-- Limitadores para a tabela `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `c_cidade_fk` FOREIGN KEY (`id_cidade`) REFERENCES `cidades` (`id_cidade`);

--
-- Limitadores para a tabela `distribuidoras`
--
ALTER TABLE `distribuidoras`
  ADD CONSTRAINT `cidade_distribuidora_fk` FOREIGN KEY (`id_cidade`) REFERENCES `cidades` (`id_cidade`);

--
-- Limitadores para a tabela `filiais`
--
ALTER TABLE `filiais`
  ADD CONSTRAINT `cidade_fk` FOREIGN KEY (`id_cidade`) REFERENCES `cidades` (`id_cidade`);

--
-- Limitadores para a tabela `livros`
--
ALTER TABLE `livros`
  ADD CONSTRAINT `tipo_fk` FOREIGN KEY (`id_tipo`) REFERENCES `tipos_livros` (`id_tipo`);

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `livro_fk` FOREIGN KEY (`id_livro`) REFERENCES `livros` (`id_livro`);

--
-- Limitadores para a tabela `produto_novo`
--
ALTER TABLE `produto_novo`
  ADD CONSTRAINT `id_distribuidora_fk` FOREIGN KEY (`id_distribuidora`) REFERENCES `distribuidoras` (`id_distribuidora`),
  ADD CONSTRAINT `id_produto_fk` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produto`);

--
-- Limitadores para a tabela `produto_online`
--
ALTER TABLE `produto_online`
  ADD CONSTRAINT `o_produto_fk` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produto`);

--
-- Limitadores para a tabela `produto_usado`
--
ALTER TABLE `produto_usado`
  ADD CONSTRAINT `id_filial_fk` FOREIGN KEY (`id_filial`) REFERENCES `filiais` (`id_filial`),
  ADD CONSTRAINT `u_produto_fk` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produto`);

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `v_produto_fk` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produto`);

--
-- Limitadores para a tabela `venda_fisica`
--
ALTER TABLE `venda_fisica`
  ADD CONSTRAINT `f_venda_fk` FOREIGN KEY (`id_venda`) REFERENCES `vendas` (`id_venda`);

--
-- Limitadores para a tabela `venda_online`
--
ALTER TABLE `venda_online`
  ADD CONSTRAINT `o_venda_fk` FOREIGN KEY (`id_venda`) REFERENCES `vendas` (`id_venda`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
