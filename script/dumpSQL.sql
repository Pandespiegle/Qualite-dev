-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 16 nov. 2023 à 15:35
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
-- Base de données : `java`
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
('AB7328887341', 'client2', -97, 'AVEC', 123),
('BD4242424242', 'client1', 150, 'SANS', NULL),
('FF5050500202', 'client1', 705, 'SANS', NULL),
('IO1010010001', 'client2', 6868, 'SANS', NULL),
('LA1021931215', 'client1', 165, 'SANS', NULL),
('MD8694030938', 'client1', 180, 'SANS', NULL),
('PP1285735733', 'a', 37, 'SANS', NULL),
('TD0398455576', 'client2', 34, 'AVEC', 700),
('XD1829451029', 'client2', -93, 'AVEC', 100),
('XX7788778877', 'client2', 90, 'SANS', NULL),
('XX9999999999', 'client2', 0, 'AVEC', 500);

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
  `numClient` varchar(45) DEFAULT NULL,
  `errorLogin` int(11) NOT NULL DEFAULT 0,
  `recupToken` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`userId`, `nom`, `prenom`, `email`, `adresse`, `userPwd`, `male`, `type`, `numClient`, `errorLogin`, `recupToken`) VALUES
('a', 'a', 'a', 'a.a@gmail.com', 'a', '$2a$10$WEIrKca2yi4z0aF5ReF9dubm2gtt/XDMCNxvUOw2a/BGMQKmw.mTC', b'1', 'MANAGER', NULL, 0, ''),
('a.lidell1', 'Lidell', 'Alice', 'alice.lidell@gmail.com', '789, grande rue, Metz', '$2a$10$H9lUPbRaRxowKslcgbiUo.kB2CRxBGB2QxLOjLo9cNiVu8eV1Tis.', b'1', 'CLIENT', '9865432100', 0, ''),
('admin', 'Smith', 'Joe', 'joe.smith@gmail.com', '123, grande rue, Metz', '$2a$10$AxpGpzLYT7y5vM6Bj6SiUOnXBIYilXyUx3hPMwcSVnL7Gpk9mWwKK', b'1', 'MANAGER', '', 0, ''),
('client1', 'client1', 'Jane', 'jane@hotmail.fr', '45, grand boulevard, Brest', '$2a$10$uODYUq3gR5jzpf/hGWQR6OTT7vkbol0JFX6zCZ469VhlKy/XkPgs6', b'1', 'CLIENT', '123456789', 0, ''),
('client2', 'client2', 'Jane', 'jane@orange.fr', '45, grand boulevard, Brest', '$2a$10$DuO1vfkcfoos6rx9ANBhVOVW1CzstA3dw29mjlu7GH9LR6P2lyS7G', b'1', 'CLIENT', '123456788', 3, ''),
('t.roth1', 'Roth', 'ThÃ©o', 'roththeo@hotmail.com', 'Metz', '$2a$10$pgvlaeXSqGWwrd4Kl0.39esTkAL8tU5iI2Ge3PsRMJ6iYlLi22.pu', b'1', 'CLIENT', '1000000001', 0, '-3zTi7HKJE2n_limKoMOG09s8QKWGpVRvymlPppiBQE1xSkGnZefECxIeUZV8Hek6E4');

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
