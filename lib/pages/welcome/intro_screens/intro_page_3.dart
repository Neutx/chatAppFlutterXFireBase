import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:firebase_chat/pages/welcome/controller.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.network(
              'https://lottie.host/2c920d7d-3009-4f46-a606-38e994b32aaa/v5iYeBmuZI.json',
            ),
            Center(
              child: Text(
                "Join the Lostify movement today!",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(
              // ignore: avoid_returning_null_for_void
              onPressed: () {
                Get.find<WelcomeController>().handleSignIn();
              }, // Replace with your onPressed function
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                ),
                side: MaterialStateProperty.all(
                  const BorderSide(color: Colors.white),
                ),
              ),
              child: Text("Login"),
            ),
          ],
        ),

      ),
    );
  }
}