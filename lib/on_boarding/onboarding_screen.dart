// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'on_boarding-body.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: OnBoardingBody(),
    );
  }
}
