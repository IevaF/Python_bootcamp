-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2023 at 07:19 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `19.06.2023_task`
--

-- --------------------------------------------------------

--
-- Table structure for table `weatherconditions`
--

CREATE TABLE `weatherconditions` (
  `id` int(11) NOT NULL,
  `place_id` varchar(255) DEFAULT NULL,
  `latitude` decimal(10,6) DEFAULT NULL,
  `longitude` decimal(10,6) DEFAULT NULL,
  `timezone` varchar(100) DEFAULT NULL,
  `units` varchar(10) DEFAULT NULL,
  `current_icon` varchar(100) DEFAULT NULL,
  `icon_num` int(11) DEFAULT NULL,
  `summary` varchar(100) DEFAULT NULL,
  `temperature` decimal(10,2) DEFAULT NULL,
  `feels_like` decimal(10,2) DEFAULT NULL,
  `wind_chill` decimal(10,2) DEFAULT NULL,
  `dew_point` decimal(10,2) DEFAULT NULL,
  `wind_speed` decimal(10,2) DEFAULT NULL,
  `wind_gusts` decimal(10,2) DEFAULT NULL,
  `wind_angle` int(11) DEFAULT NULL,
  `wind_direction` varchar(10) DEFAULT NULL,
  `precipitation_total` decimal(10,2) DEFAULT NULL,
  `precipitation_type` varchar(20) DEFAULT NULL,
  `cloud_cover` int(11) DEFAULT NULL,
  `ozone` decimal(10,2) DEFAULT NULL,
  `pressure` decimal(10,2) DEFAULT NULL,
  `uv_index` int(11) DEFAULT NULL,
  `humidity` int(11) DEFAULT NULL,
  `visibility` int(11) DEFAULT NULL,
  `elevation` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `weatherconditions`
--

INSERT INTO `weatherconditions` (`id`, `place_id`, `latitude`, `longitude`, `timezone`, `units`, `current_icon`, `icon_num`, `summary`, `temperature`, `feels_like`, `wind_chill`, `dew_point`, `wind_speed`, `wind_gusts`, `wind_angle`, `wind_direction`, `precipitation_total`, `precipitation_type`, `cloud_cover`, `ozone`, `pressure`, `uv_index`, `humidity`, `visibility`, `elevation`) VALUES
(31, NULL, 56.946000, 24.105890, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(32, NULL, 41.715610, 83.839390, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(33, NULL, 42.173080, 13.990150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(34, NULL, 26.655350, 85.442030, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(35, NULL, 14.194100, 9.575000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(36, NULL, 13.793100, 9.448200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(37, NULL, 12.987450, 9.801200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(38, NULL, 11.081010, 4.849590, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(39, NULL, 7.410500, 8.709140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(40, NULL, 56.977780, 24.121670, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(41, NULL, 56.946000, 24.105890, 'Europe/Riga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(42, NULL, 41.715610, 83.839390, 'America/New_York', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(43, NULL, 42.173080, 13.990150, 'Europe/Rome', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(44, NULL, 26.655350, 85.442030, 'Asia/Kolkata', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(45, NULL, 14.194100, 9.575000, 'Africa/Niamey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(46, NULL, 13.793100, 9.448200, 'Africa/Niamey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(47, NULL, 12.987450, 9.801200, 'Africa/Niamey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(48, NULL, 11.081010, 4.849590, 'Africa/Lagos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(49, NULL, 7.410500, 8.709140, 'Africa/Lagos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(50, NULL, 56.977780, 24.121670, 'Europe/Riga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `weatherplaces`
--

CREATE TABLE `weatherplaces` (
  `place_id` varchar(255) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `adm_area1` varchar(20) DEFAULT NULL,
  `adm_area2` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `lat` varchar(20) DEFAULT NULL,
  `lon` varchar(20) DEFAULT NULL,
  `timezone` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `weatherplaces`
--

INSERT INTO `weatherplaces` (`place_id`, `name`, `adm_area1`, `adm_area2`, `country`, `lat`, `lon`, `timezone`, `type`) VALUES
('at-tallin-359707', 'At Tallīn', 'Sharqia Province', NULL, 'Egypt', '30.558N', '31.36012E', 'Africa/Cairo', 'settlement'),
('berkey-5147123', 'Berkey', 'Ohio', 'Lucas', 'United States of Ame', '41.71561N', '83.83939W', 'America/New_York', 'settlement'),
('city-of-london', 'City of London', 'England', 'Greater London', 'United Kingdom', '51.51279N', '0.09184W', 'Europe/London', 'settlement'),
('city-of-london-2643744', 'City of London', 'England', 'Greater London', 'United Kingdom', '51.51334N', '0.08901W', 'Europe/London', 'administrative_area'),
('fishermans-wharf-6930485', 'Fishermans Wharf', 'California', 'Contra Costa', 'United States of Ame', '37.80761N', '122.41714W', 'America/Los_Angeles', 'settlement'),
('fishermans-wharf-marina', 'Fisherman\'s Wharf Ma', 'Virginia', 'Virginia Beach', 'United States of Ame', '36.83141N', '75.97632W', 'America/New_York', 'harbor'),
('fishermans-wharf-mobile-home-park-7190590', 'Fishermans Wharf Mob', 'Florida', 'Lake', 'United States of Ame', '28.8881N', '81.8688W', 'America/New_York', 'settlement'),
('fishermans-wharf-park', 'Fisherman\'s Wharf Pa', 'British Columbia', 'Capital Regional Dis', 'Canada', '48.42147N', '123.38267W', 'America/Vancouver', 'bay'),
('fishermans-wharf-park-4238714', 'Fishermans Wharf Par', 'Illinois', 'Macon', 'United States of Ame', '39.82309N', '88.95591W', 'America/Chicago', 'park'),
('iru-863519', 'Iru', 'Harju', 'Jõelähtme Parish', 'Republic of Estonia', '59.45497N', '24.91471E', 'Europe/Tallinn', 'settlement'),
('london', 'London', 'England', 'Greater London', 'United Kingdom', '51.50853N', '0.12574W', 'Europe/London', 'settlement'),
('london-4119617', 'London', 'Arkansas', 'Pope', 'United States of Ame', '35.32897N', '93.25296W', 'America/Chicago', 'settlement'),
('london-4298960', 'London', 'Kentucky', 'Laurel', 'United States of Ame', '37.12898N', '84.08326W', 'America/New_York', 'settlement'),
('london-4517009', 'London', 'Ohio', 'Madison', 'United States of Ame', '39.88645N', '83.44825W', 'America/New_York', 'settlement'),
('london-4707414', 'London', 'Texas', 'Kimble', 'United States of Ame', '30.67685N', '99.57645W', 'America/Chicago', 'settlement'),
('london-5367815', 'London', 'California', 'Tulare', 'United States of Ame', '36.47606N', '119.44318W', 'America/Los_Angeles', 'settlement'),
('london-6058560', 'London', 'Ontario', NULL, 'Canada', '42.98339N', '81.23304W', 'America/Toronto', 'settlement'),
('london-village', 'London Village', 'Line Islands', 'Kiritimati', 'Kiribati', '1.98487N', '157.47502W', 'Pacific/Kiritimati', 'settlement'),
('muuga-sadam', 'Muuga-Port Of Tallin', 'Harju', NULL, 'Republic of Estonia', '59.49764N', '24.94632E', 'Europe/Tallinn', 'harbor'),
('paris', 'Paris', 'Île-de-France Region', 'Paris', 'France', '48.85341N', '2.3488E', 'Europe/Paris', 'settlement'),
('paris-2968815', 'Paris', 'Île-de-France Region', 'Paris', 'France', '48.8534N', '2.3486E', 'Europe/Paris', 'administrative_area'),
('paris-2988506', 'Paris', 'Île-de-France Region', 'Paris', 'France', '48.85339N', '2.34864E', 'Europe/Paris', 'administrative_area'),
('paris-4246659', 'Paris', 'Illinois', 'Edgar', 'United States of Ame', '39.61115N', '87.69614W', 'America/Chicago', 'settlement'),
('paris-4303602', 'Paris', 'Kentucky', 'Bourbon', 'United States of Ame', '38.2098N', '84.25299W', 'America/New_York', 'settlement'),
('paris-4647963', 'Paris', 'Tennessee', 'Henry', 'United States of Ame', '36.302N', '88.32671W', 'America/Chicago', 'settlement'),
('paris-4717560', 'Paris', 'Texas', 'Lamar', 'United States of Ame', '33.66094N', '95.55551W', 'America/Chicago', 'settlement'),
('paris-6455259', 'Paris', 'Île-de-France Region', 'Paris', 'France', '48.86N', '2.34444E', 'Europe/Paris', 'administrative_area'),
('paris-6942553', 'Paris', 'Ontario', NULL, 'Canada', '43.2N', '80.38333W', 'America/Toronto', 'settlement'),
('parys', 'Parys', 'Orange Free State', 'Fezile Dabi District', 'South Africa', '26.9033S', '27.45727E', 'Africa/Johannesburg', 'settlement'),
('riga', 'Riga', 'Riga', 'Rīga', 'Latvia', '56.946N', '24.10589E', 'Europe/Riga', 'settlement'),
('riga-1258158', 'Riga', 'Bihar', 'Sitamarhi', 'India', '26.65535N', '85.44203E', 'Asia/Kolkata', 'settlement'),
('riga-2324514', 'Riga', 'Benue', 'Gboko', 'Nigeria', '7.4105N', '8.70914E', 'Africa/Lagos', 'settlement'),
('riga-456173', 'Rīga', 'Riga', NULL, 'Latvia', '56.97778N', '24.12167E', 'Europe/Riga', 'administrative_area'),
('riga-6803817', 'Riga', 'Zinder', NULL, 'Republic of Niger', '14.1941N', '9.575E', 'Africa/Niamey', 'settlement'),
('riga-6806841', 'Riga', 'Zinder', NULL, 'Republic of Niger', '13.7931N', '9.4482E', 'Africa/Niamey', 'settlement'),
('riga-7020443', 'Riga', 'Kebbi', 'Shanga', 'Nigeria', '11.08101N', '4.84959E', 'Africa/Lagos', 'settlement'),
('riga-7027078', 'Riga', 'Zinder', NULL, 'Republic of Niger', '12.98745N', '9.8012E', 'Africa/Niamey', 'settlement'),
('riga-8968377', 'Riga', 'Abruzzo', 'Provincia di Pescara', 'Italy', '42.17308N', '13.99015E', 'Europe/Rome', 'settlement'),
('tallin-table', 'Tallin Table', 'Nebraska', 'Custer', 'United States of Ame', '41.27723N', '100.19707W', 'America/Chicago', 'mountain'),
('tallinn', 'Tallinn', 'Harju', 'Tallinn', 'Republic of Estonia', '59.43696N', '24.75353E', 'Europe/Tallinn', 'settlement'),
('tallinna-laht', 'Tallinna Laht', 'Harju', 'Tallinn', 'Republic of Estonia', '59.50234N', '24.57308E', 'Europe/Tallinn', 'bay'),
('vanalinn-798564', 'Vanalinn', 'Harju', 'Tallinn', 'Republic of Estonia', '59.43814N', '24.74535E', 'Europe/Tallinn', 'settlement');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `weatherconditions`
--
ALTER TABLE `weatherconditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `place_id` (`place_id`);

--
-- Indexes for table `weatherplaces`
--
ALTER TABLE `weatherplaces`
  ADD PRIMARY KEY (`place_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `weatherconditions`
--
ALTER TABLE `weatherconditions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `weatherconditions`
--
ALTER TABLE `weatherconditions`
  ADD CONSTRAINT `weatherconditions_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `weatherplaces` (`place_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
