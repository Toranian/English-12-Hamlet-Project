import 'package:flutter/material.dart';
import 'style.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:route_transitions/route_transitions.dart';

class Characters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Characters",
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
        padding: EdgeInsets.all(8.0),
        crossAxisCount: 2,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: <Widget>[
          GridItem(
            context,
            'hamlet.jpg',
            'Hamlet',
            '''Hamlet is The Prince of Denmark and is the main character and protagonist of the play. Hamlet is the son of Queen Gertrude and the nephew of the current King, Claudius. Throughout the play, it becomes clear that Hamlet is troubled and is unknown to the audience whether or not he is insane, or just playing the part. Hamlet straight up dies in the end.''',
          ),
          GridItem(
            context,
            'claudius.jpg',
            'Claudius',
            'The King of Denmark, Hamlet’s uncle, and the play’s antagonist. Claudius seems to have very little emotion, especially when it comes to his brothers death. The only times he shows true compassion is for his wife, Gertrude.',
          ),
          GridItem(
            context,
            'gertrude.jpg',
            'Gertrude',
            'The Queen of Denmark, Hamlet’s mother, recently married to Claudius. She seeks affection and personal gain more than making her son happy.',
          ),
          GridItem(
            context,
            'polonius.jpg',
            'Polonius',
            'Polonius is the father of Laertes and Ophelia. Polonius gives some popular advice to his son, Laertes before he heads off to university.',
          ),
          GridItem(
            context,
            'horatio.jpg',
            'Horatio',
            'Hamlet\’s closest friend, a scholar who has studied at the University of Wittenberg. Horatio is loyal and helpful to Hamlet throughout the play. After Hamlet’s death, Horatio remains alive to tell Hamlet\’s story.',
          ),
          GridItem(
            context,
            'ophelia.jpg',
            'Ophelia',
            'Polonius’s daughter, a beautiful young woman who Hamlet has fallen in love with. Ophelia is impressionable and easily manipulated, so she was Hamlets first target for his act of insanity.',
          ),
          GridItem(
            context,
            'laertes.png',
            'Laertes',
            'Polonius\'s son and Ophelia\'s brother. Laertes spends most of his time in France during the play.',
          ),
          GridItem(
            context,
            'fortinbras.jpg',
            'Fortinbras',
            'Prince of Norway. His father, Fortinbras was killed by Hamlet\'s father, Hamlet. Fortinbras wants to invade Denmark to avenge his fathers death.',
          ),
        ],
      ),
      drawer: CustomDrawer(),
    );
  }
}
