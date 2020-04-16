import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:route_transitions/route_transitions.dart';

import 'setting.dart';
import 'themes.dart';
import 'about.dart';
import 'characters.dart';
import 'main.dart';

class CustomDrawer extends StatelessWidget {
  final v_p = 10.0;
  final h_p = 15.0;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: Image.asset('assets/crown.png'),
                accountName: Text(
                  "Hamlet",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
                accountEmail: Text(
                  "An English 12 Project",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
                decoration: BoxDecoration(color: Colors.purple),
              ),

              SizedBox(height: 20.0),

              // Characters
              drawerButton(v_p, h_p, 'Characters', context, Characters()),

              // Setting
              drawerButton(v_p, h_p, 'Setting', context, Setting()),
              // Themes
              drawerButton(v_p, h_p, 'Themes', context, Themes()),

              // About
              drawerButton(v_p, h_p, 'About', context, About()),
            ],
          ),
        ],
      ),
    );
  }
}

Padding drawerButton(
  double v_p,
  double h_p,
  String name,
  BuildContext context,
  var route,
) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: h_p, vertical: v_p),
    child: NeumorphicButton(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          name,
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
      onClick: () {
        Navigator.of(context).push(
          PageRouteTransition(
              animationType: AnimationType.slide_right,
              builder: (context) => route),
        );
      },
    ),
  );
}
