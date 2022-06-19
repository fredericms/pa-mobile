import 'package:flutter/material.dart';
import 'package:pa_mobile/ControlPanel.dart';

class BuyDoctorStrange extends StatelessWidget {
  const BuyDoctorStrange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentBuyTicket(context, "Doctor Strange Multiverse of Madness",
        "assets/PosterDokter1.jpg", "assets/PosterDokter2.jpg");
  }
}

class BuyGatotKaca extends StatelessWidget {
  const BuyGatotKaca({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentBuyTicket(context, "Satria Dewa Gatot Kaca",
        "assets/posterGatot1.png", "assets/PosterGatot2.jpg");
  }
}

class BuyJurassic extends StatelessWidget {
  const BuyJurassic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentBuyTicket(context, "Jurassic World Dominion",
        "assets/posterJurassic1.jpg", "assets/posterJurassic2.jpg");
  }
}

class BuyCintaSubuh extends StatelessWidget {
  const BuyCintaSubuh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentBuyTicket(context, "Cinta Subuh", "assets/posterCinta1.jpg",
        "assets/posterCinta2.jpg");
  }
}

class BuyTopGun extends StatelessWidget {
  const BuyTopGun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentBuyTicket(context, "Top Gun: Maverick",
        "assets/posterTop1.jpg", "assets/posterTop1.jpg");
  }
}

class BuySrimulat extends StatelessWidget {
  const BuySrimulat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentBuyTicket(
        context,
        "Srimulat :Hil Yang Mustahal Babak Pertama",
        "assets/posterSrimulat.jpg",
        "assets/posterSrimulat1.jpg");
  }
}

class BuyDoraemon extends StatelessWidget {
  const BuyDoraemon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentBuyTicket(
        context,
        "Doraemon The Movie : Nobitas's Litte Star Wars 2021",
        "assets/posterDoraemon1.jpg",
        "assets/posterDoraemon2.jpg");
  }
}

class BuyTheDoll extends StatelessWidget {
  const BuyTheDoll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentBuyTicket(context, "The Doll 3", "assets/posterdoll1.jpg",
        "assets/posterdoll3.jpg");
  }
}

class BuyTheRoundup extends StatelessWidget {
  const BuyTheRoundup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentBuyTicket(context, "The Roundup", "assets/TheRoundup.jpeg",
        "assets/posterTheRoundup1.jpg");
  }
}

class BuyNgeri extends StatelessWidget {
  const BuyNgeri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentBuyTicket(context, "Ngeri Ngeri Sedap",
        "assets/NgeriNgeriSedap.jpg", "assets/NgeriNgeriSedap.jpg");
  }
}

class BuyMemory extends StatelessWidget {
  const BuyMemory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentBuyTicket(context, "Memory", "assets/postertMemory1.jpg",
        "assets/postertMemory2.jpg");
  }
}

class BuyKkn extends StatelessWidget {
  const BuyKkn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contentBuyTicket(context, "KKN Desa Penari", "assets/posterKkn1.jpg",
        "assets/posterKkn2.jpg");
  }
}
