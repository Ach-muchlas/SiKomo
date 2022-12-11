import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sikomo/material_assets/color/colors.dart';
import 'package:sikomo/material_assets/font/typography.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sikomo/pages/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {    
    super.initState();
    Timer(      
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomeScreen()));
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // text icon application
              Text(
                'Si KoMO',
                style: Typograph.title.copyWith(color: Colour.cold),
              ),
              // box               
              Container(
                color: Colour.navy,
                height: 45,
                width: 6,
              ),
              // text application title
              Text(
                'Sistem informasi \n Wisata \n Kota Mojokerto',
                style: Typograph.regulerItalic,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          const SizedBox(
            height: 50.0,
          ),

          // loading effect
          const SpinKitThreeBounce(
            color: Colour.cold,
            size: 25.0,
          )
        ],
      ),
    );
  }
}
