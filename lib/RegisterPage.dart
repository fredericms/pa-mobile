import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pa_mobile/Color.dart';
import 'package:pa_mobile/ControlPanel.dart';
import 'package:pa_mobile/LandingLogin.dart';

class MyRegisterPage extends StatelessWidget {
  final TextEditingController userId = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController emailAddress = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference account = firestore.collection("accountData");

    return Scaffold(
      appBar: AppBar(
        title: Text("Register Page"),
        backgroundColor: background1,
      ),
      body: ListView(
        children: [
          Container(
            margin:
                const EdgeInsets.only(top: 80, bottom: 18, right: 20, left: 20),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.9)),
                fillColor: Colors.white,
                filled: true,
                label: Text(
                  "Masukkan Username",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              controller: userId,
            ),
          ),
          Divider(),
          Container(
            margin: const EdgeInsets.only(bottom: 20, right: 24, left: 24),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.9)),
                fillColor: Colors.white,
                filled: true,
                label: Text(
                  "Masukkan Nomor Handphone",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              controller: phoneNumber,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20, right: 24, left: 24),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.9)),
                fillColor: Colors.white,
                filled: true,
                label: Text(
                  "Masukkan alamt E-Mail",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              controller: emailAddress,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Register"),
                style: ElevatedButton.styleFrom(
                    primary: tombol2,
                    onPrimary: tombol1,
                    padding: EdgeInsets.fromLTRB(30.0, 4.0, 30.0, 4.0),
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                onPressed: () {
                  account.add({
                    "accountId": userId.text,
                    "phoneNumber": phoneNumber.text,
                    "emailAddress": emailAddress.text,
                  });
                  ApplicationAlert(
                      context,
                      "Register Info",
                      "Akun anda berhasil di daftarkan",
                      "OKE",
                      MyLandingLogin());
                  userId.text = "";
                  phoneNumber.text = "";
                },
              ),
            ],
          )
        ],
      ),
      backgroundColor: background2,
    );
  }
}
