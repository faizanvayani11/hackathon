import 'dart:async';
// import 'package:final_hackathon/view/OnBoardingScreen/onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () => Get.toNamed('/onBoard'));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3580ff),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("assets/Logo.png"),
          const SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
