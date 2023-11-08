-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 08 nov. 2023 à 15:17
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
-- Structure de la table `aliments`
--

CREATE TABLE `aliments` (
  `ID_aliment` int(3) NOT NULL,
  `Nom_aliment` varchar(65) DEFAULT NULL,
  `ID_type_allergene` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `aliments`
--

INSERT INTO `aliments` (`ID_aliment`, `Nom_aliment`, `ID_type_allergene`) VALUES
(1, 'Gin', 10),
(2, 'Vodka', 0),
(3, 'Vermouth', 1),
(4, 'Olive', 3),
(5, 'Citron vert', 4),
(6, 'Sel', 3),
(7, 'Rhum', 1),
(8, 'Menthe', 10),
(9, 'Sucre', 9),
(10, 'Jus de citron', 7),
(11, 'Curaçao bleu', 7),
(12, 'Limonade', 8),
(13, 'Cachaça', 1),
(14, 'Lait de coco', 6),
(15, 'Jus d\'ananas', 4),
(16, 'Glace pilée', 0),
(17, 'Tequila', 5),
(18, 'Jus de pamplemousse', 6),
(19, 'Soda au pamplemousse', 2),
(20, 'Vodka', 4),
(21, 'Cointreau', 4),
(22, 'Jus de canneberge', 1),
(23, 'Whisky', 3),
(24, 'Angostura bitters', 6),
(25, 'Zeste d\'orange', 6),
(26, 'Zeste de citron', 3),
(27, 'Martini', 2),
(28, 'Margarita', 8),
(29, 'Mojito', 9),
(30, 'Whisky sour', 4),
(31, 'Caipirinha', 9),
(32, 'Piña colada', 0),
(33, 'Tequila sunrise', 0),
(34, 'Cosmopolitan', 0),
(35, 'Old Fashioned', 8),
(36, 'Manhattan', 2),
(37, 'Daiquiri', 4),
(38, 'Blue Lagoon', 3),
(39, 'Long Island Iced Tea', 0),
(40, 'Sazerac', 3),
(41, 'Paloma', 6),
(42, 'Mint Julep', 5),
(43, 'White Russian', 5),
(44, 'Canard laqué', 10),
(45, 'Crêpes', 10),
(46, 'Légumes marinés', 8),
(47, 'Sauce hoisin', 8),
(48, 'Nouilles', 7),
(49, 'Viande/fruit de mer', 4),
(50, 'Dim sum', 6),
(51, 'Raviolis vapeur', 6),
(52, 'Boulettes', 7),
(53, 'Pâtisseries farcies', 1),
(54, 'Moussaka', 10),
(55, 'Aubergines', 7),
(56, 'Viande hachée', 3),
(57, 'Tomates', 5),
(58, 'Béchamel', 10),
(59, 'Souvlaki', 6),
(60, 'Pain pita', 7),
(61, 'Légumes', 4),
(62, 'Sauce tzatziki', 4),
(63, 'Pâtes', 4),
(64, 'Spaghetti', 7),
(65, 'Penne', 7),
(66, 'Fettuccine', 7),
(67, 'Pizza', 0),
(68, 'Pâte à pizza', 7),
(69, 'Sauce tomate', 1),
(70, 'Fromage', 0),
(71, 'Ingrédients variés', 2),
(72, 'Antipasti', 3),
(73, 'Olives', 6),
(74, 'Fromages', 0),
(75, 'Charcuteries', 6),
(76, 'Légumes marinés', 3),
(77, 'Tiramisu', 8),
(78, 'Biscuits imbibés de café', 0),
(79, 'Mascarpone', 0),
(80, 'Cacao en poudre', 0),
(81, 'Sushi', 9),
(82, 'Boulettes de riz vinaigré', 8),
(83, 'Poisson cru', 7),
(84, 'Légumes', 1),
(85, 'Gingembre mariné', 8),
(86, 'Sauce soja', 5),
(87, 'Wasabi', 6),
(88, 'Sashimi', 5),
(89, 'Tranches fines de poisson cru', 1),
(90, 'Ramen', 6),
(91, 'Soupe de nouilles', 4),
(92, 'Garnitures diverses (porc, œufs, légumes)', 10),
(93, 'Poulet Tempura', 0),
(94, 'Morceaux de poulet enrobés de pâte à tempura, frits', 2),
(95, 'Poulet Curry', 9),
(96, 'Poulet', 6),
(97, 'Sauce épicée au curry', 9),
(98, 'Poulet Tandoori', 7),
(99, 'Morceaux de poulet marinés dans une sauce au yaourt et aux épices', 6),
(100, 'Cuits dans un four tandoor', 10),
(101, 'Naan', 7),
(102, 'Pain plat indien cuit dans un four tandoor', 5),
(103, 'Coq au vin', 9),
(104, 'Poulet mijoté dans du vin rouge', 5),
(105, 'Champignons', 4),
(106, 'Oignons', 8),
(107, 'Lardons', 10),
(108, 'Boeuf bourguignon', 10),
(109, 'Bœuf mijoté dans du vin rouge', 3),
(110, 'Légumes', 9),
(111, 'Herbes', 7),
(112, 'Escargots', 2),
(113, 'Escargots de terre cuits au beurre', 5),
(114, 'À l\'ail', 7),
(115, 'Aux herbes', 3),
(116, 'Servis dans leur coquille', 4),
(117, 'Tacos', 7),
(118, 'Tortillas', 1),
(119, 'Viande (bœuf, porc, poulet)', 4),
(120, 'Légumes', 6),
(121, 'Sauce', 0),
(122, 'Enchiladas', 1),
(123, 'Tortillas farcies', 8),
(124, 'Viande', 9),
(125, 'Fromage', 7),
(126, 'Haricots', 10),
(127, 'Sauce', 5),
(128, 'Guacamole', 3),
(129, 'Avocat', 9),
(130, 'Tomate', 2),
(131, 'Oignon', 10),
(132, 'Coriandre', 0),
(133, 'Jus de citron vert', 8),
(134, 'Épices', 6);

-- --------------------------------------------------------

--
-- Structure de la table `allergene`
--

CREATE TABLE `allergene` (
  `ID_allergène` int(2) NOT NULL,
  `Nom_allergène` varchar(44) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `allergene`
--

INSERT INTO `allergene` (`ID_allergène`, `Nom_allergène`) VALUES
(1, 'Sans allergène'),
(2, 'Gluten'),
(3, 'Lactose'),
(4, 'Œufs'),
(5, 'Arachides'),
(6, 'Noix (amandes, noix de cajou, noix, etc.)'),
(7, 'Soja'),
(8, 'Poisson'),
(9, 'Crustacés (crevettes, crabes, homards, etc.)'),
(10, 'Sésame');

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `id_avis` int(2) NOT NULL,
  `avis` varchar(986) DEFAULT NULL,
  `note` int(1) DEFAULT NULL,
  `id_eta` int(1) DEFAULT NULL,
  `id_user` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `avis`
--

INSERT INTO `avis` (`id_avis`, `avis`, `note`, `id_eta`, `id_user`) VALUES
(1, 'Très bon', 4, 2, 12),
(2, 'Manque de convivialité', 2, 2, 13),
(3, 'Serveur incroyable', 5, 3, 15),
(4, 'Horrible service', 1, 1, 1),
(5, 'Pain absolument dégueulasse', 2, 6, 3),
(6, 'Attouchement par le serveur, je vais porter plainte !!!!!', 1, 3, 6),
(7, 'Bon vodka redbull', 5, 8, 4),
(8, 'Très bon bœuf bourguignon', 4, 6, 5),
(9, 'En soirée étudiante jeudi soir dans ce bar, nous avons été de surprise en surprise durant la soirée jusqu\'à aujourd\'hui (3 jours plus tard) Début de soirée, tout ce passe bien, (tester le shot du mois qui est très bon) On commence à boire tranquillement, les bières ne sont pas chères mais 30e le mètre de shots ? Excessif, mais certes ils sont bons, cependant, le goût reste très amère lorsque je vois mon compte en banque ajd et que je vois que j\'ai été débité 2 fois ! (le serveur m\'avait annoncé que le premier paiement n\'était pas passé.. À moi de réclamer le ticket d\'abandon, à lui le gros pourboire..) Chose la plus étonnante de la soirée.. Le patron veut littéralement se battre avec un de mes amis, heureusement que nous étions là pour les séparer.. Il nous refuse donc l\'entrée du bar alors que nous avions dépensé dans les 500e. Enfin bref, la qualité de l\'offre et l\'endroit rajoute une étoile, mais le service est minable, je déconseille fortement, je n\'y retournerai pas.', 1, 9, 4),
(10, 'Cool', 5, 3, 17);

-- --------------------------------------------------------

--
-- Structure de la table `etablissement`
--

CREATE TABLE `etablissement` (
  `ID_eta` int(2) NOT NULL,
  `Nom_eta` varchar(31) DEFAULT NULL,
  `Adresse_eta` varchar(20) DEFAULT NULL,
  `Code_postal_eta` int(5) DEFAULT NULL,
  `numero_eta` int(9) DEFAULT NULL,
  `ID_type` int(1) DEFAULT NULL,
  `Horaires` varchar(13) DEFAULT NULL,
  `id_specialites_plats` int(2) DEFAULT NULL,
  `capacite` int(3) DEFAULT NULL,
  `id_user_proprio` int(2) DEFAULT NULL,
  `GPS_X` decimal(8,6) DEFAULT NULL,
  `GPS_Y` decimal(7,6) DEFAULT NULL,
  `mobilité reduite` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `etablissement`
--

INSERT INTO `etablissement` (`ID_eta`, `Nom_eta`, `Adresse_eta`, `Code_postal_eta`, `numero_eta`, `ID_type`, `Horaires`, `id_specialites_plats`, `capacite`, `id_user_proprio`, `GPS_X`, `GPS_Y`, `mobilité reduite`) VALUES
(1, 'La MÃ¨re LÃ©a.', '1 Rue Hugues Guerin', 69008, 789539111, 2, '10h30 - 22h30', 14, 600, 5, 45.716329, 4.992807, 'Oui'),
(2, 'L\'Acteur.', '2 Rue Hugues Guerin', 69008, 789539112, 2, '11h30 - 14h30', 7, 400, 9, 45.730426, 4.884724, 'Oui'),
(3, 'La MÃ¨re Brazier.', '3 Rue Hugues Guerin', 69008, 789539113, 1, '11h00 - 22h00', 2, 300, 10, 45.781556, 4.865206, 'Oui'),
(4, 'Bouchon Tupin.', '4 Rue Hugues Guerin', 69008, 789539114, 1, '18h30 - 23h30', 4, 800, 16, 45.749734, 4.916659, 'Oui'),
(5, 'L\'Auberge du Pont de Collonges.', '5 Rue Hugues Guerin', 69008, 789539115, 2, '20h00 - 00h00', 4, 500, 18, 45.707334, 4.811276, 'Oui'),
(6, 'La Cuisinerie.', '6 Rue Hugues Guerin', 69008, 789539116, 2, '10h30 - 22h30', 16, 100, 20, 45.788806, 4.873708, 'Non'),
(7, 'Les Apothicaires.', '7 Rue Hugues Guerin', 69008, 789539117, 1, '11h30 - 21h30', 16, 300, 20, 45.782974, 4.960187, 'Non'),
(8, 'La Table Wei.', '8 Rue Hugues Guerin', 69008, 789539118, 1, '11h30 - 21h30', 9, 400, 9, 45.755491, 4.919716, 'Non'),
(9, 'Chez Hugon', '9 Rue Hugues Guerin', 69008, 789539119, 1, '11h30 - 14h30', 8, 100, 10, 45.757289, 4.867039, 'Oui'),
(10, 'L\'instant', '10 Rue Hugues Guerin', 69008, 789539120, 1, '18h30 - 23h30', 8, 700, 16, 45.720675, 4.911209, 'Oui');

-- --------------------------------------------------------

--
-- Structure de la table `eta_plats`
--

CREATE TABLE `eta_plats` (
  `ID_eta` int(2) DEFAULT NULL,
  `ID_plat` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `eta_plats`
--

INSERT INTO `eta_plats` (`ID_eta`, `ID_plat`) VALUES
(3, 7),
(4, 46),
(1, 21),
(6, 17),
(5, 41),
(1, 45),
(2, 20),
(10, 16),
(1, 29),
(1, 9),
(3, 21),
(4, 38),
(3, 33),
(10, 9),
(5, 31),
(5, 30),
(9, 30),
(7, 35),
(5, 14),
(4, 17),
(2, 14),
(9, 15),
(9, 12),
(10, 17),
(4, 41),
(6, 21),
(6, 36),
(10, 11),
(6, 30),
(6, 26),
(7, 26),
(3, 14),
(4, 2),
(8, 42),
(5, 19),
(1, 41),
(4, 22),
(4, 7),
(7, 14),
(2, 5),
(9, 35),
(3, 38),
(5, 26),
(1, 22),
(6, 13),
(9, 7),
(6, 42),
(1, 13),
(4, 25),
(5, 34),
(6, 4),
(3, 19),
(10, 30),
(1, 31),
(6, 19),
(7, 43),
(5, 38),
(5, 18),
(10, 45),
(6, 33),
(6, 41),
(1, 24),
(2, 21),
(2, 36),
(6, 39),
(10, 35),
(5, 4),
(4, 9),
(9, 16),
(7, 44),
(10, 32),
(10, 43),
(2, 23),
(8, 39),
(4, 20),
(8, 14),
(8, 43),
(6, 38),
(2, 8),
(3, 17),
(4, 12),
(8, 2),
(7, 12),
(6, 45),
(6, 20),
(5, 33),
(8, 32),
(8, 30),
(3, 4),
(10, 36),
(3, 22),
(1, 12),
(10, 8),
(9, 9),
(7, 38),
(9, 29),
(5, 22),
(10, 46),
(8, 46),
(2, 31),
(1, 36),
(9, 27),
(8, 27),
(4, 5),
(4, 36),
(5, 12),
(6, 31),
(10, 3),
(4, 37),
(1, 7),
(3, 29),
(6, 24),
(7, 8),
(10, 29),
(9, 23),
(7, 17),
(9, 18),
(9, 44),
(8, 4),
(6, 18),
(3, 28),
(5, 23),
(5, 44),
(3, 37),
(6, 37),
(2, 27),
(1, 15),
(7, 18),
(4, 4),
(3, 41),
(7, 3),
(1, 2),
(9, 26),
(3, 34),
(8, 23),
(7, 22),
(8, 13),
(1, 40),
(8, 25),
(5, 15),
(8, 19),
(7, 33),
(1, 16),
(8, 21),
(6, 5),
(7, 7),
(6, 46),
(9, 41),
(7, 11),
(10, 20),
(2, 10),
(6, 29),
(8, 6),
(2, 11),
(4, 31),
(9, 42),
(8, 11),
(8, 38),
(2, 1),
(2, 7),
(7, 10),
(1, 1),
(3, 24),
(1, 20),
(3, 12),
(3, 46),
(1, 39),
(4, 43),
(7, 6),
(8, 29),
(4, 32),
(3, 43),
(8, 37),
(2, 30);

-- --------------------------------------------------------

--
-- Structure de la table `plats`
--

CREATE TABLE `plats` (
  `Id_plat_boisson` int(2) NOT NULL,
  `Nom_plat_boisson` varchar(20) DEFAULT NULL,
  `Id_type_plat` int(1) DEFAULT NULL,
  `Prix` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `plats`
--

INSERT INTO `plats` (`Id_plat_boisson`, `Nom_plat_boisson`, `Id_type_plat`, `Prix`) VALUES
(1, 'Canard laqué', 1, 22),
(2, 'Nouilles sautées', 1, 38),
(3, 'Dim sum', 1, 27),
(4, 'Moussaka', 2, 29),
(5, 'Souvlaki', 2, 50),
(6, 'Gyros', 1, 22),
(7, 'Pâtes', 1, 17),
(8, 'Pizza', 1, 41),
(9, 'Antipasti', 1, 35),
(10, 'Tiramisu', 3, 38),
(11, 'Sushi', 1, 28),
(12, 'Pates', 1, 10),
(13, 'Sashimi', 1, 19),
(14, 'Ramen', 2, 22),
(15, 'Poulet Tempura', 1, 10),
(16, 'Poulet Curry', 1, 15),
(17, 'Poulet Tandoori', 1, 11),
(18, 'Naan', 2, 40),
(19, 'Coq au vin', 1, 18),
(20, 'Boeuf bourguignon', 1, 26),
(21, 'Escargots', 2, 12),
(22, 'Tacos', 2, 20),
(23, 'Enchiladas', 2, 16),
(24, 'Guacamole', 2, 18),
(25, 'Margarita', 4, 20),
(26, 'Viandes grillées', 1, 21),
(27, 'Martini', 4, 5),
(28, 'Mojito', 4, 8),
(29, 'Whisky sour', 4, 5),
(30, 'Caipirinha', 4, 10),
(31, 'Piña colada', 4, 13),
(32, 'Tequila sunrise', 4, 5),
(33, 'Cosmopolitan', 4, 14),
(34, 'Old Fashioned', 4, 15),
(35, 'Manhattan', 4, 6),
(36, 'Daiquiri', 4, 5),
(37, 'Blue Lagoon', 4, 5),
(38, 'Long Island Iced Tea', 4, 9),
(39, 'Sazerac', 4, 11),
(40, 'Paloma', 4, 12),
(41, 'Mint Julep', 4, 12),
(42, 'White Russian', 4, 14),
(43, 'Flan', 3, 4),
(44, 'Monaco', 4, 8),
(45, 'Whysky sec', 4, 10),
(46, 'Rhum vodka', 4, 12);

-- --------------------------------------------------------

--
-- Structure de la table `plats_aliments`
--

CREATE TABLE `plats_aliments` (
  `ID_plats` int(2) DEFAULT NULL,
  `ID_Aliments` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `plats_aliments`
--

INSERT INTO `plats_aliments` (`ID_plats`, `ID_Aliments`) VALUES
(39, 79),
(1, 95),
(10, 36),
(10, 4),
(29, 47),
(16, 131),
(30, 81),
(10, 109),
(10, 96),
(11, 102),
(35, 63),
(41, 51),
(23, 95),
(26, 63),
(5, 72),
(22, 25),
(11, 84),
(7, 46),
(7, 40),
(25, 117),
(10, 13),
(37, 39),
(2, 102),
(27, 111),
(5, 73),
(15, 44),
(1, 110),
(23, 2),
(42, 98),
(35, 104),
(12, 70),
(38, 96),
(25, 14),
(4, 66),
(39, 83),
(38, 122),
(17, 37),
(28, 77),
(23, 96),
(16, 123),
(20, 133),
(21, 125),
(41, 22),
(34, 77),
(35, 32),
(19, 47),
(1, 109),
(14, 116),
(15, 11),
(40, 6),
(24, 111),
(8, 36),
(32, 38),
(37, 62),
(9, 69),
(29, 122),
(41, 121),
(4, 110),
(10, 76),
(40, 46),
(16, 64),
(3, 69),
(33, 110),
(30, 10),
(33, 77),
(25, 118),
(26, 70),
(20, 83),
(8, 106),
(34, 93),
(1, 126),
(23, 38),
(3, 78),
(19, 44),
(6, 112),
(43, 77),
(6, 37),
(46, 124),
(44, 109),
(37, 5),
(45, 98),
(36, 99),
(34, 13),
(30, 53),
(24, 63),
(29, 2),
(44, 59),
(33, 69),
(36, 1),
(44, 123),
(18, 118),
(23, 35),
(1, 7),
(9, 21),
(18, 115),
(39, 20),
(37, 82),
(43, 20),
(42, 103),
(1, 2),
(31, 44),
(15, 80),
(32, 5),
(30, 114),
(20, 85),
(21, 24),
(21, 3),
(20, 89),
(29, 126),
(7, 121),
(16, 65),
(2, 69),
(24, 65),
(44, 3),
(27, 7),
(38, 24),
(38, 62),
(16, 121),
(40, 10),
(31, 127),
(36, 92),
(7, 12),
(8, 40),
(23, 79),
(46, 53),
(3, 133),
(18, 34),
(4, 32),
(42, 84),
(44, 85),
(36, 11),
(10, 131),
(38, 56),
(12, 117),
(31, 33),
(31, 97),
(15, 21),
(13, 22),
(34, 6),
(24, 109),
(38, 121),
(26, 49),
(12, 108),
(4, 38),
(2, 27),
(16, 109),
(44, 16),
(35, 62),
(45, 117),
(20, 68),
(25, 28),
(14, 37),
(28, 127),
(5, 125),
(13, 55),
(8, 89),
(6, 93),
(36, 42),
(36, 61),
(1, 83),
(6, 119),
(32, 24),
(43, 95),
(3, 43),
(15, 130),
(5, 82),
(16, 52),
(13, 69),
(35, 132),
(42, 55),
(33, 133),
(22, 12),
(21, 132),
(9, 81),
(12, 80),
(30, 123),
(28, 57),
(6, 25),
(21, 97),
(26, 83),
(27, 81),
(20, 45),
(22, 125),
(23, 52),
(29, 86),
(20, 116),
(6, 66),
(42, 93),
(5, 50),
(3, 45),
(21, 120),
(18, 54),
(13, 31),
(8, 68),
(43, 87),
(25, 12),
(22, 73),
(42, 63),
(31, 122),
(30, 69),
(33, 107),
(31, 99),
(9, 4),
(1, 56),
(46, 27),
(37, 121),
(11, 95),
(45, 92),
(5, 62),
(39, 109),
(33, 33),
(8, 42),
(23, 41),
(7, 8),
(6, 88),
(45, 120),
(30, 48),
(30, 85),
(28, 37),
(43, 45),
(33, 72),
(25, 51),
(37, 93),
(33, 15),
(21, 72),
(27, 83),
(29, 92),
(4, 86),
(24, 51),
(14, 6),
(27, 79),
(35, 91),
(35, 108),
(25, 24),
(12, 127),
(25, 80),
(19, 56),
(41, 83),
(36, 82),
(11, 45),
(12, 76),
(12, 75),
(1, 92),
(13, 33),
(25, 113),
(43, 102),
(44, 134),
(15, 132),
(40, 18),
(46, 64),
(12, 8),
(37, 55),
(32, 44),
(40, 98),
(29, 95),
(31, 128),
(42, 104),
(32, 132),
(31, 115),
(45, 32),
(17, 70),
(26, 77),
(19, 81),
(32, 18),
(6, 33),
(20, 19),
(8, 41),
(17, 63),
(29, 4),
(26, 75),
(8, 112),
(33, 86),
(23, 89),
(24, 121),
(1, 39),
(37, 127),
(36, 32),
(41, 103),
(19, 51),
(42, 45),
(15, 87),
(14, 24),
(19, 5),
(20, 105),
(11, 59),
(14, 56),
(30, 23),
(17, 129),
(35, 86),
(33, 63),
(26, 59),
(44, 90),
(22, 3),
(45, 16),
(36, 40),
(44, 99),
(3, 42),
(34, 30),
(14, 97),
(4, 95),
(25, 31),
(43, 80),
(18, 46),
(38, 88),
(4, 60),
(14, 12),
(39, 49),
(19, 64),
(41, 58),
(13, 42),
(27, 50),
(15, 56),
(23, 6),
(33, 98),
(40, 49),
(26, 2),
(21, 12),
(35, 98),
(36, 134),
(28, 73),
(34, 72),
(29, 19),
(43, 81),
(34, 57),
(45, 26),
(44, 102),
(38, 100),
(11, 67),
(11, 114),
(35, 75),
(19, 10),
(19, 34),
(39, 87),
(25, 48),
(8, 63),
(29, 120),
(29, 129),
(8, 45),
(31, 23),
(27, 102),
(12, 41),
(41, 104),
(26, 76),
(10, 121),
(13, 44),
(45, 69),
(44, 89),
(37, 49),
(13, 96),
(29, 68),
(46, 32),
(28, 115),
(10, 34),
(45, 51),
(25, 93),
(27, 62),
(6, 95),
(16, 126),
(35, 14),
(18, 7),
(21, 44),
(4, 17),
(14, 1),
(5, 61),
(24, 113),
(37, 98),
(12, 40),
(21, 126),
(26, 45),
(13, 126),
(20, 50),
(22, 6),
(9, 63),
(29, 69),
(40, 43),
(41, 25),
(4, 35),
(5, 66),
(36, 43),
(12, 27),
(25, 95),
(7, 78),
(46, 110),
(29, 14),
(31, 26),
(16, 56),
(4, 124),
(42, 56),
(18, 38),
(36, 60),
(9, 58),
(17, 20),
(18, 79),
(27, 56),
(12, 82),
(39, 11),
(40, 67),
(20, 3),
(28, 129),
(39, 112),
(13, 81),
(2, 80),
(43, 10),
(9, 26),
(28, 34),
(18, 98),
(10, 81),
(21, 106),
(16, 4),
(27, 31),
(6, 83),
(13, 94),
(45, 132),
(38, 64),
(2, 47),
(32, 68),
(25, 63),
(32, 26),
(22, 88),
(41, 86),
(4, 16),
(34, 62),
(40, 129),
(6, 79),
(12, 54),
(18, 109),
(15, 107),
(27, 133),
(5, 32),
(15, 52),
(46, 14),
(7, 18),
(1, 75),
(45, 134),
(21, 39),
(40, 94),
(6, 97),
(7, 29),
(23, 56),
(4, 48),
(9, 28),
(33, 71),
(45, 115),
(32, 109),
(21, 9),
(1, 80),
(5, 29),
(28, 55),
(37, 24),
(16, 30),
(12, 57),
(28, 87),
(25, 111),
(19, 54),
(7, 82),
(32, 4),
(17, 65),
(15, 43),
(2, 90),
(4, 74),
(23, 9),
(41, 74),
(9, 94),
(46, 132),
(16, 74),
(15, 125),
(35, 111),
(11, 28),
(12, 22),
(22, 105),
(16, 35),
(11, 122),
(43, 84),
(7, 114),
(45, 61),
(30, 57),
(7, 81),
(5, 107),
(24, 38),
(2, 18),
(20, 115),
(33, 66),
(43, 134),
(32, 100),
(36, 12),
(32, 113),
(30, 74),
(43, 83),
(13, 124),
(22, 124),
(43, 40),
(20, 5),
(29, 17),
(4, 104),
(35, 45),
(7, 129),
(40, 83),
(20, 21),
(28, 27),
(34, 11),
(29, 134),
(44, 17),
(25, 22),
(21, 73),
(23, 25),
(43, 132),
(40, 62),
(28, 26),
(6, 118),
(45, 54),
(31, 2),
(26, 134),
(9, 131),
(15, 28),
(28, 42),
(22, 33),
(16, 117),
(17, 61),
(6, 24),
(38, 1),
(46, 2),
(10, 60),
(31, 21),
(37, 129),
(6, 22),
(41, 129),
(1, 44),
(45, 99),
(32, 95),
(11, 55),
(37, 18),
(6, 65),
(31, 63),
(36, 96),
(39, 100),
(31, 68),
(17, 114),
(35, 123),
(24, 92),
(29, 76),
(5, 110),
(43, 78),
(22, 77),
(23, 20),
(10, 72),
(9, 125),
(24, 107),
(7, 45),
(8, 25),
(22, 54),
(34, 95),
(2, 8),
(3, 36),
(35, 25),
(45, 11),
(46, 29),
(34, 89),
(3, 104),
(40, 105),
(31, 79),
(17, 53),
(34, 29),
(38, 82),
(27, 6),
(4, 123),
(5, 95),
(25, 128),
(30, 61),
(37, 1),
(43, 16),
(11, 63),
(10, 31),
(13, 63),
(18, 128),
(11, 75),
(2, 17),
(17, 13),
(43, 39),
(31, 74),
(41, 77),
(19, 95),
(2, 58),
(28, 40),
(21, 92),
(16, 67),
(39, 85),
(15, 58),
(33, 25),
(29, 54),
(18, 87),
(10, 41),
(15, 8),
(15, 134),
(42, 87),
(4, 50),
(45, 10),
(9, 12),
(33, 54),
(35, 101),
(44, 26),
(41, 78),
(43, 22),
(44, 53),
(16, 91),
(29, 70),
(5, 113),
(21, 1),
(3, 76),
(7, 68),
(1, 29),
(24, 31),
(41, 124),
(27, 95),
(29, 16),
(29, 83),
(21, 61),
(9, 46),
(14, 59),
(19, 127),
(41, 128),
(44, 61),
(36, 41),
(17, 98),
(11, 132),
(8, 32),
(18, 102),
(35, 43),
(29, 72),
(18, 53),
(35, 122),
(8, 128),
(19, 52),
(22, 79),
(1, 132),
(36, 119),
(11, 129),
(1, 127),
(37, 56),
(37, 8),
(46, 90),
(26, 30),
(22, 29),
(3, 18),
(35, 18),
(16, 112),
(30, 119),
(20, 100),
(2, 85),
(8, 113),
(30, 3),
(32, 49),
(19, 119),
(13, 92),
(33, 132),
(45, 38),
(5, 84),
(5, 124),
(30, 1),
(16, 127),
(42, 25),
(32, 89),
(32, 104),
(23, 29),
(18, 39),
(4, 108),
(36, 28),
(46, 96),
(46, 36),
(29, 65),
(44, 64),
(41, 48),
(14, 88),
(45, 108),
(6, 127),
(2, 37),
(3, 107),
(13, 7),
(16, 94),
(11, 51),
(17, 57),
(14, 99),
(24, 124),
(35, 37),
(41, 100),
(5, 76),
(10, 35),
(12, 48),
(10, 51),
(21, 36),
(42, 111),
(32, 81),
(17, 25),
(21, 128),
(14, 8),
(19, 22),
(43, 91),
(33, 42),
(4, 76),
(45, 66),
(30, 72),
(11, 80),
(23, 107),
(20, 52),
(23, 15),
(15, 46),
(5, 94);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id_reservation` int(2) NOT NULL,
  `date` varchar(10) DEFAULT NULL,
  `heure` varchar(5) DEFAULT NULL,
  `nombre_ind` int(1) DEFAULT NULL,
  `id_etat_resa` int(2) DEFAULT NULL,
  `id_user_resa` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id_reservation`, `date`, `heure`, `nombre_ind`, `id_etat_resa`, `id_user_resa`) VALUES
(1, '05/07/2023', '12:10', 2, 7, 11),
(2, '06/07/2023', '13:10', 3, 1, 8),
(3, '07/07/2023', '12:10', 2, 10, 18),
(4, '08/07/2023', '13:10', 4, 1, 3),
(5, '09/07/2023', '12:10', 2, 5, 1),
(6, '10/07/2023', '13:10', 5, 2, 8),
(7, '11/07/2023', '12:10', 3, 9, 10),
(8, '12/07/2023', '13:10', 5, 2, 7),
(9, '13/07/2023', '20:10', 6, 4, 10),
(10, '14/07/2023', '21:10', 3, 4, 7),
(11, '15/07/2023', '12:10', 4, 2, 15),
(12, '16/07/2023', '13:10', 2, 1, 17),
(13, '17/07/2023', '12:10', 6, 3, 11),
(14, '18/07/2023', '13:10', 7, 9, 1),
(15, '19/07/2023', '12:10', 3, 6, 17),
(16, '20/07/2023', '13:10', 4, 8, 9),
(17, '21/07/2023', '12:10', 1, 4, 16),
(18, '22/07/2023', '13:10', 5, 10, 15),
(19, '23/07/2023', '12:10', 3, 4, 9),
(20, '24/07/2023', '13:10', 2, 8, 19);

-- --------------------------------------------------------

--
-- Structure de la table `spécialités`
--

CREATE TABLE `spécialités` (
  `Id_specialités` int(2) NOT NULL,
  `Nom_spécialité` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `spécialités`
--

INSERT INTO `spécialités` (`Id_specialités`, `Nom_spécialité`) VALUES
(1, 'Chinois'),
(2, 'Grec'),
(3, 'Italien'),
(4, 'Japonais'),
(5, 'Indien'),
(6, 'Français'),
(7, 'Mexicain'),
(8, 'Barbecue'),
(9, 'Vegan'),
(10, 'Vegetarien '),
(11, 'Cocktails'),
(12, 'Vins'),
(13, 'Irlandais'),
(14, 'Karaoké'),
(15, 'Tapas'),
(16, 'Whisky');

-- --------------------------------------------------------

--
-- Structure de la table `type_eta`
--

CREATE TABLE `type_eta` (
  `ID_type_eta` int(1) NOT NULL,
  `Nom_eta` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `type_eta`
--

INSERT INTO `type_eta` (`ID_type_eta`, `Nom_eta`) VALUES
(1, 'Bar'),
(2, 'Restaurant');

-- --------------------------------------------------------

--
-- Structure de la table `type_plats`
--

CREATE TABLE `type_plats` (
  `ID_type_plats` int(1) NOT NULL,
  `Type_plat` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `type_plats`
--

INSERT INTO `type_plats` (`ID_type_plats`, `Type_plat`) VALUES
(1, 'Plat'),
(2, 'Entree'),
(3, 'Dessert'),
(4, 'Boisson');

-- --------------------------------------------------------

--
-- Structure de la table `type_user`
--

CREATE TABLE `type_user` (
  `id_type_user` int(1) NOT NULL,
  `type_user` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `type_user`
--

INSERT INTO `type_user` (`id_type_user`, `type_user`) VALUES
(1, 'Client'),
(2, 'Restaurateur');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int(2) NOT NULL,
  `id_type_user` int(1) DEFAULT NULL,
  `nom_user` varchar(8) DEFAULT NULL,
  `prenom_user` varchar(7) DEFAULT NULL,
  `mail_user` varchar(28) DEFAULT NULL,
  `age_user` int(2) DEFAULT NULL,
  `mobile_user` int(9) DEFAULT NULL,
  `gps_x` varchar(9) DEFAULT NULL,
  `gps_y` varchar(9) DEFAULT NULL,
  `mobilite_reduite` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `id_type_user`, `nom_user`, `prenom_user`, `mail_user`, `age_user`, `mobile_user`, `gps_x`, `gps_y`, `mobilite_reduite`) VALUES
(1, 1, 'Martin', 'Emma', 'emmamartin@gmail.com', 20, 674732751, '49,063001', '4,341981', 'Oui'),
(2, 1, 'Dubois', 'Léa', 'maelysdubois123@yahoo.com', 42, 658120540, '48,374956', '-0,380053', 'Non'),
(3, 1, 'Beranrd', 'Lucas', 'nathanthomas789@yahoo.com', 64, 688650291, '44,644282', '-1,487261', 'Non'),
(4, 1, 'Thomas', 'Hugo', 'inessimon932@hotmail.com', 35, 729850170, '48,970098', '1,470314', 'Non'),
(5, 2, 'Robert', 'Chloé', 'chloeleroy754@gmail.com', 46, 752534756, '47,617908', '0,524959', 'Non'),
(6, 1, 'Petit', 'Camille', 'lucasmartinez256@example.com', 64, 628001713, '45,713167', '3,358311', 'Non'),
(7, 1, 'Richard', 'Nathan', 'hugorobert327@yahoo.com', 98, 730452419, '44,170568', '1,789004', 'Non'),
(8, 1, 'Moreau', 'Manon', 'lisalambert421@hotmail.com', 62, 617779141, '45,65813', '1,439749', 'Non'),
(9, 2, 'Laurent', 'Théo', 'camilledupont555@gmail.com', 24, 612649961, '49,130546', '1,71344', 'Non'),
(10, 2, 'Garcia', 'Inès', 'enzobernard876@example.com', 53, 678338513, '46,359261', '4,259464', 'Non'),
(11, 1, 'Martinez', 'Noé', 'emmanguyen678@hotmail.com', 53, 723012157, '48,765094', '4,244422', 'Non'),
(12, 1, 'Lefebvre', 'Lisa', 'tommorreau789@gmail.com', 24, 648292606, '49,968263', '3,883325', 'Non'),
(13, 1, 'Leroy', 'Enzo', 'jaderichard876@example.com', 54, 784088161, '44,424006', '-2,625958', 'Non'),
(14, 1, 'Simo ', 'Sarah', 'lolapetit234@yahoo.com', 75, 677615498, '47,707383', '-2,907977', 'Non'),
(15, 1, 'Mathieu', 'Jade', 'sarahgarcia111@gmail.com', 42, 722402583, '45,770542', '3,757591', 'Non'),
(16, 2, 'Lemoine', 'Louis', 'noemathieu789@example.com', 64, 759125150, '48,72009', '2,012423', 'Non'),
(17, 1, 'Durand', 'Maelys', 'theolefebvre555@hotmail.com', 35, 643292596, '44,55098', '-0,847703', 'Non'),
(18, 2, 'Dupont', 'Tom', 'manonlaurent432@gmail.com', 24, 759859834, '45,30821', '4,872884', 'Non'),
(19, 1, 'Lambert', 'Lola', 'ethandurand123@example.com', 46, 684679981, '46,075171', '2,54898', 'Non'),
(20, 2, 'Nguyen', 'Ethan', 'leamartin333@yahoo.com', 46, 606419987, '44,824783', '2,183356', 'Non');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `aliments`
--
ALTER TABLE `aliments`
  ADD PRIMARY KEY (`ID_aliment`);

--
-- Index pour la table `allergene`
--
ALTER TABLE `allergene`
  ADD PRIMARY KEY (`ID_allergène`);

--
-- Index pour la table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`id_avis`),
  ADD KEY `id_eta` (`id_eta`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `etablissement`
--
ALTER TABLE `etablissement`
  ADD PRIMARY KEY (`ID_eta`),
  ADD KEY `ID_type` (`ID_type`),
  ADD KEY `id_specialites_plats` (`id_specialites_plats`);

--
-- Index pour la table `eta_plats`
--
ALTER TABLE `eta_plats`
  ADD KEY `ID_eta` (`ID_eta`),
  ADD KEY `ID_plat` (`ID_plat`);

--
-- Index pour la table `plats`
--
ALTER TABLE `plats`
  ADD PRIMARY KEY (`Id_plat_boisson`),
  ADD KEY `Id_type_plat` (`Id_type_plat`);

--
-- Index pour la table `plats_aliments`
--
ALTER TABLE `plats_aliments`
  ADD KEY `ID_plats` (`ID_plats`),
  ADD KEY `ID_Aliments` (`ID_Aliments`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id_reservation`),
  ADD KEY `id_user_resa` (`id_user_resa`),
  ADD KEY `id_etat_resa` (`id_etat_resa`);

--
-- Index pour la table `spécialités`
--
ALTER TABLE `spécialités`
  ADD PRIMARY KEY (`Id_specialités`);

--
-- Index pour la table `type_eta`
--
ALTER TABLE `type_eta`
  ADD PRIMARY KEY (`ID_type_eta`);

--
-- Index pour la table `type_plats`
--
ALTER TABLE `type_plats`
  ADD PRIMARY KEY (`ID_type_plats`);

--
-- Index pour la table `type_user`
--
ALTER TABLE `type_user`
  ADD PRIMARY KEY (`id_type_user`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_type_user` (`id_type_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `aliments`
--
ALTER TABLE `aliments`
  MODIFY `ID_aliment` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT pour la table `allergene`
--
ALTER TABLE `allergene`
  MODIFY `ID_allergène` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `avis`
--
ALTER TABLE `avis`
  MODIFY `id_avis` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `etablissement`
--
ALTER TABLE `etablissement`
  MODIFY `ID_eta` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `plats`
--
ALTER TABLE `plats`
  MODIFY `Id_plat_boisson` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id_reservation` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `spécialités`
--
ALTER TABLE `spécialités`
  MODIFY `Id_specialités` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `type_eta`
--
ALTER TABLE `type_eta`
  MODIFY `ID_type_eta` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `type_plats`
--
ALTER TABLE `type_plats`
  MODIFY `ID_type_plats` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `type_user`
--
ALTER TABLE `type_user`
  MODIFY `id_type_user` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `avis`
--
ALTER TABLE `avis`
  ADD CONSTRAINT `avis_ibfk_1` FOREIGN KEY (`id_eta`) REFERENCES `etablissement` (`ID_eta`),
  ADD CONSTRAINT `avis_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `etablissement`
--
ALTER TABLE `etablissement`
  ADD CONSTRAINT `etablissement_ibfk_1` FOREIGN KEY (`ID_type`) REFERENCES `type_eta` (`ID_type_eta`),
  ADD CONSTRAINT `etablissement_ibfk_2` FOREIGN KEY (`id_specialites_plats`) REFERENCES `spécialités` (`Id_specialités`);

--
-- Contraintes pour la table `eta_plats`
--
ALTER TABLE `eta_plats`
  ADD CONSTRAINT `eta_plats_ibfk_1` FOREIGN KEY (`ID_eta`) REFERENCES `etablissement` (`ID_eta`),
  ADD CONSTRAINT `eta_plats_ibfk_2` FOREIGN KEY (`ID_plat`) REFERENCES `plats` (`Id_plat_boisson`);

--
-- Contraintes pour la table `plats`
--
ALTER TABLE `plats`
  ADD CONSTRAINT `plats_ibfk_1` FOREIGN KEY (`Id_type_plat`) REFERENCES `type_plats` (`ID_type_plats`);

--
-- Contraintes pour la table `plats_aliments`
--
ALTER TABLE `plats_aliments`
  ADD CONSTRAINT `plats_aliments_ibfk_1` FOREIGN KEY (`ID_plats`) REFERENCES `plats` (`Id_plat_boisson`),
  ADD CONSTRAINT `plats_aliments_ibfk_2` FOREIGN KEY (`ID_Aliments`) REFERENCES `aliments` (`ID_aliment`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`id_user_resa`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`id_etat_resa`) REFERENCES `etablissement` (`ID_eta`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_type_user`) REFERENCES `type_user` (`id_type_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
