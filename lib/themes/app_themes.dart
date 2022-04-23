import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: primary,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        splashFactory: NoSplash.splashFactory,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.grey[850],
      appBarTheme: AppBarTheme(
        color: Colors.blueGrey[900],
      ),
      scaffoldBackgroundColor: Colors.black);
}