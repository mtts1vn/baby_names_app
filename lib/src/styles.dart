import 'package:flutter/material.dart';

class Styles {
  static ThemeData materialTheme = ThemeData().copyWith(
    scaffoldBackgroundColor: Colors.grey[100],
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.cyan[500],
      shadowColor: Colors.transparent,
    ),
    primaryColor: Colors.cyan,
  );
}
