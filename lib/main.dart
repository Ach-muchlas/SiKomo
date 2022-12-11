import 'package:flutter/material.dart';
import 'package:sikomo/pages/home_screen.dart';
import 'package:sikomo/pages/loading_screen.dart';
import 'package:sikomo/pages/splash_screen.dart';

void main() {
  runApp(const MaterialApp(
      title: 'Sikomo', debugShowCheckedModeBanner: false, home: LoadingScreen()));
}
