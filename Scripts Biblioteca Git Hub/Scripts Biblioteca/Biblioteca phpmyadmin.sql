-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Jun-2020 às 04:23
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bibliotecario`
--

CREATE TABLE `bibliotecario` (
  `Nome` varchar(50) DEFAULT NULL,
  `DataNascimento` varchar(50) DEFAULT NULL,
  `RG` varchar(50) DEFAULT NULL,
  `CPF` varchar(50) DEFAULT NULL,
  `CEP` varchar(50) DEFAULT NULL,
  `UF` varchar(50) DEFAULT NULL,
  `Cidade` varchar(50) DEFAULT NULL,
  `Bairro` varchar(50) DEFAULT NULL,
  `Logradouro` varchar(50) DEFAULT NULL,
  `Num` varchar(50) DEFAULT NULL,
  `Complemeto` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Telefone` varchar(50) DEFAULT NULL,
  `CodFuncionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `bibliotecario`
--

INSERT INTO `bibliotecario` (`Nome`, `DataNascimento`, `RG`, `CPF`, `CEP`, `UF`, `Cidade`, `Bairro`, `Logradouro`, `Num`, `Complemeto`, `Email`, `Telefone`, `CodFuncionario`) VALUES
('Franciele', '1990-07-25', NULL, '25.323.543-67', NULL, 'SP', 'Ribeirão Pires', NULL, NULL, NULL, NULL, 'franci@yhotmail.com', '53636-4354', 1),
('João', '1984-04-18', NULL, '27.847.845-65', NULL, 'SP', 'Maua', NULL, NULL, NULL, NULL, 'john@y.com', '43534-9576', 2),
('Joel', '1988-03-07', NULL, '23.846.968-66', NULL, 'SP', 'Rio Grande da serra', NULL, NULL, NULL, NULL, 'joel@ybol.com', '96578-7544', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente_aluno`
--

CREATE TABLE `cliente_aluno` (
  `Nome` varchar(50) DEFAULT NULL,
  `DataNascimento` varchar(50) DEFAULT NULL,
  `ra` int(11) NOT NULL,
  `Turma` varchar(50) DEFAULT NULL,
  `Celular` varchar(50) DEFAULT NULL,
  `Telefone` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente_aluno`
--

INSERT INTO `cliente_aluno` (`Nome`, `DataNascimento`, `ra`, `Turma`, `Celular`, `Telefone`, `Email`) VALUES
('Gabriel Fernando', '2004-08-17', 1, '2C', '11957547628', '95444-4763', 'Gabrielfernando@hotmail.com'),
('Jesus de Nazare', '0000-12-25', 2, '2C', '11963856223', '12345-6789', 'JCdaNazaré@ceu.com'),
('Graminha', '2002-11-31', 3, '3C', '11985736534', '09225-8421', 'Gramadocorujooj@hotmail.com'),
('victor', '2003-02-18', 4, '3C', '11934755237', '84575-8475', 'victor5243@gmail.com'),
('joão', '2004-06-24', 5, '2C', '11987757134', '95546-8657', 'Joãogameplay@hotmail.com'),
('Jorge', '2004-10-15', 6, '2B', '11947621154', '03356-4546', 'Jorgeson@gmail.com'),
('Larisa', '20003-04-30', 7, '3B', '11903655834', '96675-9787', 'Larisaegirl@hotmail.com'),
('Yasmin', '2004-07-06', 8, '2A', '11975633756', '95444-9778', 'Yasmininha@live.com'),
('Janaina', '2004-01-12', 9, '2B', '11949898476', '57656-9889', 'Janaina@gmail.com'),
('Geraldo', '2005-09-27', 10, '1A', '11959971465', '65657-8989', 'Geraldojordao@hyahoo.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimo_devolucao`
--

CREATE TABLE `emprestimo_devolucao` (
  `Data_Emprestimo` date DEFAULT NULL,
  `codEmprestimo` int(11) NOT NULL,
  `Data_Devolucao` date DEFAULT NULL,
  `CodFuncionario` int(11) DEFAULT NULL,
  `codLivro` int(11) DEFAULT NULL,
  `ra` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `emprestimo_devolucao`
--

INSERT INTO `emprestimo_devolucao` (`Data_Emprestimo`, `codEmprestimo`, `Data_Devolucao`, `CodFuncionario`, `codLivro`, `ra`) VALUES
('2019-08-12', 1, '2019-10-24', 2, 3, 4),
('2020-01-03', 2, '2033-12-25', 1, 2, 2),
('2019-04-19', 3, '2019-08-17', 1, 9, 3),
('2020-05-09', 4, '2020-06-11', 2, 7, 4),
('2019-03-28', 5, '2019-05-26', 3, 1, 6),
('2020-08-12', 6, '2020-10-23', 3, 4, 8),
('2018-09-21', 7, '2018-11-02', 1, 8, 7),
('2020-11-03', 8, '2020-12-05', 3, 7, 4),
('2020-02-07', 9, '2020-05-17', 2, 8, 6),
('2019-01-14', 10, '2019-04-04', 2, 3, 1),
('2019-04-22', 11, '2019-06-12', 3, 3, 5),
('2020-02-26', 12, '2020-06-16', 1, 5, 3),
('2018-05-15', 13, '2018-10-22', 1, 5, 7),
('2018-11-07', 14, '2018-12-06', 3, 7, 6),
('2020-05-20', 15, '2020-08-17', 2, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `Titulo` varchar(50) DEFAULT NULL,
  `Genero` varchar(50) DEFAULT NULL,
  `Autor` varchar(50) DEFAULT NULL,
  `Editora` varchar(50) DEFAULT NULL,
  `codLivro` int(11) NOT NULL,
  `paginas` int(11) DEFAULT NULL,
  `Quantidade_Exemplares` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`Titulo`, `Genero`, `Autor`, `Editora`, `codLivro`, `paginas`, `Quantidade_Exemplares`) VALUES
('Mestres do capitalismo', 'Guia', 'Nando Moura', 'Auster', 1, 280, 10),
('Biblia', 'Manual e Guia', 'Apostolos', 'Deus', 2, 1500, 7),
('As Cronicas de Gelo e fogo', 'Fantasia', 'George R. R. Martin', 'Bantam Books', 3, 592, 5),
('O Senhor dos Anéis', 'Fantasia', 'J. R. R. Tolkien', 'Allen & Unwin', 4, 1200, 3),
('Harry Potter', 'Fantasia', 'J. K. Rowling', 'Bloomsbury Publishing', 5, 225, 2),
('Percy Jackson', 'Aventuras', 'Rick Riordan', 'Miramax Books', 6, 384, 3),
('Diário de um Banana', 'Comedia', 'Jeff Kinney', 'V & R', 7, 42, 8),
('Jogos Vorazes', 'Aventura', 'Suzanne Collins', 'Scholastic', 8, 256, 4),
('Sherlock Holmes', 'Misterio', 'Arthur Conan Doyle', 'Oxford', 9, 152, 10),
('Viagem ao Centro da Terra', 'Ficção_aventura', 'Júlio Verne', 'Pierre-Jules Hetzel', 10, 210, 7);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `bibliotecario`
--
ALTER TABLE `bibliotecario`
  ADD PRIMARY KEY (`CodFuncionario`),
  ADD UNIQUE KEY `RG` (`RG`),
  ADD UNIQUE KEY `CPF` (`CPF`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Índices para tabela `cliente_aluno`
--
ALTER TABLE `cliente_aluno`
  ADD PRIMARY KEY (`ra`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Índices para tabela `emprestimo_devolucao`
--
ALTER TABLE `emprestimo_devolucao`
  ADD PRIMARY KEY (`codEmprestimo`),
  ADD KEY `CodFuncionario` (`CodFuncionario`),
  ADD KEY `codLivro` (`codLivro`),
  ADD KEY `ra` (`ra`);

--
-- Índices para tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`codLivro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `bibliotecario`
--
ALTER TABLE `bibliotecario`
  MODIFY `CodFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `cliente_aluno`
--
ALTER TABLE `cliente_aluno`
  MODIFY `ra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `emprestimo_devolucao`
--
ALTER TABLE `emprestimo_devolucao`
  MODIFY `codEmprestimo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `codLivro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `emprestimo_devolucao`
--
ALTER TABLE `emprestimo_devolucao`
  ADD CONSTRAINT `emprestimo_devolucao_ibfk_1` FOREIGN KEY (`CodFuncionario`) REFERENCES `bibliotecario` (`CodFuncionario`),
  ADD CONSTRAINT `emprestimo_devolucao_ibfk_2` FOREIGN KEY (`codLivro`) REFERENCES `livro` (`codLivro`),
  ADD CONSTRAINT `emprestimo_devolucao_ibfk_3` FOREIGN KEY (`ra`) REFERENCES `cliente_aluno` (`ra`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
