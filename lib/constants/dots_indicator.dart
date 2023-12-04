// ignore_for_file: must_be_immutable, prefer_const_constructors_in_immutables

import 'package:demo/constants/color_maneger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Myindicator extends StatelessWidget {
  int pageIndex;
  Myindicator({
    required this.pageIndex,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      width: 100.w,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          3,
          (index) => Container(
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            height: 10.h,
            width: pageIndex == index ? 15.w : 10.w,
            decoration: BoxDecoration(
              border: Border.all(color: ColorManeger.maincolor),
              color: pageIndex == index
                  ? ColorManeger.maincolor
                  : Colors.transparent,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
