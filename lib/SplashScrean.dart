import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa_mobile/Color.dart';
import 'package:pa_mobile/LandingLogin.dart';
import 'package:pa_mobile/LandingPage.dart';
// import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:page_transition/page_transition.dart';

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({Key? key}) : super(key: key);

//   @overridew
//   Widget build(BuildContext context) {
//     return AnimatedSplashScreen(
//         splash: Column(
//           children: [Image.asset('asset/LandingPage.png')],
//         ),
//         backgroundColor: background2,
//         nextScreen: MyLandingPage(),
//         splashIconSize: 250,
//         duration: 3000,
//         splashTransition: SplashTransition.fadeTransition,
//         pageTransitionType: PageTransitionType.leftToRightWithFade,
//         animationDuration: const Duration(seconds: 1));
//   }
// }

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashScreenStart();
  }

  splashScreenStart() {
    var logoTime = Duration(seconds: 3);
    return Timer(logoTime, () {
      Get.off(MyLandingLogin());
    });
  }

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: lebar,
            height: tinggi,
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
                  margin: EdgeInsets.only(top: 150),
                  // child: Image(
                  //   image: new Image.network(
                  // 'https://drive.google.com/file/d/1sp8gXoj0ueHbvf5WgcWe5rEHoehyFDSv/view?usp=sharing'),
                  // image: ('assets/logoPa.gif'),
                  // ),
                  // child: new Column(
                  //   children: <Widget>[
                  //     // new Text("Hayok bisaaa"),
                  //     new Image.network(
                  //         'https://media.giphy.com/media/3m1Z1aH0c00tYl7iKs/giphy.gif'),
                  //   ],
                  // ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/LandingPage.png"))),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
