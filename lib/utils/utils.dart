import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle commonTextStyle({
  Color color = Colors.black,
  double fontSize = 12,
  TextDecoration decoration = TextDecoration.none,
  double? lineHeight,
  FontWeight fontWeight = FontWeight.w500,
}) {
  return GoogleFonts.quicksand(
    textStyle: TextStyle(
      color: color,
      height: lineHeight,
      fontWeight: fontWeight,
      fontSize: fontSize,
      letterSpacing: 0.4,
      decoration: decoration,
    ),
  );
}
