import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hrp/SampleSelection.dart';
import 'package:hrp/color_variables.dart';
import 'package:page_transition/page_transition.dart';

class Disclaimer extends StatefulWidget {
  const Disclaimer({super.key});

  @override
  State<Disclaimer> createState() => _Disclaimer();
}

class _Disclaimer extends State<Disclaimer> {
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
              SizedBox(height: screenHeight*0.1,),
              Flexible(
                flex: 5,
                child: Container(
                  height: screenHeight*0.10,
                  padding: const EdgeInsets.all(10),
                  child:  Align(
                    alignment: Alignment.center,
                    child: Text("Disclaimer:\n\n",
                        style: TextStyle(color: color_variables.yellow, fontSize: screenHeight*0.04)),
                  ),
                ),
              ),
              Flexible(
                flex: 5,
                child: Container(
                  height: screenHeight*0.60,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 350,
                    vertical: 20,
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Text("There are a total of 4 distinct Artificial Intelligences used in this study. GPT-4, Mantiscope, Chester AI, and QuPath represent the forefront of artificial intelligence and machine learning in their respective fields, offering unparalleled accuracy and reliability.\n\nGPT-4's language models boast an impressive ability to understand and generate human-like text, with accuracy rates often exceeding 90% in various tasks, making it a trusted partner for content creation and analysis.\n\nMantiscope, specializing in hematology, utilizes advanced imaging techniques to identify and classify blood cells with an accuracy that rivals human experts.\n\nChester AI, a radiology assistant, helps in diagnosing diseases from X-ray images with an accuracy of up to 85%, supporting faster and more reliable decision-making for healthcare professionals.\n\nQuPath, widely used in digital pathology, offers precise analysis of tissue samples, significantly improving the accuracy of cancer diagnosis and research. It's rate of accuracy when trained correctly has been recorded to be over 92%.",
                      style: TextStyle(color: color_variables.white_intro_text_small, fontSize: screenHeight*0.02)),
                ),
              ),
              Flexible(
                flex: 5,
                child: Container(
                  height: screenHeight*0.10,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, PageTransition(type: PageTransitionType.fade,duration: Duration(milliseconds: 500), child: SampleSelection()),);
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