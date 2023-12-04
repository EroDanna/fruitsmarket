/* // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:demo/constants/media_query_maneger.dart';
import 'package:demo/constants/number_counter.dart';
import 'package:demo/constants/rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteScreen extends StatelessWidget {
  final Widget? element;
  const FavouriteScreen({super.key, this.element});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50.h,
            margin: EdgeInsets.only(top: 70.h, left: 25.w),
            child: Text("Favourite"),
          ),
          Container(
            color: Colors.white,
            height: context.fullheigth * .826,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/image/Aam papad.png"),
                  Column(
                    children: [
                      Text("data"),
                      Text("data"),
                      MyRatingBar(),
                      NumberCounter(),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
 */