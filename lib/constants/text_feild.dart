// ignore_for_file: prefer_const_constructors

import 'package:demo/constants/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {super.key, required this.text, this.height, this.inputtybe});
  final String text;
  final EdgeInsets? height;
  final TextInputType? inputtybe;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 25),
          child: Text(
            text,
            style: (context).headLine3,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: TextFormField(
            keyboardType: inputtybe ?? TextInputType.text,
            decoration: InputDecoration(
              contentPadding: height ?? EdgeInsets.symmetric(vertical: 19.h),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
