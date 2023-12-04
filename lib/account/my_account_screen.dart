// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:demo/account/widget/avatar_widget.dart';
import 'package:demo/constants/color_maneger.dart';
import 'package:demo/constants/media_query_maneger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAccount extends StatelessWidget {
  MyAccount({super.key});
  List<Map> accountpageitem = [
    {"icon": Icons.shopping_bag, "text": "My Orders"},
    {"icon": Icons.favorite, "text": "Favorite"},
    {"icon": Icons.settings, "text": "Settings"},
    {"icon": Icons.shopping_cart, "text": "My Cart"},
    {"icon": Icons.help, "text": "Help"},
    {"icon": Icons.logout, "text": "Log Out"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyAvatar(),
          Container(
            color: Colors.white,
            height: context.fullheigth * .68,
            child: ListView.builder(
              padding: EdgeInsets.only(),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (_, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  child: ListTile(
                    leading: Icon(
                      accountpageitem[index]["icon"],
                      color: ColorManeger.maincolor,
                      size: 35.r,
                    ),
                    title: Text(accountpageitem[index]["text"]),
                    onTap: () {},
                  ),
                );
              },
              itemCount: accountpageitem.length,
            ),
          )
        ],
      ),
    );
  }
}
