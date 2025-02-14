-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2024 at 03:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ahpskripsi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_alternatif`
--

CREATE TABLE `tb_alternatif` (
  `kode_alternatif` varchar(16) NOT NULL,
  `nama_alternatif` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `rank` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_alternatif`
--

INSERT INTO `tb_alternatif` (`kode_alternatif`, `nama_alternatif`, `keterangan`, `total`, `rank`) VALUES
('A2', 'Nurul Khamidah', '', 0.14856185508397, 5),
('A1', 'Arif Rahman', '', 0.20904300399325, 2),
('A3', 'Nurlaela', '', 0.21756288144135, 1),
('A4', 'Taufiq', '', 0.17450858913574, 4),
('A5', 'Agus Setiawan', '', 0.20229052088113, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kriteria`
--

CREATE TABLE `tb_kriteria` (
  `kode_kriteria` varchar(16) NOT NULL,
  `nama_kriteria` varchar(256) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_kriteria`
--

INSERT INTO `tb_kriteria` (`kode_kriteria`, `nama_kriteria`) VALUES
('C3', 'Inisiatif'),
('C2', 'Kemampuan Komunikasi'),
('C1', 'Tanggung Jawab'),
('C4', 'Kehadiran'),
('C5', 'Sikap'),
('C6', 'Kerja Sama');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rel_alternatif`
--

CREATE TABLE `tb_rel_alternatif` (
  `ID` int(11) NOT NULL,
  `kode_alternatif` varchar(255) DEFAULT NULL,
  `kode_kriteria` varchar(255) DEFAULT NULL,
  `kode_sub` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_rel_alternatif`
--

INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `kode_sub`) VALUES
(35, 'A3', 'C2', 'KK2'),
(34, 'A3', 'C1', 'TJ2'),
(33, 'A2', 'C6', 'KS2'),
(32, 'A2', 'C5', 'SK1'),
(31, 'A2', 'C4', 'KD2'),
(30, 'A2', 'C3', 'IS3'),
(29, 'A2', 'C2', 'KK3'),
(41, 'A4', 'C2', 'KK1'),
(40, 'A4', 'C1', 'TJ1'),
(39, 'A3', 'C6', 'KS2'),
(38, 'A3', 'C5', 'SK1'),
(37, 'A3', 'C4', 'KD2'),
(36, 'A3', 'C3', 'IS1'),
(28, 'A2', 'C1', 'TJ1'),
(27, 'A1', 'C6', 'KS2'),
(26, 'A1', 'C5', 'SK2'),
(25, 'A1', 'C4', 'KD1'),
(24, 'A1', 'C3', 'IS3'),
(23, 'A1', 'C2', 'KK1'),
(22, 'A1', 'C1', 'TJ2'),
(42, 'A4', 'C3', 'IS4'),
(43, 'A4', 'C4', 'KD3'),
(44, 'A4', 'C5', 'SK2'),
(45, 'A4', 'C6', 'KS1'),
(46, 'A5', 'C1', 'TJ2'),
(47, 'A5', 'C2', 'KK2'),
(48, 'A5', 'C3', 'IS2'),
(49, 'A5', 'C4', 'KD1'),
(50, 'A5', 'C5', 'SK1'),
(51, 'A5', 'C6', 'KS3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rel_kriteria`
--

CREATE TABLE `tb_rel_kriteria` (
  `ID` int(11) NOT NULL,
  `ID1` varchar(16) DEFAULT NULL,
  `ID2` varchar(16) DEFAULT NULL,
  `nilai` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_rel_kriteria`
--

INSERT INTO `tb_rel_kriteria` (`ID`, `ID1`, `ID2`, `nilai`) VALUES
(58, 'C2', 'C3', 2),
(57, 'C1', 'C3', 2),
(53, 'C1', 'C2', 3),
(54, 'C3', 'C1', 0.5),
(71, 'C1', 'C5', 3),
(70, 'C5', 'C5', 1),
(69, 'C5', 'C4', 0.5),
(68, 'C5', 'C3', 0.333333333),
(56, 'C3', 'C3', 1),
(52, 'C2', 'C2', 1),
(50, 'C1', 'C1', 1),
(55, 'C3', 'C2', 0.5),
(51, 'C2', 'C1', 0.333333333),
(81, 'C1', 'C6', 5),
(80, 'C6', 'C6', 1),
(79, 'C6', 'C5', 0.5),
(78, 'C6', 'C4', 0.333333333),
(77, 'C6', 'C3', 0.5),
(76, 'C6', 'C2', 0.333333333),
(75, 'C6', 'C1', 0.2),
(74, 'C4', 'C5', 2),
(85, 'C5', 'C6', 2),
(84, 'C4', 'C6', 3),
(83, 'C3', 'C6', 2),
(82, 'C2', 'C6', 3),
(73, 'C3', 'C5', 3),
(67, 'C5', 'C2', 0.5),
(65, 'C3', 'C4', 3),
(64, 'C2', 'C4', 3),
(63, 'C1', 'C4', 2),
(62, 'C4', 'C4', 1),
(72, 'C2', 'C5', 2),
(66, 'C5', 'C1', 0.333333333),
(61, 'C4', 'C3', 0.333333333),
(60, 'C4', 'C2', 0.333333333),
(59, 'C4', 'C1', 0.5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_rel_sub`
--

CREATE TABLE `tb_rel_sub` (
  `ID` int(11) NOT NULL,
  `ID1` varchar(255) DEFAULT NULL,
  `ID2` varchar(255) DEFAULT NULL,
  `nilai` double DEFAULT NULL,
  `bobot` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_rel_sub`
--

INSERT INTO `tb_rel_sub` (`ID`, `ID1`, `ID2`, `nilai`, `bobot`) VALUES
(520, 'TJ3', 'KK4', 1, NULL),
(519, 'TJ2', 'KK4', 1, NULL),
(505, 'TJ5', 'KK3', 1, NULL),
(518, 'TJ1', 'KK4', 1, NULL),
(504, 'TJ4', 'KK3', 1, NULL),
(490, 'TJ5', 'KK2', 1, NULL),
(503, 'TJ3', 'KK3', 1, NULL),
(846, 'SK1', 'IS5', 1, NULL),
(845, 'SK1', 'IS4', 1, NULL),
(844, 'SK1', 'IS3', 1, NULL),
(843, 'SK1', 'IS2', 1, NULL),
(842, 'SK1', 'IS1', 1, NULL),
(841, 'TJ5', 'KD5', 1, NULL),
(840, 'TJ4', 'KD5', 1, NULL),
(839, 'TJ3', 'KD5', 1, NULL),
(838, 'TJ2', 'KD5', 1, NULL),
(837, 'TJ1', 'KD5', 1, NULL),
(836, 'KK5', 'KD5', 1, NULL),
(835, 'KK4', 'KD5', 1, NULL),
(834, 'KK3', 'KD5', 1, NULL),
(833, 'KK2', 'KD5', 1, NULL),
(832, 'KK1', 'KD5', 1, NULL),
(800, 'TJ3', 'KD4', 1, NULL),
(799, 'TJ2', 'KD4', 1, NULL),
(798, 'TJ1', 'KD4', 1, NULL),
(797, 'KK5', 'KD4', 1, NULL),
(831, 'KD4', 'KD5', 2, NULL),
(796, 'KK4', 'KD4', 1, NULL),
(795, 'KK3', 'KD4', 1, NULL),
(794, 'KK2', 'KD4', 1, NULL),
(830, 'KD3', 'KD5', 3, NULL),
(793, 'KK1', 'KD4', 1, NULL),
(763, 'TJ3', 'KD3', 1, NULL),
(762, 'TJ2', 'KD3', 1, NULL),
(761, 'TJ1', 'KD3', 1, NULL),
(760, 'KK5', 'KD3', 1, NULL),
(829, 'KD2', 'KD5', 4, NULL),
(792, 'KD3', 'KD4', 2, NULL),
(759, 'KK4', 'KD3', 1, NULL),
(758, 'KK3', 'KD3', 1, NULL),
(757, 'KK2', 'KD3', 1, NULL),
(828, 'KD1', 'KD5', 5, NULL),
(791, 'KD2', 'KD4', 3, NULL),
(756, 'KK1', 'KD3', 1, NULL),
(728, 'TJ3', 'KD2', 1, NULL),
(727, 'TJ2', 'KD2', 1, NULL),
(726, 'TJ1', 'KD2', 1, NULL),
(725, 'KK5', 'KD2', 1, NULL),
(827, 'IS5', 'KD5', 1, NULL),
(790, 'KD1', 'KD4', 4, NULL),
(755, 'KD2', 'KD3', 2, NULL),
(724, 'KK4', 'KD2', 1, NULL),
(723, 'KK3', 'KD2', 1, NULL),
(722, 'KK2', 'KD2', 1, NULL),
(826, 'IS4', 'KD5', 1, NULL),
(789, 'IS5', 'KD4', 1, NULL),
(754, 'KD1', 'KD3', 3, NULL),
(721, 'KK1', 'KD2', 1, NULL),
(695, 'TJ3', 'KD1', 1, NULL),
(694, 'TJ2', 'KD1', 1, NULL),
(693, 'TJ1', 'KD1', 1, NULL),
(692, 'KK5', 'KD1', 1, NULL),
(825, 'IS3', 'KD5', 1, NULL),
(788, 'IS4', 'KD4', 1, NULL),
(753, 'IS5', 'KD3', 1, NULL),
(720, 'KD1', 'KD2', 2, NULL),
(691, 'KK4', 'KD1', 1, NULL),
(690, 'KK3', 'KD1', 1, NULL),
(689, 'KK2', 'KD1', 1, NULL),
(824, 'IS2', 'KD5', 1, NULL),
(787, 'IS3', 'KD4', 1, NULL),
(752, 'IS4', 'KD3', 1, NULL),
(719, 'IS5', 'KD2', 1, NULL),
(688, 'KK1', 'KD1', 1, NULL),
(664, 'TJ3', 'IS5', 1, NULL),
(663, 'TJ2', 'IS5', 1, NULL),
(662, 'TJ1', 'IS5', 1, NULL),
(661, 'KK5', 'IS5', 1, NULL),
(823, 'IS1', 'KD5', 1, NULL),
(786, 'IS2', 'KD4', 1, NULL),
(751, 'IS3', 'KD3', 1, NULL),
(718, 'IS4', 'KD2', 1, NULL),
(687, 'IS5', 'KD1', 1, NULL),
(660, 'KK4', 'IS5', 1, NULL),
(659, 'KK3', 'IS5', 1, NULL),
(658, 'KK2', 'IS5', 1, NULL),
(822, 'KD5', 'TJ5', 1, NULL),
(785, 'IS1', 'KD4', 1, NULL),
(750, 'IS2', 'KD3', 1, NULL),
(717, 'IS3', 'KD2', 1, NULL),
(686, 'IS4', 'KD1', 1, NULL),
(657, 'KK1', 'IS5', 1, NULL),
(635, 'TJ3', 'IS4', 1, NULL),
(634, 'TJ2', 'IS4', 1, NULL),
(633, 'TJ1', 'IS4', 1, NULL),
(632, 'KK5', 'IS4', 1, NULL),
(821, 'KD5', 'TJ4', 1, NULL),
(784, 'KD4', 'TJ5', 1, NULL),
(749, 'IS1', 'KD3', 1, NULL),
(716, 'IS2', 'KD2', 1, NULL),
(685, 'IS3', 'KD1', 1, NULL),
(656, 'IS4', 'IS5', 2, NULL),
(631, 'KK4', 'IS4', 1, NULL),
(630, 'KK3', 'IS4', 1, NULL),
(629, 'KK2', 'IS4', 1, NULL),
(820, 'KD5', 'TJ3', 1, NULL),
(783, 'KD4', 'TJ4', 1, NULL),
(748, 'KD3', 'TJ5', 1, NULL),
(715, 'IS1', 'KD2', 1, NULL),
(684, 'IS2', 'KD1', 1, NULL),
(655, 'IS3', 'IS5', 3, NULL),
(628, 'KK1', 'IS4', 1, NULL),
(608, 'TJ3', 'IS3', 1, NULL),
(607, 'TJ2', 'IS3', 1, NULL),
(606, 'TJ1', 'IS3', 1, NULL),
(605, 'KK5', 'IS3', 1, NULL),
(819, 'KD5', 'TJ2', 1, NULL),
(782, 'KD4', 'TJ3', 1, NULL),
(747, 'KD3', 'TJ4', 1, NULL),
(714, 'KD2', 'TJ5', 1, NULL),
(683, 'IS1', 'KD1', 1, NULL),
(654, 'IS2', 'IS5', 4, NULL),
(627, 'IS3', 'IS4', 2, NULL),
(604, 'KK4', 'IS3', 1, NULL),
(603, 'KK3', 'IS3', 1, NULL),
(602, 'KK2', 'IS3', 1, NULL),
(818, 'KD5', 'TJ1', 1, NULL),
(781, 'KD4', 'TJ2', 1, NULL),
(746, 'KD3', 'TJ3', 1, NULL),
(713, 'KD2', 'TJ4', 1, NULL),
(682, 'KD1', 'TJ5', 1, NULL),
(653, 'IS1', 'IS5', 5, NULL),
(626, 'IS2', 'IS4', 3, NULL),
(601, 'KK1', 'IS3', 1, NULL),
(583, 'TJ3', 'IS2', 1, NULL),
(582, 'TJ2', 'IS2', 1, NULL),
(581, 'TJ1', 'IS2', 1, NULL),
(580, 'KK5', 'IS2', 1, NULL),
(817, 'KD5', 'KK5', 1, NULL),
(780, 'KD4', 'TJ1', 1, NULL),
(745, 'KD3', 'TJ2', 1, NULL),
(712, 'KD2', 'TJ3', 1, NULL),
(681, 'KD1', 'TJ4', 1, NULL),
(652, 'IS5', 'TJ5', 1, NULL),
(625, 'IS1', 'IS4', 4, NULL),
(600, 'IS2', 'IS3', 2, NULL),
(579, 'KK4', 'IS2', 1, NULL),
(578, 'KK3', 'IS2', 1, NULL),
(577, 'KK2', 'IS2', 1, NULL),
(816, 'KD5', 'KK4', 1, NULL),
(779, 'KD4', 'KK5', 1, NULL),
(744, 'KD3', 'TJ1', 1, NULL),
(711, 'KD2', 'TJ2', 1, NULL),
(680, 'KD1', 'TJ3', 1, NULL),
(651, 'IS5', 'TJ4', 1, NULL),
(624, 'IS4', 'TJ5', 1, NULL),
(599, 'IS1', 'IS3', 3, NULL),
(576, 'KK1', 'IS2', 1, NULL),
(560, 'TJ3', 'IS1', 1, NULL),
(559, 'TJ2', 'IS1', 1, NULL),
(558, 'TJ1', 'IS1', 1, NULL),
(557, 'KK5', 'IS1', 1, NULL),
(815, 'KD5', 'KK3', 1, NULL),
(778, 'KD4', 'KK4', 1, NULL),
(743, 'KD3', 'KK5', 1, NULL),
(710, 'KD2', 'TJ1', 1, NULL),
(679, 'KD1', 'TJ2', 1, NULL),
(650, 'IS5', 'TJ3', 1, NULL),
(623, 'IS4', 'TJ4', 1, NULL),
(598, 'IS3', 'TJ5', 1, NULL),
(575, 'IS1', 'IS2', 2, NULL),
(556, 'KK4', 'IS1', 1, NULL),
(555, 'KK3', 'IS1', 1, NULL),
(554, 'KK2', 'IS1', 1, NULL),
(814, 'KD5', 'KK2', 1, NULL),
(777, 'KD4', 'KK3', 1, NULL),
(742, 'KD3', 'KK4', 1, NULL),
(709, 'KD2', 'KK5', 1, NULL),
(678, 'KD1', 'TJ1', 1, NULL),
(649, 'IS5', 'TJ2', 1, NULL),
(622, 'IS4', 'TJ3', 1, NULL),
(597, 'IS3', 'TJ4', 1, NULL),
(574, 'IS2', 'TJ5', 1, NULL),
(553, 'KK1', 'IS1', 1, NULL),
(539, 'TJ3', 'KK5', 1, NULL),
(538, 'TJ2', 'KK5', 1, NULL),
(537, 'TJ1', 'KK5', 1, NULL),
(536, 'KK4', 'KK5', 2, NULL),
(813, 'KD5', 'KK1', 1, NULL),
(776, 'KD4', 'KK2', 1, NULL),
(741, 'KD3', 'KK3', 1, NULL),
(708, 'KD2', 'KK4', 1, NULL),
(677, 'KD1', 'KK5', 1, NULL),
(648, 'IS5', 'TJ1', 1, NULL),
(621, 'IS4', 'TJ2', 1, NULL),
(596, 'IS3', 'TJ3', 1, NULL),
(573, 'IS2', 'TJ4', 1, NULL),
(552, 'IS1', 'TJ5', 1, NULL),
(535, 'KK3', 'KK5', 3, NULL),
(534, 'KK2', 'KK5', 4, NULL),
(533, 'KK1', 'KK5', 5, NULL),
(812, 'KD5', 'KD5', 1, NULL),
(775, 'KD4', 'KK1', 1, NULL),
(740, 'KD3', 'KK2', 1, NULL),
(707, 'KD2', 'KK3', 1, NULL),
(676, 'KD1', 'KK4', 1, NULL),
(647, 'IS5', 'KK5', 1, NULL),
(620, 'IS4', 'TJ1', 1, NULL),
(595, 'IS3', 'TJ2', 1, NULL),
(572, 'IS2', 'TJ3', 1, NULL),
(551, 'IS1', 'TJ4', 1, NULL),
(532, 'KK5', 'TJ5', 1, NULL),
(517, 'KK3', 'KK4', 2, NULL),
(502, 'TJ2', 'KK3', 1, NULL),
(489, 'TJ4', 'KK2', 1, NULL),
(477, 'TJ5', 'KK1', 1, NULL),
(811, 'KD5', 'KD4', 0.5, NULL),
(774, 'KD4', 'KD4', 1, NULL),
(739, 'KD3', 'KK1', 1, NULL),
(706, 'KD2', 'KK2', 1, NULL),
(675, 'KD1', 'KK3', 1, NULL),
(646, 'IS5', 'KK4', 1, NULL),
(619, 'IS4', 'KK5', 1, NULL),
(594, 'IS3', 'TJ1', 1, NULL),
(571, 'IS2', 'TJ2', 1, NULL),
(550, 'IS1', 'TJ3', 1, NULL),
(531, 'KK5', 'TJ4', 1, NULL),
(516, 'KK2', 'KK4', 3, NULL),
(501, 'TJ1', 'KK3', 1, NULL),
(488, 'TJ3', 'KK2', 1, NULL),
(810, 'KD5', 'KD3', 0.333333333, NULL),
(773, 'KD4', 'KD3', 0.5, NULL),
(738, 'KD3', 'KD3', 1, NULL),
(705, 'KD2', 'KK1', 1, NULL),
(674, 'KD1', 'KK2', 1, NULL),
(645, 'IS5', 'KK3', 1, NULL),
(618, 'IS4', 'KK4', 1, NULL),
(593, 'IS3', 'KK5', 1, NULL),
(570, 'IS2', 'TJ1', 1, NULL),
(549, 'IS1', 'TJ2', 1, NULL),
(530, 'KK5', 'TJ3', 1, NULL),
(515, 'KK1', 'KK4', 4, NULL),
(500, 'KK2', 'KK3', 2, NULL),
(487, 'TJ2', 'KK2', 1, NULL),
(476, 'TJ4', 'KK1', 1, NULL),
(466, 'TJ4', 'TJ5', 2, NULL),
(809, 'KD5', 'KD2', 0.25, NULL),
(772, 'KD4', 'KD2', 0.333333333, NULL),
(737, 'KD3', 'KD2', 0.5, NULL),
(704, 'KD2', 'KD2', 1, NULL),
(673, 'KD1', 'KK1', 1, NULL),
(644, 'IS5', 'KK2', 1, NULL),
(617, 'IS4', 'KK3', 1, NULL),
(592, 'IS3', 'KK4', 1, NULL),
(569, 'IS2', 'KK5', 1, NULL),
(548, 'IS1', 'TJ1', 1, NULL),
(529, 'KK5', 'TJ2', 1, NULL),
(514, 'KK4', 'TJ5', 1, NULL),
(499, 'KK1', 'KK3', 3, NULL),
(486, 'TJ1', 'KK2', 1, NULL),
(475, 'TJ3', 'KK1', 1, NULL),
(808, 'KD5', 'KD1', 0.2, NULL),
(771, 'KD4', 'KD1', 0.25, NULL),
(736, 'KD3', 'KD1', 0.333333333, NULL),
(703, 'KD2', 'KD1', 0.5, NULL),
(672, 'KD1', 'KD1', 1, NULL),
(643, 'IS5', 'KK1', 1, NULL),
(616, 'IS4', 'KK2', 1, NULL),
(591, 'IS3', 'KK3', 1, NULL),
(568, 'IS2', 'KK4', 1, NULL),
(547, 'IS1', 'KK5', 1, NULL),
(528, 'KK5', 'TJ1', 1, NULL),
(513, 'KK4', 'TJ4', 1, NULL),
(498, 'KK3', 'TJ5', 1, NULL),
(485, 'KK1', 'KK2', 2, NULL),
(474, 'TJ2', 'KK1', 1, NULL),
(465, 'TJ3', 'TJ5', 3, NULL),
(457, 'TJ3', 'TJ4', 2, NULL),
(807, 'KD5', 'IS5', 1, NULL),
(770, 'KD4', 'IS5', 1, NULL),
(735, 'KD3', 'IS5', 1, NULL),
(702, 'KD2', 'IS5', 1, NULL),
(671, 'KD1', 'IS5', 1, NULL),
(642, 'IS5', 'IS5', 1, NULL),
(615, 'IS4', 'KK1', 1, NULL),
(590, 'IS3', 'KK2', 1, NULL),
(567, 'IS2', 'KK3', 1, NULL),
(546, 'IS1', 'KK4', 1, NULL),
(527, 'KK5', 'KK5', 1, NULL),
(512, 'KK4', 'TJ3', 1, NULL),
(497, 'KK3', 'TJ4', 1, NULL),
(484, 'KK2', 'TJ5', 1, NULL),
(473, 'TJ1', 'KK1', 1, NULL),
(464, 'TJ2', 'TJ5', 4, NULL),
(806, 'KD5', 'IS4', 1, NULL),
(769, 'KD4', 'IS4', 1, NULL),
(734, 'KD3', 'IS4', 1, NULL),
(701, 'KD2', 'IS4', 1, NULL),
(670, 'KD1', 'IS4', 1, NULL),
(641, 'IS5', 'IS4', 0.5, NULL),
(614, 'IS4', 'IS4', 1, NULL),
(589, 'IS3', 'KK1', 1, NULL),
(566, 'IS2', 'KK2', 1, NULL),
(545, 'IS1', 'KK3', 1, NULL),
(526, 'KK5', 'KK4', 0.5, NULL),
(511, 'KK4', 'TJ2', 1, NULL),
(496, 'KK3', 'TJ3', 1, NULL),
(483, 'KK2', 'TJ4', 1, NULL),
(472, 'KK1', 'TJ5', 1, NULL),
(463, 'TJ1', 'TJ5', 5, NULL),
(456, 'TJ2', 'TJ4', 3, NULL),
(450, 'TJ2', 'TJ3', 2, NULL),
(805, 'KD5', 'IS3', 1, NULL),
(768, 'KD4', 'IS3', 1, NULL),
(733, 'KD3', 'IS3', 1, NULL),
(700, 'KD2', 'IS3', 1, NULL),
(669, 'KD1', 'IS3', 1, NULL),
(640, 'IS5', 'IS3', 0.333333333, NULL),
(613, 'IS4', 'IS3', 0.5, NULL),
(588, 'IS3', 'IS3', 1, NULL),
(565, 'IS2', 'KK1', 1, NULL),
(544, 'IS1', 'KK2', 1, NULL),
(525, 'KK5', 'KK3', 0.333333333, NULL),
(510, 'KK4', 'TJ1', 1, NULL),
(495, 'KK3', 'TJ2', 1, NULL),
(482, 'KK2', 'TJ3', 1, NULL),
(471, 'KK1', 'TJ4', 1, NULL),
(462, 'TJ5', 'TJ5', 1, NULL),
(455, 'TJ1', 'TJ4', 4, NULL),
(804, 'KD5', 'IS2', 1, NULL),
(767, 'KD4', 'IS2', 1, NULL),
(732, 'KD3', 'IS2', 1, NULL),
(699, 'KD2', 'IS2', 1, NULL),
(668, 'KD1', 'IS2', 1, NULL),
(639, 'IS5', 'IS2', 0.25, NULL),
(612, 'IS4', 'IS2', 0.333333333, NULL),
(587, 'IS3', 'IS2', 0.5, NULL),
(564, 'IS2', 'IS2', 1, NULL),
(543, 'IS1', 'KK1', 1, NULL),
(524, 'KK5', 'KK2', 0.25, NULL),
(509, 'KK4', 'KK4', 1, NULL),
(494, 'KK3', 'TJ1', 1, NULL),
(481, 'KK2', 'TJ2', 1, NULL),
(470, 'KK1', 'TJ3', 1, NULL),
(461, 'TJ5', 'TJ4', 0.5, NULL),
(454, 'TJ4', 'TJ4', 1, NULL),
(449, 'TJ1', 'TJ3', 3, NULL),
(445, 'TJ1', 'TJ2', 2, NULL),
(803, 'KD5', 'IS1', 1, NULL),
(766, 'KD4', 'IS1', 1, NULL),
(731, 'KD3', 'IS1', 1, NULL),
(698, 'KD2', 'IS1', 1, NULL),
(667, 'KD1', 'IS1', 1, NULL),
(638, 'IS5', 'IS1', 0.2, NULL),
(611, 'IS4', 'IS1', 0.25, NULL),
(586, 'IS3', 'IS1', 0.333333333, NULL),
(563, 'IS2', 'IS1', 0.5, NULL),
(542, 'IS1', 'IS1', 1, NULL),
(523, 'KK5', 'KK1', 0.2, NULL),
(508, 'KK4', 'KK3', 0.5, NULL),
(493, 'KK3', 'KK3', 1, NULL),
(480, 'KK2', 'TJ1', 1, NULL),
(469, 'KK1', 'TJ2', 1, NULL),
(460, 'TJ5', 'TJ3', 0.333333333, NULL),
(453, 'TJ4', 'TJ3', 0.5, NULL),
(448, 'TJ3', 'TJ3', 1, NULL),
(802, 'TJ5', 'KD4', 1, NULL),
(765, 'TJ5', 'KD3', 1, NULL),
(730, 'TJ5', 'KD2', 1, NULL),
(697, 'TJ5', 'KD1', 1, NULL),
(666, 'TJ5', 'IS5', 1, NULL),
(637, 'TJ5', 'IS4', 1, NULL),
(610, 'TJ5', 'IS3', 1, NULL),
(585, 'TJ5', 'IS2', 1, NULL),
(562, 'TJ5', 'IS1', 1, NULL),
(541, 'TJ5', 'KK5', 1, NULL),
(522, 'TJ5', 'KK4', 1, NULL),
(507, 'KK4', 'KK2', 0.333333333, NULL),
(492, 'KK3', 'KK2', 0.5, NULL),
(479, 'KK2', 'KK2', 1, NULL),
(468, 'KK1', 'TJ1', 1, NULL),
(459, 'TJ5', 'TJ2', 0.25, NULL),
(452, 'TJ4', 'TJ2', 0.333333333, NULL),
(447, 'TJ3', 'TJ2', 0.5, NULL),
(444, 'TJ2', 'TJ2', 1, NULL),
(442, 'TJ1', 'TJ1', 1, NULL),
(801, 'TJ4', 'KD4', 1, NULL),
(764, 'TJ4', 'KD3', 1, NULL),
(729, 'TJ4', 'KD2', 1, NULL),
(696, 'TJ4', 'KD1', 1, NULL),
(665, 'TJ4', 'IS5', 1, NULL),
(636, 'TJ4', 'IS4', 1, NULL),
(609, 'TJ4', 'IS3', 1, NULL),
(584, 'TJ4', 'IS2', 1, NULL),
(561, 'TJ4', 'IS1', 1, NULL),
(540, 'TJ4', 'KK5', 1, NULL),
(521, 'TJ4', 'KK4', 1, NULL),
(506, 'KK4', 'KK1', 0.25, NULL),
(491, 'KK3', 'KK1', 0.333333333, NULL),
(478, 'KK2', 'KK1', 0.5, NULL),
(467, 'KK1', 'KK1', 1, NULL),
(458, 'TJ5', 'TJ1', 0.2, NULL),
(451, 'TJ4', 'TJ1', 0.25, NULL),
(446, 'TJ3', 'TJ1', 0.333333333, NULL),
(443, 'TJ2', 'TJ1', 0.5, NULL),
(847, 'SK1', 'KD1', 1, NULL),
(848, 'SK1', 'KD2', 1, NULL),
(849, 'SK1', 'KD3', 1, NULL),
(850, 'SK1', 'KD4', 1, NULL),
(851, 'SK1', 'KD5', 1, NULL),
(852, 'SK1', 'KK1', 1, NULL),
(853, 'SK1', 'KK2', 1, NULL),
(854, 'SK1', 'KK3', 1, NULL),
(855, 'SK1', 'KK4', 1, NULL),
(856, 'SK1', 'KK5', 1, NULL),
(857, 'SK1', 'SK1', 1, NULL),
(858, 'SK1', 'TJ1', 1, NULL),
(859, 'SK1', 'TJ2', 1, NULL),
(860, 'SK1', 'TJ3', 1, NULL),
(861, 'SK1', 'TJ4', 1, NULL),
(862, 'SK1', 'TJ5', 1, NULL),
(863, 'IS1', 'SK1', 1, NULL),
(864, 'IS2', 'SK1', 1, NULL),
(865, 'IS3', 'SK1', 1, NULL),
(866, 'IS4', 'SK1', 1, NULL),
(867, 'IS5', 'SK1', 1, NULL),
(868, 'KD1', 'SK1', 1, NULL),
(869, 'KD2', 'SK1', 1, NULL),
(870, 'KD3', 'SK1', 1, NULL),
(871, 'KD4', 'SK1', 1, NULL),
(872, 'KD5', 'SK1', 1, NULL),
(873, 'KK1', 'SK1', 1, NULL),
(874, 'KK2', 'SK1', 1, NULL),
(875, 'KK3', 'SK1', 1, NULL),
(876, 'KK4', 'SK1', 1, NULL),
(877, 'KK5', 'SK1', 1, NULL),
(878, 'TJ1', 'SK1', 1, NULL),
(879, 'TJ2', 'SK1', 1, NULL),
(880, 'TJ3', 'SK1', 1, NULL),
(881, 'TJ4', 'SK1', 1, NULL),
(882, 'TJ5', 'SK1', 1, NULL),
(883, 'SK2', 'IS1', 1, NULL),
(884, 'SK2', 'IS2', 1, NULL),
(885, 'SK2', 'IS3', 1, NULL),
(886, 'SK2', 'IS4', 1, NULL),
(887, 'SK2', 'IS5', 1, NULL),
(888, 'SK2', 'KD1', 1, NULL),
(889, 'SK2', 'KD2', 1, NULL),
(890, 'SK2', 'KD3', 1, NULL),
(891, 'SK2', 'KD4', 1, NULL),
(892, 'SK2', 'KD5', 1, NULL),
(893, 'SK2', 'KK1', 1, NULL),
(894, 'SK2', 'KK2', 1, NULL),
(895, 'SK2', 'KK3', 1, NULL),
(896, 'SK2', 'KK4', 1, NULL),
(897, 'SK2', 'KK5', 1, NULL),
(898, 'SK2', 'SK1', 0.5, NULL),
(899, 'SK2', 'SK2', 1, NULL),
(900, 'SK2', 'TJ1', 1, NULL),
(901, 'SK2', 'TJ2', 1, NULL),
(902, 'SK2', 'TJ3', 1, NULL),
(903, 'SK2', 'TJ4', 1, NULL),
(904, 'SK2', 'TJ5', 1, NULL),
(905, 'IS1', 'SK2', 1, NULL),
(906, 'IS2', 'SK2', 1, NULL),
(907, 'IS3', 'SK2', 1, NULL),
(908, 'IS4', 'SK2', 1, NULL),
(909, 'IS5', 'SK2', 1, NULL),
(910, 'KD1', 'SK2', 1, NULL),
(911, 'KD2', 'SK2', 1, NULL),
(912, 'KD3', 'SK2', 1, NULL),
(913, 'KD4', 'SK2', 1, NULL),
(914, 'KD5', 'SK2', 1, NULL),
(915, 'KK1', 'SK2', 1, NULL),
(916, 'KK2', 'SK2', 1, NULL),
(917, 'KK3', 'SK2', 1, NULL),
(918, 'KK4', 'SK2', 1, NULL),
(919, 'KK5', 'SK2', 1, NULL),
(920, 'SK1', 'SK2', 2, NULL),
(921, 'TJ1', 'SK2', 1, NULL),
(922, 'TJ2', 'SK2', 1, NULL),
(923, 'TJ3', 'SK2', 1, NULL),
(924, 'TJ4', 'SK2', 1, NULL),
(925, 'TJ5', 'SK2', 1, NULL),
(926, 'SK3', 'IS1', 1, NULL),
(927, 'SK3', 'IS2', 1, NULL),
(928, 'SK3', 'IS3', 1, NULL),
(929, 'SK3', 'IS4', 1, NULL),
(930, 'SK3', 'IS5', 1, NULL),
(931, 'SK3', 'KD1', 1, NULL),
(932, 'SK3', 'KD2', 1, NULL),
(933, 'SK3', 'KD3', 1, NULL),
(934, 'SK3', 'KD4', 1, NULL),
(935, 'SK3', 'KD5', 1, NULL),
(936, 'SK3', 'KK1', 1, NULL),
(937, 'SK3', 'KK2', 1, NULL),
(938, 'SK3', 'KK3', 1, NULL),
(939, 'SK3', 'KK4', 1, NULL),
(940, 'SK3', 'KK5', 1, NULL),
(941, 'SK3', 'SK1', 0.333333333, NULL),
(942, 'SK3', 'SK2', 0.5, NULL),
(943, 'SK3', 'SK3', 1, NULL),
(944, 'SK3', 'TJ1', 1, NULL),
(945, 'SK3', 'TJ2', 1, NULL),
(946, 'SK3', 'TJ3', 1, NULL),
(947, 'SK3', 'TJ4', 1, NULL),
(948, 'SK3', 'TJ5', 1, NULL),
(949, 'IS1', 'SK3', 1, NULL),
(950, 'IS2', 'SK3', 1, NULL),
(951, 'IS3', 'SK3', 1, NULL),
(952, 'IS4', 'SK3', 1, NULL),
(953, 'IS5', 'SK3', 1, NULL),
(954, 'KD1', 'SK3', 1, NULL),
(955, 'KD2', 'SK3', 1, NULL),
(956, 'KD3', 'SK3', 1, NULL),
(957, 'KD4', 'SK3', 1, NULL),
(958, 'KD5', 'SK3', 1, NULL),
(959, 'KK1', 'SK3', 1, NULL),
(960, 'KK2', 'SK3', 1, NULL),
(961, 'KK3', 'SK3', 1, NULL),
(962, 'KK4', 'SK3', 1, NULL),
(963, 'KK5', 'SK3', 1, NULL),
(964, 'SK1', 'SK3', 3, NULL),
(965, 'SK2', 'SK3', 2, NULL),
(966, 'TJ1', 'SK3', 1, NULL),
(967, 'TJ2', 'SK3', 1, NULL),
(968, 'TJ3', 'SK3', 1, NULL),
(969, 'TJ4', 'SK3', 1, NULL),
(970, 'TJ5', 'SK3', 1, NULL),
(971, 'SK4', 'IS1', 1, NULL),
(972, 'SK4', 'IS2', 1, NULL),
(973, 'SK4', 'IS3', 1, NULL),
(974, 'SK4', 'IS4', 1, NULL),
(975, 'SK4', 'IS5', 1, NULL),
(976, 'SK4', 'KD1', 1, NULL),
(977, 'SK4', 'KD2', 1, NULL),
(978, 'SK4', 'KD3', 1, NULL),
(979, 'SK4', 'KD4', 1, NULL),
(980, 'SK4', 'KD5', 1, NULL),
(981, 'SK4', 'KK1', 1, NULL),
(982, 'SK4', 'KK2', 1, NULL),
(983, 'SK4', 'KK3', 1, NULL),
(984, 'SK4', 'KK4', 1, NULL),
(985, 'SK4', 'KK5', 1, NULL),
(986, 'SK4', 'SK1', 0.25, NULL),
(987, 'SK4', 'SK2', 0.333333333, NULL),
(988, 'SK4', 'SK3', 0.5, NULL),
(989, 'SK4', 'SK4', 1, NULL),
(990, 'SK4', 'TJ1', 1, NULL),
(991, 'SK4', 'TJ2', 1, NULL),
(992, 'SK4', 'TJ3', 1, NULL),
(993, 'SK4', 'TJ4', 1, NULL),
(994, 'SK4', 'TJ5', 1, NULL),
(995, 'IS1', 'SK4', 1, NULL),
(996, 'IS2', 'SK4', 1, NULL),
(997, 'IS3', 'SK4', 1, NULL),
(998, 'IS4', 'SK4', 1, NULL),
(999, 'IS5', 'SK4', 1, NULL),
(1000, 'KD1', 'SK4', 1, NULL),
(1001, 'KD2', 'SK4', 1, NULL),
(1002, 'KD3', 'SK4', 1, NULL),
(1003, 'KD4', 'SK4', 1, NULL),
(1004, 'KD5', 'SK4', 1, NULL),
(1005, 'KK1', 'SK4', 1, NULL),
(1006, 'KK2', 'SK4', 1, NULL),
(1007, 'KK3', 'SK4', 1, NULL),
(1008, 'KK4', 'SK4', 1, NULL),
(1009, 'KK5', 'SK4', 1, NULL),
(1010, 'SK1', 'SK4', 4, NULL),
(1011, 'SK2', 'SK4', 3, NULL),
(1012, 'SK3', 'SK4', 2, NULL),
(1013, 'TJ1', 'SK4', 1, NULL),
(1014, 'TJ2', 'SK4', 1, NULL),
(1015, 'TJ3', 'SK4', 1, NULL),
(1016, 'TJ4', 'SK4', 1, NULL),
(1017, 'TJ5', 'SK4', 1, NULL),
(1018, 'SK5', 'IS1', 1, NULL),
(1019, 'SK5', 'IS2', 1, NULL),
(1020, 'SK5', 'IS3', 1, NULL),
(1021, 'SK5', 'IS4', 1, NULL),
(1022, 'SK5', 'IS5', 1, NULL),
(1023, 'SK5', 'KD1', 1, NULL),
(1024, 'SK5', 'KD2', 1, NULL),
(1025, 'SK5', 'KD3', 1, NULL),
(1026, 'SK5', 'KD4', 1, NULL),
(1027, 'SK5', 'KD5', 1, NULL),
(1028, 'SK5', 'KK1', 1, NULL),
(1029, 'SK5', 'KK2', 1, NULL),
(1030, 'SK5', 'KK3', 1, NULL),
(1031, 'SK5', 'KK4', 1, NULL),
(1032, 'SK5', 'KK5', 1, NULL),
(1033, 'SK5', 'SK1', 0.2, NULL),
(1034, 'SK5', 'SK2', 0.25, NULL),
(1035, 'SK5', 'SK3', 0.333333333, NULL),
(1036, 'SK5', 'SK4', 0.5, NULL),
(1037, 'SK5', 'SK5', 1, NULL),
(1038, 'SK5', 'TJ1', 1, NULL),
(1039, 'SK5', 'TJ2', 1, NULL),
(1040, 'SK5', 'TJ3', 1, NULL),
(1041, 'SK5', 'TJ4', 1, NULL),
(1042, 'SK5', 'TJ5', 1, NULL),
(1043, 'IS1', 'SK5', 1, NULL),
(1044, 'IS2', 'SK5', 1, NULL),
(1045, 'IS3', 'SK5', 1, NULL),
(1046, 'IS4', 'SK5', 1, NULL),
(1047, 'IS5', 'SK5', 1, NULL),
(1048, 'KD1', 'SK5', 1, NULL),
(1049, 'KD2', 'SK5', 1, NULL),
(1050, 'KD3', 'SK5', 1, NULL),
(1051, 'KD4', 'SK5', 1, NULL),
(1052, 'KD5', 'SK5', 1, NULL),
(1053, 'KK1', 'SK5', 1, NULL),
(1054, 'KK2', 'SK5', 1, NULL),
(1055, 'KK3', 'SK5', 1, NULL),
(1056, 'KK4', 'SK5', 1, NULL),
(1057, 'KK5', 'SK5', 1, NULL),
(1058, 'SK1', 'SK5', 5, NULL),
(1059, 'SK2', 'SK5', 4, NULL),
(1060, 'SK3', 'SK5', 3, NULL),
(1061, 'SK4', 'SK5', 2, NULL),
(1062, 'TJ1', 'SK5', 1, NULL),
(1063, 'TJ2', 'SK5', 1, NULL),
(1064, 'TJ3', 'SK5', 1, NULL),
(1065, 'TJ4', 'SK5', 1, NULL),
(1066, 'TJ5', 'SK5', 1, NULL),
(1067, 'KS1', 'IS1', 1, NULL),
(1068, 'KS1', 'IS2', 1, NULL),
(1069, 'KS1', 'IS3', 1, NULL),
(1070, 'KS1', 'IS4', 1, NULL),
(1071, 'KS1', 'IS5', 1, NULL),
(1072, 'KS1', 'KD1', 1, NULL),
(1073, 'KS1', 'KD2', 1, NULL),
(1074, 'KS1', 'KD3', 1, NULL),
(1075, 'KS1', 'KD4', 1, NULL),
(1076, 'KS1', 'KD5', 1, NULL),
(1077, 'KS1', 'KK1', 1, NULL),
(1078, 'KS1', 'KK2', 1, NULL),
(1079, 'KS1', 'KK3', 1, NULL),
(1080, 'KS1', 'KK4', 1, NULL),
(1081, 'KS1', 'KK5', 1, NULL),
(1082, 'KS1', 'KS1', 1, NULL),
(1083, 'KS1', 'SK1', 1, NULL),
(1084, 'KS1', 'SK2', 1, NULL),
(1085, 'KS1', 'SK3', 1, NULL),
(1086, 'KS1', 'SK4', 1, NULL),
(1087, 'KS1', 'SK5', 1, NULL),
(1088, 'KS1', 'TJ1', 1, NULL),
(1089, 'KS1', 'TJ2', 1, NULL),
(1090, 'KS1', 'TJ3', 1, NULL),
(1091, 'KS1', 'TJ4', 1, NULL),
(1092, 'KS1', 'TJ5', 1, NULL),
(1093, 'IS1', 'KS1', 1, NULL),
(1094, 'IS2', 'KS1', 1, NULL),
(1095, 'IS3', 'KS1', 1, NULL),
(1096, 'IS4', 'KS1', 1, NULL),
(1097, 'IS5', 'KS1', 1, NULL),
(1098, 'KD1', 'KS1', 1, NULL),
(1099, 'KD2', 'KS1', 1, NULL),
(1100, 'KD3', 'KS1', 1, NULL),
(1101, 'KD4', 'KS1', 1, NULL),
(1102, 'KD5', 'KS1', 1, NULL),
(1103, 'KK1', 'KS1', 1, NULL),
(1104, 'KK2', 'KS1', 1, NULL),
(1105, 'KK3', 'KS1', 1, NULL),
(1106, 'KK4', 'KS1', 1, NULL),
(1107, 'KK5', 'KS1', 1, NULL),
(1108, 'SK1', 'KS1', 1, NULL),
(1109, 'SK2', 'KS1', 1, NULL),
(1110, 'SK3', 'KS1', 1, NULL),
(1111, 'SK4', 'KS1', 1, NULL),
(1112, 'SK5', 'KS1', 1, NULL),
(1113, 'TJ1', 'KS1', 1, NULL),
(1114, 'TJ2', 'KS1', 1, NULL),
(1115, 'TJ3', 'KS1', 1, NULL),
(1116, 'TJ4', 'KS1', 1, NULL),
(1117, 'TJ5', 'KS1', 1, NULL),
(1118, 'KS2', 'IS1', 1, NULL),
(1119, 'KS2', 'IS2', 1, NULL),
(1120, 'KS2', 'IS3', 1, NULL),
(1121, 'KS2', 'IS4', 1, NULL),
(1122, 'KS2', 'IS5', 1, NULL),
(1123, 'KS2', 'KD1', 1, NULL),
(1124, 'KS2', 'KD2', 1, NULL),
(1125, 'KS2', 'KD3', 1, NULL),
(1126, 'KS2', 'KD4', 1, NULL),
(1127, 'KS2', 'KD5', 1, NULL),
(1128, 'KS2', 'KK1', 1, NULL),
(1129, 'KS2', 'KK2', 1, NULL),
(1130, 'KS2', 'KK3', 1, NULL),
(1131, 'KS2', 'KK4', 1, NULL),
(1132, 'KS2', 'KK5', 1, NULL),
(1133, 'KS2', 'KS1', 0.5, NULL),
(1134, 'KS2', 'KS2', 1, NULL),
(1135, 'KS2', 'SK1', 1, NULL),
(1136, 'KS2', 'SK2', 1, NULL),
(1137, 'KS2', 'SK3', 1, NULL),
(1138, 'KS2', 'SK4', 1, NULL),
(1139, 'KS2', 'SK5', 1, NULL),
(1140, 'KS2', 'TJ1', 1, NULL),
(1141, 'KS2', 'TJ2', 1, NULL),
(1142, 'KS2', 'TJ3', 1, NULL),
(1143, 'KS2', 'TJ4', 1, NULL),
(1144, 'KS2', 'TJ5', 1, NULL),
(1145, 'IS1', 'KS2', 1, NULL),
(1146, 'IS2', 'KS2', 1, NULL),
(1147, 'IS3', 'KS2', 1, NULL),
(1148, 'IS4', 'KS2', 1, NULL),
(1149, 'IS5', 'KS2', 1, NULL),
(1150, 'KD1', 'KS2', 1, NULL),
(1151, 'KD2', 'KS2', 1, NULL),
(1152, 'KD3', 'KS2', 1, NULL),
(1153, 'KD4', 'KS2', 1, NULL),
(1154, 'KD5', 'KS2', 1, NULL),
(1155, 'KK1', 'KS2', 1, NULL),
(1156, 'KK2', 'KS2', 1, NULL),
(1157, 'KK3', 'KS2', 1, NULL),
(1158, 'KK4', 'KS2', 1, NULL),
(1159, 'KK5', 'KS2', 1, NULL),
(1160, 'KS1', 'KS2', 2, NULL),
(1161, 'SK1', 'KS2', 1, NULL),
(1162, 'SK2', 'KS2', 1, NULL),
(1163, 'SK3', 'KS2', 1, NULL),
(1164, 'SK4', 'KS2', 1, NULL),
(1165, 'SK5', 'KS2', 1, NULL),
(1166, 'TJ1', 'KS2', 1, NULL),
(1167, 'TJ2', 'KS2', 1, NULL),
(1168, 'TJ3', 'KS2', 1, NULL),
(1169, 'TJ4', 'KS2', 1, NULL),
(1170, 'TJ5', 'KS2', 1, NULL),
(1171, 'KS3', 'IS1', 1, NULL),
(1172, 'KS3', 'IS2', 1, NULL),
(1173, 'KS3', 'IS3', 1, NULL),
(1174, 'KS3', 'IS4', 1, NULL),
(1175, 'KS3', 'IS5', 1, NULL),
(1176, 'KS3', 'KD1', 1, NULL),
(1177, 'KS3', 'KD2', 1, NULL),
(1178, 'KS3', 'KD3', 1, NULL),
(1179, 'KS3', 'KD4', 1, NULL),
(1180, 'KS3', 'KD5', 1, NULL),
(1181, 'KS3', 'KK1', 1, NULL),
(1182, 'KS3', 'KK2', 1, NULL),
(1183, 'KS3', 'KK3', 1, NULL),
(1184, 'KS3', 'KK4', 1, NULL),
(1185, 'KS3', 'KK5', 1, NULL),
(1186, 'KS3', 'KS1', 0.333333333, NULL),
(1187, 'KS3', 'KS2', 0.5, NULL),
(1188, 'KS3', 'KS3', 1, NULL),
(1189, 'KS3', 'SK1', 1, NULL),
(1190, 'KS3', 'SK2', 1, NULL),
(1191, 'KS3', 'SK3', 1, NULL),
(1192, 'KS3', 'SK4', 1, NULL),
(1193, 'KS3', 'SK5', 1, NULL),
(1194, 'KS3', 'TJ1', 1, NULL),
(1195, 'KS3', 'TJ2', 1, NULL),
(1196, 'KS3', 'TJ3', 1, NULL),
(1197, 'KS3', 'TJ4', 1, NULL),
(1198, 'KS3', 'TJ5', 1, NULL),
(1199, 'IS1', 'KS3', 1, NULL),
(1200, 'IS2', 'KS3', 1, NULL),
(1201, 'IS3', 'KS3', 1, NULL),
(1202, 'IS4', 'KS3', 1, NULL),
(1203, 'IS5', 'KS3', 1, NULL),
(1204, 'KD1', 'KS3', 1, NULL),
(1205, 'KD2', 'KS3', 1, NULL),
(1206, 'KD3', 'KS3', 1, NULL),
(1207, 'KD4', 'KS3', 1, NULL),
(1208, 'KD5', 'KS3', 1, NULL),
(1209, 'KK1', 'KS3', 1, NULL),
(1210, 'KK2', 'KS3', 1, NULL),
(1211, 'KK3', 'KS3', 1, NULL),
(1212, 'KK4', 'KS3', 1, NULL),
(1213, 'KK5', 'KS3', 1, NULL),
(1214, 'KS1', 'KS3', 3, NULL),
(1215, 'KS2', 'KS3', 2, NULL),
(1216, 'SK1', 'KS3', 1, NULL),
(1217, 'SK2', 'KS3', 1, NULL),
(1218, 'SK3', 'KS3', 1, NULL),
(1219, 'SK4', 'KS3', 1, NULL),
(1220, 'SK5', 'KS3', 1, NULL),
(1221, 'TJ1', 'KS3', 1, NULL),
(1222, 'TJ2', 'KS3', 1, NULL),
(1223, 'TJ3', 'KS3', 1, NULL),
(1224, 'TJ4', 'KS3', 1, NULL),
(1225, 'TJ5', 'KS3', 1, NULL),
(1226, 'KS4', 'IS1', 1, NULL),
(1227, 'KS4', 'IS2', 1, NULL),
(1228, 'KS4', 'IS3', 1, NULL),
(1229, 'KS4', 'IS4', 1, NULL),
(1230, 'KS4', 'IS5', 1, NULL),
(1231, 'KS4', 'KD1', 1, NULL),
(1232, 'KS4', 'KD2', 1, NULL),
(1233, 'KS4', 'KD3', 1, NULL),
(1234, 'KS4', 'KD4', 1, NULL),
(1235, 'KS4', 'KD5', 1, NULL),
(1236, 'KS4', 'KK1', 1, NULL),
(1237, 'KS4', 'KK2', 1, NULL),
(1238, 'KS4', 'KK3', 1, NULL),
(1239, 'KS4', 'KK4', 1, NULL),
(1240, 'KS4', 'KK5', 1, NULL),
(1241, 'KS4', 'KS1', 0.25, NULL),
(1242, 'KS4', 'KS2', 0.333333333, NULL),
(1243, 'KS4', 'KS3', 0.5, NULL),
(1244, 'KS4', 'KS4', 1, NULL),
(1245, 'KS4', 'SK1', 1, NULL),
(1246, 'KS4', 'SK2', 1, NULL),
(1247, 'KS4', 'SK3', 1, NULL),
(1248, 'KS4', 'SK4', 1, NULL),
(1249, 'KS4', 'SK5', 1, NULL),
(1250, 'KS4', 'TJ1', 1, NULL),
(1251, 'KS4', 'TJ2', 1, NULL),
(1252, 'KS4', 'TJ3', 1, NULL),
(1253, 'KS4', 'TJ4', 1, NULL),
(1254, 'KS4', 'TJ5', 1, NULL),
(1255, 'IS1', 'KS4', 1, NULL),
(1256, 'IS2', 'KS4', 1, NULL),
(1257, 'IS3', 'KS4', 1, NULL),
(1258, 'IS4', 'KS4', 1, NULL),
(1259, 'IS5', 'KS4', 1, NULL),
(1260, 'KD1', 'KS4', 1, NULL),
(1261, 'KD2', 'KS4', 1, NULL),
(1262, 'KD3', 'KS4', 1, NULL),
(1263, 'KD4', 'KS4', 1, NULL),
(1264, 'KD5', 'KS4', 1, NULL),
(1265, 'KK1', 'KS4', 1, NULL),
(1266, 'KK2', 'KS4', 1, NULL),
(1267, 'KK3', 'KS4', 1, NULL),
(1268, 'KK4', 'KS4', 1, NULL),
(1269, 'KK5', 'KS4', 1, NULL),
(1270, 'KS1', 'KS4', 4, NULL),
(1271, 'KS2', 'KS4', 3, NULL),
(1272, 'KS3', 'KS4', 2, NULL),
(1273, 'SK1', 'KS4', 1, NULL),
(1274, 'SK2', 'KS4', 1, NULL),
(1275, 'SK3', 'KS4', 1, NULL),
(1276, 'SK4', 'KS4', 1, NULL),
(1277, 'SK5', 'KS4', 1, NULL),
(1278, 'TJ1', 'KS4', 1, NULL),
(1279, 'TJ2', 'KS4', 1, NULL),
(1280, 'TJ3', 'KS4', 1, NULL),
(1281, 'TJ4', 'KS4', 1, NULL),
(1282, 'TJ5', 'KS4', 1, NULL),
(1283, 'KS5', 'IS1', 1, NULL),
(1284, 'KS5', 'IS2', 1, NULL),
(1285, 'KS5', 'IS3', 1, NULL),
(1286, 'KS5', 'IS4', 1, NULL),
(1287, 'KS5', 'IS5', 1, NULL),
(1288, 'KS5', 'KD1', 1, NULL),
(1289, 'KS5', 'KD2', 1, NULL),
(1290, 'KS5', 'KD3', 1, NULL),
(1291, 'KS5', 'KD4', 1, NULL),
(1292, 'KS5', 'KD5', 1, NULL),
(1293, 'KS5', 'KK1', 1, NULL),
(1294, 'KS5', 'KK2', 1, NULL),
(1295, 'KS5', 'KK3', 1, NULL),
(1296, 'KS5', 'KK4', 1, NULL),
(1297, 'KS5', 'KK5', 1, NULL),
(1298, 'KS5', 'KS1', 0.2, NULL),
(1299, 'KS5', 'KS2', 0.25, NULL),
(1300, 'KS5', 'KS3', 0.333333333, NULL),
(1301, 'KS5', 'KS4', 0.5, NULL),
(1302, 'KS5', 'KS5', 1, NULL),
(1303, 'KS5', 'SK1', 1, NULL),
(1304, 'KS5', 'SK2', 1, NULL),
(1305, 'KS5', 'SK3', 1, NULL),
(1306, 'KS5', 'SK4', 1, NULL),
(1307, 'KS5', 'SK5', 1, NULL),
(1308, 'KS5', 'TJ1', 1, NULL),
(1309, 'KS5', 'TJ2', 1, NULL),
(1310, 'KS5', 'TJ3', 1, NULL),
(1311, 'KS5', 'TJ4', 1, NULL),
(1312, 'KS5', 'TJ5', 1, NULL),
(1313, 'IS1', 'KS5', 1, NULL),
(1314, 'IS2', 'KS5', 1, NULL),
(1315, 'IS3', 'KS5', 1, NULL),
(1316, 'IS4', 'KS5', 1, NULL),
(1317, 'IS5', 'KS5', 1, NULL),
(1318, 'KD1', 'KS5', 1, NULL),
(1319, 'KD2', 'KS5', 1, NULL),
(1320, 'KD3', 'KS5', 1, NULL),
(1321, 'KD4', 'KS5', 1, NULL),
(1322, 'KD5', 'KS5', 1, NULL),
(1323, 'KK1', 'KS5', 1, NULL),
(1324, 'KK2', 'KS5', 1, NULL),
(1325, 'KK3', 'KS5', 1, NULL),
(1326, 'KK4', 'KS5', 1, NULL),
(1327, 'KK5', 'KS5', 1, NULL),
(1328, 'KS1', 'KS5', 5, NULL),
(1329, 'KS2', 'KS5', 4, NULL),
(1330, 'KS3', 'KS5', 3, NULL),
(1331, 'KS4', 'KS5', 2, NULL),
(1332, 'SK1', 'KS5', 1, NULL),
(1333, 'SK2', 'KS5', 1, NULL),
(1334, 'SK3', 'KS5', 1, NULL),
(1335, 'SK4', 'KS5', 1, NULL),
(1336, 'SK5', 'KS5', 1, NULL),
(1337, 'TJ1', 'KS5', 1, NULL),
(1338, 'TJ2', 'KS5', 1, NULL),
(1339, 'TJ3', 'KS5', 1, NULL),
(1340, 'TJ4', 'KS5', 1, NULL),
(1341, 'TJ5', 'KS5', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_sub`
--

CREATE TABLE `tb_sub` (
  `kode_sub` varchar(255) NOT NULL,
  `kode_kriteria` varchar(255) DEFAULT NULL,
  `nama_sub` varchar(255) DEFAULT NULL,
  `nilai_sub` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_sub`
--

INSERT INTO `tb_sub` (`kode_sub`, `kode_kriteria`, `nama_sub`, `nilai_sub`) VALUES
('IS1', 'C3', 'Sangat Baik (100)', 0.41621244548037),
('IS2', 'C3', 'Baik (75)', 0.26178798812998),
('IS3', 'C3', 'Cukup (50)', 0.161050406967),
('IS4', 'C3', 'Kurang (25)', 0.098572772875889),
('IS5', 'C3', 'Sangat Kurang (0)', 0.062376386546761),
('KD1', 'C4', 'Sangat Baik (100)', 0.41621244548037),
('KD2', 'C4', 'Baik (75)', 0.26178798812998),
('KD3', 'C4', 'Cukup (50)', 0.161050406967),
('KD4', 'C4', 'Kurang (25)', 0.098572772875889),
('KD5', 'C4', 'Sangat Kurang (0)', 0.062376386546761),
('KK1', 'C2', 'Sangat Baik (100)', 0.41621244548037),
('KK2', 'C2', 'Baik (75)', 0.26178798812998),
('KK3', 'C2', 'Cukup (50)', 0.161050406967),
('KK4', 'C2', 'Kurang (25)', 0.098572772875889),
('KK5', 'C2', 'Sangat Kurang (0)', 0.062376386546761),
('KS1', 'C6', 'Sangat Baik (100)', 0.41621244548037),
('KS2', 'C6', 'Baik (75)', 0.26178798812998),
('KS3', 'C6', 'Cukup (50)', 0.161050406967),
('KS4', 'C6', 'Kurang (25)', 0.098572772875889),
('KS5', 'C6', 'Sangat Kurang (0)', 0.062376386546761),
('SK1', 'C5', 'Sangat Baik (100)', 0.41621244548037),
('SK2', 'C5', 'Baik (75)', 0.26178798812998),
('SK3', 'C5', 'Cukup (50)', 0.161050406967),
('SK4', 'C5', 'Kurang (25)', 0.098572772875889),
('SK5', 'C5', 'Sangat Kurang (0)', 0.062376386546761),
('TJ1', 'C1', 'Sangat Baik (100)', 0.41621244548037),
('TJ2', 'C1', 'Baik (75)', 0.26178798812998),
('TJ3', 'C1', 'Cukup (50)', 0.161050406967),
('TJ4', 'C1', 'Kurang (25)', 0.098572772875889),
('TJ5', 'C1', 'Sangat Kurang (0)', 0.062376386546761);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `kode_user` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`kode_user`, `user`, `pass`, `nama_user`, `level`) VALUES
('A1', 'admin', 'admin', 'administrator', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_alternatif`
--
ALTER TABLE `tb_alternatif`
  ADD PRIMARY KEY (`kode_alternatif`);

--
-- Indexes for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  ADD PRIMARY KEY (`kode_kriteria`);

--
-- Indexes for table `tb_rel_alternatif`
--
ALTER TABLE `tb_rel_alternatif`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_rel_kriteria`
--
ALTER TABLE `tb_rel_kriteria`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_rel_sub`
--
ALTER TABLE `tb_rel_sub`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_sub`
--
ALTER TABLE `tb_sub`
  ADD PRIMARY KEY (`kode_sub`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_rel_alternatif`
--
ALTER TABLE `tb_rel_alternatif`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tb_rel_kriteria`
--
ALTER TABLE `tb_rel_kriteria`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `tb_rel_sub`
--
ALTER TABLE `tb_rel_sub`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1342;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
