-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 08 nov. 2023 à 13:37
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
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `id_avis` int(2) DEFAULT NULL,
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
  `1` int(2) DEFAULT NULL,
  `La Mère Léa.` varchar(31) DEFAULT NULL,
  `1 Rue Hugues Guerin` varchar(20) DEFAULT NULL,
  `69008` int(5) DEFAULT NULL,
  `789539111` int(9) DEFAULT NULL,
  `2` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `etablissement`
--

INSERT INTO `etablissement` (`1`, `La Mère Léa.`, `1 Rue Hugues Guerin`, `69008`, `789539111`, `2`) VALUES
(2, 'L\'Acteur.', '2 Rue Hugues Guerin', 69008, 789539112, 2),
(3, 'La Mère Brazier.', '3 Rue Hugues Guerin', 69008, 789539113, 1),
(4, 'Bouchon Tupin.', '4 Rue Hugues Guerin', 69008, 789539114, 1),
(5, 'L\'Auberge du Pont de Collonges.', '5 Rue Hugues Guerin', 69008, 789539115, 2),
(6, 'La Cuisinerie.', '6 Rue Hugues Guerin', 69008, 789539116, 2),
(7, 'Les Apothicaires.', '7 Rue Hugues Guerin', 69008, 789539117, 1),
(8, 'La Table Wei.', '8 Rue Hugues Guerin', 69008, 789539118, 1),
(9, 'Chez Hugon', '9 Rue Hugues Guerin', 69008, 789539119, 1),
(10, 'L\'instant', '10 Rue Hugues Guerin', 69008, 789539120, 1);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id_reservation` int(2) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `heure` varchar(5) DEFAULT NULL,
  `nombre_ind` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id_reservation`, `date`, `heure`, `nombre_ind`) VALUES
(1, '05/07/2023', '12:10', 2),
(2, '06/07/2023', '13:10', 3),
(3, '07/07/2023', '12:10', 2),
(4, '08/07/2023', '13:10', 4),
(5, '09/07/2023', '12:10', 2),
(6, '10/07/2023', '13:10', 5),
(7, '11/07/2023', '12:10', 3),
(8, '12/07/2023', '13:10', 5),
(9, '13/07/2023', '20:10', 6),
(10, '14/07/2023', '21:10', 3),
(11, '15/07/2023', '12:10', 4),
(12, '16/07/2023', '13:10', 2),
(13, '17/07/2023', '12:10', 6),
(14, '18/07/2023', '13:10', 7),
(15, '19/07/2023', '12:10', 3),
(16, '20/07/2023', '13:10', 4),
(17, '21/07/2023', '12:10', 1),
(18, '22/07/2023', '13:10', 5),
(19, '23/07/2023', '12:10', 3),
(20, '24/07/2023', '13:10', 2);

-- --------------------------------------------------------

--
-- Structure de la table `spécialités`
--

CREATE TABLE `spécialités` (
  `Id_specialités` int(2) DEFAULT NULL,
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
  `ID_type_eta` int(1) DEFAULT NULL,
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
-- Structure de la table `type_user`
--

CREATE TABLE `type_user` (
  `id_type_user` int(1) DEFAULT NULL,
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
  `id_user` int(2) DEFAULT NULL,
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
