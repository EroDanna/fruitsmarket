// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:demo/constants/color_maneger.dart';
import 'package:demo/constants/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MySearchBar extends StatefulWidget {
  const MySearchBar({super.key});

  @override
  _MySearchBarState createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  TextEditingController textController = TextEditingController();
  String searchText = '';
  var value;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: Offset(0, 2),
            blurRadius: 10.r,
            spreadRadius: 5.r,
          ),
        ],
      ),
      padding: EdgeInsets.all(16.0.r),
      child: TextField(
        controller: textController,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          hintText: 'Search...',
          hintStyle: FontManager(context)
              .headLine2
              .copyWith(color: ColorManeger.iconcolor, fontSize: 13.5.sp),
          prefixIcon: Icon(
            Icons.search,
            color: ColorManeger.iconcolor,
          ),
          suffixIcon: IconButton(
            icon: Icon(Icons.clear, color: ColorManeger.iconcolor),
            onPressed: () {
              textController.clear();
              setState(() {
                searchText = '';
              });
            },
          ),
        ),
      ),
    );
  }
}
