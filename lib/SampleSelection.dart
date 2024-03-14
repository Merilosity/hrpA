import 'package:flutter/material.dart';
import 'package:hrp/ImageAnalysis.dart';
import 'package:hrp/color_variables.dart';
import 'variables.dart';
import 'package:page_transition/page_transition.dart';

class SampleSelection extends StatefulWidget {
  const SampleSelection({super.key});

  @override
  State<SampleSelection> createState() {
    return _SampleSelection();
  }
}

class _SampleSelection extends State<SampleSelection> {

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
          child: Container(
            width: screenWidth*0.8,
            color: color_variables.background_dark,
            child: Column(
              children: [
                SizedBox( //Top Bar
                  width: screenWidth*0.8,
                  height: screenHeight*0.13,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(flex: 1,),
                      Flexible(
                        flex: 5,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              variables.pathologyPressed = true;
                              variables.radiologyPressed = false;
                              variables.hematologyPressed = false;

                              variables.s_1 = variables.p_1;
                              variables.s_2 = variables.p_2;
                              variables.s_3 = variables.p_3;
                              variables.s_4 = variables.p_4;

                              variables.s1Pressed = false;
                              variables.s2Pressed = false;
                              variables.s3Pressed = false;
                              variables.s4Pressed = false;
                            });
                          }, // Image tapped
                          child: Image.asset(
                            variables.pathologyPressed ? variables.pButtonPressed : variables.pButton,
                            fit: BoxFit.contain, // Fixes border issues
                            width: screenWidth * 0.32, // Adjust based on screen size
                            height: screenHeight * 0.1,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 5,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              variables.radiologyPressed = true;
                              variables.pathologyPressed = false;
                              variables.hematologyPressed = false;

                              variables.s_1 = variables.r_1;
                              variables.s_2 = variables.r_2;
                              variables.s_3 = variables.r_3;
                              variables.s_4 = variables.r_4;

                              variables.s1Pressed = false;
                              variables.s2Pressed = false;
                              variables.s3Pressed = false;
                              variables.s4Pressed = false;
                            });
                          }, // Image tapped
                          child: Image.asset(
                            variables.radiologyPressed ? variables.rButtonPressed : variables.rButton,
                            fit: BoxFit.contain, // Fixes border issues
                            width: screenWidth * 0.32, // Adjust based on screen size
                            height: screenHeight * 0.1,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 5,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              variables.hematologyPressed = true;
                              variables.radiologyPressed = false;
                              variables.pathologyPressed = false;

                              variables.s_1 = 'assets/images/S-1.png';
                              variables.s_2 = 'assets/images/S-2.png';
                              variables.s_3 = 'assets/images/S-3.png';
                              variables.s_4 = 'assets/images/S-4.png';

                              variables.s1Pressed = false;
                              variables.s2Pressed = false;
                              variables.s3Pressed = false;
                              variables.s4Pressed = false;
                            });
                          }, // Image tapped
                          child: Image.asset(
                            variables.hematologyPressed ?  variables.hButtonPressed : variables.hButton,
                            fit: BoxFit.contain, // Fixes border issues
                            width: screenWidth * 0.32, // Adjust based on screen size
                            height: screenHeight * 0.1,
                          ),
                        ),
                      ),
                      Spacer(flex: 1,)
                    ],
                  ),
                ),
                SizedBox( //S-1 S-2
                  width: screenWidth,
                  height: screenHeight*0.35,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Spacer(flex: 1,),
                      Flexible(
                        flex: 5,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              variables.s1Pressed = true;
                              variables.s2Pressed = false;
                              variables.s3Pressed = false;
                              variables.s4Pressed = false;
                            });
                          }, // Image tapped
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  style: variables.s1Pressed ? BorderStyle.solid : BorderStyle.none,
                                    color: Colors.orange, width: 10
                                )),
                            child: Image.asset(
                              variables.s_1,
                              fit: BoxFit.contain,

                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 5,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              variables.s2Pressed = true;
                              variables.s1Pressed = false;
                              variables.s3Pressed = false;
                              variables.s4Pressed = false;
                            });
                          }, // Image tapped
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    style: variables.s2Pressed ? BorderStyle.solid : BorderStyle.none, color: Colors.orange, width: 10
                                )),
                            child: Image.asset(
                              variables.s_2,
                              fit: BoxFit.contain, // Fixes border issues

                            ),
                          ),
                        ),
                      ),
                      Spacer(flex: 1,)
                    ],
                  ),
                ),
                SizedBox( //S-3 S-4
                  width: screenWidth,
                  height: screenHeight*0.35,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Spacer(flex: 1,),
                      Flexible(
                        flex: 5,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              variables.s3Pressed = true;
                              variables.s1Pressed = false;
                              variables.s2Pressed = false;
                              variables.s4Pressed = false;
                            });
                          }, // Image tapped
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    style: variables.s3Pressed ? BorderStyle.solid : BorderStyle.none, color: Colors.orange, width: 10
                                )),
                            child: Image.asset(
                              variables.s_3,
                              fit: BoxFit.contain, // Fixes border issues
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 5,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              variables.s4Pressed = true;
                              variables.s1Pressed = false;
                              variables.s2Pressed = false;
                              variables.s3Pressed = false;
                            });
                          }, // Image tapped
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    style: variables.s4Pressed ? BorderStyle.solid : BorderStyle.none, color: Colors.orange, width: 10
                                )),
                            child: Image.asset(
                              variables.s_4,
                              fit: BoxFit.contain, // Fixes border issues
                            ),
                          ),
                        ),
                      ),
                      Spacer(flex: 1,)
                    ],
                  ),
                ),
                SizedBox( //Bottom Bar
                  width: screenWidth,
                  height: screenHeight * 0.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Spacer(flex:1),
                      Flexible(
                        flex: 5,
                        child: GestureDetector(
                          onTap: () {
                              setState(() {
                                variables.analysePressed = true;

                                if(variables.s1Pressed && variables.analysePressed && variables.hematologyPressed){
                                  setState(() {
                                    variables.h_1selected = true;
                                  });
                                }else if(variables.s2Pressed && variables.analysePressed && variables.hematologyPressed){
                                  setState(() {
                                    variables.h_2selected = true;
                                  });
                                }else if(variables.s3Pressed && variables.analysePressed && variables.hematologyPressed){
                                  setState(() {
                                    variables.h_3selected = true;
                                  });
                                }else if(variables.s4Pressed && variables.analysePressed && variables.hematologyPressed){
                                  setState(() {
                                    variables.h_4selected = true;
                                  });
                                }else if(variables.s1Pressed && variables.analysePressed && variables.pathologyPressed){
                                  setState(() {
                                    variables.p_1selected = true;
                                  });
                                }else if(variables.s2Pressed && variables.analysePressed && variables.pathologyPressed){
                                  setState(() {
                                    variables.p_2selected = true;
                                  });
                                }else if(variables.s3Pressed && variables.analysePressed && variables.pathologyPressed){
                                  setState(() {
                                    variables.p_3selected = true;
                                  });
                                }else if(variables.s4Pressed && variables.analysePressed && variables.pathologyPressed){
                                  setState(() {
                                    variables.p_4selected = true;
                                  });
                                }else if(variables.s1Pressed && variables.analysePressed && variables.radiologyPressed){
                                  setState(() {
                                    variables.r_1selected = true;
                                  });
                                }else if(variables.s2Pressed && variables.analysePressed && variables.radiologyPressed){
                                  setState(() {
                                    variables.r_2selected = true;
                                  });
                                }else if(variables.s3Pressed && variables.analysePressed && variables.radiologyPressed){
                                  setState(() {
                                    variables.r_3selected = true;
                                  });
                                }else if(variables.s4Pressed && variables.analysePressed && variables.radiologyPressed){
                                  setState(() {
                                    variables.r_4selected = true;
                                  });
                                }
                                Navigator.push(context, PageTransition(type: PageTransitionType.fade,duration: Duration(milliseconds: 500), child: ImageAnalysis()));
                              });
                          }, // Image tapped
                          child: Image.asset(
                            (variables.s1Pressed || variables.s2Pressed || variables.s3Pressed || variables.s4Pressed) ? variables.analysedButtonPressed : variables.analysedButton,
                            fit: BoxFit.fill, // Fixes border issues

                          ),
                        ),
                      ),
                      Spacer(flex: 1,)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}