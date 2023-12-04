// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:demo/constants/color_maneger.dart';
import 'package:demo/constants/custom_bottun.dart';
import 'package:demo/constants/font_manager.dart';
import 'package:demo/login/name_adress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  Login({super.key});
  List<Map> bottundata = [
    {
      "image": "assets/image/google.svg",
      "text": "Log In with",
    },
    {
      "image": "assets/image/facebook.svg",
      "text": "Log In with",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 100.h),
                height: 200.h,
                child: Image.asset(
                  "assets/image/login1.png",
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20.h),
              child: Text(
                "Fruit Market",
                style: FontManager(context)
                    .headLine4
                    .copyWith(fontSize: 35.sp, color: ColorManeger.maincolor),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                bottundata.length,
                (index) => Expanded(
                  child: MyBottum(
                    onTap: () => goToNextView(),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.white,
                    bordercolor: ColorManeger.maincolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset(
                          bottundata[index]["image"],
                          height: 35.h,
                          width: 35.w,
                        ),
                        Text(
                          bottundata[index]["text"],
                          style: FontManager(context)
                              .headLine2
                              .copyWith(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void goToNextView() {
    Get.to(() => NameAdress(), transition: Transition.rightToLeft);
  }
}
