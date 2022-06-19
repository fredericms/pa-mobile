import 'package:flutter/material.dart';
import 'package:pa_mobile/ControlPanel.dart';
import 'package:pa_mobile/BuyTicketPage.dart';
import 'package:pa_mobile/trailer.dart';

// class MovieDetail extends StatelessWidget {
//   const MovieDetail({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return contentDetailMovie(
//         context,
//         "Doctor Strange Multiverse of Maddness",
//         "assets/poster1.jpg",
//         "assets/poster2.jpg",
//         "ini synopsis film disini",
//         "nama producer disini",
//         "nama director disni",
//         "nama writer disini",
//         "nama caster disini",
//         "nama distributor disni",
//         );
//   }
// }

class doctorStrange extends StatelessWidget {
  const doctorStrange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentDetailMovie(
      context,
      "Doctor Strange Multiverse of Maddness",
      "assets/PosterDokter1.jpg",
      "assets/PosterDokter2.jpg",
      "DOCTOR STRANGE IN THE MULTIVERSE OF MADNESS berisi sejumlah gambar dan adegan dengan kilatan cahaya berulang yang dapat mengganggu para pengidap epilepsi fotosensitif atau memiliki kerentanan fotosensitif lainnya.Stephen Strange mengucapkan mantra terlarang yang membuka pintu ke multiverse, termasuk versi alternatif dari dirinya sendiri, yang menjadi suatu ancamannya terhadap kemanusiaan dan terlalu besar untuk kekuatan gabungan Strange, Wong, dan Wanda Maximoff.Dr. Stephen Strange casts a forbidden spell that opens the doorway to the multiverse, including alternate versions of himself, whose threat to humanity is too great for the combined forces of Strange, Wong, and Wanda Maximoff.",
      "Kevin Feige",
      "Sam Raimi",
      "Michael Waldron",
      "Benedict Cumberbatch,Elizabeth Olsen,Chiwetel Ejiofor,Benedict Wong,Xochitl Gomez,Michael Stuhlbarg,Rachel McAdams",
      "Marvel Studios",
      BuyDoctorStrange(),
      TrailerDoctorStrange(),
    );
  }
}

class gatokKaca extends StatelessWidget {
  const gatokKaca({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentDetailMovie(
        context,
        "Satria Dewa Gatot Kaca",
        "assets/posterGatot1.png",
        "assets/PosterGatot2.jpg",
        "YUDA, seorang pemuda berusia 22 tahun yang baru saja kehilangan pekerjaan. Di tengah situasi terjepit, dunia YUDA berubah total, karena dia menyaksikan sahabat baik dan ibunya dibunuh oleh tangan jahat Kurawa.YUDA menemukan kalau ada kekuatan misterius di dalam dirinya. YUDA juga menyadari ada panggilan takdir untuk melindungi orang- orang yang ia cintai. Tapi, beban maha berat juga jatuh di pundaknya. Mampukah YUDA memenuhi takdir dan menggunakan kekuatan misteriusnya untuk menyelamatkan orang-orang yang dia cintai?",
        "Celerina Judisari",
        "Hanung Bramantyo",
        "Rahabi Mandra, Hanung Bramantyo",
        "Rizky Nazar, Yasmin Napper, Omar Daniel, Ali Fikry, Yayan Ruhian, Cecep Arif Rahman, Sigi Wimala, Edward Akbar,Jerome Kurnia",
        "Satria Dewa Studio",
        BuyGatotKaca(),
        TrailerGatotKaca());
  }
}

class jurassicWorld extends StatelessWidget {
  const jurassicWorld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentDetailMovie(
        context,
        "Jurassic World Dominion ",
        "assets/posterJurassic1.jpg",
        "assets/posterJurassic2.jpg",
        "Empat tahun setelah kehancuran Pulau Nublar, Dinosaurus sekarang hidup dan berburu berdampingan dengan manusia. Keseimbangan yang rentan ini akan menentukan: Apakah manusia akan tetap berada di puncak rantai makanan ketika berbagi teritori dengan makhluk paling menakutkan dalam sejarah bumi?",
        "Frank Marshall, Patrick Crowley",
        "Colin Trevorrow",
        "Derek Connolly, Colin Trevorrow",
        "Chris Pratt, Bryce Dallas Howard, Laura Dern, Jeff Goldblum, Sam Neill, DeWanda Wise, Mamoudou Athie, BD Wong, Omar Sy",
        "Universal Pictures",
        BuyJurassic(),
        TrailerJurrasicWorld());
  }
}

class cintaSubuh extends StatelessWidget {
  const cintaSubuh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentDetailMovie(
        context,
        "Cinta Subuh",
        "assets/posterCinta1.jpg",
        "assets/posterCinta2.jpg",
        "Angga (Rey Mbayang), mahasiswa laki-laki yang jarang salat tepat waktu, jatuh cinta kepada Ratih (Dinda Hauw), perempuan muda cerdas dan relijius, yang tidak pernah mengharapkan laki-laki seperti Angga mampu mencuri hatinya. Tapi seperti para pujangga bilang, cinta tak kenal persyaratan, ia datang tanpa undangan. Keunikan Angga, ketulusan, keceriaan, dan pembawaannya membuat Ratih mau membuka hati, ia yang berprinsip untuk tidak pacaran akhirnya menerima Angga menjadi kekasih. Sebelum bertemu Angga, Ratih berharap memiliki pasangan yang mampu menjaga pandangannya, tinggi budi pekertinya, cerdas dan menjaga kewajiban sebagai manusia beragama. Semua harapan Ratih terkumpul dalam sosok kakak tingkat bernama Arya Satria Negara (Roger Danuarta), sosok laki-laki hampir sempurnya yang sebenarnya juga menyimpan rasa terhadap Ratih. Bedanya dengan Angga, Arya patuh pada setiap nilai dan aturan agama. Karena itulah, Arya tidak mendekati Ratih secara serampangan, menurut Arya, satu-satunya cara dirinya bisa bersama dengan Ratih adalah lewat ikatan pernikahan. Salat subuh tepat waktu adalah satu-satunya permintaan Ratih kepada Angga yang tidak pernah dilaksanakan dengan baik, permintaan yang akhirnya membuat Ratih memutuskan untuk mengakhiri hubungan mereka.",
        "Frederica",
        "Indra Gunawan",
        "Ali Farighi",
        "Dinda Hauw, Roger Danuarta, Rey Mbayang, Cut Meyriska, Dhini Aminarti, Syakir Daulay, Dimas Seto, Adiba Khanza, Kemal Palevi",
        "Falcon Pictures",
        BuyCintaSubuh(),
        TrailerCintaSubuh());
  }
}

class topGunMaverick extends StatelessWidget {
  const topGunMaverick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentDetailMovie(
        context,
        "Top Gun Maverick",
        "assets/posterTop1.jpg",
        "assets/posterTop2.jpg",
        "Over three decades after the events of the first film, Captain Pete Maverick Mitchell is serving as a U.S. Navy test pilot who has avoided promotion to continue flying. As Rear Admiral Chester Hammer Cain approaches to shut down the hypersonic Darkstar scramjet program and redirect the funds to drone programs, Maverick flies the prototype to its speed objective, then pushes further into high-hypersonic speed, destroying it. Cain wants to ground Maverick for his recklessness, but instead sends him to NAS North Island as a TOPGUN instructor, as ordered by Maverick's friend and former rival, Admiral Tom Iceman Kazansky, the commander of the U.S. Pacific Fleet.",
        "Jerry Bruckheimer, Tom Cruise",
        "Joseph Kosinski",
        "Peter Craig, Justin Marks",
        "Tom Cruise, Miles Teller, Jennifer Connelly, Jon Hamm, Glen Powell, Lewis Pullman, Ed Harris, Val Kilmer",
        "Paramount Pictures",
        BuyTopGun(),
        TrailerTopGun());
  }
}

class srimulat extends StatelessWidget {
  const srimulat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentDetailMovie(
        context,
        "Srimulat:Hil Yang Mustahal Babak Pertama",
        "assets/posterSrimulat.jpg",
        "assets/posterSrimulat1.jpg",
        "Kelompok lawak Srimulat yang tengah populer di Jawa, mendadak terganggu penampilannya karena muncul pemain kendang yang lebih lucu bernama Gepeng (Bio One). Tepat pada saat itu, sebuah telegram dari Ibukota datang, mengundang Srimulat tampil di TV Nasional. Pemimpin Srimulat, Teguh (Rukman Rosadi) pun memenuhi undangan itu, Asmuni (Rifnu Wikana) diserahi tugas memimpin Srimulat ke Ibukota. Teguh pun merekrut Gepeng, mengajak pemain kendang itu bergabung dengan Srimulat. Di Ibukota, Gepeng harus bisa menyatukan diri dengan Srimulat yang terdiri dari Asmuni, Timbul (Dimas Anggara), Tarsan (Ibnu Jamil), Tessy (Erick Estrada), Paul (Morgan Oey), Basuki (Elang El Gibran), Nunung (Zulfa Maharani), Anna (Naima Al Jufri) dan Djudjuk (Erika Carlina). Di tengah keinginannya melebur menjadi keluarga Srimulat, Gepeng dan Basuki bertemu dengan Royani (Indah Permatasari), anak perempuan Babe Makmur (Rano Karno) pemilik kontrakan yang disewa Srimulat. Saat fokus Gepeng terganggu karena kehadiran Royani, Srimulat mendapat permintaan untuk tampil khusus di depan Presiden dan Ibu Negara. Apa yang akan terjadi kemudian? Apakah membuat Presiden dan Ibu Negara tertawa adalah sesuatu yang mustahil?",
        "Susanti Dewi, Emilka Chaidir",
        "Fajar Nugros",
        "Fajar Nugros",
        "Bio One, Elang El Gibran, Ibnu Jamil, Indah Permatasari, Dimas Anggara, Teuku Rifnu Wikana, Erick Estrada, Zulfa Maharani, Morgan Oey, Naimma Aljufri, Erika Carlina, Rukman Rosadi",
        "IDN Pictures, MNC Pictures",
        BuySrimulat(),
        TrailerSrimulat());
  }
}

class doraemon extends StatelessWidget {
  const doraemon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentDetailMovie(
        context,
        "Doraemon The Movie : Nobitas's Litte Star Wars 2021",
        "assets/posterDoraemon1.jpg",
        "assets/posterDoraemon2.jpg",
        "saat liburan musim panas, alien kecil seukuran telapak tangan bernama Papi muncul dari roket kecil yang diambil Nobita. Dia adalah presiden Pirika, sebuah planet kecil di luar angkasa, Ia datang ke Bumi untuk melarikan diri dari para pemberontak. Doraemon dan teman-temannya bingung dengan ukuran kecil Papi, tetapi saat mereka bermain bersama menggunakan alat rahasia Cahaya Senter Pengecil, mereka secara bertahap menjadi teman. Namun, sebuah kapal perang luar angkasa berbentuk paus datang ke bumi dan menyerang Doraemon, Nobita, dan yang lainnya untuk menangkap Papi. Merasa bertanggung jawab untuk melibatkan semua orang, Papi mencoba melawan para pemberontak. Doraemon dan teman-temannya berangkat ke planet Pirika untuk melindungi teman baik mereka dan rumahnya.One day during summer vacation, a palm-sized alien named Papi appears from a small rocket that Nobita picks up. He is the president of Pirika, a small planet in outer space, and has come to Earth to escape the rebels. Doraemon and his friends are puzzled by Papi's small size, but as they play together using the secret tool Small Light, they gradually become friends. However, a whale-shaped space battleship comes to earth and attacks Doraemon, Nobita and the others in order to capture Papi. Feeling responsible for getting everyone involved, Papi tries to stand up to the rebels. Doraemon and his friends leave for the planet Pirika to protect their dear friend and his home.",
        "Susumu Yamaguchi",
        "Junya Ishigaki",
        "Fujiko F. Fujio",
        "Wasabi Mizuta, Megumi Ohara, Yumi Kakazu, Subaru Kimura, Tomokazu Seki",
        "Toho",
        BuyDoraemon(),
        TrailerDoraemon());
  }
}

class theDool extends StatelessWidget {
  const theDool({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentDetailMovie(
        context,
        "The Doll 3",
        "assets/posterdoll1.jpg",
        "assets/posterdoll3.jpg",
        "Tara meminta dukun untuk memanggil arwah adiknya Gian berada di dalam boneka Bobby.Tapi Gian (dalam boneka Bobby) yang selalu bersikap manis pada Tara, ternyata membuat Aryan dan Mika dalam bahaya, bahkan mereka hampir mati. Akankah Tara berhasil menghentikan Gian? Akankah Aryan dan Mikha selamat dari incaran Gian?",
        "Rocky Soraya",
        "Rocky Soraya",
        "Riheam Junianti",
        "Jessica Mila, Winky Wiryawan",
        "Hitmaker Studios",
        BuyTheDoll(),
        TrailerTheDoll3());
  }
}

class TheRoundup extends StatelessWidget {
  const TheRoundup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentDetailMovie(
        context,
        "The Roundup",
        "assets/posterTheRoundup1.jpg",
        "assets/posterTheRoundup1.jpg",
        "DON LEE aka Ma Dong Seok kembali sebagai sang polisi gahar.Unit Kejahatan Besar Polisi Geumcheon diberi misi untuk memulangkan buronan yang melarikan diri ke Vietnam. Polisi garang Ma Seok-do (Don LEE) dan Kapten Jeon Il-man (CHOI Guy-hwa) secara intuitif menyadari bahwa ada yang salah dengan kesediaan tersangka untuk menyerahkan diri. Kemudian terungkaplah kejahatan yang dilakukan oleh pembunuh mengerikan bernama Kang Hae-sang. (SON Sukku). Ma dan unitnya memulai penyelidikan mereka di dua negara dan mengikuti petunjuk penuh darah menuju Kang yang sangat bengis… Tidak ada batasan dalam menangkap yang penjahat! Roundup akan menarik dengan penuh ketegangan! “You feeling it? We have to get this guy” Geumcheon Police’s Major Crimes Unit is given a mission to repatriate a fugitive who fled to Vietnam.Beast cop Ma Seok-do (Don LEE) and Capt. Jeon Il-man (CHOI Guy-hwa) intuitively realizes that there’s something wrong with the suspect’s willingness to turn himself in and uncover crimes committed by a terrifying killer named Kang Hae-sang (SON Sukku).Ma and his unit begin their investigation across two countries and follow the bloody breadcrumbs left behind by Kang No borders in catching the bad! Another exciting and tension-filled roundup!",
        "Ma Dong-seok, Kim Hong-baek, Jang Won-seok",
        "Lee Sang-yong",
        "-",
        "Ma Dong-seok, Son Seok-koo, Choi Gwi-hwa, Park Ji-hwan, Heo Dong-won, Ha Jun, Jung Jae-kwang",
        "ABO Entertainment, Megabox",
        BuyTheRoundup(),
        TrailerTheRoundup());
  }
}

class NgeriNgeriSedap extends StatelessWidget {
  const NgeriNgeriSedap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentDetailMovie(
        context,
        "Ngeri Ngeri Sedap",
        "assets/NgeriNgeriSedap.jpg",
        "assets/NgeriNgeriSedap.jpg",
        "Pak Domu dan Mak Domu yang tinggal bersama Sarma, ingin sekali tiga anaknya: Domu, Gabe dan Sahat yang sudah lama merantau pulang untuk menghadiri acara adat, tetapi mereka menolak pulang karena hubungan mereka tidak harmonis dengan Pak Domu. Pak Domu dan Mak Domu akhirnya berpura-pura bertengkar dan ingin bercerai demi mendapatkan perhatian dari anak-anaknya.",
        "Dipa Andika",
        "Bene Dion Rajagukguk",
        "Bene Dion Rajagukguk",
        "Arswendy Beningswara Nasution, Tika Panggabean, Boris Bokir Manullang, Gita Bhebhita Butar-butar, Lolox, Indra Jegel",
        "Imajinari, Visionari Film Fund",
        BuyNgeri(),
        TrailerNgeri());
  }
}

class Memory extends StatelessWidget {
  const Memory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentDetailMovie(
        context,
        "Memory",
        "assets/postertMemory1.jpg",
        "assets/postertMemory2.jpg",
        "Seorang pembunuh bayaran, Alex Lewis (Liam Neeson) menemukan bahwa dia menjadi target setelah menolak untuk menyelesaikan pekerjaan untuk organisasi kriminal berbahaya. Alex harus dengan cepat memburu dan membunuh orang-orang yang mempekerjakannya sebelum mereka dan agen FBI Vincent Serra (Guy Pearce) menangkapnya terlebih dahulu.Tapi Alex memiliki masalah lain, yaitu memori ingatan dirinya yang mulai terganggu, dia terpaksa mempertanyakan setiap tindakannya, mengaburkan batas antara benar dan salah.",
        "Cathy Schulman, Moshe Diamant, Rupert Maconick, Michael Heimler, Arthur Sarkissian",
        "Martin Campbell",
        "-",
        "Liam Neeson, Guy Pearce, Monica Bellucci, Taj Atwal, Ray Fearon, Harold Torres",
        "Briarcliff Entertainment Open Road Films (United States), STXfilms (International)",
        BuyMemory(),
        TrailerMemory());
  }
}

class KknDiDesaPenari extends StatelessWidget {
  const KknDiDesaPenari({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentDetailMovie(
        context,
        "KKN Desa Penari",
        "assets/posterKkn1.jpg",
        "assets/posterKkn2.jpg",
        "Berawal dari 6 mahasiswa yang melaksanakan KKN di sebuah desa terpencil, Nur (Tissa Biani), Widya (Adinda Thomas), Ayu (Aghniny Haque), Bima (Achmad Megantara), Anton (Calvin Jeremy) dan Wahyu (M. Fajar Nugraha) tidak pernah menyangka kalau desa yang mereka pilih ternyata bukanlah desa biasa. Pak Prabu (Kiki Narendra) sang kepala desa memperingatkan mereka untuk tidak melewati batas gapura terlarang, sebuah gapura yang menuju Tapak Tilas. Tempat misterius itu mungkin ada hubungannya dengan sosok penari cantik yang mulai menganggu Nur dan juga Widya.Satu persatu mulai merasakan keanehan desa tersebut dan Bima pun mulai berubah sikap. Proker KKN mereka berantakan, tampaknya penghuni ghaib desa tersebut tidak menyukai mereka. Nur akhirnya menemukan fakta mencengangkan bahwa salah satu dari mereka melanggar aturan yang paling fatal di desa tersebut. Teror sosok penari misterius semakin menyeramkan, mereka mencoba meminta bantuan Mbah Buyut (Diding Boneng) dukun setempat, namun sudah terlambat, mereka terancam tidak akan bisa pulang dengan selamat dari desa yang dikenal dengan sebutan desa penari itu.",
        "Manoj Punjabi",
        "Awi Suryadi",
        "Lele Laila, Gerald Mamahit",
        "Tissa Biani, Adinda Thomas, Achmad Megantara, Aghniny Haque, Calvin Jeremy, Fajar Nugraha",
        "MD Pictures, Pichouse Films",
        BuyKkn(),
        TrailerKkn());
  }
}
