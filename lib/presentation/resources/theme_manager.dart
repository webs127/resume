import 'package:flutter/material.dart';

class ThemeManager {
  ThemeData selectedTheme = ThemeData();
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: Typography.blackRedmond,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,

    textTheme: Typography.whiteCupertino,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
