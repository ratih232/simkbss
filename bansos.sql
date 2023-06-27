-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jun 2023 pada 09.42
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_control`
--

CREATE TABLE `tabel_control` (
  `id` int(11) NOT NULL,
  `nama_desa` varchar(255) NOT NULL,
  `logo_desa` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `maps` text NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_control`
--

INSERT INTO `tabel_control` (`id`, `nama_desa`, `logo_desa`, `alamat`, `maps`, `email`) VALUES
(1, 'Desa Perning', '1686809003.1723648aa9ab2a11b.png', 'Perning, Jetis, Kabupaten Mojokerto, Mojokerto 61352', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d9887.829379943943!2d112.4845825!3d-7.407482!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e780efb93e960f3%3A0x4200f8a855cdf07d!2sPerning%2C%20Jetis%2C%20Mojokerto%20Regency%2C%20East%20Java!5e0!3m2!1sen!2sid!4v1621074426231!5m2!1sen!2sid', 'pemdesperning123@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_dusun`
--

CREATE TABLE `tabel_dusun` (
  `id` int(11) NOT NULL,
  `dusun` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_dusun`
--

INSERT INTO `tabel_dusun` (`id`, `dusun`) VALUES
(1, 'Sidogede'),
(2, 'Perning');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_kependudukan`
--

CREATE TABLE `tabel_kependudukan` (
  `NO_KK` char(16) NOT NULL,
  `NIK` char(16) NOT NULL,
  `NAMA_LGKP` varchar(50) NOT NULL,
  `HBKEL` varchar(2) NOT NULL,
  `JK` tinyint(1) NOT NULL,
  `TMPT_LHR` varchar(30) NOT NULL,
  `TGL_LHR` date NOT NULL,
  `TAHUN` varchar(3) NOT NULL,
  `BULAN` varchar(2) NOT NULL,
  `HARI` varchar(2) NOT NULL,
  `NAMA_LGKP_AYAH` varchar(100) NOT NULL,
  `NAMA_LGKP_IBU` varchar(100) NOT NULL,
  `KECAMATAN` varchar(30) NOT NULL,
  `KELURAHAN` varchar(30) NOT NULL,
  `DSN` int(11) NOT NULL,
  `AGAMA` varchar(10) NOT NULL,
  `bantuan` varchar(2) NOT NULL,
  `jenis_bantuan` varchar(100) NOT NULL,
  `ibu_hamil` varchar(2) NOT NULL,
  `disabilitas` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_kependudukan`
--

INSERT INTO `tabel_kependudukan` (`NO_KK`, `NIK`, `NAMA_LGKP`, `HBKEL`, `JK`, `TMPT_LHR`, `TGL_LHR`, `TAHUN`, `BULAN`, `HARI`, `NAMA_LGKP_AYAH`, `NAMA_LGKP_IBU`, `KECAMATAN`, `KELURAHAN`, `DSN`, `AGAMA`, `bantuan`, `jenis_bantuan`, `ibu_hamil`, `disabilitas`) VALUES
('0987654321234567', '0987654321234587', 'terbaru', '1', 1, 'KABILA', '1996-12-06', '24', '10', '4', 'ADAM', 'rena', 'JETIS', 'PERNING', 1, 'islam', '0', '', '', '0'),
('1234567890987654', '1234567890987678', 'ada  test', '1', 1, 'PANGGULO', '1995-12-06', '25', '6', '8', 'test ada', 'adatest', 'JETIS', 'PERNING', 1, 'islam', '0', '', '', '0'),
('7503061001170005', '1302100901880001', 'ARIF FAREZA', '1', 1, 'MERAUKE', '1988-01-09', '33', '9', '1', 'AKMAL', 'YETTY DARZA', 'JETIS', 'PERNING', 1, 'islam', '0', '', '', '0'),
('3326160118080002', '3326160105070023', 'SUCI RAHAYU', '1', 2, 'BOJONEGORO', '1969-03-12', '54', '2', '28', 'SUWANI', 'KARNI', 'TILONGKABILA', 'BUTU', 2, 'islam', '1', 'PKH', '', '0'),
('3326160108060009', '3326160608070048', 'SUTRAWI', '1', 1, 'MOJOKERTO ', '1946-09-16', '76', '8', '23', 'KINONG', 'LUPI', 'TILONGKABILA', 'BUTU', 1, 'islam', '1', 'BLT', '', '0'),
('3326160111080002', '3326160608070060', 'SUTRISNO', '1', 1, 'MOJOKERTO ', '1978-04-09', '45', '2', '0', 'PONIDI', 'SUKIRAH', 'TILONGKABILA', 'BUTU', 1, 'islam', '', 'BST', '', '0'),
('3321116502910000', '3326160608070197', 'MASPUAH', '1', 2, 'MOJOKERTO ', '1938-07-23', '84', '10', '17', 'DIMIN', 'SUJI', 'TILONGKABILA', 'BUTU', 2, 'islam', '1', 'BPNT', '', '0'),
('3326160112050067', '3326160608070224', 'AGUS SUSANTO', '1', 1, 'MOJOKERTO ', '1980-09-17', '42', '8', '22', 'TIRAN', 'DARTI', 'TILONGKABILA', 'BUTU', 1, 'islam', '1', 'BST', '', '0'),
('3326163011050001', '3326160608070380', 'KODERI', '1', 1, 'BOJONEGORO', '1955-10-17', '67', '7', '23', 'HUDA', 'SARTI', 'TILONGKABILA', 'BUTU', 1, 'islam', '1', 'PKH', '', '0'),
('3326160108060009', '3326160902090003', 'BIBIT', '1', 2, 'MOJOKERTO ', '1930-02-13', '93', '3', '24', 'KARJO', 'SIRAH', 'TILONGKABILA', 'BUTU', 2, 'islam', '1', 'BPNT', '', '0'),
('3326160111080002', '3326160911060005', 'SUNDARI', '1', 2, 'MOJOKERTO ', '1985-05-11', '38', '0', '29', 'Lijo', 'kina', 'TILONGKABILA', 'BUTU', 2, 'islam', '1', 'PKH', '', '0'),
('7678909876543212', '4565432123456789', 'paling baru', '1', 1, 'PANGGULO', '2001-12-06', '19', '9', '2', 'tida tau', 'sapaee', 'JETIS', 'PERNING', 1, 'khonghucu', '0', '', '', '0'),
('7503061902180006', '7204040405770001', 'TASWIR', '1', 1, 'GORONTALO', '1972-09-10', '49', '1', '1', 'IDRUS', 'SARIBENNA', 'JETIS', 'PERNING', 2, 'islam', '1', 'PKH', '', '0'),
('7503061108160004', '7371114901030001', 'IZZAH FAUZIAH IRFAN', '4', 2, 'MAKASSAR', '2003-01-09', '18', '5', '7', 'IRFAN IDRIS', 'SAIDAH SYAMSUDDIN', 'JETIS', 'PERNING', 2, 'islam', '', '', '', '0'),
('7503060906150003', '7501190712690001', 'KARIM ADAM', '1', 1, 'SUWAWA', '1996-12-07', '24', '6', '7', 'ALI ADAM', 'ASRI TALANGO', 'PERNING', 'PERNING', 1, 'islam', '0', '', '', '0'),
('7503062403160004', '7502012203100002', 'RAHMAT SUAIB', '9', 1, 'TILAMUTA', '2010-03-22', '11', '6', '20', 'WAHAB SUAIBA', 'NINING POMALINGO', 'PERNING', 'JETIS', 2, 'islam', '0', '', '', '0'),
('7503030602080028', '7503030411020001', 'RIAN N. DAU', '4', 1, 'SUWAWA', '2002-11-04', '18', '7', '12', 'USMAN N. DAU', 'SEIKO ADAM', 'JETIS', 'PERNING', 1, 'islam', '', '', '', '0'),
('7503030602080028', '7503031510970001', 'NOVAL ADAM', '4', 1, 'LIMEHE TIMUR', '1997-11-20', '23', '6', '26', 'KARIM ADAM', 'MARYAM IDRIS', 'JETIS', 'PERNING', 1, 'islam', '', '', '', '0'),
('7503030602080028', '7503035010630002', 'HAPSA ADAM', '3', 2, 'SUWAWA', '1963-10-10', '57', '8', '6', 'ALI ADAM', 'ASRI TALANGO', 'JETIS', 'PERNING', 1, 'islam', '', '', '0', '0'),
('7503060906150003', '7503035703070001', 'NIKMAWATI ADAM', '9', 2, 'GORONTALO', '2007-03-17', '14', '6', '25', 'KARIM ADAM', 'ROSITA ALI', 'JETIS', 'PERNING', 1, 'islam', '0', '', '', '0'),
('7503061108160004', '7503060111850001', 'ISMAIL DJAFAR', '1', 1, 'KABILA', '1984-04-23', '37', '1', '23', 'DJAFAR ADAM', 'AMINAH RAHMAN', 'JETIS', 'PERNING', 2, 'islam', '1', 'BLT', '', '0'),
('7503061207120001', '7503060510770001', 'RAMIN G LADIKU', '1', 1, 'GORONTALO', '1967-10-05', '53', '8', '12', 'GUGE LADIKU', 'SAONA TOYO', 'JETIS', 'PERNING', 1, 'islam', '0', '', '', '0'),
('7503061001170005', '7503061208170001', 'ARFATTA DINAR FAREZA ', '9', 1, 'GORONTALO', '2017-08-12', '3', '10', '5', 'ARIF FAREZA', 'SELVIANA HASAN', 'JETIS', 'PERNING', 1, 'islam', '', '', '', '0'),
('7503061302080160', '7503061212710002', 'GUNTUR SAMANI', '1', 1, 'GORONTALO', '1971-12-12', '49', '6', '5', 'SALDI SAMANI', 'NUNU DAUD', 'JETIS', 'PERNING', 2, 'islam', '0', '', '', '0'),
('7503061211100005', '7503061308840001', 'YUMAN TALANGO', '1', 1, 'GORONTALO', '1984-08-13', '36', '10', '4', 'KARIM TALANGO', 'HAMI MASILI', 'JETIS', 'PERNING', 1, 'islam', '1', 'PKH', '', '0'),
('7503061302080124', '7503061705470001', 'BAHRUDIN KARIM', '7', 1, 'GORONTALO', '1947-05-17', '74', '0', '28', 'DINGGI KARIM', 'HAPISA HUSAIN', 'JETIS', 'PERNING', 1, 'islam', '', '', '', '0'),
('7503061302080056', '7503061706670001', 'DRS HENDRO NURJOKO MPKIM', '1', 1, 'LAMPUNG', '1967-06-17', '53', '11', '29', 'SENOHADICARETO', 'SRIMUN', 'JETIS', 'PERING', 2, 'islam', '1', 'BST', '', '0'),
('7503062403160004', '7503062306700001', 'WAHAB SUAIBA', '1', 1, 'GORONTALO', '1970-06-23', '50', '11', '23', 'HAJI SUAIBA', 'AISARI MOTI', 'JETIS', 'PERNING', 2, 'islam', '1', 'BLT', '', '0'),
('7503061406120004', '750306251187002', 'ABD RAHMAN MOKO', '1', 1, 'ABD RAHMAN MOKO', '1987-11-25', '33', '6', '21', 'RISMAN MOKO', 'ASNA MALANGI', 'JETIS', 'PERNING', 1, 'islam', '0', '', '', '0'),
('7503061302080160', '7503064206670001', 'HARLIN DJAFAR', '3', 2, 'GORONTALO', '1967-06-02', '54', '0', '15', 'ARDIN JAFAR', 'ADE HASAN', 'JETIS', 'PERNING', 2, 'islam', '', '', '0', '0'),
('7503061108160004', '7503065112160001', 'SYAFIRA AZ-ZAHRA DJAFAR', '9', 2, 'PANGGULO', '2016-12-11', '4', '6', '5', 'ISMAIL DJAFAR', 'VENDRIYATI USMAN', 'JETIS', 'PERNING', 2, 'islam', '', '', '', '0'),
('7503061001170005', '7503065407900001', 'SELVIANA HASAN', '3', 2, 'GORONTALO', '1990-03-14', '31', '6', '27', 'UMAR HASAN', 'MARYAM GANI', 'JETIS', 'PERNIG', 1, 'islam', '0', '', '0', '0'),
('7503061302080160', '7503065801010002', 'RISKAWATI SAMANI', '9', 2, 'GORONTALO', '2001-01-18', '20', '4', '30', 'GUNTUR SAMANI', 'HARLIN DJAFAR', 'JETIS', 'PERNING', 2, 'islam', '', '', '', '0'),
('7503061108160004', '7503070907130001', 'AQILAH ADRIYANA DJAFAR', '9', 2, 'PANGGULO', '2013-07-09', '7', '11', '7', 'ISMAIL DJAFAR', 'VENDRIYATI USMAN', 'JETIS', 'PERNING', 2, 'islam', '', '', '', '0'),
('7503061108160004', '7503075601900002', 'VENDRIYANTI USMAN', '3', 2, 'KABILA', '1990-01-16', '31', '5', '0', 'YACOB USMAN', 'NERLIN IGIRISA', 'JETIS', 'PERNING', 2, 'islam', '', '', '0', '0'),
('7503062705190003', '7505020511640001', 'SONI MANYOE', '1', 1, 'TOLANGO', '1984-11-05', '36', '7', '11', 'HAMSA MANYOE', 'MUNA KAI', 'JETIS', 'PERNING', 2, 'islam', '0', '', '', '0'),
('7503062401140002', '7571030805610001', 'SARJANA MILE', '1', 1, 'GORONTALO', '1961-05-08', '60', '1', '8', 'NAKI SADAPU', 'MARYAM NANGO', 'JETIS', 'PERNING', 1, 'islam', '1', 'BPNT', '', '0'),
('9876543212345678', '9876543219876543', 'test HBKL', '4', 1, 'GORONTALO', '1956-12-06', '64', '6', '10', 'HBKL', 'BBHKL', 'JETIS', 'PERNING', 1, 'islam', '', '', '', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_konsumsi`
--

CREATE TABLE `tabel_konsumsi` (
  `NIK` varchar(16) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `BAHAN_MAKANAN` varchar(10) NOT NULL,
  `FREKUENSI_PER_MINGGU` varchar(2) NOT NULL,
  `PAKAIAN_PER_TAHUN` varchar(2) NOT NULL,
  `MAKAN_PER_HARI` varchar(2) NOT NULL,
  `BIAYA_PENGOBATAN` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_konsumsi`
--

INSERT INTO `tabel_konsumsi` (`NIK`, `NAMA`, `BAHAN_MAKANAN`, `FREKUENSI_PER_MINGGU`, `PAKAIAN_PER_TAHUN`, `MAKAN_PER_HARI`, `BIAYA_PENGOBATAN`) VALUES
('0987654321234587', 'terbaru', '1', '0', '1', '2', '0'),
('1234567890987678', 'ada  test', '1', '0', '1', '2', '0'),
('1302100901880001', 'ARIF FAREZA', '1', '0', '1', '2', '0'),
('4565432123456789', 'paling baru', '1', '3', '3', '3', '1'),
('7204040405770001', 'TASWIR', '1', '0', '1', '0', '0'),
('7371114901030001', 'IZZAH FAUZIAH IRFAN', '', '', '', '', ''),
('7501190712690001', 'KARIM ADAM', '1', '0', '1', '1', '0'),
('7502012203100002', 'RAHMAT SUAIB', '', '0', '0', '0', '0'),
('7503030411020001', 'RIAN N. DAU', '', '', '', '', ''),
('7503031505690001', 'Explicabo Commodo d', '1', '0', '1', '2', '0'),
('7503031510970001', 'NOVAL ADAM', '', '', '', '', ''),
('7503035010630002', 'HAPSA ADAM', '', '', '', '', ''),
('7503035703070001', 'NIKMAWATI ADAM', '', '0', '0', '0', '0'),
('7503060111850001', 'ISMAIL DJAFAR', '1', '0', '1', '1', '0'),
('7503060510770001', 'RAMIN G LADIKU', '1', '0', '1', '2', '0'),
('7503061208170001', 'ARFATTA DINAR FAREZA ', '', '', '', '', ''),
('7503061212710002', '', '', '0', '0', '0', '0'),
('7503061308840001', 'YUMAN TALANGO', '1', '1', '1', '1', '0'),
('7503061705470001', 'BAHRUDIN KARIM', '', '', '', '', ''),
('7503061706670001', 'DRS HENDRO NURJOKO MPKIM', '1', '0', '1', '2', '0'),
('7503062306700001', 'WAHAB SUAIBA', '1', '1', '1', '2', '0'),
('750306251187002', 'ABD RAHMAN MOKO', '1', '0', '1', '2', '0'),
('7503064206670001', 'HARLIN DJAFAR', '', '', '', '', ''),
('7503065112160001', 'SYAFIRA AZ-ZAHRA DJAFAR', '', '', '', '', ''),
('7503065407900001', '', '', '0', '0', '0', '0'),
('7503065801010002', 'RISKAWATI SAMANI', '', '', '', '', ''),
('7503070907130001', 'AQILAH ADRIYANA DJAFAR', '', '', '', '', ''),
('7503075601900002', 'VENDRIYANTI USMAN', '', '', '', '', ''),
('7505020511640001', 'SONI MANYOE', '1', '1', '1', '2', '0'),
('7571030805610001', 'SARJANA MILE', '2', '0', '1', '2', '0'),
('9876543219876543', 'test HBKL', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pekerjaan`
--

CREATE TABLE `tabel_pekerjaan` (
  `NIK` varchar(16) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `PEKERJAAN` varchar(30) NOT NULL,
  `PENGHASILAN_PER_BULAN` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_pekerjaan`
--

INSERT INTO `tabel_pekerjaan` (`NIK`, `NAMA`, `PEKERJAAN`, `PENGHASILAN_PER_BULAN`) VALUES
('0987654321234587', 'terbaru', 'Buruh Tani', 599999),
('1234567890987678', 'ada  test', 'Buruh Bangunan', 300000),
('1302100901880001', 'ARIF FAREZA', 'Buruh Bangunan', 500000),
('4565432123456789', 'paling baru', 'Pengolahan/Industri', 50000000),
('7204040405770001', 'TASWIR', 'Buruh Bangunan', 500000),
('7371114901030001', 'IZZAH FAUZIAH IRFAN', '--Pilih Pekerjaan--', 0),
('7501190712690001', 'KARIM ADAM', 'Buruh Tani', 500000),
('7502012203100002', 'RAHMAT SUAIB', 'TKI', 0),
('7503030411020001', 'RIAN N. DAU', 'Tidak Bekerja', 0),
('7503031505690001', 'Explicabo Commodo d', 'Pengolahan/Industri', 70),
('7503031510970001', 'NOVAL ADAM', 'Tidak Bekerja', 0),
('7503035010630002', 'HAPSA ADAM', 'Buruh Tani', 500000),
('7503035703070001', 'NIKMAWATI ADAM', 'Perangkat Desa', 0),
('7503060111850001', 'ISMAIL DJAFAR', 'Buruh Bangunan', 500000),
('7503060510770001', 'RAMIN G LADIKU', 'Buruh Tani', 500000),
('7503061208170001', 'ARFATTA DINAR FAREZA ', 'Tidak Bekerja', 0),
('7503061212710002', 'GUNTUR SAMANI', 'Nelayan', 500000),
('7503061308840001', 'YUMAN TALANGO', 'Buruh Tani', 500000),
('7503061705470001', 'BAHRUDIN KARIM', 'Tidak Bekerja', 0),
('7503061706670001', 'DRS HENDRO NURJOKO MPKIM', 'Buruh Tani', 500000),
('7503062306700001', 'WAHAB SUAIBA', 'Buruh Perkebunan', 500000),
('750306251187002', 'ABD RAHMAN MOKO', 'Petani', 500000),
('7503064206670001', 'HARLIN DJAFAR', 'Tidak Bekerja', 0),
('7503065112160001', 'SYAFIRA AZ-ZAHRA DJAFAR', '--Pilih Pekerjaan--', 0),
('7503065407900001', 'SELVIANA HASAN', 'Tidak Bekerja', 0),
('7503065801010002', 'RISKAWATI SAMANI', 'Tidak Bekerja', 0),
('7503070907130001', 'AQILAH ADRIYANA DJAFAR', '--Pilih Pekerjaan--', 0),
('7503075601900002', 'VENDRIYANTI USMAN', 'Buruh Tani', 500000),
('7505020511640001', 'SONI MANYOE', 'Buruh Bangunan', 400000),
('7571030805610001', 'SARJANA MILE', 'Buruh Tani', 500000),
('9876543219876543', 'test HBKL', 'Buruh Tani', 500000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pendidikan`
--

CREATE TABLE `tabel_pendidikan` (
  `NIK` varchar(16) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `PENDIDIKAN_TERAKHIR` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_pendidikan`
--

INSERT INTO `tabel_pendidikan` (`NIK`, `NAMA`, `PENDIDIKAN_TERAKHIR`) VALUES
('0987654321234587', 'terbaru', 'Tidak Tamat SD'),
('1234567890987678', 'ada  test', 'Tidak Tamat SD'),
('1302100901880001', 'ARIF FAREZA', 'Tidak Tamat SD'),
('4565432123456789', 'paling baru', 'S3 dan Sederajat'),
('7204040405770001', 'TASWIR', 'Tidak Tamat SD'),
('7371114901030001', 'IZZAH FAUZIAH IRFAN', 'SMA dan Sederajat'),
('7501190712690001', 'KARIM ADAM', 'Tidak Tamat SD'),
('7502012203100002', 'RAHMAT SUAIB', 'SD dan Sederajat'),
('7503030411020001', 'RIAN N. DAU', 'S1 dan Sederajat'),
('7503031505690001', 'Explicabo Commodo d', 'Tidak Tamat SD'),
('7503031510970001', 'NOVAL ADAM', 'S1 dan Sederajat'),
('7503035010630002', 'HAPSA ADAM', 'Tidak Tamat SD'),
('7503035703070001', 'NIKMAWATI ADAM', 'SMP dan Sederajat'),
('7503060111850001', 'ISMAIL DJAFAR', 'Tidak Tamat SD'),
('7503060510770001', 'RAMIN G LADIKU', 'SMA dan Sederajat'),
('7503061208170001', 'ARFATTA DINAR FAREZA ', 'SD dan Sederajat'),
('7503061212710002', '', '--Pilih Pendidikan--'),
('7503061308840001', 'YUMAN TALANGO', 'Tidak Tamat SD'),
('7503061705470001', 'BAHRUDIN KARIM', 'Tidak Tamat SD'),
('7503061706670001', 'DRS HENDRO NURJOKO MPKIM', 'Tidak Tamat SD'),
('7503062306700001', 'WAHAB SUAIBA', 'Tidak Tamat SD'),
('750306251187002', 'ABD RAHMAN MOKO', 'Tidak Tamat SD'),
('7503064206670001', 'HARLIN DJAFAR', 'Tidak Sekolah'),
('7503065112160001', 'SYAFIRA AZ-ZAHRA DJAFAR', 'Tidak Sekolah'),
('7503065407900001', '', '--Pilih Pendidikan--'),
('7503065801010002', 'RISKAWATI SAMANI', 'S1 dan Sederajat'),
('7503070907130001', 'AQILAH ADRIYANA DJAFAR', 'SD dan Sederajat'),
('7503075601900002', 'VENDRIYANTI USMAN', 'SMP dan Sederajat'),
('7505020511640001', 'SONI MANYOE', 'Tidak Tamat SD'),
('7571030805610001', 'SARJANA MILE', 'Tidak Tamat SD'),
('9876543219876543', 'test HBKL', 'Tidak Tamat SD');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_rumah`
--

CREATE TABLE `tabel_rumah` (
  `NIK` varchar(16) NOT NULL,
  `LUAS_LANTAI` int(2) NOT NULL,
  `JENIS_LANTAI` varchar(20) NOT NULL,
  `JENIS_DINDING` varchar(30) NOT NULL,
  `FASILITAS_BAB` tinyint(1) NOT NULL,
  `SUMBER_PENERANGAN` tinyint(1) NOT NULL,
  `SUMBER_AIR_MINUM` varchar(30) NOT NULL,
  `BAHAN_BAKAR_MEMASAK` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_rumah`
--

INSERT INTO `tabel_rumah` (`NIK`, `LUAS_LANTAI`, `JENIS_LANTAI`, `JENIS_DINDING`, `FASILITAS_BAB`, `SUMBER_PENERANGAN`, `SUMBER_AIR_MINUM`, `BAHAN_BAKAR_MEMASAK`) VALUES
('', 0, '--Pilih Jenis Lantai', '--Pilih Jenis Dinding--', 1, 1, '--Pilih Sumber Air Minum--', '--Pilih Bahan Bakar '),
('0987654321234587', 1, 'Semen', 'Tembok Tanpa Di Plester', 0, 0, 'Air Hujan', 'Minyak Tanah'),
('1234567890987678', 1, 'Tanah', 'Kayu berkualitas rendah/Bambu', 0, 0, 'Mata air tidak terlindung', 'Kayu Bakar'),
('1302100901880001', 1, 'Bambu', 'Bambu', 0, 0, 'Sungai', 'Kayu Bakar'),
('7204040405770001', 1, 'Bambu', 'Kayu berkualitas rendah/Bambu', 0, 0, 'Mata air tidak terlindung', 'Kayu Bakar'),
('7501190712690001', 1, 'Bambu', 'Kayu berkualitas rendah/Bambu', 0, 0, 'Mata air tidak terlindung', 'Kayu Bakar'),
('7503060111850001', 1, 'Kayu/Papan', 'Rumbia', 0, 0, 'Sungai', 'Kayu Bakar'),
('7503061212710002', 1, 'Kayu/Papan', 'Rumbia', 0, 0, 'Mata Air tidak Terlindung', 'Kayu Bakar'),
('7503061308840001', 1, 'Bambu', 'Kayu berkualitas rendah/Bambu', 0, 0, 'Mata air tidak terlindung', 'Kayu Bakar'),
('7503061706670001', 1, 'Kayu/Papan', 'Bambu', 0, 0, 'Sungai', 'Kayu Bakar'),
('7503062306700001', 1, 'Bambu', 'Rumbia', 0, 0, 'Mata Air tidak Terlindung', 'Kayu Bakar'),
('750306251187002', 1, 'Kayu/Papan', 'Bambu', 0, 0, 'Air Hujan', 'Minyak Tanah'),
('7505020511640001', 1, 'Bambu', 'Rumbia', 0, 0, 'Mata Air tidak Terlindung', 'Kayu Bakar'),
('7571030805610001', 1, 'Bambu', 'Bambu', 0, 0, 'Mata Air tidak Terlindung', 'Kayu Bakar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_tabungan`
--

CREATE TABLE `tabel_tabungan` (
  `NIK` varchar(16) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `KEPEMILIKAN_TABUNGAN` varchar(1) NOT NULL,
  `JENIS_TABUNGAN` varchar(4) NOT NULL,
  `HARGA` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_tabungan`
--

INSERT INTO `tabel_tabungan` (`NIK`, `NAMA`, `KEPEMILIKAN_TABUNGAN`, `JENIS_TABUNGAN`, `HARGA`) VALUES
('0987654321234587', 'terbaru', '0', '', ''),
('1234567890987678', 'ada  test', '0', '', ''),
('1302100901880001', 'ARIF FAREZA', '0', '', ''),
('4565432123456789', 'paling baru', '1', '5', '100000000'),
('7204040405770001', 'TASWIR', '0', '', ''),
('7371114901030001', 'IZZAH FAUZIAH IRFAN', '', '', ''),
('7501190712690001', 'KARIM ADAM', '0', '', ''),
('7502012203100002', 'RAHMAT SUAIB', '0', '', ''),
('7503030411020001', 'RIAN N. DAU', '', '', ''),
('7503031505690001', 'Explicabo Commodo d', '0', '', ''),
('7503031510970001', 'NOVAL ADAM', '', '', ''),
('7503035010630002', 'HAPSA ADAM', '', '', ''),
('7503035703070001', 'NIKMAWATI ADAM', '0', '', ''),
('7503060111850001', 'ISMAIL DJAFAR', '0', '', ''),
('7503060510770001', 'RAMIN G LADIKU', '0', '', ''),
('7503061208170001', 'ARFATTA DINAR FAREZA ', '', '', ''),
('7503061212710002', '', '0', '', ''),
('7503061308840001', 'YUMAN TALANGO', '0', '', ''),
('7503061705470001', 'BAHRUDIN KARIM', '', '', ''),
('7503061706670001', 'DRS HENDRO NURJOKO MPKIM', '0', '', ''),
('7503062306700001', 'WAHAB SUAIBA', '0', '', ''),
('750306251187002', 'ABD RAHMAN MOKO', '0', '', ''),
('7503064206670001', 'HARLIN DJAFAR', '', '', ''),
('7503065112160001', 'SYAFIRA AZ-ZAHRA DJAFAR', '', '', ''),
('7503065407900001', '', '0', '', ''),
('7503065801010002', 'RISKAWATI SAMANI', '', '', ''),
('7503070907130001', 'AQILAH ADRIYANA DJAFAR', '', '', ''),
('7503075601900002', 'VENDRIYANTI USMAN', '', '', ''),
('7505020511640001', 'SONI MANYOE', '0', '', ''),
('7571030805610001', 'SARJANA MILE', '0', '', ''),
('9876543219876543', 'test HBKL', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(10) NOT NULL,
  `pass` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `pass`) VALUES
(2, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_control`
--
ALTER TABLE `tabel_control`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabel_dusun`
--
ALTER TABLE `tabel_dusun`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabel_kependudukan`
--
ALTER TABLE `tabel_kependudukan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indeks untuk tabel `tabel_konsumsi`
--
ALTER TABLE `tabel_konsumsi`
  ADD PRIMARY KEY (`NIK`);

--
-- Indeks untuk tabel `tabel_pekerjaan`
--
ALTER TABLE `tabel_pekerjaan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indeks untuk tabel `tabel_pendidikan`
--
ALTER TABLE `tabel_pendidikan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indeks untuk tabel `tabel_rumah`
--
ALTER TABLE `tabel_rumah`
  ADD PRIMARY KEY (`NIK`);

--
-- Indeks untuk tabel `tabel_tabungan`
--
ALTER TABLE `tabel_tabungan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tabel_control`
--
ALTER TABLE `tabel_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tabel_dusun`
--
ALTER TABLE `tabel_dusun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
