// ignore_for_file: prefer_const_constructors

import 'package:demo/constants/color_maneger.dart';
import 'package:demo/constants/custom_bottun.dart';
import 'package:demo/constants/font_manager.dart';
import 'package:demo/home_page/sector_product_type/my_nutrition_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDetails extends StatelessWidget {
  final String image;
  final String imagename;
  final String price;
  const MyDetails(
      {super.key,
      required this.image,
      required this.imagename,
      required this.price});

  @override
  Widget build(BuildContext context) {
    List nutrition = [
      "Fiber",
      "Potassium",
      "Iron",
      "Magnesium",
      "Vitamin C",
      "Vitamin K",
      "Zinc",
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ColorManeger.maincolor,
        title: Text(
          "DETAILS",
          style: FontManager(context)
              .headLine4
              .copyWith(fontWeight: FontWeight.w500),
        ),
        toolbarHeight: 35.h,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 300.w,
            margin: EdgeInsets.fromLTRB(20.w, 26.h, 20.w, 15.h),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                width: 300.w,
                height: 140.h,
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.w),
            child: Text(
              imagename,
              style: FontManager(context).headLine3.copyWith(fontSize: 18.sp),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30.w, right: 20.w, top: 10.h),
            child: Text(
              "Fruits and veggies: your vitality allies. Packed with nutrients, they bolster immunity, nurture heart health, aid digestion, and shield against chronic ills. Your natural recipe for a thriving life.",
              style: FontManager(context).headLine2.copyWith(
                  fontSize: 15.sp, color: Color.fromARGB(160, 0, 0, 0)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.h, left: 20.w),
            child: Text(
              "Nutrition",
              style: FontManager(context).headLine3.copyWith(fontSize: 20.sp),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.h, left: 20.w),
            height: 180.h,
            child: ListView.builder(
                itemCount: nutrition.length,
                itemBuilder: (context, index) {
                  return MyNutritionWidget(text: nutrition[index]);
                }),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 23.w),
                  child: Text(price),
                ),
                MyBottum(
                  margin: EdgeInsets.only(right: 23.w),
                  width: 130.w,
                  height: 50.h,
                  child: Text(
                    "Buy Now",
                    style: FontManager(context)
                        .headLine2
                        .copyWith(fontSize: 18.sp),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
