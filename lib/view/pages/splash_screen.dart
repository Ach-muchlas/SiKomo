import 'dart:async';

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:sikomo/material_assets/color/colors.dart';
import 'package:sikomo/material_assets/font/typography.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {    
    super.initState();
    // function untuk loading buildDot
    Timer(      
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacementNamed('/Home');
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colour.darkNavy,
        child: Column(
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
                  style: Typograph.regulerItalic.copyWith(color: Colour.cold),
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
      ),
    );
  }
}
