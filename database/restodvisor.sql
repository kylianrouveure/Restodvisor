-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 08 nov. 2023 à 09:36
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
-- Base de données : `restodvisor`
--

-- --------------------------------------------------------

--
-- Structure de la table `etablissement`
--

CREATE TABLE `etablissement` (
  `Id_eta` int(11) NOT NULL,
  `nom_eta` varchar(250) NOT NULL,
  `adresse_eta` varchar(250) NOT NULL,
  `code_postale_eta` varchar(250) NOT NULL,
  `numero_eta` varchar(250) NOT NULL,
  `Id_type_eta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etablissement`
--

INSERT INTO `etablissement` (`Id_eta`, `nom_eta`, `adresse_eta`, `code_postale_eta`, `numero_eta`, `Id_type_eta`) VALUES
(1, 'La Mère Léa.', '1 Rue Hugues Guerin', '69008', '789539111', 2),
(2, 'L\'Acteur.', '2 Rue Hugues Guerin', '69008', '789539112', 2),
(3, 'La Mère Brazier.', '3 Rue Hugues Guerin', '69008', '789539113', 1),
(4, 'Bouchon Tupin.', '4 Rue Hugues Guerin', '69008', '789539114', 1),
(5, 'L\'Auberge du Pont de Collonges.', '5 Rue Hugues Guerin', '69008', '789539115', 2),
(6, 'La Cuisinerie.', '6 Rue Hugues Guerin', '69008', '789539116', 2),
(7, 'Les Apothicaires.', '7 Rue Hugues Guerin', '69008', '789539117', 1),
(8, 'La Table Wei.', '8 Rue Hugues Guerin', '69008', '789539118', 1),
(9, 'Chez Hugon', '9 Rue Hugues Guerin', '69008', '789539119', 1),
(10, 'L\'instant', '10 Rue Hugues Guerin', '69008', '789539120', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `etablissement`
--
ALTER TABLE `etablissement`
  ADD PRIMARY KEY (`Id_eta`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `etablissement`
--
ALTER TABLE `etablissement`
  MODIFY `Id_eta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
