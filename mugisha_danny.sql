-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2024 at 09:41 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mugisha_danny`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `name`) VALUES
(1, '	Jared Diamond'),
(2, 'Andrew Hunt'),
(3, 'Brian Greene'),
(4, 'Charles Darwin'),
(5, 'Donald Knuth'),
(6, 'Douglas Hofstadter'),
(7, 'Edward Gibbon'),
(8, 'Erich Gamma'),
(9, 'G. H. Hardy'),
(10, 'George Polya'),
(11, 'Harm J. de Blij'),
(12, 'James Watson'),
(13, 'Jerry P. King'),
(14, 'Martin Fowler'),
(15, 'Peter Frankopan'),
(16, 'Philip J. Davis'),
(17, 'Rand McNally'),
(18, 'Richard Dawkins'),
(19, 'Robert Cecil Martin'),
(20, 'Stephen Hawking'),
(21, 'Steve McConnell'),
(22, 'Thomas S. Kuhn'),
(23, 'Timothy Gowers '),
(24, 'Yuval Noah Harari');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bookid` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `publisher` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `isbn` int(50) DEFAULT NULL,
  `edition` int(10) DEFAULT NULL,
  `shelfNo` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bookid`, `title`, `author`, `subject`, `publisher`, `category`, `isbn`, `edition`, `shelfNo`) VALUES
('11727238', 'Realms, Regions, and Concepts', 'Harm J. de Blij', 'Geography', 'Wiley', 'Physical Geography', 329840, 2019, 4),
('12116356', 'Guns, Germs, and Steel	', '	Jared Diamond', 'Geography', 'W. W. Norton & Company', 'Geography, History', 261397, 1999, 4),
('12268461', 'The Elegant Universe', 'Brian Greene', 'Science', 'W. W. Norton & Company', 'Theoretical Physics', 971365, 2000, 2),
('15516529', 'The Double Helix', 'James Watson', 'Science', 'W. W. Norton & Company', 'Molecular Biology', 321568, 2011, 2),
('24197225', 'The Silk Roads: A New History of the World', 'Peter Frankopan', 'History', 'Vintage', 'World History', 108529, 2016, 5),
('27584951', 'The Structure of Scientific Revolutions', 'Thomas S. Kuhn', 'Science', 'University of Chicago Press', 'Philosophy of Science', 794613, 2012, 2),
('28462781', 'Refactoring: Improving the Design of Existing Code', 'Martin Fowler', 'Coding', 'Software Development', 'Addison-Wesley Professional', 971355, 2018, 1),
('29395256', 'The Atlas of World Geography', 'Rand McNally', 'Geography', 'Rand McNally', '	World Geography', 793462, 2021, 4),
('31322912', 'The Princeton Companion to Mathematics', 'Timothy Gowers ', 'Mathematics', 'Princeton University Press', 'Mathematics', 324589, 2008, 3),
('31436261', 'How to Solve It', 'George Polya', 'Mathematics', 'Princeton University Press', 'Problem-Solving', 876512, 2004, 3),
('34735458', 'Clean Code', 'Robert Cecil Martin', 'Coding', 'Prentice Hall', 'Software Design', 321456, 2008, 1),
('35749510', 'The Art of Computer Programming', 'Donald Knuth', 'Coding', 'Addison-Wesley Professional', 'Computer Science', 913725, 2011, 1),
('37739767', 'The Decline and Fall of the Roman Empire', 'Edward Gibbon', 'History', 'Penguin Classics', 'Ancient History', 257913, 2003, 5),
('38155864', 'The Origin of Species', 'Charles Darwin', 'Science', 'Penguin Classics', 'Evolutionary Biology', 463152, 2009, 2),
('44894347', 'The Selfish Gene', 'Richard Dawkins', 'Science', 'Oxford University Press', 'Evolutionary Biology', 413987, 2016, 2),
('45745747', 'The Art of Mathematics', 'Jerry P. King', 'Mathematics', 'No Starch Press', 'Mathematics', 984532, 2020, 3),
('49245283', 'Code Complete', 'Steve McConnell', 'Coding', 'Microsoft Press', 'Software Development', 136845, 2004, 1),
('49534361', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'History', 'Harper', 'World History', 963852, 2018, 5),
('49895386', 'A Course in Pure Mathematics', 'G. H. Hardy', 'Mathematics', 'Cambridge University Press', 'Mathematics', 654532, 2019, 3),
('52442195', 'The Mathematical Experience', 'Philip J. Davis', 'Mathematics', 'Birkhäuser', 'Mathematics', 134697, 2012, 3),
('55951954', 'Gödel, Escher, Bach: An Eternal Golden Braid', 'Douglas Hofstadter', 'Mathematics', 'Basic Books', 'Mathematics', 127832, 1999, 3),
('56445497', 'A Brief History of Time', 'Stephen Hawking', 'Science', 'Bantam Books', 'Astrophysics', 758945, 1998, 2),
('59419613', 'The Pragmatic Programmer', 'Andrew Hunt', 'Coding', 'Addison-Wesley Professional', 'Software Development', 179452, 2019, 1),
('63982413', 'Design Patterns: Elements of Reusable Object-Oriented Software', 'Erich Gamma', 'Coding', 'Addison-Wesley Professional', 'Software Design', 418637, 1994, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Physical Geography'),
(2, 'Geography, History'),
(3, 'Theoretical Physics'),
(4, 'Molecular Biology'),
(5, 'World History'),
(6, 'Philosophy of Science'),
(7, 'Addison-Wesley Professional'),
(8, '	World Geography'),
(9, 'Mathematics'),
(10, 'Problem-Solving'),
(11, 'Software Design'),
(12, 'Computer Science'),
(13, 'Ancient History'),
(14, 'Evolutionary Biology'),
(15, 'Software Development'),
(16, 'Astrophysics');

-- --------------------------------------------------------

--
-- Table structure for table `issuebooks`
--

CREATE TABLE `issuebooks` (
  `username` varchar(50) DEFAULT NULL,
  `bookId` int(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `issueDate` varchar(20) DEFAULT NULL,
  `dueDate` varchar(20) DEFAULT NULL,
  `returnStatus` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `issuebooks`
--

INSERT INTO `issuebooks` (`username`, `bookId`, `title`, `author`, `issueDate`, `dueDate`, `returnStatus`) VALUES
('ramesh', 12116356, 'Guns, Germs, and Steel	', '	Jared Diamond', '06-04-2023', '14-04-2023', 'Pending'),
('ankit', 15516529, 'The Double Helix', 'James Watson', '01-04-2023', '07-04-2023', 'Pending'),
('geeta', 25938372, 'Coduu', 'Robert Cecil Martin', '31-03-2023', '10-04-2023', 'Submitted'),
('yash', 27584951, 'The Structure of Scientific Revolutions', 'Thomas S. Kuhn', '31-03-2023', '10-04-2023', 'Pending'),
('ramesh', 29395256, 'The Atlas of World Geography', 'Rand McNally', '06-04-2023', '07-04-2023', 'Submitted'),
('shiv', 31436261, 'How to Solve It', 'George Polya', '04-04-2023', '14-04-2023', 'Submitted'),
('shanu', 34735458, 'Clean Code', 'Robert Cecil Martin', '31-03-2023', '10-04-2023', 'Submitted'),
('neeraj', 63982413, 'Design Patterns: Elements of Reusable Object-Oriented Software', 'Erich Gamma', '02-04-2023', '07-04-2023', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(10) NOT NULL,
  `notice` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `notice`) VALUES
(1, 'every student must submit book on date');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`id`, `name`) VALUES
(1, 'Addison-Wesley Professional'),
(2, 'Bantam Books'),
(3, 'Basic Books'),
(4, 'Birkhäuser'),
(5, 'Cambridge University Press'),
(6, 'Harper'),
(7, 'Microsoft Press'),
(8, 'No Starch Press'),
(9, 'Oxford University Press'),
(10, 'Penguin Classics'),
(11, 'Prentice Hall'),
(12, 'Princeton University Press'),
(13, 'Rand McNally'),
(14, 'Software Development'),
(15, 'University of Chicago Press'),
(16, 'Vintage'),
(17, 'W. W. Norton & Company');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `usertype` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `mobile`, `email`, `username`, `password`, `usertype`) VALUES
('122631', 'mugisha emanuel', '3214658790', 'mugisha@gmail.com', 'mugisha', '1234', 'Faculty'),
('123448', 'admin', '9694313584', 'admin@gmail.com', 'admin', 'admin', 'Admin'),
('126587', 'danny', '9638527410', 'danny@gmail.com', 'danny', '1234', 'Student'),
('139746', 'kamana', '3235484610', 'danny@gmail.com', 'kamana', '1234', 'Student'),
('194786', 'ce', '76543', 'ce@gmail.com', 'ce', '1234', 'Student'),
('263542', 'mugisha', '56789', 'mugisha@gmail.com', 'admin', '1234', 'Admin'),
('324598', 'Shiv', '6549873120', 'shiv@gmail.com', 'shiv', '465', 'Student'),
('416336', 'cedrox', '0745988', 'cedro@gmail.com', 'cedrox', '12345', 'Faculty'),
('462879', 'NYash', '7410852963', 'yash@gmail.com', 'yash', '951', 'Student'),
('714993', 'kabanda', '079875643120', 'rameshchoudhary@gmail.com', 'ramesh', '456', 'Student'),
('846813', 'tresor', '65432234', 'tresor@gmail.com', 'alain', '12345', 'Faculty'),
('886429', 'ced', '09876', 'ced@gmail.com', 'ced', '1234', 'Student'),
('987240', 'abhishek jain', '9351463508', 'abhishek.roadaheadtech@gmail.com', 'ak123', 'ak123', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`) VALUES
(1, 'Coding'),
(2, 'Geography'),
(3, 'History'),
(4, 'Mathematics'),
(5, 'Science');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issuebooks`
--
ALTER TABLE `issuebooks`
  ADD PRIMARY KEY (`bookId`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`,`username`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
