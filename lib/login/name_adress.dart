// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:demo/constants/custom_bottun.dart';
import 'package:demo/constants/font_manager.dart';
import 'package:demo/constants/media_query_maneger.dart';
import 'package:demo/constants/text_feild.dart';
import 'package:demo/home_page/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NameAdress extends StatelessWidget {
  const NameAdress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 80.h),
        height: MediaQueryManager(context).fullheigth,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            MyTextField(text: "Enter Your Name"),
            SizedBox(
              height: 30.h,
            ),
            MyTextField(
              text: "Enter Your Phone Number",
              inputtybe: TextInputType.number,
            ),
            SizedBox(
              height: 30.h,
            ),
            MyTextField(
              text: "Add Address",
              height: EdgeInsets.only(top: 100.h),
            ),
            SizedBox(
              height: 30.h,
            ),
            MyBottum(
              width: 300.w,
              child: Text(
                "Continue",
                style: (context).headLine4.copyWith(color: Colors.white),
              ),
              onTap: () => goToNextView(),
            )
          ],
        ),
      ),
    );
  }

  void goToNextView() {
    Get.to(() => HomePage(), transition: Transition.upToDown);
  }
}
