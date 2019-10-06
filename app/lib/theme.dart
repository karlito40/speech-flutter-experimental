import 'package:flutter/material.dart';

// http://mcg.mbitson.com/#!?mcgpalette0=%23232323&mcgpalette1=%234a2632&themename=mcgtheme
const int _primaryColorValue = 0xFF232323;
const Color primaryColor = Color(_primaryColorValue);
const MaterialColor primarySwatch = MaterialColor(
  _primaryColorValue,
  <int, Color>{
    50: Color(0xFFFE5E5E5),
    100: Color(0xFFBDBDBD),
    200: Color(0xFF919191),
    300: Color(0xFF656565),
    400: Color(0xFF444444),
    500: primaryColor,
    600: Color(0xFF1F1F1F),
    700: Color(0xFF1A1A1A),
    800: Color(0xFF151515),
    900: Color(0xFF0C0C0C),
  }
);

const int _secondaryColorValue = 0xFF4A2632;
const Color secondaryColor = Color(_secondaryColorValue);
const MaterialColor secondarySwatch = MaterialColor(
  _primaryColorValue,
  <int, Color>{
      50: Color(0xFFE9E5E6),
      100: Color(0xFFC9BEC2),
      200: Color(0xFFA59399),
      300: Color(0xFF806770),
      400: Color(0xFF654751),
      500: secondaryColor,
      600: Color(0xFF43222D),
      700: Color(0xFF3A1C26),
      800: Color(0xFF32171F),
      900: Color(0xFF220D13),
  }
);

const Color dangerColor = Color(0xFFBE2828);

final ThemeData appTheme = ThemeData(
  primarySwatch: primarySwatch,
  fontFamily: 'PT',
  // see https://vuetifyjs.com/en/styles/typography#font-sizes
  textTheme: TextTheme(
    display2: TextStyle(
      height: 1.35,
      fontFamily: 'Cormorant',
      fontSize: 50,
      fontWeight: FontWeight.normal,
      color: primaryColor
    ),
    display1: TextStyle(fontSize: 38, fontWeight: FontWeight.bold, color: primaryColor),
    body1: TextStyle(fontSize: 18, color: primaryColor),
  )
);


// Crimson
//final ThemeData appTheme = ThemeData(
//  primarySwatch: primarySwatch,
//  fontFamily: 'Crimson',
//  // see https://vuetifyjs.com/en/styles/typography#font-sizes
//  textTheme: TextTheme(
//    display2: TextStyle(
//      height: 1.35,
//      fontFamily: 'Cormorant',
//      fontSize: 50,
//      fontWeight: FontWeight.normal,
//      color: primaryColor
//    ),
//    display1: TextStyle(fontSize: 38, fontWeight: FontWeight.bold, color: primaryColor),
//    body1: TextStyle(fontSize: 20, color: primaryColor),
//  )
//);

