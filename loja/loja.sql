-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18-Nov-2019 às 04:13
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loja`
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

--
-- Extraindo dados da tabela `cidades`
--

INSERT INTO `cidades` (`id_cidade`, `id_cidade_estado`, `nome_cidade`) VALUES
(1, 1, 'Guiaba');

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
-- Estrutura da tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id_comentario` int(15) NOT NULL,
  `id_usuario` int(15) NOT NULL,
  `id_produto` int(15) NOT NULL,
  `classe` float NOT NULL,
  `comentario` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`id_comentario`, `id_usuario`, `id_produto`, `classe`, `comentario`) VALUES
(1, 1, 1, 4.5, 'Muito bom o livro, adorei o filme tbm!'),
(2, 2, 4, 3.2, 'achei meio mais ou menos'),
(3, 1, 4, 6.8, 'Adorei adorei a pipoca');

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

--
-- Extraindo dados da tabela `distribuidoras`
--

INSERT INTO `distribuidoras` (`id_distribuidora`, `id_cidade`, `cod`, `nome_distribuidora`, `endereco`) VALUES
(2, 1, 225674, 'macedo', 'adao foques');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estados`
--

CREATE TABLE `estados` (
  `id_estado` int(15) NOT NULL,
  `nome_estado` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estados`
--

INSERT INTO `estados` (`id_estado`, `nome_estado`) VALUES
(1, 'RS');

-- --------------------------------------------------------

--
-- Estrutura da tabela `filiais`
--

CREATE TABLE `filiais` (
  `id_filial` int(15) NOT NULL,
  `id_cidade` int(15) DEFAULT NULL,
  `endereco` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `filiais`
--

INSERT INTO `filiais` (`id_filial`, `id_cidade`, `endereco`) VALUES
(1, 1, 'Pedro timoteo da rosa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `id_livro` int(15) NOT NULL,
  `id_tipo` int(15) DEFAULT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `autor` varchar(50) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `preco` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`id_livro`, `id_tipo`, `nome`, `autor`, `descricao`, `preco`) VALUES
(1, 2, 'IT', 'Stephen king', 'Livro de terror de stephen king.', 135),
(2, 4, 'Eu, robo', 'Isac Asimov', 'Livro de ficção sobre o futuro robótico da humanidade.', 90.75),
(3, 1, 'Morangos mofados', '', 'Romance no árido clima nordesrtino.', 67.9),
(4, 4, '1984', 'george orwell', 'Distopia política sobre o comunismo e facismo.', 70.5),
(5, 4, 'Evolução dos bichos', 'george orwell', 'Distopia política sobre o comunismo.', 70.5),
(6, 4, 'fernando pessoa', 'fernando pessoa', 'poesias de fernando pessoa', 55),
(7, 5, 'teorema de katherine', 'john green', 'Comédia romântica', 47.99);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(15) NOT NULL,
  `id_livro` int(15) DEFAULT NULL,
  `codigo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `id_livro`, `codigo`) VALUES
(1, 1, '1124'),
(2, 1, '2456'),
(3, 2, '0098'),
(4, 3, '4896'),
(5, 4, '2098'),
(6, 2, '3678'),
(7, 4, '1984'),
(8, 5, '0845'),
(9, 6, '2654');

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

--
-- Extraindo dados da tabela `produto_novo`
--

INSERT INTO `produto_novo` (`novo`, `id_produto`, `id_distribuidora`, `data_hora`, `pacote`) VALUES
(1, 1, 2, NULL, 32),
(3, 3, 2, NULL, 23),
(4, 2, 2, NULL, 23);

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

--
-- Extraindo dados da tabela `produto_usado`
--

INSERT INTO `produto_usado` (`usado`, `id_produto`, `nome_doador`, `data_hora`, `id_filial`) VALUES
(1, 4, 'julia', NULL, 1),
(2, 4, 'Júlia Laux', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipos_livros`
--

CREATE TABLE `tipos_livros` (
  `id_tipo` int(10) NOT NULL,
  `nome_tipo` varchar(30) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipos_livros`
--

INSERT INTO `tipos_livros` (`id_tipo`, `nome_tipo`, `descricao`) VALUES
(1, 'romance', 'Pessoas amáveis merecem livros amáveis.'),
(2, 'terror', 'Se assuste com estes aqui.'),
(3, 'auto ajuda', 'Precisa de alguma ajuda?'),
(4, 'ficcao', 'Distopia, utopia e outros temas científicos.'),
(5, 'comédia', 'Rir sempre é o melhor remédio.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(15) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nome`, `email`) VALUES
(1, 'Julia laux', 0),
(2, 'felipe frade', 0);

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
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `id_comentario_produto_fk` (`id_produto`),
  ADD KEY `id_produto` (`id_produto`);

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
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

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
  MODIFY `id_cidade` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_comentario` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `distribuidoras`
--
ALTER TABLE `distribuidoras`
  MODIFY `id_distribuidora` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `estados`
--
ALTER TABLE `estados`
  MODIFY `id_estado` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `filiais`
--
ALTER TABLE `filiais`
  MODIFY `id_filial` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `livros`
--
ALTER TABLE `livros`
  MODIFY `id_livro` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produto` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `produto_novo`
--
ALTER TABLE `produto_novo`
  MODIFY `novo` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `produto_usado`
--
ALTER TABLE `produto_usado`
  MODIFY `usado` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tipos_livros`
--
ALTER TABLE `tipos_livros`
  MODIFY `id_tipo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
