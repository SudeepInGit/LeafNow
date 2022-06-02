-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2022 at 11:56 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leafnow`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogdata`
--

CREATE TABLE `blogdata` (
  `blogId` int(10) NOT NULL,
  `blogUser` varchar(256) NOT NULL,
  `blogTitle` varchar(256) NOT NULL,
  `blogContent` longtext NOT NULL,
  `blogTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogdata`
--

INSERT INTO `blogdata` (`blogId`, `blogUser`, `blogTitle`, `blogContent`, `blogTime`, `likes`) VALUES
(20, 'shady', 'Restoring the Balance', '<p>Today, we&rsquo;re asking you to put yourself in a tree&rsquo;s shoes&ndash;or roots. Planting day is so exciting for volunteers. We get to hang out with our neighbors, get our hands dirty, and feel good about getting trees in the ground. But planting day is the most stressful day of a tree&rsquo;s life. When we plant a tree, we have to cut some of its roots. Container-grown trees need to have their roots cut to prevent them from circling in on themselves, even after they&rsquo;re put in the ground. Ball and burlap trees are grown in the ground, but they also get their roots cut when they are put into that ball to be moved to their final location. Trees are all about balance. Balance between canopy, where the tree can feed on sunlight and perform photosynthesis, and roots, which pull nutrients from the soil and provide the tree its needed strength and stability. For a newly planted tree, this time of year is all about restoring that balance and getting the roots and the shoots established.</p>\r\n', '2022-06-02 20:11:11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blogfeedback`
--

CREATE TABLE `blogfeedback` (
  `blogId` int(10) NOT NULL,
  `comment` varchar(256) NOT NULL,
  `commentUser` varchar(256) NOT NULL,
  `commentPic` varchar(256) NOT NULL DEFAULT 'profile0.png',
  `commentTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogfeedback`
--

INSERT INTO `blogfeedback` (`blogId`, `comment`, `commentUser`, `commentPic`, `commentTime`) VALUES
(20, 'Good Initiative', 'zain', 'profile0.png', '2022-06-02 20:32:08'),
(20, 'Perfectly Balanced as all things should be', 'aston', 'profile0.png', '2022-06-02 21:53:21');

-- --------------------------------------------------------

--
-- Table structure for table `likedata`
--

CREATE TABLE `likedata` (
  `blogId` int(10) NOT NULL,
  `blogUserId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mycart`
--

CREATE TABLE `mycart` (
  `bid` int(10) NOT NULL,
  `pid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mycart`
--

INSERT INTO `mycart` (`bid`, `pid`) VALUES
(3, 27),
(3, 30);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `uid` int(255) NOT NULL,
  `pid` int(255) NOT NULL,
  `product` varchar(255) NOT NULL,
  `pcat` varchar(255) NOT NULL,
  `pinfo` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `pimage` varchar(255) NOT NULL DEFAULT 'blank.png',
  `picStatus` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`uid`, `pid`, `product`, `pcat`, `pinfo`, `price`, `pimage`, `picStatus`) VALUES
(5, 31, 'Mustard', 'seeds', '<p>Mustard contains antioxidants and other beneficial plant compounds thought to&nbsp;<strong>help protect your body against damage and disease</strong></p>\r\n', 250, 'Mustard5.png', 1),
(5, 32, 'Sunflower', 'seeds', '<p>sunflower seeds <strong>lower rates of cardiovascular disease, high cholesterol, and high blood pressure</strong></p>\r\n', 1200, 'Sunflower5.png', 1),
(5, 33, 'Monstera', 'plants', '<p>Monstera can&nbsp;<strong>purify the air and is useful in humidifying air conditions</strong>.</p>\r\n', 650, 'Monstera5.png', 1),
(5, 34, 'Pothos', 'plants', '<p>Pothos&nbsp;p<strong>urifies Indoor air and</strong>&nbsp;very apt at removing VOCs and toxins from the surrounding air.</p>\r\n', 800, 'Pothos5.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `pid` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rating` int(10) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `servicedata`
--

CREATE TABLE `servicedata` (
  `serviceId` int(10) NOT NULL,
  `serviceUser` varchar(256) NOT NULL,
  `serviceTitle` varchar(256) NOT NULL,
  `serviceContent` longtext NOT NULL,
  `serviceTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servicedata`
--

INSERT INTO `servicedata` (`serviceId`, `serviceUser`, `serviceTitle`, `serviceContent`, `serviceTime`, `likes`) VALUES
(0, 'shady', 'Equipment Services', '<p><strong>Equipment repair and parts</strong>: Fixes broken equipment, or sources parts for self-service.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Equipment sourcing and sales</strong>: Provides farmers access to essential machinery.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Equipment rental</strong>: Leases equipment for predetermined jobs or intervals.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Equipment shares</strong>: Splits ownership of common, but less-used equipment amongst a cooperative.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Equipment contractors</strong>: Machinery owners perform tasks on a single job basis.</p>\r\n', '2022-06-02 20:11:41', 0);

-- --------------------------------------------------------

--
-- Table structure for table `servicefeedback`
--

CREATE TABLE `servicefeedback` (
  `serviceId` int(10) NOT NULL,
  `comment` varchar(256) NOT NULL,
  `servicetUser` varchar(256) NOT NULL,
  `servicePic` varchar(256) NOT NULL DEFAULT 'profile0.png',
  `serviceTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servicefeedback`
--

INSERT INTO `servicefeedback` (`serviceId`, `comment`, `servicetUser`, `servicePic`, `serviceTime`) VALUES
(0, 'Amazing!', 'zain', 'profile0.png', '2022-06-02 21:21:53');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `tid` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `addr` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tid`, `bid`, `pid`, `name`, `city`, `mobile`, `email`, `pincode`, `addr`) VALUES
(2, 1, 33, 'zain', 'bengaluru', '3216549870', 'zain@malik.com', '560068', 'Bengaluru, karnataka');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(255) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `uusername` varchar(255) NOT NULL,
  `upassword` varchar(255) NOT NULL,
  `uhash` varchar(255) NOT NULL,
  `uemail` varchar(255) NOT NULL,
  `umobile` varchar(255) NOT NULL,
  `uaddress` text NOT NULL,
  `uactive` int(255) NOT NULL DEFAULT 0,
  `urating` int(11) NOT NULL DEFAULT 0,
  `picExt` varchar(255) NOT NULL DEFAULT 'png',
  `picStatus` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `uusername`, `upassword`, `uhash`, `uemail`, `umobile`, `uaddress`, `uactive`, `urating`, `picExt`, `picStatus`) VALUES
(1, 'zain', 'zain', '$2y$10$F1nR5kYbiGez8L63fUKuz.YhXMBjuJTA6xc/ysHCdXG3VHehqVf6O', 'd7a728a67d909e714c0774e22cb806f2', 'zain@malik.com', '3216549870', 'Bengaluru, karnataka', 0, 0, 'png', 0),
(6, 'Suhaas D', 'shady', '$2y$10$KJeD0z6iWB2Sn.f7vqUXIuuankItVpiHee/GzIZY1ix2dcBsMnhgy', 'e5f6ad6ce374177eef023bf5d0c018b6', 'suhaasdmurthy@gmail.com', '9738344796', 'begur', 0, 0, 'png', 0),
(7, 'Sudeep M', 'aston', '$2y$10$WsH2CStM7M4DsYavYPuM4OlHm6zDmv5oAWbdwg80jHidDd/3P7uam', 'e5f6ad6ce374177eef023bf5d0c018b6', 'astonishingsudeep@outlook.com', '8151033355', 'Bengaluru, karnataka', 0, 0, 'png', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogdata`
--
ALTER TABLE `blogdata`
  ADD PRIMARY KEY (`blogId`);

--
-- Indexes for table `likedata`
--
ALTER TABLE `likedata`
  ADD KEY `blogId` (`blogId`),
  ADD KEY `blogUserId` (`blogUserId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `uid` (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogdata`
--
ALTER TABLE `blogdata`
  MODIFY `blogId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `tid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `likedata`
--
ALTER TABLE `likedata`
  ADD CONSTRAINT `likedata_ibfk_1` FOREIGN KEY (`blogId`) REFERENCES `blogdata` (`blogId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
