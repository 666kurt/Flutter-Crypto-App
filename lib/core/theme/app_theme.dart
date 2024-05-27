import 'package:flutter/material.dart';

final app_theme = ThemeData(
  primarySwatch: Colors.indigo,
  dividerColor: Colors.white24,
  scaffoldBackgroundColor: Color.fromRGBO(40, 40, 40, 1),
  appBarTheme: AppBarTheme(
    backgroundColor: Color.fromRGBO(40, 40, 40, 1),
    foregroundColor: Colors.white,
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  textTheme: TextTheme(
    labelSmall: TextStyle(
      color: Colors.white54,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 20,
    ),
  ),
  listTileTheme: ListTileThemeData(iconColor: Colors.white70),
);
