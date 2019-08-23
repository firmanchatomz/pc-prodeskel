-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Agu 2019 pada 11.22
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pc_prodeskel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('admin','rw') NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `level`, `nama`, `alamat`, `keterangan`) VALUES
(1, 'admin', '$2y$10$4M5YgiFwDr3e3DXjzZX.7.EvxX93AO5q9XF85mWnlZO4198Jklr1W', 'admin', 'administrator', '', ''),
(8, 'RW2', '$2y$10$SwdrTMdlHLbR6.tBW0Pf3eYsNPWf.NvX7T6oVyrxfJ5yE48504HH6', 'rw', 'siti aminah', 'KPJE', 'operator rw 2'),
(10, 'RW6', '$2y$10$.V..OexSS8328osK4lPYCOUY81AOR5.qByzU95X1GAq8XyVclCb6C', 'rw', 'tiara', 'kp nangewer', 'operator rw 6'),
(11, 'RW2', '$2y$10$U6ySuiGpYHSwdxUHkb9Vz.NTpC40Bi8BeJRnRqnnBU5ze0FcoEAyy', 'rw', 'siti aminah', 'kp jeungjing', 'operator rw 2'),
(12, 'RW8', '$2y$10$e3vBjf9L35JFuZqS1dRrM.2xtjXDCwZECGq7kmJRJKjySFnDYreBi', 'rw', 'devi', 'kp parigi', 'operator rw 8'),
(13, 'RW1', '$2y$10$UgAkjguTJtj/jB/RAQO5NeNABGApJbWL/jb8/kKUUTqsja3UNvkvu', 'rw', 'UCUM', 'kp jeungjing', 'operator rw 1'),
(14, 'desa', '$2y$10$tnW92StbHT72pStudHwaFOvNhfC21ckcIfFeu5gcisYXqAI7z3JiK', 'rw', 'desa pelitaasih', '-', 'operator desa'),
(15, 'RW7', '$2y$10$j50wwlpQAgQ62wel1Ywu6u61AULDVdtE/vMYd4L1D5lQ3ZN0Nt1Ry', 'rw', 'gungun gunawan', 'rt 3 rw 7', 'operator rw 7'),
(16, 'RW4', '$2y$10$/1q5PTi3DVe5DLH2w2/DG.wrvQW1cHxF5zU0nY8HQI7XD8LULatbm', 'rw', 'wulan', 'kp dayeuh manggung', 'operator 4'),
(17, 'RW5', '$2y$10$c6JHMTAs92iutKTyQlDSqOczPeVnybb/KsLy38AgmYectvGOFKzUq', 'rw', 'ani', 'kp nangewer', 'operator rw 5'),
(18, 'RW3', '$2y$10$c9u5nyABmqCO0OL9Qojc9eW2ZBr1Lz9KV5Buj0.ZYCED/XqkU.eGS', 'rw', 'fitri', 'kp dayeuh manggung rt 2 rw 3', 'operator rw 3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `aruskk`
--

CREATE TABLE `aruskk` (
  `id_aruskk` int(11) NOT NULL,
  `no_kk` varchar(16) NOT NULL,
  `status_arus` enum('masuk','keluar') NOT NULL,
  `tgl_arus` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_label` tinyint(4) NOT NULL,
  `tgl_dibuat` datetime NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `isi_berita` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `id_label`, `tgl_dibuat`, `judul_berita`, `isi_berita`, `gambar`) VALUES
(1, 2, '2019-03-27 18:47:47', 'demisioner himatif melaksanakan kunjungan ke daerah jakarta selatan', 'keberangkatan dimulai pada hari sabtu tanggal', 'himatif.jpg'),
(2, 2, '2019-03-27 19:06:29', 'demisioner himatif melaksanakan kunjungan ke daerah jakarta selatan', '<p>kunjungan dilakukan pada pukul 12.00 wib. semua mahasiswa demisioner himpunan teknik informatika mengikuti acara ini</p>\r\n<p>beberapa hal yang perlu disiapkan adalah</p>\r\n<ul>\r\n<li>pakaian jaket almamater unsil</li>\r\n<li>buku pedoman</li>\r\n<li>obat obatan pribadi</li>\r\n</ul>', 'himatif2.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `id_label` int(11) NOT NULL,
  `tgl_dibuat` date NOT NULL,
  `tgl_kegiatan` date NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `perihal` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kematian`
--

CREATE TABLE `kematian` (
  `id_kematian` int(11) NOT NULL,
  `no_nik` varchar(16) NOT NULL,
  `tgl_kematian` date NOT NULL,
  `waktu_kematian` time NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `tempat_pemakaman` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kk`
--

CREATE TABLE `kk` (
  `no_kk` varchar(16) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `tgl_dibuat` date NOT NULL,
  `kepala_keluarga` varchar(50) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `rt` varchar(4) NOT NULL,
  `rw` varchar(4) NOT NULL,
  `nama_dusun` varchar(50) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `sumber_data` enum('Kartu Keluarga','Profil Desa') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kk`
--

INSERT INTO `kk` (`no_kk`, `id_admin`, `tgl_dibuat`, `kepala_keluarga`, `alamat`, `rt`, `rw`, `nama_dusun`, `pekerjaan`, `jabatan`, `sumber_data`) VALUES
('3205390205840005', 18, '2019-08-23', 'SURYANA', 'KP. DAYEUHMANGGUNG', '0000', '0000', 'III DAYEUHMANGGUNG', 'PEDAGANG', '-', 'Kartu Keluarga'),
('3205390410180003', 17, '2019-08-23', 'RIKI ZULKIFLI', 'KP.NANGGEWER', '003', '005', '', 'PEDAGANG', '-', 'Kartu Keluarga'),
('3205390412180011', 14, '2019-08-23', 'MITHA NURFATIMAH', 'KP JEUNGJING', '002', '002', '1 JEUNGJING', 'KARYAWAN SWASTA', '-', 'Kartu Keluarga'),
('3205391008150014', 8, '2019-08-23', 'ABDUL KOSIM', 'KP JEUNGJING', '002', '002', '1 JEUNGJING', 'KARYAWAN SWASTA', '-', 'Kartu Keluarga'),
('3205391312080017', 15, '2019-08-23', 'HENI HUDAYA', 'KP BATUNUNGGUL', '001', '007', 'III DAYEUHMANGGUNG', 'WIRASWASTA', '-', 'Kartu Keluarga'),
('3205391901170008', 10, '2019-08-23', 'SAPI&#39;I', 'KP NANGGEWER', '001', '006', 'II CISANYOH', 'PETANI/PEKEBUN', '-', 'Kartu Keluarga'),
('3205391908150004', 14, '2019-08-23', 'HENDRI', 'KP. BATUNUNGGUL', '001', '007', 'III DAYEUH MANGGUNG', '-', '-', 'Kartu Keluarga'),
('3205392212070311', 13, '2019-08-23', 'OHA PURAWINATA', 'KP JEUNGJING', '005', '001', '1', 'PENSIUNAN', '-', 'Kartu Keluarga'),
('3205392212070312', 13, '2019-08-23', 'USMAN', 'KPJEUNGJING', '005', '001', '1', 'PETANI', '-', 'Kartu Keluarga'),
('3205392309140009', 18, '2019-08-23', 'GUNAWAN', 'KP.DAYEUHMANGGUNG', '0000', '0000', 'III DAYEUHMANGGUNG', 'BURUH HARIAN LEPAS', '-', 'Kartu Keluarga'),
('3205392311150009', 15, '2019-08-23', 'HENDI SETIAWAN', 'KP. BATUNUNGGUL', '001', '007', 'III DAYEUHMANGGUNG', 'MEKANIK', '-', 'Kartu Keluarga'),
('3205392411170003', 16, '2019-08-23', 'CICI', 'KP.CISANYOH', '0002', '0004', 'II CISANYOH', 'MENGURUS RUMAH TANGGA', '-', 'Kartu Keluarga'),
('3205392508170008', 8, '2019-08-16', 'SURYANA', 'KP.DAYEUHMANGGUNG', '0000', '0000', '3', 'PEDAGANG', '_', 'Kartu Keluarga'),
('3205392612070150', 16, '2019-08-23', 'PANDI SOPANDI', 'KP.CISANYOH', '0002', '0004', 'II CISANYOH', 'WIRASWASTA', 'KETUA RW 04', 'Kartu Keluarga'),
('3205392712070052', 12, '2019-08-23', 'IDI  RASDI', 'KP PARIGI', '001', '008', 'III DAYEUH MANGGUNG', 'PETANI', 'RW', 'Kartu Keluarga'),
('3205392812070124', 10, '2019-08-23', 'DULOH ISKANDAR', 'KP NANGGEWER', '001', '006', 'II CISANYOH', 'PETANI/PEKEBUN', '-', 'Kartu Keluarga'),
('3205392812070135', 10, '2019-08-23', 'OJO', 'KP NANGGEWER', '001', '006', 'II CISANYOH', 'PETANI/PEKEBUN', '-', 'Kartu Keluarga'),
('3205392906090001', 8, '2019-08-23', 'EVI SOBIRIN', 'KP JEUNGJING', '002', '002', '1 JEUNGJING', 'WIRASWASTA', 'KAUR KEUANGAN', 'Kartu Keluarga'),
('3205393112070128', 15, '2019-08-23', 'RUDI', 'KP BATU NUNGGUL', '001', '007', '', 'PEDAGANG', '-', 'Kartu Keluarga'),
('3295392508110002', 8, '2019-08-16', 'GUNGUN GUNAWAN MULYANA', 'KP.BATU NUNGGUL', '0003', '0007', '03', 'Wiraswasta', '-', 'Kartu Keluarga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ktp`
--

CREATE TABLE `ktp` (
  `no_nik` varchar(16) NOT NULL,
  `no_urut` tinyint(4) NOT NULL,
  `no_kk` varchar(16) NOT NULL,
  `no_akte` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` varchar(20) NOT NULL,
  `pendidikan` varchar(50) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `tgl_dibuat` date NOT NULL,
  `perkawinan` varchar(15) NOT NULL,
  `hubungan_keluarga` varchar(50) NOT NULL,
  `kewarganegaraan` varchar(30) NOT NULL,
  `nama_orangtua` varchar(50) NOT NULL,
  `golongan_darah` varchar(20) NOT NULL,
  `suku` varchar(100) NOT NULL,
  `kb` varchar(100) NOT NULL,
  `cacat_fisik` varchar(255) NOT NULL,
  `cacat_mental` varchar(255) NOT NULL,
  `wajib_pajak` varchar(255) NOT NULL,
  `lembaga_pemerintahan` text NOT NULL,
  `lembaga_masyarakat` text NOT NULL,
  `lembaga_ekonomi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ktp`
--

INSERT INTO `ktp` (`no_nik`, `no_urut`, `no_kk`, `no_akte`, `nama`, `jk`, `tempat_lahir`, `tanggal_lahir`, `agama`, `pendidikan`, `pekerjaan`, `tgl_dibuat`, `perkawinan`, `hubungan_keluarga`, `kewarganegaraan`, `nama_orangtua`, `golongan_darah`, `suku`, `kb`, `cacat_fisik`, `cacat_mental`, `wajib_pajak`, `lembaga_pemerintahan`, `lembaga_masyarakat`, `lembaga_ekonomi`) VALUES
('3204276203900002', 2, '3205392906090001', '-', 'KUSMIATI', 'perempuan', 'GARUT', '1990-03-22', 'Islam', 'Tamat SLTA/sederajat', 'Karyawan Perusahaan Swasta', '2019-08-23', 'sudah kawin', 'Istri', 'Warga Negara Indonesia', 'AI WALIYAH/ANIN', 'Tidak Tahu', 'SUNDA', 'KB Alamiah/Kalender', '', '', 'Wajib Pajak Kendaraan Bermotor', '', 'Pengurus PKK', ''),
('3205325402950001', 2, '3205391008150014', '-', 'FITRI HERDIANTI RAMADHAN', 'perempuan', 'GARUT', '1995-02-14', 'Islam', 'Tamat SLTA/sederajat', 'Ibu Rumah Tangga', '2019-08-23', 'sudah kawin', 'Istri', 'Warga Negara Indonesia', 'KARTIKA/MAHUDIN', 'Tidak Tahu', 'SUNDA', 'Suntik', '', '', '', '', '', ''),
('3205390101430008', 1, '3205392812070135', '-', 'OJO', 'laki-laki', 'GARUT', '1946-01-03', 'Islam', 'Tamat SD/sederajat', 'Petani', '2019-08-23', 'sudah kawin', 'Kepala Keluarga', 'Warga Negara Indonesia', 'EHA/MAJASIK', 'Tidak Tahu', 'SUNDA', 'KB Alamiah/Kalender', '', '', 'Wajib Pajak Bumi dan Bangunan', '', '', ''),
('3205390102700006', 1, '3205393112070128', '-', 'RUDI', 'laki-laki', 'GARUT', '1970-02-01', 'Islam', 'Tamat SD/sederajat', 'Pedagang Keliling', '2019-08-23', 'belum kawin', 'Kepala Keluarga', 'Warga Negara Indonesia', 'EJE/EROH', 'O', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', 'Wajib Pajak Bumi dan Bangunan,Wajib Pajak Kendaraan Bermotor', '', '', 'Warung kelontongan/Kios'),
('3205390202050003', 2, '3205390412180011', '-', 'TAN TAN MUZAKI', 'laki-laki', 'GARUT', '2005-05-25', 'Islam', 'Tamat SD/sederajat', 'Belum Bekerja', '2019-08-23', 'belum kawin', 'Adik', 'Warga Negara Indonesia', 'TITIN KARTINI/EMPUD MAHPUDIN', 'Tidak Tahu', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', '', '', '', ''),
('3205390205840005', 1, '3205390205840005', '-', 'SURYANA', 'laki-laki', 'SUMEDANG', '1984-05-02', 'Islam', 'Sedang SLTP/sederajat', 'Pedagang barang kelontongan', '2019-08-23', 'sudah kawin', 'Kepala Keluarga', 'Warga Negara Indonesia', 'KARWITA/ERUM', 'Tidak Tahu', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', 'Wajib Pajak Bumi dan Bangunan,Wajib Pajak Kendaraan Bermotor', '', '', ''),
('320539020584005', 1, '3205392508170008', '_', 'SURYANA', 'laki-laki', 'SUMEDANG', '1984-05-02', 'Islam', 'Sedang SLTP/sederajat', 'Pedagang Keliling', '2019-08-16', 'sudah kawin', 'Kepala Keluarga', 'Warga Negara Indonesia', 'ERUM/KARWITA', 'O', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', 'Wajib Pajak Bumi dan Bangunan,Wajib Pajak Kendaraan Bermotor', '', '', ''),
('3205390306630003', 1, '3205392212070312', '-', 'USMAN', 'laki-laki', 'GARUT', '1963-03-06', 'Islam', 'Tamat SD/sederajat', 'Petani', '2019-08-23', 'sudah kawin', 'Kepala Keluarga', 'Warga Negara Indonesia', 'M. SA&#39;I / SITI', 'O', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', 'Wajib Pajak Bumi dan Bangunan,Wajib Pajak Kendaraan Bermotor', '', 'Pengurus RT', ''),
('3205390401170001', 4, '3205392309140009', '-', 'MUHAMMAD DAFFA MAULANA', 'laki-laki', 'GARUT', '2017-01-04', 'Islam', 'Belum masuk TK/Kelompok Bermain', 'Belum Bekerja', '2019-08-23', 'belum kawin', 'Anak Kandung', 'Warga Negara Indonesia', 'IMAS SITI SOLEHAH/GUNAWAN', 'O', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', '', '', '', ''),
('3205390408480001', 1, '3205392212070311', '-', 'OHA PURAWINATA', 'laki-laki', 'GARUT', '1948-08-04', 'Islam', 'Tamat SLTA/sederajat', 'Purnawirawan/Pensiunan', '2019-08-23', 'sudah kawin', 'Kepala Keluarga', 'Warga Negara Indonesia', 'SITI / M.SA&#39;I', 'Tidak Tahu', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', 'Wajib Pajak Bumi dan Bangunan', '', '', ''),
('3205390610930002', 1, '3205392311150009', '-', 'HENDI SETIAWAN', 'laki-laki', 'GARUT', '1993-10-06', 'Islam', 'Sedang SLTA/sederajat', 'Montir', '2019-08-23', 'sudah kawin', 'Kepala Keluarga', 'Warga Negara Indonesia', 'ISOH/ISO', 'Tidak Tahu', 'SUNDA', 'Tidak Menjawab', '', '', 'Wajib Pajak Kendaraan Bermotor', '', '', ''),
('3205390807140001', 4, '3205392712070052', '-', 'AMANDA RAHMADANI', 'perempuan', 'GARUT', '2014-07-08', 'Islam', 'Sedang TK/Kelompok Bermain', 'Pelajar', '2019-08-23', 'belum kawin', 'Anak Kandung', 'Warga Negara Indonesia', 'SRI NURWARNIDA/IDI RASDI', 'Tidak Tahu', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', '', '', '', ''),
('3205390906600002', 1, '3205392612070150', '-', 'PANDI SOPANDI', 'laki-laki', 'GARUT', '1961-11-01', 'Islam', 'Tamat SD/sederajat', 'Wiraswasta', '2019-08-23', 'sudah kawin', 'Kepala Keluarga', 'Warga Negara Indonesia', 'ERI/SAKIM', 'Tidak Tahu', 'SUNDA', 'KB Alamiah/Kalender', '', '', 'Wajib Pajak Bumi dan Bangunan,Wajib Pajak Kendaraan Bermotor', '', 'Pengurus RW', ''),
('3205391109180001', 3, '3205392508170008', '_', 'REVAN SEPTIAN', 'laki-laki', 'GARUT', '2018-09-11', 'Islam', 'Belum masuk TK/Kelompok Bermain', 'Ahli Pengobatan Alternatif', '2019-08-16', 'belum kawin', 'Anak Kandung', 'Warga Negara Indonesia', 'RENI/SURYANA', 'O', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', '', '', '', ''),
('3205391305820002', 3, '3205392212070311', '-', 'KOMARUDIN', 'laki-laki', 'GARUT', '1983-05-13', 'Islam', 'Tamat SLTP/sederajat', 'Belum Bekerja', '2019-08-23', 'belum kawin', 'Anak Kandung', 'Warga Negara Indonesia', 'SUTIARA /OHA PURAWINATA', 'Tidak Tahu', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', 'Wajib Pajak Kendaraan Bermotor', '', '', ''),
('3205391311170002', 3, '3205390410180003', '-', 'FARIZ NUR IKHSAN', 'laki-laki', 'GARUT', '2017-11-13', 'Islam', 'Belum masuk TK/Kelompok Bermain', 'Belum Bekerja', '2019-08-23', 'belum kawin', 'Anak Kandung', 'Warga Negara Indonesia', 'FITRIANI/RIKI ZULKIFLI', 'Tidak Tahu', 'SUNDA', 'KB Alamiah/Kalender', '', '', '', '', '', ''),
('3205391311880002', 1, '3205392309140009', '-GARUT', 'GUNAWAN', 'laki-laki', 'GARUT', '1988-11-13', 'Islam', 'Tamat SLTA/sederajat', 'Buruh Harian Lepas', '2019-08-23', 'sudah kawin', 'Kepala Keluarga', 'Warga Negara Indonesia', 'KIAH/JAKA', 'O', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', 'Wajib Pajak Bumi dan Bangunan,Wajib Pajak Kendaraan Bermotor', '', '', ''),
('3205391405770001', 1, '3205392712070052', '-', 'IDI RASDI', 'laki-laki', 'GARUT', '1976-05-14', 'Islam', 'Tamat SD/sederajat', 'Petani', '2019-08-23', 'sudah kawin', 'Kepala Keluarga', 'Warga Negara Indonesia', 'TIAH/ACA', 'O', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', 'Wajib Pajak Bumi dan Bangunan,Wajib Pajak Kendaraan Bermotor', 'Staf Desa/Kelurahan', 'Anggota Organisasi Kelompok Tani/Nelayan,Pengurus RW', 'Bank Perkreditan Rakyat'),
('3205391506820001', 1, '3205392812070124', '-', 'DULOH ISKANDAR', 'laki-laki', 'GARUT', '1982-06-15', 'Islam', 'Sedang SLTP/sederajat', 'Petani', '2019-08-23', 'sudah kawin', 'Kepala Keluarga', 'Warga Negara Indonesia', 'ETI/OJO', 'Tidak Tahu', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', 'Wajib Pajak Bumi dan Bangunan', '', 'Pengurus RW', ''),
('3205391508890002', 1, '3205392906090001', '-', 'EVI SOBIRIN', 'laki-laki', 'GARUT', '1989-08-15', 'Islam', 'Tamat SLTA/sederajat', 'Wiraswasta', '2019-08-23', 'sudah kawin', 'Kepala Keluarga', 'Warga Negara Indonesia', 'DEDE SURYANI/JUJUN PRATAMA', 'AB', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', 'Wajib Pajak Bumi dan Bangunan,Wajib Pajak Kendaraan Bermotor', 'Staf Desa/Kelurahan', '', ''),
('3205391611080001', 3, '3205392812070124', '-', 'MUHAMAD ARDIANSYAH', 'laki-laki', 'GARUT', '2008-11-16', 'Islam', 'Sedang SD/sederajat', 'Pelajar', '2019-08-23', 'belum kawin', 'Anak Kandung', 'Warga Negara Indonesia', 'FITRI ROHAYATI/DULOH ISKANDAR', 'Tidak Tahu', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', '', '', '', ''),
('3205391901870001', 1, '3205391008150014', '-', 'ABDUL KOSIM', 'laki-laki', 'GARUT', '1987-01-19', 'Islam', 'Tamat S-3/sederajat', 'Dosen swasta', '2019-08-23', 'sudah kawin', 'Kepala Keluarga', 'Warga Negara Indonesia', 'H DUDUDNG/ENTIN HARTINI', 'Tidak Tahu', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', '', '', '', ''),
('3205392509960002', 1, '3205390410180003', '-', 'RIKI ZULKIFLI', 'laki-laki', 'GARUT', '1996-09-25', 'Islam', 'Tamat SLTP/sederajat', 'Pedagang barang kelontongan', '2019-08-23', 'sudah kawin', 'Kepala Keluarga', 'Warga Negara Indonesia', 'TATI/HERYANA', 'Tidak Tahu', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', '', '', '', ''),
('3205392606010001', 3, '3205392212070312', '-', 'JAJANG SOLAHUDIN', 'laki-laki', 'GARUT', '2001-06-26', 'Islam', 'Tamat SLTP/sederajat', 'Belum Bekerja', '2019-08-23', 'belum kawin', 'Anak Kandung', 'Warga Negara Indonesia', 'USMAN/ISAH', 'O', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', '', '', '', ''),
('3205394102650001', 2, '3205392212070312', '-', 'ISAH', 'perempuan', 'GARUT', '1965-01-02', 'Islam', 'Tamat SD/sederajat', 'Ibu Rumah Tangga', '2019-08-23', 'sudah kawin', 'Istri', 'Warga Negara Indonesia', 'RUMSA/EURI', 'O', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', '', '', '', ''),
('3205394102750008', 2, '3205393112070128', '-', 'ENIS', 'perempuan', 'GARUT', '1975-02-01', 'Islam', 'Tamat SD/sederajat', 'Ibu Rumah Tangga', '2019-08-23', 'sudah kawin', 'Istri', 'Warga Negara Indonesia', 'SUJA/SANTIJAH', 'Tidak Tahu', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', '', '', '', 'Warung kelontongan/Kios'),
('3205394401170002', 5, '3205392309140009', '-', 'SALWA SITI ASIAH', 'perempuan', 'GARUT', '2017-01-04', 'Islam', 'Belum masuk TK/Kelompok Bermain', 'Belum Bekerja', '2019-08-23', 'belum kawin', 'Anak Kandung', 'Warga Negara Indonesia', 'IMAS SITI SOLEHAH/GUNAWAN', 'Tidak Tahu', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', '', '', '', ''),
('3205394503530001', 2, '3205392812070135', '-', 'ETI', 'perempuan', 'GARUT', '1953-10-04', 'Islam', 'Tamat SD/sederajat', 'Ibu Rumah Tangga', '2019-08-23', 'sudah kawin', 'Istri', 'Warga Negara Indonesia', 'OCIH/TAHRI', 'Tidak Tahu', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', '', '', 'Pengurus Posyandu', ''),
('3205394504180001', 4, '3205391312080017', '-', 'KHAYLA NAZWA APRILLIA', 'perempuan', 'GARUT', '2018-04-05', 'Islam', 'Belum masuk TK/Kelompok Bermain', 'Belum Bekerja', '2019-08-23', 'belum kawin', 'Anak Kandung', 'Warga Negara Indonesia', 'HENI HUDAYA/POPI PONDAAH', 'Tidak Tahu', 'SUNDA', 'Tidak Menjawab', '', '', '', '', '', ''),
('3205394512000001', 1, '3205390412180011', '-', 'MITHA NURFATIMAH', 'perempuan', 'GARUT', '1998-11-30', 'Islam', 'Tamat SLTA/sederajat', 'Karyawan Perusahaan Swasta', '2019-08-23', 'belum kawin', 'Kepala Keluarga', 'Warga Negara Indonesia', 'TITIN KARTINI/EMPUD MAHPUDIN', 'Tidak Tahu', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', 'Wajib Pajak Kendaraan Bermotor', '', '', ''),
('3205394512040001', 3, '3205392612070150', '-', 'AMANDA HERWIDIANA', 'perempuan', 'GARUT', '2004-05-12', 'Islam', 'Sedang SLTP/sederajat', 'Pelajar', '2019-08-23', 'belum kawin', 'Anak Kandung', 'Warga Negara Indonesia', 'PIAH ROKAYAH/PANDI SOPANDI', 'O', 'SUNDA', 'KB Alamiah/Kalender', '', '', '', '', '', ''),
('3205394612620001', 2, '3205392612070150', '-', 'PIAH ROKAYAH', 'perempuan', 'GARUT', '1963-05-12', 'Islam', 'Tamat SD/sederajat', 'Ibu Rumah Tangga', '2019-08-23', 'sudah kawin', 'Istri', 'Warga Negara Indonesia', 'TIOH/ASMITA', 'Tidak Tahu', 'SUNDA', 'KB Alamiah/Kalender', '', '', '', '', '', ''),
('3205394710900004', 2, '3205391312080017', '-', 'POPI PONDAAH', 'perempuan', 'GARUT', '1990-10-07', 'Islam', 'Sedang SLTP/sederajat', 'Ibu Rumah Tangga', '2019-08-23', 'sudah kawin', 'Istri', 'Warga Negara Indonesia', 'ADE ODI/ACIH', 'O', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', '', '', '', ''),
('3205394807130001', 4, '3205392812070124', '-', 'ZAHRA TUSITA', 'perempuan', 'GARUT', '2013-07-08', 'Islam', 'Sedang TK/Kelompok Bermain', 'Pelajar', '2019-08-23', 'belum kawin', 'Anak Kandung', 'Warga Negara Indonesia', 'FITRI ROHAYATI/DULOH ISKANDAR', 'Tidak Tahu', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', '', '', '', ''),
('3205395008970002', 2, '3205392311150009', '-', 'RENI RISMAWATI', 'perempuan', 'GARUT', '1996-10-28', 'Islam', 'Sedang SLTA/sederajat', 'Ibu Rumah Tangga', '2019-08-23', 'sudah kawin', 'Istri', 'Warga Negara Indonesia', 'NONO HARYONO/MIMIN', 'Tidak Tahu', 'SUNDA', 'Tidak Menjawab', '', '', '', '', '', ''),
('3205395305940006', 2, '3205392309140009', '-', 'IMAS SITI SOLEHAH', 'perempuan', 'GARUT', '1994-05-13', 'Islam', 'Tamat SD/sederajat', 'Ibu Rumah Tangga', '2019-08-23', 'sudah kawin', 'Istri', 'Warga Negara Indonesia', 'YAIH/IYA MULYADI', 'Tidak Tahu', 'SUNDA', 'KB Alamiah/Kalender', '', '', '', '', '', ''),
('3205395511020003', 3, '3205393112070128', '-', 'FITRIANI', 'perempuan', 'GARUT', '2002-11-15', 'Islam', 'Belum masuk TK/Kelompok Bermain', 'Ahli Pengobatan Alternatif', '2019-08-23', 'belum kawin', 'Anak Kandung', 'Warga Negara Indonesia', 'ENIS/RUDI', 'Tidak Tahu', 'SUNDA', 'KB Alamiah/Kalender', '', '', '', '', '', ''),
('3205395805880002', 2, '3205392812070124', '-', 'FITRI ROHAYATI', 'perempuan', 'GARUT', '1988-05-18', 'Islam', 'Sedang SLTP/sederajat', 'Ibu Rumah Tangga', '2019-08-23', 'sudah kawin', 'Istri', 'Warga Negara Indonesia', 'MINTARSIH/SOBARI', 'Tidak Tahu', 'SUNDA', 'Suntik', '', '', '', '', '', ''),
('3205396001990002', 2, '3205390410180003', '-', 'FITRIANI', 'perempuan', 'BANDUNG', '1999-01-20', 'Islam', 'Tamat SLTP/sederajat', 'Ibu Rumah Tangga', '2019-08-23', 'sudah kawin', 'Istri', 'Warga Negara Indonesia', 'RATNASIH/SUHENDAR', 'Tidak Tahu', 'SUNDA', 'Suntik', '', '', '', '', '', ''),
('3205396008530002', 2, '3205392212070311', '-', 'SUTIARA', 'laki-laki', 'GARUT', '1953-08-20', 'Islam', 'Sedang SD/sederajat', 'Ibu Rumah Tangga', '2019-08-23', 'sudah kawin', 'Istri', 'Warga Negara Indonesia', 'SUTIMAH /ATMA', 'Tidak Tahu', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', '', '', '', ''),
('3205396102090003', 3, '3205391312080017', '-', 'KEYISHA RAHMAWATI', 'perempuan', 'GARUT', '2009-02-21', 'Islam', 'Sedang SD/sederajat', 'Belum Bekerja', '2019-08-23', 'belum kawin', 'Anak Kandung', 'Warga Negara Indonesia', 'HENI HUDAYA/POPI PONDAAH', 'Tidak Tahu', 'SUNDA', 'Tidak Menjawab', '', '', '', '', '', ''),
('3205396607790002', 2, '3205392712070052', '-', 'SRI NURWARNIDA', 'perempuan', 'GARUT', '1979-07-28', 'Islam', 'Tamat SLTP/sederajat', 'Pedagang barang kelontongan', '2019-08-23', 'sudah kawin', 'Istri', 'Warga Negara Indonesia', 'YAYAH/H.OMO', 'O', 'SUNDA', 'Spiral', '', '', 'Wajib Pajak Bumi dan Bangunan', '', '', ''),
('3205396806160001', 3, '3205392311150009', '-', 'NAYLA AZAHRA SETIAWATI', 'perempuan', 'GARUT', '2016-06-28', 'Islam', 'Belum masuk TK/Kelompok Bermain', 'Tidak Mempunyai Pekerjaan Tetap', '2019-08-23', 'belum kawin', 'Anak Kandung', 'Warga Negara Indonesia', 'HENDI SETIAWAN/RENI RISMAWATI', 'Tidak Tahu', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', '', '', '', ''),
('3205396905100001', 3, '3205392309140009', '-', 'IREN SITI HAMIDAH', 'perempuan', 'GARUT', '2010-05-29', 'Islam', 'Sedang SD/sederajat', 'Belum Bekerja', '2019-08-23', 'belum kawin', 'Anak Kandung', 'Warga Negara Indonesia', 'IMAS SITI SOLEHAH/GUNAWAN', 'O', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', '', '', '', ''),
('3205396912890003', 2, '3205392508170008', '_', 'RENI MULYANI', 'perempuan', 'GARUT', '1989-12-29', 'Islam', 'Sedang SLTP/sederajat', 'Ibu Rumah Tangga', '2019-08-16', 'sudah kawin', 'Istri', 'Warga Negara Indonesia', 'ILOH/ADMA', 'O', 'SUNDA', 'KB Alamiah/Kalender', '', '', '', '', '', ''),
('3205397003160001', 3, '3205391008150014', '-', 'ALYA JAZILAH ULFA', 'perempuan', 'GARUT', '2016-03-30', 'Islam', 'Belum masuk TK/Kelompok Bermain', 'Belum Bekerja', '2019-08-23', 'belum kawin', 'Anak Kandung', 'Warga Negara Indonesia', 'FITRI HERDIANTI RAMADHAN', 'Tidak Tahu', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', '', '', '', ''),
('3205397010920002', 3, '3205392712070052', '-', 'CUCUM KARLINA', 'perempuan', 'GARUT', '1999-10-31', 'Islam', 'Sedang S-1/sederajat', 'Pelajar', '2019-08-23', 'belum kawin', 'Anak Kandung', 'Warga Negara Indonesia', 'SRI NURWARNIDA/IDI RASDI', 'Tidak Tahu', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', '', '', '', ''),
('3295390512870001', 1, '3205391312080017', '-', 'HENI HUDAYA', 'laki-laki', 'GARUT', '1987-12-05', 'Islam', 'Sedang SLTP/sederajat', 'Wiraswasta', '2019-08-23', 'belum kawin', 'Kepala Keluarga', 'Warga Negara Indonesia', 'APIT/TINI', 'O', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', 'Wajib Pajak Bumi dan Bangunan,Wajib Pajak Kendaraan Bermotor', '', '', 'Angkutan Darat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `label`
--

CREATE TABLE `label` (
  `id_label` int(11) NOT NULL,
  `nama_label` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `label`
--

INSERT INTO `label` (`id_label`, `nama_label`) VALUES
(1, 'kebersihan lingkungan'),
(2, 'pendidikan'),
(3, 'pengajian'),
(4, 'rapat koordinasi ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penduduk`
--

CREATE TABLE `penduduk` (
  `id_penduduk` int(11) NOT NULL,
  `no_kk` varchar(16) NOT NULL,
  `no_nik` varchar(16) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `status_perkawinan` varchar(1) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `dusun` varchar(100) NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penduduk`
--

INSERT INTO `penduduk` (`id_penduduk`, `no_kk`, `no_nik`, `nama`, `tempat_lahir`, `tgl_lahir`, `status_perkawinan`, `jenis_kelamin`, `dusun`, `rt`, `rw`) VALUES
(3, '3278040109xxxxxx', '3278042707xxxxxx', 'NURHENDI', 'BANDUNG', '2019-07-27', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK B.16', '003', '002'),
(6, '3278041308xxxxxx', '3278041808xxxxxx', 'DRS. ADANG SAPUTRA', 'ciamis', '2019-08-18', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI A.26', '001', '011'),
(7, '3278040901xxxxxx', '3278042710xxxxxx', 'IWAN KURNIAWAN', 'TASIKMALAYA', '2019-10-27', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.63', '003', '002'),
(8, '3278041404xxxxxx', '3278041311xxxxxx', 'ERWIN HERMANTO', 'JAKARTA', '2019-04-13', 'p', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK A.34', '001', '011'),
(9, '3278041408XXXXXX', '3278040505XXXXXX', 'ATUY TURYANA', 'TASIKMALAYA', '2019-05-05', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.72', '003', '002'),
(10, '3278041502xxxxxx', '3278041507xxxxxx', 'DEDE SUGAWA', 'TASIKMALAYA', '2019-07-15', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI C - 92', '001', '011'),
(11, '3278041508XXXXXX', '3278042802XXXXXX', 'BAMBANG SOBANDI, S.PD', 'CIANJUR', '2019-02-28', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK B.15', '003', '002'),
(12, '3278041609XXXXXX', '3278042305XXXXXX', 'PANJI AKBAR ISLAM', 'BANDUNG', '2019-05-23', 'b', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.68', '003', '002'),
(13, '3278042004xxxxxx', '327804109xxxxxxx', 'iwan sep charles, sh', 'palembang', '2019-09-01', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok c 78', '001', '011'),
(14, '3278090107XXXXXX', '3278092607XXXXXX', 'ZULKARNAEN', 'CIREBON', '2019-07-26', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.42', '003', '002'),
(15, '3278090210xxxxxx', '3278031411xxxxxx', 'edi purnawadi', 'TASIKMALAYA', '2019-11-14', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok c no. 103', '001', '011'),
(16, '3278090206XXXXXX', '3278091805XXXXXX', 'MASTUR HERDIANA', 'CIAMIS', '2019-05-18', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.71', '001', '002'),
(17, '3278090401xxxxxx', '3273212511xxxxxx', 'novi darwin', 'bandung', '2019-11-25', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok a.05', '001', '011'),
(18, '3278090209XXXXXX', '3278020105XXXXXX', 'ENDANG TARMULI', 'TASIKMALAYA', '2019-05-01', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI', '003', '002'),
(19, '327809041xxxxxxx', '3278024402xxxxxx', 'jh. t tarma', 'ciamis', '2019-02-04', 'p', 'p', 'PERUM CIPTA GRAHA MANDIRI a. 20', '001', '011'),
(20, '3278090506XXXXXX', '3206332207XXXXXX', 'NUROHMAN', 'KUNINGAN', '2019-07-22', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK B.43', '003', '002'),
(21, '3278091501xxxxxx', '3175072306xxxxxx', 'dodi mulyadi, s.e', 'tasikmalaya', '2019-06-23', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI', '001', '011'),
(22, '3278090608XXXXXX', '3278091508XXXXXX', 'DADI SUGITO', 'JAKARTA', '2019-08-15', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.38', '003', '002'),
(23, '3278091508xxxxxx', '3278090104xxxxxx', 'dc panji sutarto', 'magelang', '2019-04-01', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok c no. 108', '001', '011'),
(24, '3278090903XXXXXX', '3278092407XXXXXX', 'ERIK RIKWANTO', 'JAKARTA', '2019-07-24', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.10', '003', '002'),
(25, '3278091601xxxxxx', '3278090506xxxxxx', 'budiman sanusi, s.sos', 'bandung', '2019-06-10', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok c no. 98 - 99', '001', '011'),
(26, '3278090906XXXXXX', '3278092310XXXXXX', 'YEDI KUSDINAR', 'TASIKMALAYA', '2019-10-23', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.53', '003', '002'),
(27, '3278091602xxxxxx', '3278046602xxxxxx', 'salman nurfaris, s.sos', 'bandung', '2019-06-10', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok a . 04', '001', '011'),
(28, '3278090906XXXXXX', '3278096404XXXXXX', 'MOH. DEDEN NURDIN', 'CIREBON', '2019-05-15', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.48', '003', '002'),
(29, '3278091603xxxxxx', '3278090606xxxxxx', 'ridwan muhammad abdullah, a.md', 'tasikmalaya', '2019-06-06', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok a . 13', '001', '011'),
(30, '3278090906XXXXXX', '3278092210XXXXXX', 'DEDI MUSTOFA, SE', 'CILACAP', '2019-10-22', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.18', '003', '002'),
(31, '3278091012XXXXXX', '3278020304XXXXXX', 'ISAL SALHANA', 'TASIKMALAYA', '2019-04-03', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK B.41', '003', '002'),
(32, '3278092610xxxxxx', '3278090609xxxxxx', 'herdis', 'tasikmalaya', '2019-09-06', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI a 25', '001', '011'),
(33, '3278091103XXXXXX', '3278091503XXXXXX', 'SANDI SANDIYONO', 'TASIKMALAYA', '2019-03-15', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.73', '003', '002'),
(34, '3278091107XXXXXX', '3278086708XXXXXX', 'IRMA SRI AGUSTINA', 'SUKABUMI', '2019-08-27', 'p', 'p', 'PERUM CIPTA GRAHA MANDIRI BLOK C.29', '003', '002'),
(35, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'taofik rahman', 'tasikmalaya', '2019-03-06', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok a . 11', '001', '011'),
(36, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'RONI HENDRAJAT', 'TASIKMALAYA', '2019-08-13', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.43', '003', '002'),
(37, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'andzar dzulfikar, st', 'tasikmalaya', '2019-09-16', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok a .6', '001', '011'),
(38, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'DENI NUGRAHA', 'TASIKMALAYA', '2019-03-29', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.60', '003', '002'),
(39, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'ENCEP SATIYAKRAMA ROSYAD', 'GARUT', '2019-07-22', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.09', '003', '002'),
(40, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'mulyadi', 'bandung', '2019-02-19', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI c 84', '001', '011'),
(41, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'DHANI MULYADI', 'TASIKMALAYA', '2019-05-07', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.14', '003', '002'),
(42, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'dedi supriadi', 'bandung', '2019-02-11', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok c no. 54', '002', '011'),
(43, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'CHOIRI ACHYARUL PANANI', 'PONOGORO', '2019-03-20', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK B.10', '003', '002'),
(44, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'ari suhaeri mulyadi', 'purwakarta', '2019-01-11', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok c. 28', '002', '011'),
(45, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'Asep Kurniawan', 'JAKARTA', '2019-10-27', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK B.22', '003', '002'),
(46, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'rani nurani', 'bandung', '2019-08-15', 's', 'p', 'PERUM CIPTA GRAHA MANDIRI blok c. 37', '002', '011'),
(47, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'syarif hidayat', 'bandung', '2019-06-05', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok c. 37', '002', '011'),
(48, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'ARIS WANRISNA', 'CIAMIS', '2019-10-01', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.05', '003', '002'),
(49, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'ended dedi supriadi', 'majalengka', '2019-10-07', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok c.64', '002', '011'),
(50, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'TANTAN ABDUL MATIN', 'TASIKMALAYA', '2019-10-11', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK B.01', '003', '002'),
(51, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'andhi hakim avissina', 'yogyakarta', '0000-00-00', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok c. 31', '002', '011'),
(52, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'siti maryam', 'tasikmalaya', '2019-04-27', 's', 'p', 'PERUM CIPTA GRAHA MANDIRI blok c. 57', '002', '011'),
(53, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'SUTIYANTO', 'CILACAP', '2019-12-26', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.55', '003', '002'),
(54, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'akmal', 'riau', '2019-03-16', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok c. 69', '002', '011'),
(55, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'amelludin', 'tasikmalaya', '2019-03-06', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok c. 18', '002', '011'),
(56, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'endang kusno', 'ciamis', '2019-08-17', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok c. 11-12', '002', '011'),
(57, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'andri sudrajat', 'ciamis', '2019-07-06', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok c no. 54', '002', '011'),
(58, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'DADAN HAMDANI', 'GARUT', '2019-12-16', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.41', '003', '002'),
(59, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'ikin', 'kebumen', '2019-08-09', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok c. 20', '002', '011'),
(60, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'denny prawira np', 'bogor', '2019-04-04', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok c.39', '002', '011'),
(61, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'SONI SUHERLI, S.Ag', 'BANDUNG', '2019-12-19', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.62', '003', '002'),
(62, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'iman hikmat roebama, se', 'bandung', '2019-12-17', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok c. 34', '002', '011'),
(63, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'KINKIN SODIKIN', 'TASIKMALAYA', '2019-09-05', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.110', '005', '002'),
(64, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'enok ruskanah', 'tasikmalaya', '2019-04-21', 's', 'p', 'PERUM CIPTA GRAHA MANDIRI blok b. 9', '003', '011'),
(65, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'rochmat saefudin', 'cilacap', '2019-05-24', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI b12', '003', '011'),
(66, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'TAUFIK, SE', 'TASIKMALAYA', '2019-02-22', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK A.29', '005', '002'),
(67, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'ahmad nurdin', 'tasikmalaya', '2019-04-14', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok b.83', '003', '011'),
(68, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'uung nasrulloh st', 'tasikmalaya', '2019-01-01', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok b 9', '003', '011'),
(69, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'UGIH PADILAH', 'SINGAPARNA', '2019-06-28', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.100', '005', '002'),
(70, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'nani suryani s.pi', 'ciamis', '2019-01-11', 's', 'p', 'PERUM CIPTA GRAHA MANDIRI blok b 9', '003', '011'),
(71, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'IMAN BUDIMAN, S.Sos', 'TASIKMALAYA', '2019-02-19', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK', '005', '002'),
(72, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'ERWIN NUGRAHA', 'TASIKMALAYA', '2019-07-26', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.91', '005', '002'),
(73, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'dedi supriyadi', 'tasikmalaya', '2019-06-08', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok b. 4', '003', '011'),
(74, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'DODI WIANTONO', 'TASIKMALAYA', '2019-05-20', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK A.33', '005', '002'),
(75, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'herman suherman, s.pdi', 'tasikmalaya', '2019-03-06', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI b. 11', '003', '011'),
(76, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'yudi setiawan', 'bandung', '2019-11-29', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok b. 03', '003', '011'),
(77, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'HENDRI GUNAWAN', 'TASIKMALAYA', '2019-03-27', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.90', '005', '002'),
(78, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'IBRAHIM', 'GARUT', '2019-07-28', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK A.30', '005', '002'),
(79, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'yudi wahyudianto', 'tasikmalaya', '2019-06-17', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI  ', '003', '011'),
(80, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'gito nugraha', 'ciamis', '2019-06-12', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok d. 44', '003', '011'),
(81, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'wahyudin', 'bandung', '2019-04-30', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok b 61', '003', '011'),
(82, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'SERA SANI VERANA, S.PD', 'TASIKMALAYA', '2019-03-14', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.80', '005', '002'),
(83, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'purnama alamsyah', 'tasikmalaya', '2019-09-21', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok b. 25', '003', '011'),
(84, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'ginanjar', 'garut', '2019-02-21', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok b 63', '003', '011'),
(85, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'ASEP IRWAN SUSANDHI', 'TASIKMALAYA', '2019-09-10', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.106', '005', '002'),
(86, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'indra agustin ss', 'tasikmalaya', '2019-08-26', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok c 3', '003', '011'),
(87, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'ginanjar nugraha, se', 'ciamis', '2019-07-08', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok b 85/86', '003', '011'),
(88, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'DEDI TURYADI, BC, S.Sos, M.HUM', 'TASIKMALAYA', '2019-03-30', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK A.18', '005', '002'),
(89, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'yadi herdiaman, se', 'bekasi', '2019-06-27', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok b 56', '003', '011'),
(90, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'DRS. ASEP HERMAWAN, A.MA. PKB', 'CIAMIS', '2019-08-30', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.97', '005', '002'),
(91, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'ridwan sofiandi', 'tasikmalaya', '2019-04-05', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok b 60', '003', '011'),
(92, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'undang hidayat, s.pd', 'tasikmalaya', '2019-02-04', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI d. 37', '003', '011'),
(93, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'ELVI KURNIAWAN', 'BANDUNG', '2019-04-13', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.96', '001', '011'),
(94, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'irfan kurniakomara', 'kuningan', '2019-04-05', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI b 39', '003', '011'),
(95, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'RANDI RINALDI', 'TASIKMALAYA', '2019-06-06', 'b', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.82', '001', '011'),
(96, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'waqif bakhtiar', 'pangalengan', '2019-11-04', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok b 44', '003', '011'),
(97, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'HENHEN SUHENDAR', 'CIAMIS', '2019-07-10', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.101', '001', '011'),
(98, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'yusup hamdani, s.pd', 'tasikmalaya', '2019-06-13', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok b 74', '003', '011'),
(99, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'rubi achmad sapari', 'garut', '2019-09-30', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok b 23', '003', '011'),
(100, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'budi siswandi', 'bandung', '2019-10-05', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok b 18', '003', '011'),
(101, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'andi herdiana, se', 'kuningan', '2019-09-28', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI blok b. 97', '003', '011'),
(102, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'ASEP RUHIMAT', 'TASIKMALAYA', '0000-00-00', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.87', '001', '011'),
(103, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'DWI ANDI RIANTO', 'TASIKMALAYA', '0000-00-00', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.95', '001', '011'),
(104, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'ANDRI MUHAMAD KURNIAWAN', 'TASIKMALAYA', '0000-00-00', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.107', '001', '011'),
(105, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'SUGENG RIANTO', 'TASIKMALAYA', '0000-00-00', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.57', '001', '011'),
(106, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'ENDANG HERI', 'TASIKMALAYA', '0000-00-00', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK C.65', '001', '011'),
(107, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'R.E. BUDI M.SH.MH', 'TASIKMALAYA', '0000-00-00', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK B.17', '001', '011'),
(108, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'DENI KOPARINDO', 'TASIKMALAYA', '0000-00-00', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK B.22', '001', '011'),
(109, '327809xxxxxxxxxx', '32xxxxxxxxxxxxxx', 'ANGGARA ALEXANDER', 'TASIKMALAYA', '0000-00-00', 's', 'l', 'PERUM CIPTA GRAHA MANDIRI BLOK B.22A', '001', '011');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id_setting` tinyint(1) NOT NULL,
  `nama_aplikasi` varchar(255) NOT NULL,
  `nama_perumahan` varchar(255) NOT NULL,
  `logo` text NOT NULL,
  `judul_footer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id_setting`, `nama_aplikasi`, `nama_perumahan`, `logo`, `judul_footer`) VALUES
(1, 'PROFIL DESA DAN KELUARGA DESA PELITAASIH', 'DESA PELITAASIH', 'cikara.png', 'PROFIL DESA DAN KELUARGA DESA PELITAASIH');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `aruskk`
--
ALTER TABLE `aruskk`
  ADD PRIMARY KEY (`id_aruskk`),
  ADD UNIQUE KEY `no_kk` (`no_kk`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`),
  ADD KEY `id_label` (`id_label`);

--
-- Indeks untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`),
  ADD KEY `id_label` (`id_label`);

--
-- Indeks untuk tabel `kematian`
--
ALTER TABLE `kematian`
  ADD PRIMARY KEY (`id_kematian`),
  ADD KEY `no_nik` (`no_nik`);

--
-- Indeks untuk tabel `kk`
--
ALTER TABLE `kk`
  ADD PRIMARY KEY (`no_kk`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indeks untuk tabel `ktp`
--
ALTER TABLE `ktp`
  ADD PRIMARY KEY (`no_nik`),
  ADD KEY `no_kk` (`no_kk`);

--
-- Indeks untuk tabel `label`
--
ALTER TABLE `label`
  ADD PRIMARY KEY (`id_label`);

--
-- Indeks untuk tabel `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`id_penduduk`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `aruskk`
--
ALTER TABLE `aruskk`
  MODIFY `id_aruskk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kematian`
--
ALTER TABLE `kematian`
  MODIFY `id_kematian` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `label`
--
ALTER TABLE `label`
  MODIFY `id_label` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `penduduk`
--
ALTER TABLE `penduduk`
  MODIFY `id_penduduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `aruskk`
--
ALTER TABLE `aruskk`
  ADD CONSTRAINT `arus kk` FOREIGN KEY (`no_kk`) REFERENCES `kk` (`no_kk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kk`
--
ALTER TABLE `kk`
  ADD CONSTRAINT `kk admin` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);

--
-- Ketidakleluasaan untuk tabel `ktp`
--
ALTER TABLE `ktp`
  ADD CONSTRAINT `ktp kk` FOREIGN KEY (`no_kk`) REFERENCES `kk` (`no_kk`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
