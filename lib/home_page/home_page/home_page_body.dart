// ignore_for_file: prefer_const_constructors

import 'package:demo/constants/color_maneger.dart';
import 'package:demo/constants/custom_bottun.dart';
import 'package:demo/constants/font_manager.dart';
import 'package:demo/constants/media_query_maneger.dart';
import 'package:demo/constants/searchbar.dart';
import 'package:demo/home_page/home_page_list/fruits_lists.dart';
import 'package:demo/home_page/home_page/home_page.dart';
import 'package:demo/home_page/sector_product_type/my_sliverlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  int pageIndex = 0;
  int bottomNavigationBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          leading: SizedBox(),
          toolbarHeight: 78.h,
          backgroundColor: ColorManeger.maincolor,
          pinned: true,
          primary: true,
          title: Container(
            padding: EdgeInsets.only(top: 20.h, right: 45.w),
            child: Center(
              child: Text(
                'Fruit Market',
                style: FontManager(context)
                    .headLine4
                    .copyWith(fontSize: 31.sp, color: Colors.white),
              ),
            ),
          ),
          expandedHeight: 100,
          bottom: PreferredSize(
            preferredSize: Size(
              context.fullWidth,
              50.h,
            ),
            child: MySearchBar(),
          ),
        ),
        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              data.length,
              (index) => Container(
                margin: EdgeInsets.only(top: 15),
                child: MyBottum(
                  height: 33.h,
                  color: pageIndex == index
                      ? ColorManeger.maincolor
                      : Colors.transparent,
                  width: 80.w,
                  child: Text(
                    data[index],
                    style: FontManager(context).headLine2.copyWith(
                          fontSize: pageIndex == index ? 14.sp : 12.sp,
                          color:
                              pageIndex == index ? Colors.white : Colors.black,
                        ),
                  ),
                  onTap: () {
                    setState(() {
                      pageIndex = index;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, typeIndex) {
              return MySliverList(
                pageIndex: pageIndex,
                typeIndex: typeIndex,
              );
            },
            childCount: fruitstype.length,
          ),
        ),
      ],
    );
  }
}
