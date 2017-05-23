-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 23. Mai 2017 um 18:22
-- Server-Version: 10.1.10-MariaDB
-- PHP-Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `schule`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bestellte_essen`
--

CREATE TABLE `bestellte_essen` (
  `Bestell_Nr` bigint(20) UNSIGNED NOT NULL,
  `Schueler_ID` varchar(20) NOT NULL,
  `W_Nr` char(15) NOT NULL,
  `Essen_1_MO` int(1) NOT NULL,
  `E_1_MO_erhalten` int(1) NOT NULL DEFAULT '0',
  `Essen_2_MO` int(1) NOT NULL,
  `E_2_MO_erhalten` int(1) NOT NULL DEFAULT '0',
  `Essen_3_MO` int(1) NOT NULL,
  `E_3_MO_erhalten` int(1) NOT NULL DEFAULT '0',
  `Essen_1_DI` int(1) NOT NULL,
  `E_1_DI_erhalten` int(1) NOT NULL DEFAULT '0',
  `Essen_2_DI` int(1) NOT NULL,
  `E_2_DI_erhalten` int(1) NOT NULL DEFAULT '0',
  `Essen_3_DI` int(1) NOT NULL,
  `E_3_DI_erhalten` int(1) NOT NULL DEFAULT '0',
  `Essen_1_MI` int(1) NOT NULL,
  `E_1_MI_erhalten` int(1) NOT NULL DEFAULT '0',
  `Essen_2_MI` int(1) NOT NULL,
  `E_2_MI_erhalten` int(1) NOT NULL DEFAULT '0',
  `Essen_3_MI` int(1) NOT NULL,
  `E_3_MI_erhalten` int(1) NOT NULL DEFAULT '0',
  `Essen_1_DO` int(1) NOT NULL,
  `E_1_DO_erhalten` int(1) NOT NULL DEFAULT '0',
  `Essen_2_DO` int(1) NOT NULL,
  `E_2_DO_erhalten` int(1) NOT NULL DEFAULT '0',
  `Essen_3_DO` int(1) NOT NULL,
  `E_3_DO_erhalten` int(1) NOT NULL DEFAULT '0',
  `Essen_1_FR` int(1) NOT NULL,
  `E_1_FR_erhalten` int(1) NOT NULL DEFAULT '0',
  `Essen_2_FR` int(1) NOT NULL,
  `E_2_FR_erhalten` int(1) NOT NULL DEFAULT '0',
  `Essen_3_FR` int(1) NOT NULL,
  `E_3_FR_erhalten` int(1) NOT NULL DEFAULT '0',
  `Zuletzt_geändert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `bestellte_essen`
--

INSERT INTO `bestellte_essen` (`Bestell_Nr`, `Schueler_ID`, `W_Nr`, `Essen_1_MO`, `E_1_MO_erhalten`, `Essen_2_MO`, `E_2_MO_erhalten`, `Essen_3_MO`, `E_3_MO_erhalten`, `Essen_1_DI`, `E_1_DI_erhalten`, `Essen_2_DI`, `E_2_DI_erhalten`, `Essen_3_DI`, `E_3_DI_erhalten`, `Essen_1_MI`, `E_1_MI_erhalten`, `Essen_2_MI`, `E_2_MI_erhalten`, `Essen_3_MI`, `E_3_MI_erhalten`, `Essen_1_DO`, `E_1_DO_erhalten`, `Essen_2_DO`, `E_2_DO_erhalten`, `Essen_3_DO`, `E_3_DO_erhalten`, `Essen_1_FR`, `E_1_FR_erhalten`, `Essen_2_FR`, `E_2_FR_erhalten`, `Essen_3_FR`, `E_3_FR_erhalten`, `Zuletzt_geändert`) VALUES
(1, '1', '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2016-09-24 17:22:55'),
(2, '2', '1', 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, '2016-10-05 12:14:49'),
(3, '2', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-10-05 09:50:22'),
(4, '9', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-09-30 16:45:33'),
(5, '10', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-09-30 16:46:57'),
(6, '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '2016-10-04 07:45:58'),
(7, '1', '2', 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, '2016-10-05 09:48:13'),
(8, '1', '5', 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, '2016-10-05 09:57:32'),
(9, '2', '5', 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, '2016-10-05 09:57:04'),
(10, '4', '6', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, '2016-10-05 09:58:54'),
(11, '3', '6', 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '2016-10-05 09:59:31');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bestellungen`
--

CREATE TABLE `bestellungen` (
  `Auftrags_Nr` bigint(20) UNSIGNED NOT NULL,
  `W_Nr` char(15) NOT NULL,
  `Essen_1_MO` int(100) NOT NULL,
  `Essen_1_DI` int(11) NOT NULL,
  `Essen_1_MI` int(100) NOT NULL,
  `Essen_1_DO` int(100) NOT NULL,
  `Essen_1_FR` int(100) NOT NULL,
  `Essen_2_MO` int(100) NOT NULL,
  `Essen_2_DI` int(100) NOT NULL,
  `Essen_2_MI` int(100) NOT NULL,
  `Essen_2_DO` int(100) NOT NULL,
  `Essen_2_FR` int(100) NOT NULL,
  `Essen_3_MO` int(100) NOT NULL,
  `Essen_3_DI` int(100) NOT NULL,
  `Essen_3_MI` int(100) NOT NULL,
  `Essen_3_DO` int(100) NOT NULL,
  `Essen_3_FR` int(100) NOT NULL,
  `Zuletzt_geändert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `bestellungen`
--

INSERT INTO `bestellungen` (`Auftrags_Nr`, `W_Nr`, `Essen_1_MO`, `Essen_1_DI`, `Essen_1_MI`, `Essen_1_DO`, `Essen_1_FR`, `Essen_2_MO`, `Essen_2_DI`, `Essen_2_MI`, `Essen_2_DO`, `Essen_2_FR`, `Essen_3_MO`, `Essen_3_DI`, `Essen_3_MI`, `Essen_3_DO`, `Essen_3_FR`, `Zuletzt_geändert`) VALUES
(4, '1', 2, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, '2016-10-05 12:11:27'),
(5, '13', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2016-10-04 06:37:36'),
(6, '12', 1, 1, 11, 1, 1, 1, 1, 1, 11, 1, 1, 1, 1, 1, 1, '2016-10-04 06:37:36'),
(7, '2', 1, 0, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, '2016-10-05 09:50:22'),
(8, '5', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2016-10-05 09:57:32'),
(9, '6', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, '2016-10-05 09:59:31');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `empfänger`
--

CREATE TABLE `empfänger` (
  `E_Nr` int(11) NOT NULL,
  `Name_1` text NOT NULL,
  `Name_2` text NOT NULL,
  `Anrede` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `schueler`
--

CREATE TABLE `schueler` (
  `ID` varchar(20) NOT NULL,
  `Name` text NOT NULL,
  `Vorname` text NOT NULL,
  `Klassen_Nr` int(2) NOT NULL,
  `Klassen_ID` text NOT NULL,
  `Zuletzt_geändert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `schueler`
--

INSERT INTO `schueler` (`ID`, `Name`, `Vorname`, `Klassen_Nr`, `Klassen_ID`, `Zuletzt_geändert`) VALUES
('1', 'Otto', 'Motor', 5, 'a', '2016-04-30 14:28:54'),
('10', 'Markopolus', 'Evdoxia', 7, 'a', '2016-06-06 20:58:48'),
('11', 'fffs', 'fdvfffvwedvw', 7, 'a', '2016-06-06 20:58:48'),
('13', 'fr', 'fs', 7, 'c', '2016-06-06 20:58:48'),
('15', 'waaad', 'qad', 8, 'b', '2016-06-06 20:58:48'),
('16', 'ggggg', 'regg', 8, 'c', '2016-06-06 20:58:48'),
('17', 'jmnj', 'njnn', 9, 'a', '2016-06-06 20:58:48'),
('18', 'kj', 'kj', 9, 'b', '2016-06-06 20:58:48'),
('19', 'kjh', '9lop', 9, 'c', '2016-06-06 20:58:48'),
('2', 'Hering', 'Klaus', 5, 'a', '2016-04-30 14:28:54'),
('20', 'ööö', 'uzkz', 10, 'a', '2016-06-06 20:58:48'),
('21', 'asas', 'as', 10, 'b', '2016-06-06 20:58:48'),
('22', 'fws', 'vbggv', 10, 'c', '2016-06-06 20:58:48'),
('3', 'Eberts', 'Markus', 5, 'b', '2016-04-30 14:28:54'),
('4', 'Krause', 'Günther', 5, 'b', '2016-04-30 14:28:54'),
('5', 'Papen', 'Lisa', 5, 'c', '2016-04-30 14:28:54'),
('6', 'Müller', 'Diether', 5, 'c', '2016-04-30 14:28:54'),
('7', 'Hako', 'Silvia', 6, 'a', '2016-04-30 14:28:54'),
('8', 'Pöhl', 'Marie', 6, 'a', '2016-04-30 14:28:54'),
('9', 'Schneidenbach', 'Hans', 6, 'b', '2016-04-30 14:28:54');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `User_ID` int(11) NOT NULL,
  `User_Name` text NOT NULL,
  `User_Passwort` text NOT NULL,
  `Erstellt_am` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`User_ID`, `User_Name`, `User_Passwort`, `Erstellt_am`) VALUES
(26052016, 'Admin', 'My_Meal_4_Local_Admin', '2016-05-26 20:32:27'),
(27052016, 'w', 'w', '2016-05-27 09:02:57');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wochen`
--

CREATE TABLE `wochen` (
  `Wochen_Nr` char(15) NOT NULL,
  `Von-Bis` text NOT NULL,
  `Zuletzt_geändert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `wochen`
--

INSERT INTO `wochen` (`Wochen_Nr`, `Von-Bis`, `Zuletzt_geändert`) VALUES
('1', '12/26/16 - 01/01/17 ', '2017-05-23 15:20:27'),
('10', '02/27/17 - 03/05/17 ', '2017-05-23 15:20:27'),
('11', '03/06/17 - 03/12/17 ', '2017-05-23 15:20:27'),
('12', '03/13/17 - 03/19/17 ', '2017-05-23 15:20:27'),
('13', '03/20/17 - 03/26/17 ', '2017-05-23 15:20:27'),
('14', '03/27/17 - 04/02/17 ', '2017-05-23 15:20:27'),
('15', '04/03/17 - 04/09/17 ', '2017-05-23 15:20:27'),
('16', '04/10/17 - 04/16/17 ', '2017-05-23 15:20:28'),
('17', '04/17/17 - 04/23/17 ', '2017-05-23 15:20:28'),
('18', '04/24/17 - 04/30/17 ', '2017-05-23 15:20:28'),
('19', '05/01/17 - 05/07/17 ', '2017-05-23 15:20:28'),
('2', '01/02/17 - 01/08/17 ', '2017-05-23 15:20:27'),
('20', '05/08/17 - 05/14/17 ', '2017-05-23 15:20:28'),
('21', '05/15/17 - 05/21/17 ', '2017-05-23 15:20:28'),
('22', '05/22/17 - 05/28/17 ', '2017-05-23 15:20:28'),
('23', '05/29/17 - 06/04/17 ', '2017-05-23 15:20:28'),
('24', '06/05/17 - 06/11/17 ', '2017-05-23 15:20:28'),
('25', '06/12/17 - 06/18/17 ', '2017-05-23 15:20:28'),
('26', '06/19/17 - 06/25/17 ', '2017-05-23 15:20:28'),
('27', '06/26/17 - 07/02/17 ', '2017-05-23 15:20:28'),
('28', '07/03/17 - 07/09/17 ', '2017-05-23 15:20:28'),
('29', '07/10/17 - 07/16/17 ', '2017-05-23 15:20:28'),
('3', '01/09/17 - 01/15/17 ', '2017-05-23 15:20:27'),
('30', '07/17/17 - 07/23/17 ', '2017-05-23 15:20:28'),
('31', '07/24/17 - 07/30/17 ', '2017-05-23 15:20:28'),
('32', '07/31/17 - 08/06/17 ', '2017-05-23 15:20:28'),
('33', '08/07/17 - 08/13/17 ', '2017-05-23 15:20:28'),
('34', '08/14/17 - 08/20/17 ', '2017-05-23 15:20:28'),
('35', '08/21/17 - 08/27/17 ', '2017-05-23 15:20:28'),
('36', '08/28/17 - 09/03/17 ', '2017-05-23 15:20:29'),
('37', '09/04/17 - 09/10/17 ', '2017-05-23 15:20:29'),
('38', '09/11/17 - 09/17/17 ', '2017-05-23 15:20:29'),
('39', '09/18/17 - 09/24/17 ', '2017-05-23 15:20:29'),
('4', '01/16/17 - 01/22/17 ', '2017-05-23 15:20:27'),
('40', '09/25/17 - 10/01/17 ', '2017-05-23 15:20:29'),
('41', '10/02/17 - 10/08/17 ', '2017-05-23 15:20:29'),
('42', '10/09/17 - 10/15/17 ', '2017-05-23 15:20:29'),
('43', '10/16/17 - 10/22/17 ', '2017-05-23 15:20:29'),
('44', '10/23/17 - 10/29/17 ', '2017-05-23 15:20:29'),
('45', '10/30/17 - 11/05/17 ', '2017-05-23 15:20:29'),
('46', '11/06/17 - 11/12/17 ', '2017-05-23 15:20:29'),
('47', '11/13/17 - 11/19/17 ', '2017-05-23 15:20:29'),
('48', '11/20/17 - 11/26/17 ', '2017-05-23 15:20:29'),
('49', '11/27/17 - 12/03/17 ', '2017-05-23 15:20:29'),
('5', '01/23/17 - 01/29/17 ', '2017-05-23 15:20:27'),
('50', '12/04/17 - 12/10/17 ', '2017-05-23 15:20:30'),
('51', '12/11/17 - 12/17/17 ', '2017-05-23 15:20:30'),
('52', '12/18/17 - 12/24/17 ', '2017-05-23 15:20:30'),
('6', '01/30/17 - 02/05/17 ', '2017-05-23 15:20:27'),
('7', '02/06/17 - 02/12/17 ', '2017-05-23 15:20:27'),
('8', '02/13/17 - 02/19/17 ', '2017-05-23 15:20:27'),
('9', '02/20/17 - 02/26/17 ', '2017-05-23 15:20:27');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `zu_bezahlen`
--

CREATE TABLE `zu_bezahlen` (
  `Rechnungs_Nr` bigint(20) UNSIGNED NOT NULL,
  `Schueler_ID` varchar(20) NOT NULL,
  `W_Nr` char(15) NOT NULL,
  `Preis_INS` varchar(100) NOT NULL DEFAULT '0,00',
  `Essen_1_INS` int(100) NOT NULL,
  `Essen_2_INS` int(100) NOT NULL,
  `Essen_3_INS` int(100) NOT NULL,
  `Zuletzt_geändert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `zu_bezahlen`
--

INSERT INTO `zu_bezahlen` (`Rechnungs_Nr`, `Schueler_ID`, `W_Nr`, `Preis_INS`, `Essen_1_INS`, `Essen_2_INS`, `Essen_3_INS`, `Zuletzt_geändert`) VALUES
(1, '1', '1', '2,80', 5, 3, 1, '2016-04-05 16:47:57'),
(2, '2', '2', '2,80', 8, 3, 9, '2016-04-05 16:47:57');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `bestellte_essen`
--
ALTER TABLE `bestellte_essen`
  ADD PRIMARY KEY (`Bestell_Nr`),
  ADD UNIQUE KEY `Bestell_Nr` (`Bestell_Nr`),
  ADD KEY `Schueler_ID` (`Schueler_ID`),
  ADD KEY `W_Nr` (`W_Nr`);

--
-- Indizes für die Tabelle `bestellungen`
--
ALTER TABLE `bestellungen`
  ADD UNIQUE KEY `Auftrags_Nr` (`Auftrags_Nr`),
  ADD KEY `W_Nr` (`W_Nr`);

--
-- Indizes für die Tabelle `empfänger`
--
ALTER TABLE `empfänger`
  ADD PRIMARY KEY (`E_Nr`);

--
-- Indizes für die Tabelle `schueler`
--
ALTER TABLE `schueler`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Klassen_Nr` (`Klassen_Nr`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indizes für die Tabelle `wochen`
--
ALTER TABLE `wochen`
  ADD PRIMARY KEY (`Wochen_Nr`);

--
-- Indizes für die Tabelle `zu_bezahlen`
--
ALTER TABLE `zu_bezahlen`
  ADD PRIMARY KEY (`Rechnungs_Nr`),
  ADD UNIQUE KEY `Rechnungs_Nr` (`Rechnungs_Nr`),
  ADD KEY `Schueler_ID` (`Schueler_ID`),
  ADD KEY `W_Nr` (`W_Nr`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `bestellte_essen`
--
ALTER TABLE `bestellte_essen`
  MODIFY `Bestell_Nr` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT für Tabelle `bestellungen`
--
ALTER TABLE `bestellungen`
  MODIFY `Auftrags_Nr` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT für Tabelle `zu_bezahlen`
--
ALTER TABLE `zu_bezahlen`
  MODIFY `Rechnungs_Nr` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `bestellte_essen`
--
ALTER TABLE `bestellte_essen`
  ADD CONSTRAINT `bestellte_essen_ibfk_3` FOREIGN KEY (`Schueler_ID`) REFERENCES `schueler` (`ID`),
  ADD CONSTRAINT `bestellte_essen_ibfk_4` FOREIGN KEY (`W_Nr`) REFERENCES `wochen` (`Wochen_Nr`);

--
-- Constraints der Tabelle `bestellungen`
--
ALTER TABLE `bestellungen`
  ADD CONSTRAINT `bestellungen_ibfk_1` FOREIGN KEY (`W_Nr`) REFERENCES `wochen` (`Wochen_Nr`);

--
-- Constraints der Tabelle `zu_bezahlen`
--
ALTER TABLE `zu_bezahlen`
  ADD CONSTRAINT `zu_bezahlen_ibfk_1` FOREIGN KEY (`Schueler_ID`) REFERENCES `schueler` (`ID`),
  ADD CONSTRAINT `zu_bezahlen_ibfk_2` FOREIGN KEY (`W_Nr`) REFERENCES `wochen` (`Wochen_Nr`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
