-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Dim 29 Août 2010 à 18:43
-- Version du serveur: 5.1.37
-- Version de PHP: 5.2.11


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `phpore_demo`
--

-- --------------------------------------------------------

--
-- Structure de la table `phpore_battles`
--

DROP TABLE IF EXISTS `phpore_battles`;
CREATE TABLE `phpore_battles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `battle_key` varchar(32) NOT NULL DEFAULT '',
  `php` text NOT NULL,
  `music` varchar(255) NOT NULL DEFAULT '',
  `background` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

--
-- Contenu de la table `phpore_battles`
--


-- --------------------------------------------------------

--
-- Structure de la table `phpore_battles_vars`
--

DROP TABLE IF EXISTS `phpore_battles_vars`;
CREATE TABLE `phpore_battles_vars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `battle_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

--
-- Contenu de la table `phpore_battles_vars`
--


-- --------------------------------------------------------

--
-- Structure de la table `phpore_chatbox`
--

DROP TABLE IF EXISTS `phpore_chatbox`;
CREATE TABLE `phpore_chatbox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` varchar(255) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `message` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) TYPE=MyISAM  AUTO_INCREMENT=385 ;

--
-- Contenu de la table `phpore_chatbox`
--


-- --------------------------------------------------------

--
-- Structure de la table `phpore_classes`
--

DROP TABLE IF EXISTS `phpore_classes`;
CREATE TABLE `phpore_classes` (
  `classname` varchar(255) NOT NULL DEFAULT '',
  `class_title` varchar(255) NOT NULL DEFAULT '',
  `selectable` tinyint(1) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `charaset` varchar(255) NOT NULL DEFAULT '',
  `battler` varchar(255) NOT NULL DEFAULT '',
  `pic_width` mediumint(9) NOT NULL DEFAULT '0',
  `pic_height` mediumint(9) NOT NULL DEFAULT '0',
  `hp_plus` int(11) NOT NULL DEFAULT '0',
  `mp_plus` int(11) NOT NULL DEFAULT '0',
  `attack_plus` int(11) NOT NULL DEFAULT '0',
  `defense_plus` int(11) NOT NULL DEFAULT '0',
  `mind_plus` int(11) NOT NULL DEFAULT '0',
  `agility_plus` int(11) NOT NULL DEFAULT '0',
  `exp_curve` varchar(255) NOT NULL DEFAULT '',
  `hp_curve` varchar(255) NOT NULL DEFAULT '',
  `mp_curve` varchar(255) NOT NULL DEFAULT '',
  `attack_curve` varchar(255) NOT NULL DEFAULT '',
  `defense_curve` varchar(255) NOT NULL DEFAULT '',
  `mind_curve` varchar(255) NOT NULL DEFAULT '',
  `agility_curve` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`classname`),
  UNIQUE KEY `classname` (`classname`),
  KEY `classname_2` (`classname`)
) TYPE=MyISAM;

--
-- Contenu de la table `phpore_classes`
--

INSERT INTO `phpore_classes` VALUES('', '', 0, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '');
INSERT INTO `phpore_classes` VALUES('fighter', 'Guerrier', 1, '', 'vx_chara01_b_02.png', 'vx_chara01_b_02.png', 128, 192, 552, 0, 58, 57, 20, 26, '2 * sqrt(X) - 230 * X + 337.1 * X * X - 110', '100 * sqrt(X) - 1 * X + 0.8 * X * X - 100', '0', '48 * sqrt(X) - 0.1 * X + 0.05 * X * X - 48', '44 * sqrt(X) - 0.09 * X + 0.05 * X * X - 44', '14 * sqrt(X) - 0.04 * X + 0.02 * X * X - 14', '22 * sqrt(X) - 0.042 * X + 0.009 * X * X - 22');
INSERT INTO `phpore_classes` VALUES('gargouille', 'Gargouille', 1, '', 'vx_chara08_a_08.png', 'vx_chara08_a_08.png', 128, 192, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `phpore_classes` VALUES('elfe', 'Elfe', 1, '', 'vx_chara01_a_03.png', 'vx_chara01_a_03.png', 128, 192, 0, 0, 0, 0, 0, 0, '2 * sqrt(X) - 230 * X + 337.1 * X * X - 110', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Structure de la table `phpore_config`
--

DROP TABLE IF EXISTS `phpore_config`;
CREATE TABLE `phpore_config` (
  `cache_dir` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(255) NOT NULL DEFAULT '',
  `site_desc` varchar(255) NOT NULL DEFAULT '',
  `site_name` varchar(255) NOT NULL DEFAULT '',
  `template` varchar(255) NOT NULL DEFAULT '',
  `time_zone` float NOT NULL DEFAULT '0',
  `use_cache` tinyint(1) NOT NULL DEFAULT '0',
  `tile_size` tinyint(2) NOT NULL DEFAULT '0',
  `tileset_tiles_lower` int(4) NOT NULL DEFAULT '0',
  `tileset_tiles_upper` int(4) NOT NULL DEFAULT '0',
  `tileset_cols` tinyint(4) NOT NULL DEFAULT '0',
  `tileset_bgcolor` varchar(255) NOT NULL DEFAULT '',
  `use_gzip` tinyint(1) NOT NULL DEFAULT '0',
  `refresh_method` tinyint(1) NOT NULL DEFAULT '0',
  `chat_history` int(11) NOT NULL DEFAULT '0',
  `chat_history_time` int(11) NOT NULL DEFAULT '0',
  `day_number` int(11) NOT NULL DEFAULT '0',
  `default_location` varchar(255) NOT NULL DEFAULT '',
  `preset_teleport_sprite` varchar(255) NOT NULL DEFAULT '',
  `optimize_maps` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `vars_test` varchar(255) NOT NULL
) TYPE=MyISAM;

--
-- Contenu de la table `phpore_config`
--

INSERT INTO `phpore_config` VALUES('cache/', 'english', 'Online Rpg Editor', 'PHPore', 'default', -12, 1, 32, 128, 256, 1, '#FF00FF', 1, 1, 10, 1, 14850, '14,6,10,3', 'teleport_sign.gif', 0, 0, 'valeur');

-- --------------------------------------------------------

--
-- Structure de la table `phpore_events`
--

DROP TABLE IF EXISTS `phpore_events`;
CREATE TABLE `phpore_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `picture` varchar(255) NOT NULL DEFAULT '',
  `pic_width` mediumint(9) NOT NULL DEFAULT '0',
  `pic_height` mediumint(9) NOT NULL DEFAULT '0',
  `dir` varchar(5) NOT NULL DEFAULT '',
  `text_script` text NOT NULL,
  `script` text NOT NULL,
  `layer` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) TYPE=MyISAM  AUTO_INCREMENT=39 ;

--
-- Contenu de la table `phpore_events`
--

INSERT INTO `phpore_events` VALUES(37, 'Téléporter : 14. map01 [11,11]', 'teleport_sign.gif', 14, 16, '', 'TELEPORT 14,11,0 down', 'a:2:{i:0;a:2:{i:0;i:9;i:1;a:4:{i:0;i:14;i:1;i:11;i:2;i:0;i:3;i:0;}}i:1;a:2:{i:0;i:-1;i:1;a:0:{}}}', 0);
INSERT INTO `phpore_events` VALUES(38, 'Téléporter : 15. map02 [5,5]', 'teleport_sign.gif', 14, 16, '', 'TELEPORT 15,5,15 up', 'a:2:{i:0;a:2:{i:0;i:9;i:1;a:4:{i:0;i:15;i:1;i:5;i:2;i:15;i:3;i:2;}}i:1;a:2:{i:0;i:-1;i:1;a:0:{}}}', 0);
INSERT INTO `phpore_events` VALUES(27, 'PNJ1', 'vx_chara02_c_04.png', 128, 192, '0,0,1', 'MESSAGE\nBonjour,\n\nVous avez besoin d''aide ?\nEND MESSAGE\n\nCHOICE $choix\nJe me suis perdu...\nNon merci, tout va bien !\nEND CHOICE\n\n\nIF $choix = 0\nMESSAGE\nContinuez vers le nord et vous trouverez notre village pour vous reposer.\nEND MESSAGE\nELSE\nMESSAGE\nOk, bon vent alors.\nEND MESSAGE\nEND IF', 'a:8:{i:0;a:2:{i:0;i:1;i:1;a:1:{i:0;s:45:"Bonjour,<br /><br />Vous avez besoin d''aide ?";}}i:1;a:2:{i:0;i:5;i:1;a:2:{i:0;s:5:"choix";i:1;a:2:{i:0;s:19:"Je me suis perdu...";i:1;s:25:"Non merci, tout va bien !";}}}i:2;a:2:{i:0;i:0;i:1;a:4:{i:0;s:5:"choix";i:1;i:1;i:2;b:0;i:3;d:0;}}i:3;a:2:{i:0;i:1;i:1;a:1:{i:0;s:73:"Continuez vers le nord et vous trouverez notre village pour vous reposer.";}}i:4;a:2:{i:0;i:0;i:1;a:1:{i:0;b:0;}}i:5;a:2:{i:0;i:1;i:1;a:1:{i:0;s:19:"Ok, bon vent alors.";}}i:6;a:2:{i:0;i:0;i:1;a:2:{i:0;b:0;i:1;b:0;}}i:7;a:2:{i:0;i:-1;i:1;a:0:{}}}', 1);
INSERT INTO `phpore_events` VALUES(36, 'VAULT EXAMPLE', 'vx_chara02_c_07.png', 128, 192, '0,0,1', 'PHP\n$this->vars[''points''] = $user->points;\nEND PHP\n\nIF $USER_loan = 0 \n\n	MESSAGE HTML \n	<b>Vault Keeper</b><br> \n	Hi, Welcome to the vault. \n	Money : <i>$points</i>\n	END MESSAGE \n	\n	MESSAGE HTML \n	<b>Vault Keeper</b><br> \n	What do you want to do? \n	END MESSAGE\n	\n	CHOICE $action  \n	Deposit \n	Withdraw \n	Loan \n	Exit\n	END CHOICE \n\n	IF $action = 0 \n\n		INPUT_NUMBER $value MESSAGE HTML \n		<b>Vault Keeper</b><br> \n		How much do you want to deposit? \n		END MESSAGE \n\n		IF $value <= $points \n\n			VAR $USER_vault + $value \n			VAR $points - $value\n\n			MESSAGE HTML \n			<b>Vault Keeper</b><br> \n			You deposited $value! \n			END MESSAGE \n\n		ELSE \n\n			MESSAGE HTML \n			<b>Vault Keeper</b><br> \n			You don''t have that much money! \n			END MESSAGE \n\n		END IF \n\n	END IF \n\n	IF $action = 1 \n\n		INPUT_NUMBER $value MESSAGE HTML\n		<b>Vault Keeper</b><br> \n		How much do you want to withdraw? \n		END MESSAGE \n\n		IF $USER_vault >= $value \n\n			VAR $USER_vault - $value \n			VAR $points + $value\n\n			// Code to update money goes here! \n\n			MESSAGE HTML \n			<b>Vault Keeper</b><br> \n			You withdrew $value! \n			END MESSAGE \n\n		ELSE \n\n			MESSAGE HTML \n			<b>Vault Keeper</b><br> \n			You dont have that much in the vault! \n			END MESSAGE \n\n		END IF \n\n	END IF \n\n	IF $action = 2 \n\n		INPUT_NUMBER $value MESSAGE HTML \n		<b>Vault Keeper</b><br> \n		How much do you want to loan? \n		END MESSAGE \n\n		IF $value <= 1000 \n\n			MESSAGE HTML \n			<b>Vault Keeper</b><br> \n			Here is your money. \n			Please pay back later. \n			END MESSAGE \n\n			VAR $USER_loan = $value \n			VAR $points + $value\n\n			// Code to update money goes here! \n\n		ELSE \n\n			MESSAGE HTML \n			<b>Vault Keeper</b><br> \n			You cant loan that much!<br> \n			Maximum 1000 per customer! \n			END MESSAGE \n\n		END IF \n\n	END IF \n\nELSE\n\n	MESSAGE HTML \n	<b>Vault Keeper</b><br> \n	You have to pay back your loan,<br> \n	Before you can withdraw and deposit! \n	END MESSAGE \n\n	// Code to store money in $points goes here \n\n	IF $points >= $USER_loan \n\n		MESSAGE HTML \n		<b>Vault Keeper</b><br> \n		Want to pay back your loan? \n		END MESSAGE \n\n		CHOICE $loan \n		Yes \n		Not, Yet \n		END CHOICE \n\n		IF $loan = 0 \n\n		\n		    VAR $points - $USER_loan\n			VAR $USER_loan = 0 \n			// Code to update money goes here! \n\n			MESSAGE HTML \n			<b>Vault Keeper</b><br> \n			Thanks, Feel free to use the Vault again! \n			END MESSAGE \n\n		ELSE \n\n			MESSAGE HTML \n			<b>Vault Keeper</b><br> \n			Please come back later! \n			END MESSAGE \n\n		END IF \n\n	END IF \n\nEND IF\n\nPHP\nif ( $this->vars[''points''] != $user->points )\n{\n	$user->set(''points'', $this->vars[''points'']);\n}\nEND PHP', 'a:51:{i:0;a:2:{i:0;i:11;i:1;a:1:{i:0;s:39:"$this->vars[''points''] = $user->points;\n";}}i:1;a:2:{i:0;i:0;i:1;a:4:{i:0;s:9:"USER_loan";i:1;i:1;i:2;b:0;i:3;d:0;}}i:2;a:2:{i:0;i:1;i:1;a:1:{i:0;s:75:"	<b>Vault Keeper</b><br> 	Hi, Welcome to the vault. 	Money : <i>$points</i>";}}i:3;a:2:{i:0;i:1;i:1;a:1:{i:0;s:50:"	<b>Vault Keeper</b><br> 	What do you want to do? ";}}i:4;a:2:{i:0;i:5;i:1;a:2:{i:0;s:6:"action";i:1;a:4:{i:0;s:9:"	Deposit ";i:1;s:10:"	Withdraw ";i:2;s:6:"	Loan ";i:3;s:5:"	Exit";}}}i:5;a:2:{i:0;i:0;i:1;a:4:{i:0;s:6:"action";i:1;i:1;i:2;b:0;i:3;d:0;}}i:6;a:2:{i:0;i:6;i:1;a:3:{i:0;s:61:"		<b>Vault Keeper</b><br> 		How much do you want to deposit? ";i:1;s:5:"value";i:2;b:1;}}i:7;a:2:{i:0;i:0;i:1;a:4:{i:0;s:5:"value";i:1;i:4;i:2;b:1;i:3;s:6:"points";}}i:8;a:2:{i:0;i:8;i:1;a:4:{i:0;s:10:"USER_vault";i:1;i:1;i:2;b:1;i:3;s:5:"value";}}i:9;a:2:{i:0;i:8;i:1;a:4:{i:0;s:6:"points";i:1;i:2;i:2;b:1;i:3;s:5:"value";}}i:10;a:2:{i:0;i:1;i:1;a:1:{i:0;s:52:"			<b>Vault Keeper</b><br> 			You deposited $value! ";}}i:11;a:2:{i:0;i:0;i:1;a:1:{i:0;b:0;}}i:12;a:2:{i:0;i:1;i:1;a:1:{i:0;s:62:"			<b>Vault Keeper</b><br> 			You don''t have that much money! ";}}i:13;a:2:{i:0;i:0;i:1;a:2:{i:0;b:0;i:1;b:0;}}i:14;a:2:{i:0;i:0;i:1;a:2:{i:0;b:0;i:1;b:0;}}i:15;a:2:{i:0;i:0;i:1;a:4:{i:0;s:6:"action";i:1;i:1;i:2;b:0;i:3;d:1;}}i:16;a:2:{i:0;i:6;i:1;a:3:{i:0;s:62:"		<b>Vault Keeper</b><br> 		How much do you want to withdraw? ";i:1;s:5:"value";i:2;b:1;}}i:17;a:2:{i:0;i:0;i:1;a:4:{i:0;s:10:"USER_vault";i:1;i:5;i:2;b:1;i:3;s:5:"value";}}i:18;a:2:{i:0;i:8;i:1;a:4:{i:0;s:10:"USER_vault";i:1;i:2;i:2;b:1;i:3;s:5:"value";}}i:19;a:2:{i:0;i:8;i:1;a:4:{i:0;s:6:"points";i:1;i:1;i:2;b:1;i:3;s:5:"value";}}i:20;a:2:{i:0;i:1;i:1;a:1:{i:0;s:51:"			<b>Vault Keeper</b><br> 			You withdrew $value! ";}}i:21;a:2:{i:0;i:0;i:1;a:1:{i:0;b:0;}}i:22;a:2:{i:0;i:1;i:1;a:1:{i:0;s:68:"			<b>Vault Keeper</b><br> 			You dont have that much in the vault! ";}}i:23;a:2:{i:0;i:0;i:1;a:2:{i:0;b:0;i:1;b:0;}}i:24;a:2:{i:0;i:0;i:1;a:2:{i:0;b:0;i:1;b:0;}}i:25;a:2:{i:0;i:0;i:1;a:4:{i:0;s:6:"action";i:1;i:1;i:2;b:0;i:3;d:2;}}i:26;a:2:{i:0;i:6;i:1;a:3:{i:0;s:58:"		<b>Vault Keeper</b><br> 		How much do you want to loan? ";i:1;s:5:"value";i:2;b:1;}}i:27;a:2:{i:0;i:0;i:1;a:4:{i:0;s:5:"value";i:1;i:4;i:2;b:0;i:3;d:1000;}}i:28;a:2:{i:0;i:1;i:1;a:1:{i:0;s:76:"			<b>Vault Keeper</b><br> 			Here is your money. 			Please pay back later. ";}}i:29;a:2:{i:0;i:8;i:1;a:4:{i:0;s:9:"USER_loan";i:1;i:0;i:2;b:1;i:3;s:5:"value";}}i:30;a:2:{i:0;i:8;i:1;a:4:{i:0;s:6:"points";i:1;i:1;i:2;b:1;i:3;s:5:"value";}}i:31;a:2:{i:0;i:0;i:1;a:1:{i:0;b:0;}}i:32;a:2:{i:0;i:1;i:1;a:1:{i:0;s:89:"			<b>Vault Keeper</b><br> 			You cant loan that much!<br> 			Maximum 1000 per customer! ";}}i:33;a:2:{i:0;i:0;i:1;a:2:{i:0;b:0;i:1;b:0;}}i:34;a:2:{i:0;i:0;i:1;a:2:{i:0;b:0;i:1;b:0;}}i:35;a:2:{i:0;i:0;i:1;a:1:{i:0;b:0;}}i:36;a:2:{i:0;i:1;i:1;a:1:{i:0;s:100:"	<b>Vault Keeper</b><br> 	You have to pay back your loan,<br> 	Before you can withdraw and deposit! ";}}i:37;a:2:{i:0;i:0;i:1;a:4:{i:0;s:6:"points";i:1;i:5;i:2;b:1;i:3;s:9:"USER_loan";}}i:38;a:2:{i:0;i:1;i:1;a:1:{i:0;s:56:"		<b>Vault Keeper</b><br> 		Want to pay back your loan? ";}}i:39;a:2:{i:0;i:5;i:1;a:2:{i:0;s:4:"loan";i:1;a:2:{i:0;s:6:"		Yes ";i:1;s:11:"		Not, Yet ";}}}i:40;a:2:{i:0;i:0;i:1;a:4:{i:0;s:4:"loan";i:1;i:1;i:2;b:0;i:3;d:0;}}i:41;a:2:{i:0;i:8;i:1;a:4:{i:0;s:6:"points";i:1;i:2;i:2;b:1;i:3;s:9:"USER_loan";}}i:42;a:2:{i:0;i:8;i:1;a:4:{i:0;s:9:"USER_loan";i:1;i:0;i:2;b:0;i:3;d:0;}}i:43;a:2:{i:0;i:1;i:1;a:1:{i:0;s:72:"			<b>Vault Keeper</b><br> 			Thanks, Feel free to use the Vault again! ";}}i:44;a:2:{i:0;i:0;i:1;a:1:{i:0;b:0;}}i:45;a:2:{i:0;i:1;i:1;a:1:{i:0;s:54:"			<b>Vault Keeper</b><br> 			Please come back later! ";}}i:46;a:2:{i:0;i:0;i:1;a:2:{i:0;b:0;i:1;b:0;}}i:47;a:2:{i:0;i:0;i:1;a:2:{i:0;b:0;i:1;b:0;}}i:48;a:2:{i:0;i:0;i:1;a:2:{i:0;b:0;i:1;b:0;}}i:49;a:2:{i:0;i:11;i:1;a:1:{i:0;s:96:"if ( $this->vars[''points''] != $user->points )\n{\n	$user->set(''points'', $this->vars[''points'']);\n}\n";}}i:50;a:2:{i:0;i:-1;i:1;a:0:{}}}', 1);
INSERT INTO `phpore_events` VALUES(32, 'PNJ2', 'vx_chara04_a_06.png', 128, 192, '0,0,1', 'MESSAGE\nVous ne pouvez pas passer !\n\nIl se passe des choses étranges dans le village.\nEND MESSAGE', 'a:2:{i:0;a:2:{i:0;i:1;i:1;a:1:{i:0;s:87:"Vous ne pouvez pas passer !<br /><br />Il se passe des choses étranges dans le village.";}}i:1;a:2:{i:0;i:-1;i:1;a:0:{}}}', 1);
INSERT INTO `phpore_events` VALUES(33, 'PNJ3', 'vx_chara04_a_06.png', 128, 192, '0,0,1', 'MESSAGE\nNos soldats sont dans le village afin de régler le problème. Vous pourrez rentrer quand ce sera fini.\nEND MESSAGE', 'a:2:{i:0;a:2:{i:0;i:1;i:1;a:1:{i:0;s:101:"Nos soldats sont dans le village afin de régler le problème. Vous pourrez rentrer quand ce sera fini.";}}i:1;a:2:{i:0;i:-1;i:1;a:0:{}}}', 1);
INSERT INTO `phpore_events` VALUES(34, 'PNJ4', 'vx_chara04_b_07.png', 128, 192, '0,2,1', 'MESSAGE\nJe suis inquiète, mon mari est dans le village en ce moment...\nEND MESSAGE', 'a:2:{i:0;a:2:{i:0;i:1;i:1;a:1:{i:0;s:62:"Je suis inquiète, mon mari est dans le village en ce moment...";}}i:1;a:2:{i:0;i:-1;i:1;a:0:{}}}', 1);
INSERT INTO `phpore_events` VALUES(35, 'PNJ5', 'vx_chara03_a_07.png', 128, 192, '0,0,1', 'MESSAGE\nJ''ai vu un homme bizarre rentrer dans le village tout à l''heure.\nEND MESSAGE', 'a:2:{i:0;a:2:{i:0;i:1;i:1;a:1:{i:0;s:64:"J''ai vu un homme bizarre rentrer dans le village tout à l''heure.";}}i:1;a:2:{i:0;i:-1;i:1;a:0:{}}}', 1);

-- --------------------------------------------------------

--
-- Structure de la table `phpore_guilds`
--

DROP TABLE IF EXISTS `phpore_guilds`;
CREATE TABLE `phpore_guilds` (
  `id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) TYPE=MyISAM;

--
-- Contenu de la table `phpore_guilds`
--

INSERT INTO `phpore_guilds` VALUES(0, '');

-- --------------------------------------------------------

--
-- Structure de la table `phpore_maps`
--

DROP TABLE IF EXISTS `phpore_maps`;
CREATE TABLE `phpore_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `blocs` text NOT NULL,
  `tileset` int(11) NOT NULL DEFAULT '0',
  `music` varchar(255) NOT NULL DEFAULT '',
  `optimized` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) TYPE=MyISAM  AUTO_INCREMENT=16 ;

--
-- Contenu de la table `phpore_maps`
--

INSERT INTO `phpore_maps` VALUES(14, 'map01', 'a:3:{i:0;a:16:{i:0;a:16:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;i:8;i:16;i:9;i:16;i:10;i:16;i:11;i:16;i:12;i:16;i:13;i:16;i:14;i:16;i:15;i:16;}i:1;a:16:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;i:8;i:16;i:9;i:16;i:10;i:16;i:11;i:16;i:12;i:16;i:13;i:16;i:14;i:16;i:15;i:16;}i:2;a:16:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;i:8;i:16;i:9;i:16;i:10;i:16;i:11;i:16;i:12;i:16;i:13;i:16;i:14;i:16;i:15;i:16;}i:3;a:16:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;i:8;i:16;i:9;i:16;i:10;i:16;i:11;i:16;i:12;i:16;i:13;i:16;i:14;i:16;i:15;i:16;}i:4;a:16:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;i:8;i:16;i:9;i:16;i:10;i:16;i:11;i:16;i:12;i:16;i:13;i:16;i:14;i:16;i:15;i:16;}i:5;a:16:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;i:8;i:16;i:9;i:16;i:10;i:16;i:11;i:16;i:12;i:16;i:13;i:16;i:14;i:16;i:15;i:16;}i:6;a:16:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;i:8;i:16;i:9;i:16;i:10;i:16;i:11;i:16;i:12;i:16;i:13;i:16;i:14;i:16;i:15;i:16;}i:7;a:16:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;i:8;i:16;i:9;i:16;i:10;i:16;i:11;i:16;i:12;i:16;i:13;i:16;i:14;i:16;i:15;i:16;}i:8;a:16:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;i:8;i:16;i:9;i:16;i:10;i:16;i:11;i:16;i:12;i:16;i:13;i:16;i:14;i:16;i:15;i:16;}i:9;a:16:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;i:8;i:16;i:9;i:16;i:10;i:16;i:11;i:16;i:12;i:16;i:13;i:16;i:14;i:16;i:15;i:16;}i:10;a:16:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;i:8;i:16;i:9;i:16;i:10;i:16;i:11;i:16;i:12;i:16;i:13;i:16;i:14;i:16;i:15;i:16;}i:11;a:16:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;i:8;i:16;i:9;i:16;i:10;i:16;i:11;i:16;i:12;i:16;i:13;i:16;i:14;i:16;i:15;i:16;}i:12;a:16:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;i:8;i:16;i:9;i:16;i:10;i:16;i:11;i:16;i:12;i:16;i:13;i:16;i:14;i:16;i:15;i:16;}i:13;a:16:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;i:8;i:16;i:9;i:16;i:10;i:16;i:11;i:16;i:12;i:16;i:13;i:16;i:14;i:16;i:15;i:16;}i:14;a:16:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;i:8;i:16;i:9;i:16;i:10;i:16;i:11;i:16;i:12;i:16;i:13;i:16;i:14;i:16;i:15;i:16;}i:15;a:16:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;i:8;i:16;i:9;i:16;i:10;i:16;i:11;i:16;i:12;i:16;i:13;i:16;i:14;i:16;i:15;i:16;}}i:1;a:16:{i:0;a:16:{i:0;i:72;i:1;i:73;i:2;i:72;i:3;i:73;i:4;i:79;i:5;i:86;i:6;i:87;i:7;i:78;i:8;i:79;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:112;i:14;i:112;i:15;i:112;}i:1;a:16:{i:0;i:80;i:1;i:81;i:2;i:80;i:3;i:81;i:4;i:80;i:5;i:79;i:6;i:0;i:7;i:86;i:8;i:87;i:9;i:82;i:10;i:131;i:11;i:0;i:12;i:0;i:13;i:120;i:14;i:120;i:15;i:120;}i:2;a:16:{i:0;i:72;i:1;i:73;i:2;i:72;i:3;i:73;i:4;i:72;i:5;i:73;i:6;i:79;i:7;i:78;i:8;i:79;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:112;i:14;i:112;i:15;i:112;}i:3;a:16:{i:0;i:80;i:1;i:81;i:2;i:87;i:3;i:86;i:4;i:80;i:5;i:81;i:6;i:87;i:7;i:86;i:8;i:87;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:120;i:14;i:120;i:15;i:120;}i:4;a:16:{i:0;i:72;i:1;i:87;i:2;i:0;i:3;i:0;i:4;i:86;i:5;i:87;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:112;i:14;i:112;i:15;i:112;}i:5;a:16:{i:0;i:87;i:1;i:0;i:2;i:82;i:3;i:83;i:4;i:0;i:5;i:0;i:6;i:78;i:7;i:79;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:120;i:14;i:120;i:15;i:120;}i:6;a:16:{i:0;i:78;i:1;i:79;i:2;i:131;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:86;i:7;i:87;i:8;i:0;i:9;i:0;i:10;i:83;i:11;i:0;i:12;i:0;i:13;i:44;i:14;i:45;i:15;i:112;}i:7;a:16:{i:0;i:86;i:1;i:87;i:2;i:0;i:3;i:78;i:4;i:79;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:52;i:14;i:53;i:15;i:120;}i:8;a:16:{i:0;i:79;i:1;i:78;i:2;i:79;i:3;i:86;i:4;i:87;i:5;i:112;i:6;i:112;i:7;i:0;i:8;i:49;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:112;i:15;i:112;}i:9;a:16:{i:0;i:87;i:1;i:86;i:2;i:87;i:3;i:0;i:4;i:0;i:5;i:120;i:6;i:120;i:7;i:0;i:8;i:0;i:9;i:50;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:120;i:15;i:120;}i:10;a:16:{i:0;i:79;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:44;i:15;i:45;}i:11;a:16:{i:0;i:87;i:1;i:0;i:2;i:0;i:3;i:78;i:4;i:79;i:5;i:0;i:6;i:88;i:7;i:89;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:112;i:13;i:0;i:14;i:52;i:15;i:53;}i:12;a:16:{i:0;i:79;i:1;i:0;i:2;i:0;i:3;i:86;i:4;i:87;i:5;i:0;i:6;i:96;i:7;i:97;i:8;i:0;i:9;i:92;i:10;i:0;i:11;i:0;i:12;i:120;i:13;i:112;i:14;i:44;i:15;i:45;}i:13;a:16:{i:0;i:87;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:55;i:6;i:104;i:7;i:105;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:120;i:14;i:52;i:15;i:53;}i:14;a:16:{i:0;i:79;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:44;i:12;i:45;i:13;i:44;i:14;i:45;i:15;i:112;}i:15;a:16:{i:0;i:87;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:44;i:10;i:45;i:11;i:52;i:12;i:53;i:13;i:52;i:14;i:53;i:15;i:120;}}i:2;a:16:{i:0;a:16:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:38;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;}i:1;a:16:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;}i:2;a:16:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;}i:3;a:16:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;}i:4;a:16:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;}i:5;a:16:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;}i:6;a:16:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;}i:7;a:16:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;}i:8;a:16:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;}i:9;a:16:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;}i:10;a:16:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;}i:11;a:16:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;}i:12;a:16:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;}i:13;a:16:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:27;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;}i:14;a:16:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;}i:15;a:16:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;}}}', 72, '', 0);
INSERT INTO `phpore_maps` VALUES(15, 'map02', 'a:3:{i:0;a:16:{i:0;a:8:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;}i:1;a:8:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;}i:2;a:8:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:24;i:6;i:25;i:7;i:25;}i:3;a:8:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;}i:4;a:8:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;}i:5;a:8:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;}i:6;a:8:{i:0;i:25;i:1;i:25;i:2;i:25;i:3;i:25;i:4;i:25;i:5;i:25;i:6;i:25;i:7;i:25;}i:7;a:8:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;}i:8;a:8:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;}i:9;a:8:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;}i:10;a:8:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;}i:11;a:8:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;}i:12;a:8:{i:0;i:25;i:1;i:25;i:2;i:25;i:3;i:25;i:4;i:25;i:5;i:25;i:6;i:25;i:7;i:25;}i:13;a:8:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;}i:14;a:8:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;}i:15;a:8:{i:0;i:16;i:1;i:16;i:2;i:16;i:3;i:16;i:4;i:16;i:5;i:16;i:6;i:16;i:7;i:16;}}i:1;a:16:{i:0;a:8:{i:0;i:60;i:1;i:61;i:2;i:60;i:3;i:61;i:4;i:45;i:5;i:83;i:6;i:0;i:7;i:0;}i:1;a:8:{i:0;i:68;i:1;i:69;i:2;i:68;i:3;i:69;i:4;i:68;i:5;i:45;i:6;i:0;i:7;i:0;}i:2;a:8:{i:0;i:52;i:1;i:68;i:2;i:69;i:3;i:61;i:4;i:60;i:5;i:53;i:6;i:0;i:7;i:0;}i:3;a:8:{i:0;i:44;i:1;i:69;i:2;i:53;i:3;i:52;i:4;i:68;i:5;i:45;i:6;i:0;i:7;i:83;}i:4;a:8:{i:0;i:60;i:1;i:53;i:2;i:44;i:3;i:45;i:4;i:52;i:5;i:53;i:6;i:0;i:7;i:0;}i:5;a:8:{i:0;i:53;i:1;i:0;i:2;i:52;i:3;i:53;i:4;i:0;i:5;i:0;i:6;i:44;i:7;i:45;}i:6;a:8:{i:0;i:58;i:1;i:0;i:2;i:82;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:52;i:7;i:61;}i:7;a:8:{i:0;i:83;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:44;i:5;i:45;i:6;i:44;i:7;i:69;}i:8;a:8:{i:0;i:76;i:1;i:77;i:2;i:0;i:3;i:0;i:4;i:52;i:5;i:68;i:6;i:60;i:7;i:61;}i:9;a:8:{i:0;i:40;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:44;i:5;i:69;i:6;i:68;i:7;i:69;}i:10;a:8:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:52;i:5;i:53;i:6;i:52;i:7;i:53;}i:11;a:8:{i:0;i:58;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:74;i:7;i:75;}i:12;a:8:{i:0;i:58;i:1;i:58;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;}i:13;a:8:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:83;}i:14;a:8:{i:0;i:83;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;}i:15;a:8:{i:0;i:78;i:1;i:79;i:2;i:82;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;}}i:2;a:16:{i:0;a:8:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:32;i:7;i:33;}i:1;a:8:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;}i:2;a:8:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;}i:3;a:8:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;}i:4;a:8:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;}i:5;a:8:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;}i:6;a:8:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;}i:7;a:8:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;}i:8;a:8:{i:0;i:0;i:1;i:0;i:2;i:34;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;}i:9;a:8:{i:0;i:0;i:1;i:35;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;}i:10;a:8:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;}i:11;a:8:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:36;i:6;i:0;i:7;i:0;}i:12;a:8:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;}i:13;a:8:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;}i:14;a:8:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;}i:15;a:8:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:37;i:6;i:0;i:7;i:0;}}}', 72, '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `phpore_monsters`
--

DROP TABLE IF EXISTS `phpore_monsters`;
CREATE TABLE `phpore_monsters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hp` int(11) NOT NULL DEFAULT '0',
  `mp` int(11) NOT NULL DEFAULT '0',
  `attack` int(11) NOT NULL DEFAULT '0',
  `defense` int(11) NOT NULL DEFAULT '0',
  `agility` int(11) NOT NULL DEFAULT '0',
  `mind` int(11) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `picture` varchar(255) NOT NULL DEFAULT '',
  `skills` text NOT NULL,
  PRIMARY KEY (`id`)
) TYPE=MyISAM  AUTO_INCREMENT=2 ;

--
-- Contenu de la table `phpore_monsters`
--

INSERT INTO `phpore_monsters` VALUES(1, 150, 0, 50, 50, 98, 0, 35, 'Zombie', '052-Undead02.png', '');

-- --------------------------------------------------------

--
-- Structure de la table `phpore_opponents`
--

DROP TABLE IF EXISTS `phpore_opponents`;
CREATE TABLE `phpore_opponents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monster_id` int(11) NOT NULL DEFAULT '0',
  `battle_id` int(11) NOT NULL DEFAULT '0',
  `hp` int(11) NOT NULL DEFAULT '0',
  `mp` int(11) NOT NULL DEFAULT '0',
  `attack` int(11) NOT NULL DEFAULT '0',
  `defense` int(11) NOT NULL DEFAULT '0',
  `mind` int(11) NOT NULL DEFAULT '0',
  `agility` int(11) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `picture` varchar(255) NOT NULL DEFAULT '',
  `skills` text NOT NULL,
  PRIMARY KEY (`id`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

--
-- Contenu de la table `phpore_opponents`
--


-- --------------------------------------------------------

--
-- Structure de la table `phpore_skills`
--

DROP TABLE IF EXISTS `phpore_skills`;
CREATE TABLE `phpore_skills` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `php` text NOT NULL,
  `javascript` text NOT NULL,
  PRIMARY KEY (`name`)
) TYPE=MyISAM;

--
-- Contenu de la table `phpore_skills`
--


-- --------------------------------------------------------

--
-- Structure de la table `phpore_tilesets`
--

DROP TABLE IF EXISTS `phpore_tilesets`;
CREATE TABLE `phpore_tilesets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `tiles` text NOT NULL,
  `cols` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) TYPE=MyISAM  AUTO_INCREMENT=73 ;

--
-- Contenu de la table `phpore_tilesets`
--

INSERT INTO `phpore_tilesets` VALUES(72, 'refmapA5', 'a:2:{i:0;a:2:{i:0;a:128:{i:0;s:15:"refmapA5_01.png";i:1;s:15:"refmapA5_02.png";i:2;s:15:"refmapA5_03.png";i:3;s:15:"refmapA5_04.png";i:4;s:15:"refmapA5_05.png";i:5;s:15:"refmapA5_06.png";i:6;s:15:"refmapA5_07.png";i:7;s:15:"refmapA5_08.png";i:8;s:15:"refmapA5_09.png";i:9;s:15:"refmapA5_10.png";i:10;s:15:"refmapA5_11.png";i:11;s:15:"refmapA5_12.png";i:12;s:15:"refmapA5_13.png";i:13;s:15:"refmapA5_14.png";i:14;s:15:"refmapA5_15.png";i:15;s:15:"refmapA5_16.png";i:16;s:15:"refmapA5_17.png";i:17;s:15:"refmapA5_18.png";i:18;s:15:"refmapA5_19.png";i:19;s:15:"refmapA5_20.png";i:20;s:15:"refmapA5_21.png";i:21;s:15:"refmapA5_22.png";i:22;s:15:"refmapA5_23.png";i:23;s:15:"refmapA5_24.png";i:24;s:15:"refmapA5_25.png";i:25;s:15:"refmapA5_26.png";i:26;s:15:"refmapA5_27.png";i:27;s:15:"refmapA5_28.png";i:28;s:15:"refmapA5_29.png";i:29;s:15:"refmapA5_30.png";i:30;s:15:"refmapA5_31.png";i:31;s:15:"refmapA5_32.png";i:32;s:15:"refmapA5_33.png";i:33;s:15:"refmapA5_34.png";i:34;s:15:"refmapA5_35.png";i:35;s:15:"refmapA5_36.png";i:36;s:15:"refmapA5_37.png";i:37;s:15:"refmapA5_38.png";i:38;s:15:"refmapA5_39.png";i:39;s:15:"refmapA5_40.png";i:40;s:15:"refmapA5_41.png";i:41;s:15:"refmapA5_42.png";i:42;s:15:"refmapA5_43.png";i:43;s:15:"refmapA5_44.png";i:44;s:15:"refmapA5_45.png";i:45;s:15:"refmapA5_46.png";i:46;s:15:"refmapA5_47.png";i:47;s:15:"refmapA5_48.png";i:48;s:15:"refmapA5_49.png";i:49;s:15:"refmapA5_50.png";i:50;s:15:"refmapA5_51.png";i:51;s:15:"refmapA5_52.png";i:52;s:15:"refmapA5_53.png";i:53;s:15:"refmapA5_54.png";i:54;s:15:"refmapA5_55.png";i:55;s:15:"refmapA5_56.png";i:56;s:15:"refmapA5_57.png";i:57;s:15:"refmapA5_58.png";i:58;s:15:"refmapA5_59.png";i:59;s:15:"refmapA5_60.png";i:60;s:15:"refmapA5_61.png";i:61;s:15:"refmapA5_62.png";i:62;s:15:"refmapA5_63.png";i:63;s:15:"refmapA5_64.png";i:64;s:15:"refmapA5_65.png";i:65;s:15:"refmapA5_66.png";i:66;s:15:"refmapA5_67.png";i:67;s:15:"refmapA5_68.png";i:68;s:15:"refmapA5_69.png";i:69;s:15:"refmapA5_70.png";i:70;s:15:"refmapA5_71.png";i:71;s:15:"refmapA5_72.png";i:72;s:15:"refmapA5_73.png";i:73;s:15:"refmapA5_74.png";i:74;s:15:"refmapA5_75.png";i:75;s:15:"refmapA5_76.png";i:76;s:15:"refmapA5_77.png";i:77;s:15:"refmapA5_78.png";i:78;s:15:"refmapA5_79.png";i:79;s:15:"refmapA5_80.png";i:80;s:15:"refmapA5_81.png";i:81;s:15:"refmapA5_82.png";i:82;s:15:"refmapA5_83.png";i:83;s:15:"refmapA5_84.png";i:84;s:15:"refmapA5_85.png";i:85;s:15:"refmapA5_86.png";i:86;s:15:"refmapA5_87.png";i:87;s:15:"refmapA5_88.png";i:88;s:15:"refmapA5_89.png";i:89;s:15:"refmapA5_90.png";i:90;s:15:"refmapA5_91.png";i:91;s:15:"refmapA5_92.png";i:92;s:15:"refmapA5_93.png";i:93;s:15:"refmapA5_94.png";i:94;s:15:"refmapA5_95.png";i:95;s:15:"refmapA5_96.png";i:96;s:15:"refmapA5_97.png";i:97;s:15:"refmapA5_98.png";i:98;s:15:"refmapA5_99.png";i:99;s:16:"refmapA5_100.png";i:100;s:16:"refmapA5_101.png";i:101;s:16:"refmapA5_102.png";i:102;s:16:"refmapA5_103.png";i:103;s:16:"refmapA5_104.png";i:104;s:16:"refmapA5_105.png";i:105;s:16:"refmapA5_106.png";i:106;s:16:"refmapA5_107.png";i:107;s:16:"refmapA5_108.png";i:108;s:16:"refmapA5_109.png";i:109;s:16:"refmapA5_110.png";i:110;s:16:"refmapA5_111.png";i:111;s:16:"refmapA5_112.png";i:112;s:16:"refmapA5_113.png";i:113;s:16:"refmapA5_114.png";i:114;s:16:"refmapA5_115.png";i:115;s:16:"refmapA5_116.png";i:116;s:16:"refmapA5_117.png";i:117;s:16:"refmapA5_118.png";i:118;s:16:"refmapA5_119.png";i:119;s:16:"refmapA5_120.png";i:120;s:16:"refmapA5_121.png";i:121;s:16:"refmapA5_122.png";i:122;s:16:"refmapA5_123.png";i:123;s:16:"refmapA5_124.png";i:124;s:16:"refmapA5_125.png";i:125;s:16:"refmapA5_126.png";i:126;s:16:"refmapA5_127.png";i:127;s:16:"refmapA5_128.png";}i:1;a:128:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;i:16;i:0;i:17;i:0;i:18;i:0;i:19;i:0;i:20;i:0;i:21;i:0;i:22;i:0;i:23;i:0;i:24;i:0;i:25;i:0;i:26;i:0;i:27;i:0;i:28;i:0;i:29;i:0;i:30;i:0;i:31;i:0;i:32;i:0;i:33;i:0;i:34;i:0;i:35;i:0;i:36;i:0;i:37;i:0;i:38;i:0;i:39;i:0;i:40;i:0;i:41;i:0;i:42;i:0;i:43;i:0;i:44;i:0;i:45;i:0;i:46;i:0;i:47;i:0;i:48;i:0;i:49;i:0;i:50;i:0;i:51;i:0;i:52;i:0;i:53;i:0;i:54;i:0;i:55;i:0;i:56;i:0;i:57;i:0;i:58;i:0;i:59;i:0;i:60;i:0;i:61;i:0;i:62;i:0;i:63;i:0;i:64;i:0;i:65;i:0;i:66;i:0;i:67;i:0;i:68;i:0;i:69;i:0;i:70;i:0;i:71;i:0;i:72;i:0;i:73;i:0;i:74;i:0;i:75;i:0;i:76;i:0;i:77;i:1;i:78;i:1;i:79;i:1;i:80;i:1;i:81;i:1;i:82;i:1;i:83;i:1;i:84;i:1;i:85;i:1;i:86;i:1;i:87;i:1;i:88;i:1;i:89;i:1;i:90;i:1;i:91;i:1;i:92;i:1;i:93;i:1;i:94;i:1;i:95;i:1;i:96;i:1;i:97;i:1;i:98;i:1;i:99;i:1;i:100;i:1;i:101;i:1;i:102;i:1;i:103;i:1;i:104;i:1;i:105;i:1;i:106;i:1;i:107;i:1;i:108;i:1;i:109;i:1;i:110;i:1;i:111;i:1;i:112;i:1;i:113;i:1;i:114;i:1;i:115;i:1;i:116;i:1;i:117;i:1;i:118;i:1;i:119;i:1;i:120;i:1;i:121;i:1;i:122;i:1;i:123;i:1;i:124;i:1;i:125;i:1;i:126;i:1;i:127;i:1;}}i:1;a:2:{i:0;a:256:{i:0;s:15:"refmapB1_01.png";i:1;s:15:"refmapB1_02.png";i:2;s:15:"refmapB1_03.png";i:3;s:15:"refmapB1_04.png";i:4;s:15:"refmapB1_05.png";i:5;s:15:"refmapB1_06.png";i:6;s:15:"refmapB1_07.png";i:7;s:15:"refmapB1_08.png";i:8;s:15:"refmapB1_09.png";i:9;s:15:"refmapB1_10.png";i:10;s:15:"refmapB1_11.png";i:11;s:15:"refmapB1_12.png";i:12;s:15:"refmapB1_13.png";i:13;s:15:"refmapB1_14.png";i:14;s:15:"refmapB1_15.png";i:15;s:15:"refmapB1_16.png";i:16;s:16:"refmapB1_106.png";i:17;s:16:"refmapB1_107.png";i:18;s:16:"refmapB1_108.png";i:19;s:16:"refmapB1_109.png";i:20;s:15:"refmapB1_11.png";i:21;s:16:"refmapB1_110.png";i:22;s:16:"refmapB1_111.png";i:23;s:16:"refmapB1_112.png";i:24;s:15:"refmapB1_17.png";i:25;s:15:"refmapB1_18.png";i:26;s:15:"refmapB1_20.png";i:27;s:15:"refmapB1_21.png";i:28;s:15:"refmapB1_22.png";i:29;s:15:"refmapB1_23.png";i:30;s:15:"refmapB1_24.png";i:31;s:15:"refmapB1_25.png";i:32;s:15:"refmapB1_26.png";i:33;s:15:"refmapB1_27.png";i:34;s:15:"refmapB1_28.png";i:35;s:15:"refmapB1_29.png";i:36;s:15:"refmapB1_30.png";i:37;s:15:"refmapB1_31.png";i:38;s:15:"refmapB1_32.png";i:39;s:15:"refmapB1_33.png";i:40;s:15:"refmapB1_35.png";i:41;s:15:"refmapB1_36.png";i:42;s:15:"refmapB1_37.png";i:43;s:15:"refmapB1_38.png";i:44;s:15:"refmapB1_39.png";i:45;s:15:"refmapB1_40.png";i:46;s:15:"refmapB1_41.png";i:47;s:15:"refmapB1_42.png";i:48;s:15:"refmapB1_43.png";i:49;s:15:"refmapB1_44.png";i:50;s:15:"refmapB1_45.png";i:51;s:15:"refmapB1_46.png";i:52;s:15:"refmapB1_47.png";i:53;s:15:"refmapB1_48.png";i:54;s:15:"refmapB1_49.png";i:55;s:15:"refmapB1_50.png";i:56;s:15:"refmapB1_51.png";i:57;s:15:"refmapB1_52.png";i:58;s:15:"refmapB1_53.png";i:59;s:15:"refmapB1_54.png";i:60;s:15:"refmapB1_55.png";i:61;s:15:"refmapB1_56.png";i:62;s:15:"refmapB1_57.png";i:63;s:15:"refmapB1_58.png";i:64;s:15:"refmapB1_59.png";i:65;s:15:"refmapB1_60.png";i:66;s:15:"refmapB1_61.png";i:67;s:15:"refmapB1_62.png";i:68;s:15:"refmapB1_63.png";i:69;s:15:"refmapB1_64.png";i:70;s:15:"refmapB1_65.png";i:71;s:15:"refmapB1_66.png";i:72;s:15:"refmapB1_67.png";i:73;s:15:"refmapB1_68.png";i:74;s:15:"refmapB1_69.png";i:75;s:15:"refmapB1_70.png";i:76;s:15:"refmapB1_71.png";i:77;s:15:"refmapB1_72.png";i:78;s:15:"refmapB1_73.png";i:79;s:15:"refmapB1_74.png";i:80;s:15:"refmapB1_75.png";i:81;s:15:"refmapB1_76.png";i:82;s:15:"refmapB1_77.png";i:83;s:15:"refmapB1_78.png";i:84;s:15:"refmapB1_79.png";i:85;s:15:"refmapB1_80.png";i:86;s:15:"refmapB1_81.png";i:87;s:15:"refmapB1_82.png";i:88;s:15:"refmapB1_83.png";i:89;s:15:"refmapB1_84.png";i:90;s:15:"refmapB1_85.png";i:91;s:15:"refmapB1_86.png";i:92;s:15:"refmapB1_87.png";i:93;s:15:"refmapB1_88.png";i:94;s:15:"refmapB1_89.png";i:95;s:15:"refmapB1_90.png";i:96;s:15:"refmapB1_91.png";i:97;s:15:"refmapB1_92.png";i:98;s:15:"refmapB1_93.png";i:99;s:15:"refmapB1_94.png";i:100;s:15:"refmapB1_95.png";i:101;s:15:"refmapB1_96.png";i:102;s:15:"refmapB1_97.png";i:103;s:15:"refmapB1_98.png";i:104;s:15:"refmapB1_99.png";i:105;s:16:"refmapB1_100.png";i:106;s:16:"refmapB1_101.png";i:107;s:16:"refmapB1_102.png";i:108;s:16:"refmapB1_103.png";i:109;s:16:"refmapB1_104.png";i:110;s:16:"refmapB1_105.png";i:111;s:16:"refmapB1_106.png";i:112;s:16:"refmapB1_107.png";i:113;s:16:"refmapB1_108.png";i:114;s:16:"refmapB1_109.png";i:115;s:16:"refmapB1_110.png";i:116;s:16:"refmapB1_111.png";i:117;s:16:"refmapB1_112.png";i:118;s:16:"refmapB1_113.png";i:119;s:16:"refmapB1_114.png";i:120;s:16:"refmapB1_115.png";i:121;s:16:"refmapB1_116.png";i:122;s:16:"refmapB1_117.png";i:123;s:16:"refmapB1_118.png";i:124;s:16:"refmapB1_119.png";i:125;s:16:"refmapB1_120.png";i:126;s:16:"refmapB1_121.png";i:127;s:16:"refmapB1_122.png";i:128;s:16:"refmapB1_123.png";i:129;s:16:"refmapB1_124.png";i:130;s:16:"refmapB1_125.png";i:131;s:16:"refmapB1_126.png";i:132;s:16:"refmapB1_127.png";i:133;s:16:"refmapB1_128.png";i:134;s:0:"";i:135;s:0:"";i:136;s:0:"";i:137;s:0:"";i:138;s:0:"";i:139;s:0:"";i:140;s:0:"";i:141;s:0:"";i:142;s:0:"";i:143;s:0:"";i:144;s:0:"";i:145;s:0:"";i:146;s:0:"";i:147;s:0:"";i:148;s:0:"";i:149;s:0:"";i:150;s:0:"";i:151;s:0:"";i:152;s:0:"";i:153;s:0:"";i:154;s:0:"";i:155;s:0:"";i:156;s:0:"";i:157;s:0:"";i:158;s:0:"";i:159;s:0:"";i:160;s:0:"";i:161;s:0:"";i:162;s:0:"";i:163;s:0:"";i:164;s:0:"";i:165;s:0:"";i:166;s:0:"";i:167;s:0:"";i:168;s:0:"";i:169;s:0:"";i:170;s:0:"";i:171;s:0:"";i:172;s:0:"";i:173;s:0:"";i:174;s:0:"";i:175;s:0:"";i:176;s:0:"";i:177;s:0:"";i:178;s:0:"";i:179;s:0:"";i:180;s:0:"";i:181;s:0:"";i:182;s:0:"";i:183;s:0:"";i:184;s:0:"";i:185;s:0:"";i:186;s:0:"";i:187;s:0:"";i:188;s:0:"";i:189;s:0:"";i:190;s:0:"";i:191;s:0:"";i:192;s:0:"";i:193;s:0:"";i:194;s:0:"";i:195;s:0:"";i:196;s:0:"";i:197;s:0:"";i:198;s:0:"";i:199;s:0:"";i:200;s:0:"";i:201;s:0:"";i:202;s:0:"";i:203;s:0:"";i:204;s:0:"";i:205;s:0:"";i:206;s:0:"";i:207;s:0:"";i:208;s:0:"";i:209;s:0:"";i:210;s:0:"";i:211;s:0:"";i:212;s:0:"";i:213;s:0:"";i:214;s:0:"";i:215;s:0:"";i:216;s:0:"";i:217;s:0:"";i:218;s:0:"";i:219;s:0:"";i:220;s:0:"";i:221;s:0:"";i:222;s:0:"";i:223;s:0:"";i:224;s:0:"";i:225;s:0:"";i:226;s:0:"";i:227;s:0:"";i:228;s:0:"";i:229;s:0:"";i:230;s:0:"";i:231;s:0:"";i:232;s:0:"";i:233;s:0:"";i:234;s:0:"";i:235;s:0:"";i:236;s:0:"";i:237;s:0:"";i:238;s:0:"";i:239;s:0:"";i:240;s:0:"";i:241;s:0:"";i:242;s:0:"";i:243;s:0:"";i:244;s:0:"";i:245;s:0:"";i:246;s:0:"";i:247;s:0:"";i:248;s:0:"";i:249;s:0:"";i:250;s:0:"";i:251;s:0:"";i:252;s:0:"";i:253;s:0:"";i:254;s:0:"";i:255;s:0:"";}i:1;a:256:{i:0;i:0;i:1;i:1;i:2;i:1;i:3;i:1;i:4;i:1;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:1;i:9;i:1;i:10;i:1;i:11;i:1;i:12;i:1;i:13;i:0;i:14;i:0;i:15;i:0;i:16;i:2;i:17;i:1;i:18;i:2;i:19;i:2;i:20;i:1;i:21;i:1;i:22;i:1;i:23;i:1;i:24;i:0;i:25;i:0;i:26;i:0;i:27;i:0;i:28;i:0;i:29;i:0;i:30;i:0;i:31;i:0;i:32;i:0;i:33;i:0;i:34;i:0;i:35;i:0;i:36;i:0;i:37;i:0;i:38;i:0;i:39;i:0;i:40;i:1;i:41;i:1;i:42;i:1;i:43;i:1;i:44;i:2;i:45;i:2;i:46;i:1;i:47;i:1;i:48;i:1;i:49;i:1;i:50;i:1;i:51;i:1;i:52;i:1;i:53;i:1;i:54;i:1;i:55;i:1;i:56;i:2;i:57;i:1;i:58;i:1;i:59;i:2;i:60;i:1;i:61;i:1;i:62;i:2;i:63;i:2;i:64;i:1;i:65;i:1;i:66;i:1;i:67;i:1;i:68;i:1;i:69;i:1;i:70;i:1;i:71;i:1;i:72;i:1;i:73;i:1;i:74;i:1;i:75;i:1;i:76;i:1;i:77;i:1;i:78;i:2;i:79;i:2;i:80;i:1;i:81;i:1;i:82;i:1;i:83;i:1;i:84;i:1;i:85;i:1;i:86;i:1;i:87;i:1;i:88;i:2;i:89;i:2;i:90;i:2;i:91;i:1;i:92;i:1;i:93;i:1;i:94;i:2;i:95;i:2;i:96;i:2;i:97;i:2;i:98;i:2;i:99;i:1;i:100;i:1;i:101;i:1;i:102;i:1;i:103;i:1;i:104;i:1;i:105;i:1;i:106;i:1;i:107;i:1;i:108;i:1;i:109;i:1;i:110;i:1;i:111;i:2;i:112;i:1;i:113;i:2;i:114;i:2;i:115;i:1;i:116;i:1;i:117;i:1;i:118;i:1;i:119;i:1;i:120;i:1;i:121;i:2;i:122;i:2;i:123;i:1;i:124;i:1;i:125;i:1;i:126;i:1;i:127;i:1;i:128;i:1;i:129;i:1;i:130;i:1;i:131;i:1;i:132;i:1;i:133;i:1;i:134;i:0;i:135;i:0;i:136;i:0;i:137;i:0;i:138;i:0;i:139;i:0;i:140;i:0;i:141;i:0;i:142;i:0;i:143;i:0;i:144;i:0;i:145;i:0;i:146;i:0;i:147;i:0;i:148;i:0;i:149;i:0;i:150;i:0;i:151;i:0;i:152;i:0;i:153;i:0;i:154;i:0;i:155;i:0;i:156;i:0;i:157;i:0;i:158;i:0;i:159;i:0;i:160;i:0;i:161;i:0;i:162;i:0;i:163;i:0;i:164;i:0;i:165;i:0;i:166;i:0;i:167;i:0;i:168;i:0;i:169;i:0;i:170;i:0;i:171;i:0;i:172;i:0;i:173;i:0;i:174;i:0;i:175;i:0;i:176;i:0;i:177;i:0;i:178;i:0;i:179;i:0;i:180;i:0;i:181;i:0;i:182;i:0;i:183;i:0;i:184;i:0;i:185;i:0;i:186;i:0;i:187;i:0;i:188;i:0;i:189;i:0;i:190;i:0;i:191;i:0;i:192;i:0;i:193;i:0;i:194;i:0;i:195;i:0;i:196;i:0;i:197;i:0;i:198;i:0;i:199;i:0;i:200;i:0;i:201;i:0;i:202;i:0;i:203;i:0;i:204;i:0;i:205;i:0;i:206;i:0;i:207;i:0;i:208;i:0;i:209;i:0;i:210;i:0;i:211;i:0;i:212;i:0;i:213;i:0;i:214;i:0;i:215;i:0;i:216;i:0;i:217;i:0;i:218;i:0;i:219;i:0;i:220;i:0;i:221;i:0;i:222;i:0;i:223;i:0;i:224;i:0;i:225;i:0;i:226;i:0;i:227;i:0;i:228;i:0;i:229;i:0;i:230;i:0;i:231;i:0;i:232;i:0;i:233;i:0;i:234;i:0;i:235;i:0;i:236;i:0;i:237;i:0;i:238;i:0;i:239;i:0;i:240;i:0;i:241;i:0;i:242;i:0;i:243;i:0;i:244;i:0;i:245;i:0;i:246;i:0;i:247;i:0;i:248;i:0;i:249;i:0;i:250;i:0;i:251;i:0;i:252;i:0;i:253;i:0;i:254;i:0;i:255;i:0;}}}', 8);

-- --------------------------------------------------------

--
-- Structure de la table `phpore_users`
--

DROP TABLE IF EXISTS `phpore_users`;
CREATE TABLE `phpore_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `last_visit` int(11) NOT NULL DEFAULT '0',
  `map_last_visit` int(11) NOT NULL DEFAULT '0',
  `teleport` tinyint(1) NOT NULL DEFAULT '0',
  `start_location` varchar(255) NOT NULL DEFAULT '',
  `refresh` tinyint(1) NOT NULL DEFAULT '0',
  `chatbox_state` varchar(255) NOT NULL DEFAULT '0,0,0',
  `points` int(11) NOT NULL DEFAULT '0',
  `guild` int(11) NOT NULL DEFAULT '0',
  `allow_music` tinyint(1) NOT NULL DEFAULT '0',
  `vars` text NOT NULL,
  `hp` int(11) NOT NULL DEFAULT '0',
  `hp_max` int(11) NOT NULL DEFAULT '0',
  `mp` int(11) NOT NULL DEFAULT '0',
  `mp_max` int(11) NOT NULL DEFAULT '0',
  `attack` int(11) NOT NULL DEFAULT '0',
  `defense` int(11) NOT NULL DEFAULT '0',
  `mind` int(11) NOT NULL DEFAULT '0',
  `agility` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '1',
  `charaset` varchar(255) NOT NULL DEFAULT '',
  `battler` varchar(255) NOT NULL DEFAULT '',
  `pic_width` mediumint(9) NOT NULL DEFAULT '0',
  `pic_height` mediumint(9) NOT NULL DEFAULT '0',
  `classname` varchar(255) NOT NULL DEFAULT '0',
  `biography` text NOT NULL,
  `space` int(11) NOT NULL DEFAULT '0',
  `event_status` varchar(32) NOT NULL DEFAULT '',
  `event_extra` text NOT NULL,
  `event_script` text NOT NULL,
  `actual_mod` varchar(255) NOT NULL DEFAULT '',
  `map_id` int(11) NOT NULL DEFAULT '0',
  `map_previous_id` int(11) NOT NULL DEFAULT '0',
  `map_left` int(11) NOT NULL DEFAULT '0',
  `map_top` int(11) NOT NULL DEFAULT '0',
  `map_dir` tinyint(1) NOT NULL DEFAULT '0',
  `map_moves` int(11) NOT NULL DEFAULT '0',
  `map_moves_table` text NOT NULL,
  `map_sid` int(11) NOT NULL DEFAULT '0',
  `battle_id` int(11) NOT NULL DEFAULT '0',
  `battle_state` tinyint(1) NOT NULL DEFAULT '0',
  `battle_speed` int(11) NOT NULL DEFAULT '0',
  `battle_gain_exp` int(11) NOT NULL DEFAULT '0',
  `battle_gain_points` int(11) NOT NULL DEFAULT '0',
  `battle_last_action` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) TYPE=MyISAM  AUTO_INCREMENT=4 ;

--
-- Contenu de la table `phpore_users`
--

INSERT INTO `phpore_users` VALUES(1, '', '', '', 0, 0, 0, 0, '', 0, '0,0,0', 0, 0, 0, 'a:0:{}', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', 0, 0, '0', '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 'a:0:{}', 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `phpore_users` VALUES(2, 'admin', 'admin@mywebsite.com', '1a1dc91c907325c69271ddf0c944bc72', 1, 1283098816, 1283048332, 0, '', 0, '99,135,0', 400, 0, 1, 'a:2:{s:5:"vault";s:3:"500";s:4:"loan";s:1:"0";}', 582, 34, 0, 0, 412, 404, 140, 183, 0, 1, '', '', 0, 0, 'fighter', '', 0, '', '0', '', 'default', 14, 15, 11, 5, 0, 1390, 'a:17:{i:1374;s:4:"a3-8";i:1375;s:4:"a2-8";i:1376;s:4:"a3-9";i:1377;s:5:"a3-10";i:1378;s:5:"a3-11";i:1379;s:5:"a3-12";i:1380;s:5:"a3-13";i:1381;s:5:"a3-14";i:1382;s:5:"a3-15";i:1383;s:5:"a4-15";i:1384;s:5:"a5-15";i:1385;s:8:"teleport";i:1386;s:5:"a11-1";i:1387;s:5:"a11-2";i:1388;s:5:"a11-3";i:1389;s:5:"a11-4";i:1390;s:5:"a11-5";}', 101, 0, 0, 0, 0, 0, 0);
INSERT INTO `phpore_users` VALUES(3, 'Gazouille', 'youpi@youpi.com', '538e957924f0770b415f473ce900d686', 0, 1258317074, 1258317074, 0, '', 1, '0,0,0', 0, 0, 1, 'a:0:{}', 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, '', '', 0, 0, 'gargouille', '', 0, '', '0', '', 'map', 15, 14, 4, 13, 0, 87, 'a:17:{i:71;s:4:"a4-5";i:72;s:4:"a5-5";i:73;s:4:"a6-5";i:74;s:4:"a6-4";i:75;s:4:"a6-5";i:76;s:4:"a5-5";i:77;s:4:"a5-6";i:78;s:4:"a5-7";i:79;s:4:"a4-7";i:80;s:4:"a3-7";i:81;s:4:"a3-8";i:82;s:4:"a3-9";i:83;s:5:"a3-10";i:84;s:5:"a3-11";i:85;s:5:"a4-11";i:86;s:5:"a4-12";i:87;s:5:"a4-13";}', 8, 0, 0, 0, 0, 0, 0);
