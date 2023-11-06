-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 06 nov. 2023 à 11:35
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bankiuttest`
--

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `numeroCompte` varchar(50) NOT NULL,
  `userId` varchar(50) NOT NULL,
  `solde` double NOT NULL,
  `avecDecouvert` varchar(5) NOT NULL,
  `decouvertAutorise` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`numeroCompte`, `userId`, `solde`, `avecDecouvert`, `decouvertAutorise`) VALUES
('AB7328887341', 'j.doe2', 4242, 'AVEC', 123),
('AV1011011011', 'g.descomptes', 5, 'AVEC', 100),
('BD4242424242', 'j.doe1', 100, 'SANS', NULL),
('CADNV00000', 'j.doe1', 42, 'AVEC', 42),
('CADV000000', 'j.doe1', 0, 'AVEC', 42),
('CSDNV00000', 'j.doe1', 42, 'SANS', NULL),
('CSDV000000', 'j.doe1', 0, 'SANS', NULL),
('IO1010010001', 'j.doe2', 6868, 'SANS', NULL),
('KL4589219196', 'g.descomptesvides', 0, 'AVEC', 150),
('KO7845154956', 'g.descomptesvides', 0, 'SANS', NULL),
('LA1021931215', 'j.doe1', 100, 'SANS', NULL),
('MD8694030938', 'j.doe1', 500, 'SANS', NULL),
('PP1285735733', 'a.lidell1', 37, 'SANS', NULL),
('SA1011011011', 'g.descomptes', 10, 'SANS', 0),
('TD0398455576', 'j.doe1', 23, 'AVEC', 500),
('XD1829451029', 'j.doe1', -48, 'AVEC', 100);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `userId` varchar(50) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `userPwd` varchar(200) DEFAULT NULL,
  `male` bit(1) NOT NULL,
  `type` varchar(10) NOT NULL,
  `numClient` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`userId`, `nom`, `prenom`, `email`, `adresse`, `userPwd`, `male`, `type`, `numClient`) VALUES
('a.lidell1', 'Lidell', 'Alice', 'alice.lidell@gmail.com', '789, grande rue, Metz', '$2a$10$EYBflZjGImGSACXUmUL7mu3VkrT6V7XvaWO1WdhPrt0i7VsOyaFky', b'1', 'CLIENT', '9865432100'),
('admin', 'Smith', 'Joe', 'joe.smith@orange.fr', '123, grande rue, Metz', '$2a$10$Y3tW3G/3lRhIRBWaBtlIbekZ8Yyip6NQq1bAx17NM/o518YtAmUz6\n', b'1', 'MANAGER', ''),
('c.exist', 'TEST NOM', 'TEST PRENOM', 'test@test.com', 'TEST ADRESSE', '$2a$10$nMr7fz5PIVfhPsh4wn/HGOx0r7k9aH3C8Mbz5uQv7KkAB77YkBitm', b'1', 'CLIENT', '0101010101'),
('g.descomptes', 'TEST NOM', 'TEST PRENOM', 'test@test.com', 'TEST ADRESSE', '$2a$10$X58X8aMteWLG318JMHmwk.2nRjpJBIssvJQcJe3huW9joM3WiWPli\r\n', b'1', 'CLIENT', '1000000001'),
('g.descomptesvides', 'TEST NOM', 'TEST PRENOM', 'test@test.com', 'TEST ADRESSE', '$2a$10$2p9A9NTHzLKR5Q/JnTmNhuZ4lnAzaU/0pEFg4iwT/RjN42m/uId6O\r\n', b'1', 'CLIENT', '0000000002'),
('g.exist', 'TEST NOM', 'TEST PRENOM', 'test@test.com', 'TEST ADRESSE', '$2a$10$B8xt8lvnQGfuNnDFIQRGrO.jJP2Yk62P3GZsTQnzxNhuJ8ITKp9aW\r\n', b'1', 'CLIENT', '1010101010'),
('g.pasdecompte', 'TEST NOM', 'TEST PRENOM', 'test@test.com', 'TEST ADRESSE', '$2a$10$ZszuL1ZGWeUQ5TBJ4T.9ou0ObeoQhI92l8tmddRrcxhhYUcuYPuGe\r\n', b'1', 'CLIENT', '5544554455'),
('j.doe1', 'Doe', 'Jane', 'jane.doe@gmail.fr', '456, grand boulevard, Brest', '$2a$10$msDI/BNH7Q2buWmWg1fyE.94tJLsOS3UjCZRK6qHKSO3/kw10Q5Bq\r\n', b'1', 'CLIENT', '1234567890'),
('j.doe2', 'Doe', 'John', 'john.doe@gmail.fr', '457, grand boulevard, Perpignan', '$2a$10$msDI/BNH7Q2buWmWg1fyE.94tJLsOS3UjCZRK6qHKSO3/kw10Q5Bq\r\n', b'1', 'CLIENT', '0000000001');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`numeroCompte`),
  ADD KEY `index_userClient` (`userId`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `numClient_UNIQUE` (`numClient`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `compte`
--
ALTER TABLE `compte`
  ADD CONSTRAINT `fk_Compte_userId` FOREIGN KEY (`userId`) REFERENCES `utilisateur` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
