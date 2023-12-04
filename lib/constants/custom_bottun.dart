import 'package:demo/constants/color_maneger.dart';
import 'package:demo/constants/media_query_maneger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyBottum extends StatelessWidget {
  const MyBottum(
      {super.key,
      this.onTap,
      this.child,
      this.color,
      this.bordercolor,
      this.width,
      this.margin,
      this.height,
      this.padding,
      this.splashheight});
  final VoidCallback? onTap;
  final Widget? child;
  final Color? color;
  final Color? bordercolor;
  final double? width;
  final double? height;
  final double? splashheight;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular((splashheight ?? 20.h) / 2),
      ),
      child: Container(
        padding: padding ?? EdgeInsets.zero,
        margin: margin ?? EdgeInsets.zero,
        height: height ?? 60.h,
        width: width ?? MediaQueryManager(context).fullWidth,
        decoration: BoxDecoration(
          color: color ?? ColorManeger.maincolor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: bordercolor ?? Colors.transparent,
          ),
        ),
        child: Center(child: child),
      ),
    );
  }
}
