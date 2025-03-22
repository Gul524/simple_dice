import 'dart:async';

import 'package:dice/configs/assets.dart';
import 'package:dice/configs/colors.dart';
import 'package:dice/pages/home.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
    });
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          kcPrimary,
          kcSecondary,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Center(
          child: Image.asset(
            Assets.logo,
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
