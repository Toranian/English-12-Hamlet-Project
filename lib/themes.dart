import 'package:flutter/material.dart';
import 'style.dart';

class Themes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Themes",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Apercu',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        // centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: <Widget>[
          GridItem(
            context,
            'skull.png',
            'Death',
            'The theme of death is consistent throughout the play. For most of the play, Hamlet questions the mystery of death and whether or not he should end his life. He believes that life is so cruel already that death seems more appealing. Also, nearly everyone dies. Shakespear enjoys making tragic plays, so this shouldn\'t come as a surprise.',
          ),
          GridItem(
            context,
            'insanity.jpg',
            'Insanity',
            'Near the beginning of the play, Hamlet decides that he shall pretend to be insane so he can get away with crazier acts. However, near the end of the play, it becomes clear that he may not be pretending anymore and may actually be insane. It is unkown if he is truly mad, and is one of the main themes of the play.',
          ),
        ],
      ),
      drawer: CustomDrawer(),
    );
  }
}
