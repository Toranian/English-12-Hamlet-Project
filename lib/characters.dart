import 'package:flutter/material.dart';
import 'drawer.dart';
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
          CharacterItem(
            context,
            'hamlet.jpg',
            'Hamlet',
            'The Prince of Denmark, the title character, and the protagonist. About thirty years old at the start of the play, Hamlet is the son of Queen Gertrude and the late King Hamlet, and the nephew of the present king, Claudius. Hamlet is melancholy, bitter, and cynical, full of hatred for his uncle’s scheming and disgust for his mother’s sexuality. A reflective and thoughtful young man who has studied at the University of Wittenberg, Hamlet is often indecisive and hesitant, but at other times prone to rash and impulsive acts.',
          ),
          CharacterItem(
            context,
            'claudius.jpg',
            'Claudius',
            'The King of Denmark, Hamlet’s uncle, and the play’s antagonist. The villain of the play, Claudius is a calculating, ambitious politician, driven by his sexual appetites and his lust for power, but he occasionally shows signs of guilt and human feeling—his love for Gertrude, for instance, seems sincere.',
          ),
          CharacterItem(
            context,
            'gertrude.jpg',
            'Gertrude',
            'The Queen of Denmark, Hamlet’s mother, recently married to Claudius. Gertrude loves Hamlet deeply, but she is a shallow, weak woman who seeks affection and status more urgently than moral rectitude or truth.',
          ),
          CharacterItem(
            context,
            'polonius.jpg',
            'Polonius',
            'The Lord Chamberlain of Claudius’s court, a pompous, conniving old man. Polonius is the father of Laertes and Ophelia.',
          ),
          CharacterItem(
            context,
            'horatio.jpg',
            'Horatio',
            '	Hamlet’s close friend, who studied with the prince at the university in Wittenberg. Horatio is loyal and helpful to Hamlet throughout the play. After Hamlet’s death, Horatio remains alive to tell Hamlet’s story.',
          ),
          CharacterItem(
            context,
            'ophelia.jpg',
            'Ophelia',
            'Polonius’s daughter, a beautiful young woman with whom Hamlet has been in love. Ophelia is a sweet and innocent young girl, who obeys her father and her brother, Laertes. Dependent on men to tell her how to behave, she gives in to Polonius’s schemes to spy on Hamlet. Even in her lapse into madness and death, she remains maidenly, singing songs about flowers and finally drowning in the river amid the flower garlands she had gathered.',
          ),
          
        ],
      ),
      drawer: CustomDrawer(),
    );
  }
}

Widget CharacterItem(
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
                  backgroundImage:
                      AssetImage('assets/images/characters/$imageName'),
                ),
                SizedBox(height: 5.0),
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
              ],
            ),
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(
            PageRouteTransition(
              animationType: AnimationType.fade,
              builder: (context) => CharacterDetail(
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

Widget CharacterDetail(
    {BuildContext context,
    String description,
    String imageName,
    String name,
    String tag}) {
  return Scaffold(
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
                      backgroundImage:
                          AssetImage('assets/images/characters/$imageName'),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    description,
                    style: TextStyle(
                      // fontFamily: 'Apercu',
                      fontSize: 16.0,
                    ),
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.fade,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
    drawer: CustomDrawer(),
  );
}
