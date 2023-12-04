// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:demo/home_page/home_page_list/dry_fruits_list.dart';
import 'package:demo/home_page/home_page_list/fruits_lists.dart';
import 'package:demo/home_page/home_page_list/vegetables_list.dart';
import 'package:demo/home_page/sector_product_type/my_description.dart';
import 'package:demo/home_page/sector_product_type/my_sector_type.dart';

class MySliverList extends StatelessWidget {
  final int? pageIndex;
  final int? typeIndex;
  const MySliverList({
    super.key,
    this.pageIndex,
    this.typeIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyDescription(
          title: pageIndex == 0
              ? vegetabletitle[typeIndex!]["typetitle"]
              : pageIndex == 1
                  ? fruitstitle[typeIndex!]["typetitle"]
                  : dryfruitstitle[typeIndex!]["typetitle"],
          discount: pageIndex == 0
              ? vegetabletitle[typeIndex!]["discount"]
              : pageIndex == 1
                  ? fruitstitle[typeIndex!]["discount"]
                  : dryfruitstitle[typeIndex!]["discount"],
          description: pageIndex == 0
              ? vegetabletitle[typeIndex!]["description"]
              : pageIndex == 1
                  ? fruitstitle[typeIndex!]["description"]
                  : dryfruitstitle[typeIndex!]["description"],
        ),
        SizedBox(
          height: 215.0.h,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return MySectorType(
                image: pageIndex == 0
                    ? vegetablestype[typeIndex!][index]["image"]
                    : pageIndex == 1
                        ? fruitstype[typeIndex!][index]["image"]
                        : dryfruittype[typeIndex!][index]["image"],
                imagename: pageIndex == 0
                    ? vegetablestype[typeIndex!][index]["imagename"]
                    : pageIndex == 1
                        ? fruitstype[typeIndex!][index]["imagename"]
                        : dryfruittype[typeIndex!][index]["imagename"],
                price: pageIndex == 0
                    ? vegetablestype[typeIndex!][index]["price"]
                    : pageIndex == 1
                        ? fruitstype[typeIndex!][index]["price"]
                        : dryfruittype[typeIndex!][index]["price"],
                index: index,
                pageIndex: pageIndex,
                typeIndex: typeIndex,
              );
            },
          ),
        ),
      ],
    );
  }
}
