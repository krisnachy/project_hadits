import 'package:flutter/material.dart';
import 'package:project_hadith/view/splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hadits",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}