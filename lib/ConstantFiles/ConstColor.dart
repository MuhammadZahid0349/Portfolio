import 'dart:ui';

class ConstColor {
  static Color Clogogreen = hexToColor("#71f404");
  static Color Clogoblack = hexToColor("#1b1a1b");

  static Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
