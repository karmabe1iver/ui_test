import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static MaterialColor primaryColor1 = Colors.blue;
  static Color primaryColor2 = const Color.fromRGBO(0, 150, 255, 1);
  static Color yellow= const Color.fromRGBO(242, 183, 84, 1);
  static Color black = const Color.fromRGBO(0,0,0,1);
  static Color white = const Color.fromRGBO(255, 255, 255, 1);
  static Color black2 = const Color.fromRGBO(0, 0, 0, 0.4);




  static TextStyle regularTextStyle(
      {Color? color,
        double? textSize,
        FontWeight? fontWeight,
        double? letterSpacing}) {
    return GoogleFonts.inter(
      color: color ?? Colors.black,
      fontSize: textSize ?? 15,
      fontWeight: fontWeight ?? FontWeight.normal,
      letterSpacing: letterSpacing,
    );
  }static TextStyle italicTextStyle(
      {Color? color,
        double? textSize,
        FontWeight? fontWeight,
        double? letterSpacing}) {
    return TextStyle(
      fontFamily: 'inter',
      color: color ?? Colors.black,
      fontSize: textSize ?? 15,
      fontWeight: fontWeight ?? FontWeight.normal,
      letterSpacing: letterSpacing,
    );
  }
}
