import 'package:flutter/material.dart';

class AppTheme {
  static const double _titleFontSize = 20;
   // 2.亮色主题
  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.green,
    primaryTextTheme: TextTheme(
      title: TextStyle(
        color: Colors.white,
        fontSize: _titleFontSize
      )
    ),
    textTheme: TextTheme(
      body1: TextStyle(color: Colors.white)
    )
  );
  // 3.暗黑主题
  static final ThemeData darkTheme = ThemeData(
    primaryColor: Colors.black,
    primaryTextTheme: TextTheme(
      title: TextStyle(
        color: Colors.white,
        fontSize: _titleFontSize
      )
    ),
    textTheme: TextTheme(
      title: TextStyle(color: Colors.white),
      body1: TextStyle(color: Colors.white70)
    )
  );
}