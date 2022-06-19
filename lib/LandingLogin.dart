import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa_mobile/Color.dart';
import 'package:pa_mobile/MainPage.dart';
import 'package:pa_mobile/RegisterPage.dart';
import 'package:pa_mobile/LoginProses.dart';
import 'package:pa_mobile/LoginController.dart';

class MyLandingLogin extends StatelessWidget {
  final KeyController accesibleKey = Get.put(KeyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: background1,
        title: Text("Login Page"),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(
            top: 100,
            right: 16,
            left: 16,
          ),
          child: Column(
            children: [
              TextField(
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
                controller: accesibleKey.keyEditingController,
              ),
              Container(
                margin: const EdgeInsets.only(top: 40, bottom: 20),
                child: ElevatedButton(
                  child: Text("Login"),
                  onPressed: () {
                    Get.to(MyLoginProcess());
                  },
                  style: ElevatedButton.styleFrom(
                      primary: tombol2,
                      onPrimary: tombol1,
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 70, vertical: 8),
                      textStyle: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ),
              ElevatedButton(
                child: Text("Register"),
                onPressed: () {
                  Get.to(MyRegisterPage());
                },
                style: ElevatedButton.styleFrom(
                    primary: tombol2,
                    onPrimary: tombol1,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(12),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 60, vertical: 8),
                    textStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
      ),
      backgroundColor: background2,
    );
  }
}
