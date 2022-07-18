import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_hadith/utils/color_helper.dart';
import 'package:project_hadith/view/splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: ColorHelper.mainColor,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ));
    
    return const MaterialApp(
      title: "Hadits",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
