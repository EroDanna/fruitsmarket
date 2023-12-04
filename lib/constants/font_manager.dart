// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

extension FontManager on BuildContext {
  TextStyle get headLine1 => Theme.of(this).textTheme.headlineSmall!;
  TextStyle get headLine2 => Theme.of(this).textTheme.headlineMedium!;
  TextStyle get headLine3 => Theme.of(this).textTheme.headlineLarge!;
  TextStyle get headLine4 => Theme.of(this).textTheme.bodyMedium!;
  TextStyle get headLine5 => Theme.of(this).textTheme.bodyLarge!;
}
