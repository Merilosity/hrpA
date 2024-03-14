import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hrp/GeneratedReport.dart';
import 'color_variables.dart';
import 'variables.dart';
import 'package:hrp/ChatSection.dart';


class ImageAnalysis extends StatefulWidget{
  ImageAnalysis({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ImageAnalysis();
  }

  ChatSection chatSection =  ChatSection();

}

class _ImageAnalysis extends State<ImageAnalysis>{
  bool isLoading = false;

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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Spacer(flex: 1,),
                Flexible(
                  flex: 5,
                  child: Image.asset(
                    variables.pathologyPressed ? variables.pButtonPressed : variables.pButtonDisabled,
                    fit: BoxFit.contain, // Fixes border issues
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: Image.asset(
                    variables.radiologyPressed ? variables.rButtonPressed : variables.rButtonDisabled,
                    fit: BoxFit.contain, // Fixes border issues
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: Image.asset(
                    variables.hematologyPressed ?  variables.hButtonPressed : variables.hButtonDisabled,
                    fit: BoxFit.contain, // Fixes border issues
                  ),
                ),
                Spacer(flex: 1,),
              ],
            ),
          ),
              Flexible(
                child: Container( /// IMAGES SECTION
                  height: screenHeight * 0.84,
                  width: screenWidth*0.756,
                  color: color_variables.background_dark,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        //height: screenHeight*0.8,
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
                                //height: screenHeight * 0.05,
                              ),
                            ),
                            Builder(
                              builder: (context) {
                                String imagePath = determineImagePath();
                                return Flexible(
                                  flex: 10,
                                  child: Image.asset(
                                    imagePath,
                                    fit: BoxFit.contain,
                                    width: screenWidth*0.25,
                                    //height: screenHeight*0.35
                                  ),
                                );
                              },
                            ),
                            Flexible(
                              flex: 1,
                              child: Image.asset(
                                variables.additionalInfoBanner,
                                fit: BoxFit.contain,
                                width: screenWidth*0.25,
                                //height: screenHeight * 0.05,
                              ),
                            ),
                            Builder(
                              builder: (context) {
                                String imagePath = determineInfoPath();
                                return Flexible(
                                  flex: 11,
                                  child: Image.asset(
                                    imagePath,
                                    fit: BoxFit.contain,
                                    width: screenWidth*0.25,
                                    //height: screenHeight*0.35
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Container( // BORDER
                        width: screenWidth*0.006,
                        height: double.infinity,
                        color: color_variables.background_dark,
                      ),
                      Container( /// AI RIGHT SECTION
                          color: color_variables.background_dark,
                        child: Stack(
                          children: [
                            SizedBox(
                              width: screenWidth*0.50,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Flexible(
                                    flex: 1,
                                    child: Image.asset( /// GENERATED RESULT BANNER
                                      variables.generatedResultBanner,
                                      fit: BoxFit.contain, // Fixes border issues
                                      width: screenWidth*0.50,
                                      //height: screenHeight * 0.05,
                                    ),
                                  ),
                                  Flexible( /// AI IMAGE
                                    flex: 14,
                                    child: Builder(
                                      builder: (context) {
                                        String assetPath = determineAiAssetPath();
                                        return Image.asset(
                                          assetPath,
                                          fit: BoxFit.contain,
                                          width: screenWidth*0.50,
                                          height: double.infinity,
                                        );
                                      },
                                    ),
                                  ),
                                  Spacer(flex: 1,)
                                ],
                              ),
                            ),
                            if (isLoading) _buildLoadingOverlay(),
                            Column( /// BOTTOM BAR  WITH OVERLAY
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
                                      Spacer(flex: 1,),
                                      Flexible(
                                        flex: 5,
                                        child: GestureDetector(
                                          onTap: generateReport,
                                          child: Image.asset(
                                            variables.analysedButton,
                                            fit: BoxFit.contain,
                                            width: double.infinity,
                                          ),
                                        ),
                                      ),
                                      Spacer(flex: 1,),
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
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }

  Widget _buildLoadingOverlay() {
    return Positioned.fill(
      child: Container(
        color: Colors.black45,
        child: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.orangeAccent),
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

  String determineInfoPath() {
    if (variables.h_1selected) return variables.info_h_1;
    if (variables.h_2selected) return variables.info_h_2;
    if (variables.h_3selected) return variables.info_h_3;
    if (variables.h_4selected) return variables.info_h_4;

    if (variables.p_1selected) return variables.info_p_1;
    if (variables.p_2selected) return variables.info_p_2;
    if (variables.p_3selected) return variables.info_p_3;
    if (variables.p_4selected) return variables.info_p_4;

    if (variables.r_1selected) return variables.info_r_1;
    if (variables.r_2selected) return variables.info_r_2;
    if (variables.r_3selected) return variables.info_r_3;
    if (variables.r_4selected) return variables.info_r_4;
    return '';
  }

  void generateReport() async {
    setState(() {
      isLoading = true;
      prompt = '';
      variables.generatePressed = true;
    });

    final speech = await openAiService.chatGPTApi(prompt);

    setState(() {
      isLoading = false;
      chatSpeech = speech;
      variables.generatePressed = true;
    });

    if(mounted){
      setState(() {
        Navigator.push(context, MaterialPageRoute(builder: (context) => GeneratedReport()));
      });
    }
    //promptController.clear();
  }

}
