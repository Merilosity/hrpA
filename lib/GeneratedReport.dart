import 'package:flutter/material.dart';
import 'package:hrp/SampleSelection.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';
import 'ChatSection.dart';
import 'color_variables.dart';
import 'variables.dart';


class GeneratedReport extends StatefulWidget{
  GeneratedReport({super.key});

  @override
  State<StatefulWidget> createState() {
    return _GeneratedReport();
  }

}
final Uri _url = Uri.parse('https://docs.google.com/forms/d/e/1FAIpQLSfUE3RTiOtcJ0QNna_L1g8DbrzaSwDkdJENVrqxouaddzYxow/viewform?usp=sf_link'); ///V2 --> Changed link from 'https://docs.google.com/forms/d/e/1FAIpQLSfUE3RTiOtcJ0QNna_L1g8DbrzaSwDkdJENVrqxouaddzYxow/viewform?usp=sf_link' to 'https://docs.google.com/forms/d/e/1FAIpQLScCLgkn-RfCVUTCQJWpWIr0reiA0HdDPijQtKb5nDIpV0PvQQ/viewform?usp=sf_link'

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}


class _GeneratedReport extends State<GeneratedReport>{
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Material(
      type: MaterialType.transparency,
      child: Container(
        width: screenWidth,
        height: screenHeight,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox( //Top Bar
                width: screenWidth*0.8,
                height: screenHeight * 0.13,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(flex: 1,),
                    Flexible(
                      flex: 5,
                      child: Image.asset(
                      variables.pathologyPressed ? variables.pButtonPressed : variables.pButtonDisabled,
                      fit: BoxFit.contain, // Fixes border issues
                    ),),
                    Flexible(
                      flex: 5,
                      child: Image.asset(
                      variables.radiologyPressed ? variables.rButtonPressed : variables.rButtonDisabled,
                      fit: BoxFit.contain, // Fixes border issues
                    ),),
                    Flexible(
                      flex: 5,
                        child: Image.asset(
                          variables.hematologyPressed ?  variables.hButtonPressed : variables.hButtonDisabled,
                          fit: BoxFit.contain, // Fixes border issues
                        ),),
                    Spacer(flex: 1,)
                  ],
                ),
              ),
              Flexible(
                child: Container( /// INFO IMAGES SECTION
                  height: screenHeight * 0.84,
                  width: screenWidth*0.756,
                  color: color_variables.background_dark,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: screenWidth*0.25,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Image.asset(
                              variables.analysedSampleBanner,
                              fit: BoxFit.contain,
                              width: screenWidth*0.25,
                            ),
                          ),
                          Builder(
                              builder: (context){
                                String imagePath = determineImagePath();
                                return Flexible(
                                  flex: 10,
                                  child: Image.asset(
                                    imagePath,
                                    fit: BoxFit.contain,
                                    width: screenWidth*0.25,
                                    //width: screenWidth*0.25,
                                    //height: screenHeight*0.35
                                  ),
                                );
                              }
                          ),
                          Flexible(
                            flex: 1,
                            child: Image.asset(
                              variables.generatedResultBannerSmall,
                              fit: BoxFit.contain,
                              width: screenWidth*0.25,
                            ),
                          ),
                          Builder(
                              builder: (context) {
                                String assetPath = determineAiAssetPath();
                                return Flexible(
                                  flex: 11,
                                    child: Image.asset(
                                  assetPath,
                                  fit: BoxFit.contain,
                                      width: screenWidth*0.25,
                                  //width: screenWidth*0.50,
                                  //height: double.infinity,
                                ));
                              }
                          ),
                        ],

                      ),
                    ),
                    Container( // BORDER
                      width: screenWidth*0.006,
                      height: double.infinity,
                      color: color_variables.background_dark,
                    ),
                    Expanded( // AI SECTION
                        //color: color_variables.background_dark,
                        child: Stack(
                          children: [
                            SizedBox(
                                width: screenWidth*0.50,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Flexible(
                                    flex: 1,
                                    child: Image.asset(
                                      variables.generatedReportBanner,
                                      fit: BoxFit.contain, // Fixes border issues
                                      width: screenWidth*0.50,
                                    ),
                                  ),
                                  Flexible(
                                    flex: 14,
                                    child: Container(
                                     width: screenWidth*0.50,
                                     height: screenHeight*0.70,
                                    color: Colors.black12,
                                      child: const ChatSection(),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 1,
                                    child: Container( // BORDER
                                      width: screenWidth*0.50,
                                      height: double.infinity,
                                    color: Colors.black26,
                                  ),)
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  width: screenWidth*0.50,
                                  height: screenHeight * 0.74,
                                ),
                                SizedBox(
                                  width: screenWidth*0.50,
                                  height: screenHeight * 0.1,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Flexible(
                                        flex: 5,
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              variables.tryAnotherSamplePressed = true;
                                              variables.resetVariables();
                                              Navigator.push(context, PageTransition(type: PageTransitionType.fade,duration: Duration(milliseconds: 500), child: SampleSelection()),);
                                            });
                                          }, // Image tapped
                                          child: Image.asset(
                                            variables.tryAnotherSampleButton,
                                            fit: BoxFit.contain, // Fixes border issues
                                            width: double.infinity,
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        flex: 5,
                                        child: GestureDetector(
                                          onTap: () {
                                            setState((){
                                              variables.continueToSurveyPressed = true;
                                              _launchUrl();
                                            });
                                          }, // Image tapped
                                          child: Image.asset(
                                            variables.continueToSurvey,
                                            fit: BoxFit.contain, // Fixes border issues
                                            width: double.infinity,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                    )
                  ],
                ),
              ),)
            ],
          ),
        ),
      ),

    );
  }


  String determineAiAssetPath() {
    if (variables.h_1selected) return variables.ai_s_1;
    if (variables.h_2selected) return variables.ai_s_2;
    if (variables.h_3selected) return variables.ai_s_3;
    if (variables.h_4selected) return variables.ai_s_4;

    if (variables.p_1selected) return variables.ai_p_1;
    if (variables.p_2selected) return variables.ai_p_2;
    if (variables.p_3selected) return variables.ai_p_3;
    if (variables.p_4selected) return variables.ai_p_4;

    if (variables.r_1selected) return variables.ai_r_1;
    if (variables.r_2selected) return variables.ai_r_2;
    if (variables.r_3selected) return variables.ai_r_3;
    if (variables.r_4selected) return variables.ai_r_4;
    return '';
  }

  String determineImagePath() {
    if (variables.h_1selected) return variables.s_1;
    if (variables.h_2selected) return variables.s_2;
    if (variables.h_3selected) return variables.s_3;
    if (variables.h_4selected) return variables.s_4;

    if (variables.p_1selected) return variables.p_1;
    if (variables.p_2selected) return variables.p_2;
    if (variables.p_3selected) return variables.p_3;
    if (variables.p_4selected) return variables.p_4;

    if (variables.r_1selected) return variables.r_1;
    if (variables.r_2selected) return variables.r_2;
    if (variables.r_3selected) return variables.r_3;
    if (variables.r_4selected) return variables.r_4;
    return '';
  }


}