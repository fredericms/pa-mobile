import 'package:flutter/material.dart';
import 'package:pa_mobile/Color.dart';
import 'package:pa_mobile/ControlPanel.dart';
import 'package:pa_mobile/LoginController.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ReadUpdate extends StatelessWidget {
  String beforeUpdate;
  final Function? updatingData;

  ReadUpdate(this.beforeUpdate, {this.updatingData});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 0, bottom: 30),
        child: Column(
          children: [
            Text(
              "Data sebelum update : $beforeUpdate",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            ElevatedButton(
              child: Text("Update"),
              style: ElevatedButton.styleFrom(primary: tombol3),
              onPressed: () {
                if (updatingData != null) updatingData!();
              },
            )
          ],
        ));
  }
}

class MySetting extends StatelessWidget {
  const MySetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    KeyController accessKey = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting Account"),
        backgroundColor: background1,
      ),
      backgroundColor: background2,
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                  top: 40, bottom: 20, right: 24, left: 24),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: tombol3),
                child: Text("Update Nomor HP"),
                onPressed: () {
                  Get.to(UsernameUpdate());
                },
              ),
            ),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: tombol3),
                child: Text(
                  "Update Email",
                ),
                onPressed: () {
                  Get.to(emailUpdate());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class UsernameUpdate extends StatelessWidget {
  const UsernameUpdate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController updateField = TextEditingController();
    KeyController keyUpdate = Get.find();
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference updating = firestore.collection("accountData");

    return Scaffold(
      appBar: AppBar(
        title: Text("Update Nomor Handphone"),
        backgroundColor: background1,
      ),
      backgroundColor: background2,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(right: 20, left: 20, top: 30, bottom: 30),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.9)),
                fillColor: Colors.white,
                filled: true,
                // label: Text(
                //   "Data baru",
                //   style: TextStyle(
                //       fontSize: 20,
                //       color: Colors.black,
                //       fontWeight: FontWeight.bold),
                // ),
              ),
              controller: updateField,
            ),
          ),
          StreamBuilder<QuerySnapshot>(
            stream: updating
                .where("accountId",
                    isEqualTo: keyUpdate.keyEditingController.text)
                .snapshots(),
            builder: (_, snapshot) {
              return snapshot.hasData
                  ? Column(
                      children: snapshot.data!.docs
                          .map((e) => ReadUpdate(
                                e.get("phoneNumber"),
                                updatingData: () {
                                  updating.doc(e.id).update({
                                    "phoneNumber": updateField.text,
                                  });
                                },
                              ))
                          .toList())
                  : Text("data Tidak ada");
            },
          )
        ],
      ),
    );
  }
}

class emailUpdate extends StatelessWidget {
  const emailUpdate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController updateField = TextEditingController();
    KeyController keyUpdate = Get.find();
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference updating = firestore.collection("accountData");

    return Scaffold(
      appBar: AppBar(
        title: Text("Update Email"),
        backgroundColor: background1,
      ),
      backgroundColor: background2,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(right: 20, left: 20, top: 30, bottom: 30),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.9)),
                fillColor: Colors.white,
                filled: true,
                // label: Text(
                //   "Data baru",
                //   style: TextStyle(fontSize: 20, color: Colors.white),
                // ),
              ),
              controller: updateField,
            ),
          ),
          StreamBuilder<QuerySnapshot>(
            stream: updating
                .where("accountId",
                    isEqualTo: keyUpdate.keyEditingController.text)
                .snapshots(),
            builder: (_, snapshot) {
              return snapshot.hasData
                  ? Column(
                      children: snapshot.data!.docs
                          .map((e) => ReadUpdate(
                                e.get("emailAddress"),
                                updatingData: () {
                                  updating.doc(e.id).update({
                                    "emailAddress": updateField.text,
                                  });
                                },
                              ))
                          .toList())
                  : Text("data Tidak ada");
            },
          )
        ],
      ),
    );
  }
}
