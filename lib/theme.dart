import 'package:flutter/material.dart';

final ThemeData critterCompanionTheme = ThemeData(
  // Color set for this app
  // primary 4B8887 (teal)
  // accent 02233D (dark blue)
  // alert BC4749 (tomato)
  // alert light E6AACE (light pink)
  // light background EFEEDA (pale lime)
  primaryColor: const Color(0xFF4B8887),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF4B8887),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 24,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: Color(0xFF4B8887),
    unselectedItemColor: Colors.grey,
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: const Color(0xFF4B8887),
      side: const BorderSide(width: 2, color: Color(0xFF4B8887)),
    ),
  ),
  filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
    backgroundColor: const Color(0xFF02233D),
  )),
);
