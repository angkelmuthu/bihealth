-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.38-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for bi_healt
CREATE DATABASE IF NOT EXISTS `bi_healt` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bi_healt`;

-- Dumping structure for table bi_healt.m_carabayar
CREATE TABLE IF NOT EXISTS `m_carabayar` (
  `kdbayar` int(11) NOT NULL AUTO_INCREMENT,
  `carabayar` varchar(50) NOT NULL,
  PRIMARY KEY (`kdbayar`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table bi_healt.m_carabayar: ~2 rows (approximately)
/*!40000 ALTER TABLE `m_carabayar` DISABLE KEYS */;
INSERT INTO `m_carabayar` (`kdbayar`, `carabayar`) VALUES
	(1, 'Tunai'),
	(2, 'BPJS'),
	(3, 'Jaminan');
/*!40000 ALTER TABLE `m_carabayar` ENABLE KEYS */;

-- Dumping structure for table bi_healt.m_penyelenggara
CREATE TABLE IF NOT EXISTS `m_penyelenggara` (
  `kdpenyelenggara` int(11) NOT NULL AUTO_INCREMENT,
  `nmpenyelenggara` varchar(100) NOT NULL,
  PRIMARY KEY (`kdpenyelenggara`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table bi_healt.m_penyelenggara: ~4 rows (approximately)
/*!40000 ALTER TABLE `m_penyelenggara` DISABLE KEYS */;
INSERT INTO `m_penyelenggara` (`kdpenyelenggara`, `nmpenyelenggara`) VALUES
	(1, 'PEMKAB'),
	(2, 'Organisasi Sosial'),
	(3, 'Perusahaan'),
	(4, 'Swasta/Lainnya');
/*!40000 ALTER TABLE `m_penyelenggara` ENABLE KEYS */;

-- Dumping structure for table bi_healt.m_rs
CREATE TABLE IF NOT EXISTS `m_rs` (
  `kdrs` int(11) NOT NULL,
  `nm_rs` varchar(150) DEFAULT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `kelas` varchar(1) DEFAULT NULL,
  `dirut` varchar(200) DEFAULT NULL,
  `alamat` text,
  `kdpenyelenggara` int(11) DEFAULT '0',
  `kdkab` varchar(100) DEFAULT '0',
  `kodepos` int(11) DEFAULT NULL,
  `tlp` varchar(250) DEFAULT NULL,
  `fax` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`kdrs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bi_healt.m_rs: ~17 rows (approximately)
/*!40000 ALTER TABLE `m_rs` DISABLE KEYS */;
INSERT INTO `m_rs` (`kdrs`, `nm_rs`, `jenis`, `kelas`, `dirut`, `alamat`, `kdpenyelenggara`, `kdkab`, `kodepos`, `tlp`, `fax`) VALUES
	(3216072, 'RS Umum Bhakti Husada', 'RSU', 'C', 'dr. Agus Wiryana', 'Jl. R. E. Martadinata (By Pass) Cikarang - Bekasi', 2, 'Bekasi', 17530, '021 890 0530-31', '021 890 0570'),
	(3216163, 'RS Umum Sentra Medika', 'RSU', 'B', 'dr. Ruly Sjambali, FCN, SpGK (K), MKes', 'Jl. Raya Industri Pasirgombong Cikarang', 2, 'Bekasi', 17530, '021-8904160', '021-8904159'),
	(3216252, 'RS Umum Daerah Kab.Bekasi', 'RSU', 'B', 'dr. Hj. SUMARTI, M.Kes', 'Jl. Teuku Umar Cibitung,Bekasi', 1, 'Bekasi', 17511, '021-88374444', '021-8830152'),
	(3216329, 'RS Umum Permata Cibubur', 'RSU', 'C', 'dr. Mira Roziati Dachlan, MARS', 'Jl. Alternatif Cibubur - Cileungsi No. 6A, Kec. Jati Sampurna, Bekasi', 4, 'Kota Bekasi', 17435, '8458806', '84592146'),
	(3216389, 'RS Umum Hermina Galaxy', 'RSU', 'C', 'dr. Irma Suryani, MM', 'jl. Gardenia Raya Blok BA I No.11 Grand Galaxy City Bekasi', 3, 'Kota Bekasi', 17147, '021-8222525', '021-82414130'),
	(3216406, 'RS Umum Metro Hospitals', 'RSU', 'D', 'dr. Putu Tara Judica Wahyudyasa', 'Jl.Anggrek I B2/2 RT 01/11 Kec Mekar Mukti', 3, 'Bekasi', 17530, '(021)89835223', '(021)89830442'),
	(3216417, 'RS Umum Tiara', 'RSU', 'C', 'Dr. FAUZI ANDIWINATA', 'Jl. Raya Babelan No. 73 Desa Kebalen Kec. Babelan Kab. Bekasi', 3, 'Bekasi', 17610, '021 89131111', '2189132039'),
	(3216421, 'RS Umum Puspa Husada', 'RSU', 'D', 'dr. Ury Puspa Praninditya Putri, MARS', 'Jl. Raya Pondok Timur KM. 1', 4, 'Bekasi', 17510, '021-82618978-79', '021-82618977'),
	(3275017, 'RS Ibu dan Anak Karunia Kasih', 'RSIA', 'C', 'dr. Rudolf M. Usmany', 'Jl. Raya Jatiwaringin No.133, Pd Gede Bekasi', 4, 'Kota Bekasi', 17411, '021-8461970', '021-8460991'),
	(3275039, 'RS Umum Masmitra', 'RSU', 'C', 'Dr. Mira Puspitasari, MARS', 'Jl. Kelurahan Jati Makmur No.40, Pondok Gede Kota Bekasi', 4, 'Kota Bekasi', 17431, '2184971766', '218483047'),
	(3275050, 'RS Umum Budi Lestari', 'RSU', 'C', 'drg. Nina Narjati Soejoto, MPH', 'Jl. KH. Noer Ali No. 2 Kayuringin Bekasi Selatan - Bekasi', 3, 'Kota Bekasi', 17144, '8842336', '8893487'),
	(3275061, 'RS Helsa', 'RSU', 'C', 'dr. Dicky Yulius Pangkey, MARS', 'Jl. Raya Hankam No. 17 Pondok Melati Kota Bekasi', 4, 'Kota Bekasi', 17415, '8462565/64', '84992723'),
	(3275196, 'RS Umum Bella', 'RSU', 'C', 'Dr. Kristianto Budiono', 'Jl. Ir. H .Juanda No. 141, Bekasi', 4, 'Kota Bekasi', 17111, '021-8801778', '021-88351772'),
	(3275207, 'RS Umum Graha Juanda', 'RSU', 'C', 'Dr. YULI RESTIYANTI, MARS', 'Jl. IR. H. Juanda No. 326, Bekasi Timur', 4, 'Kota Bekasi', 17111, '021-8811832', '021-88346880'),
	(3275373, 'RS Umum Mitra Keluarga Cibubur', 'RSU', 'C', 'Dr. Ivonne Rampun', 'Jl. Alternatif Transyogi, Cibubur', 3, 'Kota Bekasi', 17433, '021-84311777', '021-84311661'),
	(3275392, 'RS Umum Awal Bros', 'RSU', 'B', 'Dr. Prima Yunika, MARS', 'Jl. KH. Noer Alie Kav. 17-18(kalimalang), Bekasi 17144', 3, 'Kota Bekasi', 17144, '021-8868888', '021-8855210');
/*!40000 ALTER TABLE `m_rs` ENABLE KEYS */;

-- Dumping structure for table bi_healt.tbl_hak_akses
CREATE TABLE IF NOT EXISTS `tbl_hak_akses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user_level` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

-- Dumping data for table bi_healt.tbl_hak_akses: ~14 rows (approximately)
/*!40000 ALTER TABLE `tbl_hak_akses` DISABLE KEYS */;
INSERT INTO `tbl_hak_akses` (`id`, `id_user_level`, `id_menu`) VALUES
	(15, 1, 1),
	(19, 1, 3),
	(21, 2, 1),
	(24, 1, 9),
	(28, 2, 3),
	(29, 2, 2),
	(30, 1, 2),
	(31, 1, 10),
	(32, 1, 11),
	(33, 1, 12),
	(34, 1, 13),
	(35, 1, 14),
	(36, 1, 15),
	(37, 1, 16),
	(38, 1, 17),
	(39, 1, 18),
	(40, 1, 19),
	(41, 1, 20);
/*!40000 ALTER TABLE `tbl_hak_akses` ENABLE KEYS */;

-- Dumping structure for table bi_healt.tbl_menu
CREATE TABLE IF NOT EXISTS `tbl_menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `url` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `is_main_menu` int(11) NOT NULL,
  `is_aktif` enum('y','n') NOT NULL COMMENT 'y=yes,n=no',
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Dumping data for table bi_healt.tbl_menu: ~8 rows (approximately)
/*!40000 ALTER TABLE `tbl_menu` DISABLE KEYS */;
INSERT INTO `tbl_menu` (`id_menu`, `title`, `url`, `icon`, `is_main_menu`, `is_aktif`) VALUES
	(1, 'KELOLA MENU', 'kelolamenu', 'fal fa-server', 15, 'y'),
	(2, 'KELOLA PENGGUNA', 'user', 'fal fa-users', 15, 'y'),
	(3, 'level PENGGUNA', 'userlevel', 'fal fa-users', 15, 'y'),
	(9, 'Contoh Form', 'welcome/form', 'fal fa-id-card', 15, 'y'),
	(11, 'CRUD GEN', 'Crudgen', 'fal fa-users', 15, 'y'),
	(15, 'SETTING', '#', 'fal fa-cogs', 0, 'y'),
	(17, 'Master RS', 'Master_RS', 'fal fa-heading', 0, 'y'),
	(18, 'Data Kunjungan', 'T_kunjungan', 'fal fa-inbox-in', 0, 'y'),
	(19, 'Data Pendapatan', 'T_pendapatan', 'fal fa-shopping-cart', 0, 'y'),
	(20, 'Dashboard', 'Dashboard', 'fal fa-users', 0, 'y');
/*!40000 ALTER TABLE `tbl_menu` ENABLE KEYS */;

-- Dumping structure for table bi_healt.tbl_setting
CREATE TABLE IF NOT EXISTS `tbl_setting` (
  `id_setting` int(11) NOT NULL AUTO_INCREMENT,
  `nama_setting` varchar(50) NOT NULL,
  `value` varchar(40) NOT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table bi_healt.tbl_setting: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_setting` DISABLE KEYS */;
INSERT INTO `tbl_setting` (`id_setting`, `nama_setting`, `value`) VALUES
	(1, 'Tampil Menu', 'ya');
/*!40000 ALTER TABLE `tbl_setting` ENABLE KEYS */;

-- Dumping structure for table bi_healt.tbl_user
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_users` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `images` text NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `is_aktif` enum('y','n') NOT NULL,
  PRIMARY KEY (`id_users`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table bi_healt.tbl_user: ~2 rows (approximately)
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` (`id_users`, `full_name`, `email`, `password`, `images`, `id_user_level`, `is_aktif`) VALUES
	(1, 'Super Admin', 'superadmin@gmail.com', '$2y$04$Wbyfv4xwihb..POfhxY5Y.jHOJqEFIG3dLfBYwAmnOACpH0EWCCdq', 'atomix_user31.png', 1, 'y'),
	(3, 'Administrator', 'admin@gmail.com', '$2y$04$Wbyfv4xwihb..POfhxY5Y.jHOJqEFIG3dLfBYwAmnOACpH0EWCCdq', '7.png', 2, 'y');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;

-- Dumping structure for table bi_healt.tbl_user_level
CREATE TABLE IF NOT EXISTS `tbl_user_level` (
  `id_user_level` int(11) NOT NULL AUTO_INCREMENT,
  `nama_level` varchar(30) NOT NULL,
  PRIMARY KEY (`id_user_level`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table bi_healt.tbl_user_level: ~2 rows (approximately)
/*!40000 ALTER TABLE `tbl_user_level` DISABLE KEYS */;
INSERT INTO `tbl_user_level` (`id_user_level`, `nama_level`) VALUES
	(1, 'Super Admin'),
	(2, 'Admin');
/*!40000 ALTER TABLE `tbl_user_level` ENABLE KEYS */;

-- Dumping structure for table bi_healt.t_10penyakit
CREATE TABLE IF NOT EXISTS `t_10penyakit` (
  `idicd` int(11) NOT NULL AUTO_INCREMENT,
  `kdrs` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `kdicd` int(11) NOT NULL,
  `ttl` int(11) NOT NULL,
  `sync` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idicd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bi_healt.t_10penyakit: ~0 rows (approximately)
/*!40000 ALTER TABLE `t_10penyakit` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_10penyakit` ENABLE KEYS */;

-- Dumping structure for table bi_healt.t_kamar
CREATE TABLE IF NOT EXISTS `t_kamar` (
  `idkamar` int(11) NOT NULL AUTO_INCREMENT,
  `kdrs` int(11) NOT NULL,
  `tgl` int(11) NOT NULL,
  `kdkelas` int(11) NOT NULL,
  `tt` int(11) NOT NULL,
  `tt_terpakai` int(11) NOT NULL,
  `sync` int(11) NOT NULL,
  PRIMARY KEY (`idkamar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bi_healt.t_kamar: ~0 rows (approximately)
/*!40000 ALTER TABLE `t_kamar` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_kamar` ENABLE KEYS */;

-- Dumping structure for table bi_healt.t_kematian
CREATE TABLE IF NOT EXISTS `t_kematian` (
  `idmati` int(11) NOT NULL AUTO_INCREMENT,
  `kdrs` int(11) NOT NULL,
  `tgl` int(11) NOT NULL,
  `ttl` int(11) NOT NULL,
  `sync` int(11) NOT NULL,
  PRIMARY KEY (`idmati`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bi_healt.t_kematian: ~0 rows (approximately)
/*!40000 ALTER TABLE `t_kematian` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_kematian` ENABLE KEYS */;

-- Dumping structure for table bi_healt.t_kunjungan
CREATE TABLE IF NOT EXISTS `t_kunjungan` (
  `idkunjungan` int(11) NOT NULL AUTO_INCREMENT,
  `kdrs` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `cara_bayar` int(11) NOT NULL DEFAULT '0',
  `rj` int(11) NOT NULL DEFAULT '0',
  `ri` int(11) NOT NULL DEFAULT '0',
  `igd` int(11) NOT NULL DEFAULT '0',
  `sync` datetime NOT NULL,
  PRIMARY KEY (`idkunjungan`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table bi_healt.t_kunjungan: ~6 rows (approximately)
/*!40000 ALTER TABLE `t_kunjungan` DISABLE KEYS */;
INSERT INTO `t_kunjungan` (`idkunjungan`, `kdrs`, `tgl`, `cara_bayar`, `rj`, `ri`, `igd`, `sync`) VALUES
	(1, 3216072, '2019-08-06', 1, 54, 41, 18, '2019-08-05 23:11:02'),
	(2, 3216072, '2019-08-06', 2, 114, 55, 21, '2019-08-05 06:08:30'),
	(3, 3216072, '2019-08-06', 3, 34, 14, 1, '2019-08-05 06:08:30'),
	(4, 3216163, '2019-08-06', 1, 23, 33, 12, '2019-08-05 23:11:02'),
	(5, 3216163, '2019-08-06', 3, 21, 8, 5, '2019-08-05 06:08:30'),
	(6, 3216163, '2019-08-06', 2, 171, 41, 15, '2019-08-05 06:08:30');
/*!40000 ALTER TABLE `t_kunjungan` ENABLE KEYS */;

-- Dumping structure for table bi_healt.t_lab
CREATE TABLE IF NOT EXISTS `t_lab` (
  `idlab` int(11) NOT NULL AUTO_INCREMENT,
  `kdrs` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `kdlab` int(11) NOT NULL,
  `standar` int(11) NOT NULL,
  `ttl` int(11) NOT NULL,
  `sync` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idlab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bi_healt.t_lab: ~0 rows (approximately)
/*!40000 ALTER TABLE `t_lab` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_lab` ENABLE KEYS */;

-- Dumping structure for table bi_healt.t_pendapatan
CREATE TABLE IF NOT EXISTS `t_pendapatan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kdrs` int(11) NOT NULL,
  `cara_bayar` int(11) NOT NULL DEFAULT '0',
  `lunas` int(11) NOT NULL DEFAULT '0',
  `hutang` int(11) NOT NULL DEFAULT '0',
  `tgl` date NOT NULL,
  `sycn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table bi_healt.t_pendapatan: ~6 rows (approximately)
/*!40000 ALTER TABLE `t_pendapatan` DISABLE KEYS */;
INSERT INTO `t_pendapatan` (`id`, `kdrs`, `cara_bayar`, `lunas`, `hutang`, `tgl`, `sycn`) VALUES
	(1, 3216072, 1, 97515500, 0, '2019-08-06', '2019-08-06 15:58:36'),
	(2, 3216072, 2, 67515500, 53145600, '2019-08-06', '2019-08-06 15:58:53'),
	(3, 3216072, 3, 47515500, 27155600, '2019-08-06', '2019-08-06 15:58:58'),
	(4, 3216163, 1, 87515500, 57155600, '2019-08-06', '2019-08-06 10:49:41'),
	(5, 3216163, 2, 87515500, 57155600, '2019-08-06', '2019-08-06 10:49:43'),
	(6, 3216163, 3, 87515500, 57155600, '2019-08-06', '2019-08-06 10:49:44');
/*!40000 ALTER TABLE `t_pendapatan` ENABLE KEYS */;

-- Dumping structure for table bi_healt.t_rujukan
CREATE TABLE IF NOT EXISTS `t_rujukan` (
  `idrujuk` int(11) NOT NULL AUTO_INCREMENT,
  `kdrs` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `kdrujuk` int(11) NOT NULL,
  `ttl` int(11) NOT NULL,
  `sync` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idrujuk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bi_healt.t_rujukan: ~0 rows (approximately)
/*!40000 ALTER TABLE `t_rujukan` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_rujukan` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
