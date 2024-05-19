-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: ""
-- Generation Time: May 17, 2024 at 06:51 PM
-- Server version: 8.0.35
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;DB_Database
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lattice`
--

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `contact_info` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `name`, `location`, `contact_info`) VALUES
(1, 'Apollo Hospitals', 'Location 1', 'Contact 1'),
(2, 'Jawaharlal Nehru Medical College and Hospital', 'Location 2', 'Contact 2'),
(3, 'Indira Gandhi Institute of Medical Sciences (IGIMS)', 'Location 3', 'Contact 3'),
(4, 'AIIMS - All India Institute Of Medical Science', 'Location 4', 'Contact 4');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `patient_photo` longblob NOT NULL,
  `psychiatrist_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `address`, `email`, `phone_number`, `password`, `patient_photo`, `psychiatrist_id`) VALUES
(1, 'Patient 1-1', '123 Main St, City, Country', 'patient1-1@example.com', '+911234567890', 'Password1A', '', 1),
(2, 'Patient 1-2', '123 Main St, City, Country', 'patient1-2@example.com', '+911234567891', 'Password1B', '', 1),
(3, 'Patient 1-3', '123 Main St, City, Country', 'patient1-3@example.com', '+911234567892', 'Password1C', '', 1),
(4, 'Patient 1-4', '123 Main St, City, Country', 'patient1-4@example.com', '+911234567893', 'Password1D', '', 1),
(5, 'Patient 1-5', '123 Main St, City, Country', 'patient1-5@example.com', '+911234567894', 'Password1E', '', 1),
(6, 'Patient 1-6', '123 Main St, City, Country', 'patient1-6@example.com', '+911234567895', 'Password1F', '', 1),
(7, 'Patient 1-7', '123 Main St, City, Country', 'patient1-7@example.com', '+911234567896', 'Password1G', '', 1),
(8, 'Patient 1-8', '123 Main St, City, Country', 'patient1-8@example.com', '+911234567897', 'Password1H', '', 1),
(9, 'Patient 1-9', '123 Main St, City, Country', 'patient1-9@example.com', '+911234567898', 'Password1I', '', 1),
(10, 'Patient 1-10', '123 Main St, City, Country', 'patient1-10@example.com', '+911234567899', 'Password1J', '', 1),
(11, 'Patient 2-1', '124 Main St, City, Country', 'patient2-1@example.com', '+911234567900', 'Password2A', '', 2),
(12, 'Patient 2-2', '124 Main St, City, Country', 'patient2-2@example.com', '+911234567901', 'Password2B', '', 2),
(13, 'Patient 2-3', '124 Main St, City, Country', 'patient2-3@example.com', '+911234567902', 'Password2C', '', 2),
(14, 'Patient 2-4', '124 Main St, City, Country', 'patient2-4@example.com', '+911234567903', 'Password2D', '', 2),
(15, 'Patient 2-5', '124 Main St, City, Country', 'patient2-5@example.com', '+911234567904', 'Password2E', '', 2),
(16, 'Patient 2-6', '124 Main St, City, Country', 'patient2-6@example.com', '+911234567905', 'Password2F', '', 2),
(17, 'Patient 2-7', '124 Main St, City, Country', 'patient2-7@example.com', '+911234567906', 'Password2G', '', 2),
(18, 'Patient 2-8', '124 Main St, City, Country', 'patient2-8@example.com', '+911234567907', 'Password2H', '', 2),
(19, 'Patient 2-9', '124 Main St, City, Country', 'patient2-9@example.com', '+911234567908', 'Password2I', '', 2),
(20, 'Patient 2-10', '124 Main St, City, Country', 'patient2-10@example.com', '+911234567909', 'Password2J', '', 2),
(21, 'Patient 3-1', '125 Main St, City, Country', 'patient3-1@example.com', '+911234567910', 'Password3A', '', 3),
(22, 'Patient 3-2', '125 Main St, City, Country', 'patient3-2@example.com', '+911234567911', 'Password3B', '', 3),
(23, 'Patient 3-3', '125 Main St, City, Country', 'patient3-3@example.com', '+911234567912', 'Password3C', '', 3),
(24, 'Patient 3-4', '125 Main St, City, Country', 'patient3-4@example.com', '+911234567913', 'Password3D', '', 3),
(25, 'Patient 3-5', '125 Main St, City, Country', 'patient3-5@example.com', '+911234567914', 'Password3E', '', 3),
(26, 'Patient 3-6', '125 Main St, City, Country', 'patient3-6@example.com', '+911234567915', 'Password3F', '', 3),
(27, 'Patient 3-7', '125 Main St, City, Country', 'patient3-7@example.com', '+911234567916', 'Password3G', '', 3),
(28, 'Patient 3-8', '125 Main St, City, Country', 'patient3-8@example.com', '+911234567917', 'Password3H', '', 3),
(29, 'Patient 3-9', '125 Main St, City, Country', 'patient3-9@example.com', '+911234567918', 'Password3I', '', 3),
(30, 'Patient 3-10', '125 Main St, City, Country', 'patient3-10@example.com', '+911234567919', 'Password3J', '', 3),
(31, 'Patient 4-1', '126 Main St, City, Country', 'patient4-1@example.com', '+911234567920', 'Password4A', '', 4),
(32, 'Patient 4-2', '126 Main St, City, Country', 'patient4-2@example.com', '+911234567921', 'Password4B', '', 4),
(33, 'Patient 4-3', '126 Main St, City, Country', 'patient4-3@example.com', '+911234567922', 'Password4C', '', 4),
(34, 'Patient 4-4', '126 Main St, City, Country', 'patient4-4@example.com', '+911234567923', 'Password4D', '', 4),
(35, 'Patient 4-5', '126 Main St, City, Country', 'patient4-5@example.com', '+911234567924', 'Password4E', '', 4),
(36, 'Patient 4-6', '126 Main St, City, Country', 'patient4-6@example.com', '+911234567925', 'Password4F', '', 4),
(37, 'Patient 4-7', '126 Main St, City, Country', 'patient4-7@example.com', '+911234567926', 'Password4G', '', 4),
(38, 'Patient 4-8', '126 Main St, City, Country', 'patient4-8@example.com', '+911234567927', 'Password4H', '', 4),
(39, 'Patient 4-9', '126 Main St, City, Country', 'patient4-9@example.com', '+911234567928', 'Password4I', '', 4),
(40, 'Patient 4-10', '126 Main St, City, Country', 'patient4-10@example.com', '+911234567929', 'Password4J', '', 4),
(41, 'Patient 5-1', '127 Main St, City, Country', 'patient5-1@example.com', '+911234567930', 'Password5A', '', 5),
(42, 'Patient 5-2', '127 Main St, City, Country', 'patient5-2@example.com', '+911234567931', 'Password5B', '', 5),
(43, 'Patient 5-3', '127 Main St, City, Country', 'patient5-3@example.com', '+911234567932', 'Password5C', '', 5),
(44, 'Patient 5-4', '127 Main St, City, Country', 'patient5-4@example.com', '+911234567933', 'Password5D', '', 5),
(45, 'Patient 5-5', '127 Main St, City, Country', 'patient5-5@example.com', '+911234567934', 'Password5E', '', 5),
(46, 'Patient 5-6', '127 Main St, City, Country', 'patient5-6@example.com', '+911234567935', 'Password5F', '', 5),
(47, 'Patient 5-7', '127 Main St, City, Country', 'patient5-7@example.com', '+911234567936', 'Password5G', '', 5),
(48, 'Patient 5-8', '127 Main St, City, Country', 'patient5-8@example.com', '+911234567937', 'Password5H', '', 5),
(49, 'Patient 5-9', '127 Main St, City, Country', 'patient5-9@example.com', '+911234567938', 'Password5I', '', 5),
(50, 'Patient 5-10', '127 Main St, City, Country', 'patient5-10@example.com', '+911234567939', 'Password5J', '', 5),
(51, 'Patient 6-1', '128 Main St, City, Country', 'patient6-1@example.com', '+911234567940', 'Password6A', '', 6),
(52, 'Patient 6-2', '128 Main St, City, Country', 'patient6-2@example.com', '+911234567941', 'Password6B', '', 6),
(53, 'Patient 6-3', '128 Main St, City, Country', 'patient6-3@example.com', '+911234567942', 'Password6C', '', 6),
(54, 'Patient 6-4', '128 Main St, City, Country', 'patient6-4@example.com', '+911234567943', 'Password6D', '', 6),
(55, 'Patient 6-5', '128 Main St, City, Country', 'patient6-5@example.com', '+911234567944', 'Password6E', '', 6),
(56, 'Patient 6-6', '128 Main St, City, Country', 'patient6-6@example.com', '+911234567945', 'Password6F', '', 6),
(57, 'Patient 6-7', '128 Main St, City, Country', 'patient6-7@example.com', '+911234567946', 'Password6G', '', 6),
(58, 'Patient 6-8', '128 Main St, City, Country', 'patient6-8@example.com', '+911234567947', 'Password6H', '', 6),
(59, 'Patient 6-9', '128 Main St, City, Country', 'patient6-9@example.com', '+911234567948', 'Password6I', '', 6),
(60, 'Patient 6-10', '128 Main St, City, Country', 'patient6-10@example.com', '+911234567949', 'Password6J', '', 6),
(61, 'Patient 7-1', '129 Main St, City, Country', 'patient7-1@example.com', '+911234567950', 'Password7A', '', 7),
(62, 'Patient 7-2', '129 Main St, City, Country', 'patient7-2@example.com', '+911234567951', 'Password7B', '', 7),
(63, 'Patient 7-3', '129 Main St, City, Country', 'patient7-3@example.com', '+911234567952', 'Password7C', '', 7),
(64, 'Patient 7-4', '129 Main St, City, Country', 'patient7-4@example.com', '+911234567953', 'Password7D', '', 7),
(65, 'Patient 7-5', '129 Main St, City, Country', 'patient7-5@example.com', '+911234567954', 'Password7E', '', 7),
(66, 'Patient 7-6', '129 Main St, City, Country', 'patient7-6@example.com', '+911234567955', 'Password7F', '', 7),
(67, 'Patient 7-7', '129 Main St, City, Country', 'patient7-7@example.com', '+911234567956', 'Password7G', '', 7),
(68, 'Patient 7-8', '129 Main St, City, Country', 'patient7-8@example.com', '+911234567957', 'Password7H', '', 7),
(69, 'Patient 7-9', '129 Main St, City, Country', 'patient7-9@example.com', '+911234567958', 'Password7I', '', 7),
(70, 'Patient 7-10', '129 Main St, City, Country', 'patient7-10@example.com', '+911234567959', 'Password7J', '', 7),
(71, 'Patient 8-1', '130 Main St, City, Country', 'patient8-1@example.com', '+911234567960', 'Password8A', '', 8),
(72, 'Patient 8-2', '130 Main St, City, Country', 'patient8-2@example.com', '+911234567961', 'Password8B', '', 8),
(73, 'Patient 8-3', '130 Main St, City, Country', 'patient8-3@example.com', '+911234567962', 'Password8C', '', 8),
(74, 'Patient 8-4', '130 Main St, City, Country', 'patient8-4@example.com', '+911234567963', 'Password8D', '', 8),
(75, 'Patient 8-5', '130 Main St, City, Country', 'patient8-5@example.com', '+911234567964', 'Password8E', '', 8),
(76, 'Patient 8-6', '130 Main St, City, Country', 'patient8-6@example.com', '+911234567965', 'Password8F', '', 8),
(77, 'Patient 8-7', '130 Main St, City, Country', 'patient8-7@example.com', '+911234567966', 'Password8G', '', 8),
(78, 'Patient 8-8', '130 Main St, City, Country', 'patient8-8@example.com', '+911234567967', 'Password8H', '', 8),
(79, 'Patient 8-9', '130 Main St, City, Country', 'patient8-9@example.com', '+911234567968', 'Password8I', '', 8),
(80, 'Patient 8-10', '130 Main St, City, Country', 'patient8-10@example.com', '+911234567969', 'Password8J', '', 8),
(81, 'Patient 9-1', '131 Main St, City, Country', 'patient9-1@example.com', '+911234567970', 'Password9A', '', 9),
(82, 'Patient 9-2', '131 Main St, City, Country', 'patient9-2@example.com', '+911234567971', 'Password9B', '', 9),
(83, 'Patient 9-3', '131 Main St, City, Country', 'patient9-3@example.com', '+911234567972', 'Password9C', '', 9),
(84, 'Patient 9-4', '131 Main St, City, Country', 'patient9-4@example.com', '+911234567973', 'Password9D', '', 9),
(85, 'Patient 9-5', '131 Main St, City, Country', 'patient9-5@example.com', '+911234567974', 'Password9E', '', 9),
(86, 'Patient 9-6', '131 Main St, City, Country', 'patient9-6@example.com', '+911234567975', 'Password9F', '', 9),
(87, 'Patient 9-7', '131 Main St, City, Country', 'patient9-7@example.com', '+911234567976', 'Password9G', '', 9),
(88, 'Patient 9-8', '131 Main St, City, Country', 'patient9-8@example.com', '+911234567977', 'Password9H', '', 9),
(89, 'Patient 9-9', '131 Main St, City, Country', 'patient9-9@example.com', '+911234567978', 'Password9I', '', 9),
(90, 'Patient 9-10', '131 Main St, City, Country', 'patient9-10@example.com', '+911234567979', 'Password9J', '', 9),
(91, 'Patient 10-1', '132 Main St, City, Country', 'patient10-1@example.com', '+911234567980', 'Password10A', '', 10),
(92, 'Patient 10-2', '132 Main St, City, Country', 'patient10-2@example.com', '+911234567981', 'Password10B', '', 10),
(93, 'Patient 10-3', '132 Main St, City, Country', 'patient10-3@example.com', '+911234567982', 'Password10C', '', 10),
(94, 'Patient 10-4', '132 Main St, City, Country', 'patient10-4@example.com', '+911234567983', 'Password10D', '', 10),
(95, 'Patient 10-5', '132 Main St, City, Country', 'patient10-5@example.com', '+911234567984', 'Password10E', '', 10),
(96, 'Patient 10-6', '132 Main St, City, Country', 'patient10-6@example.com', '+911234567985', 'Password10F', '', 10),
(97, 'Patient 10-7', '132 Main St, City, Country', 'patient10-7@example.com', '+911234567986', 'Password10G', '', 10),
(98, 'Patient 10-8', '132 Main St, City, Country', 'patient10-8@example.com', '+911234567987', 'Password10H', '', 10),
(99, 'Patient 10-9', '132 Main St, City, Country', 'patient10-9@example.com', '+911234567988', 'Password10I', '', 10),
(100, 'Patient 10-10', '132 Main St, City, Country', 'patient10-10@example.com', '+911234567989', 'Password10J', '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `psychiatrists`
--

CREATE TABLE `psychiatrists` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `hospital_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `psychiatrists`
--

INSERT INTO `psychiatrists` (`id`, `name`, `email`, `hospital_id`) VALUES
(1, 'Psychiatrist 1', 'psych1.apollo@example.com', 1),
(2, 'Psychiatrist 2', 'psych2.apollo@example.com', 1),
(3, 'Psychiatrist 3', 'psych3.apollo@example.com', 1),
(4, 'Psychiatrist 4', 'psych4.apollo@example.com', 1),
(5, 'Psychiatrist 5', 'psych5.apollo@example.com', 1),
(6, 'Psychiatrist 6', 'psych6.jnmch@example.com', 2),
(7, 'Psychiatrist 7', 'psych7.jnmch@example.com', 2),
(8, 'Psychiatrist 8', 'psych8.jnmch@example.com', 2),
(9, 'Psychiatrist 9', 'psych9.jnmch@example.com', 2),
(10, 'Psychiatrist 10', 'psych10.jnmch@example.com', 2),
(11, 'Psychiatrist 11', 'psych11.igims@example.com', 3),
(12, 'Psychiatrist 12', 'psych12.igims@example.com', 3),
(13, 'Psychiatrist 13', 'psych13.igims@example.com', 3),
(14, 'Psychiatrist 14', 'psych14.igims@example.com', 3),
(15, 'Psychiatrist 15', 'psych15.igims@example.com', 3),
(16, 'Psychiatrist 16', 'psych16.aiims@example.com', 4),
(17, 'Psychiatrist 17', 'psych17.aiims@example.com', 4),
(18, 'Psychiatrist 18', 'psych18.aiims@example.com', 4),
(19, 'Psychiatrist 19', 'psych19.aiims@example.com', 4),
(20, 'Psychiatrist 20', 'psych20.aiims@example.com', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `psychiatrist_id` (`psychiatrist_id`);

--
-- Indexes for table `psychiatrists`
--
ALTER TABLE `psychiatrists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `hospital_id` (`hospital_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `psychiatrists`
--
ALTER TABLE `psychiatrists`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`psychiatrist_id`) REFERENCES `psychiatrists` (`id`);

--
-- Constraints for table `psychiatrists`
--
ALTER TABLE `psychiatrists`
  ADD CONSTRAINT `psychiatrists_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
