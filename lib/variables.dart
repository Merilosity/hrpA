mixin variables {

  static bool analysePressed = false;
  static bool generatePressed = false;
  static bool continueToSurveyPressed = false;
  static bool tryAnotherSamplePressed = false;

  static bool radiologyPressed = false;
  static bool pathologyPressed = false;
  static bool hematologyPressed = true;

  static bool s1Pressed = false;
  static bool s2Pressed = false;
  static bool s3Pressed = false;
  static bool s4Pressed = false;

  static bool anySampleSelected = false;

  static String s_1 = 'assets/images/S-1.png';
  static String s_2 = 'assets/images/S-2.png';
  static String s_3 = 'assets/images/S-3.png';
  static String s_4 = 'assets/images/S-4.png';

  static String p_1 = 'assets/images/P-1.png';
  static String p_2 = 'assets/images/P-2.png';
  static String p_3 = 'assets/images/P-3.png';
  static String p_4 = 'assets/images/P-4.png';

  static String r_1 = 'assets/images/R-1.png';
  static String r_2 = 'assets/images/R-2.png';
  static String r_3 = 'assets/images/R-3.png';
  static String r_4 = 'assets/images/R-4.png';

  static String hButton = 'assets/images/B-Hematology.png';
  static String hButtonPressed = 'assets/images/B-Hematology-Pressed.png';
  static String pButton = 'assets/images/B-Pathology.png';
  static String pButtonPressed = 'assets/images/B-Pathology-Pressed.png';
  static String rButton = 'assets/images/B-Radiology.png';
  static String rButtonPressed = 'assets/images/B-Radiology-Pressed.png';
  static String analysedButton = 'assets/images/B-Analyse.png';
  static String analysedButtonPressed = 'assets/images/B-Analyse-Pressed.png';

  static String questionButton = 'assets/images/B-Question.png';

  static String generateReportButton = 'assets/images/B-Generate-Report.png';
  static String tryAnotherSampleButton = 'assets/images/B-Try-another-Sample.png';
  static String continueToSurvey = 'assets/images/B-Continue-to-Survey.png';

  static String additionalInfoBanner = 'assets/images/Additional-Information-Banner.png';
  static String analysedSampleBanner = 'assets/images/Analysed-Sample-Banner.png';
  static String generatedResultBanner = 'assets/images/Generated-Result-Banner.png';
  static String generatedReportBanner = 'assets/images/Generated-Report-Banner.png';
  static String generatedResultBannerSmall = 'assets/images/Generated-Result-Banner-Small.png';

  static String darkBoxLine = 'assets/images/darkBoxLine.png';
  static String lightBoxLine = 'assets/images/lightBoxLine.png';
  static String greyBox = 'assets/images/greyBox.png';

  /*
  //
  //
  //  GLOBAL FOR NEXT SLIDES
  //
  //
   */

  static bool p_1selected = false;
  static bool p_2selected = false;
  static bool p_3selected = false;
  static bool p_4selected = false;

  static bool h_1selected = false;
  static bool h_2selected = false;
  static bool h_3selected = false;
  static bool h_4selected = false;

  static bool r_1selected = false;
  static bool r_2selected = false;
  static bool r_3selected = false;
  static bool r_4selected = false;

  static String pButtonDisabled = 'assets/images/B-Pathology-Disabled.png';
  static String hButtonDisabled = 'assets/images/B-Hematology-Disabled.png';
  static String rButtonDisabled = 'assets/images/B-Radiology-Disabled.png';

  static String ai_s_1 = 'assets/images/H_AI-1.png';
  static String ai_s_2 = 'assets/images/H_AI-2.png';
  static String ai_s_3 = 'assets/images/H_AI-3.png';
  static String ai_s_4 = 'assets/images/H_AI-4.png';

  static String ai_p_1 = 'assets/images/P_AI-1.png';
  static String ai_p_2 = 'assets/images/P_AI-2.png';
  static String ai_p_3 = 'assets/images/P_AI-3.png';
  static String ai_p_4 = 'assets/images/P_AI-4.png';

  static String ai_r_1 = 'assets/images/R_AI-1.png';
  static String ai_r_2 = 'assets/images/R_AI-2.png';
  static String ai_r_3 = 'assets/images/R_AI-3.png';
  static String ai_r_4 = 'assets/images/R_AI-4.png';

  static String info_h_1 = 'assets/images/info-H-1.png';
  static String info_h_2 = 'assets/images/info-H-2.png';
  static String info_h_3 = 'assets/images/info-H-3.png';
  static String info_h_4 = 'assets/images/info-H-4.png';

  static String info_p_1 = 'assets/images/info-P-1.png';
  static String info_p_2 = 'assets/images/info-P-2.png';
  static String info_p_3 = 'assets/images/info-P-3.png';
  static String info_p_4 = 'assets/images/info-P-4.png';

  static String info_r_1 = 'assets/images/info-R-1.png';
  static String info_r_2 = 'assets/images/info-R-2.png';
  static String info_r_3 = 'assets/images/info-R-3.png';
  static String info_r_4 = 'assets/images/info-R-4.png';


  static void resetVariables() {
    analysePressed = false;
    generatePressed = false;
    continueToSurveyPressed = false;
    tryAnotherSamplePressed = false;

    radiologyPressed = false;
    pathologyPressed = false;
    hematologyPressed = true;

    s1Pressed = false;
    s2Pressed = false;
    s3Pressed = false;
    s4Pressed = false;

    s_1 = 'assets/images/S-1.png';
    s_2 = 'assets/images/S-2.png';
    s_3 = 'assets/images/S-3.png';
    s_4 = 'assets/images/S-4.png';

    p_1selected = false;
    p_2selected = false;
    p_3selected = false;
    p_4selected = false;

    h_1selected = false;
    h_2selected = false;
    h_3selected = false;
    h_4selected = false;

    r_1selected = false;
    r_2selected = false;
    r_3selected = false;
    r_4selected = false;

  }

}