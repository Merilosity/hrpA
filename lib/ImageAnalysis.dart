import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hrp/GeneratedReport.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';
import 'color_variables.dart';
import 'variables.dart';
import 'package:hrp/ChatSection.dart';
import 'prompts.dart';


class ImageAnalysis extends StatefulWidget{
  ImageAnalysis({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ImageAnalysis();
  }

  ChatSection chatSection =  ChatSection();

}

final Uri hemaSource1 = Uri.parse('');
final Uri hemaSource2 = Uri.parse('');
final Uri hemaSource3 = Uri.parse('');

final Uri patoSource1 = Uri.parse('https://www.nature.com/articles/s41698-024-00499-9');
final Uri patoSource2 = Uri.parse('https://www.nature.com/articles/s41598-017-17204-5');
final Uri patoSource3 = Uri.parse('https://pubmed.ncbi.nlm.nih.gov/34881095/');

final Uri radSource1 = Uri.parse('https://mlmed.org/tools/xray/');
final Uri radSource2 = Uri.parse('https://welovelmc.com/artificial-intelligence/chester-ai-radiology-assistant.htm');
final Uri radSource3 = Uri.parse('https://mila.quebec/en/chester-the-ai-radiology-assistant/');
final Uri radSource4 = Uri.parse('https://arxiv.org/abs/1901.11210');
final Uri radSource5 = Uri.parse('');

Future<void> _launchUrl(source) async {
  if (!await launchUrl(source)) {
    throw Exception('Could not launch $source');
  }
}

class _ImageAnalysis extends State<ImageAnalysis>{
  bool isLoading = false;
  bool infoPressed = false;
  bool infoBoxVisible = false;

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
                            if(infoPressed) _buildInfoBoxOverlay(screenWidth*0.45,screenHeight*0.60, screenWidth*0.05,screenHeight*0.10, screenWidth*0.05,screenHeight*0.15),
                            Stack(
                              children:[
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
                                SizedBox(
                                  width: screenWidth*0.50,
                                  height: screenHeight * 0.80,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: screenWidth*0.50,
                                        height: screenHeight * 0.60,
                                      ),
                                      SizedBox(
                                        width: screenWidth*0.50,
                                        height: screenHeight * 0.10,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            SizedBox(width: screenWidth*0.005,),
                                            GestureDetector(
                                              onTap: (){
                                                setState(() {
                                                  //generateInfoBox();
                                                  infoPressed = !infoPressed;
                                                  /// ^^^^^ V2 --> Changed infoPressed= !inforPressed from active to commented out
                                                });
                                              },
                                              child: Opacity(
                                                opacity: 1,
                                                child: Image.asset(
                                                  variables.questionButton,
                                                  fit: BoxFit.contain,
                                                  width: screenWidth*0.09,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]
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
        child: const Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.orangeAccent),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoBoxOverlay(widthBox, heightBox, l, t, r, b){
    return Positioned.fill(
        child: AnimatedOpacity(
          opacity: infoPressed ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          child: Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(l, t, r, b),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                padding: const EdgeInsets.all(20),
                width: widthBox,
                height: heightBox,
                decoration: BoxDecoration(
                  color: Colors.black87,
                    borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 1.5,
                    color: Colors.white54
                  )
                ),
                child: Builder(
                  builder: (context) {
                    String textString = infoTextPromptMap();
                    return SingleChildScrollView(
                      child: RichText(
                        text: TextSpan(
                          children:[
                            TextSpan(
                              text: textString,
                              style: const TextStyle(
                                color: Colors.white,
                                fontFamily: "Cera Pro",
                              ),
                            ),
                            TextSpan(
                              text: infoTextReference1(),
                              style: const TextStyle(
                                color: Colors.cyan,
                                fontFamily: "Cera Pro",
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = (){_launchUrl(url1Map());}
                            ),
                            TextSpan(
                                text: infoTextReference2(),
                                style: const TextStyle(
                                  color: Colors.cyan,
                                  fontFamily: "Cera Pro",
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = (){_launchUrl(url2Map());}
                            ),
                            TextSpan(
                                text: infoTextReference3(),
                                style: const TextStyle(
                                  color: Colors.cyan,
                                  fontFamily: "Cera Pro",
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = (){_launchUrl(url3Map());}
                            ),
                            TextSpan(
                                text: infoTextReference4(),
                                style: const TextStyle(
                                  color: Colors.cyan,
                                  fontFamily: "Cera Pro",
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = (){_launchUrl(url4Map());}
                            ),
                          ]
                        ),
                      ),
                    );
                  }
                ),
              ),
            ),
          ),
        )
    );
  }

  //void generateInfoBox() async{
   // infoPressed = true;
 // }

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
        Navigator.push(context, PageTransition(type: PageTransitionType.fade,duration: Duration(milliseconds: 500), child: GeneratedReport()));
      });
    }
    //promptController.clear();
  }

   String infoTextPromptMap() {
     if (variables.hematologyPressed) return prompts.hemaInfo;
     if (variables.pathologyPressed) return prompts.patoInfo;
     if (variables.radiologyPressed) return prompts.radInfo;
     return '';
  }

  String infoTextReference1(){
    if (variables.hematologyPressed) return prompts.hemaRef1;
    if (variables.pathologyPressed) return prompts.patoRef1;
    if (variables.radiologyPressed) return prompts.radRef1;
    return '';
  }

  String infoTextReference2(){
    if (variables.pathologyPressed) return prompts.patoRef2;
    if (variables.radiologyPressed) return prompts.radRef2;
    return '';
  }

  String infoTextReference3(){
    if (variables.pathologyPressed) return prompts.patoRef3;
    if (variables.radiologyPressed) return prompts.radRef3;
    return '';
  }

  String infoTextReference4(){
    if (variables.radiologyPressed) return prompts.radRef4;
    return '';
  }

  Uri url1Map() {
    if (variables.hematologyPressed) return hemaSource1;
    if (variables.pathologyPressed) return patoSource1;
    if (variables.radiologyPressed) return radSource1;
   return Uri.parse('');
  }
  Uri url2Map() {
    if (variables.hematologyPressed) return hemaSource2;
    if (variables.pathologyPressed) return patoSource2;
    if (variables.radiologyPressed) return radSource2;
    return Uri.parse('');
  }
  Uri url3Map() {
    if (variables.hematologyPressed) return hemaSource3;
    if (variables.pathologyPressed) return patoSource3;
    if (variables.radiologyPressed) return radSource3;
    return Uri.parse('');
  }
  Uri url4Map() {
    //if (variables.hematologyPressed) return hemaSource4;
    if (variables.radiologyPressed) return radSource4;
    return Uri.parse('');
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

}
