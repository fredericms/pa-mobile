import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pa_mobile/MainPage.dart';
import 'package:pa_mobile/PurchasedTicket.dart';
import 'package:pa_mobile/Color.dart';
import 'package:pa_mobile/ProfilMenu.dart';
import 'package:pa_mobile/LoginController.dart';
import 'package:pa_mobile/LandingLogin.dart';
import 'package:pa_mobile/SettingAccount.dart';
import 'package:pa_mobile/trailer.dart';

Widget drawerPage(String accessKey) {
  return Drawer(
    child: ListView(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.orangeAccent,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                  ),
                  child: Text(
                    accessKey,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home_filled),
          title: Text(
            "Beranda",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            Get.off(MyHomePage());
          },
        ),
        ListTile(
          leading: Icon(Icons.money),
          title: Text(
            "Purchased Movie",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Get.off(Purchased());
          },
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text(
            "Profil",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Get.off(Profil());
          },
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text("Log-Out"),
          onTap: () {
            Get.off(MyLandingLogin());
          },
        )
      ],
    ),
  );
}

Widget showMovieCard(BuildContext context, String namaGambar, String jududlFilm,
    final objectivePage) {
  var lebar = MediaQuery.of(context).size.width;
  return Container(
    margin: EdgeInsets.only(
      top: 15,
      left: 10,
    ),
    child: ElevatedButton(
      child: Container(
        width: (lebar - 100) / 2,
        height: 300,
        decoration: BoxDecoration(color: background2),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 5,
              ),
              width: (lebar - 70) / 2,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(namaGambar)),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 15,
              ),
              width: (lebar - 100) / 2,
              child: Text(
                jududlFilm,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              width: (lebar - 100) / 2,
              child: Text(
                "2D",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            )
          ],
        ),
      ),
      onPressed: () {
        Get.to(objectivePage);
      },
      style: ElevatedButton.styleFrom(
        primary: background2,
      ),
    ),
  );
}

Widget theatreShow(BuildContext context, String namaBioskop) {
  var lebar = MediaQuery.of(context).size.width;
  return Container(
    margin: EdgeInsets.only(
      top: 15,
    ),
    width: lebar,
    height: 80,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), color: Colors.white),
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.only(
            left: 15,
          ),
          padding: EdgeInsets.only(
            left: 15,
          ),
          width: lebar - 90,
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Text(
            namaBioskop,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ElevatedButton(
          child: Container(
            height: 80,
            child: Icon(
              Icons.arrow_right_alt_outlined,
              size: 30,
              color: Colors.green,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
          ),
          onPressed: () {},
        )
      ],
    ),
  );
}

Widget contentDetailMovie(
  BuildContext context,
  String judulFilm,
  String poster1,
  String poster2,
  String synopsis,
  String producer,
  String director,
  String writer,
  String cast,
  String Distributor,
  final tujuanBeli,
  final trailer,
) {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference ticketQueue = firestore.collection("ticket");

  var lebar = MediaQuery.of(context).size.width;
  return Scaffold(
    appBar: AppBar(
      title: Text(judulFilm),
      backgroundColor: background1,
    ),
    body: ListView(
      children: [
        Container(
          decoration: BoxDecoration(color: Color.fromARGB(255, 77, 77, 77)),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: lebar,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(poster1))),
                ),
                Container(
                  width: lebar,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(poster2))),
                )
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Container(
                  width: lebar / 2,
                  child: Text(
                    "BUY TICKET",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                onPressed: () {
                  Get.to(tujuanBeli);
                },
                style: ElevatedButton.styleFrom(
                    primary: tombol2, onPrimary: tombol1),
              ),
              ElevatedButton(
                child: Container(
                  width: lebar / 2,
                  child: Text(
                    "TRAILER",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                onPressed: () {
                  Get.to(trailer);
                },
                style: ElevatedButton.styleFrom(
                    primary: tombol2, onPrimary: tombol1),
              )
            ],
          ),
        ),
        Divider(),
        Container(
          margin: EdgeInsets.only(
            top: 15,
            left: 15,
          ),
          child: Text(
            "SYNOPSIS",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: text1,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 5,
            left: 15,
            right: 15,
          ),
          child: Text(
            synopsis,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 15,
            left: 15,
          ),
          child: Text(
            "Producer :",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: text1),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 5,
            left: 15,
          ),
          child: Text(
            producer,
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 15,
            left: 15,
          ),
          child: Text(
            "Director:",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: text1),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 5,
            left: 15,
          ),
          child: Text(
            director,
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 15,
            left: 15,
          ),
          child: Text(
            "Writer :",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: text1),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 5,
            left: 15,
          ),
          child: Text(
            writer,
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 15,
            left: 15,
          ),
          child: Text(
            "Cast :",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: text1),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 5,
            left: 15,
            right: 15,
          ),
          child: Text(
            cast,
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 15,
            left: 15,
          ),
          child: Text(
            "Distributor:",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: text1),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 5,
            left: 15,
          ),
          child: Text(
            Distributor,
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    ),
    backgroundColor: background2,
  );
}

Widget contentBuyTicket(
    BuildContext context, String judulFilm, String poster1, String poster2) {
  final KeyController accessKey = Get.find();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference ticket = firestore.collection("ticket");
  var lebar = MediaQuery.of(context).size.width;
  return Scaffold(
    appBar: AppBar(
      title: Text(judulFilm),
      backgroundColor: background1,
    ),
    body: ListView(
      children: [
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: lebar,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(poster1))),
                ),
                Container(
                  width: lebar,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(poster2))),
                )
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 5,
                  left: 15,
                ),
                child: Text(
                  judulFilm,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold, color: color1),
                ),
              ),
            ],
          ),
        ),
        Divider(),
        Container(
          width: lebar,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 3.0,
              ),
            ),
          ),
          margin: EdgeInsets.only(
            left: 15,
          ),
          padding: EdgeInsets.only(
            top: 20,
          ),
          child: Text(
            "Big Mall XXI Samarinda",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: text1),
          ),
        ),
        Container(
          width: lebar,
          height: 100,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 3.0,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                child: Text("12:00"),
                onPressed: () {
                  ticket.add({
                    "foreignKey": accessKey.keyEditingController.text,
                    "title": judulFilm,
                    "tempat": "Big Mall XXI",
                    "jam": "12.00",
                    "harga": "50.000"
                  });
                  ApplicationAlert(context, "Berhasil",
                      "Berhasil Membeli Ticket", "OKE", MyHomePage());
                },
                style: ElevatedButton.styleFrom(
                    primary: tombol2, onPrimary: tombol1),
              ),
              ElevatedButton(
                child: Text("13:00"),
                onPressed: () {
                  ticket.add({
                    "foreignKey": accessKey.keyEditingController.text,
                    "title": judulFilm,
                    "tempat": "Big Mall XXI",
                    "jam": "13.00",
                    "harga": "50.000"
                  });
                  ApplicationAlert(context, "Berhasil",
                      "Berhasil Membeli Ticket", "OKE", MyHomePage());
                },
                style: ElevatedButton.styleFrom(
                    primary: tombol2, onPrimary: tombol1),
              ),
              ElevatedButton(
                child: Text("15:00"),
                onPressed: () {
                  ticket.add({
                    "foreignKey": accessKey.keyEditingController.text,
                    "title": judulFilm,
                    "tempat": "Big Mall XXI",
                    "jam": "15.00",
                    "harga": "50.000"
                  });
                  ApplicationAlert(context, "Berhasil",
                      "Berhasil Membeli Ticket", "OKE", MyHomePage());
                },
                style: ElevatedButton.styleFrom(
                    primary: tombol2, onPrimary: tombol1),
              ),
              ElevatedButton(
                child: Text("16:00"),
                onPressed: () {
                  ticket.add({
                    "foreignKey": accessKey.keyEditingController.text,
                    "title": judulFilm,
                    "tempat": "Big Mall XXI",
                    "jam": "16.00",
                    "harga": "50.000"
                  });
                  ApplicationAlert(context, "Berhasil",
                      "Berhasil Membeli Ticket", "OKE", MyHomePage());
                },
                style: ElevatedButton.styleFrom(
                    primary: tombol2, onPrimary: tombol1),
              ),
            ],
          ),
        ),
        Divider(),
        Container(
          width: lebar,
          margin: EdgeInsets.all(15),
          child: Text(
            "Samarinda Square XXI Samarinda",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: text1),
          ),
        ),
        Container(
          width: lebar,
          height: 100,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 3.0,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                child: Text("12:00"),
                onPressed: () {
                  ticket.add({
                    "foreignKey": accessKey.keyEditingController.text,
                    "title": judulFilm,
                    "tempat": "Samarinda Square XXI",
                    "jam": "12.00",
                    "harga": "50.000"
                  });
                  ApplicationAlert(context, "Berhasil",
                      "Berhasil Membeli Ticket", "OKE", MyHomePage());
                },
                style: ElevatedButton.styleFrom(
                    primary: tombol2, onPrimary: tombol1),
              ),
              ElevatedButton(
                child: Text("13:00"),
                onPressed: () {
                  ticket.add({
                    "foreignKey": accessKey.keyEditingController.text,
                    "title": judulFilm,
                    "tempat": "Samarinda Square XXI",
                    "jam": "13.00",
                    "harga": "50.000"
                  });
                  ApplicationAlert(context, "Berhasil",
                      "Berhasil Membeli Ticket", "OKE", MyHomePage());
                },
                style: ElevatedButton.styleFrom(
                    primary: tombol2, onPrimary: tombol1),
              ),
              ElevatedButton(
                child: Text("15:00"),
                onPressed: () {
                  ticket.add({
                    "foreignKey": accessKey.keyEditingController.text,
                    "title": judulFilm,
                    "tempat": "Samarinda Square XXI",
                    "jam": "15.00",
                    "harga": "50.000"
                  });
                  ApplicationAlert(context, "Berhasil",
                      "Berhasil Membeli Ticket", "OKE", MyHomePage());
                },
                style: ElevatedButton.styleFrom(
                    primary: tombol2, onPrimary: tombol1),
              ),
              ElevatedButton(
                child: Text("16:00"),
                onPressed: () {
                  ticket.add({
                    "foreignKey": accessKey.keyEditingController.text,
                    "title": judulFilm,
                    "tempat": "Samarinda Square XXI",
                    "jam": "16.00",
                    "harga": "50.000"
                  });
                  ApplicationAlert(context, "Berhasil",
                      "Berhasil Membeli Ticket", "OKE", MyHomePage());
                },
                style: ElevatedButton.styleFrom(
                    primary: tombol2, onPrimary: tombol1),
              ),
            ],
          ),
        ),
        Divider(),
        Container(
          width: lebar,
          margin: EdgeInsets.all(15),
          child: Text(
            "SCP XXI Samarinda",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: text1),
          ),
        ),
        Container(
          width: lebar,
          height: 100,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 3.0,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                child: Text("12:00"),
                onPressed: () {
                  ticket.add({
                    "foreignKey": accessKey.keyEditingController.text,
                    "title": judulFilm,
                    "tempat": "SCP XXI",
                    "jam": "12.00",
                    "harga": "50.000"
                  });
                  ApplicationAlert(context, "Berhasil",
                      "Berhasil Membeli Ticket", "OKE", MyHomePage());
                },
                style: ElevatedButton.styleFrom(
                    primary: tombol2, onPrimary: tombol1),
              ),
              ElevatedButton(
                child: Text("13:00"),
                onPressed: () {
                  ticket.add({
                    "foreignKey": accessKey.keyEditingController.text,
                    "title": judulFilm,
                    "tempat": "SCP XXI",
                    "jam": "13.00",
                    "harga": "50.000"
                  });
                  ApplicationAlert(context, "Berhasil",
                      "Berhasil Membeli Ticket", "OKE", MyHomePage());
                },
                style: ElevatedButton.styleFrom(
                    primary: tombol2, onPrimary: tombol1),
              ),
              ElevatedButton(
                child: Text("15:00"),
                onPressed: () {
                  ticket.add({
                    "foreignKey": accessKey.keyEditingController.text,
                    "title": judulFilm,
                    "tempat": "SCP XXI",
                    "jam": "15.00",
                    "harga": "50.000"
                  });
                  ApplicationAlert(context, "Berhasil",
                      "Berhasil Membeli Ticket", "OKE", MyHomePage());
                },
                style: ElevatedButton.styleFrom(
                    primary: tombol2, onPrimary: tombol1),
              ),
              ElevatedButton(
                child: Text("16:00"),
                onPressed: () {
                  ticket.add({
                    "foreignKey": accessKey.keyEditingController.text,
                    "title": judulFilm,
                    "tempat": "SCP XXI",
                    "jam": "16.00",
                    "harga": "50.000"
                  });
                  ApplicationAlert(context, "Berhasil",
                      "Berhasil Membeli Ticket", "OKE", MyHomePage());
                },
                style: ElevatedButton.styleFrom(
                    primary: tombol2, onPrimary: tombol1),
              ),
            ],
          ),
        ),
      ],
    ),
    backgroundColor: background2,
  );
}

Future<dynamic> ApplicationAlert(BuildContext context, String judulAlert,
    String contentAlert, String kataAksi, final tujuanAlert) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(judulAlert),
          content: Text(
            contentAlert,
            textAlign: TextAlign.center,
          ),
          actions: [
            TextButton(
              child: Text(kataAksi),
              onPressed: () {
                Get.off(tujuanAlert);
              },
            )
          ],
        );
      });
}

// Detail Upcoming
Widget contentDetailUpcoming(BuildContext context, String judulFilm,
    String poster1, String poster2, String synopsis, final trailer) {
  var lebar = MediaQuery.of(context).size.width;
  return Scaffold(
    appBar: AppBar(
      title: Text(judulFilm),
      backgroundColor: background1,
    ),
    body: ListView(
      children: [
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: lebar,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(poster1))),
                ),
                Container(
                  width: lebar,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(poster2))),
                )
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Container(
                  width: lebar / 2,
                  child: Text(
                    "TRAILER",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                onPressed: () {
                  Get.to(trailer);
                },
                style: ElevatedButton.styleFrom(
                    primary: tombol2, onPrimary: tombol1),
              )
            ],
          ),
        ),
        Divider(),
        Container(
          margin: EdgeInsets.only(
            top: 15,
            left: 15,
          ),
          child: Text(
            "SYNOPSIS",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: text1,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 5,
            left: 15,
            right: 15,
          ),
          child: Text(
            synopsis,
            textAlign: TextAlign.justify,
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 15,
            left: 15,
          ),
          child: Text(
            "Available Soon",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: text1),
          ),
        ),
      ],
    ),
    backgroundColor: background2,
  );
}
