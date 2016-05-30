-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 24 Mai 2016 à 09:37
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `gapp`
--

-- --------------------------------------------------------

--
-- Structure de la table `absence`
--

CREATE TABLE IF NOT EXISTS `absence` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `nomEleve` int(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `administration`
--

CREATE TABLE IF NOT EXISTS `administration` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `login` varchar(100) NOT NULL,
  `mdp` int(100) NOT NULL,
  `nom` int(30) NOT NULL,
  `prenom` int(30) NOT NULL,
  `mail` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `eleve`
--

CREATE TABLE IF NOT EXISTS `eleve` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `mdp` varchar(100) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `mail` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `eleve`
--

INSERT INTO `eleve` (`id`, `login`, `mdp`, `nom`, `prenom`, `mail`) VALUES
(1, 'mamie', '*1E789A4FEFD08B6CC221174EE81F5E9648A22E83', 'tardy', 'manon', 'manon.tardy@isep.fr'),
(2, 'camilidahbi', 'camiliadahbi', 'dahbi', 'camilia', 'camilia.dahbi@isep.fr'),
(3, 'nabaak', 'kevinabaa', 'nabaa', 'kevin', 'kevin.nabaa@isep.fr'),
(5, 'epandas', 'stellinaepanda', 'epanda', 'stellina', 'stellina.epanda@isep.fr'),
(7, 'andres', 'sanguitaandre', 'andre', 'sanguita', 'sanguita.andre@isep.fr'),
(12, 'shaseek', 'shaseekavi', 'shasee', 'kavi', 'kavi.shasee@isep.fr'),
(13, 'labadin', 'labadinagui', 'labadi', 'nagui', 'nagui.labadi@isep.fr');

-- --------------------------------------------------------

--
-- Structure de la table `grillecompetence`
--

CREATE TABLE IF NOT EXISTS `grillecompetence` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `competence` varchar(100) NOT NULL,
  `niveau1` varchar(100) NOT NULL,
  `niveau2` varchar(100) NOT NULL,
  `remarque` varchar(1000) NOT NULL,
  `nom` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `grillecompetence`
--

INSERT INTO `grillecompetence` (`id`, `competence`, `niveau1`, `niveau2`, `remarque`, `nom`) VALUES
(1, 'competence1\r\n', '', '', '', ''),
(2, 'competence2', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE IF NOT EXISTS `groupe` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `nomGroupe` varchar(70) NOT NULL,
  `nomEleve` varchar(70) NOT NULL,
  `prenomEleve` varchar(70) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `responsableapp`
--

CREATE TABLE IF NOT EXISTS `responsableapp` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `mdp` varchar(100) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `mail` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `responsableapp`
--

INSERT INTO `responsableapp` (`id`, `login`, `mdp`, `nom`, `prenom`, `mail`) VALUES
(1, 'parisa', 'parisa', 'parisa', 'julie', 'julie.parisa@isep.fr'),
(2, 'parisa', 'parisa', 'parisa', 'julie', 'julie.parisa@isep.fr'),
(3, 'chachi', 'chachi', 'chachi', 'emanuelle', 'emanuelle.chachi@isep.fr');

-- --------------------------------------------------------

--
-- Structure de la table `tuteur`
--

CREATE TABLE IF NOT EXISTS `tuteur` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `mdp` varchar(100) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `mail` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `tuteur`
--

INSERT INTO `tuteur` (`id`, `login`, `mdp`, `nom`, `prenom`, `mail`) VALUES
(1, 'dupont', 'dupontfrancois', 'dupont', 'francois', 'francois.dupont@isep.fr'),
(2, 'dupont', 'dupontfrancois', 'dupont', 'francois', 'francois.dupont@isep.fr'),
(3, 'marierose', 'marierose', 'marie', 'rose', 'marie.rose@isep.fr');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
