import 'package:flutter/material.dart';

import 'appColors/colors.dart';

class CustomTheme {
  static const Color orange = Color.fromRGBO(255, 169, 106, 1);
  static const Color grey = Color(0xffDFDFDF);
  static const cardShadow = [
    BoxShadow(color: grey, blurRadius: 6, spreadRadius: 4, offset: Offset(0, 2))
  ];

  static ThemeData getTheme() {
    Map<String, double> fontSize = {
      "sm": 10,
      "md": 14,
      "lg": 18,
    };

    return ThemeData(
        primaryColor: AppColors.mainColor,

        //Define the default theme font family
        fontFamily: 'DMSans',

        // ignore: prefer_const_constructors
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            toolbarHeight: 70,
            centerTitle: true,
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'DMSans',
                fontSize: fontSize["lg"],
                fontWeight: FontWeight.bold,
                letterSpacing: 4)),
        tabBarTheme: const TabBarTheme(
          labelColor: orange,
          unselectedLabelColor: Colors.black,
        ));

    // ignore: dead_code
    TextTheme(
        headlineLarge: TextStyle(
            color: Colors.black,
            fontSize: fontSize['lg'],
            fontWeight: FontWeight.bold),
        headlineMedium: TextStyle(
            color: Colors.black,
            fontSize: fontSize['md'],
            fontWeight: FontWeight.bold),
        headlineSmall: TextStyle(
            color: Colors.black,
            fontSize: fontSize['sm'],
            fontWeight: FontWeight.bold),
        bodySmall:
            TextStyle(fontSize: fontSize['sm'], fontWeight: FontWeight.normal),
        titleSmall: TextStyle(
            fontSize: fontSize['sm'],
            fontWeight: FontWeight.bold,
            letterSpacing: 1));
  }
}
