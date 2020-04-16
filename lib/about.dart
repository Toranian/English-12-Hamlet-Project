import 'package:flutter/material.dart';
import 'drawer.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

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
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Neumorphic(
            boxShape: NeumorphicBoxShape.roundRect(
              borderRadius: BorderRadius.circular(20.0),
            ),
            style: NeumorphicStyle(
              shape: NeumorphicShape.concave,
              depth: -50.0,
              lightSource: LightSource.topLeft,
              color: Colors.grey[100],
              intensity: 3.0,
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/isaacmorrow.jpg'),
                    radius: 100.0,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    "Isaac Morrow",
                    style: TextStyle(
                        fontSize: 24.0,
                        letterSpacing: 3.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Software Developer",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '\"Hamlet\" is an app created by Isaac Morrow for his English 12 final project on Shakespear\'s play, Hamlet. All code is written by Isaac Morrow in 2020.',
                      style: TextStyle(fontSize: 16.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "Also, Mr. Murphy is cool.",
                    style: TextStyle(fontSize: 10.0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: CustomDrawer(),
    );
  }
}
