-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 13 sep. 2020 à 03:13
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `portfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `Email`, `Password`) VALUES
(1, 'othmane.qorqach@gmail.com', '$2y$10$G5td0can9M6XUB/wyakX/eEtIGLsrxTJax.CvzTtiu2JAHC/Ksfde');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE IF NOT EXISTS `project` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(150) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Github` varchar(100) NOT NULL,
  `View` varchar(100) NOT NULL,
  `Category` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `project`
--

INSERT INTO `project` (`Id`, `Name`, `Description`, `Image`, `Github`, `View`, `Category`) VALUES
(32, 'design', 'Maquetter une application ', 'design.png', 'https://github.com/abdellmum/design-brief-N2', '', 'web'),
(35, 'Sass-challenge', 'Adaptation d\'une page web en utilisant les techniques du pre processeur CSS (SASS)', 'SASS.png', 'https://github.com/Anassifi/Sass-challenge', '', 'web'),
(36, 'web Agency', ' crÃ©e un website en utilisant HTML CSS BOOTSTRAP', 'webagency.png', 'https://github.com/abdellmum/web-agency-by-kim', 'https://abdellmum.github.io/web-agency-by-kim/', 'app'),
(31, 'To do list', 'DÃ©velopper une interface utilisateur web dynamique en en utilise javascript', 'to do.png', 'https://github.com/othmane-qr/To-Do-List', '', 'icon'),
(37, 'web application', 'building front-end web application en utilisant les techniques du pre processeur CSS (SASS) et HTML\r\n', 'wepapp.png', 'https://github.com/abdellmum/building__front-end__web__application', '', 'web'),
(39, 'Horloge', 'Dans ce projet, la tÃ¢che consiste Ã  construire une horloge en utilisant uniquement HTML/CSS/JS.', 'horl.png', 'https://github.com/othmane-qr/horloge-analogique', '', 'web'),
(38, 'COVID TEST', 'Un projet de rÃ©alisation d\'une plateforme QUIZ pour dÃ©tecter la prÃ©sence du COVID 19 en utilisant HTML SASS JAVASCRIPT', 'CORONA.png', 'https://github.com/othmane-qr/Corona-Virus-Covid-19', '', 'web');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
