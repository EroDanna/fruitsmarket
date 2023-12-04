// ignore_for_file: prefer_const_constructors

import 'package:demo/constants/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAvatar extends StatelessWidget {
  const MyAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(right: 80.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50.h),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 40.r,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.r),
                      child: Image.asset(
                        "assets/image/account avatar.jpg",
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 7.h),
                  child: Text(
                    "data",
                    style: context.headLine4.copyWith(color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 2.h),
                  child: Text(
                    "data@gmail.com",
                    style: context.headLine2.copyWith(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 50.h),
            child: IconButton(
              splashRadius: 20.r,
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
