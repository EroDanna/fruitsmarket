import 'package:demo/constants/color_maneger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeManager {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: ColorManeger.maincolor,
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontFamily: 'Poppins',
        color: Colors.black,
        fontWeight: FontWeight.w300,
        fontSize: 8.sp,
      ),
      headlineMedium: TextStyle(
          fontFamily: 'Poppins',
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 12.sp),
      headlineLarge: TextStyle(
        fontFamily: 'Poppins',
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 16.sp,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Poppins',
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 20.sp,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Poppins',
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 24.sp,
      ),
    ),
  );
}
