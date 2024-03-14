import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hrp/SampleSelection.dart';
import 'package:hrp/color_variables.dart';

class Disclaimer extends StatefulWidget {
  const Disclaimer({super.key});

  @override
  State<Disclaimer> createState() => _Disclaimer();
}

class _Disclaimer extends State<Disclaimer> {
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
                    child: Text("Quick Disclaimer:",
                        style: TextStyle(color: color_variables.yellow, fontSize: 39)),
                  ),
                  const Padding(
                    padding:  EdgeInsets.fromLTRB(95,0,80,22),
                    child:  Text("The image algorithm used in this study is highly acclaimed and has been reported to\nhave an accuracy of 97.2% in 93 out of 100 cases.",
                        style: TextStyle(color: color_variables.white_intro_text_small, fontSize: 22)),
                  ),
                  const Padding(
                    padding:  EdgeInsets.fromLTRB(50,0,80,22),
                    child:  Text("GPT-4 has been reported to have an accuracy rate of 99.4% when it comes to\ngenerating accurate analysis reports of samples\nin haematology and pathology.",
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
                          MaterialPageRoute(builder: (context) => SampleSelection()),
                        );
                      });
                    },
                  )
                ],
              ),
            ),
          ),
    );
  }
}