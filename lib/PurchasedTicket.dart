import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa_mobile/Color.dart';
import 'package:pa_mobile/ControlPanel.dart';
import 'package:pa_mobile/database_controller/show_ticket.dart';
import 'package:pa_mobile/LoginController.dart';

class Purchased extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final KeyController accessKey = Get.find();
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference movie = firestore.collection("ticket");
    return Scaffold(
      appBar: AppBar(
        title: Text("History Pembelian Ticket"),
        backgroundColor: background1,
      ),
      drawer: drawerPage(accessKey.keyEditingController.text),
      body: ListView(
        children: [
          StreamBuilder<QuerySnapshot>(
            stream: movie
                .where("foreignKey",
                    isEqualTo: accessKey.keyEditingController.text)
                .snapshots(),
            builder: (_, snapshot) {
              return (snapshot.hasData)
                  ? Column(
                      children: snapshot.data!.docs
                          .map((e) => ShowTicket(
                                e.get('title'),
                                e.get('tempat'),
                                e.get('jam'),
                                e.get('harga'),
                                onDelete: () {
                                  movie.doc(e.id).delete();
                                },
                              ))
                          .toList())
                  : Text("Loading");
            },
          )
        ],
      ),
      backgroundColor: background2,
    );
  }
}
