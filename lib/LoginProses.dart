import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa_mobile/Color.dart';
import 'package:pa_mobile/LandingLogin.dart';
import 'package:pa_mobile/LoginCard.dart';
import 'package:pa_mobile/ControlPanel.dart';
import 'package:pa_mobile/LoginController.dart';

class MyLoginProcess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference authentication = firestore.collection("accountData");

    final KeyController keyAccess = Get.find();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: background2,
      ),
      body: ListView(
        children: [
          FutureBuilder<QuerySnapshot>(
              future: authentication
                  .where("accountId",
                      isEqualTo: keyAccess.keyEditingController.text)
                  .get(),
              builder: (_, snapshot) {
                return (snapshot.hasData)
                    ? Column(
                        children: snapshot.data!.docs
                            .map((e) => MyLoginCard(e.get("accountId")))
                            .toList())
                    : Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        color: Colors.black,
                      );
              })
        ],
      ),
    );
  }
}
