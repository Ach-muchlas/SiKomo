import 'package:flutter/material.dart';
import 'package:sikomo/view/coba_widget.dart';
import 'package:sikomo/view/pages/home_screen.dart';
import 'package:sikomo/view/pages/onboarding_screen.dart';
import 'package:sikomo/view/pages/splash_screen.dart';
import 'package:sikomo/view/pages/tour_details_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Sikomo',
      debugShowCheckedModeBanner: false,
      // initialRoute: '/Onboarding',
      // routes: {
      //   '/Onboarding': (context) => const OnBoardingScreen(),
      //   '/Loading' :(context) => const SplashScreen(),
      //   '/Home' :(context) => const HomeScreen(),        
      // },            
      home: HomeScreen(),
    ),
  );
}
