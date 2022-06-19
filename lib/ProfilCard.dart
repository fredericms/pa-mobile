import 'package:flutter/material.dart';
import 'package:pa_mobile/Color.dart';

class ProfilCard extends StatelessWidget {
  String keyName;
  String keyPhone;
  String keyMail;

  ProfilCard(this.keyName, this.keyPhone, this.keyMail);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Container(
      width: lebar,
      child: Container(
        margin: const EdgeInsets.only(
          top: 90,
          bottom: 20,
        ),
        child: Column(
          children: [
            // Container(
            //   decoration: BoxDecoration(
            //     image: DecorationImage(image: AssetImage('assets/user.png')),
            //   ),
            // ),
            Container(
                child: Text(
              "$keyName",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
            Container(
                child: Text(
              "No HandPhone : $keyPhone",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
            Container(
              child: Text(
                "email : $keyMail",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
