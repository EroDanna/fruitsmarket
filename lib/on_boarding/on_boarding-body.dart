// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:demo/constants/custom_bottun.dart';
import 'package:demo/constants/font_manager.dart';
import 'package:demo/constants/dots_indicator.dart';
import 'package:demo/login/login.dart';
import 'package:demo/on_boarding/page_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  List<Map> pageviewitem = [
    {
      "image": "assets/image/pageview1.png",
      "title": "E Shopping",
      "suptitle": "Explore  top organic fruits & grab them"
    },
    {
      "image": "assets/image/pageview2.png",
      "title": "Delivery on the way",
      "suptitle": "Get your order by speed delivery"
    },
    {
      "image": "assets/image/pageview3.png",
      "title": "Delivery Arrived",
      "suptitle": "Order is arrived at your Place"
    },
  ];
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          onPageChanged: (value) {
            pageIndex = value;
            setState(() {});
          },
          controller: pageController,
          physics: BouncingScrollPhysics(),
          children: List.generate(
            pageviewitem.length,
            (index) => CustomPageViewItem(
              image: pageviewitem[index]["image"],
              title: pageviewitem[index]["title"],
              suptitle: pageviewitem[index]["suptitle"],
            ),
          ),
        ),
        Positioned(
          bottom: 188.h,
          right: 150.w,
          left: 150.w,
          child: Myindicator(
            pageIndex: pageIndex,
          ),
        ),
        Visibility(
          visible: pageIndex == 2 ? false : true,
          child: Positioned(
            top: 50.h,
            right: 30.w,
            child: InkWell(
              onTap: () {
                if (pageIndex < 2) {
                  pageIndex++;
                  pageController.animateToPage(pageIndex,
                      duration: Duration(milliseconds: 400),
                      curve: Curves.easeOut);
                } else {
                  goToNextView();
                }
                setState(() {});
              },
              child: Text(
                "Skip",
                style: FontManager(context).headLine3,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 50.h,
          left: 60.w,
          right: 60.w,
          child: MyBottum(
            child: Text(
              pageIndex == 2 ? "Get Started" : "Next",
              style:
                  FontManager(context).headLine3.copyWith(color: Colors.white),
              textAlign: TextAlign.left,
            ),
            onTap: () {
              if (pageIndex < 2) {
                pageIndex++;
                pageController.animateToPage(pageIndex,
                    duration: Duration(milliseconds: 400),
                    curve: Curves.easeOut);
              } else {
                goToNextView();
              }
              setState(() {});
            },
          ),
        ),
      ],
    );
  }

  void goToNextView() {
    Get.to(() => Login(), transition: Transition.fade);
  }
}
