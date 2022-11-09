-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 19 oct. 2022 à 13:55
-- Version du serveur :  10.1.38-MariaDB
-- Version de PHP :  7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `opalia40`
--

-- --------------------------------------------------------

--
-- Structure de la table `actioncomercials`
--

CREATE TABLE `actioncomercials` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `objectif` int(11) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `etat` int(11) DEFAULT '0',
  `id_line` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `actionpacks`
--

CREATE TABLE `actionpacks` (
  `id` int(11) NOT NULL,
  `id_action` int(11) NOT NULL,
  `id_pack` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `action_tips`
--

CREATE TABLE `action_tips` (
  `id` int(11) NOT NULL,
  `Segment` varchar(255) NOT NULL,
  `Number` int(11) NOT NULL,
  `lastpurchases` varchar(255) NOT NULL,
  `Frequency` varchar(255) NOT NULL,
  `Value` varchar(255) NOT NULL,
  `Activity` varchar(255) NOT NULL,
  `ActionableTip` varchar(255) NOT NULL,
  `etat` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `bls`
--

CREATE TABLE `bls` (
  `id` int(11) NOT NULL,
  `numBl` varchar(255) NOT NULL,
  `dateBl` date NOT NULL,
  `id_gouvernorat` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `id_pack` int(11) NOT NULL,
  `client` int(11) NOT NULL,
  `fournisseur` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `adresseClient` varchar(255) DEFAULT NULL,
  `numeroBL` varchar(255) DEFAULT NULL,
  `etat` int(11) DEFAULT NULL,
  `bonification` varchar(255) DEFAULT NULL,
  `dateInsertion` date DEFAULT NULL,
  `dateValidation` date DEFAULT NULL,
  `datePayement` date DEFAULT NULL,
  `payer` int(11) DEFAULT '0',
  `decharge` varchar(255) DEFAULT NULL,
  `commentaire` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id` int(11) NOT NULL,
  `id_action` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_pharmacie` int(11) DEFAULT NULL,
  `id_segment` int(11) DEFAULT NULL,
  `etat` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commande_ventes`
--

CREATE TABLE `commande_ventes` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_pharmacie` int(11) DEFAULT NULL,
  `fournisseur` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `etat` int(11) DEFAULT NULL,
  `commentaire` varchar(255) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `date` date NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `detailsims`
--

CREATE TABLE `detailsims` (
  `id` int(11) NOT NULL,
  `idIms` int(11) NOT NULL,
  `chef_produit` varchar(255) DEFAULT NULL,
  `produit` varchar(255) DEFAULT NULL,
  `volume` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `dateInsertion` datetime DEFAULT NULL,
  `etat` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `export_bls`
--

CREATE TABLE `export_bls` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseurs`
--

CREATE TABLE `fournisseurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `etat` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ims`
--

CREATE TABLE `ims` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `etat` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `lignebls`
--

CREATE TABLE `lignebls` (
  `id` int(11) NOT NULL,
  `idbielle` int(11) DEFAULT NULL,
  `idproduit` int(11) DEFAULT NULL,
  `quantite` float DEFAULT NULL,
  `montant` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ligneims`
--

CREATE TABLE `ligneims` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `etat` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ligne_cmd_ventes`
--

CREATE TABLE `ligne_cmd_ventes` (
  `id` int(11) NOT NULL,
  `id_cmd_vente` int(11) DEFAULT NULL,
  `id_produit` int(11) DEFAULT NULL,
  `quantite` float DEFAULT NULL,
  `montant` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ligne_supports`
--

CREATE TABLE `ligne_supports` (
  `id` int(11) NOT NULL,
  `id_prod` int(11) DEFAULT NULL,
  `id_lift` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ligne_todos`
--

CREATE TABLE `ligne_todos` (
  `id` int(11) NOT NULL,
  `task` varchar(255) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  `id_todo` int(11) DEFAULT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `marcheims`
--

CREATE TABLE `marcheims` (
  `id` int(11) NOT NULL,
  `lib` varchar(255) NOT NULL,
  `etat` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `messageries`
--

CREATE TABLE `messageries` (
  `id` int(11) NOT NULL,
  `id_action` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `lu` int(11) DEFAULT '0',
  `text` varchar(255) DEFAULT NULL,
  `etat` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `packproduits`
--

CREATE TABLE `packproduits` (
  `id` int(11) NOT NULL,
  `packId` int(11) DEFAULT NULL,
  `produitId` int(11) DEFAULT NULL,
  `quantite` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `packs`
--

CREATE TABLE `packs` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `bonification` varchar(255) NOT NULL,
  `segment` int(11) DEFAULT NULL,
  `id_pharmacie` int(11) DEFAULT NULL,
  `etat` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `pharmacies`
--

CREATE TABLE `pharmacies` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `idIms` int(11) NOT NULL,
  `telephone` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `etat` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `produitfours`
--

CREATE TABLE `produitfours` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `fournisseur` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `prix` float NOT NULL,
  `desigims` int(11) NOT NULL,
  `ligne` int(11) NOT NULL,
  `etat` int(11) DEFAULT '1',
  `parent` int(11) DEFAULT '0',
  `prixConseiller` float DEFAULT '0',
  `direct` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `nom`) VALUES
(1, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `roots`
--

CREATE TABLE `roots` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `className` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `ordre` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `secteurims`
--

CREATE TABLE `secteurims` (
  `id` int(11) NOT NULL,
  `imsId` int(11) DEFAULT NULL,
  `secteurId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `secteurs`
--

CREATE TABLE `secteurs` (
  `id` int(11) NOT NULL,
  `libelleSect` varchar(255) NOT NULL,
  `etat` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `segments`
--

CREATE TABLE `segments` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `seg_pharmas`
--

CREATE TABLE `seg_pharmas` (
  `id` int(11) NOT NULL,
  `Segment` int(11) DEFAULT NULL,
  `Pharmacie` varchar(255) DEFAULT NULL,
  `id_pharmacie` int(11) DEFAULT NULL,
  `etat` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `name`, `icon`) VALUES
(1, 'logo2.png', 'medicacom', 'favicon.ico');

-- --------------------------------------------------------

--
-- Structure de la table `support_lifts`
--

CREATE TABLE `support_lifts` (
  `id` int(11) NOT NULL,
  `lhs_1` varchar(255) DEFAULT NULL,
  `lhs_2` varchar(255) DEFAULT NULL,
  `lhs_3` varchar(255) DEFAULT NULL,
  `lhs_4` varchar(255) DEFAULT NULL,
  `lhs_5` varchar(255) DEFAULT NULL,
  `rhs` varchar(255) DEFAULT NULL,
  `id_principal` int(11) DEFAULT NULL,
  `support` float DEFAULT NULL,
  `confidence` float DEFAULT NULL,
  `coverage` float DEFAULT NULL,
  `lift` float DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `Segment` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `todolists`
--

CREATE TABLE `todolists` (
  `id` int(11) NOT NULL,
  `id_action` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nomU` varchar(255) DEFAULT NULL,
  `prenomU` varchar(255) DEFAULT NULL,
  `login` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `idrole` int(11) NOT NULL,
  `etat` int(11) DEFAULT '1',
  `password` varchar(255) DEFAULT NULL,
  `idsect` int(11) DEFAULT NULL,
  `line` int(11) DEFAULT NULL,
  `idAdmin` int(11) DEFAULT '1',
  `crm` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actioncomercials`
--
ALTER TABLE `actioncomercials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_line` (`id_line`);

--
-- Index pour la table `actionpacks`
--
ALTER TABLE `actionpacks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_action` (`id_action`),
  ADD KEY `id_pack` (`id_pack`);

--
-- Index pour la table `action_tips`
--
ALTER TABLE `action_tips`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `bls`
--
ALTER TABLE `bls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_gouvernorat` (`id_gouvernorat`),
  ADD KEY `iduser` (`iduser`),
  ADD KEY `id_pack` (`id_pack`),
  ADD KEY `client` (`client`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_action` (`id_action`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_pharmacie` (`id_pharmacie`),
  ADD KEY `id_segment` (`id_segment`);

--
-- Index pour la table `commande_ventes`
--
ALTER TABLE `commande_ventes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_pharmacie` (`id_pharmacie`);

--
-- Index pour la table `detailsims`
--
ALTER TABLE `detailsims`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `idIms` (`idIms`);

--
-- Index pour la table `export_bls`
--
ALTER TABLE `export_bls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `idUser` (`idUser`);

--
-- Index pour la table `fournisseurs`
--
ALTER TABLE `fournisseurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `ims`
--
ALTER TABLE `ims`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `lignebls`
--
ALTER TABLE `lignebls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `idbielle` (`idbielle`),
  ADD KEY `idproduit` (`idproduit`);

--
-- Index pour la table `ligneims`
--
ALTER TABLE `ligneims`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `ligne_cmd_ventes`
--
ALTER TABLE `ligne_cmd_ventes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_cmd_vente` (`id_cmd_vente`),
  ADD KEY `id_produit` (`id_produit`);

--
-- Index pour la table `ligne_supports`
--
ALTER TABLE `ligne_supports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `ligne_todos`
--
ALTER TABLE `ligne_todos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_todo` (`id_todo`);

--
-- Index pour la table `marcheims`
--
ALTER TABLE `marcheims`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `messageries`
--
ALTER TABLE `messageries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_action` (`id_action`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `packproduits`
--
ALTER TABLE `packproduits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `packId` (`packId`),
  ADD KEY `produitId` (`produitId`);

--
-- Index pour la table `packs`
--
ALTER TABLE `packs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `segment` (`segment`),
  ADD KEY `id_pharmacie` (`id_pharmacie`);

--
-- Index pour la table `pharmacies`
--
ALTER TABLE `pharmacies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `idIms` (`idIms`);

--
-- Index pour la table `produitfours`
--
ALTER TABLE `produitfours`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `desigims` (`desigims`),
  ADD KEY `ligne` (`ligne`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `nom` (`nom`);

--
-- Index pour la table `roots`
--
ALTER TABLE `roots`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `secteurims`
--
ALTER TABLE `secteurims`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `imsId` (`imsId`),
  ADD KEY `secteurId` (`secteurId`);

--
-- Index pour la table `secteurs`
--
ALTER TABLE `secteurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `segments`
--
ALTER TABLE `segments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `seg_pharmas`
--
ALTER TABLE `seg_pharmas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `Segment` (`Segment`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `support_lifts`
--
ALTER TABLE `support_lifts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `todolists`
--
ALTER TABLE `todolists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_action` (`id_action`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `idrole` (`idrole`),
  ADD KEY `idsect` (`idsect`),
  ADD KEY `line` (`line`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actioncomercials`
--
ALTER TABLE `actioncomercials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `actionpacks`
--
ALTER TABLE `actionpacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `action_tips`
--
ALTER TABLE `action_tips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `bls`
--
ALTER TABLE `bls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commande_ventes`
--
ALTER TABLE `commande_ventes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `detailsims`
--
ALTER TABLE `detailsims`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `export_bls`
--
ALTER TABLE `export_bls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fournisseurs`
--
ALTER TABLE `fournisseurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ims`
--
ALTER TABLE `ims`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `lignebls`
--
ALTER TABLE `lignebls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ligneims`
--
ALTER TABLE `ligneims`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ligne_cmd_ventes`
--
ALTER TABLE `ligne_cmd_ventes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ligne_supports`
--
ALTER TABLE `ligne_supports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ligne_todos`
--
ALTER TABLE `ligne_todos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `marcheims`
--
ALTER TABLE `marcheims`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `messageries`
--
ALTER TABLE `messageries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `packproduits`
--
ALTER TABLE `packproduits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `packs`
--
ALTER TABLE `packs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pharmacies`
--
ALTER TABLE `pharmacies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produitfours`
--
ALTER TABLE `produitfours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `roots`
--
ALTER TABLE `roots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `secteurims`
--
ALTER TABLE `secteurims`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `secteurs`
--
ALTER TABLE `secteurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `segments`
--
ALTER TABLE `segments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `seg_pharmas`
--
ALTER TABLE `seg_pharmas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `support_lifts`
--
ALTER TABLE `support_lifts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `todolists`
--
ALTER TABLE `todolists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `actioncomercials`
--
ALTER TABLE `actioncomercials`
  ADD CONSTRAINT `actioncomercials_ibfk_1` FOREIGN KEY (`id_line`) REFERENCES `ligneims` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `actionpacks`
--
ALTER TABLE `actionpacks`
  ADD CONSTRAINT `actionpacks_ibfk_1` FOREIGN KEY (`id_action`) REFERENCES `actioncomercials` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `actionpacks_ibfk_2` FOREIGN KEY (`id_pack`) REFERENCES `packs` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `bls`
--
ALTER TABLE `bls`
  ADD CONSTRAINT `bls_ibfk_1` FOREIGN KEY (`id_gouvernorat`) REFERENCES `ims` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `bls_ibfk_2` FOREIGN KEY (`iduser`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `bls_ibfk_3` FOREIGN KEY (`id_pack`) REFERENCES `packs` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `bls_ibfk_4` FOREIGN KEY (`client`) REFERENCES `pharmacies` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `commandes_ibfk_1` FOREIGN KEY (`id_action`) REFERENCES `actioncomercials` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `commandes_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `commandes_ibfk_3` FOREIGN KEY (`id_pharmacie`) REFERENCES `pharmacies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `commandes_ibfk_4` FOREIGN KEY (`id_segment`) REFERENCES `segments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `commande_ventes`
--
ALTER TABLE `commande_ventes`
  ADD CONSTRAINT `commande_ventes_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `commande_ventes_ibfk_2` FOREIGN KEY (`id_pharmacie`) REFERENCES `pharmacies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `detailsims`
--
ALTER TABLE `detailsims`
  ADD CONSTRAINT `detailsims_ibfk_1` FOREIGN KEY (`idIms`) REFERENCES `ims` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `export_bls`
--
ALTER TABLE `export_bls`
  ADD CONSTRAINT `export_bls_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `lignebls`
--
ALTER TABLE `lignebls`
  ADD CONSTRAINT `lignebls_ibfk_1` FOREIGN KEY (`idbielle`) REFERENCES `bls` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `lignebls_ibfk_2` FOREIGN KEY (`idproduit`) REFERENCES `produits` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `ligne_cmd_ventes`
--
ALTER TABLE `ligne_cmd_ventes`
  ADD CONSTRAINT `ligne_cmd_ventes_ibfk_1` FOREIGN KEY (`id_cmd_vente`) REFERENCES `commande_ventes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ligne_cmd_ventes_ibfk_2` FOREIGN KEY (`id_produit`) REFERENCES `produits` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `ligne_todos`
--
ALTER TABLE `ligne_todos`
  ADD CONSTRAINT `ligne_todos_ibfk_1` FOREIGN KEY (`id_todo`) REFERENCES `todolists` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `messageries`
--
ALTER TABLE `messageries`
  ADD CONSTRAINT `messageries_ibfk_1` FOREIGN KEY (`id_action`) REFERENCES `actioncomercials` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `messageries_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `packproduits`
--
ALTER TABLE `packproduits`
  ADD CONSTRAINT `packproduits_ibfk_1` FOREIGN KEY (`packId`) REFERENCES `packs` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `packproduits_ibfk_2` FOREIGN KEY (`produitId`) REFERENCES `produits` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `packs`
--
ALTER TABLE `packs`
  ADD CONSTRAINT `packs_ibfk_1` FOREIGN KEY (`segment`) REFERENCES `segments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `packs_ibfk_2` FOREIGN KEY (`id_pharmacie`) REFERENCES `pharmacies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produits_ibfk_179` FOREIGN KEY (`desigims`) REFERENCES `marcheims` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `produits_ibfk_180` FOREIGN KEY (`ligne`) REFERENCES `ligneims` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `secteurims`
--
ALTER TABLE `secteurims`
  ADD CONSTRAINT `secteurims_ibfk_1` FOREIGN KEY (`imsId`) REFERENCES `ims` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `secteurims_ibfk_2` FOREIGN KEY (`secteurId`) REFERENCES `secteurs` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `seg_pharmas`
--
ALTER TABLE `seg_pharmas`
  ADD CONSTRAINT `seg_pharmas_ibfk_1` FOREIGN KEY (`Segment`) REFERENCES `segments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `todolists`
--
ALTER TABLE `todolists`
  ADD CONSTRAINT `todolists_ibfk_1` FOREIGN KEY (`id_action`) REFERENCES `actioncomercials` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `todolists_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_10` FOREIGN KEY (`idrole`) REFERENCES `roles` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_11` FOREIGN KEY (`idsect`) REFERENCES `secteurs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_12` FOREIGN KEY (`line`) REFERENCES `ligneims` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
