-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Agu 2019 pada 01.01
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
(7, 'rw1', '$2y$10$Nsh6dci8ryya5UFVpIeGbO8SMiUaaoTKifKWkonafH0nnJPoVaMb.', 'rw', 'suhendar', 'kp jeungjing', 'rw1'),
(8, 'RW2', '$2y$10$SwdrTMdlHLbR6.tBW0Pf3eYsNPWf.NvX7T6oVyrxfJ5yE48504HH6', 'rw', 'GILANG', 'KPJE', 'RW2');

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
('3205390303090001', 8, '2019-08-16', 'Momo', 'Kp cisanyoh', '0003', '0005', '2 cisanyoh', 'Wiraswasta', '-', 'Kartu Keluarga'),
('3205392004160013', 8, '2019-08-16', 'Erit riyanto', 'Kp jeungjing', '0002', '0002', '01', 'Ustadz', '_', 'Kartu Keluarga'),
('3205392004160067', 8, '2019-08-16', 'Erit riyanto', 'Kp jeungjing', '002', '002', '1', 'Ustadz', '_', 'Kartu Keluarga'),
('3205392508170008', 8, '2019-08-16', 'SURYANA', 'KP.DAYEUHMANGGUNG', '0000', '0000', '3', 'PEDAGANG', '_', 'Kartu Keluarga'),
('3205393112070233', 8, '2019-08-16', 'Majid', 'Kp jeungjing', '0000', '0000', '1', 'Buruh', '_', 'Kartu Keluarga'),
('3295392508110002', 8, '2019-08-16', 'GUNGUN GUNAWAN MULYANA', 'KP.BATU NUNGGUL', '0003', '0007', '03', 'Wiraswasta', '-', 'Kartu Keluarga'),
('43637286280', 8, '2019-08-16', 'GILANG', 'KPJE', '004', '002', '1', 'wiraswata', '-', 'Kartu Keluarga');

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
('12786289919', 1, '43637286280', '24467818189', 'GILANG', 'laki-laki', 'GARUT', '1999-04-13', 'Islam', 'Sedang S-1/sederajat', 'Dokter swasta', '2019-08-16', 'sudah kawin', 'Ayah', 'Warga Negara Indonesia', 'DEDE', 'O', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', 'Wajib Pajak Bumi dan Bangunan,Wajib Pajak Kendaraan Bermotor', 'Anggota BPD', '', ''),
('320539020584005', 1, '3205392508170008', '_', 'SURYANA', 'laki-laki', 'SUMEDANG', '1984-05-02', 'Islam', 'Sedang SLTP/sederajat', 'Pedagang Keliling', '2019-08-16', 'sudah kawin', 'Kepala Keluarga', 'Warga Negara Indonesia', 'ERUM/KARWITA', 'O', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', 'Wajib Pajak Bumi dan Bangunan,Wajib Pajak Kendaraan Bermotor', '', '', ''),
('3205390910690001', 1, '3205393112070233', '46465', 'Majid', 'laki-laki', 'Garut', '1969-10-09', 'Islam', 'Tamat SD/sederajat', 'Buruh Harian Lepas', '2019-08-16', 'sudah kawin', 'Ayah', 'Warga Negara Indonesia', 'Isoh/suka&#39;i', 'Tidak Tahu', 'Sunda', 'Tidak Menggunakan kontrasepsi', '', '', '', '', '', ''),
('3205391109180001', 3, '3205392508170008', '_', 'REVAN SEPTIAN', 'laki-laki', 'GARUT', '2018-09-11', 'Islam', 'Belum masuk TK/Kelompok Bermain', 'Ahli Pengobatan Alternatif', '2019-08-16', 'belum kawin', 'Anak Kandung', 'Warga Negara Indonesia', 'RENI/SURYANA', 'O', 'SUNDA', 'Tidak Menggunakan kontrasepsi', '', '', '', '', '', ''),
('3205391208890002', 1, '3205392004160013', '_', 'Erit riyanto', 'laki-laki', 'Garut', '1989-08-12', 'Islam', 'Tamat SLTA/sederajat', 'Belum Bekerja', '2019-08-16', 'sudah kawin', 'Ayah', 'Warga Negara Indonesia', 'Siti robiah/maman', 'Tidak Tahu', 'Sunda', 'Tidak Menggunakan kontrasepsi', '', '', 'Wajib Pajak Bumi dan Bangunan,Wajib Pajak Kendaraan Bermotor', '', 'Anggota Organisasi Keagamaan', ''),
('3205396912890003', 2, '3205392508170008', '_', 'RENI MULYANI', 'perempuan', 'GARUT', '1989-12-29', 'Islam', 'Sedang SLTP/sederajat', 'Ibu Rumah Tangga', '2019-08-16', 'sudah kawin', 'Istri', 'Warga Negara Indonesia', 'ILOH/ADMA', 'O', 'SUNDA', 'KB Alamiah/Kalender', '', '', '', '', '', '');

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
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
