-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2019 at 09:45 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trailtweets`
--

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `TweetID` int(25) NOT NULL,
  `account_name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `tweet_text` varchar(255) DEFAULT NULL,
  `image_link` varchar(255) DEFAULT NULL,
  `likes` int(10) DEFAULT '0',
  `retweets` int(10) DEFAULT '0',
  `date` varchar(20) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `tag` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`TweetID`, `account_name`, `username`, `tweet_text`, `image_link`, `likes`, `retweets`, `date`, `location`, `tag`) VALUES
(1, '@tony551', 'Best Hiker!', 'This place is amazing', 'apptrail.JPG', 200, 23, 'April 15, 2017', 'Virginia', 'nature'),
(2, '@Hiker994', 'Hike all Day', 'Georgias views are the best there are', 'georgia2.jpg', 200, 100, 'April 17, 2017', 'Virginia', 'nature'),
(3, '@tony551', 'Best Hiker!', 'This place is amazing', 'apptrail.JPG', 55, 23, 'April 15, 2017', 'Virginia', 'weather'),
(4, '@Hiker994', 'Hike all Day', 'Georgias views are the best there are', 'georgia2.jpg', 200, 100, 'April 17, 2017', 'Virginia', 'packing'),
(5, '@tony551', 'Best Hiker!', 'This place is amazing', 'apptrail.JPG', 55, 23, 'April 15, 2017', 'Virginia', 'firstaid'),
(6, '@Hiker994', 'Hike all Day', 'Georgias views are the best there are', 'georgia2.jpg', 200, 100, 'April 17, 2017', 'Georgia', 'weather'),
(7, '@tony551', 'Best Hiker!', 'This place is amazing', 'apptrail.JPG', 55, 23, 'April 15, 2017', 'Virginia', 'planning'),
(8, '@Hiker994', 'Hike all Day', 'Georgias views are the best there are', 'georgia2.jpg', 200, 100, 'April 17, 2017', 'New York', 'packing'),
(9, '@tony551', 'Best Hiker!', 'This place is amazing', 'georgia3.jpg', 55, 23, 'April 15, 2017', 'Virginia', 'wildlife'),
(10, '@Hiker994', 'Hike all Day', 'Georgias views are the best there are', 'georgia2.jpg', 200, 100, 'April 17, 2017', 'Virginia', 'packing'),
(11, '@tony551', 'Best Hiker!', 'This place is amazing', 'georgia3.jpg', 55, 23, 'April 15, 2017', 'Virginia', 'wildlife'),
(12, '@Appalachiantrail', 'App Trail.', 'Georgias views are the best there are', 'tinkerscliff.JPG', 25, 673, 'April 17, 2017', 'West Virginia', 'wildlife'),
(13, '@tony551', 'Best Hiker!', 'This place is amazing', 'mcafeeknob.JPG', 123, 444, 'April 15, 2017', 'Virginia', 'planning'),
(14, '@VictorHayes', 'Victor', 'Hike of the week!', 'bigelow-mountains.jpg', 10, 2, 'April 17, 2017', 'New Hampshire', 'family'),
(15, '@TonyMaloney', 'Owl', 'Found a great buddy', 'tm-img-14-tn.jpg', 10, 2, 'April 23, 2017', 'Vermont', 'wildlife'),
(16, '@HarryTerry', 'Mystery Bird', 'Anyone know what bord this is?', 'tm-img-12-tn.jpg', 75, 14, 'April 7, 2017', 'Georgia', 'wildlife'),
(17, '@HarryTerry', 'Keffer Oak', 'I love this tree!', 'kefferoak.jpg', 85, 34, 'March 7, 2017', 'Virginia', 'wildlife'),
(18, '@HarryTerry', 'McAfee Knob', 'Finally made it!', 'mcafeeknob.jpg', 354, 175, 'May 19, 2017', 'Virginia', 'nature'),
(19, '@DobertRowneySr', 'Fox', 'How cozy I feel right now', 'tm-img-16-tn.jpg', 270, 86, 'February, 2017', 'Virginia', 'weather'),
(20, '@KreeLarson', 'White Fox', 'This is how cold it is', 'tm-img-07-tn.jpg', 115, 61, 'February, 2017', 'Maine', 'weather');
(20, '@AvocadoMost', 'Yearly Hike', 'Love these guys', 'georgia1.jpg', 43, 5, 'June 10, 2017', 'Maryland', 'family');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`firstname`, `lastname`, `username`, `password`) VALUES
('Anthony', 'Medovar', 'tony', '123'),
('Anthony', 'Medovar', 'tony', '123'),
('admin', 'admin', 'admin', 'admin'),
('admin', 'admin', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`TweetID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `TweetID` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
