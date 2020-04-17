import 'package:flutter/material.dart';
import 'package:hamlet/characters.dart';

import 'setting.dart';
import 'themes.dart';
import 'about.dart';
import 'style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: CustomTheme(),
      home: Characters(),
    );
  }
}
