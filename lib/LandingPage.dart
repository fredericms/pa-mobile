import 'package:flutter/material.dart';
import 'package:pa_mobile/MainPage.dart';

class MyLandingPage extends StatelessWidget {
  const MyLandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var panjang = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(children: [
        Container(
          width: lebar,
          height: panjang,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 156, 156, 156),
                Color.fromARGB(255, 77, 77, 77),
              ],
            ),
          ),
          child: Column(
            children: [
              Container(
                width: 800,
                height: 600,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/LandingPage.png"))),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                width: 200,
                height: 60,
                child: ElevatedButton(
                  child: Text("Ketuk Untuk Melanjutkan"),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return MyHomePage();
                      }),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
