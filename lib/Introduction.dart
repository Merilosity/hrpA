import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hrp/Disclaimer.dart';
import 'package:hrp/SampleSelection.dart';
import 'package:hrp/color_variables.dart';
import 'package:page_transition/page_transition.dart';

class Introduction extends StatefulWidget {
  const Introduction({super.key});

  @override
  State<Introduction> createState() => _Introduction();
}

class _Introduction extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Material(
        type: MaterialType.transparency,
        child:Container(
            width: screenWidth,
            height: screenHeight,
            color: Colors.black,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: screenHeight*0.05,),
                   Flexible(
                     flex: 5,
                     child: Container(
                       height: screenHeight*0.15,
                       padding: const EdgeInsets.all(10),
                       child:  Align(
                         alignment: Alignment.center,
                         child: Text("Welcome!\nThank you for participating in this study!\n\n",
                             style: TextStyle(color: color_variables.yellow, fontSize: screenHeight*0.04)),
                       ),
                     ),
                   ),
                   Flexible(
                     flex: 5,
                     child: Container(
                       height: screenHeight*0.40,
                       margin: const EdgeInsets.symmetric(
                         horizontal: 350,
                         vertical: 20,
                       ),
                       padding: const EdgeInsets.all(10),
                       child: Text("You will be able to choose a sample from three different categories:\n• Pathology\n• Radiology\n• Hematology\n\n\nAfter you have selected your sample you will see an analysis generated through Artificial Intelligence. Once you have assessed the sample you will be able to read a report that is also generated though Artificial Intelligence.\n\nOnce you have looked though the report you will proceed to the questionnaire!",
                           style: TextStyle(color: color_variables.white_intro_text_small, fontSize: screenHeight*0.02)),
                     ),
                   ),
                  Flexible(
                    flex: 5,
                    child: Container(
                      height: screenHeight*0.10,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, PageTransition(type: PageTransitionType.fade,duration: Duration(milliseconds: 500), child: Disclaimer()),); /// V1 --> Change made from Disclaimer() to SampleSelection()
                        },
                        child: Image.asset(
                          'assets/images/B-Continue.png',
                          fit: BoxFit.contain,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}