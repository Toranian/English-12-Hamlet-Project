import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'setting.dart';
import 'themes.dart';
import 'about.dart';

Drawer customDrawer() {
  return Drawer(
    child: Column(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "Hamlet",
              ),
              accountEmail: Text("Skeet skeet"),
              decoration: BoxDecoration(color: Colors.pink[400]),
            ),

            SizedBox(height: 50.0),

            // Setting
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: NeumorphicButton(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Setting",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                    textAlign: TextAlign.center,
                  ),
                ),
                style: NeumorphicStyle(
                  // shape: NeumorphicShape.concave,
                  depth: 10,
                  lightSource: LightSource.topLeft,
                  color: Colors.white, intensity: 1.5,
                ),
              ),
            ),

            // Themes
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: NeumorphicButton(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Themes",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                    textAlign: TextAlign.center,
                  ),
                ),
                style: NeumorphicStyle(
                  // shape: NeumorphicShape.concave,
                  depth: 10,
                  lightSource: LightSource.topLeft,
                  color: Colors.white, intensity: 1.5,
                ),
              ),
            ),

            // Characters
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: NeumorphicButton(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Characters",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                    textAlign: TextAlign.center,
                  ),
                ),
                style: NeumorphicStyle(
                  // shape: NeumorphicShape.concave,
                  depth: 10,
                  lightSource: LightSource.topLeft,
                  color: Colors.white, intensity: 1.5,
                ),
              ),
            ),

            // About
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: NeumorphicButton(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "About",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                    textAlign: TextAlign.center,
                  ),
                ),
                style: NeumorphicStyle(
                  // shape: NeumorphicShape.concave,
                  depth: 10,
                  lightSource: LightSource.topLeft,
                  color: Colors.white, intensity: 1.5,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
