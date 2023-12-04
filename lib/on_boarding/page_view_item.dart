import 'package:demo/constants/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPageViewItem extends StatelessWidget {
  const CustomPageViewItem(
      {super.key,
      required this.image,
      required this.title,
      required this.suptitle});
  final String image;
  final String title;
  final String suptitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 170.h,
        ),
        SizedBox(
          height: 200.h,
          child: Image.asset(image),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          title,
          style: FontManager(context).headLine3,
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          suptitle,
          style: FontManager(context).headLine2,
        ),
      ],
    );
  }
}
