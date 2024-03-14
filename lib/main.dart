import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hrp/GeneratedReport.dart';
import 'package:hrp/ImageAnalysis.dart';
import 'package:hrp/SampleSelection.dart';
import 'package:hrp/color_variables.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:page_transition/page_transition.dart';

import 'Introduction.dart';

void main() async{
  await dotenv.load();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
      .then((value) => runApp(const MyApp()));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hrp',
      theme: ThemeData(
        fontFamily: 'RobotoCondensed',
      ),
      home: Introduction(),
    );
  }

}
