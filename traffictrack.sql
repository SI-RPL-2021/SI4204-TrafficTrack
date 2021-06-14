-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table traffictrack.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table traffictrack.admin: ~1 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`, `nama`, `password`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin', NULL, NULL);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Dumping structure for table traffictrack.cctv
CREATE TABLE IF NOT EXISTS `cctv` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table traffictrack.cctv: ~3 rows (approximately)
/*!40000 ALTER TABLE `cctv` DISABLE KEYS */;
INSERT INTO `cctv` (`id`, `nama`, `link`, `public`, `created_at`, `updated_at`) VALUES
	(1, 'CCTV 1', 'http://119.2.50.116:8082/mjpg/video.mjpg', 1, NULL, '2021-06-14 05:27:42'),
	(3, 'CCTV 2', 'http://103.217.216.198:8000/mjpg/video.mjpg', 1, '2021-06-14 05:55:54', '2021-06-14 05:55:54'),
	(4, 'CCTV 3', 'http://119.2.50.114:88/mjpg/video.mjpg', 0, '2021-06-14 05:58:43', '2021-06-14 05:58:43');
/*!40000 ALTER TABLE `cctv` ENABLE KEYS */;

-- Dumping structure for table traffictrack.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table traffictrack.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table traffictrack.feedback
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_pengguna` int(11) NOT NULL,
  `feedback` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table traffictrack.feedback: ~0 rows (approximately)
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;

-- Dumping structure for table traffictrack.laporan
CREATE TABLE IF NOT EXISTS `laporan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_pengguna` int(11) NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `berat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `komentar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `diterima` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table traffictrack.laporan: ~2 rows (approximately)
/*!40000 ALTER TABLE `laporan` DISABLE KEYS */;
INSERT INTO `laporan` (`id`, `id_pengguna`, `jenis`, `berat`, `alamat`, `foto`, `komentar`, `diterima`, `created_at`, `updated_at`) VALUES
	(1, 1, 'kecelakaan', 'besar', NULL, '2366165pwTBuq.png', 'asd', 1, NULL, '2021-06-14 05:36:36');
/*!40000 ALTER TABLE `laporan` ENABLE KEYS */;

-- Dumping structure for table traffictrack.list_perempatan
CREATE TABLE IF NOT EXISTS `list_perempatan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tingkatmacet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecepatanmaks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lampu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'hijau',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table traffictrack.list_perempatan: ~0 rows (approximately)
/*!40000 ALTER TABLE `list_perempatan` DISABLE KEYS */;
/*!40000 ALTER TABLE `list_perempatan` ENABLE KEYS */;

-- Dumping structure for table traffictrack.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table traffictrack.migrations: ~10 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(84, '2014_10_12_000000_create_users_table', 1),
	(85, '2014_10_12_100000_create_password_resets_table', 1),
	(86, '2019_08_19_000000_create_failed_jobs_table', 1),
	(87, '2021_03_28_223026_create_pengguna_table', 1),
	(88, '2021_03_29_033554_create_polantas_table', 1),
	(89, '2021_04_15_215929_create_list_perempatan_table', 1),
	(90, '2021_04_15_223104_create_laporan_table', 1),
	(91, '2021_04_15_225713_create_admin_table', 1),
	(92, '2021_04_16_002515_create_feedback_table', 1),
	(93, '2021_06_14_040821_create_cctv_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table traffictrack.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table traffictrack.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table traffictrack.pengguna
CREATE TABLE IF NOT EXISTS `pengguna` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ktp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terverifikasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'belum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table traffictrack.pengguna: ~1 rows (approximately)
/*!40000 ALTER TABLE `pengguna` DISABLE KEYS */;
INSERT INTO `pengguna` (`id`, `nama`, `email`, `password`, `ktp`, `terverifikasi`, `created_at`, `updated_at`) VALUES
	(1, 'wadoo', 'adhikaputrahermanda39@gmail.com', '123', '88781_93lQ6XI_3x.png', 'sudah', '2021-06-14 05:28:54', '2021-06-14 06:12:06');
/*!40000 ALTER TABLE `pengguna` ENABLE KEYS */;

-- Dumping structure for table traffictrack.polantas
CREATE TABLE IF NOT EXISTS `polantas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_lantas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table traffictrack.polantas: ~1 rows (approximately)
/*!40000 ALTER TABLE `polantas` DISABLE KEYS */;
INSERT INTO `polantas` (`id`, `id_lantas`, `password`, `created_at`, `updated_at`) VALUES
	(1, 'LANTAS1', '123', '2021-06-14 05:52:03', '2021-06-14 05:52:03');
/*!40000 ALTER TABLE `polantas` ENABLE KEYS */;

-- Dumping structure for table traffictrack.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table traffictrack.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
