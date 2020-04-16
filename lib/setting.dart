import 'package:flutter/material.dart';
import 'drawer.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Setting",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Apercu',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        // centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[],
        ),
      ),
      drawer: CustomDrawer(),
    );
  }
}
