import 'package:final_hackathon/view/Home/homeview.dart';
import 'package:final_hackathon/view/On%20Boarding%20Screen/onBoarding.dart';
import 'package:final_hackathon/view/Profile%20Screen/profileScreen.dart';
import 'package:final_hackathon/view/Sign%20Up%20Screen/signUp.dart';
import 'package:final_hackathon/view/Sign%20in%20Screen/signinview.dart';
import 'package:final_hackathon/view/Splash%20Screen/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => SplashScreen(),
        ),
        GetPage(
          name: '/onBoard',
          page: () => OnBoardPage(),
        ),
        GetPage(
          name: '/signIn',
          page: () => SignIn(),
        ),
        GetPage(
          name: '/SignUp',
          page: () => SignUp(),
        ),
        GetPage(
          name: '/HomeView',
          page: () => HomeView(),
        ),
        GetPage(
          name: '/ProfileScreen',
          page: () => ProfileScreen(),
        ),
        // Add more GetPage entries for additional screens
      ],
    );
  }
}
