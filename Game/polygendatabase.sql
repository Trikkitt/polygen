-- --------------------------------------------------------
-- Host:                         discserver
-- Server version:               10.5.23-MariaDB-0+deb11u1 - Raspbian 11
-- Server OS:                    debian-linux-gnueabihf
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table discworld.admininfo
CREATE TABLE IF NOT EXISTS `admininfo` (
  `currentlocation` varchar(50) DEFAULT NULL,
  `lastupdated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table discworld.availablenames
CREATE TABLE IF NOT EXISTS `availablenames` (
  `id` int(11) NOT NULL,
  `gamename` varchar(50) NOT NULL DEFAULT '',
  `used` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table discworld.codenamelog
CREATE TABLE IF NOT EXISTS `codenamelog` (
  `token` varchar(50) NOT NULL,
  `oldcodename` varchar(50) NOT NULL,
  `newcodename` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `when` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.


-- Dumping structure for table discworld.discboosts
CREATE TABLE IF NOT EXISTS `discboosts` (
  `discid` varchar(50) NOT NULL,
  `playertoken` varchar(50) NOT NULL,
  `boosttimestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table discworld.discs
CREATE TABLE IF NOT EXISTS `discs` (
  `discid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `unitref` varchar(10) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `ownerteam` int(11) DEFAULT NULL,
  `capturetime` timestamp NULL DEFAULT NULL,
  `lastalivecheck` timestamp NULL DEFAULT NULL,
  `discoveredby` varchar(50) DEFAULT NULL,
  `discoveredtime` timestamp NULL DEFAULT NULL,
  `picfirmwareversion` varchar(50) DEFAULT NULL,
  `discfirmwareversion` varchar(50) DEFAULT NULL,
  `micropythonversion` varchar(50) DEFAULT NULL,
  `firmwareversioncheck` datetime DEFAULT NULL,
  `lastmsgtime` timestamp NULL DEFAULT NULL,
  `soundmode` tinyint(4) NOT NULL DEFAULT 0,
  `daytimevolume` tinyint(4) NOT NULL DEFAULT 25,
  `nighttimevolume` tinyint(4) NOT NULL DEFAULT 8,
  `mapx` smallint(6) NOT NULL DEFAULT 1,
  `mapy` smallint(6) NOT NULL DEFAULT 1,
  `serverkey` varchar(50) DEFAULT NULL,
  `clientkey` varchar(50) DEFAULT NULL,
  `batteryvoltage` int(11) DEFAULT NULL,
  `currentstatus` tinyint(4) NOT NULL DEFAULT 0,
  `batteryvoltagewifi` int(11) DEFAULT NULL,
  `scoremultiplier` int(11) NOT NULL DEFAULT 1,
  `maxholdtime` int(11) DEFAULT NULL,
  `lowbatteryalert` tinyint(4) NOT NULL DEFAULT 0,
  `gpslocation` varchar(50) DEFAULT NULL,
  `updaterequired` tinyint(4) NOT NULL DEFAULT 0,
  `network` varchar(80) DEFAULT NULL,
  `diagnosticresult` int(11) NOT NULL DEFAULT 0,
  `idleRFIDgap` int(11) NOT NULL DEFAULT 5,
  `idleAnimationDelay` int(11) NOT NULL DEFAULT 4,
  `idleDiagInterval` int(11) NOT NULL DEFAULT 50,
  `idleAliveInterval` int(11) NOT NULL DEFAULT 120,
  `boostcount` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`discid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table discworld.discstatushistory
CREATE TABLE IF NOT EXISTS `discstatushistory` (
  `discid` varchar(50) NOT NULL,
  `statustimestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `batteryvoltage` int(11) NOT NULL DEFAULT 0,
  `diagnosticvalue` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table discworld.discvisits
CREATE TABLE IF NOT EXISTS `discvisits` (
  `playerid` varchar(50) NOT NULL,
  `discid` varchar(50) NOT NULL,
  `totalvisits` int(11) NOT NULL DEFAULT 0,
  `captures` int(11) NOT NULL DEFAULT 0,
  `totalheldduration` int(11) NOT NULL DEFAULT 0,
  `maxheldduration` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table discworld.ExchangeRates
CREATE TABLE IF NOT EXISTS `ExchangeRates` (
  `Currency` varchar(10) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `LastUpdated` datetime NOT NULL,
  `PolyCoinValue` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table discworld.firmwarefiles
CREATE TABLE IF NOT EXISTS `firmwarefiles` (
  `filename` varchar(50) NOT NULL,
  `downloadurl` varchar(250) NOT NULL,
  `versiontxt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table discworld.players
CREATE TABLE IF NOT EXISTS `players` (
  `token` varchar(50) NOT NULL,
  `team` int(11) NOT NULL,
  `playername` varchar(50) NOT NULL,
  `maxduration` int(11) NOT NULL DEFAULT 0,
  `totalduration` int(11) NOT NULL DEFAULT 0,
  `longestheld` varchar(50) DEFAULT NULL,
  `totalvisits` int(11) NOT NULL DEFAULT 0,
  `uniquevisits` int(11) NOT NULL DEFAULT 0,
  `totalcaptures` int(11) NOT NULL DEFAULT 0,
  `uniquecaptures` int(11) NOT NULL DEFAULT 0,
  `discsdiscovered` int(11) NOT NULL DEFAULT 0,
  `lastvisited` varchar(50) DEFAULT NULL,
  `apppassword` varchar(50) DEFAULT NULL,
  `passwordlockout` int(11) NOT NULL DEFAULT 0,
  `cardtype` smallint(6) NOT NULL DEFAULT 0,
  `language` varchar(2) NOT NULL DEFAULT 'en',
  `regtime` datetime NOT NULL DEFAULT current_timestamp(),
  `boostcount` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table discworld.playerscorelog
CREATE TABLE IF NOT EXISTS `playerscorelog` (
  `recordid` int(11) NOT NULL AUTO_INCREMENT,
  `playertoken` varchar(50) NOT NULL,
  `source` smallint(6) NOT NULL,
  `score` int(11) NOT NULL DEFAULT 0,
  `discid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`recordid`) USING BTREE,
  FULLTEXT KEY `playertoken` (`playertoken`)
) ENGINE=InnoDB AUTO_INCREMENT=531 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table discworld.playerscorelogsources
CREATE TABLE IF NOT EXISTS `playerscorelogsources` (
  `sourceid` smallint(6) NOT NULL,
  `sourcename` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`sourceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table discworld.polycoinvalues
CREATE TABLE IF NOT EXISTS `polycoinvalues` (
  `timeindex` int(11) NOT NULL,
  `polycoindollarrate` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table discworld.previousplayers
CREATE TABLE IF NOT EXISTS `previousplayers` (
  `token` varchar(20) NOT NULL,
  `emfvisit` tinyint(4) NOT NULL DEFAULT 0,
  `mchvisit` tinyint(4) NOT NULL DEFAULT 0,
  `cccvisit` tinyint(4) NOT NULL DEFAULT 0,
  `codename` varchar(50) NOT NULL,
  `language` varchar(10) NOT NULL DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table discworld.systemcfg
CREATE TABLE IF NOT EXISTS `systemcfg` (
  `serverregkey` varchar(50) NOT NULL,
  `gamestatus` tinyint(4) NOT NULL,
  `gamestart` timestamp NULL DEFAULT NULL,
  `gameend` timestamp NULL DEFAULT NULL,
  `serverbasekey` varchar(50) DEFAULT NULL,
  `discbasekey` varchar(50) DEFAULT NULL,
  `winningteamID` int(11) DEFAULT NULL,
  `previousplayerbonus` int(11) NOT NULL DEFAULT 0,
  `visitbonus` int(11) NOT NULL DEFAULT 0,
  `firstvisitbonus` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table discworld.tasks
CREATE TABLE IF NOT EXISTS `tasks` (
  `taskID` int(11) NOT NULL,
  `taskName` varchar(50) NOT NULL DEFAULT '',
  `frequency` smallint(6) NOT NULL DEFAULT 0,
  `lastexecuted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tasktime` time NOT NULL DEFAULT '00:00:00',
  `taskactivity` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table discworld.teams
CREATE TABLE IF NOT EXISTS `teams` (
  `id` int(11) NOT NULL,
  `teamname` varchar(50) NOT NULL,
  `colour` int(11) NOT NULL,
  `rgbcolour` int(11) NOT NULL DEFAULT 0,
  `dischue` smallint(6) NOT NULL DEFAULT 0,
  `soundoffset` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
