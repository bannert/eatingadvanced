-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 23. Mai 2017 um 18:15
-- Server-Version: 10.1.10-MariaDB
-- PHP-Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `beispiel1`
--
CREATE DATABASE IF NOT EXISTS `beispiel1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `beispiel1`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eltern`
--

CREATE TABLE `eltern` (
  `id` int(11) NOT NULL,
  `anrede` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `passwort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `eltern`
--

INSERT INTO `eltern` (`id`, `anrede`, `name`, `passwort`) VALUES
(21, 656, 34, 34324);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kinder`
--

CREATE TABLE `kinder` (
  `id` int(11) NOT NULL,
  `eltern` int(11) NOT NULL,
  `name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `kinder`
--

INSERT INTO `kinder` (`id`, `eltern`, `name`) VALUES
(1, 21, 343);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `eltern`
--
ALTER TABLE `eltern`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `kinder`
--
ALTER TABLE `kinder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eltern` (`eltern`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `kinder`
--
ALTER TABLE `kinder`
  ADD CONSTRAINT `kinder_ibfk_1` FOREIGN KEY (`eltern`) REFERENCES `eltern` (`id`);
--
-- Datenbank: `haustür`
--
CREATE DATABASE IF NOT EXISTS `haustür` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `haustür`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `klingel`
--

CREATE TABLE `klingel` (
  `Besucher_Nr` bigint(20) UNSIGNED NOT NULL,
  `Uhrzeit` time NOT NULL,
  `Datum` date NOT NULL,
  `Erstellt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `klingel`
--

INSERT INTO `klingel` (`Besucher_Nr`, `Uhrzeit`, `Datum`, `Erstellt`) VALUES
(1, '10:23:23', '2016-07-04', '2016-07-04 08:47:32'),
(79, '14:03:36', '2016-07-04', '2016-07-04 12:03:37'),
(80, '14:05:23', '2016-07-04', '2016-07-04 12:05:24'),
(81, '14:16:16', '2016-07-04', '2016-07-04 12:16:16'),
(82, '14:16:19', '2016-07-04', '2016-07-04 12:16:19'),
(83, '14:18:16', '2016-07-04', '2016-07-04 12:18:16'),
(84, '14:18:19', '2016-07-04', '2016-07-04 12:18:19'),
(85, '14:18:19', '2016-07-04', '2016-07-04 12:18:20'),
(86, '14:18:19', '2016-07-04', '2016-07-04 12:18:20'),
(87, '14:18:19', '2016-07-04', '2016-07-04 12:18:20'),
(88, '14:18:19', '2016-07-04', '2016-07-04 12:18:20'),
(89, '14:18:20', '2016-07-04', '2016-07-04 12:18:20'),
(90, '14:18:20', '2016-07-04', '2016-07-04 12:18:20'),
(91, '14:18:20', '2016-07-04', '2016-07-04 12:18:20'),
(92, '14:18:20', '2016-07-04', '2016-07-04 12:18:21'),
(93, '14:18:20', '2016-07-04', '2016-07-04 12:18:21'),
(94, '14:18:20', '2016-07-04', '2016-07-04 12:18:21'),
(95, '14:18:21', '2016-07-04', '2016-07-04 12:18:21'),
(96, '14:18:21', '2016-07-04', '2016-07-04 12:18:21'),
(97, '14:18:21', '2016-07-04', '2016-07-04 12:18:22'),
(98, '14:18:21', '2016-07-04', '2016-07-04 12:18:22'),
(99, '14:18:21', '2016-07-04', '2016-07-04 12:18:22'),
(100, '14:18:22', '2016-07-04', '2016-07-04 12:18:22'),
(101, '14:18:22', '2016-07-04', '2016-07-04 12:18:23'),
(102, '14:18:22', '2016-07-04', '2016-07-04 12:18:23'),
(103, '14:18:22', '2016-07-04', '2016-07-04 12:18:23'),
(104, '14:18:24', '2016-07-04', '2016-07-04 12:18:25'),
(105, '14:18:28', '2016-07-04', '2016-07-04 12:18:29'),
(106, '14:18:29', '2016-07-04', '2016-07-04 12:18:29'),
(107, '14:18:29', '2016-07-04', '2016-07-04 12:18:29'),
(108, '14:18:29', '2016-07-04', '2016-07-04 12:18:29'),
(109, '14:18:29', '2016-07-04', '2016-07-04 12:18:29'),
(110, '14:18:29', '2016-07-04', '2016-07-04 12:18:29'),
(111, '14:19:38', '2016-07-04', '2016-07-04 12:19:38'),
(112, '14:19:41', '2016-07-04', '2016-07-04 12:19:41'),
(113, '14:19:41', '2016-07-04', '2016-07-04 12:19:41'),
(114, '14:19:41', '2016-07-04', '2016-07-04 12:19:41'),
(115, '14:19:42', '2016-07-04', '2016-07-04 12:19:42');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `klingel`
--
ALTER TABLE `klingel`
  ADD PRIMARY KEY (`Besucher_Nr`),
  ADD UNIQUE KEY `Besucher_Nr` (`Besucher_Nr`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `klingel`
--
ALTER TABLE `klingel`
  MODIFY `Besucher_Nr` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;--
-- Datenbank: `pausenraum`
--
CREATE DATABASE IF NOT EXISTS `pausenraum` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pausenraum`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pausenraum`
--

CREATE TABLE `pausenraum` (
  `ID` varchar(10) NOT NULL,
  `Essen_P_MO` int(1) NOT NULL,
  `Essen_P_DI` int(1) NOT NULL,
  `Essen_P_MI` int(1) NOT NULL,
  `Essen_P_DO` int(1) NOT NULL,
  `Essen_P_FR` int(1) NOT NULL,
  `Zuletzt_geändert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `pausenraum`
--
ALTER TABLE `pausenraum`
  ADD PRIMARY KEY (`ID`);
--
-- Datenbank: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

--
-- Daten für Tabelle `pma__bookmark`
--

INSERT INTO `pma__bookmark` (`id`, `dbase`, `user`, `label`, `query`) VALUES
(1, 'schule', 'root', 'i', 'SELECT * FROM `schule` ORDER BY `ID`  ASC '),
(2, 'schule', 'root', 'r', 'SELECT * FROM `schueler`');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Daten für Tabelle `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{"snap_to_grid":"off","angular_direct":"direct","relation_lines":"true","side_menu":"false","pin_text":"false"}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Daten für Tabelle `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'Beispiel', '{"quick_or_custom":"quick","what":"sql","db_select[]":["beispiel1","haustÃ¼r","pausenraum","phpmyadmin","schule"],"output_format":"sendit","filename_template":"@SERVER@","remember_template":"on","charset":"utf-8","compression":"none","maxsize":"","codegen_structure_or_data":"data","codegen_format":"0","csv_separator":",","csv_enclosed":"\\"","csv_escaped":"\\"","csv_terminated":"AUTO","csv_null":"NULL","csv_structure_or_data":"data","excel_null":"NULL","excel_edition":"win","excel_structure_or_data":"data","htmlword_structure_or_data":"structure_and_data","htmlword_null":"NULL","json_structure_or_data":"data","latex_caption":"something","latex_structure_or_data":"structure_and_data","latex_structure_caption":"Struktur der Tabelle @TABLE@","latex_structure_continued_caption":"Struktur der Tabelle @TABLE@ (Fortsetzung)","latex_structure_label":"tab:@TABLE@-structure","latex_relation":"something","latex_comments":"something","latex_mime":"something","latex_columns":"something","latex_data_caption":"Inhalt der Tabelle @TABLE@","latex_data_continued_caption":"Inhalt der Tabelle @TABLE@ (Fortsetzung)","latex_data_label":"tab:@TABLE@-data","latex_null":"\\\\textit{NULL}","mediawiki_structure_or_data":"data","mediawiki_caption":"something","mediawiki_headers":"something","ods_null":"NULL","ods_structure_or_data":"data","odt_structure_or_data":"structure_and_data","odt_relation":"something","odt_comments":"something","odt_mime":"something","odt_columns":"something","odt_null":"NULL","pdf_report_title":"","pdf_structure_or_data":"data","phparray_structure_or_data":"data","sql_include_comments":"something","sql_header_comment":"","sql_compatibility":"NONE","sql_structure_or_data":"structure_and_data","sql_create_table":"something","sql_auto_increment":"something","sql_create_view":"something","sql_procedure_function":"something","sql_create_trigger":"something","sql_backquotes":"something","sql_type":"INSERT","sql_insert_syntax":"both","sql_max_query_size":"50000","sql_hex_for_binary":"something","sql_utc_time":"something","texytext_structure_or_data":"structure_and_data","texytext_null":"NULL","yaml_structure_or_data":"data","":null,"as_separate_files":null,"csv_removeCRLF":null,"csv_columns":null,"excel_removeCRLF":null,"excel_columns":null,"htmlword_columns":null,"json_pretty_print":null,"ods_columns":null,"sql_dates":null,"sql_relation":null,"sql_mime":null,"sql_use_transaction":null,"sql_disable_fk":null,"sql_views_as_tables":null,"sql_metadata":null,"sql_drop_database":null,"sql_drop_table":null,"sql_if_not_exists":null,"sql_truncate":null,"sql_delayed":null,"sql_ignore":null,"texytext_columns":null}'),
(2, 'root', 'server', 'schule', '{"quick_or_custom":"quick","what":"sql","db_select[]":["beispiel1","haustÃ¼r","pausenraum","phpmyadmin","schule"],"output_format":"sendit","filename_template":"@SERVER@","remember_template":"on","charset":"utf-8","compression":"none","maxsize":"","codegen_structure_or_data":"data","codegen_format":"0","csv_separator":",","csv_enclosed":"\\"","csv_escaped":"\\"","csv_terminated":"AUTO","csv_null":"NULL","csv_structure_or_data":"data","excel_null":"NULL","excel_edition":"win","excel_structure_or_data":"data","htmlword_structure_or_data":"structure_and_data","htmlword_null":"NULL","json_structure_or_data":"data","latex_caption":"something","latex_structure_or_data":"structure_and_data","latex_structure_caption":"Struktur der Tabelle @TABLE@","latex_structure_continued_caption":"Struktur der Tabelle @TABLE@ (Fortsetzung)","latex_structure_label":"tab:@TABLE@-structure","latex_relation":"something","latex_comments":"something","latex_mime":"something","latex_columns":"something","latex_data_caption":"Inhalt der Tabelle @TABLE@","latex_data_continued_caption":"Inhalt der Tabelle @TABLE@ (Fortsetzung)","latex_data_label":"tab:@TABLE@-data","latex_null":"\\\\textit{NULL}","mediawiki_structure_or_data":"data","mediawiki_caption":"something","mediawiki_headers":"something","ods_null":"NULL","ods_structure_or_data":"data","odt_structure_or_data":"structure_and_data","odt_relation":"something","odt_comments":"something","odt_mime":"something","odt_columns":"something","odt_null":"NULL","pdf_report_title":"","pdf_structure_or_data":"data","phparray_structure_or_data":"data","sql_include_comments":"something","sql_header_comment":"","sql_compatibility":"NONE","sql_structure_or_data":"structure_and_data","sql_create_table":"something","sql_auto_increment":"something","sql_create_view":"something","sql_procedure_function":"something","sql_create_trigger":"something","sql_backquotes":"something","sql_type":"INSERT","sql_insert_syntax":"both","sql_max_query_size":"50000","sql_hex_for_binary":"something","sql_utc_time":"something","texytext_structure_or_data":"structure_and_data","texytext_null":"NULL","yaml_structure_or_data":"data","":null,"as_separate_files":null,"csv_removeCRLF":null,"csv_columns":null,"excel_removeCRLF":null,"excel_columns":null,"htmlword_columns":null,"json_pretty_print":null,"ods_columns":null,"sql_dates":null,"sql_relation":null,"sql_mime":null,"sql_use_transaction":null,"sql_disable_fk":null,"sql_views_as_tables":null,"sql_metadata":null,"sql_drop_database":null,"sql_drop_table":null,"sql_if_not_exists":null,"sql_truncate":null,"sql_delayed":null,"sql_ignore":null,"texytext_columns":null}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Daten für Tabelle `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"schule","table":"user"},{"db":"schule","table":"wochen"},{"db":"schule","table":"bestellte_essen"},{"db":"schule","table":"empf\\u00e4nger"},{"db":"schule","table":"schueler"},{"db":"beispiel1","table":"eltern"},{"db":"beispiel1","table":"kinder"},{"db":"schule","table":"bestellungen"},{"db":"schule","table":"zu_bezahlen"},{"db":"n","table":"wochen"}]');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

--
-- Daten für Tabelle `pma__savedsearches`
--

INSERT INTO `pma__savedsearches` (`id`, `username`, `db_name`, `search_name`, `search_data`) VALUES
(1, 'root', 'schule', 'n', '{"criteriaColumnCount":3,"criteriaColumn":["`schule`.*","",""],"criteriaSort":["","",""],"criteriaShow":["on"],"criteria":["01","",""],"criteriaAndOrRow":["or"],"criteriaAndOrColumn":["and","and"],"rows":"0","Or0":["","",""]}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Daten für Tabelle `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'schule', 'bestellte_essen', '{"CREATE_TIME":"2016-04-07 19:01:50","col_visib":["1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1"],"sorted_col":"`Essen_2_MO` ASC"}', '2016-09-24 17:22:55'),
('root', 'schule', 'schueler', '{"sorted_col":"`Klassen_ID` ASC"}', '2016-10-07 16:36:46'),
('root', 'schule', 'wochen', '{"sorted_col":"`Von-Bis` ASC"}', '2016-09-16 15:34:18');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Daten für Tabelle `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2016-10-07 16:29:51', '{"lang":"de","collation_connection":"utf8mb4_unicode_ci","ThemeDefault":"pmahomme"}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indizes für die Tabelle `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indizes für die Tabelle `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indizes für die Tabelle `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indizes für die Tabelle `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indizes für die Tabelle `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indizes für die Tabelle `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indizes für die Tabelle `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indizes für die Tabelle `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indizes für die Tabelle `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indizes für die Tabelle `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indizes für die Tabelle `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indizes für die Tabelle `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indizes für die Tabelle `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indizes für die Tabelle `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indizes für die Tabelle `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indizes für die Tabelle `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indizes für die Tabelle `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;--
-- Datenbank: `schule`
--
CREATE DATABASE IF NOT EXISTS `schule` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `schule`;

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
