import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa_mobile/Color.dart';
import 'package:pa_mobile/ControlPanel.dart';
import 'package:pa_mobile/LoginController.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pa_mobile/ProfilCard.dart';
import 'package:pa_mobile/SettingAccount.dart';
import 'package:pa_mobile/SettingAccount.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final KeyController accessKey = Get.find();
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference accountData = firestore.collection("accountData");

    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      appBar: AppBar(
        title: Text(accessKey.keyEditingController.text),
        backgroundColor: background1,
      ),
      backgroundColor: background2,
      drawer: drawerPage(accessKey.keyEditingController.text),
      body: ListView(
        children: [
          StreamBuilder<QuerySnapshot>(
            stream: accountData
                .where("accountId",
                    isEqualTo: accessKey.keyEditingController.text)
                .snapshots(),
            builder: (_, snapshot) {
              return (snapshot.hasData)
                  ? Column(
                      children: snapshot.data!.docs
                          .map((e) => ProfilCard(
                              e.get("accountId").toString(),
                              e.get("phoneNumber").toString(),
                              e.get("emailAddress")))
                          .toList())
                  : Text("Gak Ada");
            },
          ),
          Column(
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: tombol3),
                onPressed: () {
                  Get.to(MySetting());
                },
                child: const Text('Edit'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
