-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2021 at 05:05 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbhotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas`
--

CREATE TABLE `fasilitas` (
  `id_fasilitas` int(11) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fasilitas`
--

INSERT INTO `fasilitas` (`id_fasilitas`, `jenis`, `deskripsi`, `gambar`) VALUES
(1, 'Tata tertib', 'Wajib setiap pengunjung mematuhi aturan yang tertera di Tomboan.', 'gambartatatertib.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `No_Kamar` int(50) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `No_Kamar`, `gambar`, `kategori`) VALUES
(1, 1, 'headetomboan3.JPG', ''),
(2, 2, 'headetomboan2.JPG', ''),
(3, 3, 'headetomboan5.JPG', ''),
(4, 4, 'headetomboan4.JPG', ''),
(5, 5, 'headetomboan6.JPG', '');

-- --------------------------------------------------------

--
-- Table structure for table `galeri2`
--

CREATE TABLE `galeri2` (
  `id_galeri2` int(11) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri2`
--

INSERT INTO `galeri2` (`id_galeri2`, `nama`, `gambar`) VALUES
(1, 'Gambar 1', '7854_rs_00_p_1024x768.jpg'),
(2, 'Gambar 2', 'Ballroom nikah1.jpg'),
(3, 'Gambar 3', 'Capture1.jpg'),
(4, 'Gambar 4', 'Capture2.jpg'),
(5, 'Gambar 5', 'Capture3.jpg'),
(6, 'Gambar 6', 'Capture4.jpg'),
(7, 'Gambar 7', 'ruang temu.jpg'),
(8, 'Gambar 8', 'mercurenikah1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `No_Kamar` char(15) NOT NULL,
  `id_galeri` int(50) NOT NULL,
  `Jenis` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Tarif` double DEFAULT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`No_Kamar`, `id_galeri`, `Jenis`, `Type`, `Tarif`, `deskripsi`) VALUES
('001', 1, 'Super Presidents', 'Single', 2500000, 'kamar super president nan mewah yang memiliki sebuah kamar tidur utama dengan kamar mandi en-suite yang mewah, sofa, bak mandi, mantel mandi dan sebuah lemari pakaian. Kamar ini juga memiliki ruang tamu yang dilengkapi dengan fasilitas home theater, TV LCD dengan mini HiFi, ruang makan, dapur, dan kamar mandi tambahan.'),
('002', 2, 'VIP', 'Single', 2000000, 'kamar VIP mewah yang memiliki sebuah kamar tidur utama dengan kamar mandi yang mewah, bak mandi, mantel mandi dan sebuah lemari pakaian. Kamar ini juga memiliki ruang tamu yang dilengkapi dengan fasilitas  TV LCD.'),
('003', 3, 'Super VIP', 'Single', 1000000, 'Kamar super VIP memiliki dua tempat tidur berukuran Queen atau satu tempat tidur berukuran King dengan dua sofa permanen yang ideal digunakan untuk bersantai, atau bisa berfungsi sebagai tempat tidur tambahan untuk anak-anak.'),
('004', 4, 'Deluxe VIP', 'Single', 1000000, 'Kamar Deluxe VIP memiliki tempat tidur berukuran Queen atau satu tempat tidur berukuran King dengan satu sofa permanen yang ideal digunakan untuk bersantai, atau bisa berfungsi sebagai tempat tidur bagi anak-anak.');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `id_konfirmasi` int(11) NOT NULL,
  `id_pelanggan` int(50) NOT NULL,
  `jumlah_transfer` int(11) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `gambar` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`id_konfirmasi`, `id_pelanggan`, `jumlah_transfer`, `bank`, `gambar`, `status`) VALUES
(6, 1, 2500000, 'BRI', '462846-blonde-Charlotte_anime-Kurobane_Yusa-748x472.jpg', 'Y'),
(7, 1, 3000000, 'BNI', 'cute-anime-wallpaper-high-definition-For-desktop-Wallpaper.jpg', 'Y'),
(8, 1, 3000000, 'MANDIRI', '0f562609e78d953de0fc403c5b185342.jpg', 'Y'),
(9, 2, 2000000, 'MANDIRI', '44e2716a97aa6f4072859756717015e8.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(35) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `jk` varchar(11) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `username`, `password`, `no_hp`, `jk`, `alamat`, `email`) VALUES
(1, 'afri yulianti', 'afri', 'afri', '082389132606', 'wanita', 'jkhhjghvghb', 'shellyasali@gmail.com'),
(2, 'Ridho Agustin', 'ridho', '12345', '08221702170', 'pria', 'Padang', 'shellyasali@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `saran`
--

CREATE TABLE `saran` (
  `id_saran` int(11) NOT NULL,
  `gambar` text NOT NULL,
  `nama` varchar(35) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saran`
--

INSERT INTO `saran` (`id_saran`, `gambar`, `nama`, `email`, `phone`, `pesan`) VALUES
(1, 'staff3.jpg', 'shelly Asali', 'shelly@gmail.com', '082389132270', 'Selamat Pagi, Hotel yang yang sangat menarik'),
(2, 'staff5.jpg', 'Yonaldo', 'yonaldo@gmail.com', '082389132456', 'Pelayanan Yang luar biasa dari para Satff hotel.'),
(3, 'staff7.jpg', 'Rido Ilham', 'ridoilham@gmail.com', '082389132567', 'Menyuguhkan pemandangan yang sangat luar biasa dan bisa melihat sunset dengan jelas'),
(4, 'staff4.jpg', 'Adly Prasetia Utama', 'adlyprasetyauta@gmail.com', '082389136789', 'Tingkatkan pelayanan agar lebih bagus lagi'),
(5, 'staff1.jpg', 'Afri Yulianti', 'afriyulianti@gmail.com', '082389132606', 'pelayanan yang sangat bagus!!!'),
(6, 'ea0c5c95730efd6290ef131ac9ee5ef5e1eebc1e_hq.jpg', 'Annisa Ramadhani', 'annisaramadhani@gmail.com', '082389136678', 'kolam renang yang sangat nyaman'),
(8, 'images.jpg', 'Nishikino Maki', 'nishikinomaki@gmail.com', '0855643627', 'kolam renang yang menenangkan'),
(10, 'komen2.jpg', 'kousa honoka', 'kousakahonoka@gmail.com', '98765432', 'menamplkan keindahan sunset dari kamar hotel!!!'),
(11, 'tumbuhan.JPG', 'Bagus', 'bagus@gmail.com', '08122323', 'Cok');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `deskripsi1` varchar(50) NOT NULL,
  `deskripsi2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id_slider`, `gambar`, `deskripsi1`, `deskripsi2`) VALUES
(1, 'mercure0.jpg', 'Welcome To Mercure Hotel', 'Hotel &amp; Resort'),
(2, 'mercure1.JPG', 'Pemandangan Indah Menanti', 'Join with Us!'),
(3, 'mercure2.JPG', 'Ruangan Yang Nyaman', 'Langsung Bayar!');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id_staff` int(11) NOT NULL,
  `gambar` text NOT NULL,
  `nama` varchar(25) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id_staff`, `gambar`, `nama`, `deskripsi`) VALUES
(1, 'staff6.jpg', 'Feri Supriana', 'Menjabat sebagai Financial Controller, Berperanan langsung terhadap urusan keuangan dan persiapan analisa operasional perusahaan, termasuk laporan keuangan dan interim terjadwal.\r\n\r\nBertanggung jawab terhadap perencanaan dan kebijakan dibidang keuangan, praktek akuntansi, termasuk menangani hal-hal yang berkaitan dengan institusi pembiayaan dan komunitas keuangan, menangani perpajakan, menganalisa dan menilai laporan keuangan sebelum ditetapkan menjadi laporan fiscal dan laporan keuangan resmi perusahaan, Ikut serta dalam mengawasi staf dibagian accounting dan keuangan, Akuntansi Umum, Akuntansi Aktiva, Akuntansi Biaya, dan pengawasan terhadap anggaran.\r\n'),
(2, 'staff4.jpg', 'Arthur Suhendra', 'Menjabat Direktur Hotel Mercure'),
(3, 'staff5.jpg', 'Yohanes Soni Haliman', 'staff husus Bagian IT Hotel Mercure'),
(4, 'staff1.jpg', 'Siti Nurhaliza', 'menjabat sebagai Resepsionis\r\n'),
(5, 'staff2.jpg', 'Celine Saputri', 'kepala chef Hotel Mercure'),
(6, 'staff3.jpg', 'Josephine Nayla Veronica', 'Menjabat Sebagai manajer dapur');

-- --------------------------------------------------------

--
-- Table structure for table `suguhan`
--

CREATE TABLE `suguhan` (
  `id_suguhan` int(11) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suguhan`
--

INSERT INTO `suguhan` (`id_suguhan`, `jenis`, `deskripsi`, `gambar`) VALUES
(1, 'Tahu Tempe dan Terong Goreng', 'Merupakan makanan Indonesia yaitu tahu, tempe, dan terong yang digoreng menggunakan minyak kelapa sawit', 'gorengan.jpg'),
(2, 'Sambal Terong', 'Racikan sambal yang dicampur dengan terong', 'sambal_terong.jpg'),
(3, 'Sate Vegan', 'Merupakan Sate yang bebas dari daging dengan saus kecap', 'sate.jpg'),
(4, 'Gatot', 'Gatot singkong bertabur kelapa parut', 'gatot.jpg'),
(6, 'Jamu Sidaguri', 'Merupakan racikan dari daun sidaguri yang bermanfaat', 'jamu.jpg'),
(7, 'Dadar Jagung dan Kacang Goreng', 'Jagung dan Kacang di campur dengan tepung terigu yang digoreng', 'dadar_jagung.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `id_pelanggan` char(15) NOT NULL,
  `Nama` varchar(100) DEFAULT NULL,
  `Alamat` char(15) DEFAULT NULL,
  `Asal` varchar(100) DEFAULT NULL,
  `NoTlp` char(15) DEFAULT NULL,
  `jk` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`id_pelanggan`, `Nama`, `Alamat`, `Asal`, `NoTlp`, `jk`) VALUES
('002', 'Shelly Asali', 'Jakarta pusat', 'Jakarta', '082389132607', 'perempuan'),
('003', 'Yonaldo', 'bukittinggi', 'Jakarta', '082389132608', 'Laki Laki'),
('004', 'Rido', 'padang', 'Solok', '082389132609', 'Laki Laki'),
('005', 'ihsan', 'jakarta', 'jakarta', '08665732561', 'Laki-Laki'),
('1', 'Afri Yuliati', 'Dusun 1 Jorong', 'Solok', '082389132606', 'perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `No_Faktur` varchar(50) NOT NULL,
  `No_Kamar` char(15) NOT NULL,
  `id_pelanggan` varchar(11) NOT NULL,
  `tgl_masuk` date DEFAULT NULL,
  `tgl_keluar` date DEFAULT NULL,
  `lama_menginap` int(11) NOT NULL,
  `Tarif` varchar(50) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Telpon` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`No_Faktur`, `No_Kamar`, `id_pelanggan`, `tgl_masuk`, `tgl_keluar`, `lama_menginap`, `Tarif`, `Nama`, `Telpon`, `Email`, `pesan`) VALUES
('5cdd13d92b4a7', '004', '1', '2019-05-17', '2019-05-18', 1, '100000', 'afri yulianti', '098765476', 'css@gmail.com', 'saya booking dulu!!'),
('5cdd1ce0d68cc', '003', '2', '2019-05-16', '2019-05-20', 4, '100000', 'Ridho Agustin', '082378667534', 'vendry7@gmail.com', 'ok'),
('5cdfa5079e0dd', '002', '1', '2019-05-19', '2019-05-20', 1, '200000', 'afri yulianti', '082389132606', 'shellyasali@gmail.com', 'nnnn'),
('5ce373aa0109d', '003', '1', '2019-05-22', '2019-05-23', 1, '100000', 'afri yulianti', '082389132606', 'shellyasali@gmail.com', 'boking!!'),
('5ce507d042687', '003', '2', '2019-05-23', '2019-05-24', 1, '100000', 'Ridho Agustin', '08221702170', 'shellyasali@gmail.com', 'boking!!');

-- --------------------------------------------------------

--
-- Table structure for table `tumbuhan`
--

CREATE TABLE `tumbuhan` (
  `id_tumbuhan` int(11) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tumbuhan`
--

INSERT INTO `tumbuhan` (`id_tumbuhan`, `jenis`, `deskripsi`, `gambar`) VALUES
(1, 'Daun Sidaguri', 'Sidaguri adalah tumbuhan liar di tepi jalan, halaman berumput, hutan, ladang, dan tempat-tempat dengan sinar matahari cerah atau sedikit terlindung. \r\n\r\nSidaguri memiliki sifat khas manis dan mendinginkan. Kandungan utama tanaman adalah tanin, flavonoid, saponin, alkaloid dan glikosida. Di samping itu juga ditemui kalsium oksalat, fenol, steroid, efedrine dan asam amino.\r\n\r\nSidaguri memiliki Khasiat:\r\n\r\n1. Demam\r\n2. Diare\r\n3. Rematik\r\n4. Obat Luka\r\n5. Disentri', 'daun_sidaguri.jpg'),
(2, 'Pecut Kuda', 'Pecut Kuda adalah salah satu tanaman liar yang hidup di Indonesia. Nama pecut kuda adalah nama lokal tanaman ini di Indonesia, sedangkan nama ilmiah dari tanaman ini adalah Stachytarpheta jamaicensis. Masyarakat Filipina menyebut tanaman pecut kuda dengan sebutan Kandikandilaan dan di Cina disebut dengan istilah Yulongbian\r\n\r\nPecut Kuda memiliki khasiat:\r\n1. Amandel\r\n2. Radang\r\n3. Batuk\r\n4. Rematik\r\n5. Infeksi Kemih\r\n6. Kanker', 'pecut_kuda.jpg'),
(3, 'Kumis Kucing', 'Tanaman ini dinamakan kumis kucing karena ukuran benangsari lebih panjang dari mahkota bunga sehingga menyerupai bentuk kumis kucing. \r\n\r\nTanaman yang memiliki nama latin Orthosipon stamineus (BI.) Miq ini termasuk tumbuhan yang banyak dijumpai di deerah yang bersuhu sedang, termasuk di Indonesia.\r\n\r\nKumis Kucing berkhasiat :\r\n\r\n1. Sakit gigi\r\n2. Darah tinggi \r\n3. Baik untuk ginjal\r\n4. Rematik\r\n5. Asam urat', 'kumis_kucing.jpg'),
(4, 'Daun Singkong', 'Singkong merupakan salah satu tanaman yang kaya manfaat. Mulai dari akar, batang, hingga daunnya bisa dimanfaatkan. Manfaat daun singkong untuk kesehatan tubuh juga cukup banyak.\r\n\r\nDaun Singkong berkhasiat:\r\n\r\n1. Rematik\r\n2. Demam\r\n3. Diare\r\n4. Membantu diet', 'daun_singkong.jpg'),
(5, 'Pisang', 'Pisang adalah buah yang dikenal luas di Indonesia. Buah pisang bisa dinikmati dengan berbagai cara: dimakan langsung, digoreng, dikukus, atau diolah bersama bahan lain. Tapi pisang tidak hanya enak, manfaatnya banyak.\r\n\r\n1. Metabolisme\r\n2. Anemia\r\n3. Membantu diet\r\n4. Merawat kulit', 'pisang.jpg'),
(6, 'Bunga Kopi', 'Beberapa khasiat dari bunga kopi ini adalah untuk menurunkan kadar gula atau orang sering menyebutnya dengan istilah diabetes. Selain itu, bunga kopi juga sangat baik untuk jantung Anda yang sehat. Dan yang lebih baik lagi bagi yang Anda yang pekerja keras, manfaatkanlah bunga kopi ini untuk mengatasi rasa lelah Anda.', 'bunga_kopi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `level`) VALUES
(1, 'Afri ', 'afri', 'cd40077493e8317dfdf92a2118720ef0', 'pimpinan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`id_fasilitas`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`),
  ADD KEY `No_Kamar` (`No_Kamar`);

--
-- Indexes for table `galeri2`
--
ALTER TABLE `galeri2`
  ADD PRIMARY KEY (`id_galeri2`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`No_Kamar`),
  ADD KEY `id_galeri` (`id_galeri`),
  ADD KEY `id_galeri_2` (`id_galeri`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`id_konfirmasi`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `saran`
--
ALTER TABLE `saran`
  ADD PRIMARY KEY (`id_saran`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indexes for table `suguhan`
--
ALTER TABLE `suguhan`
  ADD PRIMARY KEY (`id_suguhan`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`No_Faktur`),
  ADD KEY `No_Kamar` (`No_Kamar`);

--
-- Indexes for table `tumbuhan`
--
ALTER TABLE `tumbuhan`
  ADD PRIMARY KEY (`id_tumbuhan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `id_fasilitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `galeri2`
--
ALTER TABLE `galeri2`
  MODIFY `id_galeri2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `id_konfirmasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `saran`
--
ALTER TABLE `saran`
  MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `suguhan`
--
ALTER TABLE `suguhan`
  MODIFY `id_suguhan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tumbuhan`
--
ALTER TABLE `tumbuhan`
  MODIFY `id_tumbuhan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
