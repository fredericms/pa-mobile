import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pa_mobile/ControlPanel.dart';
import 'package:pa_mobile/trailer.dart';

// class MovieDetail extends StatelessWidget {
//   const MovieDetail({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return contentDetailUpcoming(
//         context,
//         "Doctor Strange Multiverse of Maddness",
//         "assets/upcoming/poster1.jpg",
//         "assets/upcoming/poster2.jpg",
//         "ini sinopsis film disini");
//   }
// }

class bulletTrain extends StatelessWidget {
  const bulletTrain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentDetailUpcoming(
        context,
        "Bullet Train",
        "assets/upcoming/bulletTrain.jpg",
        "assets/upcoming/bulletTrain.jpg",
        "Film Bullet Train berkisah tentang seorang pembunuh profesional yang telah terlatih. Hingga suatu ketika ia ingin menyerahkan nyawanya. Namun hal itu terhenti, lantaran ditarik kembali oleh pawangnya, yakni Maria Beetle. Karena ia ditugaskan untuk mengambis sebuah tas kerja, di kereta peluru dari Tokyo menuju Morioka. Tentu saja Ladybug menyetujui, dan dirinya lekas untuk menuju kereta yang dimaksud oleh Maria Beetie saat itu juga",
        TrailerBullet());
  }
}

class lightyear extends StatelessWidget {
  const lightyear({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentDetailUpcoming(
        context,
        "Lightyear",
        "assets/upcoming/lightyear.jpg",
        "assets/upcoming/lightyear.jpg",
        "Lightyear mengisahkan tentang perjalanan ke luar angkasa yang dilakukan Kapten Unit Perlindungan Alam Semesta dari korps Space Ranger Aliansi Intergalaksi, Buzz Lightyear. Dalam perjalanan menuju planet asing, Buzz menerima misi berbahaya untuk mengeksplorasi planet baru",
        TrailerLightyear());
  }
}

class minions extends StatelessWidget {
  const minions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentDetailUpcoming(
        context,
        "Minions: The Rise Of Gru",
        "assets/upcoming/minion.jpg",
        "assets/upcoming/minion.jpg",
        "Berlatar belakang tahun 1970-an, Gru yang saat itu masih berusia 12 tahun merupakan penggemar berat dari sebuah kelompok penjahat terkenal bernama Vicious 6. Saking mengidolakan kelompok tersebut, Gru mencari cara agar dapat bergabung dengan mereka",
        TrailerMinion());
  }
}

class mySassyGirl extends StatelessWidget {
  const mySassyGirl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentDetailUpcoming(
        context,
        "My Sassy Girl",
        "assets/upcoming/mysassygirl.jpeg",
        "assets/upcoming/mysassygirl.jpeg",
        "Gian seharusnya pergi ke rumah tantenya karena sang tante ingin menjodohkan Gian dengan mantan kekasih almarhum anaknya. Namun sejak di stasiun hingga di dalam gerbong kereta, Gian terjebak dalam situasi harus mengurus gadis mabuk bernama Sisi hingga harus membawanya ke hotel. Terjadi kesalahpahaman antara Gian dan Sisi namun justru kesalahpahaman itulah yang membawa mereka ke dalam pertemuan demi pertemuan selanjutnya, membentuk sebuah kebersamaan di mana Gian menemukan dirinya tak bisa dan tak mau lepas lagi dari Sisi meski Sisi seringkali membullynya",
        TrailerMySassy());
  }
}

class nope extends StatelessWidget {
  const nope({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentDetailUpcoming(
        context,
        "Nope",
        "assets/upcoming/nope.png",
        "assets/upcoming/nope.png",
        "Jill dan James Haywood yang diperankan oleh Daniel Kaluuya. Keduanya merupakan pelatih kuda dan tinggal di sekitar peternakan milik mereka. Pada suatu malam, salah satu kuda mereka lepas kontrol dan di situlah keanehan mulai terjadi. Warga di sekitar peternakan peternakan Haywood seperti menyaksikan kedatangan makhluk yang berasal dari luar Bumi, terlihat sebuah benda asing mirip UFO terbang di langit Bumi, ada wanita berwajah aneh, hingga tangan misterius",
        TrailerNope());
  }
}

class pawsOfFury extends StatelessWidget {
  const pawsOfFury({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentDetailUpcoming(
        context,
        "Paws Of Fury",
        "assets/upcoming/pawsofFury.jpg",
        "assets/upcoming/pawsofFury.jpg",
        "'Paws of Fury' bercerita tentang anjing yang putus asa dan bercita-cita ingin menjadi seorang Samurai bernama Hank (disuarakan oleh Michael Cera), yang berangkat mencari takdirnya. Tetapi, Hank justru menemukan dirinya berada di sebuah kota yang penuh dengan kucing",
        TrailerPaws());
  }
}

class thor extends StatelessWidget {
  const thor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentDetailUpcoming(
        context,
        "Thor: Love and Thunder",
        "assets/upcoming/thor.jpg",
        "assets/upcoming/thor.jpg",
        "Thor: Love and Thunder mengisahkan tentang perjalanan Thor yang mencari kedamaian batin, tidak seperti perjalan yang pernah ia hadapi sebelumnya. Dalam film ini dikisahkan bahwa Thor sudah pensiun. Namun pensiunnya terganggu oleh seorang pembunuh galaksi yang dikenal sebagai Gorr the God Butcher, yang mencari kepunahan para dewa. Untuk memerangi ancaman tersebut, Thor meminta bantuan Raja Valkyrie, Korg, dan mantan pacar Jane Foster, yang  yang mengejutkan Thor  secara misterius menggunakan palu ajaibnya, Mjølnir, sebagai Thor yang Perkasa",
        TrailerThor());
  }
}

class seeForMee extends StatelessWidget {
  const seeForMee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentDetailUpcoming(
        context,
        "See For Me",
        "assets/upcoming/seeformee.jpg",
        "assets/upcoming/seeformee.jpg",
        "See For Me menceritakan tentang kehidupan seorang pemain ski. dimana seorang wanita muda buta terjebak dalam baku tembak skema invasi rumah, harus bergantung pada seorang veteran Angkatan Darat melalui aplikasi untuk bertahan hidup. Tiba-tiba tiga pencuri menyerangnya untuk brankas tersembunyi",
        TrailerSee());
  }
}
