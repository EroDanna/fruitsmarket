// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:demo/constants/color_maneger.dart';
import 'package:demo/home_page/home_page/home_page_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List data = [
  "Vegetables ",
  "Fruits",
  "Dry Fruits",
];

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  int bottomNavigationBarIndex = 0;

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.black,
                offset: Offset(0, -.3),
              )
            ],
          ),
          child: BottomNavigationBar(
            onTap: (value) {
              bottomNavigationBarIndex = value;
              setState(() {});
            },
            currentIndex: bottomNavigationBarIndex,
            iconSize: 25,
            selectedIconTheme: IconThemeData(size: 32),
            selectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: ColorManeger.bottomicon,
                ),
                label: "Home Page",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                  color: ColorManeger.bottomicon,
                ),
                label: "Shopping cart",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                  color: ColorManeger.bottomicon,
                ),
                label: "Favorite",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline_rounded,
                  color: ColorManeger.bottomicon,
                ),
                label: "My Account",
              ),
            ],
            selectedLabelStyle: TextStyle(
              color: ColorManeger.bottomicon,
            ),
            unselectedLabelStyle: TextStyle(
              color: ColorManeger.bottomicon,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: HomePageBody());
  }
}
