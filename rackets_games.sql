-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Lun 04 Mars 2019 à 15:33
-- Version du serveur :  5.7.25-0ubuntu0.18.04.2
-- Version de PHP :  7.2.15-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `rackets_games`
--

-- --------------------------------------------------------

--
-- Structure de la table `Courts`
--

CREATE TABLE `Courts` (
  `id_court` int(11) NOT NULL,
  `nameCourt` varchar(50) NOT NULL,
  `id_sport` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Courts`
--

INSERT INTO `Courts` (`id_court`, `nameCourt`, `id_sport`) VALUES
(1, 'court_P1', 1),
(2, 'court_P2', 1),
(3, 'court_T1', 2),
(4, 'court_T2', 2),
(5, 'court_B1', 3),
(6, 'court_B2', 3);

-- --------------------------------------------------------

--
-- Structure de la table `Joueurs`
--

CREATE TABLE `Joueurs` (
  `Num_joueur` int(11) NOT NULL,
  `Statut` varchar(50) NOT NULL DEFAULT 'membre',
  `Sexe` varchar(50) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Adresse_mail` varchar(50) NOT NULL,
  `Num_Telephone` varchar(15) NOT NULL,
  `Date_de_naissance` date NOT NULL,
  `Mot_de_passe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Joueurs`
--

INSERT INTO `Joueurs` (`Num_joueur`, `Statut`, `Sexe`, `Nom`, `Prenom`, `Adresse_mail`, `Num_Telephone`, `Date_de_naissance`, `Mot_de_passe`) VALUES
(1, 'membre', 'Femme', 'Boivin', 'Hélène', 'boivinhelene@yahoo.com', '0673388422', '1987-06-05', '$2y$10$e3gT.H5Ikq0epW.Y/4kBAuferuWR1/ILLeOVdVkOP8lkbU0JLbPcq'),
(2, 'membre', 'Femme', 'Coin', 'Julie', 'Coinjulie@sfr.com', '0673558422', '1982-12-02', '$2y$10$c/N2.2fwvvKAp.czgOWrbeo0WzIp9U1WWuIJpq4BFq1NYUDjO6Cy.'),
(3, 'membre', 'Femme', 'Mauresmo', 'Amélie', 'amelie_mauresmo@orange.fr', '0673388433', '1979-07-05', '$2y$10$ti.zyauOo77t..jR3EP9/uUgVVhEllZwPUb5BswF77xUCwibFb0F.'),
(4, 'membre', 'Homme', 'Leconte', 'Henri', 'leconte_henri@orange.fr', '0622388433', '1963-07-04', '$2y$10$Rl85IYm4QKFBeE7lgzVKIOe0.dyR3OHXSO8vJ/TvANXP1wU6m.OaW'),
(5, 'membre', 'Homme', 'Clément', 'Arnaud', 'clement_arnaud@outlook.fr', '0673388433', '1977-12-17', '$2y$10$RtB3SsFxmqTbBzw0AZ1p/.cx8yiBhRH/mtpILeWdaF.72JCMphUuG'),
(6, 'membre', 'Homme', 'Santoro', 'Fabrice', 'fabrice_santoro@free.fr', '0673658932', '1972-12-09', '$2y$10$ikhx3B21L9ebMLZgw28oU.3Ng.Z.VdLhYTlSlp8HRwPffClj19iCO'),
(8, 'membre', 'Homme', 'Ber', 'Nard', 'ber_nard@free.fr', '1234567890', '1977-02-26', '$2y$10$03oVI/1ghUH0tXklLW.3WOlOq.GV9SWZulm67CBVDzixf5p2XOHHK'),
(9, 'membre', 'Femme', 'Graf', 'Steffi', 'steffigraf@orange.fr', '0645872954', '1969-06-14', '$2y$10$BK9B9GGjRNeo1wHJFvFqxuoQ1IBQSPaJ6jURLRY0lFVKn32wOUprK'),
(11, 'membre', 'Homme', 'Boetsch', 'Arnaud', 'arnaud_boetsch@orange.fr', '0723847298', '1969-04-01', '$2y$10$CdWqSC0FnYDL1QxWiLQJwuC/TlkejLX.YEgHYTbRJ6nye0O8LCQK.'),
(12, 'membre', 'Femme', 'Julie', 'Dupond', 'juliedupond@yahoo.fr', '0673951466', '1984-02-20', '$2y$10$BlXQh.IwLTN2VgEnojmUxutMsRSY/WJ6U6kRr2J1dnfm3WHfGOWp2'),
(13, 'membre', 'Homme', 'Tison', 'Benjamin', 'benjamintison@free.fr', '0745184398', '1984-02-05', '$2y$10$q7r3vRqR8iV8nsOl2K4J6e9lL4ICDEfUJpL88vnLm4d5KIghky1FS'),
(14, 'membre', 'Homme', 'Maigret', 'Adrine', 'adrien_maigret@sfr.fr', '0615952398', '1989-02-11', '$2y$10$SypCcLoHUck47ibQlIXyz.NKIUCEBnykPy9CCx37g1bQqx6.1Q1Pq'),
(16, 'membre', 'Femme', 'Kik', 'Océane', 'oceanekik@yahoo.com', '0715239527', '1984-08-13', '$2y$10$Fa3FacL.Ni9mWnhWCJqkb.K9sLN7MGNkyOyjGi/Zj1/GwNsVjGFky');

-- --------------------------------------------------------

--
-- Structure de la table `Reservation`
--

CREATE TABLE `Reservation` (
  `Id_rdv` int(11) NOT NULL,
  `day` date NOT NULL,
  `hour` time NOT NULL,
  `id_court` int(11) NOT NULL,
  `Num_joueur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Reservation`
--

INSERT INTO `Reservation` (`Id_rdv`, `day`, `hour`, `id_court`, `Num_joueur`) VALUES
(118, '2019-02-12', '11:00:00', 5, 3),
(119, '2019-03-21', '17:00:00', 3, 3),
(120, '2019-02-24', '10:00:00', 1, 5),
(121, '2019-03-13', '18:00:00', 5, 1),
(122, '2019-03-04', '13:00:00', 2, 1),
(123, '2019-02-28', '12:00:00', 4, 8),
(124, '2019-03-13', '17:00:00', 5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `Sports`
--

CREATE TABLE `Sports` (
  `id_sport` int(11) NOT NULL,
  `nameSport` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Sports`
--

INSERT INTO `Sports` (`id_sport`, `nameSport`) VALUES
(1, 'padel'),
(2, 'tennis'),
(3, 'badminton');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Courts`
--
ALTER TABLE `Courts`
  ADD PRIMARY KEY (`id_court`),
  ADD KEY `Courts_Sports_FK` (`id_sport`);

--
-- Index pour la table `Joueurs`
--
ALTER TABLE `Joueurs`
  ADD PRIMARY KEY (`Num_joueur`);

--
-- Index pour la table `Reservation`
--
ALTER TABLE `Reservation`
  ADD PRIMARY KEY (`Id_rdv`),
  ADD KEY `Reservation_Courts_FK` (`id_court`),
  ADD KEY `Reservation_Joueurs0_FK` (`Num_joueur`);

--
-- Index pour la table `Sports`
--
ALTER TABLE `Sports`
  ADD PRIMARY KEY (`id_sport`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Courts`
--
ALTER TABLE `Courts`
  MODIFY `id_court` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `Joueurs`
--
ALTER TABLE `Joueurs`
  MODIFY `Num_joueur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `Reservation`
--
ALTER TABLE `Reservation`
  MODIFY `Id_rdv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT pour la table `Sports`
--
ALTER TABLE `Sports`
  MODIFY `id_sport` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Courts`
--
ALTER TABLE `Courts`
  ADD CONSTRAINT `Courts_Sports_FK` FOREIGN KEY (`id_sport`) REFERENCES `Sports` (`id_sport`);

--
-- Contraintes pour la table `Reservation`
--
ALTER TABLE `Reservation`
  ADD CONSTRAINT `Reservation_Courts_FK` FOREIGN KEY (`id_court`) REFERENCES `Courts` (`id_court`),
  ADD CONSTRAINT `Reservation_Joueurs0_FK` FOREIGN KEY (`Num_joueur`) REFERENCES `Joueurs` (`Num_joueur`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
