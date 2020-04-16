import 'package:flutter/material.dart';

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
        accentColor: Colors.pink[400],
        appBarTheme: AppBarTheme(
          color: Colors.pink[400],
          iconTheme: IconThemeData(color: Colors.white),
        ),
        textTheme: TextTheme(
          body1: TextStyle(fontFamily: 'Apercu'),
        ),
        backgroundColor: Colors.white,
      ),
      home: About(),
    );
  }
}
