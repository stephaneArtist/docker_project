/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `projet1`
--

CREATE DATABASE `projet1_stages` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `projet1_stages`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`cid`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `demandes`
--

CREATE TABLE IF NOT EXISTS `demandes` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eid` int(11) NOT NULL,
  `eeid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `statut` enum('refus','acceptation') COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`did`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `entreprises`
--

CREATE TABLE IF NOT EXISTS `entreprises` (
  `eeid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8_general_ci NOT NULL,
  `nomC` varchar(30) COLLATE utf8_general_ci NOT NULL,
  `prenomC` varchar(30) COLLATE utf8_general_ci NOT NULL,
  `emailC` varchar(30) COLLATE utf8_general_ci NOT NULL,
  `telC` varchar(15) COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`eeid`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `etudiants`
--

CREATE TABLE IF NOT EXISTS `etudiants` (
  `eid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) COLLATE utf8_general_ci NOT NULL,
  `prenom` varchar(30) COLLATE utf8_general_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_general_ci NOT NULL,
  `fid` int(11) NOT NULL,
  PRIMARY KEY (`eid`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `filieres`
--

CREATE TABLE IF NOT EXISTS `filieres` (
  `fid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`fid`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `stages`
--

CREATE TABLE IF NOT EXISTS `stages` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eeid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `description` text COLLATE utf8_general_ci NOT NULL,
  `titre` varchar(30) COLLATE utf8_general_ci NOT NULL DEFAULT 'Test stage',
  PRIMARY KEY (`sid`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userid` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8_general_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8_general_ci NOT NULL,
  `login` varchar(50) COLLATE utf8_general_ci NOT NULL,
  `mdp` varchar(41) COLLATE utf8_general_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
