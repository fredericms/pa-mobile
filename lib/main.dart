import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pa_mobile/LandingPage.dart';
import 'package:pa_mobile/MainPage.dart';
import 'package:get/get.dart';
import 'package:pa_mobile/SplashScrean.dart';
import 'package:pa_mobile/LandingLogin.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false, 
        home: SplashScreen());
  }
}
