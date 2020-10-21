-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 17 Feb 2017 pada 08.13
-- Versi Server: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cbt`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
`id_kelas` int(5) NOT NULL,
  `kelas` varchar(20) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`) VALUES
(1, 'XII TSM 1'),
(2, 'XII TSM 2'),
(3, 'XII TSM 3'),
(4, 'XII TSM 4'),
(5, 'XII F 1'),
(6, 'XII F 2'),
(7, 'XII TKJ 1'),
(8, 'XII TKJ 2'),
(9, 'XII MM'),
(10, 'XII FAR'),
(11, 'XII TSM'),
(12, 'XII AK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas_ujian`
--

CREATE TABLE IF NOT EXISTS `kelas_ujian` (
  `id_ujian` int(5) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas_ujian`
--

INSERT INTO `kelas_ujian` (`id_ujian`, `id_kelas`, `aktif`) VALUES
(1, 1, 'Y'),
(1, 2, 'N'),
(1, 3, 'N'),
(1, 4, 'N'),
(1, 5, 'Y'),
(1, 6, 'N'),
(1, 7, 'N'),
(1, 8, 'N'),
(1, 9, 'N'),
(1, 10, 'N'),
(1, 11, 'N'),
(1, 12, 'N'),
(4, 7, 'N'),
(4, 8, 'N'),
(5, 1, 'N'),
(5, 2, 'Y'),
(5, 3, 'N'),
(5, 4, 'N'),
(5, 11, 'N'),
(6, 9, 'N'),
(7, 5, 'N'),
(7, 6, 'N'),
(7, 10, 'N'),
(8, 12, 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE IF NOT EXISTS `nilai` (
`id_nilai` int(10) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `id_ujian` int(5) NOT NULL,
  `acak_soal` text NOT NULL,
  `jawaban` text NOT NULL,
  `sisa_waktu` varchar(10) NOT NULL,
  `jml_benar` int(5) NOT NULL,
  `nilai` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
  `nis` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `password`, `id_kelas`, `status`) VALUES
('K03352540152', 'Dewi Siti Nuraeni', 'fbbaebf10764dfb6bb16937665910c65', 12, 'login'),
('K03352540169', 'Eka Sri Prahmawati', '168120f3e0b602562b335a531c7d5299', 12, 'mengerjakan'),
('K03352540178', 'Indah Laela', 'd33c64c44decfe9711ad1cdf9228bd0b', 12, 'off'),
('K03352540187', 'Lutviana', '7391a7c126465bb3e20563d472fce5c2', 12, 'off'),
('K03352540196', 'Muniroh', '5808844397e144053b4fe6584e9acecd', 12, 'off'),
('K03352540205', 'Nata Ardila', 'a96d90a5aa29d4716e6326e8d5642a07', 12, 'off'),
('K03352540214', 'Nurhikmah', '98970144ca9e5c3204db75cb6eb432ec', 12, 'off'),
('K03352540223', 'Reka Nur Safitri', 'df9657f6abe5b7fd7691ee86b4ff464f', 12, 'off'),
('K03352540232', 'Rina Laela', 'b23b766c7b17dd86d29cefa4851b8df6', 12, 'off'),
('K03352540249', 'Siti Muljanah', '4041d45664418245e97a6d8a68aca8b1', 12, 'off'),
('K03352540258', 'Sri Depi', 'd6ae636749a75a4ea53f463bab93c400', 12, 'off'),
('K03352540267', 'Sulistia', 'c647672b84c75452f80d4b8b3b4ec372', 12, 'off'),
('K03352540276', 'Suratmi', 'cef8653876b694b88256dfc0c32c0b8d', 12, 'off'),
('K03352540285', 'Titi Murni', '4239b22dca94d588af26c1f855843647', 12, 'off'),
('K03352540294', 'Titi Nofiyanti', '88f2744be02cabd4df3040fd65bcf58a', 12, 'off'),
('K03352300018', 'Akmad Riyadi', '5557894d1bf9584f4087404f6a84866d', 5, 'mengerjakan'),
('K03352300027', 'Ayu Nadiyah', 'bb0ce327e6c4e3c6ddc76ac4d3edb105', 5, 'off'),
('K03352300036', 'Diana Krisyanti', 'a34859e38a7c79b5ac9b9123bc3e2d54', 5, 'off'),
('K03352300045', 'Dita Widiani', 'e10755e2d12809f1d17d33514278043a', 5, 'off'),
('K03352300054', 'Fathuli ilmi', 'e2530119b14c14a75a251416ad2573d1', 5, 'off'),
('K03352300063', 'Fatkhatur Rizqiyah', 'dadf3440ed6e33b684459420d88281a3', 5, 'off'),
('K03352300072', 'Febby Aji Rizki Isnaeni', 'c5eeb3e18dbfe340b9d4cf02bb132b4f', 5, 'off'),
('K03352300089', 'Fransiska Wulan Kurniasih', '3f091236bc819f03f1fe886ba591e9b4', 5, 'off'),
('K03352300098', 'Gian Al Kautsar', 'e218f7c498642161d337a8aac6ebd2c0', 5, 'off'),
('K03352300107', 'Ina Ayu Wulandari', '574b0fbc24d59296eb3e47a34137b66d', 5, 'off'),
('K03352300116', 'Istahaqol Hana', '3583e4a2c0bf9e853218e2ea8eb92477', 5, 'off'),
('K03352300125', 'Khusnul Aliyah', '676dfb7355cdc996dfc35384a45ccedb', 5, 'off'),
('K03352300134', 'Melisah Surti', '148d4914ab167731bc45460441c0c434', 5, 'off'),
('K03352300143', 'Mizaetul Janah', '6b60c6555dec2360d388d1e07227e630', 5, 'off'),
('K03352300152', 'Muhammad Andri Setiawan', 'bf266440bd2c47b5a25b6454137b24ab', 5, 'off'),
('K03352300169', 'Muhammad Yunus', '984de05c631a97bf146428f6de353a83', 5, 'off'),
('K03352300178', 'Nurul Atika', 'ad945eb0f1deca7f7a15b3f449340b1f', 5, 'off'),
('K03352300187', 'Retno Dewi', '19965b041a126199430aac625110de5a', 5, 'off'),
('K03352300196', 'Rike Putri Handayani', 'ca3408c9d7ba182ee068eec8a82eead8', 5, 'off'),
('K03352300205', 'Sri Rejeki', '7483d418c150a88522eefea783cfd512', 5, 'off'),
('K03352300214', 'Tika Nurariyanti', '5e5d04becf16ed0f9219c3f7699ab51a', 5, 'off'),
('K03352300223', 'Tutut Anggraeni', '5c35276a03e2c38ce88160c46c5dafd7', 5, 'off'),
('K03352300232', 'Yuliyani', '9c832f1f00cf4e5cdf817761d8c19f2d', 5, 'off'),
('K03352300249', 'Ayu Larasati', 'a38b70a8d11464957fce9601ec3a69a0', 6, 'off'),
('K03352300258', 'Ayu Wahyu Ningrum', 'dafa9b6c63739579317e7b156a2b2d6a', 6, 'off'),
('K03352300267', 'Chitra Dwi Saputri', '6e9db03b89ffa3f0cc6bddb920e101a2', 6, 'off'),
('K03352300276', 'Diah Eka Pratiwi', '4136b0edead301edd5931ac9f0b36f28', 6, 'off'),
('K03352300285', 'Ela Nandayani', 'f2d79800dfaae09877414c93343a59de', 6, 'off'),
('K03352300294', 'Isatul Hayati', '81e9b5ed964feabc7f55971d31e2a79b', 6, 'off'),
('K03352300303', 'Khafifah Khaerunisah', '7dc69996809be16eb4b06df5b429d13e', 6, 'off'),
('K03352300312', 'Kholda Rokhadatul Aisy', 'd191453554dd94bcbef811b6011e167e', 6, 'off'),
('K03352300329', 'Linda Putri Maulidah', '8fa7035462c97983ea66ab371c7729bd', 6, 'off'),
('K03352300338', 'Maessy Wulandari', '102d33003602e797791c0844a18402fc', 6, 'off'),
('K03352300347', 'Mega Ayu Ambar Ismanu', '06cce092a9ed222644a0dafae3b5ea9b', 6, 'off'),
('K03352300356', 'Naora Insia Nazifah', '97dc25e4f8501f2243aa3659b90a6df9', 6, 'off'),
('K03352300365', 'Novia Tiyas Mutiari', '75c59f6e05a4b362de9dbedc8ae73802', 6, 'off'),
('K03352300374', 'Nur Azizah Setiowati', '983cd81ec2c17866af72cedf01983be7', 6, 'off'),
('K03352300383', 'Reza Rizki Awaliyah', 'ade5beac9f16d3e5a156e2157968646d', 6, 'off'),
('K03352300392', 'Selfi Mutia Yuliani', '56994cce060f33e1dc07e98ff196e66d', 6, 'off'),
('K03352300409', 'Sinta Febri Hidayah', 'd4bf369d9a99976a3a970e8294d768d8', 6, 'off'),
('K03352300418', 'Siti Aulia', 'ebf91fcfe7f5d565a66503738c2ec7d0', 6, 'off'),
('K03352300427', 'Suci Rahayu', 'f68953989bb542795a5a8b1fa6fe4749', 6, 'off'),
('K03352300436', 'Syifaul Azqiya', 'd022c41ec8f26db0c3eca4406603fd41', 6, 'off'),
('K03352300445', 'Tiya Ainun Juniarti', 'b02f273bdd9d751aef00866a1e5e01b3', 6, 'off'),
('K03352300454', 'Vegi Indah Permatasari', '5654624d828773374c2b48da96f8fc9b', 6, 'off'),
('K03352300463', 'Widiawati', 'a858657323e6993bf3ecaa94e2dfdda7', 6, 'off'),
('K03352360018', 'DESVANIRA CAHAYA RAMADHANI', '6f765e57da307715ad6db787863f480a', 10, 'off'),
('K03352360027', 'DEWI LESTARI NINGSIH', 'df2a871eb1ffaba0aebb3bc1f391174c', 10, 'off'),
('K03352360036', 'EGA ADHNY MUKHAFIDOH', '7571fecb9b89bde0db0c3ffd4bada01a', 10, 'off'),
('K03352360045', 'ELIZA MAGHFIROTIKA', '02e5101e9cf982a8411bbdbc93096a5b', 10, 'off'),
('K03352360054', 'FAIQOH MAGHFIROHTIKA', '82d3b44039bec6536382bc0509962246', 10, 'off'),
('K03352360063', 'FIQIH SETIAWAN HARYADI', 'baf38afd91ba48b3a4bec43e31dfbd28', 10, 'off'),
('K03352360072', 'FITRIYANAH', 'b979ef47de820297e0e7e0b4e36b6788', 10, 'off'),
('K03352360089', 'HALIMATUS SA''DIYAH', 'c5b829e2453a4a3ad6b1073f771780fa', 10, 'off'),
('K03352360098', 'HENI PURWANTININGSIH', '9c5a8c1d781412af46aed26a686b6d66', 10, 'off'),
('K03352360107', 'IDZA RIFANY', 'ae76a6fb55410a4080126b68750b12b7', 10, 'off'),
('K03352360116', 'ILMA AMALIA', 'ac028de78ae2b278e486a67eb06180f3', 10, 'off'),
('K03352360125', 'ISMI NUR ZAHRA', '5d8f428139e446fe3d1d6f2eba9ff9b6', 10, 'off'),
('K03352360134', 'JIHAN PUSPITA AYU', 'd18b0e7320cda3dcf71115e0b502a5c7', 10, 'off'),
('K03352360143', 'NUR KHOPIPAH', '168e55785dfbbeb6e99ea2dbe5399ac6', 10, 'off'),
('K03352360152', 'NUR INDAH RISYKIYANI', '90f000f24805dde5b30235235629059a', 10, 'off'),
('K03352360169', 'QUROTUL AYUNI', '6ab346fa4aed0593acccbab90439378c', 10, 'off'),
('K03352360178', 'RIEKE ROESTILAWATI FAJRIN', '924c74e06f2304b69117273f8c7773fa', 10, 'off'),
('K03352360187', 'RIFQI MAULANA', '1e8bf043951b80f6b89626ff8dd079d2', 10, 'off'),
('K03352360196', 'SEPI AYUNINGTYAS', '0edef6bcfa2cec81427eafa0e7d1c1a6', 10, 'off'),
('K03352360205', 'SINTA LUTFIANA', '220a9c9cbfe4f34087f39766f76ec172', 10, 'off'),
('K03352360214', 'SITI NUR LATIFAH', '8da220a56b78af3a09de8c6b62c6ed99', 10, 'off'),
('K03352360223', 'SUCI WANTI', '86f59b927f885dbeca5a8fb0fa60153a', 10, 'off'),
('K03352360232', 'SUCI WULANDARY', '07da7351bfbd53ed5b845ed1a4930b85', 10, 'off'),
('K03352360249', 'WINDA OKTIANA', '7ee6bc974bb84dca1ee2e82d7949cc54', 10, 'off'),
('K03352360258', 'YOSI KOMALASARI', '4d95f43d8b5bf7ad3dbdc6865bffb766', 10, 'off'),
('K03352360267', 'YUNI WULANDARI', 'f73591dc8f10cfe81194d34e8e5dab46', 10, 'off'),
('K03352360276', 'YUNITA', 'a0001a911fe7e855b42691fb05de778d', 10, 'off'),
('K03352301174', 'Ari Abdurrahman Ghufron', 'dc77863ede53af3e30d9fb8bd1a0f91b', 9, 'off'),
('K03352301183', 'Asrori', 'b09c9253facb6bd487153d0985a66730', 9, 'off'),
('K03352301192', 'Chintiya Alvionita Azhari', 'e02fb1d9ea1139b07d234839f0d8e29f', 9, 'off'),
('K03352301209', 'Christiana Chandra Setiawan', '9905884c34b705b9d6a7bec6957fdf41', 9, 'off'),
('K03352301218', 'Diny Puspa Rini', '5ed567ffe7531a40ff0b7090a3eed9db', 9, 'off'),
('K03352301227', 'Dwi Intan Br P', '0713abb2f7d55b5a2b5bbbfe75fce622', 9, 'off'),
('K03352301236', 'Eli', '5e90db48d7cb447b840a892bd5ea41f7', 9, 'off'),
('K03352301245', 'Fajar Ricky Prayoga', 'f5aef4646e44defae763bee66fcd7405', 9, 'off'),
('K03352301254', 'Gita Rafelina Putri', '32dd722b9d5b5538e2788743cd974fd5', 9, 'off'),
('K03352301263', 'Lorosi Setia Gunawan', 'ac64fa9acf8fbafc2200035646519548', 9, 'off'),
('K03352301272', 'M. Izzudin Assubki', '7995dacdf999f2cbe1721cadb21dde9e', 9, 'off'),
('K03352301289', 'Melitha Dwi Herdyanti Pratiwi', '3abd79703b0b77688ce29c72cf6a6267', 9, 'off'),
('K03352301298', 'Mohamad Aris Sunandar', 'acd928f25d7444094850a7f6b1531efa', 9, 'off'),
('K03352301307', 'Pajri Sae Apriyani', '1e97aacd713b98b8d70dd0fdc852d968', 9, 'off'),
('K03352301316', 'Patmawati', '1d801e6b7fe0064bc1508aaa35434494', 9, 'off'),
('K03352301325', 'Ramadhanty Andan Sari', '8c7d155eb7dfb6376c0d18800e67bc5d', 9, 'off'),
('K03352301334', 'Rintaningsih', 'f61967c9ec44164d1f0a2fa728f19617', 9, 'off'),
('K03352301343', 'Sarah Azzahra', '8e22f12ec3353287174552a08a8bb398', 9, 'off'),
('K03352301352', 'Sella Windra Pratiwi', 'e7d2db16e498ebf2082f5d32c2faf282', 9, 'off'),
('K03352301369', 'Siti Fatimah', 'acc0c29b2788ab1ee47f8871b790ef24', 9, 'off'),
('K03352301378', 'Tri Resti Widyana Sakuntalasari', '0c701fb88092d746c8f675460a5fcdb0', 9, 'off'),
('K03352301387', 'Verawati', '78e0d45e917de2dbb21273b766bad5ea', 9, 'off'),
('K03352301396', 'Widianingsih', '1e4904912c84fd53f457118b3ec8ef63', 9, 'off'),
('K03352301405', 'Zafirah Ramadhany Wibowo', '60041d31882e8d08e106b82dd4197a76', 9, 'off'),
('K03352300472', 'Ade Saputra', '5b5e7fe9f51de07fd0894315aaf5050a', 7, 'off'),
('K03352300489', 'Afrizal Juwantoro', 'f1d9ef411d5372b17b4c8d9970868ba3', 7, 'off'),
('K03352300498', 'Aldi Kholiq', 'c891709cc4bcf3811b64a120e39d82f2', 7, 'off'),
('K03352300507', 'Alfiyah Rikhmadatul Aisy', 'bd013d19889f44d144b4729f22cdccc3', 7, 'off'),
('K03352300516', 'Anton Ahmad Susilo', 'f7b329cab3f33e0af1962b437a8ff553', 7, 'off'),
('K03352300525', 'Bagas Alhikam', 'ae5a7a756219986e9b7e6877ccdc026b', 7, 'off'),
('K03352300534', 'Bima Unzilla', 'ceb4e23d3c72acce20add3f99f071891', 7, 'off'),
('K03352300543', 'Daroh Atun', '46f7db5c545c243d903c98c8affb123b', 7, 'off'),
('K03352300552', 'Dimas Pasya Zul Azzam', '8251f6ba6e1e6b4ec3acbfe5e806efd9', 7, 'off'),
('K03352300569', 'Dini Isnaeni Novitasari', '314cb63fd8890cd0d720c913c9b68071', 7, 'off'),
('K03352300578', 'Dwi Nurlita', '8658cc963c68edf2c7f3b5351fa00978', 7, 'off'),
('K03352300587', 'Dwi Setya Afandy', '18b499293e4dbaa243bbc79b30a44c53', 7, 'off'),
('K03352300596', 'Erika Septi Pamelia', '109c192943c81d4b3e5aec665a472242', 7, 'off'),
('K03352300605', 'Fitri Wahyuni', '9150449308664a8f5bd3c5157fcb2e1b', 7, 'off'),
('K03352300614', 'Galang Bela Nusa', '2503012639e91e630cbc8b44683cd40c', 7, 'off'),
('K03352300623', 'Isti Asmaul Chusna', 'e8c9b1292bd12230034176548014a1ae', 7, 'off'),
('K03352300632', 'Izmiyatul Fallah', '34133941132562f4c371d9ed128ac1b2', 7, 'off'),
('K03352300649', 'Melani Putri', '93c38f4831d5a2665325a9f3ded4904e', 7, 'off'),
('K03352300658', 'Miftahul Huda Nugroho', '268759110a316258fe2bfb1058c6b56d', 7, 'off'),
('K03352300667', 'Moh. Hasan Fikri', '2aae04774b083d5f1deb2b9e71f0367a', 7, 'off'),
('K03352300676', 'Muhammad Ivan', '9f11613b39f4da29a80219e31bad14d9', 7, 'off'),
('K03352300685', 'Nur Yuliani', 'ab38b5c5423f3f4599987a7211573f5b', 7, 'off'),
('K03352300694', 'Nuratmo', 'e48e6bfe22e58b80f5aea5fa4c7af2b4', 7, 'off'),
('K03352300703', 'Nurhidayat Ramadhon', 'f90d5fe0a236e8061d32b848d0c27689', 7, 'off'),
('K03352300712', 'Putri Wahyu Ningsih', '045d3207b3540254d07d0485ae4ca7a0', 7, 'off'),
('K03352300729', 'Reni Triyanti', '577f5ed938b2496d837bb88397adfd67', 7, 'off'),
('K03352300738', 'Risti Widiyanti', '611c0b70066d4e873256b2c2c8ba6519', 7, 'off'),
('K03352300747', 'Sisi Nur Zaetun', '11fefdb74eaf163144d04354347c39f4', 7, 'off'),
('K03352300756', 'Siti Prensiediatin', 'bfa673b762c777d9cbfa23f90f966794', 7, 'off'),
('K03352300765', 'Soni Firdaus Prayoga', '4c26a5f1412b70a21944071ee21d94be', 7, 'off'),
('K03352300774', 'Sri Indah Wati', '40795e0f46c7092bb28c622c2d44370f', 7, 'off'),
('K03352300783', 'Tri Oktaviani Sekarsari', '78db3726b57136443b2858491de0af82', 7, 'off'),
('K03352300792', 'Wiwin Wulandari', '8473618351d44e9194bf7d8c8e713e45', 7, 'off'),
('K03352300809', 'Yoga Hermawan', 'c9d200c93925c61da552ff7955c7906c', 7, 'off'),
('K03352300818', 'Yuslih Amri', 'ad6ef80344efaf6f632432640463941a', 7, 'off'),
('K03352300827', 'Aditya Firmansyah', 'fec4a76ff20508cb6c36cf6b37fea805', 8, 'off'),
('K03352300836', 'Ahmad Aenun Najib', 'ad4064ed89c079795893aed6055c1a90', 8, 'off'),
('K03352300845', 'Akhmad Abas Zami', '85734915f9dad229b3fc3a5b1c649561', 8, 'off'),
('K03352300854', 'Ali Sodikin', '28c9a47640a55c449ec4efd8d3131cdc', 8, 'off'),
('K03352300863', 'Dea Ayu Ramadani', '77db0cd52937872d3bf39bb69b3c728a', 8, 'off'),
('K03352300872', 'Dinda Dwiyantari', '91a94ba617590a9bd3003a8df0e80104', 8, 'off'),
('K03352300889', 'Dwi Nurhikmah', 'd4d173c134aefeaf63fe34739169e4fe', 8, 'off'),
('K03352300898', 'Fanny Rahmawati', '7a55fb8503583f7451544623e3f75f93', 8, 'off'),
('K03352300907', 'Fisal Sandi Pradesti Sinaga', '29ccf46b971ebd52c2d149986c54593a', 8, 'off'),
('K03352300916', 'Fitri Alfiyah', '6d4c26482118071388c8f81ff3fe43f4', 8, 'off'),
('K03352300925', 'Indah Permatasari', 'ee7dadd3a6acd06e060899abe2e3ad39', 8, 'off'),
('K03352300934', 'Ismi Dian Safitri', '2dd84ff3eb478ae3fffec2c79455ec23', 8, 'off'),
('K03352300943', 'Juni Parwati', 'f0c095951661e3672151bd58dc97b874', 8, 'off'),
('K03352300952', 'Khaenun Narita', '292603cba6ff193e7c696bbc4e8a4615', 8, 'off'),
('K03352300969', 'Muhamad Rif''an Ferdiansyah', '7a93daf4c385095e7cbe0fa712a4404c', 8, 'off'),
('K03352300978', 'Moh. Ardi Indrajaya', 'd220503840fb5c334f32674a3a347cf9', 8, 'off'),
('K03352300987', 'Moh. Warnoto', 'f8c7f5184edea56f513adf12cc2b5778', 8, 'off'),
('K03352300996', 'Mohamad Andika Apri Pratama', '015ecba5e600cfd399f563dd3aa0184f', 8, 'off'),
('K03352301005', 'Muhammad Miftah Nurul Arifin', 'eb372ca4f8ee909a51f138bc5a0c80cf', 8, 'off'),
('K03352301014', 'Neilis Syifaun Ni''mah', '39120e590d26135e0fe65da0b2c68305', 8, 'off'),
('K03352301023', 'Nizar Tanfidi Asyhari', 'ef6d9c505bf97ae8b2fd21a6ca0a0e78', 8, 'off'),
('K03352301032', 'Prihatin Agustinah', '06788c568b89de700ac7b0cd911c55d4', 8, 'off'),
('K03352301049', 'Raffi Setyo Putri', '2f16b1c512acabb48947e35342fa63ac', 8, 'off'),
('K03352301058', 'Rike Nur Safitri', '8221d14fca7bcc4f382ce5d919791554', 8, 'off'),
('K03352301067', 'Ririn Widiastuti', 'f9f2562ecc515476a644ca94efd337e0', 8, 'off'),
('K03352301076', 'Risni Azizah', '99ad33f0557b1c4d4778dd418855486d', 8, 'off'),
('K03352301085', 'Rizki Nur Salim Nasir', 'c604eed65e4ae463eb060b4dbcbed220', 8, 'off'),
('K03352301094', 'Rofiqoh', 'db0937e238fb4b78d14a533b14f35deb', 8, 'off'),
('K03352301103', 'Safitri Astika Sari', '58da32d3046faedbd0f213f09adb1962', 8, 'off'),
('K03352301112', 'Sri Devi Yuliana Indri Lestari', '85ee355d397507a3b6fd25e88f2d1131', 8, 'off'),
('K03352301129', 'Suko Pandidit Sadewo', '358ae29caadcc70c00df96119b5ab2b1', 8, 'off'),
('K03352301138', 'Sutansyah Nur Iman', '2d905241bd2562ee7a4b5bdc77492c58', 8, 'off'),
('K03352301147', 'Uung Hias Anugrah', '8ffeb7c7f97e4559541b50c5300a6911', 8, 'off'),
('K03352301156', 'Viki Harisman', '526c0cb1744d0597389e5bbff893290d', 8, 'off'),
('K03352301165', 'Widiawati', 'fbca047f6e0d0e91b4904da4d6635f7d', 8, 'off'),
('K03352301414', 'Agung Juliyanto', '38720b8f69a7e31df53cb9ccca429a9f', 1, 'login'),
('K03352301423', 'Agus Nurohman', '9556dc27dfcbd6ee90e4325b8b0e2039', 1, 'login'),
('K03352301432', 'Ahmad Nur Soleh', '956a3ca558f4a6393d2e684bafde4ba1', 1, 'mengerjakan'),
('K03352301449', 'Anang Fitriana', 'cd3742014e4bab53cb8b2418f65dc15c', 1, 'off'),
('K03352301458', 'Andre Ariyanto Manalu', '7fd70575ee91d76bba436708683a30fd', 1, 'off'),
('K03352301467', 'Aziz Dwi Samudra', '021ec865400a8cc958995897c8cde891', 1, 'login'),
('K03352301476', 'Bambang Riyanto', '5f8549649ede0a30d1d615ebd7af532a', 1, 'off'),
('K03352301485', 'Dici Wahyudi', 'a50c609a87a9cdfbb2cc6a297efb4065', 1, 'off'),
('K03352301494', 'Dimas Setiawan', '43bb6ca2fb4e9444a3d070d8b8b543e4', 1, 'off'),
('K03352301503', 'Haris Maulana', '2d7a29c2b72191b31d8d85bf328dd3da', 1, 'off'),
('K03352301512', 'Inggar Maftuchi', '9469baca4f9338ae57be00ab3651ee1a', 1, 'off'),
('K03352301529', 'M. Aji Saputro', 'cbaab65513983f457ffda65cc149d5f0', 1, 'off'),
('K03352301538', 'Miftakhul Fikri', '21bb9de3f89f265dd92b3921459462e6', 1, 'off'),
('K03352301547', 'Moch. Safi''i', 'd03369152c7ca2c6e552fa6c1d968ea2', 1, 'off'),
('K03352301556', 'Mochamad Fikri Tofani', '0b842fc50fca70cc8fcb85af0abb4232', 1, 'off'),
('K03352301565', 'Mohamad Parhan', '246ddbcd82561b4eb8b801ecdde2058d', 1, 'off'),
('K03352301574', 'Muafi Adwin', '2badb5a5f64b73295c9c41b1e3c5d905', 1, 'off'),
('K03352301583', 'Muhamad Ardi Fikdiansyah', 'cfe9cf5b9ee23c0831181cb8c7c53125', 1, 'off'),
('K03352301592', 'Muhamad Furqoni Azizi', '66c28724e191dcbdc05343d880903ef1', 1, 'off'),
('K03352301609', 'Nurokhim', 'a97f4b6fe6e0450873d07ce65697a0de', 1, 'off'),
('K03352301618', 'Reza Sepriyo', '6c730eed11d0fb82dfeff151d7140685', 1, 'off'),
('K03352301627', 'Rizqi Hidayat', '63fd4b8e726837a881afeff6e0d0ecdd', 1, 'off'),
('K03352301636', 'Syaviq Nanda Nurridzki', '03ee1194d6a06034bdcd112d6c1fe225', 1, 'off'),
('K03352301645', 'Wahyu Abi Setiawan', '07c72f65042472588896c764c9cd3300', 1, 'off'),
('K03352301654', 'Yudha Pratama', '530ef1ebbba31519f6580d77ef849a19', 1, 'off'),
('K03352301663', 'Abdhi Satrya Nugroho', '3ee5d135dfd5efbd35d35bbded0b2894', 2, 'mengerjakan'),
('K03352301672', 'Achmad Afton Fahim Ilmi', 'bbaefaccf93626d3a2129de7b3cd26a0', 2, 'mengerjakan'),
('K03352301689', 'Agusti Aris Darmawan', '52c934ec60d1255922f12a77a13500bf', 2, 'off'),
('K03352301698', 'Ahmad Khoerudin Mu''arif', '55d5242742f1194777f898cac6f54108', 2, 'off'),
('K03352301707', 'Aji Margono', 'b59e97161a0eb7ddfd59fdd605ae8453', 2, 'off'),
('K03352301716', 'Akhsan Bagus Romdoni', 'e8a1134797c5a77b94d41b6a26102fa4', 2, 'off'),
('K03352301725', 'Alfin Hadi Maulana', '6a3c541f1e0a39ac90a8734f9b45c1fa', 2, 'off'),
('K03352301734', 'Amri Maulana', 'be6cef10cd0e5a811e1184959d0f45b3', 2, 'off'),
('K03352301743', 'Andi Usmanto', '71c8902969e34b9b4b0f99019eed159f', 2, 'off'),
('K03352301752', 'Bayu Muarif', '261c0b35faedf460b97f4a4dff32a562', 2, 'off'),
('K03352301769', 'Bilih Sandi Pranoto', '0f0f24a3574bf3e548e221b02f4ec635', 2, 'off'),
('K03352301778', 'Faiz Khaerul Rizqianto', 'ac6bf36f46356f8cd81310cee8db0f26', 2, 'off'),
('K03352301787', 'Febri Andrian Ramandika', 'adb70a02574478c4ca2ecd2b5529189a', 2, 'off'),
('K03352301796', 'Ferry Adhitya Candra', 'bdf05c51a77a990a2d4d3c3fd9537baf', 2, 'off'),
('K03352301805', 'Hafidz Fajar Setyawan', 'fa814755837cdc038da308a431211aff', 2, 'off'),
('K03352301814', 'Ivan Kristanto Handoyo', 'fac773547dfb9236a9ec07dbd0f1c3da', 2, 'off'),
('K03352301823', 'M. Ilham Muzaki', 'ead9d99e61795c99f8b78fe8d0d91433', 2, 'off'),
('K03352301832', 'Mohammad Fariz Naufal', '1543f91bbe3693634aafd2d23b0d1050', 2, 'off'),
('K03352301849', 'Muh. Khaerul Ummam', 'd78adcfe236b91a545d8e017b6952c56', 2, 'off'),
('K03352301858', 'Muhamad Mustofa', '88d19027bf82071b54a9f288e38ce4d5', 2, 'off'),
('K03352301867', 'Mukhamad Wakhidi Rizki', '0d1cf44d7a6b765883370f32e066db02', 2, 'off'),
('K03352301876', 'Mustofa', '90bd85ec995ca5686b8f24cbe331de5e', 2, 'off'),
('K03352301885', 'Sugeng Ragil Raharjo', '4ba8b0b9bac78c9b54ed2cbf177928b0', 2, 'off'),
('K03352301894', 'Sukrijal Umar', 'a894853f42af15a0edcfa1da278bf721', 2, 'off'),
('K03352301903', 'Tri Faizal Fahry', '21b3bdf37b83b3326b33e0c706c001a7', 2, 'off'),
('K03352301912', 'Ade Novan Dwiono', 'e2856a3e0a5fc471f5751b662298f38a', 3, 'off'),
('K03352301929', 'Adhe Nur Alif', '5fd43992d501c666b973982d10704929', 3, 'off'),
('K03352301938', 'Ahmad Fani', '48c5c31fb9e40e4f93760f83a17ed399', 3, 'off'),
('K03352301947', 'Aji Pamungkas', 'b60a4257593aeb130e04af36ab5ac08f', 3, 'off'),
('K03352301956', 'Aji Prasetyo', '989975830b962df6993e900b2581cddf', 3, 'off'),
('K03352301965', 'Dedi Priyanto', 'dd888fdceb0b194611011ef76a24c1af', 3, 'off'),
('K03352301974', 'Dwi Ari Hermawan', 'c3dbc5ecf07d4e090227d0e2550f5ebb', 3, 'off'),
('K03352301983', 'Eza Wahyudi', '6486bc2e1e94f09e0f0af8898afd31b5', 3, 'off'),
('K03352301992', 'Fathan Rosidin', '465a89ff552acba05b84fe205f1a6069', 3, 'off'),
('K03352302009', 'Heru Suswanto', 'ec6b8bc61246e17ad887b9efdc749952', 3, 'off'),
('K03352302018', 'Jalil Mukhromiin', '0282c5129d23106566a840bf72646b13', 3, 'off'),
('K03352302027', 'Juang Robi Subekti', 'bcb7a09c1774235701b89bc064598e16', 3, 'off'),
('K03352302036', 'Miladi Zaki Satrio', 'e2d259ee9c53ff02d8446c244dac457f', 3, 'off'),
('K03352302045', 'Mirza Izaki', 'cbaf4053ba877f403e092ec6f89bb0af', 3, 'off'),
('K03352302054', 'Mochamad Ardyatna Risaldy', '3511d3e26c354d29218b35af31b5472f', 3, 'off'),
('K03352302063', 'Moh. Nur Khoeri', '08db3664eb02a41c9d33b2d7d2b9b8fb', 3, 'off'),
('K03352302072', 'Moh. Zakil Khilmi', '9192f9ba12faf84f76249e79e708cd42', 3, 'off'),
('K03352302089', 'Mohamad Chanigia', '2614469d1a7e336d78595cec44425f2e', 3, 'off'),
('K03352302098', 'Mohamad Supriyono', '14bba07b42b61d7be82455c0e49287c6', 3, 'off'),
('K03352302107', 'Mohamad Tommy Satrio', 'bfcd7b204a99eaeaa471616a29f082fe', 3, 'off'),
('K03352302116', 'Mohammad Reza Aristya', '1b7de6c7119e26a44f86ed99f40f4ef5', 3, 'off'),
('K03352302125', 'Muhammad Afinanis Fakhu', '4a65a464771780315fb21b5ce84d97e9', 3, 'off'),
('K03352302134', 'Muhammad Miftahurrizqi', '25a419f34b7874f083a9c8a19502b58e', 3, 'off'),
('K03352302143', 'Nanda Wahyu Pratama', 'da17bd0b34ace500d7878f67e564f91b', 3, 'off'),
('K03352302152', 'Prabowo Febrianto', '4551ca0580388a685c2f4116e63d8183', 3, 'off'),
('K03352302169', 'Riki Zaka Rizqi', 'e8575129e20aefc892f3b3cc5af43597', 3, 'off'),
('K03352302178', 'Rizkhi Novianto', 'a3fd2f89c2985018e90784ff60a6a089', 3, 'off'),
('K03352302187', 'Rosa Hendri Ariwibowo', '87cd83ec4fd8c6682a76876f928c6e49', 3, 'off'),
('K03352302196', 'Subastiar Bayu Rokib', '20085936fbace1a06118b3a271837c23', 3, 'off'),
('K03352302205', 'Wahyu Hidayatullah', 'aebba400c60bee7a5b800c3baa916b0d', 3, 'off'),
('K03352302214', 'Wawan Sadewo', '938d955250ba6c3c493f077a987b85c3', 3, 'off'),
('K03352302223', 'Yonieq Praba Saputra', '391971bce35db3cef08dab37b3026062', 3, 'off'),
('K03352302232', 'Abdul Aziz Baihaqi', 'd1521a37efc283c00989ddbc035ba71a', 4, 'off'),
('K03352302249', 'Adam Hidayatullah', '7ea178918623bff8d340a7981b9810c5', 4, 'off'),
('K03352302258', 'Ade Riyanto', 'b53bfc6169aef0dd792d8c6974ef8249', 4, 'off'),
('K03352302267', 'Ade Septian Dwi Alan', '54fc7045613d87a209257a3272e3cec2', 4, 'off'),
('K03352302276', 'Agus Tian Hardika', '215ffced7b0f7dc9081fcc0fe85c3baf', 4, 'off'),
('K03352302285', 'Ahmad Sofyan Kadarisman', '3a1f07d4b4c19d5699e88dc64203fddc', 4, 'off'),
('K03352302294', 'Almutaali', '819a5ea0df8f4911b1e0caf46b28d5f4', 4, 'off'),
('K03352302303', 'Anjas Wonda Elmoris', '0d65dc3c351774fbe7da65ad65c8dea6', 4, 'off'),
('K03352302312', 'Antomoro', 'c5ccb801eebbc9f895422542d6126b51', 4, 'off'),
('K03352302329', 'Arif Maulana', '831fc8fc3df63a054cda8cc5b32a95f7', 4, 'off'),
('K03352302338', 'Azis Yuda Pratama', '932aa26295f7b09f8a67e60580974f07', 4, 'off'),
('K03352302347', 'Bayu Putra Senjaya', '3ac21d08969baeaad0046caa1b4eeff1', 4, 'off'),
('K03352302356', 'Dikky Pahlawan', 'd329de1f4eed5bfb4cce4aa40e3a70b6', 4, 'off'),
('K03352302365', 'Dima Angga Pratama', 'ed7d4319611b812cc703ca07d0c9a7b9', 4, 'off'),
('K03352302374', 'Endar Bayu Prasetyo', '51f6f3ca64157494d47df075efced6b1', 4, 'off'),
('K03352302383', 'Erza Dwi Aprilian', 'e385b72c541db87613677be57f4809e5', 4, 'off'),
('K03352302392', 'Faizal Gusmustofa', '8626920fb684fb6a1596cf2ccecb9781', 4, 'off'),
('K03352302409', 'Fajar Ananda Pratama', '7acefb2bfe854abaece4766f5bf7c920', 4, 'off'),
('K03352302418', 'Ilham Akbar Septian Saputra', 'b26bdf78c2246f8058b27af0ffd03da0', 4, 'off'),
('K03352302427', 'Imam Dzul Fahmi Asegaf', '938d49a74ac23f6f4d520adf34052fa7', 4, 'off'),
('K03352302436', 'Imam Ramdani', 'f85e61e813ed0bfce1257235b4f156ae', 4, 'off'),
('K03352302445', 'Irfan Muzaki', '52788f01609a9984d8e4f0d248755467', 4, 'off'),
('K03352302454', 'Krishendi Eky Prasetio', '1d9f88067f08a8284146e0801fdc5f9b', 4, 'off'),
('K03352302463', 'Krisna Rahguveer Aksay Malau', '83c622c32e9512a2e53f6eef1ce63203', 4, 'off'),
('K03352302472', 'Mohamad Tamprin', '5195c0c465ead169abde136c7b751f33', 4, 'off'),
('K03352302489', 'Muhamad Heri Kuswoyo', 'da1653fb753737e9af384214b9839738', 4, 'off'),
('K03352302498', 'Muhammad Firdaus', '5277741a36e4cfaa1b9d31d7e0bff3aa', 4, 'off'),
('K03352302507', 'Mustofa Haris', 'd96af879b50926217b3589d2d78977ae', 4, 'off'),
('K03352302516', 'Prasetyo', '3ee5c504e1c3163a6f80895b682773e9', 4, 'off'),
('K03352302525', 'Ryan Dwi Hartiko Sulistiawan', 'dc3001595ed30f040f023f35ce50a968', 4, 'off'),
('K03352302534', 'Trio Fatukhi Akbar', '5f6dfef4c0af3c49ee6a2a611707ce93', 4, 'off'),
('K03352302543', 'Yogi Nadianto', '9afc9b4f5d7a5b96987f90b1e717cd59', 4, 'off'),
('K03352540018', 'Achmad Muflihurijal', '275d446e33d645f5b53e54faeab743c0', 11, 'off'),
('K03352540027', 'Ais Dava Ulhak', 'fc9a343c8df5ea5f8f684e36686dad87', 11, 'off'),
('K03352540036', 'Hidayat Yudi Prabowo', 'd0a55d84868d31b6a23a980350f55787', 11, 'off'),
('K03352540045', 'Ilyas Alan Hermawan', 'fa5ab51da8e21425f8772b43f19ec277', 11, 'off'),
('K03352540054', 'Indra Riswana', '00a6efd8735bbfcf48d2101109a8025d', 11, 'off'),
('K03352540063', 'M. Amarrudin', '50d2259d4896cd20521d637916e27b45', 11, 'off'),
('K03352540072', 'Moh Hadi', '8d8debfe06dcf732a6e579fe55c0a5ab', 11, 'off'),
('K03352540089', 'Mohamad Dakhori', 'ee178db4be83d34d79315c2c319c196d', 11, 'off'),
('K03352540098', 'Mohamad Sobirin', 'd458efba1e49f25c0b7bafad06c9e429', 11, 'off'),
('K03352540107', 'Muhamad Muhemin', '0a3b3ae250c919d6603ad324dc6c87d3', 11, 'off'),
('K03352540116', 'Muhamad Teguh Wibowo', '69fdc642c37666268e38b34519641023', 11, 'off'),
('K03352540125', 'Muhammad Aji Ali Musa', 'da185362c55463c5413491466c147c9b', 11, 'off'),
('K03352540134', 'Wahyudin', '26056570cc93429f374a8ae6367eaf14', 11, 'off'),
('K03352540143', 'Wahyudin', 'fb7bfa84e1967c0e02f9e728c67aa903', 11, 'off');

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE IF NOT EXISTS `soal` (
`id_soal` int(5) NOT NULL,
  `id_ujian` int(5) NOT NULL,
  `soal` text NOT NULL,
  `audio` varchar(100) NOT NULL,
  `pilihan_1` text NOT NULL,
  `pilihan_2` text NOT NULL,
  `pilihan_3` text NOT NULL,
  `pilihan_4` text NOT NULL,
  `pilihan_5` text NOT NULL,
  `kunci` int(2) NOT NULL,
  `urut` int(5) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=300 ;

--
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`id_soal`, `id_ujian`, `soal`, `audio`, `pilihan_1`, `pilihan_2`, `pilihan_3`, `pilihan_4`, `pilihan_5`, `kunci`, `urut`) VALUES
(3, 1, '<p>Cermatilah paragraf berikut</p>\r\n<table width="710">\r\n<tbody>\r\n<tr>\r\n<td width="710">\r\n<p>Semua wartawan tentu ingin karya mereka <em>orisinal</em>. Itu sebabnya kita berkecimpung di bidang ini. Jurnalisme adalah menyampaikan hal-hal baru ke <em>publik</em>, sesuatu yang memikat, yang menarik perhatian mereka. Semua wartawan &ndash;bahkan wartawan senior atau wartawan kenamaan sekalipun- mengkhawatirkan derajat orisinalitas mereka.</p>\r\n<p>(Sumber: <em>bbcindonesia.com</em>)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Kata <em>orisinal </em>dan <em>publik</em> pada teks tersebut memiliki makna &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p><em>asli </em>dan <em>umum</em></p>', '<p>&nbsp;<em>tulen</em> dan <em>rakyat</em></p>', '<p>&nbsp;<em>asli</em> dan <em>khalayak</em></p>', '<p>&nbsp;<em>tulen </em>dan <em>warga</em></p>', '<p>&nbsp;<em>asli</em> dan <em>rakyat</em></p>', 1, 0),
(4, 1, '<p>Simaklah paragraf berikut dengan cermat! (Indikator 2)</p>\r\n<table width="720">\r\n<tbody>\r\n<tr>\r\n<td width="720">\r\n<p>Terbiasa dengan musik karena latihan bermain musik dan sebagainya, berpengaruh pada otak. Efeknya sangat positif dan jangka panjang. Studi yang telah dipublikasikan dalam <em>Journal of Neuroscience </em>ini menyatakan, 4 hingga 14 tahun pelatihan musik selama di usia muda, akan membuat saraf otak manusia juga lebih cepat dalam menanggap pidato. Jadi, tidak ada salahnya mempelajari piano atau gitar, walaupun hanya terbatas&mdash;katakanlah 4-5 tahun&mdash;dan bila setelahnya tak melanjutkan menjadi musisi. Sebab sudah diketahui bahwa hasil "terpapar musik" bisa membantu dari beberapa jenis penurunan dalam fungsi otak yang terjadi dipengaruhi faktor usia.</p>\r\n<p>(Sumber: <em>nationalgeographic.co.id</em>, 4 Desember 2013)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Manakah gagasan utama yang tepat pada paragraf tersebut &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>Musik dapat mengoptimalkan fungsi otak dan mengantisipasi penurunan fungsi otak karena faktor usia.</p>', '<p>&nbsp;Musik dapat membuat saraf otak manusia menjadi lebih cepat dalam menanggapi cerita.</p>', '<p>&nbsp;Saraf otak manusia akan jauh lebih berkembang ketika mendengarkan musik selama usia muda.</p>', '<p>&nbsp;Saraf otak dapat berkembang lebih baik ketika mempelajari piano atau gitar.</p>', '<p>&nbsp;Fungsi otak manusia dapat dioptimalkan jika mempelajari piano atau gitar minimal selama 4-5 tahun.</p>', 1, 0),
(5, 1, '<p>Simaklah paragraf berikut dengan saksama! (Indikator 3)</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td width="703">\r\n<p>Fenomena kematian beruntun yang dialami kelompok Orang Rimba di sekitar Taman Nasional Bukit Duabelas, Jambi, merupakan bencana kelaparan. Tanpa penanganan darurat dan cepat, angka kematian itu akan terus bertambah. "Kejadian ini merupakan bencana kelaparan akibat krisis pangan," kata Robert Aritonang. Bencana serupa, lanjut Robert di Jambi, pernah terjadi tahun 1999 dengan menewaskan 13 warga Orang Rimba. Wilayah itu mengalami paceklik, dan diperparah pembukaan hutan menjadi kebun dan hutan tanaman industri.</p>\r\n<p>(Sumber: <em>nationalgeographic.co.id</em>, 4 Maret 2015)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Kesimpulan tersirat dari teks di atas adalah &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>Paceklik yang berdampak pada kelaparan menjadi penyebab kematian sejumlah Orang Rimba di Jambi.</p>', '<p>&nbsp;Kematian sejumlah Orang Rimba di Jambi disebabkan karena pembukaan hutan menjadi kebun industri.</p>', '<p>&nbsp;Kematian dapat diantisipasi melalui penghapusan pembukaan hutan menjadi kebun dan hutan tanaman industri.</p>', '<p>&nbsp;Bencana kelaparan akibat krisis pangan dialami oleh Orang Rima di sekitar Taman Nasional Bukit Duabelas.</p>', '<p>&nbsp;Tahun 1999, Jambi pernah dilanda bencana kelaparan yang menewaskan 13 warga Orang Rimba.</p>', 1, 0),
(6, 1, '<p>Cermatilah kalimat berikut dengan saksama! (Indikator 4)</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td width="600">\r\n<p>Hari Pendidikan Nasional, yang akrab disebut Hardiknas, diperingati setiap tanggal 2 Mei.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Inti kalimat tersebut adalah &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>Hari Pendidikan Nasional diperingati setiap tanggal 2 Mei.</p>', '<p>&nbsp;Hari Pendidikan Nasional, yang disebut Hardiknas, diperingati tanggal 2 Mei.</p>', '<p>&nbsp;Hari Pendidikan Nasional atau Hardiknas diperingati setiap tanggal 2 Mei.</p>', '<p>&nbsp;Hari Pendidikan Nasional, biasa disebut Hardiknas, diperingati setiap tanggal 2 Mei.</p>', '<p>&nbsp;Hari Pendidikan Nasional dirayakan setiap tanggal 2 Mei.</p>', 1, 0),
(7, 1, '<p>Simaklah paragraf berikut ini dengan cermat! (Indikator 5)</p>\r\n<table width="726">\r\n<tbody>\r\n<tr>\r\n<td width="726">\r\n<p>Ahli forensik dari Belanda berhasil menemukan cara untuk mengidentifikasi tanggal pada sidik jari. Terobosan ini diharapkan dapat membantu pihak kepolisian untuk menyelidiki sidik jari dari kejahatan di masa lalu. "Dengan menemukan tanggal sidik jari, dapat ditentukan kapan si pelaku berada di TKP atau jika sidik jari tidak relevan dengan waktu kejadian," kata Marcel de Puit. Sebelumnya, para ahli mencoba untuk menerka tanggal sidik jari dengan fokus pada bahan kimia, tapi usahanya gagal. Kali ini, ahli menganalisis keringat, lemak, campuran kompleks kolesterol, asam amino, dan protein.</p>\r\n<p>(Sumber: <em>tempo.co</em>, 6 Juni 2014)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tanggapan positif terhadap pendapat yang terkandung dalam wacana tersebut adalah &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>Penentuan tanggal pada sidik jari dapat mengungkap lebih banyak lagi fakta yang terlibat di dalamnya.</p>', '<p>&nbsp;Menganalisis kandungan senyawa menuntun penyidik mengetahui kadar senyawa pelaku kejahatan.</p>', '<p>&nbsp;Dengan menemukan tanggal sidik jari, berarti dapat ditentukan pula kondisi kesehatan pelaku.</p>', '<p>&nbsp;Penentuan tanggal pada sidik jari membantu kita dalam menyelidiki kondisi kehidupan pelaku.</p>', '<p>&nbsp;Penentuan tanggal pada sidik jari memberi pengetahuan baru tentang senyawa di dalamnya.</p>', 1, 0),
(8, 1, '<p>Simaklah wacana berikut ini! (Indikator 6)</p>\r\n<table width="732">\r\n<tbody>\r\n<tr>\r\n<td width="732">\r\n<p>(1)Bencana besar tengah dihadapi oleh 500 badak di Afrika Selatan. (2)Cula badak menjadi favorit di pasar Asia karena dianggap dapat memberikan kekuatan. Setidaknya 631 badak dibunuh di Afrika Selatan dan 408 diantaranya terjadi di Taman Nasional Kruger. (3)Kematian badak ini mencapai puncaknya tahun 2013 lalu, di mana 1.004 badak terbunuh sehingga terancam kepunahan. (4)Sekitar 500 binatang direlokasi dari daerah berisiko tinggi ke berisiko rendah dalam Taman Nasional Kruger. (5)Penciptaan zona perlindungan intensif di Taman Nasional Kruger diupayakan Pemerintah Afrika Selatan untuk melawan perburuan dan sindikat penyelundupan.</p>\r\n<p>(Sumber: <em>nationalgeographic.co.id</em>, 24 Agustus 2014)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pernyataan yang menunjukkan sebuah simpulan pada paragraf di atas terdapat pada kalimat nomor &hellip;</p>', '', '<p>(1)</p>', '<p>(2)</p>', '<p>(3)</p>', '<p>(4)</p>', '<p>(5)</p>', 5, 0),
(9, 1, '<p>Simaklah wacana berikut ini! (Indikator 6)</p>\r\n<table width="732">\r\n<tbody>\r\n<tr>\r\n<td width="732">\r\n<p>(1)Bencana besar tengah dihadapi oleh 500 badak di Afrika Selatan. (2)Cula badak menjadi favorit di pasar Asia karena dianggap dapat memberikan kekuatan. Setidaknya 631 badak dibunuh di Afrika Selatan dan 408 diantaranya terjadi di Taman Nasional Kruger. (3)Kematian badak ini mencapai puncaknya tahun 2013 lalu, di mana 1.004 badak terbunuh sehingga terancam kepunahan. (4)Sekitar 500 binatang direlokasi dari daerah berisiko tinggi ke berisiko rendah dalam Taman Nasional Kruger. (5)Penciptaan zona perlindungan intensif di Taman Nasional Kruger diupayakan Pemerintah Afrika Selatan untuk melawan perburuan dan sindikat penyelundupan.</p>\r\n<p>(Sumber: <em>nationalgeographic.co.id</em>, 24 Agustus 2014)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Kata kunci yang berfungsi sebagai koherensi dalam paragraf di atas&nbsp;adalah &hellip; (Indikator 7)</p>\r\n<p>&nbsp;</p>', '', '<p>perburuan</p>', '<p>&nbsp;penyelundupan</p>', '<p>&nbsp;cula</p>', '<p>&nbsp;badak</p>', '<p>&nbsp;kepunahan</p>', 4, 0),
(10, 1, '<p>Simaklah wacana berikut ini! (Indikator 6)</p>\r\n<table width="732">\r\n<tbody>\r\n<tr>\r\n<td width="732">\r\n<p>(1)Bencana besar tengah dihadapi oleh 500 badak di Afrika Selatan. (2)Cula badak menjadi favorit di pasar Asia karena dianggap dapat memberikan kekuatan. Setidaknya 631 badak dibunuh di Afrika Selatan dan 408 diantaranya terjadi di Taman Nasional Kruger. (3)Kematian badak ini mencapai puncaknya tahun 2013 lalu, di mana 1.004 badak terbunuh sehingga terancam kepunahan. (4)Sekitar 500 binatang direlokasi dari daerah berisiko tinggi ke berisiko rendah dalam Taman Nasional Kruger. (5)Penciptaan zona perlindungan intensif di Taman Nasional Kruger diupayakan Pemerintah Afrika Selatan untuk melawan perburuan dan sindikat penyelundupan.</p>\r\n<p>(Sumber: <em>nationalgeographic.co.id</em>, 24 Agustus 2014)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Manakah ringkasan yang tepat berdasarkan teks di atas &hellip; (Indikator 8)</p>\r\n<p>&nbsp;</p>', '', '<p>Kematian badak ini mencapai puncaknya tahun 2013 lalu, di mana 1.004 badak terbunuh.</p>', '<p>&nbsp;Bencana besar tengah dihadapi oleh 500 badak di Afrika Selatan.</p>', '<p>&nbsp;Perburuan cula badak adalah penyebab pembunuhan dan penyelundupan badak di Afrika Selatan.</p>', '<p>&nbsp;Cula badak menjadi favorit di pasar Asia karena dianggap dapat memberikan kekuatan.</p>', '<p>&nbsp;Penciptaan zona perlindungan intensif untuk melawan perburuan dan sindikat penyelundupan.</p>', 3, 0),
(11, 1, '<p>Simaklah puisi berikut! (Indikator 9)</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td width="396">\r\n<p><strong>HUTANG</strong></p>\r\n<p>&hellip;</p>\r\n<p>hutang itu berdetak dengan sejumlah detak jantung kami</p>\r\n<p>dan mendesir bersama desiran darah kami,</p>\r\n<p>serta tak sempat kami lunasi sebelum kami mati</p>\r\n<p>maka hutang itu</p>\r\n<p>akan menjadi lumpur nanah</p>\r\n<p>tempat berkubang anak-anak kami</p>\r\n<p>hutang itu akan menjadi samudera air mata</p>\r\n<p>tempat berlayar cucu-cucu kami</p>\r\n<p>&hellip;</p>\r\n<p>(D. Zawawi Imron, <em>Proses</em> <em>Kreatif 4, </em>hlm. 207)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kata <em>lumpur nanah</em> dalam teks tersebut memiliki makna &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>penyesalan</p>', '<p>&nbsp;penderitaan</p>', '<p>&nbsp;penindasan</p>', '<p>&nbsp;perenungan</p>', '<p>&nbsp;pemerasan</p>', 2, 0),
(12, 1, '<p>Simaklah penggalan puisi berikut ini dengan saksama!</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td width="354">\r\n<p><strong>CINTA</strong></p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <em>Untuk Tedjawati</em></p>\r\n<p><em>&nbsp;</em></p>\r\n<p>Cinta serupa dengan laut</p>\r\n<p>Selalu ia terikat pada arus</p>\r\n<p>Setiap kali ombaknya bertarung</p>\r\n<p>Seperti tutur kata dalam hatimu</p>\r\n<p>Sebelum mendapat bibir yang mengucapkannya</p>\r\n<p>&hellip;</p>\r\n<p>(Abdul Hadi, <em>Madura, Luang Prabhang</em>, hlm. 104)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Maksud bait dalam penggalan puisi tersebut adalah &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>Gemuruh hati seorang kamu yang sedang merasakan cinta.</p>', '<p>&nbsp;Cinta seorang kamu yang diibaratkan dengan arus laut.</p>', '<p>&nbsp;Ucapan bibir yang serupa ombak ketika bertarung.</p>', '<p>&nbsp;Arus laut yang selalu terikat dengan ombak.</p>', '<p>&nbsp;Tutur kata seorang kamu sebelum bibir mengucapkannya.</p>', 1, 0),
(13, 1, '<p>Cermatilah petikan cerpen berikut! (Indikator 10)</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td width="703">\r\n<p>Ceritanya akan selalu seperti itu, turun-temurun. Di kampung sepanjang bantaran sungai Logawa ini, kalau ada seorang anak yang kehilangan ibunya, entah meninggal atau <em>minggat</em> dengan lelaki kota, maka orang-orang akan menghibur dengan cerita itu, mereka akan mengatakan bahwa ibunya sekarang sudah berubah menjadi kunang-kunang yang rajin mengunjunginya. Meski tak berwujud manusia, anak itu harus sadar bahwa sang ibu masih benar-benar ada, masih suka berdiam di dekatnya, terutama di malam hari, untuk memberikan kasih sayang yang tulus kepadanya.</p>\r\n<p>(<em>Biografi Kunang-Kunang</em> karya Sungging Raga)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Manakah unsur intrinsik yang menonjol dalam penggalan cerpen tersebut &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>latar tempat</p>', '<p>&nbsp;latar suasana</p>', '<p>&nbsp;latar waktu</p>', '<p>&nbsp;amanat</p>', '<p>&nbsp;tema</p>', 2, 0),
(14, 1, '<p>Bacalah gurindam berikut dengan saksama!</p>\r\n<table width="288">\r\n<tbody>\r\n<tr>\r\n<td width="288">\r\n<p>Jika seseorang banyak berkata</p>\r\n<p>Waspadailah kemungkinan ia berdusta</p>\r\n<p>&hellip;</p>\r\n<p>&hellip;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Manakah isi yang tepat untuk melengkapi penggalan gurindam tersebut &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>Karena berdusta membuat tidak nyaman</p>\r\n<p>Tidak nyaman yang merusak ketenteraman</p>', '<p>&nbsp;Sebab berdusta sering tak pandang kawan</p>\r\n<p>Yang ada semua dianggap lawan</p>', '<p>&nbsp;Sebab berdusta bisa merusak zaman</p>\r\n<p>Zaman yang hilang dari kenyamanan</p>', '<p>&nbsp;Sebab berdusta membuat kita hilang dari peredaran</p>\r\n<p>Peredaran yang tidak karuan</p>', '<p>&nbsp;Sebab berdusta sejenis kenakalan</p>\r\n<p>Kenakalan yang berujung pada kehancuran</p>', 2, 0),
(15, 1, '<p>Simaklah petikan puisi beriku ini dengan saksama!</p>\r\n<table width="300">\r\n<tbody>\r\n<tr>\r\n<td width="300">\r\n<p><strong>SURAT DARI IBU</strong></p>\r\n<p>...</p>\r\n<p>Pergi ke laut lepas, anakku sayang</p>\r\n<p>pergi ke alam bebas!</p>\r\n<p>Selama hari belum petang</p>\r\n<p>dan warna senja belum kemerah-merahan</p>\r\n<p>menutup pintu waktu lampau</p>\r\n<p>&hellip;</p>\r\n<p>(Asrul Sani, <em>Tonggak 1</em>, hlm. 400-401)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Manakah simpulan tersirat yang tepat dari bait puisi tersebut &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>Pesan seorang ibu kepada anaknya agar pergi ke alam bebas sebelum hari petang.</p>', '<p>&nbsp;Pesan seorang ibu kepada anaknya agar menimba ilmu pengetahuan dan pengalaman selagi mampu.</p>', '<p>&nbsp;Pesan seorang ibu kepada anaknya agar pergi sebelum waktu berlalu berubah menjadi lampau.</p>', '<p>&nbsp;Pesan seorang ibu kepada anaknya agar mencari rezeki sebelum kematian datang menjemput.</p>', '<p>&nbsp;Pesan seorang ibu kepada anaknya agar pergi ke laut lepas mencari rezeki dari hasil laut.</p>\r\n<p>&nbsp;</p>', 2, 0),
(16, 1, '<p>Simaklah petikan cerpen berikut!</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td width="703">\r\n<p>&ldquo;Nak Mas, kepahitan hidup bisa menjadi permulaan kemanisan hidup. Juga kemanisan hidup bisa juga menjadi permulaan kepahitan hidup.&rdquo;</p>\r\n<p>&ldquo;Maksudnya?&rdquo;</p>\r\n<p>&ldquo;Semasa muda, saya hidup senang sebagai petani dengan sawah warisan orangtua yang luas. Hidup sangat kecukupan. Tapi kita manusia suka lupa diri, kurang mensyukuri nikmat Allah. Sawah ludes dalam judi sabung ayam. Jatuh ke tangan orang kaya yang banyak orang menyebutnya seorang tuan tanah. Akhirnya jadilah saya cuma sebagai petani penggarap. Dalam kesulitan hidup ini, sebuah organisasi persatuan para petani datang sebagai dewa penolong, paling tidak menolong saya lebih bersemangat dalam menghadapi hidup. Organisasi ini menjanjikan perjuangan untuk memperbaiki kehidupan petani, dengan melawan apa yang disebut setan desa, seperti rentenir, tengkulak ijon, dan apa saja yang merugikan kaum tani, termasuk melawan tuan tanah. Saya aktif di dalamnya sebagai ketua ranting desa&hellip;. Yang baru kemudian saya tahu, bahwa organisasi ini mendapat julukan <em>onderbow</em> partai terlarang, oleh pemerintah!&rdquo;</p>\r\n<p>(<em>Wiro Seledri </em>karya GM Sudarta)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Manakah pernyataan kritik yang tepat terhadap penggalan cerpen tersebut &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>Teknik alur kilas-balik menyebabkan inti cerita yang disampaikan menjadi kurang gamblang.</p>', '<p>&nbsp;Sikap tokoh yang terlampau lugu yang belum tentu menggambarkan warga secara keseluruhan.</p>', '<p>&nbsp;Dialog yang dibangun kurang matang sehingga peristiwa yang digambarkan menjadi kabur.</p>', '<p>&nbsp;Latar tempat dijelaskan secara berlebihan sehingga penggambaran cerita menjadi terlampau deskriptif.</p>', '<p>&nbsp;Kurang adanya penjelasan amanat sehingga pembaca kesulitan dalam menyimpulkan cerita.</p>', 2, 0),
(17, 1, '<p>Simaklah penggalan prosa fiksi berikut!</p>\r\n<table width="710">\r\n<tbody>\r\n<tr>\r\n<td width="710">\r\n<p><strong>Ada</strong> kebiasaan Ibu yang telah dilakukannya sejak menikah dengan Bapak. Ibu selalu menyimpan pakaian-pakaian yang memiliki arti begitu mendalam baginya.</p>\r\n<p>Salah satunya adalah kebaya pengantin lengkap dengan kain batik pesisiran, rapi ia simpan di dalam koper kecil usang di bawah ranjang. Setelah ijab kabul sekitar lima puluhan tahun silam, kebaya brokat putih itu dikenakan untuk kedua kalinya ketika Mbak Ratih, kakak sulung kami, bersanding dengan lelaki pilihan hatinya di pelaminan.</p>\r\n<p>Sepanjang resepsi perkawinan Mbak Ratih, kami adik-adik perempuannya menatap kagum sekaligus iri. Membayangkan betapa sakralnya riwayat kebaya yang saat itu melekat di tubuh Mbak Ratih. Kebaya itu dijahitkan sendiri oleh mendiang ibunya Ibu di tengah keadaan negeri yang sedang porak-poranda.</p>\r\n<p>(<em>Kain Perca Ibu</em> karya Andrei Aksana)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Manakah unsur intrinsik yang dominan dalam penggalan prosa fiksi tersebut &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>tema</p>', '<p>&nbsp;tokoh</p>', '<p>&nbsp;latar tempat</p>', '<p>&nbsp;latar suasana</p>', '<p>&nbsp;latar waktu</p>', 2, 0),
(18, 1, '<p>Cermatilah penggalan cerpen berikut ini!</p>\r\n<table width="710">\r\n<tbody>\r\n<tr>\r\n<td width="710">\r\n<p>&ldquo;Kau ini mau ke mana, Tap?&rdquo;</p>\r\n<p>&ldquo;Mudik!&rdquo;</p>\r\n<p>&ldquo;Ini hari masih pagi. Bukankah kita akan berangkat nanti malam?&rdquo;</p>\r\n<p>&ldquo;Ah! Kau tunggu sajalah di sini. Istirahatlah dulu. Aku mau pamitan dengan penduduk di kampung ini.&rdquo;</p>\r\n<p>&ldquo;Haa&hellip;!?&rdquo;</p>\r\n<p>Wajah Segap ternganga. Lebih ternganga lagi ketika melihat Gotap, sohib lawasnya itu, keluar dari kamar dan berjalan menuju gang tanpa sandal atau sepatu. Begitu mantap, melangkah pasti ke rumah tetangga paling dekat. Tak sedikit pun ada keraguan tercium, selain bau wangi yang meruap dari kedua telapak tangan dan kakinya. Dengan bersalaman atau tersentuh jari-jarinya, semua orang akan mencium aroma segar yang nguar di udara. Apalagi di bekas jabat tangannya, serasa mekar bunga kenanga.</p>\r\n<p>Bukan hanya itu, yang membuat para tetangga tersipu, merasa heran, dan terbengong-bengong di depan pintu, satu demi satu, dari rumah ke rumah penduduk kampung itu, Gotap masuk dan keluar seperti petugas sensus sedang mendata. Bahkan masih menyempatkan diri memberi salam dan pamitan pada setiap orang yang dijumpainya sepanjang jalan. Kenal atau tidak, hanya sekadar tahu atau yang pura-pura tak mau tahu, disalaminya sepenuh hati.</p>\r\n<p>(<em>Pulang Tanpa Alamat</em> cerpen Abidah El Khalieqy)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Berikut ini manakah watak tokoh Gotap yang tepat &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>rendah hati</p>', '<p>&nbsp;rendah raga</p>', '<p>&nbsp;baik hati</p>', '<p>&nbsp;tinggi hati</p>', '<p>&nbsp;dua hati</p>', 1, 0),
(19, 1, '<p>Cermatilah penggalan cerpen berikut ini!</p>\r\n<table width="710">\r\n<tbody>\r\n<tr>\r\n<td width="710">\r\n<p>&ldquo;Kau ini mau ke mana, Tap?&rdquo;</p>\r\n<p>&ldquo;Mudik!&rdquo;</p>\r\n<p>&ldquo;Ini hari masih pagi. Bukankah kita akan berangkat nanti malam?&rdquo;</p>\r\n<p>&ldquo;Ah! Kau tunggu sajalah di sini. Istirahatlah dulu. Aku mau pamitan dengan penduduk di kampung ini.&rdquo;</p>\r\n<p>&ldquo;Haa&hellip;!?&rdquo;</p>\r\n<p>Wajah Segap ternganga. Lebih ternganga lagi ketika melihat Gotap, sohib lawasnya itu, keluar dari kamar dan berjalan menuju gang tanpa sandal atau sepatu. Begitu mantap, melangkah pasti ke rumah tetangga paling dekat. Tak sedikit pun ada keraguan tercium, selain bau wangi yang meruap dari kedua telapak tangan dan kakinya. Dengan bersalaman atau tersentuh jari-jarinya, semua orang akan mencium aroma segar yang nguar di udara. Apalagi di bekas jabat tangannya, serasa mekar bunga kenanga.</p>\r\n<p>Bukan hanya itu, yang membuat para tetangga tersipu, merasa heran, dan terbengong-bengong di depan pintu, satu demi satu, dari rumah ke rumah penduduk kampung itu, Gotap masuk dan keluar seperti petugas sensus sedang mendata. Bahkan masih menyempatkan diri memberi salam dan pamitan pada setiap orang yang dijumpainya sepanjang jalan. Kenal atau tidak, hanya sekadar tahu atau yang pura-pura tak mau tahu, disalaminya sepenuh hati.</p>\r\n<p>(<em>Pulang Tanpa Alamat</em> cerpen Abidah El Khalieqy)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br />Berikut ini manakah pernyataan yang tepat berdasarkan ilustrasi penggalan cerpen di atas&nbsp;&hellip;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '', '<p>Jika akan bepergian, maka hendaknya berpamitan dulu kepada tetangga di sekitar tempat tinggal.</p>', '<p>&nbsp;Sikap kekeluargaan dalam bermasyarakat dapat memperkokoh persaudaraan dalam hidup bertetangga.</p>', '<p>&nbsp;Dalam bermasyarakat, kenal atau tak kenal, sebaiknya disalami dengan sepenuh hati.</p>', '<p>&nbsp;Ketika berpamitan, hendaknya dalam keadaan wangi yang meruap dari kedua telapak tangan dan kaki.</p>', '<p>&nbsp;Dalam berpamitan, hendaknya menyalami seluruh tetangga yang ada di sekitar kita.</p>', 2, 0),
(20, 1, '<p>Simaklah kedua resensi berikut ini dengan saksama!</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td width="367">\r\n<p>Film ini merupakan film yang sangat bagus yang diambil dari sebuah novel cerita anak negeri di pulau terindah di Indonesia yaitu Pulau Belitong. Film ini juga bisa mempromosikan pulau tersebut, bahwa negeri kita ini mempunyai pulau yang sangat indah. Alur ceritanya juga bagus sangat natural dengan kepolosan ke-10 anak Laskar Pelangi tersebut.</p>\r\n<p>(Sumber: <em>donieorens.wordpress.com</em>)</p>\r\n</td>\r\n<td width="367">\r\n<p>Dari sisi gagasan, film ini menggarap berbagai permasalahan nyata di masyarakat dengan cara yang ringan dan cukup bisa dinikmati. <em>Setting</em> yang dibuat oleh Eros Eflin selaku penata artistik untuk film <em>Laskar Pelangi</em> cukup menggambarkan nuansa tahun 70-an. Ditambah dengan syuting yang dilakukan di Belitong sehingga benar-benar tertangkap suasana lokalnya.</p>\r\n<p>(Sumber: <em>ai-warni.blogspot.co.id</em>)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Manakah pernyataan yang tepat berdasarkan kedua resensi tersebut &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>Penilaian menitikberatkan pada kondisi kepolosan ke-10 anak tokoh utama <em>Laskar Pelangi</em>.</p>', '<p>&nbsp;Penilaian memfokuskan pada letak Pulau Belitong di luar Pulau Jawa.</p>', '<p>&nbsp;Resensi mengupas tentang <em>setting</em> <em>Laskar Pelangi </em>di Pulau Belitong yang dinilai indah.</p>', '<p>&nbsp;Penilaian membahas seputar karya sastra yang diciptakan oleh anak negeri Indonesia.</p>', '<p>&nbsp;Resensi menjelaskan permasalahan nyata di masyarakat dengan cara yang ringan dan bisa dinikmati.</p>', 3, 0),
(21, 1, '<p>Simaklah kedua kutipan cerpen berikut ini! (Indikator 18)</p>\r\n<table width="726">\r\n<tbody>\r\n<tr>\r\n<td width="367">\r\n<p>Dan tampaknya, bukan hanya bicara. Tangan Kak Ros bergerak lembut, menyentuh, mengusap daun-daun. Tangan yang lain, dengan tak kalah hati-hati, menyemprotkan air dari botol <em>sprayer</em> sedemikian rupa, hingga tampak seperti seorang ibu yang memandikan dan mengeramas rambut anaknya. Tempo-tempo, semprot dan usapan itu terhenti, lalu jarinya tampak seperti mengutip dan memindahkan sesuatu dari tangkai atau punggung daun, juga sangat lembut dan hati-hati. Kembali aku ingat kata Ben. Apakah perempuan itu tengah memindahkan semut, atau serangga kecil lain, agar tak terpelanting oleh semprotan air?</p>\r\n<p>(<em>Kak Ros</em>, Gus tf Sakai)</p>\r\n</td>\r\n<td width="359">\r\n<p>Ketika kutekan dahan itu perlahan, permukaan kulitnya yang kasar menjadi retak. Kerkahan di antara sulur-sulur yang dulu kuat itu mengeluarkan suara berkeriut yang mengerikan. Lapis demi lapis sulur pembelit batang ternyata sudah renggang dan mulai terurai.</p>\r\n<p>Kulepaskan cengkeramanku cepat- cepat, dan suatu perasaan sayang dan keterikatan kuat yang belum pernah kurasakan sebelumnya memenuhi benakku. Aku tidak pernah tahu bahwa ancaman hilangnya suatu hal berharga yang belum pernah kusadari bisa begitu menyakitkan.</p>\r\n<p>&nbsp;</p>\r\n<p>(<em>Ketika Pohon Itu Masih Mekar</em>, Doni Jaya)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Perbedaan karakteristik kedua cerpen tersebut adalah &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>Kutipan I: menggunakan bahasa gamblang, kutipan II: menggunakan bahasa perumpamaan.</p>', '<p>&nbsp;Kutipan I: didominasi latar suasana, kutipan II: didonimasi latar tempat.</p>', '<p>&nbsp;Kutipan I: watak tokoh kurang jelas, kutipan II: watak tokoh gamblang.</p>', '<p>&nbsp;Kutipan I: sudut pandang orang ketiga tunggal, kutipan II: sudut pandang orang pertama tunggal.</p>', '<p>&nbsp;Kutipan I: amanat kurang jelas, kutipan II: amanat gamblang.</p>', 4, 0),
(22, 1, '<p>Simaklah kedua kutipan cerpen berikut ini! (Indikator 18)</p>\r\n<table width="726">\r\n<tbody>\r\n<tr>\r\n<td width="367">\r\n<p>Dan tampaknya, bukan hanya bicara. Tangan Kak Ros bergerak lembut, menyentuh, mengusap daun-daun. Tangan yang lain, dengan tak kalah hati-hati, menyemprotkan air dari botol <em>sprayer</em> sedemikian rupa, hingga tampak seperti seorang ibu yang memandikan dan mengeramas rambut anaknya. Tempo-tempo, semprot dan usapan itu terhenti, lalu jarinya tampak seperti mengutip dan memindahkan sesuatu dari tangkai atau punggung daun, juga sangat lembut dan hati-hati. Kembali aku ingat kata Ben. Apakah perempuan itu tengah memindahkan semut, atau serangga kecil lain, agar tak terpelanting oleh semprotan air?</p>\r\n<p>(<em>Kak Ros</em>, Gus tf Sakai)</p>\r\n</td>\r\n<td width="359">\r\n<p>Ketika kutekan dahan itu perlahan, permukaan kulitnya yang kasar menjadi retak. Kerkahan di antara sulur-sulur yang dulu kuat itu mengeluarkan suara berkeriut yang mengerikan. Lapis demi lapis sulur pembelit batang ternyata sudah renggang dan mulai terurai.</p>\r\n<p>Kulepaskan cengkeramanku cepat- cepat, dan suatu perasaan sayang dan keterikatan kuat yang belum pernah kurasakan sebelumnya memenuhi benakku. Aku tidak pernah tahu bahwa ancaman hilangnya suatu hal berharga yang belum pernah kusadari bisa begitu menyakitkan.</p>\r\n<p>&nbsp;</p>\r\n<p>(<em>Ketika Pohon Itu Masih Mekar</em>, Doni Jaya)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Berikut ini manakah ringkasan yang tepat dari penggalan cerpen <em>Kak Ros </em>pada kutipan I&nbsp;di atas&hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>Kak Ros mengutip dan memindahkan sesuatu dari tangkai atau punggung daun.</p>', '<p>&nbsp;Kak Ros berencana memindahkan semut atau serangga kecil lain agar tak terpelanting oleh air.</p>', '<p>&nbsp;Kak Ros menyentuh, mengusap daun-daun kemudian menyemprotkannya air dari botol</p>', '<p>&nbsp;Kak Ros merawat tanaman seperti seorang ibu yang memandikan dan mengeramas rambut anaknya.</p>', '<p>&nbsp;Kak Ros merawat tanaman dengan penuh kelembutan, kehati-hatian, dan perasaan keibuan.</p>', 5, 0),
(23, 1, '<p>Perhatikanlah kutipan berita berikut ini!</p>\r\n<p>King Abdullah International Center for Arabic Language (KAICAL) &hellip;&hellip; sebuah laporan yang menyebutkan bahasa Cina digunakan paling luas di dunia. &hellip;&hellip; demikian, bahasa Inggris paling banyak dipakai di berbagai negara. Menurut hasil penelitian Profesor Ulrichh Ammon, guru besar bahasa di Universitas Duesseldorf, Jerman, selama 15 tahun, &hellip;&hellip; bahasa Cina digunakan 1,39 miliar penduduk bumi dengan berbagai dialek.</p>\r\n<p>(<em>tempo.co</em>, 11 Mei 2015)</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Berikut ini manakah istilah yang tepat untuk melengkapi kalimat tersebut &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>meminjam-dengan-ternyata</p>', '<p>&nbsp;mengambil-meski-ternyata</p>', '<p>&nbsp;mengutip-meski-ternyata</p>', '<p>&nbsp;mengutip-dengan-akibatnya</p>', '<p>&nbsp;mengutip-meski-akibatnya</p>', 3, 0),
(24, 1, '<p>Simaklah paragraf eksposisi rumpang berikut dengan saksama!</p>\r\n<p>Pemerintah sebaiknya bekerja sama secara serius dengan negara-negara di Asia Tenggara yang tergabung dalam ASEAN buat menghadang terorisme. Selama ini memang sudah ada kesepakatan dan kerja sama, termasuk Konvensi Anti-Terorisme yang ditandatangani delapan tahun lalu. Tapi Indonesia perlu berinisiatif untuk mengefektifkan kerja sama itu.&nbsp; &hellip;&hellip;</p>\r\n<p>(<em>tempo.co,</em> 19 Januari 2016)</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kalimat yang sesuai untuk melengkapi teks tersebut adalah &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>Pemerintah perlu memperluas kerja sama tidak hanya di kawasan ASEAN, tetapi di seluruh dunia.</p>', '<p>&nbsp;Pemerintah sebaiknya bekerja sama dengan Konvensi Anti-Terorisme di seluruh dunia.</p>', '<p>&nbsp;Langkah awal guna mengefektifkan kerja sama yakni dengan mengintensifkan koordinasi pengamanan.</p>', '<p>&nbsp;Konvensi Anti Terorisme harus dijalankan segera mungkin demi menangkal bahaya terorisme.</p>', '<p>&nbsp;Kesepakatan dan kerja sama negara ASEAN perlu didukung penuh oleh seluruh masyarakat Indonesia.</p>\r\n<p>&nbsp;</p>', 3, 0),
(25, 1, '<p>penggalan berita berikut ini!</p>\r\n<p>Setelah menjalani pengajaran selama enam tahun, sekitar 150 orang dari 1.400 jiwa suku anak dalam atau lebih dikenal dengan sebutan orang rimba yang hidup di hutan Provinsi Jambi, yang bisa membaca dan menulis. "Selama ini orang rimba selalu mengalami kesulitan melakukan komunikasi terutama bila ingin menjual produk hasil hutan mereka di pasar atau mereka mau membeli kebutuhan sehari-hari," kata Rachmat Hidayat, Direktur Eksekutif Komunitas Konservasi Warsi. Program pendidikan informasi oleh Warsi berlangsung sejak enam tahun silam. [....] Sikap ini merupakan doktrin nenek moyang suku anak suku yang cukup melekat.</p>\r\n<p>(<em>tempo.co</em>, 1 Februari 2007)</p>\r\n<p>Kalimat yang tepat untuk melengkapi paragraf rumpang tersebut adalah &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>Selama enam tahun program pendidikan mengutamakan ketersediaan alat tulis dan buku bacaan.</p>', '<p>&nbsp;Selain itu, fasilitas ruang belajar yang layak juga menjadi inti program pendidikan selama enam tahun.</p>', '<p>&nbsp;Kendalanya adalah sikap orang rimba yang sangat sulit menerima produk di luar kehidupan mereka.</p>', '<p>&nbsp;Manfaatnya adalah dapat membina kemampuan baca dan tulis masyarakat suku anak dalam.</p>', '<p>&nbsp;Selama enam tahun itulah program baca dan tulis mendapatkan tempat di hati warga suku anak dalam.</p>\r\n<p>&nbsp;</p>', 3, 0),
(26, 1, '<p>Simaklah kutipan cerpen berikut dengan saksama!</p>\r\n<p>&ldquo;Kenapa awak mesti menghamba pada aturan usang itu?&rdquo; begitu Julfahri berkelit ketika Gemuk mendesaknya untuk membatalkan rencana itu.</p>\r\n<p>&ldquo;Mentang-mentang bersekolah tinggi, berani kau melanggar pantangan adat?&rdquo; bentak Gemuk.</p>\r\n<p>&ldquo;Kami tidak punya hubungan tali-darah, jadi kami bisa menikah! Kami siap dibuang dari Larenjang!&rdquo;</p>\r\n<p>&ldquo;Tapi, bagaimana dengan kami yang akan menanggung malu seumur-umur?&rdquo;</p>\r\n<p>&ldquo;Bila tidak berbuat salah, kenapa harus malu?&rdquo;</p>\r\n<p>&ldquo;Kau tidak takut akibat dari melanggar pantangan itu?&rdquo;</p>\r\n<p>&ldquo;&hellip;&hellip;.&rdquo;</p>\r\n<p>&ldquo;Jaga mulutmu, Julfahri. Bisa kualat kau nanti!&rdquo;</p>\r\n<p><em>Orang-orang Larenjang</em> karya Damhuri Muhammad</p>\r\n<p>Manakah kalimat yang tepat untuk melengkapi penggalan cerpen rumpang tersebut &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>Saya tidak takut melanggar pantangan apapun.</p>', '<p>&nbsp;Saya hanya berpihak pada kebenaran dan keadilan.</p>', '<p>Saya hanya takut melanggar ajaran Tuhan.</p>', '<p>&nbsp;Saya menolak kepercayaan melarang menikah beda tali darah.</p>', '<p>&nbsp;</p>\r\n<p>Saya tidak berbuat salah, kenapa harus takut menikah.</p>\r\n<p>&nbsp;</p>', 3, 0),
(27, 1, '<p>Perhatikanlah penggalan pantun berikut ini!</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td width="223">\r\n<p>Air sungai dingin sekali</p>\r\n<p>Dikeruklah pasir di dalamnya</p>\r\n<p>&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;</p>\r\n<p>&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Isi yang tepat untuk melengkapi sampiran pantun tersebut adalah &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>Janganlah berhati dengki</p>\r\n<p>Sebab dengki tak ada yang suka</p>', '<p>&nbsp;Pandailah mengatur rezeki</p>\r\n<p>Karena ia banyak yang minta</p>', '<p>&nbsp;Itu anak pandai sekali</p>\r\n<p>Selalu belajar setiap harinya</p>', '<p>&nbsp;Buanglah sifat memaki</p>\r\n<p>Karena memaki siapa yang punya</p>', '<p>&nbsp;Jemputlah si pujaan hati</p>\r\n<p>Sebab ia bisa ke mana</p>', 3, 0),
(29, 1, '<p>Simaklah penggalan teks ulasan berikut ini!</p>\r\n<p>Puisi ini memang banyak memakai pola persajakan pantun, namun bukan pantun. Meskipun persajakannya menggunakan bentuk pantun, puisi ini termasuk puisi baru atau puisi bebas. [&hellip;.] Pemakaian majas yang dominan ialah personifikasi, yaitu majas yang menghadirkan benda mati seolah-olah seperti manusia. Misalnya pada baris &ldquo;Di jendela cahaya lampu terbaring memejamkan mata&rdquo;.</p>\r\n<p>Kalimat yang tepat untuk melengkapi penggalan teks ulasan rumpang tersebut adalah &hellip;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '', '<p>Puisi baru cenderung membebaskan dirinya dari segala aturan yang berlaku dalam pantun.</p>', '<p>&nbsp;Aturan yang berlaku dalam pantun cenderung lebih ketat dibandingkan pada puisi baru.</p>', '<p>&nbsp;Puisi baru tidak menonjolkan aspek persajakan seperti yang berlaku dalam pantun.</p>', '<p>&nbsp;Pantun lebih menekankan aspek persajaka dibandingkan dengan puisi baru.</p>', '<p>&nbsp;Hal itu dikarenakan tidak terpenuhinya syarat-syarat pantun yang lain.</p>', 5, 0),
(30, 1, '<p>Bacalah pertunjuk berikut ini!</p>\r\n<table width="711">\r\n<tbody>\r\n<tr>\r\n<td width="711">\r\n<p>Cara membuat obat flu dari jahe</p>\r\n<p>(1)&nbsp;&nbsp; Siapkan jahe seukuran ibu jari.</p>\r\n<p>(2)&nbsp;&nbsp; Parut jahe sesuai kebutuhan hingga merata.</p>\r\n<p>(3)&nbsp;&nbsp; Masukkan parutan jahe ke dalam cangkir yang disediakan.</p>\r\n<p>(4)&nbsp;&nbsp; &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;</p>\r\n<p>(5)&nbsp;&nbsp; Masukan parutan jahe tersebut ke dalam air dididihkan.</p>\r\n<p>(6)&nbsp;&nbsp; Tambahkan madu asli ke dalamnya.</p>\r\n<p>(7)&nbsp;&nbsp; Diamkan selama sepuluh menit sebelum diminum.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Kalimat yang tepat untuk melengkapi teks prosedur rumpang tersebut adalah &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>Tambahkan gula secukupnya.</p>', '<p>Aduklah hingga merata</p>', '<p>&nbsp;&nbsp;Tambahkan sedikit air untuk mengentalkan.</p>', '<p>Siapkan air dan masak hingga mendidih.</p>', '<p>Tambahkan parutan jahe jika kurang.</p>', 4, 0),
(31, 1, '<p>Cermatilah penggalan cerpen berikut ini!</p>\r\n<p>(1)Ibumu menjadi kunang-kunang sepanjang malam, mencari kamu yang sudah lama hilang. (2) Ibumu&mdash;kunang-kunang itu&mdash;terus mengembara, berjam-jam, tanpa lelah, tanpa keluh kesah. (3) Ia akan terus mencarimu, ia arungi sepanjang jalanan yang berliku, yang senyap berbatu, ia terbang di atas sungai yang bercabang, yang entah bermuara di mana. (4) <strong>Pada</strong> malam hari, ibumu akan menjadi kunang-kunang, terbang ke hamparan bunga-bunga, ke sepanjang jalan, menelusuri remang cahaya, hinggap di daun-daun, berteduh dari embun, lalu terbang lagi, ke atap rumah, ke tiang listrik, ke bawah jembatan. (5) &ldquo;Di mana kamu, anakku? Di mana?&rdquo;</p>\r\n<p>(<em>Biografi Kunang-Kunang</em> karya Sungging Raga)</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Urutan peristiwa yang tepat berdasarkan penggalan cerpen tersebut adalah &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>(5) &ndash; (1) &ndash; (4) &ndash; (3) &ndash; (2)</p>', '<p>&nbsp;(1) &ndash; (4) &ndash; (2) &ndash; (3) &ndash; (5)</p>', '<p>&nbsp;(4) &ndash; (1) &ndash; (5) &ndash; (2) &ndash; (3)</p>', '<p>&nbsp;(2) &ndash; (5) &ndash; (1) &ndash; (4) &ndash; (3)</p>', '<p>&nbsp;(3) &ndash; (1) &ndash; (5) &ndash; (2) &ndash; (4)</p>', 3, 0),
(32, 1, '<p>Simaklah petunjuk kerja berikut ini!</p>\r\n<table width="711">\r\n<tbody>\r\n<tr>\r\n<td width="711">\r\n<p>Cara memasak Ikan Goreng Tepung Saus Asam Manis</p>\r\n<p>(1)&nbsp;&nbsp; Goreng ikan hingga berwarna keemasan, angkat dan tiriskan, lalu sisihkan.</p>\r\n<p>(2)&nbsp;&nbsp; Lumuri ikan dengan air perasan lemon dan garam. Diamkan beberapa saat.</p>\r\n<p>(3)&nbsp;&nbsp; Gulingkan ikan ke campuran tepung, lalu tepuk-tepuk.</p>\r\n<p>(4)&nbsp;&nbsp; Siramkan saus ke atas ikan goring tepung, sajikan panas-panas.</p>\r\n<p>(5)&nbsp;&nbsp; Campurkan tepung terigu, tepung maizena, lada, garam dalam satu wadah.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Berikut ini manakah urutan petunjuk kerja yang tepat &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>(5) &ndash; (2) &ndash; (3) &ndash; (4) &ndash; (1)</p>', '<p>&nbsp;(2) &ndash; (5) &ndash; (3) &ndash; (1) &ndash; (4)</p>', '<p>&nbsp;(3) &ndash; (1) &ndash; (5) &ndash; (2) &ndash; (4)</p>', '<p>&nbsp;(4) &ndash; (5) &ndash; (1) &ndash; (3) &ndash; (2)</p>', '<p>&nbsp;(1) &ndash; (4) &ndash; (3) &ndash; (2) &ndash; (5)</p>', 2, 0),
(33, 1, '<p>Cermati kalimat berikut ini!</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td width="367">\r\n<p>Segala keputusan memiliki <em>konsekuensi</em> yang beragam</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Manakah kata yang tepat sebagai alternatif dari kata <em>konsekuensi</em> pada kalimat tersebut &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>akibat</p>', '<p>&nbsp;hasil</p>', '<p>&nbsp;tujuan</p>', '<p>&nbsp;program</p>', '<p>&nbsp;harapan</p>', 1, 0),
(34, 1, '<p>Pahamilah kalimat berikut ini!</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td width="307">\r\n<p>Ibu memperbolehkan Alan berwisata ke Paris</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Manakah variasi kalimat yang tidak sesuai dengan maksud kalimat di atas &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>Alan berwisata ke Paris, Ibu memperbolehkan.</p>', '<p>&nbsp;Ke Paris Alan berwisata, Ibu memperbolehkan.</p>', '<p>&nbsp;Ibu memperbolehkan berwisata Alan ke Paris.</p>', '<p>&nbsp;Ibu Alan berwisata ke Paris memperbolehkan.</p>', '<p>&nbsp;Ibu memperbolehkan Alan berwisata ke Paris.</p>', 4, 0),
(35, 1, '<p>Cermatilah kalimat-kalimat berikut ini!</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td width="528">\r\n<p>1)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jika salah memilih teman, kita akan gagal dalam menjalin persahabatan.</p>\r\n<p>2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sungguh hal itu hanya dilakukan dalam batas-batas yang wajar.</p>\r\n<p>3)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Namun, bukan berarti dalam memilih teman harus meragukan semua orang.</p>\r\n<p>4)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Memilih teman perlu dilakukan dengan terencana, tidak spontan.</p>\r\n<p>5)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sebab teman adalah teman kita yang paling dekat.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Kalimat-kalimat tersebut dapat menjadi sebuah paragraf deduktif apabila disusun dengan urutan &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>(1), (3), (4), (2), (5)</p>', '<p>&nbsp;(2), (3), (4), (1), (5)</p>', '<p>&nbsp;(3), (4), (1), (5), (2)</p>', '<p>&nbsp;(4), (5), (1), (3), (2)</p>', '<p>&nbsp;(5), (4), (2), (3), (1)</p>', 4, 0),
(36, 1, '<p>Cermatilah penggalan laporan berikut ini!</p>\r\n<p>Setelah dilakukan survei ke sebuah tempat di daerah pegunungan, ternyata diperoleh data tentang kesehatan masyarakat di sana. Masyarakat yang menderita penyakit gondok sejumlah 55%, katarak 20%, reumatik 10%, batuk 8%, dan asma 7%.</p>\r\n<p>Simpulan yang tepat sesuai dengan penggalan laporan di atas adalah &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>Tidak dapat disangkal lagi, masyarakat di sana jauh dari perhatian sehingga tidak sehat.</p>', '<p>&nbsp;Patutlah masyarakat di sana mendapatkan bantuan, terutama bantuan medis.</p>', '<p>&nbsp;Masyarakat di daerah pegunungan sebagian besar menderita penyakit katarak.</p>', '<p>&nbsp;Masyarakat di daerah pegunungan sangat rentan terhadap penyakit gondok.</p>', '<p>&nbsp;Pada umumnya masyarakat di daerah pegunungan mengalami penyakit gondok.</p>', 4, 0),
(37, 1, '<p>Bacalah dengan cermat kalimat berikut ini!</p>\r\n<table width="642">\r\n<tbody>\r\n<tr>\r\n<td width="642">\r\n<p>Tim bola voli Indonesia berhasil mengalahkan tim bola voli Malaysia dalam dua <em>babak</em> sekaligus.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Manakah kata yang tepat untuk menggantikan kata <em>babak </em>dalam kalimat tersebut &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>ronde</p>', '<p>&nbsp;episode</p>', '<p>&nbsp;tahap</p>', '<p>&nbsp;set</p>', '<p>&nbsp;putaran</p>', 4, 0),
(38, 1, '<p>Cermatilah paragraf berikut ini!</p>\r\n<table width="711">\r\n<tbody>\r\n<tr>\r\n<td width="711">\r\n<p>Peneliti pada Lembaga Ilmu Pengetahuan Indonesia (LIPI) memperkirakan dari beratus-ratus bahasa etnis yang ada di Indonesia hanya sembilan saja yang akan bertahan. (2) Kepala Pusat Penelitian Kemasyarakatan dan Kebudayaan (PMB) Lembaga Ilmu Pengetahuan Indonesia (LIPI) Endang Turmudi di Jakarta, Selasa, mengatakan secara konseptual bahasa akan bertahan apabila memiliki sistem penulisan atau aksara sebagai fasilitas untuk merekam bahasa itu dalam media selain lisan. (3) "Bahasa-bahasa yang memiliki sistem aksara dan diperkirakan akan bertahan untuk ke depannya antara lain Aceh, Batak, Lampung, Melayu, Jawa, Bali, Bugis, Sunda, dan Sasak," katanya. (4) Bahasa-bahasa yang akan bertahan tersebut, ia mengatakan termasuk dalam dengan kelompok bahasa Austronesia atau Melayu. (5) Sementara bahasa-bahasa etnis lainnya yang belum memiliki sistem tersebut kemungkinan besar terancam punah.</p>\r\n<p>(Sumber: <em>antaranews.com</em>, 10 Desember 2013)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kata penghubung antarkalimat yang tidak tepat dalam paragraf tersebut terdapat pada kalimat bernomor &hellip;</p>', '', '<p>(1)</p>', '<p>(2)</p>', '<p>(3)</p>', '<p>(4)</p>', '<p>(5)</p>', 4, 0),
(39, 1, '<p>Perhatikanlah penggalan berita berikut ini!</p>\r\n<table width="714">\r\n<tbody>\r\n<tr>\r\n<td width="714">\r\n<p>(1)&nbsp;&nbsp; Perpustakaan Ajip Rosidi yang berlokasi di pada Jalan Garut Nomor 2, Kota Bandung, resmi dibuka dan diresmikan, Sabtu, 15 Agustus 2015. (2) Sekitar 50 ribu judul buku tertata cukup rapih di Perpustakaan itu. (3) "Saya sendiri menyumbangkan kira-kira setengah dari koleksi perpustakaan Jati Niskala (perpustakaan pribadi Ajip di Pabean) yaitu sekitar 20 ribu judul," kata Ajip. (4) Ajip mengatakan perpustakaan itu merupakan bentuk kepeduliannyabeserta rekan-rekannya lantaran budaya membaca kini sudah semakin luntur tergerus budaya serba instan. (5) Perpustakaan itu sedikitnya menghabiskan dana sekitar Rp 7,3 miliar.</p>\r\n<p>(Sumber: <em>kompas.com</em>, 16 Agustus 2015)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Kesalahan penggunaan kalimat pada penggalan berita tersebut terletak pada kalimat bernomor &hellip;</p>', '', '<p>(1)</p>', '<p>(2)</p>', '<p>(3)</p>', '<p>(4)</p>', '<p>(5)</p>', 1, 0),
(40, 1, '<p>Cermatilah kalimat berikut ini!</p>\r\n<table width="711">\r\n<tbody>\r\n<tr>\r\n<td width="711">\r\n<p><em>Hipotesis</em> sementara penyebab keterlambatan pelajar adalah kekurangdisiplinan pelajar dalam memanfaatkan waktu di pagi hari.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Berikut ini arti kata yang sepadan dengan istilah <em>hipotesis </em>&hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>pendapat</p>', '<p>&nbsp;dugaan</p>', '<p>&nbsp;solusi</p>', '<p>&nbsp;krisis</p>', '<p>&nbsp;saran</p>', 2, 0),
(41, 1, '<p>Perhatikanlah kalimat berikut ini!</p>\r\n<table width="714">\r\n<tbody>\r\n<tr>\r\n<td width="714">\r\n<p>Pemerintah berencana membeli &hellip;&hellip; baru dari untuk memperkuat sistem pertahanan udara.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', '', '<p>pesawat terbang</p>', '<p>&nbsp;pesawat telekomunikasi</p>', '<p>&nbsp;pesawat tempur</p>', '<p>&nbsp;pesawat ulang-alik</p>', '<p>&nbsp;pesawat luar angkasa</p>', 3, 0),
(42, 1, '<p>Simaklah kalimat-kalimat berikut ini dengan cermat!</p>\r\n<table width="711">\r\n<tbody>\r\n<tr>\r\n<td width="711">\r\n<p>(1)&nbsp;&nbsp; <em>Ketidak berdayaan</em> menjadi penyebab Adi kalah dalam pertandingan cabang olahraga bela diri kemarin.</p>\r\n<p>(2)&nbsp;&nbsp; Sophie selalu <em>mempertanggungjawabkan</em> apa yang diamanatkan kepadanya.</p>\r\n<p>(3)&nbsp;&nbsp; Setelah kecelakaan itu, saya sering merasakan sakit pada <em>matakaki</em> saya.</p>\r\n<p>(4)&nbsp;&nbsp; Dia selalu <em>menghubung-hubungkan</em> peristiwa hari ini dengan peristiwa sejarah.</p>\r\n<p>(5)&nbsp;&nbsp; Gunakanlah <em>sarung</em> <em>tangan</em> jika ingin mengendarai sepeda motor dengan tujuan jauh.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;Penggunaan kata bentukan yang kurang tepat terdapat pada kalimat nomor &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>(2) dan (3)</p>', '<p>&nbsp;(3) dan (4)</p>', '<p>&nbsp;(4) dan (5)</p>', '<p>&nbsp;(1) dan (3)</p>', '<p>&nbsp;(5) dan (2)</p>', 4, 0),
(43, 1, '<p>Pahamilah penggalan berita berikut ini!</p>\r\n<table width="711">\r\n<tbody>\r\n<tr>\r\n<td width="711">\r\n<p>(1)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bonsai pinus putih Jepang yang berusia 390 tahun ini bukan bonsai biasa. (2) Tumbuhan ini merupakan pohon bonsai yang selamat dari ganasnya ledakan bom Little Boy yang menewaskan lebih dari 140.000 orang di kota Hiroshima, Jepang, 70 tahun silam. (3) <em>Merawatnya memiliki pohon tersebut bonsai keluarga lama sejak sudah yang</em>. (4) Terhitung, sudah lima generasi yang menjaga pohon ini hingga pada tahun 1975, bonsai ini diserahkan ke Arboretum Nasional Amerika.</p>\r\n<p>(Sumber: <em>nationalgeographic.co.id</em>, 7 Agustus 2015)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Manakah perbaikan kalimat yang bercetak miring dalam penggalan berita tersebut &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>Pohon memiliki keluarga yang bonsai tersebut sudah sejak lama merawatnya.</p>', '<p>&nbsp;Memiliki yang keluarga pohon bonsai sudah tersebut sejak lama merawatnya.</p>', '<p>&nbsp;Merawatnya yang memiliki pohon bonsai tersebut sudah sejak lama merawatnya.</p>', '<p>&nbsp;Yang memiliki pohon bonsai tersebut sudah sejak lama merawatnya keluarga.</p>', '<p>&nbsp;Keluarga yang memiliki pohon bonsai tersebut sudah sejak lama merawatnya.</p>', 5, 0),
(44, 1, '<p>Simaklah penggalan berita berikut ini!</p>\r\n<table width="711">\r\n<tbody>\r\n<tr>\r\n<td width="711">\r\n<p>Sebuah tim peneliti di Massachusetts General Hospital telah menumbuhkan anggota tubuh tikus di laboratorium. (2) Hal ini membuka jalan ke depan untuk transplantasi manusia buatan. (3) Anggota tubuh robotik yang dikendalikan pikiran untuk pasien amputasi tumbuh semakin canggih, namun penantangnya telah muncul. (4) Operasi transplantasi anggota tubuh manusia menggunakan bahan biologis pasien sendiri satu hari bakal menjadi kenyataan. (5) Otot dan pembuluh darah telah sudah ditumbuhkan di laboratorium dari sel induk, dan pembuluh darah bahkan telah ditransplantasikan ke pasien, yang dibuat dari sel sendiri pribadi.</p>\r\n<p>(Sumber: <em>tempo.co</em>, 5 Juni 2015)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Dalam penggalan berita tersebut, kalimat yang harus diperbaiki karena terdapat pemborosan kata terkandung dalam nomor &hellip;</p>', '', '<p>(1)</p>', '<p>(2)</p>', '<p>(3)</p>', '<p>(4)</p>', '<p>(5)</p>', 5, 0),
(45, 1, '<p>Perhatikanlah penggalan wacana berikut ini!</p>\r\n<table width="711">\r\n<tbody>\r\n<tr>\r\n<td width="711">\r\n<p>(1)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mahasiswa Universitas Brawijaya membuat sebuah alat yang memungkinkan tuna netra mengetahui nilai mata uang yang mereka pegang. (2) Alat bernama <em>Money Talking</em> atau <em>Montalk</em> ini dibuat oleh lima mahasiswa Universitas Brawijaya Malang. (3) Melalui alat ini, pengguna tinggal memasukkan uang ke dalam alat. (4) Beberapa detik kemudian akan mengeluarkan suara menyebutkan nominal mata uang tersebut. (5) Seseorang yang tuna netra bisa menyebutkan nominal uang dalam berbagai pecahan.</p>\r\n<p>(Sumber: <em>tempo.co</em>, 16 Juni 2015)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Kalimat yang tidak koheren pada paragraf tersebut terdapat pada kalimat bernomor &hellip;</p>', '', '<p>(1)</p>', '<p>(2)</p>', '<p>(3)</p>', '<p>(4)</p>', '<p>(5)</p>', 5, 0);
INSERT INTO `soal` (`id_soal`, `id_ujian`, `soal`, `audio`, `pilihan_1`, `pilihan_2`, `pilihan_3`, `pilihan_4`, `pilihan_5`, `kunci`, `urut`) VALUES
(46, 1, '<p>Simaklah paragraf berikut ini dengan saksama!</p>\r\n<table width="720">\r\n<tbody>\r\n<tr>\r\n<td width="720">\r\n<p>(1)Kapal dengan julukan Titanic Kuno berhasil ditemukan di pantai Pulau Antikythera, Yunani Selatan. (2)Bangkai kapal kuno terkaya itu membuktikan bahwa harta karun berupa artefak masih banyak tersimpan di dasar laut. (3)Barang antik seperti kendi, meja utuh, hiasan kaki tempat tidur, komponen kapal, hingga tombak perunggu raksasa milik patung prajurit dalam ukuran sesungguhnya. (4)Titanic kuno ini tenggelam lebih dari 2.000 tahun lalu karena menabrak tebing pulau saat menghadapi badai besar. (5)Diyakini kapal komersial miliki bangsa Romawi tersebut dibawa kargo mewah milik Yunani.</p>\r\n<p>(Sumber: <em>nationalgeographic.co.id</em>, 11 Oktober 2014)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Manakah penggunaan kata yang tidak tepat dalam paragraf tersebut &hellip;</p>', '', '<p>(1)</p>', '<p>(2)</p>', '<p>(3)</p>', '<p>(4)</p>', '<p>(5)</p>', 5, 0),
(47, 1, '<p>Cermatilah penulisan judul berikut ini!</p>\r\n<table width="624">\r\n<tbody>\r\n<tr>\r\n<td width="624">\r\n<p>Program Peningkatan Berbahasa Indonesia Untuk Siswa Kelas X Di SMK Bina Nusa Slawi</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Penulisan judul yang tepat berdasarkan ilustrasi tersebut adalah &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>Program peningkatan berbahasa Indonesia untuk siswa kelas X di SMK Bakti Negara</p>', '<p>&nbsp;Program peningkatan Berbahasa Indonesia untuk Siswa Kelas X di SMKBakti Negara</p>', '<p>&nbsp;Program peningkatan berbahasa Indonesia Untuk Siswa Kelas X Di SMK Bakti Negara</p>', '<p>&nbsp;Program Peningkatan Berbahasa Indonesia untuk Siswa Kelas X Di SMK Bakti Negara</p>', '<p>&nbsp;Program Peningkatan Berbahasa Indonesia untuk Siswa Kelas X di SMK Bakti Negara</p>', 5, 0),
(48, 1, '<p>Cermati paragraf berikut ini!</p>\r\n<table width="711">\r\n<tbody>\r\n<tr>\r\n<td width="711">\r\n<p>(1)&nbsp;&nbsp; Awet muda bakal satu langkah lebih dekat setelah kesuksesan transformasi sel tua manusia menjadi sel muda. (2) Proses itu dilakukan dengan memperpanjang ''telomere'', yang merupakan topi pelindung diujung kromosom yang memiliki dampak pada penuaan dan penyakit. (3) Para peneliti diAmerika Serikat mengatakan teknik ini bisa memperpanjang hidup manusia dan memberikan harapan baru bagi upaya memerangi penyakit yang timbul akibat usia tua. (4) Telomere -sering digambarkan seperti topi plastik diujung tali sepatu -membantu menjaga DNA tetap sehat. (5) Topi pelindung ini menjadi lebih pendek dengan setiap replikasi DNA, dan akhirnya tidak lagi mampu melindungi DNA dari kerusakan dan mutasi, yang menyebabkan seseorang menjadi tua.</p>\r\n<p>(Sumber: <em>tempo.co</em>, 5 Februari 2015)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Penulisan kata depan yang tidak sesuai terdapat dalam kalimat bernomor &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>(1) dan (5)</p>', '<p>&nbsp;(4) dan (2)</p>', '<p>&nbsp;(3) dan (4)</p>', '<p>&nbsp;(5) dan (1)</p>', '<p>&nbsp;(2) dan (3)</p>', 5, 0),
(49, 1, '<p>Pahamilah rangkaian kalimat berikut! (Indikator 43)</p>\r\n<table width="711">\r\n<tbody>\r\n<tr>\r\n<td width="711">\r\n<p>Dosen Universitas Bengkulu, Yosi Fenita, berhasil menciptakan pakan ternak dari lumpur buah kelapa sawit, yang mampu meningkatkan produksi telur ayam petelur. (2) "Kombinasi antara lumpur sawit, limbah minyak ikan, dan daun katuk ini tetap <em>menamakan</em> pakan lumpur sawit karena komposisi lumpur sawit yang dominan, katanya. (3) Pakan lumpur sawit dengan komposisi jagung 40 persen, lumpur sawit 20 persen, sisanya konsentrat petelur dan dedak padi. (4) Ia telah melakukan penelitian terhadap unggas dengan hasil unggas yang diberi pakan lumpur sawit <em>produknya</em> mencapai 90 persen, sedangkan yang diberi pakan biasa produktivitas hanya berkisar 60 persen. (5) &ldquo;Hasil uji laboratorium memperlihatkan ada peningkatan kualitas kandungan telur, seperti meningkatnya kadar asam amino, beta karoten, omega 3 dan omega 9, serta menurunnya kadar lemak dan kolesterol telur, warna kuning telur (yolk) menjadi lebih kemerahan,&rdquo;</p>\r\n<p>(Sumber: <em>tempo.co</em>, 14 Juni 2014)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Pada kalimat bernomor berapakah penggunaan tanda baca yang kurang tepat &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>(5) dan (1)</p>', '<p>(4) dan (3)</p>', '<p>&nbsp;(3) dan (2)</p>', '<p>&nbsp;(1) dan (4)</p>', '<p>&nbsp;(2) dan (5)</p>', 5, 0),
(50, 1, '<p>Pahamilah rangkaian kalimat berikut! (Indikator 43)</p>\r\n<table width="711">\r\n<tbody>\r\n<tr>\r\n<td width="711">\r\n<p>Dosen Universitas Bengkulu, Yosi Fenita, berhasil menciptakan pakan ternak dari lumpur buah kelapa sawit, yang mampu meningkatkan produksi telur ayam petelur. (2) "Kombinasi antara lumpur sawit, limbah minyak ikan, dan daun katuk ini tetap <em>menamakan</em> pakan lumpur sawit karena komposisi lumpur sawit yang dominan, katanya. (3) Pakan lumpur sawit dengan komposisi jagung 40 persen, lumpur sawit 20 persen, sisanya konsentrat petelur dan dedak padi. (4) Ia telah melakukan penelitian terhadap unggas dengan hasil unggas yang diberi pakan lumpur sawit <em>produknya</em> mencapai 90 persen, sedangkan yang diberi pakan biasa produktivitas hanya berkisar 60 persen. (5) &ldquo;Hasil uji laboratorium memperlihatkan ada peningkatan kualitas kandungan telur, seperti meningkatnya kadar asam amino, beta karoten, omega 3 dan omega 9, serta menurunnya kadar lemak dan kolesterol telur, warna kuning telur (yolk) menjadi lebih kemerahan,&rdquo;</p>\r\n<p>(Sumber: <em>tempo.co</em>, 14 Juni 2014)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Kata yang bercetak miring pada kalimat bernomor (2) dan (4) pada bacaan di atas&nbsp;yang benar adalah &hellip;</p>', '', '<p><em>menamai</em> dan <em>produktifnya</em></p>', '<p><em>dinamai </em>dan<em> produktif</em></p>', '<p>&nbsp;<em>menamai</em> dan <em>produktif</em></p>', '<p>&nbsp;<em>dinamakan</em> dan <em>produktivitasnya</em></p>', '<p>&nbsp;<em>dinamakan </em>dan <em>produktif</em></p>', 4, 0),
(51, 1, '<p>Manakah penulisan yang benar dari gelar dan nama Profesor Doktor Insinyur Mazdar Lahar Magister Pendidikan &hellip; (Indikator 45)</p>\r\n<p>&nbsp;</p>', '', '<p>Prof dr Ir Mazdar Lahar MPd</p>', '<p>&nbsp;Dr Ir. Mazdar Lahar MPd.</p>', '<p>&nbsp;Dr. Ir. Mazdar Lahar M.Pd.</p>', '<p>&nbsp;dr. Ir. Mazdar Lahar M.Pd.</p>', '<p>&nbsp;Dr. Ir. Mazdar Lahar M.pd.</p>', 3, 0),
(52, 1, '<p>Bacalah penulisan judul tulisan berikut ini! (Indikator 46)</p>\r\n<table width="630">\r\n<tbody>\r\n<tr>\r\n<td width="630">\r\n<p>Jurus menaklukan soal ujian nasional bahasa Indonesia di tingkat sekolah menengah kejuruan</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Manakah perbaikan judul karangan di atas yang sesuai dengan kaidah Ejaan Yang Disempurnakan &hellip;</p>\r\n<p>&nbsp;</p>', '', '<p>Jurus Menaklukan Soal Ujian Nasional Bahasa Indonesia di Tingkat Sekolah Menengah Kejuruan.</p>', '<p>&nbsp;Jurus Menaklukan Soal Ujian Nasional Bahasa Indonesia di Tingkat Sekolah Menengah Kejuruan</p>', '<p>&nbsp;Jurus menaklukan soal Ujian Nasional Bahasa Indonesia di Tingkat Sekolah Menengah Kejuruan</p>', '<p>&nbsp;Jurus menaklukan Soal Ujian Nasional Bahasa Indonesia Di Tingkat Sekolah Menengah Kejuruan</p>', '<p>&nbsp;Jurus menaklukan soal Ujian Nasional Bahasa Indonesia Di tingkat Sekolah Menengah Kejuruan.</p>', 2, 0),
(53, 1, '<p>Cermatilah kalimat berikut ini!</p>\r\n<table width="606">\r\n<tbody>\r\n<tr>\r\n<td width="606">\r\n<p>Sebagai pelajar kita wajib membanggakan orang tua saudara dan teman-teman kita kelak</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Manakah perbaikan tanda baca yang sesuai dengan kaidah EYD pada kalimat tersebut &hellip;</p>', '', '<p>Sebagai pelajar, kita wajib membanggakan orang tua, saudara, dan teman-teman kita kelak.</p>', '<p>&nbsp;Sebagai pelajar kita wajib membanggakan orang tua, saudara dan teman-teman kita kelak.</p>', '<p>&nbsp;Sebagai pelajar kita wajib membanggakan orang tua, saudara, dan teman-teman kita kelak</p>', '<p>&nbsp;Sebagai pelajar kita wajib membanggakan orang tua saudara dan teman-teman kita kelak.</p>', '<p>&nbsp;Sebagai pelajar, kita wajib membanggakan orang tua saudara dan teman-teman kita kelak.</p>', 1, 0),
(54, 2, '<p>Bentuk sederhana dari <img src="../media/source/1.PNG" alt="1" />&nbsp;adalah ...</p>', '', '<p>-2</p>', '<p>-1</p>', '<p>1</p>', '<p>2</p>', '<p>3</p>', 2, 0),
(55, 2, '<p>Nilai <em>x</em> yang memenuhi persamaan <img src="../media/source/2.PNG" alt="2" />&nbsp;adalah ...</p>', '', '<p>1</p>', '<p>3/2</p>', '<p>2</p>', '<p>5/2</p>', '<p>3</p>', 5, 0),
(56, 2, '<p><img src="../media/source/3.PNG" alt="3" /></p>', '', '<p><img src="../media/source/3a.PNG" alt="3a" /></p>', '<p><img src="../media/source/3b.PNG" alt="3b" /></p>', '<p><img src="../media/source/3c.PNG" alt="3c" /></p>', '<p><img src="../media/source/3d.PNG" alt="3d" /></p>', '<p><img src="../media/source/3e.PNG" alt="3e" /></p>', 2, 0),
(57, 2, '<p>Deni, Roni dan Andre bersama-sama pergi belanja di sebuah toko untuk membeli kemeja dan celana dengan merk yang sama. Deni membeli 3 kemeja dan 2 celana seharga Rp240.000,00. Roni membeli 2 kemeja dan 2 celana seharga Rp200.000,00. Jika Andre membeli satu kemeja dan dua celana, maka selisih harga satu celana dan satu kemeja adalah ...</p>', '', '<p>Rp 15.000,00</p>', '<p>Rp 18.000,00</p>', '<p>Rp 20.000,00</p>', '<p>Rp 40.000,00</p>', '<p>Rp 60.000,00</p>', 3, 0),
(58, 2, '<p>Dari persamaan matriks :<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMsAAAA6CAYAAAAeNa2PAAAHbElEQVR4Xu1dPVMjORBt/wZIyWCroEhILsAh0bHJ1QUQElyVJ7hgSTbbgoLabBMILrAjEgIIri5ZHEFmUhIKqoxzEvgNvpJtzHxImu5Ra0Zim2wXjaX39J7U6rGa1ng8HoP8CAPCQCkDLTFLKUfSQBiYMCBmESEIA0gGxCxIoqSZMCBmEQ0IA0gGxCxIoqSZMCBmEQ0IA0gGxCxIoqSZMCBmEQ0IA0gGxCxIoqSZMCBmEQ0IA0gGxCxIoqSZMIA3Sz+B1vc1eBp8geWoeetD0toGuBpD9/cGgQTJZw3cBIcbjxllln7Sgm24gnGj6uIVtsL0fe0JBl/qt37ofPriJmTcGMzlZuknkEC32VWY1yfzTxudtuHHp0G92CLhk50bLW78qu5JApmPLcNcYpY+JO0hfI0y9BrBaXsF9m9TfHTyu+MITpOf8LlbV2jJxKdzKKPhBjpwNe7Ce2TKyY0Jd41mUZxt96BjDb/tmK1mKXNaHW6v3kd+gqYT08sbpsaV3pnP2YRPONk8cTg/FsU7CZHuc5/JxI0Zd01mGZ1Ce2Uf1LppNwsAWDBbzKJWnx/waZBebSzSTQ3orVXpwKo7odKTatJWLndyIutDkgB0vZ/HiHxaqdbhqETJ+0MTI6q8R3q+Obix4X4zyxXA9jb0ZqPh1U22j/LEjhmzxSxEokYjGC0vv2fKJuTfw8nTABo4Q2uVo109J4vJxC2pEMRRePre2UypN73LmKeCuj8pJjzcubHpaLbbp0NAVt1Mw83LHYXrCZ0FNWE2m6WfQHv41SFbVNMWi9XIbOcDjSBGpwn8/Nz1a2pnPt+BspllHg1sGhc1Z26suHUaSQvcLVOZzb7h9WjCbDULOQsWbCg2O9CCIc5nis2tvmXsg80s73nBaTJEx4/ruK3P6wXMkWIucoQ3i+ncYjTL9Z+r8M/fj/DvFnLpLmQbCINDdqGaTYh8C27zzxWyXapBiVFUk+NVWIVHeDwgDITY1MYnFRO/WRRN6hB8CTv5sNmRG7uO/JmFymlmOg2Y2cxSXA38mIWmUYRRAjALDZPSta8DvuaMWbtZpnP28I37GxYEPfo2S34CJ//evy1P1VGVgm5vSBXrnncUBGZI5J3aZzZMRQH//ZH6RsZsUVnXfEvDkRvMzpJOLEx1s57LymEYLmsTkFnm4c7sJeDmyQms7+839x2s9DuJHI+F1KSjINTHLy4uwuvr66Snvb09ODs7y/TKYhYdJm3oiRNOJpo1fY4jNyizbG7C7e3b2+P8y9EyLNjfB2UW7KADbIcUxNraGjw8PBQAqP8/Pz+HjY0NOD4+hsPDw4JhWMzSBHVIbkxDixI3NQxzThk2MbFV+0RmfHRmubu7g+FwCLu7u/PeVTv1kzZWtHwiuTFRHyVuA2a2A35VnQbxHHL1NO0seQxbW1vw/PycMUuUKyxD8iNK3LadpdVqwcLCAry8vMznPUqQVZ3nwSxLS0uZc0u0fGq4UYvBzc2Nke20lqLETQ3DogTJbBaKKNJdq8N+euFRv4uWT+RC8kufWaKd3CqGQQoCE4Ypg3U6ncwZRsxCeLldZf64n5GdxcIok1lUJkz9HBwUvwoQ7eIjYdhcOHLAJxxibTvLxcUF9Ho9uL6+1rryI5mFspBHiVt2Fn87izLK0dFRJvuV32WiFA1hIfllzizxZ8MIb2d1s4oMw7SPzl5C5n/3YbKLDtxEe1bTYFYeqT8MQ92Fpmz0qm1zZsGO1Gln8cIZcuR1moULp7FGQa72gOlqdhBhGOUuNHIup80+sFm8cYYkuC6zcOAsqVGQ/2a88d5M8zsL9S40cjIzZql4l9tREJiRVttZPHFGuaTnyA0ONy9O7RUG3X0d4h2emsKwanehMSJM7yy9qne5HQWBGSdONOlP8sgZpV6CIzfluPlxas1iKsihq07aZBhW9S40RoTmMIxwl9tREJhxlosm+yn+OUv3ZwljHbkpw+0DZ+1mGSWrsPfbIwz+wkjB3MbpLjS6a8frqY6CwAyTwmctnGFDMUdubLh94azdLOrSvqm6C+V+M6UtRnT6Nm5mqeVr5ITqLt45I9RLcOaGSUcUbbiahV7dRWWYvBSfc8xcaVkzl9Qpv8vNV/zOPqEufPJyhq+XwMENBTcPTrcDvhkzX0VKtPV5CMlF+IUicfi73JTJRIPUNHQRHi9n+HoJHNxQcPPgNBX0wKWOK1WknFYR4a8yz0OI1ixV7nI73gSk2Kc6n9ycZV/OGeslMHGDx+2Is7RGAeKlZLVax7OXfdFW0cfImLNSPKY/pir6mK6c23ByEwtuhyr60/d98vdZnHWXydLGwSd+N0CyE4GOyjCX/zGjiV/aMPwaToFv5PSUnLddazlXH0XwfBIydxQWgsaNwIwyC6oEKoW1RtsSiu95GyeyUqa3/k0f7JubEHHjMSPNUvusSYfCQHAMiFmCmxIZUKgMiFlCnRkZV3AMiFmCmxIZUKgMiFlCnRkZV3AMiFmCmxIZUKgMiFlCnRkZV3AMiFmCmxIZUKgMiFlCnRkZV3AM/A9j8LTC45uc7AAAAABJRU5ErkJggg==" alt="5" />, maka nilai dari a + b adalah&hellip; .</p>', '', '<p>2</p>', '<p>4</p>', '<p>6</p>', '<p>8</p>', '<p>10</p>', 3, 0),
(59, 2, '<p>Diketahui matriks <img src="../media/source/6.PNG" alt="6" />,&nbsp;maka hasil dari P = 2A + B +3C adalah&hellip; .</p>', '', '<p><img src="../media/source/6a.PNG" alt="6a" /></p>', '<p><img src="../media/source/6b.PNG" alt="6b" /></p>', '<p><img src="../media/source/6c.PNG" alt="6c" /></p>', '<p><img src="../media/source/6d.PNG" alt="6d" /></p>', '<p><img src="../media/source/6e.PNG" alt="6e" /></p>', 4, 0),
(60, 2, '<p>Diketahui matriks <img src="../media/source/7.PNG" alt="7" />&nbsp;. Hasil dari A &times; B adalah ...</p>', '', '<p><img src="../media/source/7a.PNG" alt="7a" /></p>', '<p><img src="../media/source/7b.PNG" alt="7b" /></p>', '<p><img src="../media/source/7c.PNG" alt="7c" /></p>', '<p><img src="../media/source/7d.PNG" alt="7d" /></p>', '<p><img src="../media/source/7e.PNG" alt="7e" /></p>', 2, 0),
(61, 2, '<p>Invers dari matriks &nbsp;<img src="../media/source/8.PNG" alt="8" />adalah&hellip;&nbsp;</p>', '', '<p><img src="../media/source/8a.PNG" alt="8a" /></p>', '<p><img src="../media/source/8b.PNG" alt="8b" /></p>', '<p><img src="../media/source/8c.PNG" alt="8c" /></p>', '<p><img src="../media/source/8d.PNG" alt="8d" /></p>', '<p><img src="../media/source/8e.PNG" alt="8e" /></p>', 2, 0),
(62, 2, '<p>Determinan matriks <img src="../media/source/9.PNG" alt="9" />&nbsp;adalah&hellip;.</p>', '', '<p>16</p>', '<p>8</p>', '<p>4</p>', '<p>-16</p>', '<p>-64</p>', 4, 0),
(63, 2, '<p>Persamaan garis yang melalui titik (&ndash;2, 3) dan tegak lurus garis 2<em>x</em> + 3<em>y</em> = 6 adalah &hellip;</p>', '', '<p>2<em>x</em> &ndash; 2<em>y</em> &ndash; 12 = 0</p>', '<p>&nbsp;3<em>x</em> &ndash; 2<em>y</em> + 12= 0</p>', '<p>&nbsp;2<em>x</em> &ndash; 3<em>y</em> + 13= 0</p>', '<p>&nbsp;2<em>x</em> &ndash; 3<em>y</em> &ndash; 13 = 0</p>', '<p>&nbsp;2<em>x</em> &ndash; 3<em>y</em> = 0</p>', 2, 0),
(64, 2, '<p>Grafik dari fungsi kuadrat <em>y</em> = <em>x</em><sup>2</sup> &ndash; 4<em>x</em> &ndash; 5 adalah &hellip;</p>', '', '<p><img src="../media/source/11a.PNG" alt="11a" /></p>', '<p><img src="../media/source/11b.PNG" alt="11b" /></p>', '<p><img src="../media/source/11c.PNG" alt="11c" /></p>', '<p><img src="../media/source/11d.PNG" alt="11d" /></p>', '<p><img src="../media/source/11e.PNG" alt="11e" /></p>', 3, 0),
(65, 2, '<p>Persamaan grafik fungsi kuadrat pada gambar disamping adalah &hellip; &nbsp; &nbsp;<img src="../media/source/12.PNG" alt="12" /></p>', '', '<p><em>y</em> = &ndash;2<em>x</em><sup>2</sup> + 4<em>x</em> + 3</p>', '<p>&nbsp;<em>y</em> = &ndash;2<em>x</em><sup>2</sup> + 4<em>x</em> + 2</p>', '<p>&nbsp;<em>y</em> = &ndash;<em>x</em><sup>2</sup> + 2<em>x</em> + 3</p>', '<p>&nbsp;<em>y</em> = &ndash;2<em>x</em><sup>2</sup> + 4<em>x</em> &ndash; 6</p>', '<p>&nbsp;<em>y</em> = &ndash;<em>x</em><sup>2</sup> + 2<em>x</em> &ndash; 5</p>', 3, 0),
(66, 2, '<p>Pak Justo akan membeli pupuk organik dengan harga Rp5.000,00 perkilogram dan pupuk anorganik dengan harga Rp7.000,00 perkilogram. Ia hanya mempunyai modal Rp800.000,00 dan gudangnya hanya mampu menampung 700 kg pupuk. Misal banyak kg pupuk organikdan pupuk anorganik &nbsp;maka model matematika dari persoalan tersebut adalah&hellip;.&nbsp;</p>', '', '<p><img src="../media/source/13a.PNG" alt="13a" /></p>', '<p><img src="../media/source/13b.PNG" alt="13b" /></p>', '<p><img src="../media/source/13c.PNG" alt="13c" /></p>', '<p><img src="../media/source/13d.PNG" alt="13d" /></p>', '<p><img src="../media/source/13e.PNG" alt="13e" /></p>', 2, 0),
(67, 2, '<p>Daerah penyelesaian dari sistem pertidaksamaan 5<em>x</em> + 2<em>y</em> &le; 10; 3<em>x</em> + 7<em>y</em> &ge; 21; <em>x</em> &ge; 0; <em>y</em> &ge; 0; <em>x</em>, <em>y</em> &Icirc; &Acirc; adalah &hellip;.</p>\r\n<p><img src="../media/source/14.PNG" alt="14" /></p>', '', '<p>I</p>', '<p>II</p>', '<p>III</p>', '<p>IV</p>', '<p>V</p>', 1, 0),
(68, 2, '<p>Nilai maksimum dari fungsi objektif <em>f(x, y) = </em>3<em>x + </em>2<em>y</em> pada daerah yang memenuhi sistem pertidaksamaan <em>x + y &le; </em>8<em>; </em>4<em>x + </em>2<em>y &le; </em>24<em>; x &ge;; y &ge; 0 </em>adalah&hellip;.</p>', '', '<p>16</p>', '<p>18</p>', '<p>20</p>', '<p>24</p>', '<p>26</p>', 3, 0),
(69, 2, '<p>Deni membidik sasaran di ujung atas sebuah pohon dengan sudut elevasi 45&deg;. Jika jarak antara Deni dengan pohon adalah 8 meter dan tinggi Deni 165 cm maka tinggi pohon adalah ... meter.</p>\r\n<p>&nbsp;</p>', '', '<p>11,52</p>', '<p>&nbsp;10,65</p>', '<p>&nbsp;9,65</p>', '<p>8,65</p>', '<p>8,353</p>', 3, 0),
(70, 2, '<p><img src="../media/source/17.PNG" alt="17" />Panjang sisi BC pada segitiga di samping adalah ... cm</p>\r\n<p>&nbsp;</p>', '', '<p><img src="../media/source/17a.PNG" alt="17a" /></p>', '<p>20</p>', '<p><img src="../media/source/17c.PNG" alt="17c" /></p>', '<p><img src="../media/source/17d.PNG" alt="17d" /></p>', '<p><img src="../media/source/17e.PNG" alt="17e" /></p>', 4, 0),
(71, 2, '<p>Pada segitiga ABC diketahui AB = 20 cm, AC = <img src="../media/source/18.PNG" alt="18" />cm dan BC = 10 cm. Besar&ETH;B adalah&hellip; .</p>', '', '<p>0<sup>o</sup></p>', '<p>30<sup>o</sup></p>', '<p><sup>45o</sup></p>', '<p>60<sup>o</sup></p>', '<p>90<sup>o</sup></p>', 4, 0),
(72, 2, '<p>Sebuah lahan perkebunan berbentuk segitiga ABC, besar , panjang sisi a = 8 cm dan c = 5 cm. Luas lahan tersebut adalah ....</p>', '', '<p><img src="../media/source/19a.PNG" alt="19a" /></p>', '<p><img src="../media/source/19b.PNG" alt="19b" /></p>', '<p><img src="../media/source/19c.PNG" alt="19c" /></p>', '<p><img src="../media/source/19e.PNG" alt="19e" /></p>', '<p><img src="../media/source/19e.PNG" alt="19e" /></p>', 1, 0),
(73, 2, '<p>Diketahui kubus ABCD.EFGH. BE dan AH masing - masing adalah diagonal bidang sisi ABFE dan ADHE, besar sudut antara BE dan AH adalah....</p>', '', '<p>30<sup>o</sup></p>', '<p><sup>45o</sup></p>', '<p>60<sup>0</sup></p>', '<p>90<sup>0</sup></p>', '<p>120<sup>0</sup></p>', 3, 0),
(74, 2, '<p>Diketahui balok ABCD.EFGH dengan panjang AB = 8 cm, BC = 5 cm dan AE = 3 cm, jarak garis AH dengan bidang BCGF adalah &hellip;.</p>', '', '<p>10cm</p>', '<p>9cm</p>', '<p>8cm</p>', '<p>7cm</p>', '<p>6cm</p>', 1, 0),
(75, 2, '<p>Diketahui persamaan garis <em>x</em>+2<em>y</em> = 4 ditranslasikan oleh <img src="../media/source/22.PNG" alt="22" /> , maka bayangan garis tersebut adalah &hellip;.</p>', '', '<p><em>x</em> + 2<em>y</em> = 8</p>', '<p>&nbsp;<em>x</em> - 2<em>y</em> = 8</p>', '<p>&nbsp;2<em>x</em> + 2<em>y</em> = 4</p>', '<p>&nbsp;2<em>x</em> - 2<em>y</em> = 4</p>', '<p><strong></strong>2<em>x</em> + <em>y</em> = 8</p>', 1, 0),
(76, 2, '<p>Bayangan titik A (&ndash;3, 5) di translasi <img src="../media/source/23.PNG" alt="23" />, kemudian di refleksikan sumbu X adalah ....</p>', '', '<p>(&ndash;2, 7)</p>', '<p>&nbsp;(2, &ndash;7)</p>', '<p>&nbsp;(&ndash;2, &ndash;7)</p>', '<p>(2, 7)</p>', '<p>&nbsp;(&ndash;7, &ndash;2)</p>', 3, 0),
(77, 2, '<p>Diberikan barisan aritmatika 3,8,13,18,&hellip;.,118. Banyaknya suku barisan tersebut adalah &hellip;</p>', '', '<p>21</p>', '<p>22</p>', '<p>23</p>', '<p>24</p>', '<p>25</p>', 4, 0),
(78, 2, '<p>Menjelang Ujian Nasional, Ine belajar kosakata bahasa Inggris setiap harinya. Hari pertama ia menghafal 5 kosakata, hari kedua 8 kosakata dan seterusnya, hingga setiap harinya ia menghafal kosa kata baru sebanyak tiga lebihnya dari jumlah kosa kata yang dihafal pada hari sebelumnya. Banyaknya kosakata yang dihafal Ine hingga 15 hari pertama adalah ...&nbsp;</p>', '', '<p>47</p>', '<p>48</p>', '<p>235</p>', '<p>390</p>', '<p>780</p>', 4, 0),
(79, 2, '<p>Suku kedua barisan geometri adalah 3 dan suku kelima adalah 81. Suku ketujuh barisan tersebut adalah ...</p>', '', '<p>162</p>', '<p>243</p>', '<p>486</p>', '<p>729</p>', '<p>2187</p>', 5, 0),
(80, 2, '<p>Suku pertama deret geometri tak hingga adalah 3. Jika jumlah tak hingga deret tersebut adalah 15, maka rasio deret tersebut adalah ...</p>', '', '<p>1/5</p>', '<p>1/3</p>', '<p>2/3</p>', '<p>4/5</p>', '<p style="text-align: left;">5/6</p>', 4, 0),
(81, 2, '<p>Sebuah gedung pertemuan memiliki 5 pintu untuk masuk dan keluar. Apabila Tono akan masuk dalam ruangan kemudian keluar, maka banyaknya cara Tono bisa menggunakan pintu tersebut secara berbeda adalah&hellip;</p>', '', '<p>5 cara</p>', '<p>10 cara</p>', '<p>15 cara</p>', '<p>20 cara</p>', '<p>25 cara</p>', 5, 0),
(82, 2, '<p>Dalam kantong I terdapat 5 kelereng merah dan 3 kelereng putih, dalam kantong II terdapat 4 kelereng merah dan 6 kelereng hitam. Dari setiap kantong diambil satu kelereng secara acak. Peluang terambilnya kelereng putih dari kantong I dan kelereng hitam dari kantong II adalah &hellip;.</p>', '', '<p>39/40</p>', '<p>9/13</p>', '<p>1/2</p>', '<p>9/20</p>', '<p>9/40</p>', 5, 0),
(83, 2, '<p>Persamaan garis singgung lingkaran <em>x</em><sup>2 </sup>+ <em>y</em><sup>2 </sup>= 20 yang melalui titik (4, &ndash;2) &nbsp;adalah ....</p>', '', '<p>2<em>x</em> &ndash; 4<em>y</em> = &ndash;20</p>', '<p>&nbsp;2<em>x</em> &ndash; 4<em>y</em> = 20</p>', '<p>&nbsp;4<em>x</em> &ndash; 2<em>y</em> = &ndash;20</p>', '<p>&nbsp;4<em>x</em> &ndash; 2<em>y</em> = 20</p>', '<p>&nbsp;4<em>x</em> + 2<em>y</em> = 20</p>', 4, 0),
(84, 2, '<p>Pemesan meja pada unit produksi Abadi dari bulan Mei hingga September 2015 disajikan dalam diagram berikut :</p>\r\n<p><img src="../media/source/31.PNG" alt="31" /></p>\r\n<p>Persentase sebanyaknya pemesan pada bulan Mei sampai Juni adalah ....</p>', '', '<p>15,0%</p>', '<p>20,5%</p>', '<p>22,5%</p>', '<p>25,0%</p>', '<p>30,0%</p>', 4, 0),
(85, 2, '<p>Nilai rata-rata ulangan dari 30 orang siswa adalah 7,30. Jika Agus mengikuti ulangan susulan, kemudian nilainya digabungkan dengan nilai rata-rata kelas, maka rata-ratanya menjadi 7,35. Nilai ulangan Agus adalah .... .</p>', '', '<p>7,25</p>', '<p>7,85</p>', '<p>8,25</p>', '<p>8,85</p>', '<p>9,25</p>', 4, 0),
(86, 2, '<p>Perhatikan tabel dibawah ini !</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td width="123">\r\n<p>Usia (bulan)</p>\r\n</td>\r\n<td width="123">\r\n<p>Frekuensi (f)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="123">\r\n<p>30 &ndash; 34</p>\r\n<p>35 &ndash; 39</p>\r\n<p>40 &ndash; 44</p>\r\n<p>45 &ndash; 49</p>\r\n<p>50 &ndash;&nbsp; 54</p>\r\n<p>55 &ndash; 59</p>\r\n</td>\r\n<td width="123">\r\n<p>6</p>\r\n<p>10</p>\r\n<p>12</p>\r\n<p>8</p>\r\n<p>15</p>\r\n<p>9</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Kuartil bawah dari data pada tabel di atas adalah&hellip; .</p>', '', '<p>62,90</p>', '<p>52,50</p>', '<p>45,75</p>', '<p>45,50</p>', '<p>39,00</p>', 2, 0),
(87, 2, '<p>Simpangan baku dari data 3, 2, 7, 6, 5,1 adalah ....</p>\r\n<p>&nbsp;</p>', '', '<p><img src="../media/source/34a.PNG" alt="34a" /></p>', '<p><img src="../media/source/34b.PNG" alt="34b" /></p>', '<p>4</p>', '<p><img src="../media/source/34d.PNG" alt="34d" /></p>', '<p>2</p>', 4, 0),
(88, 2, '<p>Turunan pertama dari <img src="../media/source/35.PNG" alt="35" />&nbsp;adalah...</p>', '', '<p><img src="../media/source/35a.PNG" alt="35a" /></p>', '<p><img src="../media/source/35b.PNG" alt="35b" /></p>', '<p><img src="../media/source/35c.PNG" alt="35c" /></p>', '<p><img src="../media/source/35d.PNG" alt="35d" /></p>', '<p><img src="../media/source/35e.PNG" alt="35e" /></p>', 4, 0),
(89, 2, '<p>Nilai<img src="../media/source/36.PNG" alt="36" /></p>', '', '<p>-4</p>', '<p>-1</p>', '<p>0</p>', '<p>1</p>', '<p>4</p>', 2, 0),
(90, 2, '<p>Titik stationer dari fungsi <img src="../media/source/37.PNG" alt="37" />adalah &hellip;.</p>', '', '<p>( 1, &ndash;3) dan (3, &ndash;7)</p>', '<p>&nbsp;( 1, &ndash;3) dan (&ndash;3, 7)</p>', '<p>&nbsp;( &ndash; 1, 3) dan (&ndash;3, 7)</p>', '<p>&nbsp;( &ndash; 1, 3) dan (3, &ndash;7)</p>', '<p>&nbsp;( &ndash; 1, 3) dan (&ndash;3, &ndash;7)</p>', 3, 0),
(91, 2, '<p><img src="../media/source/38.PNG" alt="38" /></p>', '', '<p><img src="../media/source/38a.PNG" alt="38a" /></p>', '<p><em>x</em><sup>3</sup> + 2<em>x</em><sup>&ndash;3</sup> + C</p>', '<p><em>x</em><sup>3</sup> + <em>x</em><sup>&ndash;3</sup> + C</p>', '<p><em>x</em><sup>3</sup> + <em>x</em><sup>&ndash;1</sup> + C</p>', '<p><img src="../media/source/38b.PNG" alt="38b" /></p>', 5, 0),
(92, 2, '<p><img src="../media/source/39.PNG" alt="39" /></p>', '', '<p>2</p>', '<p>18</p>', '<p>20 1/3</p>', '<p>22</p>', '<p>24 1/3</p>', 2, 0),
(93, 2, '<p>Luas daerah yang dibatasi oleh kurva <em>y</em> = <em>x</em><sup>2 </sup>+ <em>x</em> 5 dan <em>y</em> = 5<em>x</em> &ndash; 5&nbsp; adalah &hellip;. satuan luas.</p>', '', '<p><img src="../media/source/40a.PNG" alt="40a" /></p>', '<p><img src="../media/source/40b.PNG" alt="40b" /></p>', '<p><img src="../media/source/40c.PNG" alt="40c" /></p>', '<p><img src="../media/source/40d.PNG" alt="40d" /></p>', '<p>36</p>', 1, 0),
(96, 3, '<p>Soal pertama</p>', 'Kacian Deh Loe.mp3', '<p>A</p>', '<p>B</p>', '<p>C</p>', '<p>D</p>', '<p>E</p>', 1, 0),
(97, 3, '<p>Soal kedua</p>', 'Cempulek Jebul.mp3', '<p>A</p>', '<p>B</p>', '<p>C</p>', '<p>D</p>', '<p>E</p>', 2, 0),
(98, 3, '<p>Soal ketiga</p>', 'Cempulek Jebul.mp3', '<p>A</p>', '<p>B</p>', '<p>C</p>', '<p>D</p>', '<p>E</p>', 5, 0),
(99, 5, 'Salah satu jenis peralatan ukur lain yang sangat  presisi / mempunyai tingkat ketelitian yang tinggi adalah micrometer. Berikut ini adalah pekerjaan yang dapat dilakukan oleh peralatan ukur micrometer :', '', 'Mengukur diameter dalam suatu benda', 'Mengukur ketebalan suatu benda kerja', 'Mengukur axial / radial cleareance / keolengan suatu benda', 'Mengukur kedalaman lubang suatu benda', 'Salah Semua', 2, 0),
(100, 5, 'Bagian dari jangka sorong / mistar geser yang berfungsi untuk melakukan pengukuran diameter dalam suatu benda kerja adalah :', '', 'Step', 'Outside Jaw', 'Inside Jaw', 'Depth Bar', 'Salah Semua', 3, 0),
(101, 5, '<p>Tentukan hasil pengukuran mistar geser dibawah ini :</p>\r\n<p><img src="../media/source/TSM%203.JPG" alt="TSM 3" width="449" height="180" /></p>', '', '<p>73,55 mm</p>', '<p>73,75 mm</p>', '<p>73,85 mm</p>', '<p>73,65 mm</p>', '<p>Salah Semua</p>', 2, 0),
(102, 5, 'Berikut adalah macam-macam ukuran micrometer yang sering kita jumpai pada pekerjaan pengukuran benda kerja yang terdapat pada Sepeda Motor Honda, kecuali...', '', '0 â€“ 25 mm', '75 â€“ 100 mm', '50 â€“ 75 mm', ' 25 â€“ 50 mm', 'Salah Semua', 2, 0),
(103, 5, '<p>Berapakah hasil pengukuran micrometer di bawah ini :</p>\r\n<p><img src="../media/source/TSM%205.JPG" alt="TSM 5" /></p>', '', '<p>15,35 mm</p>', '<p>15,75 mm</p>', '<p>16,25 mm</p>', '<p>15,55 mm</p>', '<p>Salah Semua</p>', 2, 0),
(104, 5, 'Angka ketelitian yang sering dijumpai pada peralatan ukur jangka sorong / mistar geser adalah :', '', '0,01 &amp; 0,001 mm', '0,2 &amp; 0,5 mm', ' 0,02 &amp; 0,05 mm', '0,002 &amp; 0,005 mm', 'Salah Semua', 3, 0),
(105, 5, 'Fungsi dari vernier caliper dibawah ini yang paling tepat adalah...', '', 'Mengukur diameter luar suatu benda', 'Mengukur besar kecilnya sudut suatu benda kerja''', 'Mengukur nilai axial / radial / keolengan suatu benda kerja', 'Mengukur jarak / celah kerenggangan antar dua benda kerja', 'Salah Semua', 1, 0),
(106, 5, '<p>Nama tools di bawah ini yang tepat adalah...</p>\r\n<p><img src="../media/source/TSM%208.JPG" alt="TSM 8" width="448" height="163" /></p>', '', '<p>Tang Kombinasi</p>', '<p>Tang Circlip</p>', '<p>Tang Potong</p>', '<p>Tang Long Nose</p>', '<p>Salah Semua</p>', 4, 0),
(107, 5, 'Alat yang digunakan untuk mengukur berat jenis air accu adalah...', '', 'Hydrotester', 'Accu Zuur', 'Hydrometer', 'Hydrococo', 'Salah Semua', 3, 0),
(108, 5, 'Alat yang digunakan untuk melakukan reset memori kerusakan pada motor PGM-Fi adalah...', '', 'Jumper Line', 'PIN Probe Male', 'HDS (Honda Diagnosa System)', 'DLC Short Connector', 'Salah Semua', 4, 0),
(109, 5, 'Komponen yang berfungsi untuk mengubah gerakan bolak balik piston menjadi gerak berputar yang selanjutnya akan diteruskan ke kopling dan transmisi adalah...', '', 'Cam Shaft', 'Piston', 'Crank Shaft', 'Flywheel', 'Salah Semua', 3, 0),
(110, 5, 'Sepeda Motor Honda 4 tak memiliki 3 buah ring piston, yang terdiri atas...', '', '1 Ring Kompresi dan 1 Ring Oli', '1 Ring Kompresi dan 2 Ring Oli', '2 Ring Kompresi dan 1 Ring Oli', '2 Ring Kompresi dan 2 Ring Oli', 'Salah Semua', 3, 0),
(111, 5, 'Dibawah ini merupakan komponen dari radiator, kecuali...', '', 'Camshaft', 'Fanc Switch', 'Tangki penyimpanan', 'Thermostat', 'Salah Semua', 1, 0),
(112, 5, 'Sistem pemindah gerak putar dari crankshaft ke poros transmisi adalah...', '', 'Transmisi', 'Connecting Rod', 'Kopling', 'Drive Pulley', 'Salah Semua', 3, 0),
(113, 5, 'Dari part mesin dibawah ini, yang termasuk bagian dari kepala silinder adalah...', '', 'Bos Klep, Cylinder Head, Camshaft, Cylinder Comp, Roker Arm  ', 'Piston, Cyilinder Head, Camshaft, Klep, Rante Mesin  ', 'Bos Klep, Cylinder Head, Camshaft, Klep, Roker Arm', 'Cylinder Comp, Cylinder Head, Camshaft, Klep, Rantai ', 'Salah Semua', 3, 0),
(114, 5, 'Pada mesin 4 tak, perubahan panas menjadi tenaga penggerak terjadi pada langkah...', '', 'Pembuangan', 'Hisap', 'Kompresi', 'Usaha', 'Salah Semua', 4, 0),
(115, 5, 'Pada mesin 4 tak, apabila katup masuk terbuka dan katup buang tertutup, sementara piston bergerak dari TMA ke TMB, maka proses ini disebut â€¦', '', 'Langkah usaha', 'Langkah pembuangan', 'Langkah hisap', 'Semua benar', 'Salah Semua', 3, 0),
(116, 5, 'Komponen pada karburator yang berfungsi menyuplai bahan bakar pada saat putaran stasioner adalah:', '', 'Slow Jet', 'Main Jet ', 'Pilot Screw', 'Piston Valve Screw', 'Salah Semua', 1, 0),
(117, 5, '<p>Gambar di bawah ini menunjukan posisi klep pada saat...</p>\r\n<p><img src="../media/source/TSM%2019.JPG" alt="TSM 19" /></p>', '', '<p>Klep sudah membuka</p>', '<p>Klep mulai membuka</p>', '<p>Klep mulai menutup</p>', '<p>Klep terbuka penuh</p>', '<p>Salah Semua</p>', 2, 0),
(118, 5, 'Berikut adalah fungsi utama oli mesin, kecuali...', '', 'Percepatan', 'Pendinginan', 'Perapat', 'Pelumasan', 'Salah Semua', 1, 0),
(119, 5, 'Alat ukur yang berfungsi untuk mengukur tekanan bahan bakar motor PGM-Fi adalah...', '', 'Fuel Compression Gauge', 'Fuel Pressure Gauge', 'Tire Gauge', 'Micro meter dial', 'Salah Semua', 2, 0),
(120, 5, 'Berikut ini adalah sensor-sensor yang letakknya ada di throttle body...', '', 'TP, O2 sensor, MAP', 'TP, MAP, IAT', 'MAP, IAT, EOT', 'IAT, ECT, CKP', 'Salah Semua', 2, 0),
(121, 5, 'Dibawah ini yang bukan merupakan keunggulan PGM-Fi adalah...', '', 'Performa kurang baik', 'Lebih irit bahan bakar', 'Mesin mudah dihidupkan', 'Mudah perawatan', 'Salah Semua', 1, 0),
(122, 5, 'Apakah fungsi dari Malfunction Indicator Lamp (MIL)', '', 'Sebagai indikator gangguan pada sistem PGM-FI ', 'Sebagai indikator bahwa sepeda motor menggunakan sistem PGM-FI', 'Sebagai indikator gangguan injektor', 'Sebagai pembaca history gangguan sistem PGM-FI', 'Salah Semua', 1, 0),
(123, 5, '<p>Fungsi gambar di bawah ini adalah...</p>\r\n<p><img src="../media/source/TSM%2025.JPG" alt="TSM 25" /></p>', '', '<p>Konektor arus listrik kuat</p>', '<p>Sambungan ke Injector yang kedap air</p>', '<p>Mengaktifkan mode reset / sistem pendiagnosaan sendiri</p>', '<p>Konektor yang umum digunakan untuk pencahayaan</p>', '<p>Salah Semua</p>', 3, 0),
(124, 5, 'Definisi PGM-Fi adalah...', '', 'Sistem pasokan bahan bakar dengan menggunakan teknologi kontrol secara elektronik yang mampu mengatur pasokan bahan bakar dan udara secara optimum sesuai yang dibutuhkan oleh mesin .', 'Sistem pasokan bahan bakar dengan menggunakan teknologi kontrol dari fuel pump secara elektronik sehingga pasokan bahan bakar optimum sesuai dengan yang dibutuhkan oleh mesin.', 'Sistem pasokan bahan bakar dengan menggunakan alat elektronik yang mampu   mengatur jumlah udara dan bahan bakar.', 'Sistem pasokan bahan bakar dengan menggunakan injektor sehingga pengabutan bahan bakar akan bercampur sempurna dengan udara.', 'Salah Semua', 1, 0),
(125, 5, 'Komponen yang terdapat pada tangki bahan bakar sepeda motor PGM-Fi adalah...', '', 'Filter Oli', 'Sensor bahan bakar', 'Filter Udara', 'Fuel pump', 'Salah Semua', 4, 0),
(126, 5, 'Hal yang perlu diperhatikan saat melakukan reset ECM dengan menggunakan DLC connector adalah...', '', 'Waktu untuk melepas dan memasang maksimal 3 detik', 'Waktu untuk melepas dan memasang maksimal 5 detik', 'Waktu untuk melepas dan memasang maksimal 4 detik', 'Waktu untuk melepas dan memasang maksimal 6 detik', 'Salah Semua', 2, 0),
(127, 5, 'Alat yang digunakan untuk mengukur tegangan / voltase adalah...', '', 'Hydrometer', 'Voltmeter', 'Amperemeter', 'Torsimeter', 'Salah Semua', 2, 0),
(128, 5, 'Komponen yang berfungsi sebagai pengaman sebuah rangkaian listrik agar saat terjadi korsleting tidak merusak komponen kelistrikan yang lain adalah :', '', 'Sekring', 'Switch', 'Relay', 'Connector', 'Salah Semua', 1, 0),
(129, 5, 'Gejala apa yang dapat terjadi ketika insulator projectiondan kedua elektroda pada busi terdapat tumpukan karbon ?', '', 'Kebocoran listrik', 'Korsleting', 'Filamen lampu putus', 'Mesin tidak hidup', 'Salah Semua', 1, 0),
(130, 5, 'Alat yang digunakan untuk membuang angin palsu pada sistem rem hidarulis adalah...', '', 'Brake Bleeder', 'Air Pressure Gauge', 'Vacum Cleaner', 'Compression Tester', 'Salah Semua', 1, 0),
(131, 5, 'Alat yang digunakan untuk mengukur jarak tempuh pada sepeda motor adalah,,,', '', 'Odometer', 'Tachometer', 'Multimeter', 'Speedometer', 'Salah Semua', 1, 0),
(132, 5, 'Berikut ini adalah beberapa kemungkinan penyebab handle rem pada sistim rem cakram terlalu empuk, kecuali...', '', 'Tedapat udara palsu pada sistim rem', 'Caliper tidak bergeser dengan baik, kampas rem cakram aus', 'Terjadi keausan sil piston caliper', 'Semua benar', 'Salah Semua', 2, 0),
(133, 5, 'Sistem pengereman ganda dengan menghentikan putaran roda belakang dan depan adalah...', '', 'ISS', 'CBS', 'ABS', 'ESP', 'Salah Semua', 2, 0),
(134, 5, 'Roda gigi pada ujung poros engkol berfungsi untuk', '', 'penggerak rumah kopling sehingga dapat berputar bersama dengan poros engkol', 'lidah pengait pelat gesek yang membuat plat gesek ikut berputar bersama poros engkol', 'perpindahan dari tingkat kecepatan tertentu ke percepatan lainnya', 'melepas hubungan antara poros engkol dengan transmisi', 'meneruskan putaran poros engkol ke transmisi secara berangsur-angsur', 1, 0),
(135, 5, 'Crankcase pada engine berfungsi untuk....', '', 'menjalankan poppet valve', 'mengubah gerak translasi piston menjadi gerak putar', 'rumah dari komponen yang ada di dalamnya', 'menjaga kerapatan piston dengan dinding silinder', 'tempat bergeraknya piston', 3, 0),
(136, 5, '<p>Komponen dari mesin 4 tak di bawah ini yang ditunjukkan dengan huruf C adalah&hellip;.</p>\r\n<p><img src="../media/source/TSM%2038.JPG" alt="TSM 38" /></p>', '', '<p>exhaust camshaft</p>', '<p>intake camshaff</p>', '<p>connecting rod</p>', '<p>crankshaft</p>', '<p>katup</p>', 4, 0),
(137, 5, 'Komponen sistem pengapian yang berfungsi merubah tegangan rendah dari CDI menjadi tegangan tinggi disebut', '', 'coil', 'busi ', 'CDI', 'Pulser', 'Alternator', 1, 0),
(138, 5, 'Special Service Tools yang tepat digunakan untuk menyetel celah katup dengan cara memutar sekerup penyetel adalah', '', 'universal holder ', 'flywheel holder ', 'flywheel puller ', 'lock nut wrench', 'valve adjusting wrench', 5, 0),
(140, 6, '<p>Yang bukan pilihan instalasi pada saat Anda meng-install windows XP adalah....&nbsp;</p>', '', '<p>Install windows XP&nbsp;</p>', '<p>Install optional windows component&nbsp;</p>', '<p>Perform additional tasks&nbsp;</p>', '<p>Upgrade windows XP&nbsp;</p>', '<p>Check system compatibility</p>', 4, 0),
(141, 6, '<p>Penyebab kecelakaan yang paling sering disebabkan karena ....&nbsp;</p>', '', '<p>Kondisi lingkungan kerja yang tidak nyaman&nbsp;</p>', '<p>Teledor dan tidak hati-hati</p>', '<p>Kurang tahu cara menggunakan peralatan safety&nbsp;</p>', '<p>Tidak mengikuti peraturan kerja&nbsp;</p>', '<p>Tidak memakai alat pelindung diri</p>', 2, 0),
(142, 6, '<p>Produk multimedia yang mampu berkomunikasi antara user dengan produk itu sendiri adalah ....&nbsp;</p>', '', '<p>Audio&nbsp;</p>', '<p>Video&nbsp;</p>', '<p>Presentasi interaktif</p>', '<p>Animasi&nbsp;</p>', '<p>Teks</p>', 3, 0),
(143, 6, '<p>Hal yang tidak termasuk pada &ldquo;multimedia communication&rdquo; di bawah ini adalah ....&nbsp;</p>', '', '<p>Radio, televisi</p>', '<p>Hiburan, game, film&nbsp;</p>', '<p>Handphone, ipad&nbsp;</p>', '<p>Tutorial presentasi, ict&nbsp;</p>', '<p>Musik, koran, majalah</p>', 3, 0),
(144, 6, '<p>Pada PC Multimedia banyak periferal yang dapat diintegrasikan sehingga mampu mendukung kemampuan PC. Salah satunya adalah periferal untuk grafik. Yang termasuk periferal grafis di bawah ini adalah ....&nbsp;</p>', '', '<p>Monitor</p>', '<p>Mouse&nbsp;</p>', '<p>Digitizer&nbsp;</p>', '<p>Modem</p>', '<p>Card Reader</p>', 1, 0),
(145, 6, '<p>Kegiatan penyusunan dokumentasi, penyusunan tim, membangun prototip, pengurusan hak cipta dan penandatanganan kontrak dan pembiayaan terjadi pada ....&nbsp;</p>', '', '<p>Proses pra produksi&nbsp;</p>', '<p>Proses produksi&nbsp;</p>', '<p>Proses purna produksi&nbsp;</p>', '<p>Proses pra produksi pada fase building prototype</p>', '<p>Proses produksi pada saat fase content creation</p>', 1, 0),
(146, 6, '<p>Kegiatan pengujian awal produk, mengevaluasi produk dan merevisi software dan content berdasarkan pada hasil evaluasi dan membangun beta version, terjadi pada kegiatan ....&nbsp;</p>', '', '<p>Proses pra produksi&nbsp;</p>', '<p>Proses produksi&nbsp;</p>', '<p>Proses purna produksi&nbsp;</p>', '<p>Proses pra produksi pada fase build alpha version&nbsp;</p>', '<p>Proses produksi pada saat fase first testing</p>', 2, 0),
(147, 6, '<p>Berikut ini yang bukan merupakan salah satu dari cara merawat kamera adalah ....</p>', '', '<p>Jagalah kamera digital agar terhindar dari goncangan yang berlebihan&nbsp;</p>', '<p>Hindari kontak langsung dengan sinar matahari&nbsp;</p>', '<p>Membersihkan dengan kain basah&nbsp;</p>', '<p>Bersihkan kamera dan lensa&nbsp;</p>', '<p>Hindari goresan pada lensa</p>', 3, 0),
(148, 6, '<p>Kartu yang berfungsi agar peralatan multimedia tidak cepat rusak hingga umur operasionalnya semakin panjang adalah ....&nbsp;</p>', '', '<p>Kartu perbaikan&nbsp;</p>', '<p>Kartu perawatan&nbsp;</p>', '<p>Kartu kondisi alat&nbsp;</p>', '<p>Kartu pemakai alat&nbsp;</p>', '<p>Kartu peminjaman barang</p>', 2, 0),
(149, 6, '<p>Fungsi tag &lt;a&nbsp; href=http://www.liputan6.com&gt;<a href="http://www.liputan6.com">liputan6</a>&nbsp;&lt;/a&gt;adalah ....&nbsp;</p>', '', '<p>Untuk memberikan teks www.liputan6.com pada halaman web&nbsp;</p>', '<p>Untuk memberikan tombol menuju www.liputan6.com&nbsp;</p>', '<p>Untuk memberikan tulisan http://www.liputan6.com pada halaman web&nbsp;</p>', '<p>Untuk memberikan penomoran pada tulisan liputan6&nbsp;</p>', '<p>Untuk memberikan format judul pada tulisan www.liputan6.com</p>', 2, 0),
(150, 6, '<p>Pernyataan di bawah ini yang bukan termasuk langkah-langkah mengisi batere kamera ....&nbsp;</p>', '', '<p>Lepas batere dari kamera&nbsp;</p>', '<p>Masukkan kamera ke dalam tempat pengisian batere</p>', '<p>Masukkan ke dalam lemari es&nbsp;</p>', '<p>Lepas batere dari tempat pengisian jika sudah penuh</p>', '<p>Masukkan kembali batere ke dalam kamera</p>', 3, 0),
(151, 6, '<p>Di bawah ini ada bermacam-macam lensa yang sering digunakan dalam fotografi. Lensa yang tidak diperuntukkan untuk fotografi adalah ....&nbsp;</p>', '', '<p>Lensa normal/standar&nbsp;</p>', '<p>Lensa wide/lebar&nbsp;</p>', '<p>Lensa zoom&nbsp;</p>', '<p>Lensa tele&nbsp;</p>', '<p>Lensa viewfinder</p>', 5, 0),
(152, 6, '<p>Yang dimaksud dengan estetika adalah ....</p>', '', '<p>Mengumpulkan data selera pasar yang layak jual&nbsp;</p>', '<p>Ilmu yang mempelajari estetika suatu benda atau karya dan daya impuls serta pengalaman estetika pencipta atau penghayat terhadap benda atau karya</p>', '<p>Hal yang mempelajari kualitas keindahan dan kerapian&nbsp;</p>', '<p>Teknik pengungkapan estetika terapan melalui proses belajar&nbsp;</p>', '<p>Desain yang merupakan keseluruhan yang melihat dalam proyek atau benda hidup</p>', 3, 0),
(153, 6, '<p><img src="../media/source/MM%2014.PNG" alt="MM 14" width="622" height="129" /></p>\r\n<p>Dari gambar di atas, 2 gambar yang dikategorikan gambar sketsa adalah ....&nbsp;</p>', '', '<p>No 5 dan 4&nbsp;</p>', '<p>No 3 dan 4&nbsp;</p>', '<p>No 5 dan 4&nbsp;</p>', '<p>No 2 dan 5&nbsp;</p>', '<p>No 1 dan 3</p>', 5, 0),
(154, 6, '<p>Rangkaian karakter menurut suatu format standar tertentu yang digunakan untuk menunjukkan alamat suatu sumber seperti dokumen dan gambar di internet disebut ....&nbsp;</p>', '', '<p>Hypertext&nbsp;</p>', '<p>Web Site&nbsp;</p>', '<p>Hyperlink&nbsp;</p>', '<p>Hyperspeed&nbsp;</p>', '<p>URL (Uniform Resource Locator)</p>', 5, 0),
(155, 6, '<p>Apa fungsi Library didalam Flash ?</p>', '', '<p>Tempat menyimpan Simbol&nbsp;</p>', '<p>Tempat menyimpan gambar-gambar&nbsp;</p>', '<p>Tempat menyimpan Picture&nbsp;</p>', '<p>Tempat menyimpan font dan warna</p>', '<p>Tempat menyimpan simbol-simbol dan gambar</p>', 5, 0),
(156, 6, '<p>Gambar yang dapat menggambarkan dengan jelas terhadap pesan yang hendak dijelaskan atau disampaikan adalah ....&nbsp;</p>', '', '<p>Gambar dengan fokus tertentu&nbsp;</p>', '<p>Foto focus&nbsp;</p>', '<p>Sketsa&nbsp;</p>', '<p>Obyek</p>', '<p>Illustrasi</p>', 5, 0),
(157, 6, '<p>Film yang merupakan hasil dari pengolahan gambar tangan sehingga menjadi gambar yang bergerak. Pernyataan itu adalah salah satu pengertian dari ....</p>', '', '<p>Animasi&nbsp;</p>', '<p>Story board&nbsp;</p>', '<p>Gambar berangkai (komik)</p>', '<p>Alur&nbsp;</p>', '<p>Story line</p>', 1, 0),
(158, 6, '<p>Perintah yang dilakukan untuk mengubah keyframe menjadi frame adalah ....</p>', '', '<p>Geser item pada panel library ke stage&nbsp;</p>', '<p>Tekan tombol alt dan geser keyframe ke lokasi baru&nbsp;</p>', '<p>Pilih keyframe dan pilih menu edit-timeline-clear keyframe&nbsp;</p>', '<p>Klik dan geser keyframe ke frame akhir dari rangkaian durasi yang baru&nbsp;</p>', '<p>Geser keyframe atau rangkaian frame tersebut ke lokasi yang diinginkan</p>', 3, 0),
(159, 6, '<p>Menu dasar flash ini sering digunakan untuk menentukan tipe file yang akan dihasilkan baik dalam exe, html, mov, swf, gif, hpg, png dan macintosh projector adalah ....&nbsp;</p>', '', '<p>Publish setting&nbsp;</p>', '<p>Open</p>', '<p>Save dan save as&nbsp;</p>', '<p>New&nbsp;</p>', '<p>Import</p>', 1, 0),
(160, 6, '<p>Bagian dari layer yang digunakan untuk mengatur gerakan animasi adalah ....&nbsp;</p>', '', '<p>Frame&nbsp;</p>', '<p>Layer&nbsp;</p>', '<p>Scene/stage</p>', '<p>Timeline&nbsp;</p>', '<p>Library</p>', 4, 0),
(161, 6, '<p><img src="../media/source/MM%2022.png" alt="MM 22" /></p>\r\n<p>Teks di atas&nbsp;menggunakan efek layer ...</p>', '', '<p>Shadow dan satin&nbsp;</p>', '<p>Shadow dan outer glow&nbsp;</p>', '<p>Shadow dan drop shadow&nbsp;</p>', '<p>Shadow dan inner glow&nbsp;</p>', '<p>Shadow dan bevel &amp; emboss</p>', 5, 0),
(162, 6, '<p>Apple dan Microsoft bersama-sama mengembangkan sebuah metodologi outline kurva kuadrat yang menurut mereka lebih baik dan lebih cepat ditampilkan. Dengan true type ini, Apple dan Microsoft tidak perlu melisensi penggunaan postscrip dari Adobe ....&nbsp;</p>', '', '<p>True type font&nbsp;</p>', '<p>Atm (adobe type manager)</p>', '<p>Adobe caslon pro&nbsp;</p>', '<p>Post script</p>', '<p>Scalable vector graphics</p>', 3, 0),
(163, 6, '<p>Mengambil gambar untuk digabungkan pada gambar yang sudah ada pada stage aplikasi pengolah gambar dilakukan dengan cara ....&nbsp;</p>', '', '<p>Klik browse buka folder dan klik gambar yang dimaksud&nbsp;</p>', '<p>Klik open buka folder dan klik gambar yang dimaksud&nbsp;</p>', '<p>Klik import buka folder dan klik gambar yang dimaksud&nbsp;</p>', '<p>Klik open recent buka folder dan klik gambar yang dimaksud&nbsp;</p>', '<p>Klik export buka folder dan klik gambar yang dimaksud</p>', 3, 0),
(164, 6, '<p>Perintah keyboard (shortcut) untuk merender cepat (quick render) pada software aplikasi 3 dimensi adalah ....&nbsp;</p>', '', '<p>F10&nbsp;</p>', '<p>F6&nbsp;</p>', '<p>F9&nbsp;</p>', '<p>F7</p>', '<p>F8</p>', 3, 0),
(165, 6, '<p>Berikut ini yang tidak termasuk salah satu hasil karya photoshop adalah ....&nbsp;</p>', '', '<p>Kartu&nbsp;</p>', '<p>Cover atau majalah&nbsp;</p>', '<p>Poster</p>', '<p>Presentasi interaktif&nbsp;</p>', '<p>Brosur</p>', 4, 0),
(166, 6, '<p>Di bawah ini yang bukan bagian-bagian dari kamera adalah ....&nbsp;</p>', '', '<p>Kotak yang kedap cahaya (badan kamera)</p>', '<p>Sistem lensa&nbsp;</p>', '<p>Lightmeter&nbsp;</p>', '<p>Pemantik potret (shutter)</p>', '<p>Pemutar film</p>', 3, 0),
(167, 6, '<p>Untuk memotong file gambar pada aplikasi adobe photoshop menggunakan toolbox ....&nbsp;</p>', '', '<p>Lasso tool</p>', '<p>Eraser tool&nbsp;</p>', '<p>Dodge tool</p>', '<p>Crop tool&nbsp;</p>', '<p>Clone stamp to</p>', 4, 0),
(168, 6, '<p>Hal yang harus dilakukan pertama kali ketika akan merekam menggunakan software penyunting audio adalah ....</p>', '', '<p>Klik file -&gt; eksport&nbsp;</p>', '<p>Klik file -&gt; record&nbsp;</p>', '<p>Klik file -&gt; new&nbsp;</p>', '<p>Klik file -&gt; set&nbsp;</p>', '<p>Klik file -&gt; import</p>', 2, 0),
(169, 6, '<p>Berikut ini file yang tak bisa dihasilkan oleh software penyunting audio adalah ....&nbsp;</p>', '', '<p>.MP3&nbsp;</p>', '<p>.Wav&nbsp;</p>', '<p>.Wma&nbsp;</p>', '<p>.Mov&nbsp;</p>', '<p>.Voc</p>', 4, 0),
(170, 6, '<p>Scanning, klasifikasi, implementasi dan pre test merupakan ....&nbsp;</p>', '', '<p>Strategi pembuatan story board&nbsp;</p>', '<p>Strategi penulisan story board&nbsp;</p>', '<p>Strategi konsep desain pembuatan story board</p>', '<p>Stategi proses produksi story board&nbsp;</p>', '<p>Proses perancangan penulisan story board</p>', 5, 0),
(171, 6, '<p>Jalan lain untuk menjelajahi kemungkinan narasai atau untuk melatih sebuah penampilan termasuk pengertian dari ...</p>', '', '<p>Gambar berankai (komik)&nbsp;</p>', '<p>Story board</p>', '<p>Animasi&nbsp;</p>', '<p>Alur&nbsp;</p>', '<p>Story line</p>', 2, 0),
(172, 6, '<p>Lampu yang menyalurkan gas seketika dan memproduksi cahaya berdurasi singkat adalah pengertian dari ....</p>', '', '<p>Standar reflektor&nbsp;</p>', '<p>Triger dan reciever&nbsp;</p>', '<p>Alat pengukur cahaya&nbsp;</p>', '<p>Electronic flash head</p>', '<p>Soft box</p>', 4, 0),
(173, 6, '<p>Untuk objek lebih nyata ditambahkan dengan membuat cahaya agar terlihat lebih realistis. Cahaya satu titik seperti lampu gantung di kamar disebut ....&nbsp;</p>', '', '<p>omni</p>', '<p>spot</p>', '<p>skylight&nbsp;</p>', '<p>paint light&nbsp;</p>', '<p>blur</p>', 1, 0),
(174, 6, '<p>Perintah shortcut pada keyboard untuk mengekspor file audio yang sudah diedit adalah ....&nbsp;</p>', '', '<p>Ctrl + Alt + M&nbsp;</p>', '<p>Ctrl + Alt + Shift + M&nbsp;</p>', '<p>Ctrl + Shift + M&nbsp;</p>', '<p>Ctrl + M&nbsp;</p>', '<p>Alt + Shift + M</p>', 2, 0),
(175, 6, '<p>Untuk membentuk suatu objek seolah-olah objek tersebut terbungkus oleh suatu bentuk adalah fungsi dari ....</p>', '', '<p>Extrude tool&nbsp;</p>', '<p>Envelope tool</p>', '<p>Transparency tool&nbsp;</p>', '<p>Interactive distrot tool</p>', '<p>Interactive contour too</p>', 2, 0),
(176, 6, '<p>Tempat untuk file source dan juga tampilan efek yang akan dimunculkan di video anda, yang merupakan tempat semua impor komposisi, video, audio, graphics dll adalah ....&nbsp;</p>', '', '<p>Tool bar&nbsp;</p>', '<p>Menu utama&nbsp;</p>', '<p>Projects</p>', '<p>Kumpulan pallete&nbsp;</p>', '<p>Detail efek dan layers</p>', 3, 0),
(177, 6, '<p>Gabungan jenis visual effect .... dapat membuat objek melayang, menjauh dan berputarputar dalam program After Effect.</p>', '', '<p>3D Chanel - Perspective&nbsp;</p>', '<p>Keying - Matte&nbsp;</p>', '<p>3D Chanel - Transform</p>', '<p>Keying &ndash; 3D Chanel</p>', '<p>Animation preset &ndash; 3D Chanel</p>', 3, 0),
(178, 6, '<p>Di bawah ini yang bukan karakteristik proyek adalah ....&nbsp;</p>', '', '<p>Proyek merupakan sebuah alat untuk membuat suatu perubahan&nbsp;</p>', '<p>Proyek mempunyai tujuan spesifik&nbsp;</p>', '<p>Proyek mempunyai awwal dan akhir yang bisa dikenali dengan jelas&nbsp;</p>', '<p>Proyek mempunyai bentuk yang abstrak&nbsp;</p>', '<p>Proyek dapat menghasilkan sesuatu yang bisa diharapkan dan diserahkan</p>', 4, 0),
(179, 6, '<p>Output penting dari manajemen biaya proyek adalah ...</p>', '', '<p>Sumber daya</p>', '<p>Estimasi biaya&nbsp;</p>', '<p>Manajemen biaya&nbsp;</p>', '<p>Sumber dana&nbsp;</p>', '<p>Cost budgeting</p>', 2, 0),
(180, 8, 'Komunikasi yang disampaikan melalui media tulisan dan lisan disebut â€¦..', '', 'Komunikasi non verbal', 'Komunikasi verbal', 'Komunikasi internal ', 'Komunikasi eksternal', 'Komunikasi dengan menulis dan bicara', 2, 0),
(181, 8, 'Salah satu cara untuk menghemat listrik di lingkungan rumah adalahâ€¦â€¦', '', 'Menambah alat penghemat listrik pada volt meter', 'Menyambung langsung listrik dari kabel utama PLN', 'Mengganti kabel listrik dengan yang lebih kecil', 'Mematikan semua alat elektronik apabila tidak digunakan ', 'Menggunakan satu stop kontak untuk banyak alat elektronik', 4, 0),
(182, 8, '<p>Perhatikan format berikut ini, pernyataan yang benar dan fungsi bukti memo berikut adalah...</p>\r\n<p><img src="../media/source/AK%203.PNG" alt="AK 3" width="626" height="268" /></p>', '', '<p>Nomor satu (1) diisi nama perusahaan yang dikirimi perintah</p>', '<p>Nomor dua (2) diisi nama perusahaan yang mengirim perintah</p>', '<p>Nomor 3 (3) diisi batasan-batasan atas perintah kepada pihak luar</p>', '<p>Bukti memo bukan bukan bukti jurnal</p>', '<p>Bukti memo digunakan untuk melaksanakan kebijakan internal</p>', 5, 0);
INSERT INTO `soal` (`id_soal`, `id_ujian`, `soal`, `audio`, `pilihan_1`, `pilihan_2`, `pilihan_3`, `pilihan_4`, `pilihan_5`, `kunci`, `urut`) VALUES
(183, 8, 'Perhatikan dokumen berikut ini, Bagi PT ALKINDI dokumen di bawah merupakan kelompok dokumen', '', 'Transaksi antara perusahaan dengan pemilik', 'Transaksi antara perusahaan dengan karyawan ', 'Transaksi antara perusahaan dengan pelanggan ', 'Transaksi antara perusahaan dengan supplier', 'Transaksi penjualan dagangan oleh PT ALKINDI', 4, 0),
(184, 8, '<p>Perhatikan dokumen berikut ini</p>\r\n<p>&nbsp;<img src="../media/source/AK%205.PNG" alt="AK 5" width="560" height="368" /></p>\r\n<p>Bagi PT ALKINDI dokumen di bawah merupakan kelompok dokumen ...</p>', '', '<p>Prosedur kerja dibuat secara tertulis maupun lisan</p>', '<p>Prosedur kerja dibuat secara sistematis sera dituangkan dalam bentuk pedoman kerja</p>', '<p>Prosedur kerja harus selaras dengan kebijakan pimpinan, atau sesuai dengan kebijakan umum yang ditentukan pada tingkat yang lebih tinggi</p>', '<p>Prosedur kerja harus dapat mendorong pelaksanaan kegiatan secara efisien</p>', '<p>Prosedur kerja harus ditinjau dan dievaluasi kembali secara periodik</p>', 1, 0),
(185, 8, '<p>Pencatatan yang diperlukan oleh UD Wulan Sari atas bukti transaksi tersebut adalah</p>\r\n<p><img src="../media/source/AK%206_1.PNG" alt="AK 6_1" width="607" height="440" /></p>', '', '<p>Akun piutang akan di &ldquo;Debet&rdquo; dan akun penjualan di &ldquo;Kredit&rdquo;</p>', '<p>Akun kas akan di &ldquo;Debet&rdquo; dan akun penjualan di &ldquo;Kredit&rdquo;</p>', '<p>Akun pembelian akan di &ldquo;Debet&rdquo; dan akun Utang di &ldquo;Kredit&rdquo;</p>', '<p>Akun pembelian akan di &ldquo;Debet&rdquo; dan akun Kas di &ldquo;Kredit&rdquo;</p>', '<p>Akun Kas di &ldquo;Kredit&rdquo; dan akun Retur Penjualan di &ldquo;Debet&rdquo;</p>', 2, 0),
(186, 8, 'Akun-akun yang bersaldo normal kredit adalah', '', 'Piutang dagang, utang gaji dan modal', 'Sewa dibayar dimuka, utang dan modal', 'Utang gaji, pendapatan dan beban ', 'Modal dan pendapatan diterima dimuka', 'Surat berharga, pendapatan dan beban ', 4, 0),
(187, 8, 'Akun beban iklan di dalam laporan laba-rugi bentuk multiple step terletak dalam kelompok', '', 'Pendapatan usaha', 'Pendapatan di luar usaha ', 'Beban penjualan ', 'Beban administrasi dan umum', 'Beban di luar usaha', 3, 0),
(188, 8, '<p>Berikut disajikan buku kas kecil perusahaan tanggal 1-7 Juli 2014</p>\r\n<p>&nbsp;<img src="../media/source/AK%209.PNG" alt="AK 9" width="619" height="247" /></p>\r\n<p>Setelah dilakukan perhitungan fisik, jumlah kas kecil perusahaan yang tersisa adalah Rp480.000. jika menggunakan sistem dana tidak tetap, maka selisih tersebut akan dibukukan dengan jurnal ...</p>', '', '<p><img src="../media/source/AK%209_A.PNG" alt="AK 9_A" /></p>', '<p><img src="../media/source/AK%209_B.PNG" alt="AK 9_B" /></p>', '<p><img src="../media/source/AK%209_C.PNG" alt="AK 9_C" /></p>', '<p><img src="../media/source/AK%209_D.PNG" alt="AK 9_D" /></p>', '<p><img src="../media/source/AK%209_E.PNG" alt="AK 9_E" /></p>', 3, 0),
(189, 8, 'CV Adinda memiliki aktiva Rp87.500.000 dan utang dagang Rp22.500.000. Perusahaan memperoleh pendapatan sebesar Rp750.000. Modal perusahaan setelah terjadinya transaksi tersebut adalah', '', 'Rp87.500.000', 'Rp65.750.000', 'Rp65.000.000', 'Rp22.500.000', 'Rp750.000', 2, 0),
(190, 8, 'Akun-akun dibawah ini yang termasuk akun riil adalah', '', 'Kas, modal pemilik, utang dagang', 'Utang dagang, pendapatan, piutang dagang', 'Beban gaji, pendapatan, kas', 'Pendapatan, kas, piutang dagang', 'Pendapatan, utang dagang, modal', 1, 0),
(191, 8, '<p>Dalam Neraca Saldo tanggal 31 Desember 2014, akun perlengkapan menunjukkan saldo Rp21.000.000, sisa perlengkapan yang sesungguhnya seharga Rp5.000.000. Jurnal penyesuaian yang harus dibuat pada tanggal 31 Desember 2014 adalah</p>', '', '<p><img src="../media/source/AK%2012_A.PNG" alt="AK 12_A" /></p>', '<p><img src="../media/source/AK%2012_A.PNG" alt="AK 12_A" /></p>', '<p><img src="../media/source/AK%2012_C.PNG" alt="AK 12_C" /></p>', '<p><img src="../media/source/AK%2012_D.PNG" alt="AK 12_D" /></p>', '<p><img src="../media/source/AK%2012_E.PNG" alt="AK 12_E" /></p>', 2, 0),
(192, 8, 'Sistem pengelolaan kas kecil yang menetapkan plafond atau jumlah maksimum dana kas kecil secara berubah-ubah disebut dengan', '', 'Periodical System', 'Phisical System', 'Perpectual System', 'Imprest Fund Method', 'Fluctuating Fund Method', 5, 0),
(193, 8, 'Saldo kas bank menurut perusahaan pada tanggal 31 Desember 2014 sebesar Rp138.900.000 sedangkan menurut rekening koran Rp137.400.000. penyebab terjadinya perbedaan saldo kas adanya setoran dalam perjalanan Rp3.750.000 dan pembayaran piutang langsung transfer ke rekening bank sebesar Rp2.250.000 , Berdasarkan saldo tersebut, saldo kas yang benar adalah....', '', 'Rp138.900.000', 'Rp141.150.000', 'Rp142.650.000', 'Rp143.400.000', 'Rp144.900.000', 2, 0),
(194, 8, 'Cek dari debitor sebesar Rp12.000.000 yang ditolak oleh bank karena tidak cukup dananya di bank. Pencatatan dalam jurnal penyesuaiannya adalah', '', 'Piutang Dagang (D) Rp12.000.000 dan Kas (K) Rp 12.000.000', 'Kas (D) Rp12.000.000 dan Piutang Dagang (K) Rp12.000.000', 'Kas (D) Rp10.000.000, Beban Penagihan (D) Rp2.000.000 dan Piutang Dagang (K) Rp12.000.000', 'Utang dagang (D) Rp12.000.000 dan Kas (K) Rp12.000.000', 'Kas (D) Rp12.000.000 dan Utang Dagang (K) Rp12.000.000', 1, 0),
(195, 8, '<ol>\r\n<li>Berikut transaksi yang dilakukan oleh Toko ARIMBI</li>\r\n<li>Dijual barang dagangan kepada UD SADEWO seharga Rp7.500.000, syarat pembayaran 3/10, n/30</li>\r\n<li>Diterima kembali barang dagangan kepada UD SADEWO karena ada sebagian yang rusak senilai Rp300.000</li>\r\n<li>Dikirim faktur kepada PT ARJUNO untuk barang dagangan yang dipesan minggu lalu dengan harga faktur Rp5.000.000 dengan 2/10, n/30</li>\r\n<li>Dijual barang dagangan dengan tunai sebesar Rp2.500.000 dari PT RAHWANA</li>\r\n<li>Membeli barang dagangan dari PT. RAMA seharga Rp4.500.000 dengan syarat 2/10, n/30</li>\r\n<li>Dikirim kembali kepada PT RAMA barang seharga Rp500.000 karena salah spesifikasinya</li>\r\n</ol>\r\n<p>Berdasarkan data di atas, maka transaksi yang dicatat di Jurnal Memorial adalah nomor ...</p>', '', '<p>Nomor 1 dan 3</p>', '<p>Nomor 2 dan 4</p>', '<p>Nomor 2 dan 6</p>', '<p>Nomor 3 dan 5</p>', '<p>Nomor 5 dan 6</p>', 3, 0),
(196, 8, '<p>Sebagian transaksi yang terjadi pada PD SEKAR selama bulan Oktober 2014, sebagai berikut ...</p>\r\n<p>11 Oktober 2014 : Diterima faktur dari UD KAMBOJA untuk barang dagang yang dipesan</p>\r\n<p>&nbsp; seharga Rp8.000.000, syarat pembayaran 2/10, n/30</p>\r\n<p>14 Oktober 2014 : Dikirim kembali kepada UD KAMBOJA barang dagangan seharga</p>\r\n<p>&nbsp; Rp1.000.000, karena rusak</p>\r\n<p>23 Oktober 2014 : Dibayar kepada UD KAMBOJA atas faktur tanggal 11 Oktober 2014</p>\r\n<p>25 Oktober 2014 : Dikirim faktur kepada UD MELATI dengan nilai transaksi Rp7.000.000</p>\r\n<p>Berdasarkan transaksi tersebut, ayat jurnal yang dicatat dalam Jurnal Pembelian adalah ...</p>', '', '<p>Persediaan barang dagangan (D) Rp8.000.000 dan Utang Dagang (K) Rp7.000.000 dna Potongan Pembelian (K) Rp1.000.000</p>', '<p>Pembelian (D) Rp8.000.000 dan Utang Dagang (K) Rp8.000.000</p>', '<p>Utang Dagang (D) Rp8.000.000 dan Pembelian (K) Rp8.000.000</p>', '<p>Pembelian (D) Rp7.000.000 dan Utang Dagang (K) Rp7.000.000</p>', '<p>Pembelian (D) Rp8.000.000 dan Utang Dagang (K) Rp7.000.000 dan potongan pembelian (K) Rp1.000.000</p>', 2, 0),
(197, 8, '<p>Jika data pembelian menunjukan kecenderungan harga seperti pada tabel berikut ini, maka metode penilaian mana yang akan menghasilkan perhitungan harga pokok penjualan yang semakin tinggi ...</p>\r\n<p><img src="../media/source/AK%2018.PNG" alt="AK 18" /></p>', '', '<p>MPKP</p>', '<p>MTKP</p>', '<p>Rata-rata tertimbang</p>', '<p>rata-rata bergerak</p>', '<p>identifikasi khusus</p>', 2, 0),
(198, 8, 'Sebuah mesin yang dibeli pada akhir bulan Juni 2014 seharga Rp150.000. Mulai dioperasionalkan pada bulan Juli 2014. Mesin mempunyai umur ekonomis 10 tahun dengan taksiran harga residu Rp40.000.000. jika mesin disusut menggunakan metode saldo menurun, maka besarnya penyusutan tahun 2014 sebesar', '', 'Rp30.000.000', 'Rp22.000.000', 'Rp15.000.000', 'Rp11.000.000', 'Rp5.500.000', 4, 0),
(199, 8, '<p>Sebuah mesin dengan harga perolehan Rp90.000.000, akumulasi penyusutan Rp85.000.000 telah habis masa penggunaannya. Mesin tersebut disingkirkan dengan biaya penyingkiran Rp1.000.000. jurnal untuk mencatat transaksi tersebut adalah</p>', '', '<p><img src="../media/source/AK%2020_A.PNG" alt="AK 20_A" width="416" height="84" /></p>', '<p><img src="../media/source/AK%2020_B.PNG" alt="AK 20_B" width="417" height="85" /></p>', '<p><img src="../media/source/AK%2020_C.PNG" alt="AK 20_C" width="412" height="44" /></p>', '<p><img src="../media/source/AK%2020_D.PNG" alt="AK 20_D" width="438" height="63" /></p>', '<p><img src="../media/source/AK%2020_E.PNG" alt="AK 20_E" width="442" height="44" /></p>', 1, 0),
(200, 8, 'Salah satu utang jangka pendek, yaitu utang yang berupa janji tertulis yang dibuat oleh debitur untuk membayar sejumlah uang pada suatu jangka waktu tertentu yang disebut dengan', '', 'Utang garansi', 'Utang dagang', 'Wesel tagih', 'Wesel bayar', 'Utang deviden', 4, 0),
(201, 8, '<p>Dalam buku besar PT ALOHA pada tanggal 31 Desember 2014, antara lain terdapat akun dengan saldo sebagai berikut :</p>\r\n<p>Account Receivable ......................................Rp357.000.000</p>\r\n<p>Allowance of Doubtful Debt ........................Rp&nbsp; 11.200.000</p>\r\n<p>(Bersaldo Kredit)</p>\r\n<p>Taksiran kerugian piutang ditetapkan sebesar 4% dari saldo piutang pada 31 Desember 2014. Kerugian piutang PT ALOHA yang menjadi beban tahun 2014 adalah sebesar ...</p>', '', '<p>Rp. 2.700.000</p>', '<p>Rp. 3.080.000</p>', '<p>Rp. 11.648.000</p>', '<p>Rp. 14.280.000</p>', '<p>Rp. 25.480.000</p>', 2, 0),
(202, 8, 'Tn. Budi menerima atau memperoleh penghasilan netto tahun pajak 2014 sebesar Rp90.000.000. Tn. Budi berstatus kawin dan mempunyai 3 orang anak, sedangkan istrinya tidak mempunyai penghasilan sendiri. Selain itu, Tn.Budi juga masih harus merawat ibunya. Berapakah penghasilan tidak kena pajak Tn. Budi', '', 'Rp57.600.000', 'Rp32.400.000', 'Rp2.880.000', 'Rp24.300.000', 'Rp6.075.000', 2, 0),
(203, 8, 'Yang bukan merupakan subjek pajak adalah', '', 'Orang pribadi', 'Warisan yang belum dibagi', 'Badan usaha', 'Pejabat diplomatic', 'Bentuk usaha tetap', 4, 0),
(204, 8, 'Data pembukuan PT CINDE KEMBANG pada bulan data buku jurnal Pembelian selama bulan Desember 2014 Rp200.000.000. Data jurnal Pengeluaran Kas untuk pembayaran utang sebesar Rp180.000.000 dan jurnal memorial untuk retur pembelian Rp10.000.000. Jika saldo utang per 31 Desember 2014 sebesar Rp130.000.000 maka besarnya saldo utang pada tanggal 1 Desember 2014 adalah', '', 'Rp120.000.000', 'Rp130.000.000', 'Rp140.000.000', 'Rp180.000.000', 'Rp190.000.000', 1, 0),
(205, 8, 'Fungsi adanya kartu utang adalah', '', 'Melihat riwayat pembayaran customer', 'Sebagai referensi untuk pemberian utang ', 'Menentukan limit besarnya utang ', 'Sebagai dasar mengajukan penghapusan utang ', 'Mengingatkan batas termin diskon dan per pembayaran ', 5, 0),
(206, 8, '<p>Pada tanggal 15 Januari 2014 Toko Mandiri membeli 10 karung gula dengan harga per karung Rp1.100.000 secara kredit. Toko Mandiri selalu mencatat mutasi barang dagangan dalam kartu piutang, syarat penjualan 2/10, n/30. Pembayaran tanggal 25 Januari 2014. Jurnal yang dibuat oleh Toko Mandiri pada tanggal 25 Januari 2014 adalah</p>', '', '<p><img src="../media/source/AK%2027_A.PNG" alt="AK 27_A" /></p>', '<p><img src="../media/source/AK%2027_B.PNG" alt="AK 27_B" /></p>', '<p><img src="../media/source/AK%2027_C.PNG" alt="AK 27_C" /></p>', '<p><img src="../media/source/AK%2027_D.PNG" alt="AK 27_D" /></p>', '<p><img src="../media/source/AK%2027_E.PNG" alt="AK 27_E" /></p>', 4, 0),
(207, 8, 'Biaya Overhead Pabrik untuk periode bulan Mei 2014 ditaksir sebesar Rp120.000.000. Sementara itu, Biaya Tenaga Kerja Langsung Periode itu ditaksir Rp160.000.000. Dalam pelaksanaannya biaya tenaga kerja langsung yang sesungguhnya terjadi pada periode yang bersangkutan, yaitu berjumlah Rp150.000.000. Dari data tersebut BOP yang dibebankan kepada produk yang dihasilkan adalah sebesar', '', 'Rp112.500.000', 'Rp120.000.000', 'Rp128.000.000', 'Rp150.000.000', 'Rp187.500.000', 1, 0),
(208, 8, '<p>Perhatikan data berikut ini :</p>\r\n<p><img src="../media/source/AK%2029.PNG" alt="AK 29" /><br />Dari data diatas, manakah yang termasuk biaya produksi ...</p>', '', '<p>NO. 1</p>', '<p>NO. 2</p>', '<p>NO. 3</p>', '<p>NO. 4</p>', '<p>NO. 5</p>', 3, 0),
(209, 8, '<p>Suatu produk pesanan diselesaikan dengan biaya produksi sebagai berikut :</p>\r\n<ul>\r\n<li>Biaya bahan langsung &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Rp &nbsp;59.000.000</li>\r\n<li>Biaya tenaga kerja langsung 10.000 jam dengan tarif Rp &nbsp;3.000.000/jam</li>\r\n<li>Biaya overhead pabrik sesungguhnya &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Rp&nbsp; 850.000</li>\r\n<li>BOP diberikan berdasarkan pemakaian jamKerja langsung dengan tarif &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Rp &nbsp; 1.250/jam</li>\r\n</ul>\r\n<ul>\r\n<li>Produk yang bersangkutan dijual tunai seharga &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Rp. 165.000.000</li>\r\n</ul>\r\n<p>Berapakah besar BOP yang dibebankan ...</p>', '', '<p>Rp12.500.000</p>', '<p>Rp30.500.000</p>', '<p>Rp75.500.000</p>', '<p>Rp87.350.000</p>', '<p>Rp88.000.000</p>', 1, 0),
(210, 8, 'Orang yang tinggal di Indonesia tidak lebih dari 183 hari dalam jangka waktu 1 tahun yang menerima penghasilan dari Indonesia atau menjalankan usaha di Indonesia disebut', '', 'Subjek pajak', 'Subjek pajak orang pribadi', 'Subjek pajak orang pribadi luar negeri', 'Subjek pajak badan ', 'Subjek pajak badan luar negeri', 3, 0),
(211, 8, 'Pembayaran angsuran pajak setiap bulan dalam tahun pajak berjalan yang dilakukan oleh wajib pajak sendiri adalah', '', 'PPh pasal 21', 'PPh pasal 22', 'PPh pasal 23', 'PPh pasal 24', 'PPh pasal 25', 5, 0),
(212, 8, 'Proses duplikasi file komputer pada berbagai macam media penyimpanan disebut', '', 'Save as', 'Send to', 'Back up', 'Close All', 'Print Preview', 3, 0),
(213, 8, 'Salah satu langkah dibawah ini bukan merupakan tahapan menyusun bagan akun dalam aplikasi MYOB versi 18 adalah ...', '', 'Memilih menu file', 'Memilih menu import data', 'Memilih menu account', 'Memilih menu account information', 'Memilih menu balance', 3, 0),
(214, 8, 'Salah satu langkah di bawah ini bukan merupakan aplikasi akuntansi MYOB versi 18 adalah ...', '', 'Memilih menu setup', 'Memilih menu balance', 'Memilih menu account opening balances', 'Memilih menu link account', 'Isikan data/angka', 2, 0),
(215, 8, 'Saldo buku bank pada akhir bulan sebesar Rp45.000.000 sedangkan saldo rekening koran sebesar Rp60.000.000. setelah diteliti Oustanding cek berjumlah Rp5.000.000 dan setoran langsung ke bank sebesar Rp10.000.000, maka saldo yang benar adalah ...', '', 'Rp5.000.000', 'Rp10.000.000', 'Rp45.000.000', 'Rp55.000.000', 'Rp60.000.000', 4, 0),
(216, 8, 'Jika selama bulan Nopember 2014 terjadi transaksi : penjualan kredit Rp140.000.000, penerimaan pelunasan piutang Rp75.000.000, retur penjualan Rp5.000.000, piutang dihapus Rp10.000.000, dan penjualan tunai Rp200.000.000 dan saldo akhir piutang Rp110.000.000. maka besarnya saldo piutang per 1 Nopember 2014 sebesar......', '', 'Rp85.000.000', 'Rp75.000.000', 'Rp70.000.000', 'Rp65.000.000', 'Rp60.000.000', 5, 0),
(217, 8, 'Pada tanggal 1 Maret 2014, sebuah mesin A ditukar dengan mesin sejenis. Mesin A dibeli tanggal 1 Januari 2011 dengan harga perolehan Rp150.000.000. Taksiran umur ekonomis 5 tahun tanpa nilai residu. Harga perolehan mesin baru adalah Rp175.000.000. Metode penyusutan yang digunakan garis lurus. Apabila perusahaan membayar dengan uang tunai Rp100.000.000 maka pencatatan di bawah ini akan terlihat dalam jurnal, kecuali ... ', '', 'Akumulasi penyusutan mesin di debet sebesar Rp97.500.000', 'Mesin lama dicatat dikredit sebesar Rp150.000.000', 'Mesin baru dicatat di debet sebesar Rp175.000.000', 'Kas dicatat di kredit sebesar Rp100.000.000', 'Selisih pertukaran di debet Rp45.000.000', 5, 0),
(218, 8, 'Pada tanggal 1 Maret 2014 PT. Merpati menutup pinjaman hipotik sebesar Rp1.200.000.000 dengan jaminan gedung kantor. Bunga hipotik 15% dibayar bersama angsuran tiap tanggal 1 Maret dan 1 September. Jangka waktu pinjaman 10 tahun. Untuk provisi, biaya notaris dan lain-lain dibebankan kepada PT Merpati sebesar Rp50.000.000. Angsuran pertama jatuh pada 1 September 2014.Berdasarkan data tersebut, jumlah yang harus dibayar PT. Merpati pada tanggal 1 September adalah....', '', 'Rp90.000.000', 'Rp60.000.000', 'Rp186.200.000', 'Rp105.000.000', 'Rp29.000.000', 4, 0),
(219, 8, 'Langkah mengentri transaksi penjualan kredit adalah...', '', 'Sales -  enter sales', 'Sales â€“ receive payment', 'Purchase â€“ Enter purchase', 'Purchase â€“ Pay Bills', 'Banking â€“ Record Journal Entry', 1, 0),
(220, 4, 'Pada Printer dot matrix, hal yang harus diperhatikan ketika kualitas cetakkan buruk, hasil tampak redup akibat jarum tidak bekerja adalah', '', 'Periksa pita', 'Periksa tahanan jarum', 'Periksa konektor kabel data', 'Periksa jarak head printer', 'Periksa ketersediaan tinta', 1, 0),
(221, 4, 'Berikut adalah salah satu fungsi mouse, kecuali', '', 'Klik kiri', 'Menghapus data', 'Klik kanan', 'Menseleksi objek', 'Menggeser objek', 2, 0),
(222, 4, 'Modem yang langsung mendapatkan aliran listrik dari computer adalah', '', 'Modem internal', 'PC Card', 'FTP', 'Modem eksternal', 'Cable Modem', 1, 0),
(223, 4, 'Perbedaan mendasar pada permasalahan piranti lunak dan piranti keras adalah', '', 'Masalah piranti lunak membuat komputer rusak, masalah piranti keras tidak', 'Masalah piranti lunak terjadi setelah masuk dalam system operasi dan sempat terjadi booting, masalah piranti keras tidak sempat booting atau muncul peringatan dari komputer', 'Masalah piranti lunak tidak sempat melakukan booting, masalah piranti keras sempat melakukan booting dan terjadi masalah pada sistem operasi dan muncul peringatan', 'Masalah piranti lunak tidak membuat komputer rusak, masalah piranti keras berarti komputer rusak', 'Masalah piranti lunak dan masalah piranti keras sama-sama membuat komputer rusak', 2, 0),
(224, 4, 'Salah satu cara penanganan masalah pada piranti lunak sebelum dilakukan instalasi ulang piranti lunak tersebut adalah', '', 'Memformat harddisk', 'Memeriksa CPU', 'Melakukan repair piranti lunak', 'Menginstall antivirus', 'Memeriksa monitor', 3, 0),
(225, 4, 'Apakah yang dimaksud dengan FAT', '', 'file allocation tabe', 'file allocation table', 'file allocation template', 'format allocation tabe', 'Scanner,printer,monitor', 2, 0),
(226, 4, 'Obeng kembang dan obeng min digunakan para teknisi komputer untuk  ', '', 'mendinginkan cashing komputer ', 'menambah kenyamanan user ', 'membuka dan menutup cashing komputer ', 'menjadikan komputer enak dilihat ', 'memudahkan user dalam membuat dokumen ', 3, 0),
(227, 4, 'Dibawah ini yang termasuk peralatan output pada komputer adalah', '', 'LCD ,mouse,scanner', 'Monitor,printer,LCD', 'Printer,mouse,kamera', 'Scanner,printer,monitor', 'Monitor,keyboard,printer', 2, 0),
(228, 4, 'Dibawah ini perintah yang dapat digunakan pada perintah Run di Windows, kecuali:', '', 'regedit ', 'gpedit.msc ', 'services.msc', 'win32', 'diskmgmt.msc', 2, 0),
(229, 4, 'Yang dimaksud mouse wireless adalah.', '', 'Mouse tanpa kabel', 'Mouse yang berkonektor hijau', 'Mouse yang tidak beroda dan memakai lampu pada bagian bawah', 'Mouse biasa', 'Mouse yang konektornya dapat dihubungkan pada konektor USB', 1, 0),
(230, 4, 'Pesan kesalahan yang muncul dapat berupa ', '', 'suara beep dan teks. ', 'suara beep dan hang', 'teks dan restart', 'shutdown dan suara beep. ', 'shutdown dan restart. ', 1, 0),
(231, 4, 'Panas  yang  berlebihan  pada  cashing  komputer dapat dikurangi dengan ', '', 'mengurangi beban komputer ', 'membawa komputer untuk dideteksi ', 'menambah kipas dalam cashing ', 'menginstall software anti virus ', 'memindahkan file ke cd/dvd', 3, 0),
(232, 4, 'Apabila port pada mouse kurang menancap, maka akan menimbulkan akibatâ€™', '', 'mouse dikenali namun tidak bisa berfungsi', 'mouse tidak dapat dikenali', 'mouse berjalan tersendat-sendat', 'kursor pada mouse melompat-lompat', 'mouse tidak dapat digerakkan', 2, 0),
(233, 4, 'Cara membuka Command Prompt melalui menu RUN adalah dengan mengetikkan', '', 'CMD', 'PRP', 'COM', 'PRO', 'CP', 1, 0),
(234, 4, 'Berikut perintah untuk pindah ke Local Disk D yang benar adalah', '', 'D/', 'D:', 'D&gt;', 'S.', 'D\\', 2, 0),
(235, 4, 'Perintah DOS untuk membuat folder binus yang benar adalah', '', 'Md binus', 'Md &quot;binus&quot;', 'Md-binus', 'Md:binus', 'Md=binus', 1, 0),
(236, 4, 'Perintah DOS untuk meilihat isi suatu folder adalah', '', ' DIR', ' CLS', ' DEL', ' REN', ' MD', 1, 0),
(237, 4, 'Perhatikan perintah DOS berikut! Copy tkj/daftar_siswa.xls mm/daftar_siswa.xls. Maksud perintah di atas adalah', '', ' Mengkopi file daftar_siswa.xls dari folder tkj ke folder mm', ' Mengkopi file daftar_siswa.xls dari folder mm ke folder tkj', ' Membuat file daftar_siswa.xls pada folder tkj dan mm', ' Mengkopi file daftar_siswa.xls yang ada pada folder tkj dan mm', ' Mengkopi file daftar_siswa.xls ke folder tkj dan mm', 1, 0),
(238, 4, 'Perintah DOS untuk menghapus folder &quot;TKJ&quot; adalah', '', ' RD TKJ', ' MD TKJ', ' DEL TKJ', ' CD TKJ', ' REN TKJ', 1, 0),
(239, 4, 'Perintah REN pada DOS digunakan untuk', '', ' Menghapus file', ' Menghapus folder', ' Mengganti nama folder', ' Membuat folder ', ' Membuka folder', 3, 0),
(240, 4, 'Dalam paket modem yang dijual, biasanya terdapat program kecil untuk menginstal modem atau disebut juga ', '', 'Device driver', 'Modem software', 'Installer', 'Unit installer', 'Package modem', 1, 0),
(241, 4, 'Setelah instalasi modem selesai dilakukan, sistem akan melakukan ', '', 'Restart computer', 'Koneksi ke internet', 'Ignore ', 'Hibernasi', 'Shutdown computer', 2, 0),
(242, 4, 'Metode instalasi software dimana program Setup akan langsung jalan begitu CD program dimasukkan ke dalam CD ROM adalah ', '', 'Menu Run', 'Add Program', 'Instalation Wizard', 'Auto run', 'Remove Program', 4, 0),
(243, 4, 'Software yang berfungsi sebagai jembatan komunikasi antara computer dengan device tertentu sehingga kerja system bisa maksimal adalah .â€¦', '', 'Office', 'Game', 'Sistem operasi', 'Driver', 'Progamming', 4, 0),
(244, 4, 'Software komputer penyusup kemudian bisa mengakses informasi yang ada di komputer user setelah program tersebut diinstal. Metode serangan diatas dikenal dengan nama ', '', 'Worm', 'Virus', 'Trojan horse', 'Denial of service', 'Brute force', 1, 0),
(245, 4, 'LAN Card mempunyai alamat yang spesifik sehingga tidak akan sama di seluruh dunia, alamat tersebut adalahâ€¦ ', '', 'MAC Address ', 'IP Address ', 'Port Address ', 'Media Address ', 'Access Address', 1, 0),
(246, 4, 'Untuk menghubungkan dua buah jaringan yang berbeda diperlukan alatâ€¦ ', '', 'Bridge', 'Repeater', 'Gateway', 'Amplifier', 'Router', 5, 0),
(247, 4, 'Perintah berbasis teks yang berfungsi untuk memantau koneksi jaringan pada suatu   komputer, baik itu jaringan lokal (LAN) maupun jaringan internet adalah...  \\', '', 'ping ', 'netstat', 'tracert', 'looklan', 'host', 1, 0),
(248, 4, 'Pemasangan wireless satu ke banyak disebut â€¦ ', '', 'Point to multipoint ', 'Point to point ', 'LOS', 'Direct', 'dB', 1, 0),
(249, 4, 'Dalam keamanan user yang tidak berhak dapat mengakses ke dalam sebuah file disebutâ€¦ ', '', 'Interupsi ', 'Interception', 'Modifikasi ', 'Fabrication ', 'DoS', 2, 0),
(250, 4, 'Sebuah jaringan computer dengan jumlah komputer 43, Maka subnet mask yang digunakan adalah â€¦..', '', '255.255.255.0', '255.255.255.128', '255.255.255.192', '255.255.255.224', '255.255.255.240', 2, 0),
(251, 4, 'Â  Dalam pengalamatan IP Address, isian DNS berfungsi untuk â€¦..', '', 'Menerjemahkan alamat IP ke alamat domain', 'Koneksi ke jaringan', 'Menghubungkan dua workgroup', 'Koneksi dengan jaringan Client Server', 'Koneksi dengan /Hostpot', 1, 0),
(252, 4, 'Panjang Net id pada kelas A', '', '8 bit', '16 bit', '24 bit', '64 bit', '32 bit', 1, 0),
(253, 4, '<p>Panjang Host Id pada kelas A adalah</p>', '', '<p>8 bit</p>', '<p>16 bit</p>', '<p>24 bit</p>', '<p>64 bit</p>', '<p>32 bit</p>', 2, 0),
(254, 4, '<p>Kepanjangan dari DHCP adalah</p>', '', '<p>Dynamic Hosting Configuration Protocol.</p>', '<p>Dinamis Host Configurasi Protocol.</p>', '<p>Dynamic Hosting Confidenci Protocol</p>', '<p>Dinamic Host Confidenci Protocol.</p>', '<p>Dynamic Host Configuration Protocol.</p>', 5, 0),
(255, 4, 'Salah satu fungsi dari WAN?', '', 'Hanya mencakup area yang kecil', 'koneksi antar gedung', 'jaringan antar ruangan', 'kumpulan LAN yang ada diberbagai lokasi', 'kumpulan internet', 4, 0),
(256, 4, 'Netmask dari 192.168.0.1/27 adalah?', '', '11111111.11111111.11111111.11100000', '11111111.11111111.11111111.00000000', '11111111.11111111.11111111.11110000', '11111111.11111111.11111111.11111100', '11111111.11111111.11111111.10000000', 1, 0),
(257, 4, 'IPv 4 Terdiri dari', '', 'Net ID &amp; Host ID', 'Kode Vendor &amp; Kode Hardware', 'Broadcast &amp; Netmask', 'FLSM &amp; VLSM', 'First Host &amp; Last Host', 1, 0),
(258, 4, 'Penulisan IP Address versi 4 di bawah ini yang benar adalah', '', '257.123.123.4', '129.129.130.1', '192.168.300.1', '1255.254.255.255', '256.240.123.99', 2, 0),
(259, 4, 'Nama identitas dari access point disebut', '', 'WEP', 'SSD', 'WAP', 'SSIA', 'SSID', 5, 0),
(260, 7, 'Memberi perintah , nasehat, saran termasuk komunikasi menurut', '', 'Lawan ', 'Maksud', 'Eksternal', 'Jumlah', 'Internal', 2, 0),
(261, 7, 'Proses komunikasi saat komunikator membuat sandi untuk menyatakan maksud disebut', '', 'Decode', 'Feed back', 'Encode', 'Barrier', 'Message', 3, 0),
(262, 7, 'Salah satu obat yang masuk dalam contoh OWA no 1 adalah', '', 'lisertrenol', 'bacitracin', 'flumetasom', 'ranitidim', 'asam fusidat', 1, 0),
(263, 7, 'Cara pemberian obat berikut ini yang melalui efek sistemik berikut ini adalah', '', 'Oral, Subkutan, Bucal', 'Intra Vena, intra Vaginal, Intra Cutan', 'Cream, Pasta, Syrup', 'Sublingual, Rektal, intra cardial', 'Transdermal, implantasi, intra arteri', 4, 0),
(264, 7, 'Obat yang digunakan pada waktu tindakan medis untuk menghilangkan rasa sakit tanpa disertai kehilangan kesadaran adalah', '', 'Anestesi', 'Obat Bius', 'Anestesi Umum', 'Anestesi Lokal', 'Analgetik', 4, 0),
(265, 7, 'keadaan dimana sirkulasi darah jantung dan cardiac out put menurun, misalnya akibat infark atau katup katup jantung yang tidak bekerja sempurna atu karena proses penuaan', '', 'infark jantung', 'angina pectoris', 'aritmia', 'dekompensasi jantung', 'shock', 4, 0),
(266, 7, 'glikosida glikosida jantung, yang berkhasiat mempertinggi kontraktilitas jantung hingga cardiac output( volume menitnya )bertambah ,sedangkan denyutnya dikurangi( efek chronotrop negatif) yaitu golongan ', '', 'kardiotonika', 'myokardia', 'glikosid', 'antrakinon', 'aritmia', 1, 0),
(267, 7, 'kuitansi merupakan bukti pembayaran', '', 'kredit', 'tunai', 'piutang', 'jatuh tempo', 'hutang', 2, 0),
(268, 7, 'surat janji tertulis yang menyatakn kesanggupan pembayaran dalam jumlah tertentu dan waktu tertentu disebut', '', 'piutang usaha', 'piutang wesel', 'piutang kerja', 'piutang modal', 'piutang dagang', 2, 0),
(269, 7, 'salah satu komponen tambahan dalam emulsi adalah', '', 'zat pembasah', 'zat pembawa', 'emulgator', 'lubrikan', 'corrigensia', 5, 0),
(270, 7, 'peristiwa ketidak stabilan emulsi yang masih dapat diperbaiki adalah', '', 'creaming', 'cremores', 'cracking', 'inversi', 'breaking', 1, 0),
(271, 7, 'dicampur gram Na Lauryl sulfas(HLB=40) dengan 2,8 gram Span 80(HLB=5), maka HLB campuran adalah', '', '12,65', '15,50', '15,85', '16,80', '17,60', 2, 0),
(272, 7, 'mengapa basis suppositoria gelatin perlu ditambahkan pengawet', '', 'karena media pertumbuhan bakteri', 'karena mudah rusak', 'mudah meleleh', 'mudah melekat', 'mudah hancur', 1, 0),
(273, 7, 'jenis jenis kapulaga dibedakan menjadi?', '', '2', '3', '4', '5', '6', 2, 0),
(274, 7, 'amomi fructus merupakan nama lain dari?', '', 'kapulaga', 'kapur sirih', 'kapur merah', 'kapuringan', 'karbol', 1, 0),
(275, 7, 'cara pengerjaan dan peralatan yang digunakn sderhana dan mudah diusahakan merupakan keuntungan dari', '', 'dstilasi', 'maserasi', 'infundasi', 'refluk', 'soxletasi', 2, 0),
(276, 7, 'proses ekstraksi yang pengerjaannya lama dan hasilnya kurang sempurna,merupakan kekurangan dari', '', 'maserasi', 'destilasi', 'soxltasi', 'refluk', 'infundasi', 1, 0),
(277, 7, 'dicampur gram Na Lauryl sulfas(HLB=40) dengan 2,8 gram Span 80(HLB=5), maka HLB campuran adalah', '', '12,65', '15,50', '15,85', '16,80', '17,60', 2, 0),
(278, 7, 'harga HLB berikut yang berfungsi sebagai wetting agent ', '', '1 sampai 3', '4 sampai 6', '7 sampai 9', '8 sampai 18', '13 sampai 16', 3, 0),
(279, 7, 'fungsi akutansi yaitu mengawasi, mengelola dan memecahkan masalah masalah', '', 'keuangan', 'perhutangan', 'perkreditan', 'penjualan', 'pemasaran', 1, 0),
(280, 7, 'hak yang diberikan pemerintah kepada perusahaan untuk menggunakan cap nama, gambar atau lambang dagang disbut', '', 'hak paten', 'hak dagang', 'merk dagang', 'hak cipta', 'hak usaha', 3, 0),
(281, 7, 'gangguan pembuluh yang disebabkan karena menebal dan mengerasnya dinding pembuluh nadi(arteri)besar dan sedang disebut', '', 'atherosclerosis', 'hipertensi', 'angina pectoris', 'strok', 'dekompensasi', 1, 0),
(282, 7, 'Zat ini mulai bekerja  setelah2 - 4 jam dan bertahan sampai 3 hari. Umumnya diberikan per oral', '', 'digitalis folium', 'digoksin', 'digitoksin', 'quabain', 'proscilaradin', 3, 0),
(283, 7, ' Cortidex adalah nama lain dari dexametasone yang mempunyai DL.', '', '-  / 0,5 mg', '0,5 / 1mg', '- / 0,5 - 1 mg', '.- / 0,5 - 2 mg', '.- / 1 - 2 mg', 4, 0),
(284, 7, 'Dalam perhitungan dosis untuk resep pulveres mana yang harus diutamakan dalam perhitungannya ..', '', 'Penimbangan Bahan', 'Dosis Maksimal', 'Dosis Lazim', 'Dosis Pemakaian', 'Dosis Terapi', 2, 0),
(285, 7, 'di bawah ini yang bukan termasuk dalam cabang ilmu farmakologi diantaranya adalah', '', 'Farmakoterapi', 'Toksikologi', 'Biofarmasi', ' Diagnostikologi', 'Farmakokinetik', 4, 0),
(286, 7, ' Ilmu yang mempelajari tentang nasib obat didalam tubuh manusia adalah', '', 'Farmakologi', 'Farmakognosi', 'Farmakokinetik', 'Biofarmasi', 'Toksikologi', 3, 0),
(287, 7, 'golongan obat yang pengaturannya melalui undang undang adalah', '', 'obat bebas dan bebas terbatas', 'obat bebas dan narkotika', 'obat bebas dan psikotropika', 'obat keras dan OWA', 'Obat narkotika dan psikotropika', 5, 0),
(288, 7, 'obat keras termasuk obat dalam daftar', '', 'OWA', 'W', 'K', 'G', 'OKT', 4, 0),
(289, 7, 'buku standar untuk obat tradisional adalah', '', 'farmakope indonesia', 'materia medika indonesia', 'formularium indonesia', 'formularium nasional', 'FORNAS', 2, 0),
(290, 7, 'Pedagang besar farmasi hanya dapat melaksanakan penyaluran obat keras kepada, KECUALI â€¦', '', 'Apotek ', 'Masyarakat', 'Institusi yang di izinkan oleh MENKES', 'Toko Obat berizin', 'PBF', 2, 0),
(291, 7, 'Meyani resep dokter, menjual obat secara eceran, merupakan salah satu larangan dari â€¦', '', 'Pedagang Besar Farmasi', 'Apotek ', 'Toko Obat berizin', 'Industri Farmasi', 'Pedagang Eceran Obat', 1, 0),
(292, 7, 'Dibawah ini adalah obat yang hanya mempunyai DL saja yaitu.', '', 'CTM', 'Ambroxol HCl', 'Teofilin', 'Codein HCl', 'Gliseril Guaikolat', 5, 0),
(293, 7, 'Apabila bahan obat &lt; 50 mg ( tidak dapat ditimbang), maka harus dilakukan ', '', 'Penggantian sediaan', 'Pengenceran', 'Penambahan bahan', 'Diganti tablet', 'Tidak perlu ditimbang', 2, 0),
(294, 7, 'Pada saat kita mau membuat sediaan serbuk, maka hendaknya bahan obat yang kasar hendaknya  ', '', 'Dipisahkan', 'Dihaluskan', 'Dilarutkan', 'Dicairkan', 'Dipecahkan', 2, 0),
(295, 7, 'kapsul yang digunakan untuk menampung serbuk dengan bobot 500 mg  adalah ', '', '1', '2', '3', 'O', 'OO', 4, 0),
(296, 7, 'Menurut Farmakope Indonesia Edisi III, dosis maximal dewasa untuk CTM adalah ', '', 'Sekali 2 mg - 4 mg dan sehari 16 mg', 'Sehari 40 mg', 'Sehari 60 mg', 'Sekali 40 mg dan sehari 120 mg', 'sekali 1 mg dan Sehari 3 mg ', 2, 0),
(297, 7, 'Elaeosacchara pada umumnya campuran antara?', '', '4 bagian saccharum album dan 3 bagian minyak atsiri', '1 bagian saccharum album dan 2 bagian minyak atsiri', '3 bagian saccharum album dan 1 bagian minyak atsiri', '2 bagian saccharum album dan 2 bagian minyak atsiri', '2 bagian saccharum album dan 1 bagian minyak atsiri', 5, 0),
(298, 7, 'Pada resep terdapat tulisan &quot; Mane et Vesp &quot;. Tulisan tersebut dapat di artikan ', '', 'Pagi dan malam hari', 'Siang dan sore hari', 'Pagi dan siang hari', 'Tiap 2 sampai 4 jam sekali', 'Malam dan siang hari', 1, 0),
(299, 7, 'Pada resep terdapat tulisan &quot; S. Prn . Aggrediante Febre &quot;. Tulisan tersebut dapat di artikan ', '', 'Tandai jika perlu pada saat makan', 'Tandai jika perlu pada saat demam', 'Tandai jika perlu pada saat sakit gigi', 'Tandai jika perlu sebelum makan', 'Tandai jika perlu sesudah makan', 2, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ujian`
--

CREATE TABLE IF NOT EXISTS `ujian` (
`id_ujian` int(5) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` int(5) NOT NULL,
  `jml_soal` int(3) NOT NULL,
  `id_user` int(5) NOT NULL,
  `acak_soal` enum('Y','N') NOT NULL,
  `acak_jawaban` enum('Y','N') NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data untuk tabel `ujian`
--

INSERT INTO `ujian` (`id_ujian`, `judul`, `nama_mapel`, `tanggal`, `waktu`, `jml_soal`, `id_user`, `acak_soal`, `acak_jawaban`) VALUES
(1, 'Bahasa Indonesia', 'Bahasa Indonesia', '2017-02-16', 120, 50, 3, 'Y', 'Y'),
(2, 'Matematika', 'Matematika', '2017-02-10', 120, 40, 3, 'Y', 'Y'),
(3, 'Bahasa Inggris', 'Bahasa Inggris', '2017-02-10', 120, 40, 3, 'Y', 'Y'),
(4, 'Teori Kejuruan TKJ', 'Teori Kejuruan', '2017-01-17', 120, 40, 3, 'Y', 'N'),
(5, 'Teori Kejuruan TSM', 'Teori Kejuruan TSM', '2017-02-14', 120, 40, 3, 'Y', 'Y'),
(6, 'Teori Kejuruan MM', 'Teori Kejuruan MM', '2017-02-15', 120, 40, 3, 'Y', 'Y'),
(7, 'Teori Kejuruan Farmasi', 'Teori Kejuruan Farmasi', '2017-02-15', 120, 40, 3, 'Y', 'Y'),
(8, 'Teori Kejuruan Akuntansi', 'Teori Kejuruan Akuntansi', '2017-02-15', 120, 40, 3, 'Y', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id_user` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `level`) VALUES
(5, 'Daffa Shidqi', 'daffa', '135a4e22cda0e0a68499e6d6e2a861aa', 'operator'),
(3, 'Rohi Abdulloh', 'rohi', '34b24b2b55b7bb5666c047d2e0aa7c7b', 'guru'),
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
 ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
 ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
 ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
 ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `ujian`
--
ALTER TABLE `ujian`
 ADD PRIMARY KEY (`id_ujian`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
MODIFY `id_kelas` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
MODIFY `id_nilai` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
MODIFY `id_soal` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=300;
--
-- AUTO_INCREMENT for table `ujian`
--
ALTER TABLE `ujian`
MODIFY `id_ujian` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
