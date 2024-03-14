import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hrp/Disclaimer.dart';
import 'package:hrp/color_variables.dart';
import 'package:url_launcher/url_launcher.dart';

class Introduction extends StatefulWidget {
  const Introduction({super.key});

  @override
  State<Introduction> createState() => _Introduction();
}

class _Introduction extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.transparency,
        child:Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.black,
            child: Container(
              width: 1280,
              height: 823,
              color: color_variables.background_dark,
              child: Column(
                children: [
                   const Padding(
                    padding:  EdgeInsets.fromLTRB(25,50,80,22),
                    child: Text("Welcome!\nThank you for participating in this study!",
                        style: TextStyle(color: color_variables.yellow, fontSize: 39)),
                  ),
                   const Padding(
                    padding:  EdgeInsets.fromLTRB(0,0,80,22),
                    child:  Text("You will be able to choose a sample from three different categories:\n• Pathology\n• Radiology\n• Hematology",
                        style: TextStyle(color: color_variables.white_intro_text_small, fontSize: 22)),
                  ),
                   const Padding(
                    padding:  EdgeInsets.fromLTRB(0,0,80,22),
                    child:  Text("After you have selected your sample you will see an analysis generated\nthrough Artificial Intelligence. Once you have assessed the sample\nyou will be able to read a report that is also generated though\nArtificial Intelligence.",
                        style: TextStyle(color: color_variables.white_intro_text_small, fontSize: 22)),
                  ),
                   const Padding(
                    padding:  EdgeInsets.fromLTRB(55,0,80,22),
                    child:  Text("Once you have looked though the report you will proceed to the questionnaire!",
                        style: TextStyle(color: color_variables.white_intro_text_small, fontSize: 22)),
                  ),
                  IconButton(
                    icon: Image.asset(
                      'assets/images/B-Continue.png',
                    ),
                    // icon: Icon(Icons.add),
                    iconSize: 261,
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Disclaimer()),
                        );
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
    );
  }
}