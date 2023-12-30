import 'package:flutter/material.dart';
import 'package:ping_bd_app/utils/theme/custom_theme/text_theme.dart';

class PAppTheme {
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: PTextTheme.lightTextTheme,
      elevatedButtonTheme: ElevatedButtonThemeData());
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: PTextTheme.darkTextTheme,
  );
}
