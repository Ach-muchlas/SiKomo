import 'package:flutter/material.dart';

import 'view/pages/home_screen.dart';
import 'view/pages/onboarding_screen.dart';
import 'view/pages/splash_screen.dart';


void main() {
  runApp(
    MaterialApp(
      title: 'Sikomo',
      debugShowCheckedModeBanner: false,      
      initialRoute: '/Onboarding',
      routes: {
        '/Onboarding': (context) => const OnBoardingScreen(),
        '/Loading' :(context) => const SplashScreen(),
        '/Home' :(context) => const HomeScreen(),        
      },            
      // home: HomeScreen(),
    ),
  );
}
