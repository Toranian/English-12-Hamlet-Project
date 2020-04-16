import 'package:flutter/material.dart';
import 'drawer.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Apercu',
            fontWeight: FontWeight.bold,
          ),
        ),
        // centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[],
        ),
      ),
      drawer: customDrawer(),
    );
  }
}
