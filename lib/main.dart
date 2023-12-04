// ignore_for_file: prefer_const_constructors

import 'package:demo/splash/splash_screen.dart';
import 'package:demo/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(FrotMarket());
}

class FrotMarket extends StatelessWidget {
  const FrotMarket({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'First Method',
            theme: ThemeManager.lightTheme,
            home: child,
          );
        },
        child: SplashScreen());
  }
}
