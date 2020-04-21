import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:route_transitions/route_transitions.dart';

import 'setting.dart';
import 'themes.dart';
import 'about.dart';
import 'characters.dart';
// import 'main.dart';
// import 'style.dart';

ThemeData CustomTheme() {
  return ThemeData(
    primaryColor: Colors.white,
    accentColor: Colors.blue[300],
    appBarTheme: AppBarTheme(
      color: Colors.blue[300],
      iconTheme: IconThemeData(color: Colors.white),
      elevation: 10.0,
    ),
    textTheme: TextTheme(
      body1: TextStyle(),
    ),
    backgroundColor: Colors.white,
  );
}

Widget GridItem(
    BuildContext context, String imageName, String name, String description) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Hero(
      tag: name,
      child: FlatButton(
        padding: EdgeInsets.all(0.0),
        child: Neumorphic(
          boxShape: NeumorphicBoxShape.roundRect(
            borderRadius: BorderRadius.circular(20.0),
          ),
          style: NeumorphicStyle(
            shape: NeumorphicShape.convex,
            depth: 10.0,
            lightSource: LightSource.top,
            color: Colors.white,
            intensity: 3.0,
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(
                  radius: 65.0,
                  backgroundImage: AssetImage('assets/$imageName'),
                  backgroundColor: Colors.white,
                ),
                SizedBox(height: 5.0),
                Text(
                  name,
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(
            PageRouteTransition(
              animationType: AnimationType.fade,
              builder: (context) => Detail(
                context: context,
                description: description,
                imageName: imageName,
                name: name,
                tag: name,
              ),
            ),
          );
        },
      ),
    ),
  );
}

Widget Detail(
    {BuildContext context,
    String description,
    String imageName,
    String name,
    String tag}) {
  return Scaffold(
    backgroundColor: Colors.grey[100],
    appBar: AppBar(
      title: Text(
        "$name",
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
            borderRadius: BorderRadius.circular(25.0),
          ),
          style: NeumorphicStyle(
            intensity: 10.0,
            depth: 10,
            color: Colors.white,
            shape: NeumorphicShape.convex,
            lightSource: LightSource.top,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Hero(
                      tag: tag,
                      child: CircleAvatar(
                        radius: 150.0,
                        backgroundImage: AssetImage('assets/$imageName'),
                        backgroundColor: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                        fontFamily: 'Apercu',
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        description,
                        style: TextStyle(
                          fontFamily: 'Apercu',
                          fontSize: 18.0,
                          height: 1.5,
                        ),
                        // textAlign: TextAlign.center,
                      ),
                    ),
                  ],
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
