import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/gunung_penanggungan.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
