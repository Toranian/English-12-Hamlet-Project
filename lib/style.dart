import 'package:flutter/material.dart';

ThemeData CustomTheme() {
  return ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.blue[300],
        appBarTheme: AppBarTheme(
          color: Colors.blue[300],
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 10.0,
        ),
        textTheme: TextTheme(
          body1: TextStyle(),
        ),
        backgroundColor: Colors.white,
      );
}