import 'package:flutter/material.dart';
import 'style.dart';
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
          padding: const EdgeInsets.all(15.0),
          child: Neumorphic(
            boxShape: NeumorphicBoxShape.roundRect(
              borderRadius: BorderRadius.circular(20.0),
            ),
            style: NeumorphicStyle(
              shape: NeumorphicShape.convex,
              depth: 10.0,
              lightSource: LightSource.topLeft,
              color: Colors.white,
              intensity: 3.0,
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Neumorphic(
                    boxShape: NeumorphicBoxShape.roundRect(
                      borderRadius: BorderRadius.circular(500.0),
                    ),
                    style: NeumorphicStyle(
                      intensity: 100.0,
                      depth: 50,
                      color: Colors.grey,
                      shape: NeumorphicShape.flat,
                      lightSource: LightSource.topLeft,
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/isaacmorrow.jpg'),
                      radius: 130.0,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Neumorphic(
                    boxShape: NeumorphicBoxShape.roundRect(
                      borderRadius: BorderRadius.circular(500.0),
                    ),
                    style: NeumorphicStyle(
                      intensity: 10.0,
                      depth: 10,
                      color: Colors.white,
                      shape: NeumorphicShape.convex,
                      lightSource: LightSource.topLeft,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 22.0, vertical: 12.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Isaac Morrow",
                            style: TextStyle(
                              fontSize: 24.0,
                              letterSpacing: 2.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Software Developer",
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ],
                      ),
                    ),
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
                    style: TextStyle(fontSize: 16.0),
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
