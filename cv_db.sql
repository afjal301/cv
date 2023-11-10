-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 10, 2023 at 01:03 PM
-- Server version: 10.6.12-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cv_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `Client`
--

CREATE TABLE `Client` (
  `id` int(250) NOT NULL,
  `Nom` varchar(250) NOT NULL,
  `Prenom` varchar(250) NOT NULL,
  `Reference` varchar(250) NOT NULL,
  `Nationalite` varchar(250) NOT NULL,
  `Mail` varchar(250) NOT NULL,
  `Nom_fichier` varchar(250) NOT NULL,
  `Specialite` varchar(250) NOT NULL,
  `Date_ajout` varchar(250) NOT NULL,
  `entreprise` varchar(250) NOT NULL,
  `experience` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Client`
--

INSERT INTO `Client` (`id`, `Nom`, `Prenom`, `Reference`, `Nationalite`, `Mail`, `Nom_fichier`, `Specialite`, `Date_ajout`, `entreprise`, `experience`) VALUES
(1, 'RANDRIAMPANALINDAHY', 'jOSEPHIN jUDICAËL', 'AMI', 'Malagasy', 'judibetsilah@gmail.com', 'none.conf', 'Charge Etude', '2023/10/16', '', ''),
(2, 'RANDRIAMPANALINDAHY', 'jOSEPHIN jUDICAËL', 'AMI', 'Malagasy', 'judibetsilah@gmail.com', 'none.conf', 'Charge Etude', '2023/10/16', '', ''),
(3, 'RANDRIAMPANALINDAHY', 'jOSEPHIN jUDICAËL', 'AMI', 'Malagasy', 'judibetsilah@gmail.com', 'RANDRIAMPANALINDAHY3.png', 'wcxw', '2023/10/17', '', ''),
(4, 'RANDRIAMPANALINDAHY', 'jOSEPHIN jUDICAËL', 'AMI', 'Malagasy', 'judibetsilah@gmail.com', 'RANDRIAMPANALINDAHY4.pdf', 'halhlhkaez', '2023/11/7', '', ''),
(5, 'TAnjona', 'Bessa', 'Offre', 'Malagasy', 'judibetsilah@gmail.com', 'TAnjona5.odt', 'Test speciality', '2023/11/7', '', ''),
(6, 'Fitahiana', 'Bessa', 'Offre', 'Malagasy', 'judibetsilah@gmail.com', 'Fitahiana5.doc', 'wcxw', '2023/11/7', '', ''),
(7, 'Tsiory', 'Tsiory', 'Offre', 'Français', 'judibetsilah@gmail.com', 'Tsiory5.docx', 'wcxw', '2023/11/7', '', ''),
(8, 'RANDRIATAHINA', 'Olivier Michel', 'Offre', 'Madagascar', 'judibetsilah@geosystems.mg', 'RANDRIATAHINA8.png', 'Expert Communication ', '2023/11/10', 'Evolutis', '6'),
(9, 'Fitahiana', 'Nomenjanagary', 'Offre', 'Madagascar', '034568946', 'Fitahiana9.png', 'wcxw', '2023/11/10', 'Geosystems', '3');

-- --------------------------------------------------------

--
-- Table structure for table `specialite`
--

CREATE TABLE `specialite` (
  `id` int(250) NOT NULL,
  `nom` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `specialite`
--

INSERT INTO `specialite` (`id`, `nom`) VALUES
(1, 'hello'),
(2, 'afjal'),
(3, 'halhlhkaez'),
(4, 'bskfqkldfk'),
(5, 'wcxw'),
(6, 'wcxw'),
(7, 'Test speciality'),
(8, 'RANDRIAMPANALINDAHY '),
(9, 'Expert Communication '),
(10, 'sdfdsfdsfdsfq');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `mail`, `password`) VALUES
(1, 'test', 'testaaa@example.com', 'kotbiao'),
(2, 'test', 'testaaa@example.com', 'kotbiao'),
(3, 'test', 'testaaa@example.com', 'kotbiao'),
(4, 'test', 'testaaa@example.com', 'kotbiao');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Client`
--
ALTER TABLE `Client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialite`
--
ALTER TABLE `specialite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Client`
--
ALTER TABLE `Client`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `specialite`
--
ALTER TABLE `specialite`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
