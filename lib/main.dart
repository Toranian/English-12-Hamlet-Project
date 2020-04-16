import 'package:flutter/material.dart';
import 'package:hamlet/characters.dart';

import 'setting.dart';
import 'themes.dart';
import 'about.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.purple,
        appBarTheme: AppBarTheme(
          color: Colors.purple,
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 10.0,
        ),
        textTheme: TextTheme(
          body1: TextStyle(),
        ),
        backgroundColor: Colors.white,
      ),
      home: About(),
    );
  }
}
