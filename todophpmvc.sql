-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2021 at 11:33 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todophpmvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_name`) VALUES
(1, 'Get Milk'),
(2, 'Buy Application');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `ID` int(3) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `nim` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`ID`, `nama`, `nim`, `email`, `jurusan`) VALUES
(1, 'Adam Johnson', '202041500001', 'adamJ@unindra.ac.id', 'Teknik Industri'),
(2, 'Ryouzaki Mishima', '201743500461', 'ryozzz@unindra.ac.id', 'Informatika'),
(3, 'Cindy Keffner', '20194231076', 'Cindy91@unindra.ac.id', 'Desain Komunikasi Visual'),
(4, 'Malik Abdullah', '201642201821', 'Malik88@unindra.ac.id', 'Sastra Inggris'),
(5, 'Fajar Bustomi', '201643500347', 'fajarB@unindra.ac.id', 'Informatika'),
(8, 'Alexander Kaplan', '21212009231', 'email@dummy.com', 'Sastra Inggris');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `content` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `article_ts` bigint(20) NOT NULL DEFAULT 0 COMMENT 'published timestamp of article',
  `published_date` date DEFAULT NULL,
  `inserted` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `url`, `content`, `summary`, `article_ts`, `published_date`, `inserted`, `updated`) VALUES
(6, 'DLH DKI targetkan 550 tempat uji emisi hingga akhir 2020', 'https://www.antaranews.com/berita/1826992/dlh-dki-targetkan-550-tempat-uji-emisi-hingga-akhir-2020', 'Jakarta (ANTARA) - Dinas Lingkungan Hidup DKI Jakarta menargetkan ada sebanyak 550 tempat uji emisi di Jakarta hingga akhir 2020 ini, baik berupa bengkel maupun kios.Kepala Dinas Lingkungan Hidup DKI Jakarta Andono Warih mengatakan saat ini telah terdata sebanyak 268 tempat uji emisi di Jakarta.Namun, jumlah tersebut belum ideal untuk memenuhi layanan uji emisi, pasalnya jumlah kendaraan roda empat di Jakarta sebanyak Rp4,1 juta.\"Target kita sesuai dengan jumlah kendaraan bermotor yang ada. Untuk mobil itu kita punya 4,1 juta sehingga kita perlu 550 bengkel uji emisi. Kemudian, dengan jumlah sepeda motor 14 jutaan, kita perlu sekitar 1.400 tempat uji emisi. Itu target ideal,\" kata Andono dalam keterangannya di Jakarta, Sabtu.Andono juga menjelaskan pihaknya terus melakukan akselerasi agar bisa menyediakan tempat uji emisi yang memadai secara jumlah dan sebaran untuk masyarakat.Salah satunya yakni, memberikan pelatihan dan pembinaan dalam rangka sertifikasi kepada sebanyak 300 teknisi bengkel penyelenggara uji Eemisi (BPUE) selama Oktober 2020 lalu.Ratusan teknisi dari 87 bengkel resmi agen tunggal pemegang merek (ATPM) dan bengkel lainnya.\"Pelatihan bertujuan untuk menambah jumlah teknisi yang mampu melakukan uji emisi. Mereka nanti bakal bertugas di bengkel, kios, maupun kendaraan layanan uji emisi,\" ujar Andono.Dia menambahkan selain sertifikat para teknisi mendapat akun e-uji emisi setelah selesai pelatihan. Dan secara otomatis bengkel tempat mereka bekerja terdaftar dan menerapkan dalam sistem e-uji emisi.\"Sebanyak 242 bengkel sudah terdaftar di sistem, 26 lainnya sedang dibuat akunnya,\" tutur Andono.', 'Jakarta (ANTARA) - Dinas Lingkungan Hidup DKI Jakarta menargetkan ada sebanyak 550 tempat uji emisi di Jakarta hingga akhir 2020 ini, baik berupa bengkel maupun kios', 1604785260, '2020-11-07', '2020-11-07 23:58:01', '2020-11-07 23:58:01'),
(7, 'Capaian pengurangan emisi GRK DKI 2020 baru 0,93 persen', 'https://www.antaranews.com/berita/1736097/capaian-pengurangan-emisi-grk-dki-2020-baru-093-persen', 'Jakarta (ANTARA) - Presentase capaian reduksi aksi mitigasi gedung ramah lingkungan (green building) dalam rangka mengurangi emisi gas rumah kaca (GRK) di DKI Jakarta pada tahun 2020 baru mencapai 0,93 persen atau 13.789 ton CO2e.Kepala Dinas Lingkungan Hidup Provinsi DKI Jakarta, Andono Warih dalam keterangan tertulis Sabtu, menyebutkan target penurunan emisi GRK berdasarkan Peraturan Gubernur (Pergub) Nomor 131 Tahun 2012, yaitu dari gedung non-Pemprov pada tahun 2020 sebesar 1,5 juta ton CO2e dan tahun 2030 sebesar 5,5 juta ton CO2e.\"Target dari gedung Pemprov sendiri pada Tahun 2020 sebesar 49, 4 ribu ton CO2e dan tahun 2030 sebesar 129,5 ribu ton CO2e,\" katanya.Pemprov DKI Jakarta berupaya mengurangi emisi GRK salah satunya dengan menerapkan konsep gedung ramah lingkungan (green building), yakni bangunan yang bertanggung jawab terhadap lingkungan dan sumber daya yang efisien sejak perencanaan, pelaksanaan konstruksi, pemanfaatan, pemeliharaan, sampai dekonstruksi.Andoro menjelaskan, konsep tersebut berdasarkan Pergub Nomor 38 Tahun 2012 tentang Bangunan Gedung Hijau, dengan prinsip reduksi emisi pada bangunan hijau adalah terjadinya penurunan konsumsi energi tanpa menurunkan kemampuan fungsional bangunan.Data aktivitas emisi GRK bangunan gedung hijau dihitung dari konsumsi listrik dan lama penggunaan listrik.\"Kami mendorong kolaborasi aksi penurunan emisi GRK melalui implementasi konsep bangunan gedung hijau dengan melaporkan konsumsi energi, air, dan pelaksanaan program konservasi energi secara berkala,\" kata Andono.Lebih lanjut ia menjelaskan, persyaratan teknis gedung ramah lingkungan atau gedung hijau mencakup efisiensi energi, efisiensi air, kualitas udara dalam ruang, pengelolaan lahan dan limbah, serta efisiensi dalam pelaksanaan kegiatan konstruksinya.Hingga saat ini, baru lima gedung di DKI Jakarta yang telah melaporkan aksi mitigasinya, yaitu Menara BCA, Sampoerna Strategic Square, Sequis Life, Pacific Place, dan Gedung Waskita.Sementara itu, data ini diperoleh dari Green Building Council Indonesia (GBCI) yang telah melakukan sertifikasi gedung hijau dengan hasil perhitungan capaian reduksi emisi GRK sebesar 13.789 ton CO2e.\"Konsep green building DKI Jakarta telah dituangkan dalam \'grand design green building\' yang diinisiasi sejak tahun 201,\" katanya.Berdasarkan rancangan besar gedung ramah lingkungan (grand design green building), pada tahun 2030 Jakarta berkomitmen akan menurunkan konsumsi energi, konsumsi air dan penurunan emisi gas rumah kaca masing-masing sebesar 30 persen.Konsep gedung ramah lingkungan juga dapat mencegah dampak negatif dan meningkatkan kesehatan lingkungan sekitar yang dapat diterapkan pada pemukiman atau hunian warga, yang merupakan wujud kepedulian terhadap lingkungan.Sebab, lanjut Andono, target \'green building\' melalui penghematan energi listrik sebesar 3.785 GWh, artinya energi ini dapat digunakan untuk menerangi lebih dari 32 ribu unit rumah/rusun dengan daya 1.300 W sampai dengan 2030.Selain itu, penghematan konsumsi air sebesar 2,4 miliar liter setara dengan konsumsi air untuk lebih dari 1.100 unit rumah/rusun sampai dengan 2030.\"Dengan penghematan konsumsi listrik dan air tersebut, dapat dilakukan pengurangan emisi GRK sebesar 3,37 juta ton CO2e yang setara dengan pengurangan emisi oleh 815 ribu batang pohon yang ditanam sampai dengan 2030,\" ujarnya.', 'Jakarta (ANTARA) - Presentase capaian reduksi aksi mitigasi gedung ramah lingkungan (green building) dalam rangka mengurangi emisi gas rumah kaca (GRK) di DKI Jakarta pada tahun 2020 baru mencapai 0,93 persen atau 13', 1600542540, '2020-09-19', '2020-11-07 23:58:01', '2020-11-07 23:58:01'),
(8, 'Pemkot Jakpus periksa emisi kendaraan dinas', 'https://www.antaranews.com/berita/1641834/pemkot-jakpus-periksa-emisi-kendaraan-dinas', 'Jakarta (ANTARA) - Pemerintah Kota Jakarta Pusat memeriksa emisi kendaraan dinas yang digunakan oleh para pemangku jabatan maupun Unit Kerja Perangkat Daerah (UKPD).Wakil Wali Kota Jakarta Pusat Irwandi&nbsp; mengatakan uji emisi itu dilakukan untuk menjaga kualitas udara di wilayah Jakarta Pusat.\"Iya hari ini diperiksa, tentunya agar kualitas udara di Jakarta bisa terbebas dari polusi udara,\" ujar Irwandi saat diwawancarai, Kamis.Berdasarkan data yang dihimpun oleh Suku Dinas Lingkungan Hidup Jakarta Pusat sebanyak 145 kendaraan berbahan bakar bensin maupun solar di uji emisi di Kantor Wali Kota Jakarta Pusat.\"Dari kendaraan berbahan bakar bensin, ada 67 kendaraan, 2 kendaraan di antaranya tidak lulus uji emisi,\" kata Kepala Seksi Pengawasan dan Pengendalian Dampak Lingkungan (PPDL) Suku Dinas Lingkungan Hidup Jakarta Pusat Evy Sulistyowati dalam keterangannya.Selanjutnya untuk kendaraan berbahan bakar solar, ada 78 kendaraan dengan total 24 kendaraan yang tidak lulus dalam pengujian kadar emisi.Evy mengatakan memang paling sering kendaraan yang berbahan bakar solar ditemukan gagal dalam uji emisi.Selain jenis bahan bakar, hal yang mempengaruhi kendaraan gagal dalam uji emisi adalah kurangnya perawatan. \"Dua hal itu memang yang menyebabkan kendaraan gagal dalam uji emisi,\" kata Ujang.', 'Jakarta (ANTARA) - Pemerintah Kota Jakarta Pusat memeriksa emisi kendaraan dinas yang digunakan oleh para pemangku jabatan maupun Unit Kerja Perangkat Daerah (UKPD)', 1596129480, '2020-07-30', '2020-11-07 23:58:02', '2020-11-08 02:12:35'),
(11, 'Bertambah 4.262 Kasus Baru per 7 November, Total Konfirmasi Positif Covid-19 Sebanyak 433 Ribu Orang', 'https://www.tribunnews.com/nasional/2020/11/07/bertambah-4262-kasus-baru-per-7-november-total-konfirmasi-positif-covid-19-sebanyak-433-ribu-orang?page=all', 'Pemerintah melalui Satuan Tugas Penangananmemperbarui soal data jumlah pasien positif corona di Indonesia pada Sabtu (7/11/2020).Dilihat dari data di situs resmi covid19.go.id,  pasien terkonfirmasi sebanyak 4.262 orang, sehingga total kasus positifsebanyak 433.836  orang.Angka tambahan ini seperti diketahui meningkat ketimbang pada hari Jumat kemarin yang mencapai 3.778 kasus.Data tersebut juga menunjukkan penambahan kasus sembuh mencapai 3.712 pasien sembuh.Adapun total kasus sembuh sebanyak 364.417 orangSementara jumlah yang meninggal dunia menjadi 14.540 orang setelah ada penambahan kasus meninggal hari ini sebanyak 98 orang.Jumlah Suspek yang dipantau per hari ini tercatat sebanyak 56.461 orang.Adapun spesimen yang diperiksa hari ini sebesar 38.249 spesimen.Seperti diketahui, pada Jumat (6/11/2020) kemarin, kasus positif Covid-19 total sebanyak 429.574 kasus.Sementara, jumlah pasien sudah sembuh  menjadi 360.705 orang.Adapun total pasien meninggal dunia sejumlah 14.442 orangCatatan Redaksi:Bersama-kita lawan virus corona. Tribunnews.com mengajak seluruh pembaca untuk selalu menerapkan protokol kesehatan dalam setiap kegiatan., 3M (Memakai masker, rajin) Mencuci tangan, dan selalu Menjaga jarak).', 'Pemerintah melalui Satuan Tugas Penangananmemperbarui soal data jumlah pasien positif corona di Indonesia pada Sabtu (7/11/2020)', 1604760300, '2020-11-07', '2020-11-08 02:18:58', '2020-11-08 02:18:58'),
(12, 'MUI Berangkat ke Cina Pastikan Kehalalan Vaksin Covid-19, Wapres Tunggu Laporannya', 'https://www.tribunnews.com/corona/2020/11/07/mui-berangkat-ke-cina-pastikan-kehalalan-vaksin-covid-19-wapres-tunggu-laporannya', '- Wakil Presiden Ma\'ruf Amin menyebutsangat berhati-hati untuk urusan.Kehati-hatian ini berlaku untuk vaksin covid-19 yang diimpor dari berbagai negara maupun yang dibuat sendiri, terlebih soal kehalalan vaksin tersebut.Adapun kini, Wapres tengah menunggu laporan dari MUI yang berangkat ke Cina.\"Ini masalah yang cukup rawan. Kalau kita tidak hati-hati, maka akan lebih baik kalau MUI itu betul-betul berhati-hati di dalam menyampaikan persoalan ini, verifikasi juga harus pasti betul, tingkat kehalalan seperti apa dan seterusnya, sehingga sampai sekarang Wapres juga sedang menunggu,\" kata Juru Bicara Wapres, Masduki Baidlowi, kepada wartawan, Jumat (6/11/2020).Meski demikian, Masduki belum tahu pasti kapan MUI akan melapor kepada Wapres.\"Kalau sudah selesai pasti akan dilaporkan. Kalau sudah selesai dan sudah siap proses verifikasinya akan dilaporkan,\" katanya.Dia menyebut kerja MUI untuk urusan kehalalan vaksin ini tidak sederhana.Tim fatwa yang ikut berangkat ke Cina, akan lebih dulu mengadakan sidang fatwa bersama komisi fatwa.\"Nah itu namanya tim verifikasi juga akan melaporkan ke LPPOM. Jadi ini memang prosesnya panjang dan tidak mungkin juga kita tidak berkoordinasi dengan pemerintah. Pasti akan dilaporkan ke Wapres, kapan pemerintah akan mengeluarkan itu kita akan berkonsultasi dengan MUI terkait kehalalan,\" katanya.Dirinya juga mengatakan pemerintah tak ingin masyarakat terjebak dalam hoaks soal kehalalan vaksin ini, dengan cara mempelesetkan pernyataan-pernyataan tertentu.\"Maka kerja sama pemerintah dan MU agar masyarakat persepsinya sama sehingga dengan demikian ketika vaksinasi nasional dimulai sudah gak ada lagi keraguan atau pertanyaan soal kehalalan vaksin,\" pungkasnya.', '- Wakil Presiden Ma\'ruf Amin menyebutsangat berhati-hati untuk urusan', 1604735340, '2020-11-07', '2020-11-08 02:18:58', '2020-11-08 02:18:58'),
(13, 'Dokter Reisa Sebut Hasil Riset Tunjukkan Masyarakat Indonesia Optimis Sanggup Hadapi Covid-19', 'https://www.tribunnews.com/corona/2020/11/06/dokter-reisa-sebut-hasil-riset-tunjukkan-masyarakat-indonesia-optimis-sanggup-hadapi-covid-19', '- Lembaga penelitian dunia Ipsos menilai masyarakat Indonesia sebagai warga yang optimistis menaklukkan pandemi.Berdasarkan survei Ipsos juga, menyatakan 75 persen masyarakat Indonesia optimis ekonomi akan menguat dalam 6 bulan mendatang.Hal itu disampaikan Juru Bicara Satgas Penanganandr Reisa Brotoasmoro, saat memberikan keterangan pers secara virtual, Jumat (6/11/2020).\"Cepat atau lambat, optimisme ini berdasarkan fakta bahwa upaya 3T (testing, tracing dan treatment) pemerintah, terutama treatment atau pengobatan tentunya semakin membaik terus,\" kata Reisa.Beberapa alasan optimisme yang ada dalam survei Ipsos dipaparkan Reisa, sebesar 53 persen masyarakat optimis bantuan pemerintah untuk UMKM.46 persen masyarakat optimis vaksin akan ditemukan, 37 persen masyarakat optimis bantuan tunai untuk masyarakat.Lalu 32 persen masyarakat optimis stimulus keuangan untuk pemilik usaha dan 30 persen masyarakat optimis terhadap program kartu prakerja.Optimisme ini, kata Reisa, tak lepas dari disiplin masyarakat menerapkan 3M yaitu memakai masker, menjaga jarak dan mencuci tangan.Dan juga, laporan pantauan Satgas Penanganantelah menunjukkan sebagian besar masyarakat Indonesia tetap memakai masker dan menjaga jarak saat masa liburan panjang 28 Oktober - 1 November lalu.', '- Lembaga penelitian dunia Ipsos menilai masyarakat Indonesia sebagai warga yang optimistis menaklukkan pandemi', 1604702400, '2020-11-06', '2020-11-08 02:18:58', '2020-11-08 02:18:58'),
(14, 'Satgas Covid-19 Ingatkan Masyarakat Patuhi Protokol Kesehatan 3M', 'https://www.tribunnews.com/corona/2020/11/06/satgas-covid-19-ingatkan-masyarakat-patuhi-protokol-kesehatan-3m', '- Seiring meningkatnya mobilitas masyarakat, Satuan Tugas (Satgas) Penanganan Covid-19 mengingatkan warga agar selalu disiplin menjalankan 3M yaitu memakai masker, menjaga jarak fisik, dan mencuci tangan menggunakan sabun guna meminimalkan risiko penularan virus corona.Menurut Satgas Penanganan Covid-19, selama masa liburan panjang dari 28 Oktober sampai 1 November 2020 kunjungan ke tempat wisata meningkat.Warga yang mendatangi tempat wisata umumnya sudah memakai masker dan tempat mencuci tangan sudah disediakan di objek-objek wisata.\"Dengan memakai masker, maka wisatawan dapat melindungi dirinya dan orang-orang terdekat dari potensi penularan Covid-19. Namun demikian, terlihat masyarakat masih berkerumun hal ini tentu sangat disayangkan,\" kata Juru Bicara Satgas Penanganan Covid-19 Profdalam keterangannya, Jumat (6/11/2020).Kerumunan warga masih terjadi di tempat wisata seperti Lapangan Sewandanan dan Canden di Yogyakarta, Curug Cigentis di Jawa Barat, Tanah Lot di Bali, wisata Malin Kundang di Sumatera Barat, dan Gunung Budeg di Jawa Timur.Warga yang mengunjungi pusat perbelanjaan dan restoran juga belum sepenuhnya mematuhi protokol kesehatan, termasuk dalam memakai masker dan menjaga jarak.\"Kami ingin mengingatkan seluruh masyarakat bahwa di mana pun dan apapun aktivitasnya, maka protokol 3M harus disiplin dilakukan, upaya perlindungan utama dari paparan Covid-19,\" kata Wiku.Satgas Penanganan Covid-19 pusat mengapresiasi jerih payah Satgas Penanganan Covid-19 daerah yang senantiasa melakukan pemantauan, edukasi, dan penegakan disiplin protokol 3M.\"Saya meminta satgas di daerah dapat terus melakukan monitoring ini dan menegakkan disiplin di masyarakat agar penambahan kasus positif dapat terus ditekan,\" kata Wiku.Sebagaimana diketahui, pemerintah lewat Satuan Tugas (Satgas) Covid-19 saat ini terus menggencarkan kampanye penyuluhan protokol kesehatan 3M yaitu Memakai masker, rajin Mencuci tangan, dan selalu Menjaga jarak.Kampanye 3M ini terus menerus disosialisasikan supaya masyarakat tidak lupa bahwa penyebaran Covid-19 banyak datang dari pergerakan manusia.Makanya, pelaksanaan 3M harus dijalankan secara ketat.', '- Seiring meningkatnya mobilitas masyarakat, Satuan Tugas (Satgas) Penanganan Covid-19 mengingatkan warga agar selalu disiplin menjalankan 3M yaitu memakai masker, menjaga jarak fisik, dan mencuci tangan menggunakan sabun guna meminimalkan risiko penularan virus corona', 1604699640, '2020-11-06', '2020-11-08 02:18:58', '2020-11-08 02:18:58'),
(15, 'Jadi Sektor Unggulan, Usaha Kuliner Diminta Konsisten Terapkan Protokol Kesehatan', 'https://www.tribunnews.com/bisnis/2020/11/06/jadi-sektor-unggulan-usaha-kuliner-diminta-konsisten-terapkan-protokol-kesehatan', '- Kementerian Pariwisata dan Ekonomi Kreatif (Kemenparekraf) mengajak pelaku usaha sektor kuliner konsisten melaksanakan penerapan protokol kesehatan.Tujuannya, agar pelaku usaha di sektor kuliner bisa tetap produktif dan membuat rasa aman konsumen di tengah pandemi Covid-19. Staf Ahli Menteri Bidang Reformasi Birokrasi dan Regulasi Kemenparekraf Ari Juliano mengatakan, industri kuliner menjadi salah satu subsektor unggulan dalam peningkatan ekonomi.Karena itu, penting bagi pelaku usaha kuliner untuk menerapkan protokol kesehatan di masa pandemi.\"Kami ingin membangkitkan semangat serta memberikan edukasi dalam mengembangkan usaha dan produk kuliner bagi para pelaku usaha kuliner dalam menerapkan protokol di masa pandemi Covid-19,\" ujar Ari, Jumat (6/11/2020).Kemenparekraf pun telah mengeluarkan panduan teknis pelaksanaan protokol CHSE untuk bidang pariwisata, termasuk usaha kuliner, yang dapat diterapkan oleh pelaku usaha kuliner seperti rumah makan dan restoran. Kepala Dinas Kesehatan Provinsi  Bali, dr. Ketut Suarjaya, mengatakan protokol CHSE yang dapat dilakukan oleh para pelaku usaha kuliner yaitu dengan menjaga kebersihan baik dari segi tempat, peralatan, bahan makanan, hingga dari sisi pengolahannya. \"Membuka restoran atau rumah makan itu yang bisa dilakukan untuk mencegah adanya Covid-19 adalah dengan membuka pintu dan ventilasi udara. Sebab, tempat yang terbuka lebih aman dari yang tertutup. Kemudian disinfektan ruangannya. Jadi semua dibersihkan, taplaknya diganti dan sebagainya,\" ujar dr Suarjaya.Menurutnya, Covid-19 dapat menempel di permukaan kayu dalam waktu hingga tiga jam, sedangkan jika pada benda yang terbuat dari kaca, virus dapat menempel hingga 5 jam. ', '- Kementerian Pariwisata dan Ekonomi Kreatif (Kemenparekraf) mengajak pelaku usaha sektor kuliner konsisten melaksanakan penerapan protokol kesehatan', 1604694720, '2020-11-06', '2020-11-08 02:18:58', '2020-11-08 02:18:58'),
(16, 'Jika Konsisten Patuhi Protokol 3M, Kasus Aktif Covid-19 Akan Turun Jadi 8 % dan Kesembuhan Bisa 90 %', 'https://www.tribunnews.com/corona/2020/11/06/jika-konsisten-patuhi-protokol-3m-kasus-aktif-covid-19-akan-turun-jadi-8-dan-kesembuhan-bisa-90', 'Satuan Tugas Penanganan Covid-19 memprediksi jika semua pihak konsisten mematuhi protokol kesehatan 3M (memakai masker, mencuci tangan, menjaga jarak), maka bukan tak mungkin kurva kasus aktif akan menurun.\"Maka harapannya kasus aktif kita di bulan depan sudah kurang dari 10 persen. Bahkan bisa di angka 8 persen sekian,\" kata Ketua Bidang Data dan Teknologi Infornasi Satgas Covid-19, Dewi Nur Aisyah, dalam dialog di kanal Youtube Rakyat Merdeka TV, Jumat (6/11/2020).Adapun per 1 November 2020, Satgas mencatat persentase kasus aktif mengalami penurunan menjadi 13,78 persen.\"Dalam waktu satu pekan, ini per November turunnya di angka 2,30 persen. Kalau dibandingkan dengan bulan lalu yakni per 4 Oktober ini turunnya 7,27 persen,\" lanjut DewiBegitu juga dengan kasus sembuh yang dari catatan Dewi, per 1 November persentasenya berada di angka 82,84 persen.\"Kenaikannya 7,57 persen dari bulan lalu. Jika satu bulan lagi kita bisa bertahan dengan kondisi yang sama, bis jadi kita menghadapi angka kesembuhan lebih dari 90 persen pada akhir November 2020,\" katanya.Meski begitu, dikatakan Dewi, kondisi perkembangan di lapangan menjadi faktor utama, terlebih saat menghadapi pasca libur panjang akhir Oktober kemarin.\"Apakah akan terjadi hal yang sama seperti pada Agustus-September, atau ada perubahan, bisa jadi karena masyarakatnta lebih paham, teredukasi dengan apa yang harus dilakukan, personel di lapangan juga dikerahkan, ini akan memengaruhi,\" pungkasnya.', 'Satuan Tugas Penanganan Covid-19 memprediksi jika semua pihak konsisten mematuhi protokol kesehatan 3M (memakai masker, mencuci tangan, menjaga jarak), maka bukan tak mungkin kurva kasus aktif akan menurun', 1604685720, '2020-11-06', '2020-11-08 02:18:59', '2020-11-08 02:18:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIK` (`url`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
