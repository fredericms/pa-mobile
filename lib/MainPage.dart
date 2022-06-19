import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa_mobile/Color.dart';
import 'package:pa_mobile/ControlPanel.dart';
import 'package:pa_mobile/DetailPage.dart';
import 'package:pa_mobile/DetailUpComing.dart';
import 'package:pa_mobile/LoginController.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<BottomNavigationBarItem> bottomNavbarItems = [
    BottomNavigationBarItem(icon: Icon(Icons.theaters), label: "Showing"),
    BottomNavigationBarItem(
      icon: Icon(Icons.upcoming),
      label: "Upcoming",
    ),
    BottomNavigationBarItem(icon: Icon(Icons.group), label: "Kelompok"),
  ];
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final KeyController keyAccess = Get.find();

    var lebar = MediaQuery.of(context).size.width;
    var panjang = MediaQuery.of(context).size.height;

    List<Widget> tabBody = [
      Container(
        color: Color.fromARGB(255, 77, 77, 77),
        child: ListView(
          children: [
            //-------------------------------------------------------------------------------1
            Row(
              children: [
                showMovieCard(
                    context,
                    "assets/multiverseMadness.jpg",
                    "DOCTOR STRANGE IN THE MULTIVERSE OF MADNESS",
                    doctorStrange()),
                showMovieCard(context, "assets/GatokKaca.jpeg",
                    "SATRIA DEWA: GATOT KACA", gatokKaca()),
              ],
            ),
            //-------------------------------------------------------------------------------2
            Row(
              children: [
                showMovieCard(context, "assets/JurassicWorld.jpg",
                    "JURASSIC WORLD DOMINION", jurassicWorld()),
                showMovieCard(context, "assets/CintaSubuh.jpg", "CINTA SUBUH",
                    cintaSubuh()),
              ],
            ),
            //-------------------------------------------------------------------------------3
            Row(
              children: [
                showMovieCard(context, "assets/TopGunMaverick.jpg",
                    "TOP GUN: MAVERICK", topGunMaverick()),
                showMovieCard(context, "assets/Srimulat.jpeg",
                    "SRIMULAT: HIL YANG MUSTAHAL BABAK PERTAMA", srimulat()),
              ],
            ),
            //-------------------------------------------------------------------------------4
            Row(
              children: [
                showMovieCard(
                    context,
                    "assets/Doraemon.jpg",
                    "DORAEMON THE MOVIE : NOBITAS'S LITTLE STAR WARS",
                    doraemon()),
                showMovieCard(
                    context, "assets/TheDoll3.jpg", "THE DOLL 3 ", theDool()),
              ],
            ),
            //-------------------------------------------------------------------------------5
            Row(
              children: [
                showMovieCard(context, "assets/TheRoundup.jpeg", "THE ROUNDUP",
                    TheRoundup()),
                showMovieCard(context, "assets/NgeriNgeriSedap.jpg",
                    "NGERI NGERI SEDAP", NgeriNgeriSedap()),
              ],
            ),
            //-------------------------------------------------------------------------------6
            Row(
              children: [
                showMovieCard(context, "assets/Memory.jpg", "MEMORY", Memory()),
                showMovieCard(context, "assets/KknDiDesaPenari.jpg",
                    "KKN DESA PENARI", KknDiDesaPenari()),
              ],
            ),
          ],
        ),
      ),
      //-----------------------------------------------------------------------------Upcoming
      Container(
        color: Color.fromARGB(255, 77, 77, 77),
        child: ListView(
          children: [
            Row(
              children: [
                showMovieCard(context, "assets/upcoming/bulletTrain.jpg",
                    "Bullet Train", bulletTrain()),
                showMovieCard(context, "assets/upcoming/lightyear.jpg",
                    "Lightyear", lightyear()),
              ],
            ),
            Row(
              children: [
                showMovieCard(context, "assets/upcoming/minion.jpg",
                    "Minion: The Rise Of Gru", minions()),
                showMovieCard(context, "assets/upcoming/mysassygirl.jpeg",
                    "My Sassy Girl", mySassyGirl()),
              ],
            ),
            Row(
              children: [
                showMovieCard(
                    context, "assets/upcoming/nope.png", "Nope", nope()),
                showMovieCard(context, "assets/upcoming/pawsofFury.jpg",
                    "Paws Of Fury", pawsOfFury()),
              ],
            ),
            Row(
              children: [
                showMovieCard(context, "assets/upcoming/thor.jpg",
                    "Thor: Love and Thunder", thor()),
                showMovieCard(context, "assets/upcoming/seeformee.jpg",
                    "See For Me", seeForMee()),
              ],
            ),
          ],
        ),
      ),
      Container(
        color: background2,
        child: ListView(
          children: [
            Container(
              height: 500,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/LandingPage.png"))),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                      child: Text(
                    "Rahmat : 1915016025\nFernando Khoryadi : 1915016026\nTigor Imanuel H.S : 1915016030\nFrederic M. Saragih : 1915016045 \nRadi Wirakusumah : 1915016047",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Aplikasi Pembelian Ticket")),
        backgroundColor: background1,
      ),
      drawer: drawerPage(keyAccess.keyEditingController.text),
      body: tabBody.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavbarItems,
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
