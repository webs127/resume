import 'package:flutter/material.dart';

class ColorManager {
  static Color splash = HexColor.hexString("#16324F");
  static Color white = HexColor.hexString("#FFFFFF");
  static Color black = HexColor.hexString("#000000");
}

extension HexColor on Color {
  static Color hexString(String string) {
    string = string.replaceAll("#", "");
    if (string.length == 6) {
      string = "FF$string";
    }
    return Color(int.parse(string, radix: 16));
  }
}
