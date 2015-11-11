CREATE TABLE `allstar` (
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `yearID` smallint(4) unsigned NOT NULL DEFAULT '0',
  `lgID` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`playerID`,`yearID`,`lgID`),
  KEY `playerID` (`playerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `allstarfull` (
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `yearID` smallint(4) unsigned NOT NULL DEFAULT '0',
  `gameNum` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `game_id` varchar(12) NOT NULL DEFAULT '',
  `teamID` char(3) DEFAULT NULL,
  `lgID` char(2) NOT NULL DEFAULT '',
  `GP` tinyint(1) unsigned DEFAULT NULL,
  `startingPos` tinyint(2) unsigned DEFAULT NULL,
  PRIMARY KEY (`playerID`,`yearID`,`gameNum`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `appearances` (
  `yearID` smallint(4) NOT NULL DEFAULT '0',
  `teamID` char(3) NOT NULL DEFAULT '',
  `lgID` char(2) DEFAULT NULL,
  `playerID` char(9) NOT NULL DEFAULT '',
  `experience` tinyint(2) unsigned DEFAULT NULL,
  `G_all` tinyint(3) unsigned DEFAULT NULL,
  `GS` tinyint(3) unsigned DEFAULT NULL,
  `G_batting` tinyint(3) unsigned DEFAULT NULL,
  `G_defense` tinyint(3) unsigned DEFAULT NULL,
  `G_p` tinyint(3) unsigned DEFAULT NULL,
  `G_c` tinyint(3) unsigned DEFAULT NULL,
  `G_1b` tinyint(3) unsigned DEFAULT NULL,
  `G_2b` tinyint(3) unsigned DEFAULT NULL,
  `G_3b` tinyint(3) unsigned DEFAULT NULL,
  `G_ss` tinyint(3) unsigned DEFAULT NULL,
  `G_lf` tinyint(3) unsigned DEFAULT NULL,
  `G_cf` tinyint(3) unsigned DEFAULT NULL,
  `G_rf` tinyint(3) unsigned DEFAULT NULL,
  `G_of` tinyint(3) unsigned DEFAULT NULL,
  `G_dh` tinyint(3) unsigned DEFAULT NULL,
  `G_ph` tinyint(3) unsigned DEFAULT NULL,
  `G_pr` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`yearID`,`teamID`,`playerID`),
  KEY `playerID` (`playerID`,`yearID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `awardsmanagers` (
  `managerID` varchar(10) NOT NULL DEFAULT '',
  `awardID` varchar(25) NOT NULL DEFAULT '',
  `yearID` smallint(4) NOT NULL DEFAULT '0',
  `lgID` char(2) NOT NULL DEFAULT '',
  `tie` char(1) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`yearID`,`awardID`,`lgID`,`managerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `awardsplayers` (
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `awardID` varchar(255) NOT NULL DEFAULT '',
  `yearID` smallint(4) NOT NULL DEFAULT '0',
  `lgID` char(2) NOT NULL DEFAULT '',
  `tie` char(1) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`yearID`,`awardID`,`lgID`,`playerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `awardssharemanagers` (
  `awardID` varchar(25) NOT NULL DEFAULT '',
  `yearID` smallint(4) NOT NULL DEFAULT '0',
  `lgID` char(2) NOT NULL DEFAULT '',
  `managerID` varchar(10) NOT NULL DEFAULT '',
  `pointsWon` int(4) DEFAULT NULL,
  `pointsMax` int(4) DEFAULT NULL,
  `votesFirst` int(4) DEFAULT NULL,
  PRIMARY KEY (`awardID`,`yearID`,`lgID`,`managerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `awardsshareplayers` (
  `awardID` varchar(25) NOT NULL DEFAULT '',
  `yearID` smallint(4) NOT NULL DEFAULT '0',
  `lgID` char(2) NOT NULL DEFAULT '',
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `pointsWon` double(5,1) DEFAULT NULL,
  `pointsMax` int(4) DEFAULT NULL,
  `votesFirst` double(5,1) DEFAULT NULL,
  PRIMARY KEY (`awardID`,`yearID`,`lgID`,`playerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `batting` (
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `yearID` smallint(4) unsigned NOT NULL DEFAULT '0',
  `stint` smallint(2) unsigned NOT NULL DEFAULT '0',
  `teamID` char(3) NOT NULL DEFAULT '',
  `lgID` char(2) NOT NULL DEFAULT '',
  `G` smallint(3) unsigned DEFAULT NULL,
  `G_batting` smallint(3) unsigned DEFAULT NULL,
  `AB` smallint(3) unsigned DEFAULT NULL,
  `R` smallint(3) unsigned DEFAULT NULL,
  `H` smallint(3) unsigned DEFAULT NULL,
  `2B` smallint(3) unsigned DEFAULT NULL,
  `3B` smallint(3) unsigned DEFAULT NULL,
  `HR` smallint(3) unsigned DEFAULT NULL,
  `RBI` smallint(3) unsigned DEFAULT NULL,
  `SB` smallint(3) unsigned DEFAULT NULL,
  `CS` smallint(3) unsigned DEFAULT NULL,
  `BB` smallint(3) unsigned DEFAULT NULL,
  `SO` smallint(3) unsigned DEFAULT NULL,
  `IBB` smallint(3) unsigned DEFAULT NULL,
  `HBP` smallint(3) unsigned DEFAULT NULL,
  `SH` smallint(3) unsigned DEFAULT NULL,
  `SF` smallint(3) unsigned DEFAULT NULL,
  `GIDP` smallint(3) unsigned DEFAULT NULL,
  `G_old` smallint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`playerID`,`yearID`,`stint`),
  KEY `playerID` (`playerID`),
  KEY `team` (`teamID`,`yearID`,`lgID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `battingpost` (
  `yearID` smallint(4) unsigned NOT NULL DEFAULT '0',
  `round` varchar(10) NOT NULL DEFAULT '',
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `teamID` char(3) NOT NULL DEFAULT '',
  `lgID` char(2) NOT NULL DEFAULT '',
  `G` smallint(3) unsigned DEFAULT NULL,
  `AB` smallint(3) NOT NULL DEFAULT '0',
  `R` smallint(3) unsigned DEFAULT NULL,
  `H` smallint(3) unsigned DEFAULT NULL,
  `2B` smallint(3) unsigned DEFAULT NULL,
  `3B` smallint(3) unsigned DEFAULT NULL,
  `HR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `RBI` smallint(3) unsigned DEFAULT NULL,
  `SB` smallint(3) unsigned DEFAULT NULL,
  `CS` smallint(3) unsigned DEFAULT NULL,
  `BB` smallint(3) unsigned DEFAULT NULL,
  `SO` smallint(3) unsigned DEFAULT NULL,
  `IBB` smallint(3) unsigned DEFAULT NULL,
  `HBP` smallint(3) unsigned DEFAULT NULL,
  `SH` smallint(3) unsigned DEFAULT NULL,
  `SF` smallint(3) unsigned DEFAULT NULL,
  `GIDP` smallint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`yearID`,`round`,`playerID`),
  KEY `playerID` (`playerID`),
  KEY `teamID` (`teamID`,`yearID`,`lgID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `fielding` (
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `yearID` smallint(4) unsigned NOT NULL DEFAULT '0',
  `stint` smallint(2) unsigned NOT NULL DEFAULT '0',
  `teamID` char(3) NOT NULL DEFAULT '',
  `lgID` char(2) NOT NULL DEFAULT '',
  `POS` char(2) NOT NULL DEFAULT '',
  `G` smallint(3) unsigned DEFAULT NULL,
  `GS` smallint(3) unsigned DEFAULT NULL,
  `InnOuts` int(5) unsigned DEFAULT NULL,
  `PO` smallint(3) unsigned DEFAULT NULL,
  `A` smallint(3) unsigned DEFAULT NULL,
  `E` smallint(2) unsigned DEFAULT NULL,
  `DP` smallint(3) unsigned DEFAULT NULL,
  `PB` smallint(3) unsigned DEFAULT NULL,
  `WP` smallint(3) unsigned DEFAULT NULL,
  `SB` smallint(3) unsigned DEFAULT NULL,
  `CS` smallint(3) unsigned DEFAULT NULL,
  `pickoffs` smallint(3) unsigned DEFAULT NULL,
  `ZR` double(5,3) DEFAULT NULL,
  `missing_g_c` smallint(3) unsigned DEFAULT NULL,
  `missing_g` smallint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`playerID`,`yearID`,`stint`,`POS`),
  KEY `playerID` (`playerID`),
  KEY `team` (`teamID`,`yearID`,`lgID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `fieldingof` (
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `yearID` smallint(4) unsigned NOT NULL DEFAULT '0',
  `stint` int(2) NOT NULL DEFAULT '0',
  `Glf` int(3) DEFAULT NULL,
  `Gcf` int(3) DEFAULT NULL,
  `Grf` int(3) DEFAULT NULL,
  PRIMARY KEY (`playerID`,`yearID`,`stint`),
  KEY `playerID` (`playerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `fieldingpost` (
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `yearID` smallint(4) unsigned NOT NULL DEFAULT '0',
  `teamID` char(3) NOT NULL DEFAULT '',
  `lgID` char(2) NOT NULL DEFAULT '',
  `round` varchar(10) NOT NULL DEFAULT '',
  `POS` char(2) NOT NULL DEFAULT '',
  `G` smallint(3) unsigned DEFAULT NULL,
  `GS` smallint(3) unsigned DEFAULT NULL,
  `InnOuts` int(5) unsigned DEFAULT NULL,
  `PO` smallint(3) unsigned DEFAULT NULL,
  `A` smallint(3) unsigned DEFAULT NULL,
  `E` smallint(2) unsigned DEFAULT NULL,
  `DP` smallint(3) unsigned DEFAULT NULL,
  `TP` smallint(3) unsigned DEFAULT NULL,
  `PB` smallint(3) unsigned DEFAULT NULL,
  `SB` smallint(3) unsigned DEFAULT NULL,
  `CS` smallint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`playerID`,`yearID`,`round`,`POS`),
  KEY `playerID` (`playerID`),
  KEY `team` (`teamID`,`yearID`,`lgID`),
  KEY `round` (`yearID`,`round`,`teamID`,`lgID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `halloffame` (
  `hofID` varchar(10) NOT NULL DEFAULT '',
  `yearID` smallint(4) NOT NULL DEFAULT '0',
  `votedBy` varchar(64) DEFAULT NULL,
  `ballots` smallint(5) DEFAULT NULL,
  `needed` int(4) DEFAULT NULL,
  `votes` smallint(5) DEFAULT NULL,
  `inducted` enum('Y','N') DEFAULT 'N',
  `category` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`hofID`,`yearID`),
  KEY `hofID` (`hofID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `hofold` (
  `hofID` varchar(10) NOT NULL DEFAULT '',
  `yearID` int(4) NOT NULL DEFAULT '0',
  `votedBy` varchar(10) DEFAULT NULL,
  `ballots` smallint(5) DEFAULT NULL,
  `votes` smallint(5) DEFAULT NULL,
  `inducted` enum('N','Y') NOT NULL DEFAULT 'N',
  `category` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`hofID`),
  KEY `hofID` (`hofID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `managers` (
  `managerID` varchar(10) NOT NULL DEFAULT '',
  `yearID` smallint(4) NOT NULL DEFAULT '0',
  `teamID` char(3) NOT NULL DEFAULT '',
  `lgID` char(2) NOT NULL DEFAULT '',
  `inseason` smallint(1) NOT NULL DEFAULT '1',
  `G` smallint(3) NOT NULL DEFAULT '0',
  `W` smallint(3) NOT NULL DEFAULT '0',
  `L` smallint(3) NOT NULL DEFAULT '0',
  `rank` smallint(1) NOT NULL DEFAULT '0',
  `plyrMgr` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`managerID`,`yearID`,`teamID`,`inseason`),
  KEY `team` (`teamID`,`yearID`,`lgID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `managershalf` (
  `managerID` varchar(10) NOT NULL DEFAULT '',
  `yearID` smallint(4) NOT NULL DEFAULT '0',
  `teamID` char(3) NOT NULL DEFAULT '',
  `lgID` char(2) NOT NULL DEFAULT '',
  `inseason` int(2) DEFAULT NULL,
  `half` smallint(1) NOT NULL DEFAULT '1',
  `G` smallint(3) NOT NULL DEFAULT '0',
  `W` smallint(3) NOT NULL DEFAULT '0',
  `L` smallint(3) NOT NULL DEFAULT '0',
  `rank` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`yearID`,`teamID`,`managerID`,`half`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `master` (
  `lahmanID` int(9) NOT NULL AUTO_INCREMENT,
  `playerID` varchar(10) NOT NULL DEFAULT '',
  `managerID` varchar(10) NOT NULL DEFAULT '',
  `hofID` varchar(10) NOT NULL DEFAULT '',
  `birthYear` int(4) DEFAULT NULL,
  `birthMonth` int(2) DEFAULT NULL,
  `birthDay` int(2) DEFAULT NULL,
  `birthCountry` varchar(50) DEFAULT NULL,
  `birthState` char(2) DEFAULT NULL,
  `birthCity` varchar(50) DEFAULT NULL,
  `deathYear` int(4) DEFAULT NULL,
  `deathMonth` int(2) DEFAULT NULL,
  `deathDay` int(2) DEFAULT NULL,
  `deathCountry` varchar(50) DEFAULT NULL,
  `deathState` char(2) DEFAULT NULL,
  `deathCity` varchar(50) DEFAULT NULL,
  `nameFirst` varchar(50) DEFAULT NULL,
  `nameLast` varchar(50) NOT NULL DEFAULT '',
  `nameNote` varchar(255) DEFAULT NULL,
  `nameGiven` varchar(255) DEFAULT NULL,
  `nameNick` varchar(255) DEFAULT NULL,
  `weight` int(3) DEFAULT NULL,
  `height` double(4,1) DEFAULT NULL,
  `bats` enum('L','R','B') DEFAULT NULL,
  `throws` enum('L','R','B') DEFAULT NULL,
  `debut` date DEFAULT NULL,
  `finalGame` date DEFAULT NULL,
  `college` varchar(50) DEFAULT NULL,
  `lahman40ID` varchar(9) DEFAULT NULL,
  `lahman45ID` varchar(9) DEFAULT NULL,
  `retroID` varchar(9) DEFAULT NULL,
  `holtzID` varchar(9) DEFAULT NULL,
  `bbrefID` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`lahmanID`),
  KEY `playerID` (`playerID`),
  KEY `managerID` (`managerID`),
  KEY `hofID` (`hofID`),
  KEY `lahman40ID` (`lahman40ID`),
  KEY `lahman45ID` (`lahman45ID`),
  KEY `bbrefID` (`bbrefID`)
) ENGINE=MyISAM AUTO_INCREMENT=18759 DEFAULT CHARSET=latin1;

CREATE TABLE `pitching` (
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `yearID` smallint(4) unsigned NOT NULL DEFAULT '0',
  `stint` smallint(2) unsigned NOT NULL DEFAULT '0',
  `teamID` char(3) NOT NULL DEFAULT '',
  `lgID` char(2) NOT NULL DEFAULT '',
  `W` smallint(2) unsigned DEFAULT NULL,
  `L` smallint(2) unsigned DEFAULT NULL,
  `G` smallint(3) unsigned DEFAULT NULL,
  `GS` smallint(3) unsigned DEFAULT NULL,
  `CG` smallint(3) unsigned DEFAULT NULL,
  `SHO` smallint(3) unsigned DEFAULT NULL,
  `SV` smallint(3) unsigned DEFAULT NULL,
  `IPouts` int(5) unsigned DEFAULT NULL,
  `H` smallint(3) unsigned DEFAULT NULL,
  `ER` smallint(3) unsigned DEFAULT NULL,
  `HR` smallint(3) unsigned DEFAULT NULL,
  `BB` smallint(3) unsigned DEFAULT NULL,
  `SO` smallint(3) unsigned DEFAULT NULL,
  `BAOpp` decimal(5,3) unsigned DEFAULT NULL,
  `ERA` decimal(5,2) unsigned DEFAULT NULL,
  `IBB` smallint(3) unsigned DEFAULT NULL,
  `WP` smallint(3) unsigned DEFAULT NULL,
  `HBP` smallint(3) unsigned DEFAULT NULL,
  `BK` smallint(3) unsigned DEFAULT NULL,
  `BFP` smallint(6) unsigned DEFAULT NULL,
  `GF` smallint(3) unsigned DEFAULT NULL,
  `R` smallint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`playerID`,`yearID`,`stint`),
  KEY `playerID` (`playerID`),
  KEY `team` (`teamID`,`yearID`,`lgID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `pitchingpost` (
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `yearID` smallint(4) unsigned NOT NULL DEFAULT '0',
  `round` varchar(10) NOT NULL DEFAULT '',
  `teamID` char(3) NOT NULL DEFAULT '',
  `lgID` char(2) NOT NULL DEFAULT '',
  `W` smallint(2) unsigned DEFAULT NULL,
  `L` smallint(2) unsigned DEFAULT NULL,
  `G` smallint(3) unsigned DEFAULT NULL,
  `GS` smallint(3) unsigned DEFAULT NULL,
  `CG` smallint(3) unsigned DEFAULT NULL,
  `SHO` smallint(3) unsigned DEFAULT NULL,
  `SV` smallint(3) unsigned DEFAULT NULL,
  `IPouts` int(5) unsigned DEFAULT NULL,
  `H` smallint(3) unsigned DEFAULT NULL,
  `ER` smallint(3) unsigned DEFAULT NULL,
  `HR` smallint(3) unsigned DEFAULT NULL,
  `BB` smallint(3) unsigned DEFAULT NULL,
  `SO` smallint(3) unsigned DEFAULT NULL,
  `BAOpp` decimal(5,3) unsigned DEFAULT NULL,
  `ERA` decimal(5,2) unsigned DEFAULT NULL,
  `IBB` smallint(3) unsigned DEFAULT NULL,
  `WP` smallint(3) unsigned DEFAULT NULL,
  `HBP` smallint(3) unsigned DEFAULT NULL,
  `BK` smallint(3) unsigned DEFAULT NULL,
  `BFP` smallint(6) unsigned DEFAULT NULL,
  `GF` smallint(3) unsigned DEFAULT NULL,
  `R` smallint(3) unsigned DEFAULT NULL,
  `SH` smallint(3) unsigned DEFAULT NULL,
  `SF` smallint(3) unsigned DEFAULT NULL,
  `GIDP` smallint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`playerID`,`yearID`,`round`),
  KEY `player` (`playerID`),
  KEY `player2` (`playerID`,`yearID`,`teamID`,`lgID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `salaries` (
  `yearID` smallint(4) unsigned NOT NULL DEFAULT '0',
  `teamID` char(3) NOT NULL DEFAULT '',
  `lgID` char(2) NOT NULL DEFAULT '',
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `salary` double(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`yearID`,`teamID`,`lgID`,`playerID`),
  KEY `playerID` (`playerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `schools` (
  `schoolID` varchar(15) NOT NULL DEFAULT '',
  `schoolName` varchar(255) NOT NULL DEFAULT '',
  `schoolCity` varchar(55) DEFAULT NULL,
  `schoolState` varchar(55) DEFAULT NULL,
  `schoolNick` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`schoolID`),
  KEY `schoolID` (`schoolID`,`schoolName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `schoolsplayers` (
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `schoolID` varchar(15) NOT NULL DEFAULT '',
  `yearMin` int(4) DEFAULT NULL,
  `yearMax` int(4) DEFAULT NULL,
  PRIMARY KEY (`playerID`,`schoolID`),
  KEY `schoolID` (`schoolID`,`yearMin`,`yearMax`),
  KEY `schoolID_2` (`schoolID`,`yearMax`,`yearMin`),
  KEY `playerID` (`playerID`,`yearMin`,`yearMax`),
  KEY `playerID_2` (`playerID`,`yearMax`,`yearMin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `seriespost` (
  `yearID` smallint(4) NOT NULL DEFAULT '0',
  `round` varchar(5) NOT NULL DEFAULT '',
  `teamIDwinner` char(3) NOT NULL DEFAULT '',
  `lgIDwinner` char(2) NOT NULL DEFAULT '',
  `teamIDloser` char(3) NOT NULL DEFAULT '',
  `lgIDloser` char(2) NOT NULL DEFAULT '',
  `wins` smallint(1) NOT NULL DEFAULT '0',
  `losses` smallint(1) NOT NULL DEFAULT '0',
  `ties` int(1) DEFAULT '0',
  PRIMARY KEY (`yearID`,`round`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `teams` (
  `yearID` smallint(4) unsigned NOT NULL DEFAULT '0',
  `lgID` char(2) NOT NULL DEFAULT '',
  `teamID` char(3) NOT NULL DEFAULT '',
  `franchID` char(3) NOT NULL DEFAULT 'UNK',
  `divID` char(1) DEFAULT NULL,
  `Rank` smallint(3) unsigned NOT NULL DEFAULT '0',
  `G` smallint(3) unsigned DEFAULT NULL,
  `Ghome` int(3) DEFAULT NULL,
  `W` smallint(3) unsigned DEFAULT NULL,
  `L` smallint(3) unsigned DEFAULT NULL,
  `DivWin` enum('Y','N') DEFAULT NULL,
  `WCWin` enum('Y','N') DEFAULT NULL,
  `LgWin` enum('Y','N') DEFAULT NULL,
  `WSWin` enum('Y','N') DEFAULT NULL,
  `R` smallint(4) unsigned DEFAULT NULL,
  `AB` smallint(4) unsigned DEFAULT NULL,
  `H` smallint(4) unsigned DEFAULT NULL,
  `2B` smallint(4) unsigned DEFAULT NULL,
  `3B` smallint(3) unsigned DEFAULT NULL,
  `HR` smallint(3) unsigned DEFAULT NULL,
  `BB` smallint(4) unsigned DEFAULT NULL,
  `SO` smallint(4) unsigned DEFAULT NULL,
  `SB` smallint(3) unsigned DEFAULT NULL,
  `CS` smallint(3) unsigned DEFAULT NULL,
  `HBP` smallint(3) DEFAULT NULL,
  `SF` smallint(3) DEFAULT NULL,
  `RA` smallint(4) unsigned DEFAULT NULL,
  `ER` smallint(4) DEFAULT NULL,
  `ERA` decimal(4,2) DEFAULT NULL,
  `CG` smallint(3) unsigned DEFAULT NULL,
  `SHO` smallint(3) unsigned DEFAULT NULL,
  `SV` smallint(3) unsigned DEFAULT NULL,
  `IPouts` int(5) DEFAULT NULL,
  `HA` smallint(4) unsigned DEFAULT NULL,
  `HRA` smallint(4) unsigned DEFAULT NULL,
  `BBA` smallint(4) unsigned DEFAULT NULL,
  `SOA` smallint(4) unsigned DEFAULT NULL,
  `E` int(5) DEFAULT NULL,
  `DP` int(4) DEFAULT NULL,
  `FP` decimal(5,3) DEFAULT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `park` varchar(255) DEFAULT NULL,
  `attendance` int(7) DEFAULT NULL,
  `BPF` int(3) DEFAULT NULL,
  `PPF` int(3) DEFAULT NULL,
  `teamIDBR` char(3) DEFAULT NULL,
  `teamIDlahman45` char(3) DEFAULT NULL,
  `teamIDretro` char(3) DEFAULT NULL,
  PRIMARY KEY (`yearID`,`lgID`,`teamID`),
  KEY `team` (`teamID`,`yearID`,`lgID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `teamsfranchises` (
  `franchID` char(3) NOT NULL DEFAULT '',
  `franchName` varchar(50) NOT NULL DEFAULT '',
  `active` enum('Y','N','NA') NOT NULL DEFAULT 'Y',
  `NAassoc` char(3) DEFAULT NULL,
  PRIMARY KEY (`franchID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `teamshalf` (
  `yearID` smallint(4) unsigned NOT NULL DEFAULT '0',
  `lgID` char(2) NOT NULL DEFAULT '',
  `teamID` char(3) NOT NULL DEFAULT '',
  `Half` enum('1','2','') NOT NULL DEFAULT '',
  `divID` char(1) DEFAULT NULL,
  `DivWin` enum('Y','N') NOT NULL DEFAULT 'N',
  `Rank` smallint(3) unsigned NOT NULL DEFAULT '0',
  `G` smallint(3) unsigned DEFAULT NULL,
  `W` smallint(3) unsigned DEFAULT NULL,
  `L` smallint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`yearID`,`teamID`,`lgID`,`Half`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `xref_stats` (
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `statsID` int(5) DEFAULT NULL,
  PRIMARY KEY (`playerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

