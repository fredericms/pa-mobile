import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:pa_mobile/Color.dart';
import 'package:pa_mobile/ControlPanel.dart';
import 'package:pa_mobile/MainPage.dart';
import 'package:pa_mobile/BuyTicketPage.dart';
import 'package:pa_mobile/PurchasedTicket.dart';

class MyLoginCard extends StatelessWidget {
  final String accessKey;

  MyLoginCard(this.accessKey);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: background2,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Text(
                "Selamat Datang di Tix.devc\n$accessKey",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: text1,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              )),
          ElevatedButton(
            child: Icon(
              Icons.arrow_right,
              size: 50,
            ),
            style: ElevatedButton.styleFrom(
              primary: tombol2,
              onPrimary: tombol1,
              padding: EdgeInsets.fromLTRB(40.0, 5.0, 40.0, 5.0),
            ),
            onPressed: () {
              Get.off(MyHomePage());
            },
          )
        ],
      )),
    );
  }
}
