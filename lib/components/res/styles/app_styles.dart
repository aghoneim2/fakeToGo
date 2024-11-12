import 'package:flutter/material.dart';

Color _primaryColor = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = _primaryColor;
  static Color bgColor = const Color(0xFFEEEDF2);
  static Color textColor = const Color(0xFF3b3b3b);
  static TextStyle textStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: textColor);

  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 21,
    color: textColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headLineStyle3 = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
}
