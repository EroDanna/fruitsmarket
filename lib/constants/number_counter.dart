// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NumberCounter extends StatefulWidget {
  const NumberCounter({super.key});

  @override
  State<NumberCounter> createState() => _NumberCounterState();
}

class _NumberCounterState extends State<NumberCounter> {
  int number = 1;
  void incrementNumber() {
    setState(() {
      number = number + 1;
    });
  }

  void decrementNumber() {
    setState(() {
      if (number > 1) {
        number = number - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30.h,
          width: 30.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: Colors.black)),
          child: IconButton(
            onPressed: decrementNumber,
            icon: Icon(
              Icons.remove,
              size: 25.r,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10.w),
          width: 20,
          child: Text("$number"),
        ),
        Container(
          height: 30.h,
          width: 30.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: Colors.black)),
          child: IconButton(
            onPressed: incrementNumber,
            icon: Icon(
              Icons.add,
              size: 25.r,
            ),
          ),
        ),
      ],
    );
  }
}
