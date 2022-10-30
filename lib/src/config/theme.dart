import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  fontFamily: "Circular",
  visualDensity: VisualDensity.adaptivePlatformDensity,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.black,
      elevation: 0,
      minimumSize: const Size(
        double.infinity,
        62,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
    ),
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 41.05,
      color: Colors.black,
    ),
    headline2: TextStyle(
      fontSize: 36.49,
      color: Colors.black,
    ),
    headline3: TextStyle(
      fontSize: 32.44,
      color: Colors.black,
    ),
    headline4: TextStyle(
      fontSize: 28.83,
      color: Colors.black,
      height: 1.4,
    ),
    headline5: TextStyle(
      fontSize: 25.63,
      color: Colors.black,
      height: 1.4,
    ),
    headline6: TextStyle(
      fontSize: 22.78,
      color: Colors.black,
      height: 1.4,
    ),
    subtitle1: TextStyle(
      fontSize: 20.25,
      color: Colors.black,
    ),
    subtitle2: TextStyle(
      fontSize: 18.00,
      color: Colors.black,
    ),
    bodyText1: TextStyle(
      fontSize: 16.00,
      color: Colors.black,
    ),
    bodyText2: TextStyle(
      fontSize: 14.22,
      color: Colors.black,
    ),
    caption: TextStyle(
      fontSize: 12.64,
      color: Colors.black,
    ),
    overline: TextStyle(
      fontSize: 11.24,
      color: Colors.black,
    ),
  ),
);
