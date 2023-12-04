// ignore_for_file: prefer_const_constructors

import 'package:demo/constants/color_maneger.dart';
import 'package:demo/constants/font_manager.dart';
import 'package:demo/constants/rating_bar.dart';
import 'package:demo/home_page/home_page_list/dry_fruits_list.dart';
import 'package:demo/home_page/home_page_list/fruits_lists.dart';
import 'package:demo/home_page/home_page_list/vegetables_list.dart';
import 'package:demo/home_page/sector_product_type/my_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MySectorType extends StatefulWidget {
  const MySectorType({
    super.key,
    required this.image,
    required this.imagename,
    required this.price,
    this.pageIndex,
    this.typeIndex,
    this.index,
  });
  final int? pageIndex;
  final int? index;
  final int? typeIndex;
  final String image;
  final String imagename;
  final String price;

  @override
  State<MySectorType> createState() => _MySectorTypeState();
}

class _MySectorTypeState extends State<MySectorType> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10.w),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              InkWell(
                onTap: () {
                  goToNextView();
                },
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(
                    widget.image,
                    width: 120.w,
                    height: 140.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20.r,
                child: Center(
                  child: IconButton(
                    splashRadius: 25.r,
                    onPressed: () {
                      toggleFavorite();
                    },
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite ? Colors.red : ColorManeger.heartcolor,
                      weight: 50,
                      size: 25.r,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        MyRatingBar(),
        Container(
          margin: EdgeInsets.only(top: 5.h, left: 14.w),
          child: Text(
            widget.imagename,
            style: FontManager(context)
                .headLine3
                .copyWith(fontSize: 17.sp, fontWeight: FontWeight.w400),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 4.h, left: 14.w),
          child: Text(
            widget.price,
            style: FontManager(context).headLine2.copyWith(
                  fontSize: 12.sp,
                ),
          ),
        )
      ],
    );
  }

  void goToNextView() {
    Get.to(
        () => MyDetails(
            image: widget.pageIndex == 0
                ? vegetablestype[widget.typeIndex!][widget.index]["image"]
                : widget.pageIndex == 1
                    ? fruitstype[widget.typeIndex!][widget.index]["image"]
                    : dryfruittype[widget.typeIndex!][widget.index]["image"],
            imagename: widget.pageIndex == 0
                ? vegetablestype[widget.typeIndex!][widget.index]["imagename"]
                : widget.pageIndex == 1
                    ? fruitstype[widget.typeIndex!][widget.index]["imagename"]
                    : dryfruittype[widget.typeIndex!][widget.index]
                        ["imagename"],
            price: widget.pageIndex == 0
                ? vegetablestype[widget.typeIndex!][widget.index]["price"]
                : widget.pageIndex == 1
                    ? fruitstype[widget.typeIndex!][widget.index]["price"]
                    : dryfruittype[widget.typeIndex!][widget.index]["price"]),
        transition: Transition.rightToLeft);
  }

  void favoriteelement() {}
}
