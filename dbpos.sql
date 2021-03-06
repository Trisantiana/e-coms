-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2018 at 06:03 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpos`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `user`, `pass`, `email`) VALUES
(3, 'admin', 'admin', 'admin1@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `id_pen` int(11) NOT NULL,
  `id_kat` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `tags` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `ukuran1` varchar(30) NOT NULL,
  `ukuran2` varchar(30) NOT NULL,
  `ukuran3` varchar(30) NOT NULL,
  `ukuran4` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `nama`, `id_pen`, `id_kat`, `harga`, `stok`, `deskripsi`, `tags`, `status`, `foto`, `tanggal`, `ukuran1`, `ukuran2`, `ukuran3`, `ukuran4`) VALUES
(14, 'a', 1, 20, 20000, 2, 'ew', 'w', '1', 'BR_20180202045817.jpg', '2018-02-02', 'l', 'l', 'l', 'l'),
(15, 'dress', 1, 20, 50000, 3, 'berat 1 kg', 'gg', '1', 'BR_20180209054153.jpg', '2018-02-09', 'l', 'l', 'l', 'l'),
(16, 'sepatu', 2, 27, 50000, 6, 'sepatu anak', '', '1', 'BR_20180209073156.jpg', '2018-02-09', '34', '35', '36', '37');

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang_c`
--

CREATE TABLE `tb_barang_c` (
  `id_com` int(11) NOT NULL,
  `id_berita` int(11) NOT NULL,
  `id_cust` int(11) NOT NULL,
  `isi_pesan` text NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang_c`
--

INSERT INTO `tb_barang_c` (`id_com`, `id_berita`, `id_cust`, `isi_pesan`, `tanggal`, `status`) VALUES
(1, 8, 7, 'bajunya murah', '2018-02-09', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `head` text NOT NULL,
  `isi_ber` text NOT NULL,
  `tanggal` date NOT NULL,
  `at` varchar(100) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_berita`
--

INSERT INTO `tb_berita` (`id_berita`, `judul`, `head`, `isi_ber`, `tanggal`, `at`, `foto`) VALUES
(11, 'kebakaran', 'kebakaran yang merugikan warga desa', '				kejadian ini bermula ada seorang anak kecil bermain....			', '2010-02-03', 'malang', 'BR_20171029070310.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita_c`
--

CREATE TABLE `tb_berita_c` (
  `id_com` int(11) NOT NULL,
  `id_cust` int(11) NOT NULL,
  `id_berita` int(11) NOT NULL,
  `isi_com` text NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_iklan`
--

CREATE TABLE `tb_iklan` (
  `id_iklan` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_iklan`
--

INSERT INTO `tb_iklan` (`id_iklan`, `nama`, `url`, `foto`) VALUES
(3, 'penguins', 'www.penguinsanimasi.com', 'BR_20171029070729.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kat` int(11) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `isparent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kat`, `kategori`, `isparent`) VALUES
(20, 'baju anak', 0),
(26, 'baju fashion', 0),
(27, 'sepatu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `id_cust` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `k_pos` varchar(10) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`id_cust`, `user`, `pass`, `email`, `alamat`, `k_pos`, `telp`, `status`) VALUES
(7, 'sulis ', 'sulis123 ', 'sulis1@gmail.com ', '				ponorogo			', '67098 ', '0987567456786 ', 'bukan member ');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemesanan`
--

CREATE TABLE `tb_pemesanan` (
  `id_pm` int(11) NOT NULL,
  `id_cust` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_penjual`
--

CREATE TABLE `tb_penjual` (
  `id_pen` int(11) NOT NULL,
  `penjual` varchar(100) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `ket` text NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penjual`
--

INSERT INTO `tb_penjual` (`id_pen`, `penjual`, `telp`, `ket`, `alamat`) VALUES
(1, 'sari', '098765432', 'jual online', 'sby'),
(2, 'Sasa', '0896743567', 'jual online', 'MOJOKERTO\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesan`
--

CREATE TABLE `tb_pesan` (
  `id_pesan` int(11) NOT NULL,
  `id_cust` int(11) NOT NULL,
  `pengirim` varchar(100) NOT NULL,
  `isi_pesan` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_trans`
--

CREATE TABLE `tb_trans` (
  `id_trans` int(11) NOT NULL,
  `id_cust` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_trans_det`
--

CREATE TABLE `tb_trans_det` (
  `id_trans_det` int(11) NOT NULL,
  `id_trans` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_trans_det`
--

INSERT INTO `tb_trans_det` (`id_trans_det`, `id_trans`, `id_barang`, `jumlah`) VALUES
(1, 1, 8, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tb_barang_c`
--
ALTER TABLE `tb_barang_c`
  ADD PRIMARY KEY (`id_com`);

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `tb_berita_c`
--
ALTER TABLE `tb_berita_c`
  ADD PRIMARY KEY (`id_com`);

--
-- Indexes for table `tb_iklan`
--
ALTER TABLE `tb_iklan`
  ADD PRIMARY KEY (`id_iklan`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kat`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`id_cust`);

--
-- Indexes for table `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  ADD PRIMARY KEY (`id_pm`);

--
-- Indexes for table `tb_penjual`
--
ALTER TABLE `tb_penjual`
  ADD PRIMARY KEY (`id_pen`);

--
-- Indexes for table `tb_pesan`
--
ALTER TABLE `tb_pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `tb_trans`
--
ALTER TABLE `tb_trans`
  ADD PRIMARY KEY (`id_trans`);

--
-- Indexes for table `tb_trans_det`
--
ALTER TABLE `tb_trans_det`
  ADD PRIMARY KEY (`id_trans_det`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_barang_c`
--
ALTER TABLE `tb_barang_c`
  MODIFY `id_com` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_berita_c`
--
ALTER TABLE `tb_berita_c`
  MODIFY `id_com` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_iklan`
--
ALTER TABLE `tb_iklan`
  MODIFY `id_iklan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  MODIFY `id_cust` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  MODIFY `id_pm` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_penjual`
--
ALTER TABLE `tb_penjual`
  MODIFY `id_pen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_pesan`
--
ALTER TABLE `tb_pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_trans`
--
ALTER TABLE `tb_trans`
  MODIFY `id_trans` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_trans_det`
--
ALTER TABLE `tb_trans_det`
  MODIFY `id_trans_det` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
