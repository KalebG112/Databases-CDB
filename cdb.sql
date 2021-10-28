-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2021 at 01:50 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `album_name` varchar(50) NOT NULL,
  `release_date` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `total_tracks` int(11) NOT NULL,
  `artist_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_name`, `release_date`, `type`, `total_tracks`, `artist_name`) VALUES
('AfterHours', 2020, 'album', 14, 'The Weeknd'),
('Certified Lover Boy', 2021, 'album', 21, 'Drake'),
('Dark Lane Demo Tapes', 2020, 'album', 14, 'Drake'),
('Donda', 2021, 'album', 27, 'Kanye West'),
('More Life', 2017, 'album', 22, 'Drake'),
('SOUR', 2021, 'album', 11, 'Olivia Rodrigo'),
('Starboy', 2016, 'album', 18, 'The Weeknd');

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `artist_name` varchar(50) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `popularity` int(11) NOT NULL,
  `followers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artist_name`, `genre`, `popularity`, `followers`) VALUES
('Drake', 'Hip-hop', 100, 58124139),
('Kanye West', 'Rap', 95, 15440670),
('Olivia Rodrigo', 'Pop', 92, 9463240),
('The Weeknd', 'Pop', 95, 37755784);

-- --------------------------------------------------------

--
-- Table structure for table `belongs`
--

CREATE TABLE `belongs` (
  `user_id` varchar(21) NOT NULL,
  `playlist_id` varchar(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contains`
--

CREATE TABLE `contains` (
  `song_name` varchar(50) NOT NULL,
  `artist_name` varchar(20) NOT NULL,
  `album_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contains`
--

INSERT INTO `contains` (`song_name`, `artist_name`, `album_name`) VALUES
('Blinding Lights', 'The Weeknd', 'AfterHours'),
('deja vu', 'Olivia Rodrigo', 'SOUR'),
('drivers license', 'Olivia Rodrigo', 'SOUR'),
('good 4 u', 'Olivia Rodrigo', 'SOUR'),
('In The Bible (with Lil Durk & Giveon)', 'Drake', 'Certified Lover Boy'),
('Starboy', 'The Weeknd', 'Starboy'),
('Time Flies', 'Drake', 'Dark Lane Demo Tapes');

-- --------------------------------------------------------

--
-- Table structure for table `from_relation`
--

CREATE TABLE `from_relation` (
  `song_name` varchar(50) NOT NULL,
  `artist_name` varchar(20) NOT NULL,
  `album_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `from_relation`
--

INSERT INTO `from_relation` (`song_name`, `artist_name`, `album_name`) VALUES
('Blinding Lights', 'The Weeknd', 'AfterHours'),
('deja vu', 'Olivia Rodrigo', 'SOUR'),
('Do Not Disturb', 'Drake', 'More Life'),
('drivers license', 'Olivia Rodrigo', 'SOUR'),
('good 4 u', 'Olivia Rodrigo', 'SOUR'),
('Hurricane', 'Kanye West', 'Donda'),
('In The Bible (with Lil Durk & Giveon)', 'Drake', 'Certified Lover Boy'),
('Starboy', 'The Weeknd', 'Starboy'),
('Time Flies', 'Drake', 'Dark Lane Demo Tapes');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `user_id` varchar(20) NOT NULL,
  `song_name` varchar(50) NOT NULL,
  `artist_name` varchar(10) NOT NULL,
  `year` int(11) NOT NULL,
  `creation_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`user_id`, `song_name`, `artist_name`, `year`, `creation_date`) VALUES
('andyboi14', 'Blinding Lights', 'The Weeknd', 2020, 2021),
('andyboi14', 'Starboy', 'The Weeknd', 2016, 2021),
('kalebg28', 'In The Bible (with Lil Durk & Giveon)', 'Drake', 2021, 2021),
('kalebg28', 'Time Flies', 'Drake', 2020, 2021),
('zincman12', 'Heartless', 'Kanye West', 2016, 2021),
('zincman12', 'Hurricane', 'Kanye West', 2021, 2021);

-- --------------------------------------------------------

--
-- Table structure for table `record_label`
--

CREATE TABLE `record_label` (
  `record_label_name` varchar(50) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `record_label`
--

INSERT INTO `record_label` (`record_label_name`, `year`) VALUES
('DefJam Recordings', 2021),
('Geffen Records', 2021),
('Republic Records', 2020),
('Republic Records', 2021);

-- --------------------------------------------------------

--
-- Table structure for table `signs`
--

CREATE TABLE `signs` (
  `artist_name` varchar(50) NOT NULL,
  `record_label_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signs`
--

INSERT INTO `signs` (`artist_name`, `record_label_name`) VALUES
('Drake', 'Republic Records'),
('Kanye West', 'DefJam Recordings'),
('Olivia Rodrigo', 'Geffen Records'),
('The Weeknd', 'Republic Records');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `song_name` varchar(50) NOT NULL,
  `artist_name` varchar(20) NOT NULL,
  `year` int(11) NOT NULL,
  `speechiness` float NOT NULL,
  `danceability` float NOT NULL,
  `energy` float NOT NULL,
  `loudness` float NOT NULL,
  `acousticness` float NOT NULL,
  `instrumentalness` float NOT NULL,
  `liveness` float NOT NULL,
  `valence` float NOT NULL,
  `tempo` float NOT NULL,
  `duration_ms` int(11) NOT NULL,
  `time_signature` int(11) NOT NULL,
  `mode` int(11) NOT NULL,
  `track_key` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`song_name`, `artist_name`, `year`, `speechiness`, `danceability`, `energy`, `loudness`, `acousticness`, `instrumentalness`, `liveness`, `valence`, `tempo`, `duration_ms`, `time_signature`, `mode`, `track_key`) VALUES
('Blinding Lights', 'The Weeknd', 2019, 0.0598, 0.514, 0.73, -5.934, 0.00146, 0.0000954, 0.0897, 0.334, 171.005, 200040, 4, 1, 1),
('deja vu', 'Olivia Rodrigo', 2021, 0.112, 0.442, 0.612, -7.222, 0.584, 0.0000057, 0.37, 0.178, 180.917, 215507, 4, 1, 2),
('Do Not Disturb', 'Drake', 2017, 0.45, 0.618, 0.693, -5.943, 0.246, 0, 0.112, 0.454, 170.982, 283551, 4, 0, 7),
('drivers license', 'Olivia Rodrigo', 2021, 0.0578, 0.561, 0.431, -8.81, 0.768, 0.0000142, 0.106, 0.137, 143.875, 242013, 4, 1, 10),
('good 4 u', 'Olivia Rodrigo', 2021, 0.154, 0.563, 0.664, -5.044, 0.335, 0, 0.0849, 0.688, 166.928, 178147, 4, 1, 9),
('Heartless', 'Kanye West', 2021, 0.136, 0.79, 0.647, -5.983, 0.0515, 0, 0.248, 0.654, 87.999, 211000, 4, 0, 10),
('Hurricane', 'Kanye West', 2021, 0.146, 0.587, 0.561, -6.569, 0.0466, 0, 0.109, 0.351, 80.009, 243187, 4, 1, 0),
('In The Bible (with Lil Durk & Giveon)', 'Drake', 2021, 0.297, 0.686, 0.385, -8.35, 0.614, 0, 0.131, 0.147, 143.07, 296568, 4, 0, 7),
('Save Your Tears', 'The Weeknd', 2020, 0.0309, 0.68, 0.826, -5.487, 0.0212, 0.0000124, 0.543, 0.644, 118.051, 215627, 4, 1, 0),
('Starboy', 'The Weeknd', 2016, 0.276, 0.679, 0.587, -7.015, 0.141, 0.00000635, 0.137, 0.486, 186.003, 230453, 4, 1, 7),
('Stronger', 'Kanye West', 2021, 0.153, 0.617, 0.717, -7.858, 0.00564, 0, 0.408, 0.49, 103.992, 311867, 4, 0, 10),
('Time Flies', 'Drake', 2020, 0.224, 0.864, 0.477, -5.786, 0.201, 0, 0.182, 0.5, 86.46, 192932, 4, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(15) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`) VALUES
('aliibs7', 'Ali'),
('andyboi14', 'Andrew'),
('kalebg28', 'Kaleb'),
('zincman12', 'Alexander');

-- --------------------------------------------------------

--
-- Table structure for table `written`
--

CREATE TABLE `written` (
  `song_name` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `artist_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `written`
--

INSERT INTO `written` (`song_name`, `year`, `artist_name`) VALUES
('Blinding Lights', 2020, 'The Weeknd'),
('deja vu', 2021, 'Olivia Rodrigo'),
('Do Not Disturb', 2017, 'Drake'),
('drivers license', 2021, 'Olivia Rodrigo'),
('good 4 u', 2021, 'Olivia Rodrigo'),
('Heartless', 2016, 'Kanye West'),
('Hurricane', 2021, 'Kanye West'),
('In The Bible (with Lil Durk and Giveon)', 2021, 'Drake'),
('Save Your Tears', 2020, 'The Weeknd'),
('Starboy', 2016, 'The Weeknd'),
('Stronger', 2015, 'Kanye West'),
('Time Flies', 2020, 'Drake');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_name`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artist_name`);

--
-- Indexes for table `belongs`
--
ALTER TABLE `belongs`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `contains`
--
ALTER TABLE `contains`
  ADD PRIMARY KEY (`song_name`,`artist_name`,`album_name`);

--
-- Indexes for table `from_relation`
--
ALTER TABLE `from_relation`
  ADD PRIMARY KEY (`song_name`,`artist_name`,`album_name`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`user_id`,`song_name`,`artist_name`,`year`);

--
-- Indexes for table `record_label`
--
ALTER TABLE `record_label`
  ADD PRIMARY KEY (`record_label_name`,`year`);

--
-- Indexes for table `signs`
--
ALTER TABLE `signs`
  ADD PRIMARY KEY (`artist_name`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`song_name`,`artist_name`,`year`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `written`
--
ALTER TABLE `written`
  ADD PRIMARY KEY (`song_name`,`year`,`artist_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
