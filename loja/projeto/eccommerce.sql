-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21-Ago-2019 às 22:39
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
-- Database: `eccommerce`
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
-- Estrutura da tabela `tipos_livros`
--

CREATE TABLE `tipos_livros` (
  `id_tipo` int(10) NOT NULL,
  `nome_tipo` varchar(30) DEFAULT NULL
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
-- Indexes for table `tipos_livros`
--
ALTER TABLE `tipos_livros`
  ADD PRIMARY KEY (`id_tipo`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
