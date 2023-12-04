// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:demo/constants/font_manager.dart';
import 'package:demo/constants/media_query_maneger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../on_boarding/onboarding_screen.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);
    goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(top: 250.h),
        child: Column(
          children: [
            FadeTransition(
              opacity: fadingAnimation!,
              child: Text(
                "Fruit Market",
                style: FontManager(context)
                    .headLine4
                    .copyWith(fontSize: 35.sp, color: Colors.white),
              ),
            ),
            Image.asset(
              "assets/image/splashphoto.png",
              width: MediaQueryManager(context).fullWidth,
              height: 340.h,
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => OnBoarding(), transition: Transition.fade);
    });
  }
}
