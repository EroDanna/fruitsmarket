// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyRatingBar extends StatefulWidget {
  const MyRatingBar({super.key});

  @override
  State<MyRatingBar> createState() => _MyRatingBarState();
}

class _MyRatingBarState extends State<MyRatingBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.w, top: 10.h),
      child: RatingBar.builder(
          initialRating: 4.5,
          itemCount: 5,
          itemSize: 16.5.r,
          maxRating: 5,
          minRating: 0.5,
          allowHalfRating: true,
          direction: Axis.horizontal,
          itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
          onRatingUpdate: (rating) {}),
    );
  }
}
