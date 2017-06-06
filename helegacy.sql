-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 06 jun 2017 kl 12:00
-- Serverversion: 10.1.22-MariaDB
-- PHP-version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `helegacy2`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `account`
--

CREATE TABLE `account` (
  `UID` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `reputation` int(11) NOT NULL DEFAULT '0',
  `HDD_data` blob,
  `bankID` blob,
  `capacity` int(11) NOT NULL DEFAULT '500',
  `capacity_left` int(11) NOT NULL DEFAULT '500',
  `money` int(11) NOT NULL,
  `ip` text NOT NULL,
  `log_data` text NOT NULL,
  `serverID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `account`
--

INSERT INTO `account` (`UID`, `username`, `password`, `reputation`, `HDD_data`, `bankID`, `capacity`, `capacity_left`, `money`, `ip`, `log_data`, `serverID`) VALUES
(10005, 'TestAccount1', 'test', 0, 0x613a323a7b693a303b693a31303030303b693a313b693a31303030313b7d, NULL, 500, 500, 0, '127.0.0.1', 'TEST', 20);

-- --------------------------------------------------------

--
-- Tabellstruktur `account_hdd`
--

CREATE TABLE `account_hdd` (
  `ID` int(11) NOT NULL,
  `capacity` int(11) NOT NULL DEFAULT '500',
  `size_left` int(11) NOT NULL DEFAULT '500',
  `data` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `account_hdd`
--

INSERT INTO `account_hdd` (`ID`, `capacity`, `size_left`, `data`) VALUES
(10023, 500, 500, 0x613a313a7b693a303b693a31303030303b7d);

-- --------------------------------------------------------

--
-- Tabellstruktur `account_server`
--

CREATE TABLE `account_server` (
  `ID` int(11) NOT NULL,
  `CPU_ID` int(11) NOT NULL DEFAULT '1',
  `HDD_ID` int(11) NOT NULL DEFAULT '1',
  `RAM_ID` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur `bank_account`
--

CREATE TABLE `bank_account` (
  `ID` int(11) NOT NULL,
  `MONEY` double NOT NULL,
  `BANK_IP` text NOT NULL,
  `ADDRESS` text NOT NULL,
  `PASSWORD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur `hackedlist`
--

CREATE TABLE `hackedlist` (
  `id` int(11) NOT NULL,
  `serverIP` text NOT NULL,
  `serverID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `type` text NOT NULL,
  `user` int(11) NOT NULL,
  `pass` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur `mail`
--

CREATE TABLE `mail` (
  `ID` int(11) NOT NULL,
  `Message` text NOT NULL,
  `From` int(11) NOT NULL,
  `To` int(11) NOT NULL,
  `Seen` int(11) NOT NULL DEFAULT '0',
  `Sent` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur `process`
--

CREATE TABLE `process` (
  `pid` int(11) NOT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` text NOT NULL,
  `function` text NOT NULL,
  `function_data` text NOT NULL,
  `function_id` int(11) NOT NULL,
  `redirect` text NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur `server`
--

CREATE TABLE `server` (
  `ID` int(11) NOT NULL,
  `type` text NOT NULL,
  `text` text NOT NULL,
  `extra` text NOT NULL,
  `ip` text NOT NULL,
  `ownerid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `server`
--

INSERT INTO `server` (`ID`, `type`, `text`, `extra`, `ip`, `ownerid`) VALUES
(1, 'npc', '<p>Welcome to the First Whois server. Enjoy our services!<ul class=\"whois\"><li><a href=\"internet?ip=241.151.9.102\"><span class=\"item\">241.151.9.102</span> - <span class=\"whois-member\">Download Center</span></a></li><li><a href=\"internet?ip=17.214.45.165\"><span class=\"item\">17.214.45.165</span> - <span class=\"whois-member\">Torrent Market</span></a></li><li><a href=\"internet?ip=206.128.223.106\"><span class=\"item\">206.128.223.106</span> - <span class=\"whois-member\">First Puzzle</span></a></li><li><a href=\"internet?ip=206.211.30.54\"><span class=\"item\">206.211.30.54</span> - <span class=\"whois-member\">First International Bank</span></a></li><li><a href=\"internet?ip=146.60.14.112\"><span class=\"item\">146.60.14.112</span> - <span class=\"whois-member\">elgooG</span></a></li><li><a href=\"internet?ip=110.15.172.26\"><span class=\"item\">110.15.172.26</span> - <span class=\"whois-member\">Murder King</span></a></li><li><a href=\"internet?ip=234.56.132.167\"><span class=\"item\">234.56.132.167</span> - <span class=\"whois-member\">Safenet</span></a></li><li><a href=\"internet?ip=232.79.77.77\"><span class=\"item\">232.79.77.77</span> - <span class=\"whois-member\">Pineapple</span></a></li></ul>Trending Sites:<ul class=\"whois\"><li><a href=\"internet?ip=160.7.191.179\"><span class=\"item\">160.7.191.179</span> - <span class=\"whois-member\">Bitcoin Market</span></a></li><li><a href=\"internet?ip=1.158.201.174\"><span class=\"item\">1.158.201.174</span> - <span class=\"whois-member\">ISP - Internet Service Provider</span></a></li><li><a href=\"internet?ip=9.149.137.9\"><span class=\"item\">9.149.137.9</span> - <span class=\"whois-member\">NSA</span></a></li><li><a href=\"internet?ip=4.2.178.10\"><span class=\"item\">4.2.178.10</span> - <span class=\"whois-member\">Hacker News</span></a></li></ul></p>', 'Whois', '1.2.3.4', 0),
(5, 'npc', '<p>Why are you trying to connect to an router??<br>This is a game...</p>', 'NPC', '192.168.0.1', 0),
(6, 'npc', '<p>Welcome to the download center! <br/><br/> Download whatever you need. Unlimited bandwidth! <br/><br/> <strong>Username:</strong> download<br/><strong>Password:</strong> download</p>', 'NPC', '241.151.9.102', 0),
(8, 'npc', 'F.L.I.E.N.D.S (1.0) - <span class=\"green\">$0.1</span><span class=\"small nomargin\"> / GB</span><br/>\r\nWinblows 8.1 (2.0) - <span class=\"green\">$0.2</span><span class=\"small nomargin\"> / GB</span><br/>\r\nFotoshop CS6 (3.0) - <span class=\"green\">$0.3</span><span class=\"small nomargin\"> / GB</span>', 'NPC', '17.214.45.165', 0),
(9, 'npc', '<p>Welcome to the First Puzzle. Follow the trail to get better softwares.<br/><br/>The First Puzzle is easy, but can you solve the next ones? Good luck :)</p>', 'NPC', '206.128.223.106', 0),
(10, 'npc', '<p>Welcome to the <strong>First International Bank</strong>.<br/><br/>We have a very modest defense, but at least you didn\'t have to pay for an account.<br/><br/><a href=\"internet?action=login&type=bank\">Login to your account</a>.</p>', 'Bank', '206.211.30.54', 0),
(11, 'npc', '<p><div class=\"center\"><img alt=\"elgooG\" title=\"elgooG\" src=\"images/npc/elgoog.png\"><br/><strong>Don\'t be evil.</strong><br/><span class=\"small\">unless it is profitable.</span></div></p>', 'NPC', '146.60.14.112', 0),
(12, 'npc', '<p><div class=\"center\"><img alt=\"Murder King\" title=\"Murder King\" src=\"images/npc/murderking.jpg\"><br/><br/><span class=\"small\">You\'ll get it our way.</span></div></p>', 'NPC', '110.15.172.26', 0),
(20, 'vpc', '', 'VPC', '127.0.0.1', 10005);

-- --------------------------------------------------------

--
-- Tabellstruktur `software`
--

CREATE TABLE `software` (
  `ID` int(11) NOT NULL,
  `name` text NOT NULL,
  `version` float NOT NULL DEFAULT '1',
  `size` float NOT NULL DEFAULT '0',
  `ram` int(11) NOT NULL DEFAULT '0',
  `type` text NOT NULL,
  `serverID` int(11) NOT NULL,
  `ownerID` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `software`
--

INSERT INTO `software` (`ID`, `name`, `version`, `size`, `ram`, `type`, `serverID`, `ownerID`, `created`) VALUES
(10000, 'cracker', 1, 28, 9, 'Cracker', 20, 0, '2017-05-22 15:31:37'),
(10001, 'Test', 44.2, 4211, 321, 'Hasher', 20, 0, '2017-05-24 02:02:39');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`UID`);

--
-- Index för tabell `account_hdd`
--
ALTER TABLE `account_hdd`
  ADD PRIMARY KEY (`ID`);

--
-- Index för tabell `account_server`
--
ALTER TABLE `account_server`
  ADD PRIMARY KEY (`ID`);

--
-- Index för tabell `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`ID`);

--
-- Index för tabell `hackedlist`
--
ALTER TABLE `hackedlist`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`ID`);

--
-- Index för tabell `process`
--
ALTER TABLE `process`
  ADD PRIMARY KEY (`pid`);

--
-- Index för tabell `server`
--
ALTER TABLE `server`
  ADD PRIMARY KEY (`ID`);

--
-- Index för tabell `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `account`
--
ALTER TABLE `account`
  MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10006;
--
-- AUTO_INCREMENT för tabell `account_hdd`
--
ALTER TABLE `account_hdd`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10024;
--
-- AUTO_INCREMENT för tabell `account_server`
--
ALTER TABLE `account_server`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT för tabell `bank_account`
--
ALTER TABLE `bank_account`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT för tabell `hackedlist`
--
ALTER TABLE `hackedlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT för tabell `mail`
--
ALTER TABLE `mail`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT för tabell `process`
--
ALTER TABLE `process`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT för tabell `server`
--
ALTER TABLE `server`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT för tabell `software`
--
ALTER TABLE `software`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10002;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
