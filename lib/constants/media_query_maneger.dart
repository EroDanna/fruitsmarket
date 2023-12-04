import 'package:flutter/material.dart';

extension MediaQueryManager on BuildContext {
  double get fullheigth => MediaQuery.of(this).size.height;
  double get fullWidth => MediaQuery.of(this).size.width;
}
