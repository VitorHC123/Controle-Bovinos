-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 26-Nov-2022 às 02:30
-- Versão do servidor: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bovinos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `animal`
--

CREATE TABLE `animal` (
  `codMae` int(11) DEFAULT NULL,
  `sexo` varchar(30) DEFAULT NULL,
  `brinco` int(11) DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `data_nasc` date DEFAULT NULL,
  `origem` varchar(50) DEFAULT NULL,
  `cod_animal` int(11) NOT NULL,
  `cod_tipo` int(11) DEFAULT NULL,
  `cod_raca` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `animal_medicamentos`
--

CREATE TABLE `animal_medicamentos` (
  `cod_animal` int(11) DEFAULT NULL,
  `cod_med` int(11) DEFAULT NULL,
  `Id_lote_medic` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `animal_vacinas`
--

CREATE TABLE `animal_vacinas` (
  `cod_animal` int(11) DEFAULT NULL,
  `cod_vac` int(11) DEFAULT NULL,
  `Id_lote_vacina` int(11) NOT NULL,
  `doses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cresc`
--

CREATE TABLE `cresc` (
  `data_cresc` date DEFAULT NULL,
  `cod_cresc` int(11) NOT NULL,
  `peso_medio` float DEFAULT NULL,
  `brinco_bezerro` int(11) DEFAULT NULL,
  `cod_animal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cresc`
--

INSERT INTO `cresc` (`data_cresc`, `cod_cresc`, `peso_medio`, `brinco_bezerro`, `cod_animal`) VALUES
('2022-11-04', 1, 6, 130, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `desmame`
--

CREATE TABLE `desmame` (
  `data_desmame` date DEFAULT NULL,
  `peso_medio` float DEFAULT NULL,
  `brinco_bezerro` int(11) DEFAULT NULL,
  `cod_desmame` int(11) NOT NULL,
  `cod_animal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `desmame`
--

INSERT INTO `desmame` (`data_desmame`, `peso_medio`, `brinco_bezerro`, `cod_desmame`, `cod_animal`) VALUES
('2022-11-09', 150, 2, 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gestacao`
--

CREATE TABLE `gestacao` (
  `data_cobertura` date DEFAULT NULL,
  `medicamentos` varchar(100) DEFAULT NULL,
  `brinco_mae` int(11) DEFAULT NULL,
  `vacinas` varchar(100) DEFAULT NULL,
  `cod_gestacao` int(11) NOT NULL,
  `cod_animal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lote_medicamento`
--

CREATE TABLE `lote_medicamento` (
  `idlote_medic` int(11) NOT NULL,
  `data_validade` date DEFAULT NULL,
  `fabricante` varchar(100) DEFAULT NULL,
  `num_lote` varchar(100) DEFAULT NULL,
  `cod_med` int(11) NOT NULL,
  `data_chegada` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `lote_medicamento`
--

INSERT INTO `lote_medicamento` (`idlote_medic`, `data_validade`, `fabricante`, `num_lote`, `cod_med`, `data_chegada`) VALUES
(4, '2022-11-26', 'CB', '55VV', 1, '2022-11-11'),
(5, '2022-11-19', 'CB', '55VV', 1, '2022-11-12'),
(6, '2022-11-26', 'CB', '55VV', 1, '2022-11-19'),
(7, '2022-11-17', 'CB', 'VV99', 1, '2022-11-10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `lote_vacina`
--

CREATE TABLE `lote_vacina` (
  `idlote_vacina` int(11) NOT NULL,
  `data_validade` date DEFAULT NULL,
  `fabricante` varchar(100) DEFAULT NULL,
  `num_lote` varchar(100) DEFAULT NULL,
  `cod_vac` int(11) NOT NULL,
  `data_chegada` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `lote_vacina`
--

INSERT INTO `lote_vacina` (`idlote_vacina`, `data_validade`, `fabricante`, `num_lote`, `cod_vac`, `data_chegada`) VALUES
(4, '2022-11-26', 'CB', '55VV', 1, '2022-11-11'),
(9, '2022-11-05', 'CB', '55VV', 1, '2022-11-25'),
(10, '2022-12-01', 'CB', '88VV', 1, '2022-11-17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `medicamentos`
--

CREATE TABLE `medicamentos` (
  `nome` varchar(120) DEFAULT NULL,
  `cod_med` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `medicamentos`
--

INSERT INTO `medicamentos` (`nome`, `cod_med`) VALUES
('ANTIBIÓTICO', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `parto`
--

CREATE TABLE `parto` (
  `data_parto` date DEFAULT NULL,
  `cod_parto` int(11) NOT NULL,
  `cod_animal` int(11) DEFAULT NULL,
  `cod_gestacao` int(11) DEFAULT NULL,
  `vivo_morto` varchar(30) DEFAULT NULL,
  `brinco_bezerro` int(11) DEFAULT NULL,
  `peso` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `parto`
--

INSERT INTO `parto` (`data_parto`, `cod_parto`, `cod_animal`, `cod_gestacao`, `vivo_morto`, `brinco_bezerro`, `peso`) VALUES
('2022-11-11', 1, NULL, NULL, 'vivo', 1, 150);

-- --------------------------------------------------------

--
-- Estrutura da tabela `raca`
--

CREATE TABLE `raca` (
  `raca` varchar(100) DEFAULT NULL,
  `cod_raca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `raca`
--

INSERT INTO `raca` (`raca`, `cod_raca`) VALUES
('NELORE', 1),
('ANGUS', 2),
('BRAHMAN', 3),
('BRANGUS', 4),
('SENEPOL', 5),
('HEREFORD', 6),
('CARACU', 7),
('CHAROLÊS', 8),
('GUZERÁ', 9),
('SIMENTAL', 10),
('TABAPUÃ', 11),
('CHIANINA', 12),
('LIMOUSIN', 13),
('DEVON', 14),
('BELGIAN BLUE', 15),
('WAGYU', 16);

-- --------------------------------------------------------

--
-- Estrutura da tabela `term`
--

CREATE TABLE `term` (
  `data_abate` date DEFAULT NULL,
  `peso_saida` float DEFAULT NULL,
  `peso_entrada` float DEFAULT NULL,
  `cod_term` int(11) NOT NULL,
  `brinco_term` int(11) DEFAULT NULL,
  `cod_animal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `term`
--

INSERT INTO `term` (`data_abate`, `peso_saida`, `peso_entrada`, `cod_term`, `brinco_term`, `cod_animal`) VALUES
('2022-11-18', 60, 150, 1, 5, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo`
--

CREATE TABLE `tipo` (
  `tipo` varchar(100) DEFAULT NULL,
  `cod_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipo`
--

INSERT INTO `tipo` (`tipo`, `cod_tipo`) VALUES
('BOI', 1),
('TOURO', 2),
('VACA', 3),
('BEZERRO', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `email` varchar(150) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL,
  `nome_usuario` varchar(120) DEFAULT NULL,
  `codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`email`, `senha`, `nome_usuario`, `codigo`) VALUES
('vitor@gmail.com', '??<?c??????', 'vitor', 9),
('jao@uol.com', '??<?c??????', 'jao', 10),
('', '?l??T?w???Y?', '', 11),
('', '?l??T?w???Y?', '', 12),
('', '?l??T?w???Y?', '', 13),
('', '?l??T?w???Y?', '', 14),
('', '?l??T?w???Y?', '', 15),
('vitor123@gmail.com', '??<?c??????', 'vitor', 16);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vacinas`
--

CREATE TABLE `vacinas` (
  `nome` varchar(120) DEFAULT NULL,
  `cod_vac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `vacinas`
--

INSERT INTO `vacinas` (`nome`, `cod_vac`) VALUES
('BRUCELOSE', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`cod_animal`),
  ADD KEY `cod_tipo` (`cod_tipo`),
  ADD KEY `cod_raca` (`cod_raca`);

--
-- Indexes for table `animal_medicamentos`
--
ALTER TABLE `animal_medicamentos`
  ADD KEY `cod_animal` (`cod_animal`),
  ADD KEY `Id_lote_medic` (`Id_lote_medic`),
  ADD KEY `cod_med` (`cod_med`);

--
-- Indexes for table `animal_vacinas`
--
ALTER TABLE `animal_vacinas`
  ADD KEY `cod_animal` (`cod_animal`),
  ADD KEY `Id_lote_vacina` (`Id_lote_vacina`),
  ADD KEY `cod_vac` (`cod_vac`);

--
-- Indexes for table `cresc`
--
ALTER TABLE `cresc`
  ADD PRIMARY KEY (`cod_cresc`),
  ADD KEY `cod_animal` (`cod_animal`);

--
-- Indexes for table `desmame`
--
ALTER TABLE `desmame`
  ADD PRIMARY KEY (`cod_desmame`),
  ADD KEY `cod_animal` (`cod_animal`);

--
-- Indexes for table `gestacao`
--
ALTER TABLE `gestacao`
  ADD PRIMARY KEY (`cod_gestacao`),
  ADD KEY `cod_animal` (`cod_animal`);

--
-- Indexes for table `lote_medicamento`
--
ALTER TABLE `lote_medicamento`
  ADD PRIMARY KEY (`idlote_medic`),
  ADD KEY `cod_med` (`cod_med`);

--
-- Indexes for table `lote_vacina`
--
ALTER TABLE `lote_vacina`
  ADD PRIMARY KEY (`idlote_vacina`),
  ADD KEY `cod_vac` (`cod_vac`);

--
-- Indexes for table `medicamentos`
--
ALTER TABLE `medicamentos`
  ADD PRIMARY KEY (`cod_med`);

--
-- Indexes for table `parto`
--
ALTER TABLE `parto`
  ADD PRIMARY KEY (`cod_parto`),
  ADD KEY `cod_animal` (`cod_animal`),
  ADD KEY `cod_gestacao` (`cod_gestacao`);

--
-- Indexes for table `raca`
--
ALTER TABLE `raca`
  ADD PRIMARY KEY (`cod_raca`);

--
-- Indexes for table `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`cod_term`),
  ADD KEY `cod_animal` (`cod_animal`);

--
-- Indexes for table `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`cod_tipo`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`codigo`);

--
-- Indexes for table `vacinas`
--
ALTER TABLE `vacinas`
  ADD PRIMARY KEY (`cod_vac`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animal`
--
ALTER TABLE `animal`
  MODIFY `cod_animal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `cresc`
--
ALTER TABLE `cresc`
  MODIFY `cod_cresc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `desmame`
--
ALTER TABLE `desmame`
  MODIFY `cod_desmame` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gestacao`
--
ALTER TABLE `gestacao`
  MODIFY `cod_gestacao` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lote_medicamento`
--
ALTER TABLE `lote_medicamento`
  MODIFY `idlote_medic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `lote_vacina`
--
ALTER TABLE `lote_vacina`
  MODIFY `idlote_vacina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `medicamentos`
--
ALTER TABLE `medicamentos`
  MODIFY `cod_med` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `parto`
--
ALTER TABLE `parto`
  MODIFY `cod_parto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `raca`
--
ALTER TABLE `raca`
  MODIFY `cod_raca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `term`
--
ALTER TABLE `term`
  MODIFY `cod_term` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tipo`
--
ALTER TABLE `tipo`
  MODIFY `cod_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `vacinas`
--
ALTER TABLE `vacinas`
  MODIFY `cod_vac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`cod_tipo`) REFERENCES `tipo` (`cod_tipo`),
  ADD CONSTRAINT `animal_ibfk_2` FOREIGN KEY (`cod_raca`) REFERENCES `raca` (`cod_raca`);

--
-- Limitadores para a tabela `animal_medicamentos`
--
ALTER TABLE `animal_medicamentos`
  ADD CONSTRAINT `animal_medicamentos_ibfk_1` FOREIGN KEY (`cod_animal`) REFERENCES `animal` (`cod_animal`),
  ADD CONSTRAINT `animal_medicamentos_ibfk_2` FOREIGN KEY (`cod_med`) REFERENCES `medicamentos` (`cod_med`),
  ADD CONSTRAINT `animal_medicamentos_ibfk_3` FOREIGN KEY (`Id_lote_medic`) REFERENCES `medicamentos` (`cod_med`),
  ADD CONSTRAINT `animal_medicamentos_ibfk_4` FOREIGN KEY (`cod_med`) REFERENCES `medicamentos` (`cod_med`),
  ADD CONSTRAINT `animal_medicamentos_ibfk_5` FOREIGN KEY (`cod_med`) REFERENCES `medicamentos` (`cod_med`);

--
-- Limitadores para a tabela `animal_vacinas`
--
ALTER TABLE `animal_vacinas`
  ADD CONSTRAINT `animal_vacinas_ibfk_1` FOREIGN KEY (`cod_animal`) REFERENCES `animal` (`cod_animal`),
  ADD CONSTRAINT `animal_vacinas_ibfk_2` FOREIGN KEY (`cod_vac`) REFERENCES `vacinas` (`cod_vac`),
  ADD CONSTRAINT `animal_vacinas_ibfk_3` FOREIGN KEY (`Id_lote_vacina`) REFERENCES `vacinas` (`cod_vac`),
  ADD CONSTRAINT `animal_vacinas_ibfk_4` FOREIGN KEY (`cod_vac`) REFERENCES `vacinas` (`cod_vac`);

--
-- Limitadores para a tabela `cresc`
--
ALTER TABLE `cresc`
  ADD CONSTRAINT `cresc_ibfk_1` FOREIGN KEY (`cod_animal`) REFERENCES `animal` (`cod_animal`);

--
-- Limitadores para a tabela `desmame`
--
ALTER TABLE `desmame`
  ADD CONSTRAINT `desmame_ibfk_1` FOREIGN KEY (`cod_animal`) REFERENCES `animal` (`cod_animal`);

--
-- Limitadores para a tabela `gestacao`
--
ALTER TABLE `gestacao`
  ADD CONSTRAINT `gestacao_ibfk_1` FOREIGN KEY (`cod_animal`) REFERENCES `animal` (`cod_animal`);

--
-- Limitadores para a tabela `lote_medicamento`
--
ALTER TABLE `lote_medicamento`
  ADD CONSTRAINT `lote_medicamento_ibfk_1` FOREIGN KEY (`cod_med`) REFERENCES `medicamentos` (`cod_med`),
  ADD CONSTRAINT `lote_medicamento_ibfk_2` FOREIGN KEY (`cod_med`) REFERENCES `medicamentos` (`cod_med`);

--
-- Limitadores para a tabela `lote_vacina`
--
ALTER TABLE `lote_vacina`
  ADD CONSTRAINT `lote_vacina_ibfk_1` FOREIGN KEY (`cod_vac`) REFERENCES `vacinas` (`cod_vac`);

--
-- Limitadores para a tabela `parto`
--
ALTER TABLE `parto`
  ADD CONSTRAINT `parto_ibfk_1` FOREIGN KEY (`cod_animal`) REFERENCES `animal` (`cod_animal`),
  ADD CONSTRAINT `parto_ibfk_2` FOREIGN KEY (`cod_gestacao`) REFERENCES `gestacao` (`cod_gestacao`);

--
-- Limitadores para a tabela `term`
--
ALTER TABLE `term`
  ADD CONSTRAINT `term_ibfk_1` FOREIGN KEY (`cod_animal`) REFERENCES `animal` (`cod_animal`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
