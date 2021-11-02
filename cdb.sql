-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2021 at 02:29 AM
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
  `total_tracks` int(11) NOT NULL,
  `artist_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_name`, `release_date`, `total_tracks`, `artist_name`) VALUES
('2014 Forest Hills Drive', 2014, 13, 'J. Cole'),
('808s & Heartbreak', 2008, 13, 'Kanye West'),
('A Day at the Races', 1976, 12, 'Queen'),
('A Night at the Opera', 1975, 24, 'Queen'),
('AfterHours', 2020, 14, 'The Weeknd'),
('Certified Lover Boy', 2021, 21, 'Drake'),
('Dangerous: The Double Album', 2021, 30, 'Morgan Wallen'),
('Dark Lane Demo Tapes', 2020, 14, 'Drake'),
('Donda', 2021, 27, 'Kanye West'),
('Golder Hour', 2018, 13, 'Kacey Musgraves'),
('Graduation', 2007, 13, 'Kanye West'),
('More Life', 2017, 22, 'Drake'),
('News of the World', 1977, 11, 'Queen'),
('SOUR', 2021, 11, 'Olivia Rodrigo'),
('Starboy', 2016, 18, 'The Weeknd'),
('Sweet Action', 2020, 7, 'Jack Harlow'),
('Thats What They All Say', 2020, 15, 'Jack Harlow'),
('The Off-Season', 2021, 12, 'J. Cole'),
('WHAT YOU SEE AIN’T ALWAYS WHAT YOU GET ', 2020, 23, 'Luke Combs'),
('What You See Is What You Get', 2019, 18, 'Luke Combs');

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
('J. Cole', 'Hip-hop', 90, 14791427),
('Jack Harlow', 'Hip-hop', 90, 1262566),
('Kacey Musgraves', 'Country', 79, 1040628),
('Kanye West', 'Rap', 95, 15440670),
('Luke Combs', 'Country', 83, 5698593),
('Morgan Wallen', 'Country', 85, 2423831),
('Olivia Rodrigo', 'Pop', 92, 9463240),
('Queen', 'Rock', 88, 37481621),
('The Weeknd', 'Pop', 95, 37755784);

-- --------------------------------------------------------

--
-- Table structure for table `contains`
--

CREATE TABLE `contains` (
  `song_name` varchar(50) NOT NULL,
  `artist_name` varchar(20) NOT NULL,
  `album_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contains`
--

INSERT INTO `contains` (`song_name`, `artist_name`, `album_name`) VALUES
('7 Summers', 'Morgan Wallen', 'Dangerous: The Double Album'),
('Blinding Lights', 'The Weeknd', 'AfterHours'),
('Bohemian Rhapsody', 'Queen', 'A Night at the Opera'),
('deja vu', 'Olivia Rodrigo', 'SOUR'),
('drivers license', 'Olivia Rodrigo', 'SOUR'),
('Forever After All', 'Luke Combs', 'WHAT YOU SEE AIN’T ALWAYS WHAT YOU GET '),
('Golden Hour', 'Kacey Musgraves', 'Golder Hour'),
('good 4 u', 'Olivia Rodrigo', 'SOUR'),
('High Horse', 'Kacey Musgraves', 'Golder Hour'),
('In The Bible (with Lil Durk & Giveon)', 'Drake', 'Certified Lover Boy'),
('Lovin\' On You', 'Luke Combs', 'What You See Is What You Get'),
('Luv Is Dro (feat. Static Major & Bryson Tiller)', 'Jack Harlow', 'Thats What They All Say'),
('m y . l i f e (with 21 Savage & Morray)', 'J. Cole', 'The Off-Season'),
('No Role Modelz', 'J. Cole', '2014 Forest Hills Drive'),
('Rainbow', 'Kacey Musgraves', 'Golder Hour'),
('Somebody To Love - Remastered 2011', 'Queen', 'A Day at the Races'),
('Somebody’s Problem', 'Morgan Wallen', 'Dangerous: The Double Album'),
('Starboy', 'The Weeknd', 'Starboy'),
('Time Flies', 'Drake', 'Dark Lane Demo Tapes'),
('Tyler Herro', 'Jack Harlow', 'Thats What They All Say'),
('Wasted On You', 'Morgan Wallen', 'Dangerous: The Double Album'),
('We Are The Champions - Remastered 2011', 'Queen', 'News of the World'),
('WHATS POPPIN', 'Jack Harlow', 'Sweet Action');

-- --------------------------------------------------------

--
-- Table structure for table `from_relation`
--

CREATE TABLE `from_relation` (
  `song_name` varchar(50) NOT NULL,
  `artist_name` varchar(20) NOT NULL,
  `album_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `from_relation`
--

INSERT INTO `from_relation` (`song_name`, `artist_name`, `album_name`) VALUES
('7 Summers', 'Morgan Wallen', 'Dangerous: The Double Album'),
('Blinding Lights', 'The Weeknd', 'AfterHours'),
('Bohemian Rhapsody', 'Queen', 'A Night at the Opera'),
('deja vu', 'Olivia Rodrigo', 'SOUR'),
('Do Not Disturb', 'Drake', 'More Life'),
('drivers license', 'Olivia Rodrigo', 'SOUR'),
('Forever After All', 'Luke Combs', 'WHAT YOU SEE AIN’T ALWAYS WHAT YOU GET '),
('Golden Hour', 'Kacey Musgraves', 'Golder Hour'),
('good 4 u', 'Olivia Rodrigo', 'SOUR'),
('High Horse', 'Kacey Musgraves', 'Golder Hour'),
('Hurricane', 'Kanye West', 'Donda'),
('In The Bible (with Lil Durk & Giveon)', 'Drake', 'Certified Lover Boy'),
('Lovin\' On You', 'Luke Combs', 'What You See Is What You Get'),
('Luv Is Dro (feat. Static Major & Bryson Tiller)', 'Jack Harlow', 'Thats What They All Say'),
('m y . l i f e (with 21 Savage & Morray)', 'J. Cole', 'The Off-Season'),
('No Role Modelz', 'J. Cole', '2014 Forest Hills Drive'),
('Rainbow', 'Kacey Musgraves', 'Golder Hour'),
('Somebody To Love - Remastered 2011', 'Queen', 'A Day at the Races'),
('Starboy', 'The Weeknd', 'Starboy'),
('Time Flies', 'Drake', 'Dark Lane Demo Tapes'),
('Tyler Herro', 'Jack Harlow', 'Thats What They All Say'),
('We Are The Champions - Remastered 2011', 'Queen', 'News of the World'),
('WHATS POPPIN', 'Jack Harlow', 'Sweet Action');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `user_id` varchar(20) NOT NULL,
  `song_name` varchar(50) NOT NULL,
  `artist_name` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `creation_date` int(11) NOT NULL,
  `rating` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`user_id`, `song_name`, `artist_name`, `year`, `creation_date`, `rating`) VALUES
('andyboi14', '7 Summers', 'Morgan Wallen', 2020, 2021, 5),
('andyboi14', 'Blinding Lights', 'The Weeknd', 2020, 2021, 5),
('andyboi14', 'Forever After All', 'Luke Combs', 2020, 2021, 5),
('andyboi14', 'High Horse', 'Kacey Musgraves', 2020, 2021, 5),
('andyboi14', 'Starboy', 'The Weeknd', 2016, 2021, 3),
('kalebg28', '7 Summers', 'Morgan Wallen', 2021, 2021, 4),
('kalebg28', 'In The Bible (with Lil Durk & Giveon)', 'Drake', 2021, 2021, 5),
('kalebg28', 'Time Flies', 'Drake', 2020, 2021, 5),
('zincman12', 'Heartless', 'Kanye West', 2007, 2021, 0),
('zincman12', 'Hurricane', 'Kanye West', 2021, 2021, 0);

--
-- Triggers `playlist`
--
DELIMITER $$
CREATE TRIGGER `playlist_count` AFTER INSERT ON `playlist` FOR EACH ROW INSERT INTO playlist_counts VALUES (user_id, 20)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `playlist_counts`
--

CREATE TABLE `playlist_counts` (
  `user_id` varchar(15) NOT NULL,
  `playlist_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playlist_counts`
--

INSERT INTO `playlist_counts` (`user_id`, `playlist_count`) VALUES
('hashman89', 0);

-- --------------------------------------------------------

--
-- Table structure for table `record_label`
--

CREATE TABLE `record_label` (
  `id` int(11) NOT NULL,
  `record_label_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `record_label`
--

INSERT INTO `record_label` (`id`, `record_label_name`) VALUES
(8, 'Atlantic Record'),
(5, 'Big Loud Records - Morgan Wallen'),
(1, 'DefJam Recordings'),
(7, 'Dreamville'),
(9, 'EMI'),
(2, 'Geffen Records'),
(3, 'Republic Records'),
(4, 'Sony Music Nashville'),
(6, 'UMG Nashville');

-- --------------------------------------------------------

--
-- Table structure for table `signs`
--

CREATE TABLE `signs` (
  `artist_name` varchar(50) NOT NULL,
  `record_label_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signs`
--

INSERT INTO `signs` (`artist_name`, `record_label_id`) VALUES
('Kanye West', 1),
('Olivia Rodrigo', 2),
('Drake', 3),
('The Weeknd', 3),
('Luke Combs', 4),
('Morgan Wallen', 5),
('Kacey Musgraves', 6),
('J. Cole', 7),
('Jack Harlow', 8),
('Queen', 9);

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
('7 Summers', 'Morgan Wallen', 2020, 0.0248, 0.625, 0.775, -5.199, 0.431, 0.0000523, 0.12, 0.588, 101.961, 210123, 4, 1, 0),
('Blinding Lights', 'The Weeknd', 2019, 0.0598, 0.514, 0.73, -5.934, 0.00146, 0.0000954, 0.0897, 0.334, 171.005, 200040, 4, 1, 1),
('Bohemian Rhapsody', 'Queen', 2006, 0.0503, 0.397, 0.386, -10.405, 0.271, 0, 0.188, 0.21, 144.242, 355400, 4, 0, 0),
('deja vu', 'Olivia Rodrigo', 2021, 0.112, 0.442, 0.612, -7.222, 0.584, 0.0000057, 0.37, 0.178, 180.917, 215507, 4, 1, 2),
('Do Not Disturb', 'Drake', 2017, 0.45, 0.618, 0.693, -5.943, 0.246, 0, 0.112, 0.454, 170.982, 283551, 4, 0, 7),
('drivers license', 'Olivia Rodrigo', 2021, 0.0578, 0.561, 0.431, -8.81, 0.768, 0.0000142, 0.106, 0.137, 143.875, 242013, 4, 1, 10),
('Forever After All', 'Luke Combs', 2020, 0.0253, 0.487, 0.65, -5.195, 0.191, 0, 0.0933, 0.456, 151.964, 232533, 4, 1, 0),
('Golden Hour', 'Kacey Musgraves', 2018, 0.0274, 0.611, 0.555, -6.372, 0.0952, 0, 0.11, 0.413, 88.969, 198453, 4, 0, 6),
('good 4 u', 'Olivia Rodrigo', 2021, 0.154, 0.563, 0.664, -5.044, 0.335, 0, 0.0849, 0.688, 166.928, 178147, 4, 1, 9),
('Heartless', 'Kanye West', 2021, 0.136, 0.79, 0.647, -5.983, 0.0515, 0, 0.248, 0.654, 87.999, 211000, 4, 0, 10),
('High Horse', 'Kacey Musgraves', 2018, 0.0363, 0.725, 0.674, -5.254, 0.0325, 0.00000355, 0.0531, 0.773, 120.057, 213693, 4, 0, 11),
('Hurricane', 'Kanye West', 2021, 0.146, 0.587, 0.561, -6.569, 0.0466, 0, 0.109, 0.351, 80.009, 243187, 4, 1, 0),
('In The Bible (with Lil Durk & Giveon)', 'Drake', 2021, 0.297, 0.686, 0.385, -8.35, 0.614, 0, 0.131, 0.147, 143.07, 296568, 4, 0, 7),
('Lovin\' On You', 'Luke Combs', 2020, 0.06, 0.572, 0.949, -4.865, 0.00165, 0.000195, 0.163, 0.53, 118.974, 194867, 4, 1, 4),
('Luv Is Dro (feat. Static Major & Bryson Tiller)', 'Jack Harlow', 2020, 0.0524, 0.727, 0.513, -8.823, 0.0335, 0, 0.302, 0.568, 76.211, 177190, 4, 0, 6),
('m y . l i f e (with 21 Savage & Morray)', 'J. Cole', 2021, 0.137, 0.597, 0.587, -7.026, 0.0622, 0, 0.214, 0.0753, 140.021, 218802, 4, 0, 7),
('MIDDLE CHILD', 'J. Cole', 2019, 0.276, 0.837, 0.364, -11.713, 0.149, 0, 0.271, 0.463, 123.984, 213594, 4, 1, 8),
('No Role Modelz', 'J. Cole', 2014, 0.33, 0.692, 0.521, -8.465, 0.301, 0, 0.0565, 0.463, 100.45, 292987, 4, 0, 10),
('Rainbow', 'Kacey Musgraves', 2018, 0.0329, 0.581, 0.197, -7.697, 0.88, 0, 0.107, 0.349, 130.367, 214293, 4, 1, 3),
('Save Your Tears', 'The Weeknd', 2020, 0.0309, 0.68, 0.826, -5.487, 0.0212, 0.0000124, 0.543, 0.644, 118.051, 215627, 4, 1, 0),
('Somebody To Love - Remastered 2011', 'Queen', 2011, 0.0611, 0.461, 0.69, -6.958, 0.169, 0.00000101, 0.113, 0.353, 110.915, 296480, 3, 1, 8),
('Somebody’s Problem', 'Morgan Wallen', 2020, 0.0287, 0.657, 0.54, -7.675, 0.662, 0, 0.123, 0.625, 136.97, 161773, 4, 1, 5),
('Starboy', 'The Weeknd', 2016, 0.276, 0.679, 0.587, -7.015, 0.141, 0.00000635, 0.137, 0.486, 186.003, 230453, 4, 1, 7),
('Stronger', 'Kanye West', 2021, 0.153, 0.617, 0.717, -7.858, 0.00564, 0, 0.408, 0.49, 103.992, 311867, 4, 0, 10),
('The Great Divide', 'Luke Combs', 2021, 0.0271, 0.671, 0.686, -8.269, 0.597, 0.00000224, 0.283, 0.547, 111.007, 211990, 4, 0, 8),
('Time Flies', 'Drake', 2020, 0.224, 0.864, 0.477, -5.786, 0.201, 0, 0.182, 0.5, 86.46, 192932, 4, 1, 10),
('Tyler Herro', 'Jack Harlow', 2020, 0.136, 0.794, 0.756, -7.16, 0.11, 0, 0.247, 0.775, 123.066, 156498, 4, 0, 5),
('Wasted On You', 'Morgan Wallen', 2020, 0.0318, 0.505, 0.657, -5.24, 0.373, 0.00107, 0.126, 0.252, 196, 178520, 3, 0, 11),
('We Are The Champions - Remastered 2011', 'Queen', 1991, 0.0346, 0.268, 0.459, -6.94, 0.378, 0, 0.118, 0.175, 64.177, 179200, 4, 1, 10),
('WHATS POPPIN', 'Jack Harlow', 2020, 0.245, 0.923, 0.604, -6.671, 0.017, 0, 0.272, 0.826, 145.062, 139741, 4, 0, 11);

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
('hashman89', 'Haashim'),
('kalebg28', 'Kaleb'),
('zincman12', 'Alexander');

--
-- Triggers `user`
--
DELIMITER $$
CREATE TRIGGER `user_count` AFTER INSERT ON `user` FOR EACH ROW INSERT INTO playlist_counts VALUES (new.user_id, 0)
$$
DELIMITER ;

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
('7 Summers', 2021, 'Morgan Wallen'),
('Blinding Lights', 2020, 'The Weeknd'),
('Bohemian Rhapsody', 1975, 'Queen'),
('deja vu', 2021, 'Olivia Rodrigo'),
('Do Not Disturb', 2017, 'Drake'),
('drivers license', 2021, 'Olivia Rodrigo'),
('Forever After All', 2020, 'Luke Combs'),
('Golden Hour', 2018, 'Kacey Musgraves'),
('good 4 u', 2021, 'Olivia Rodrigo'),
('Heartless', 2016, 'Kanye West'),
('High Horse', 2018, 'Kacey Musgraves'),
('Hurricane', 2021, 'Kanye West'),
('In The Bible (with Lil Durk & Giveon)', 2021, 'Drake'),
('Lovin\' On You', 2019, 'Luke Combs'),
('Luv Is Dro (feat. Static Major & Bryson Tiller)', 2020, 'Jack Harlow'),
('m y . l i f e (with 21 Savage & Morray)', 2021, 'J. Cole'),
('MIDDLE CHILD', 2019, 'J. Cole'),
('No Role Modelz', 2014, 'J. Cole'),
('Rainbow', 2018, 'Kacey Musgraves'),
('Save Your Tears', 2020, 'The Weeknd'),
('Somebody To Love - Remastered 2011', 1976, 'Queen'),
('Somebody’s Problem', 2021, 'Morgan Wallen'),
('Starboy', 2016, 'The Weeknd'),
('Stronger', 2015, 'Kanye West'),
('The Great Divide', 2021, 'Luke Combs'),
('Time Flies', 2020, 'Drake'),
('Tyler Herro', 2020, 'Jack Harlow'),
('Wasted On You', 2021, 'Morgan Wallen'),
('We Are The Champions - Remastered 2011', 1977, 'Queen'),
('WHATS POPPIN', 2020, 'Jack Harlow');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_name`),
  ADD KEY `artist_name` (`artist_name`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artist_name`);

--
-- Indexes for table `contains`
--
ALTER TABLE `contains`
  ADD PRIMARY KEY (`song_name`,`artist_name`,`album_name`),
  ADD KEY `song_name` (`song_name`,`artist_name`,`album_name`),
  ADD KEY `artist_name` (`artist_name`),
  ADD KEY `album_name` (`album_name`);

--
-- Indexes for table `from_relation`
--
ALTER TABLE `from_relation`
  ADD PRIMARY KEY (`song_name`,`artist_name`,`album_name`),
  ADD KEY `song_name` (`song_name`,`artist_name`,`album_name`),
  ADD KEY `artist_name` (`artist_name`),
  ADD KEY `album_name` (`album_name`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`user_id`,`song_name`,`artist_name`,`year`),
  ADD KEY `user_id` (`user_id`,`song_name`,`artist_name`),
  ADD KEY `artist_name` (`artist_name`),
  ADD KEY `song_name` (`song_name`);

--
-- Indexes for table `playlist_counts`
--
ALTER TABLE `playlist_counts`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `record_label`
--
ALTER TABLE `record_label`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD UNIQUE KEY `record_label_name` (`record_label_name`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `signs`
--
ALTER TABLE `signs`
  ADD PRIMARY KEY (`artist_name`),
  ADD KEY `artist_name` (`artist_name`,`record_label_id`),
  ADD KEY `record_label_id` (`record_label_id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`song_name`,`artist_name`,`year`),
  ADD KEY `artist_name` (`artist_name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `written`
--
ALTER TABLE `written`
  ADD PRIMARY KEY (`song_name`,`year`,`artist_name`),
  ADD KEY `song_name` (`song_name`,`artist_name`),
  ADD KEY `artist_name` (`artist_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `record_label`
--
ALTER TABLE `record_label`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`artist_name`) REFERENCES `artist` (`artist_name`);

--
-- Constraints for table `contains`
--
ALTER TABLE `contains`
  ADD CONSTRAINT `contains_ibfk_1` FOREIGN KEY (`artist_name`) REFERENCES `artist` (`artist_name`),
  ADD CONSTRAINT `contains_ibfk_2` FOREIGN KEY (`song_name`) REFERENCES `songs` (`song_name`),
  ADD CONSTRAINT `contains_ibfk_3` FOREIGN KEY (`album_name`) REFERENCES `album` (`album_name`);

--
-- Constraints for table `from_relation`
--
ALTER TABLE `from_relation`
  ADD CONSTRAINT `from_relation_ibfk_1` FOREIGN KEY (`artist_name`) REFERENCES `artist` (`artist_name`),
  ADD CONSTRAINT `from_relation_ibfk_2` FOREIGN KEY (`song_name`) REFERENCES `songs` (`song_name`),
  ADD CONSTRAINT `from_relation_ibfk_3` FOREIGN KEY (`album_name`) REFERENCES `album` (`album_name`);

--
-- Constraints for table `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`artist_name`) REFERENCES `artist` (`artist_name`),
  ADD CONSTRAINT `playlist_ibfk_2` FOREIGN KEY (`song_name`) REFERENCES `songs` (`song_name`),
  ADD CONSTRAINT `playlist_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `playlist_counts`
--
ALTER TABLE `playlist_counts`
  ADD CONSTRAINT `playlist_counts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `signs`
--
ALTER TABLE `signs`
  ADD CONSTRAINT `signs_ibfk_1` FOREIGN KEY (`artist_name`) REFERENCES `artist` (`artist_name`),
  ADD CONSTRAINT `signs_ibfk_2` FOREIGN KEY (`record_label_id`) REFERENCES `record_label` (`id`);

--
-- Constraints for table `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`artist_name`) REFERENCES `artist` (`artist_name`);

--
-- Constraints for table `written`
--
ALTER TABLE `written`
  ADD CONSTRAINT `written_ibfk_1` FOREIGN KEY (`artist_name`) REFERENCES `artist` (`artist_name`),
  ADD CONSTRAINT `written_ibfk_2` FOREIGN KEY (`song_name`) REFERENCES `songs` (`song_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
