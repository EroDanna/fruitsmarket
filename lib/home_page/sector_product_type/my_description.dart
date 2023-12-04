import 'package:demo/constants/color_maneger.dart';
import 'package:demo/constants/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDescription extends StatelessWidget {
  final String title;
  final String discount;
  final String description;
  const MyDescription(
      {super.key,
      required this.title,
      required this.discount,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20.w),
              child: Text(
                title,
                style: FontManager(context).headLine3,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 80.w),
              child: Text(
                discount,
                style: FontManager(context)
                    .headLine2
                    .copyWith(color: ColorManeger.textpricecolor),
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 7.h, left: 23.w, bottom: 20.h),
          child: Text(
            description,
            style: FontManager(context).headLine2,
          ),
        ),
      ],
    );
  }
}
