// ignore_for_file: prefer_const_constructors, file_names

import 'package:demo/constants/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyNutritionWidget extends StatelessWidget {
  final String text;
  const MyNutritionWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 6.h),
          height: 10.h,
          width: 10.w,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.black),
        ),
        Container(
          margin: EdgeInsets.only(left: 10.w),
          child: Text(
            text,
            style: FontManager(context).headLine2.copyWith(fontSize: 15.sp),
          ),
        )
      ],
    );
  }
}
