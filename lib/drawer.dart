import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:route_transitions/route_transitions.dart';

import 'setting.dart';
import 'themes.dart';
import 'about.dart';
import 'characters.dart';
import 'main.dart';
import 'style.dart';

class CustomDrawer extends StatelessWidget {
  final v_p = 10.0;
  final h_p = 15.0;
  ThemeData theme = CustomTheme();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            decoration: BoxDecoration(color: theme.accentColor),
          ),

          // SizedBox(height: 20.0),

          // Characters
          drawerButton(v_p, h_p, 'Characters', context, Characters(),
              Icons.accessibility_new),

          // Setting
          drawerButton(
              v_p, h_p, 'Setting', context, Setting(), Icons.nature_people),

          // Themes
          drawerButton(
              v_p, h_p, 'Themes', context, Themes(), Icons.offline_bolt),

          Divider(
            thickness: 2.0,
          ),
          // About
          drawerButton(v_p, h_p, 'About', context, About(), Icons.help_outline),
        ],
      ),
    );
  }
}

Container drawerButton(double v_p, double h_p, String name,
    BuildContext context, var route, var icon) {
  ThemeData theme = CustomTheme();

  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
    child: FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              size: 30.0,
              color: Colors.grey[700],
            ),
            SizedBox(width: 15.0),
            Text(
              name,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
      highlightColor: theme.accentColor,
      splashColor: theme.accentColor,
      onPressed: () {
        Navigator.of(context).push(
          PageRouteTransition(
            animationType: AnimationType.slide_right,
            builder: (context) => route,
          ),
        );
      },
    ),
  );
}
