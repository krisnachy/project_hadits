import 'package:flutter/material.dart';
import 'dart:async';
import 'package:lottie/lottie.dart';

import 'package:project_hadith/view/pages/home/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final String _versionName = 'V1.0';
  final splashDelay = 5;

  @override
  void initState() {
    super.initState();
    _loadWidget();
  }

  _loadWidget() async {
    var duration = Duration(seconds: splashDelay);
    return Timer(duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Judul Aplikasi'),
                      Lottie.network('https://assets2.lottiefiles.com/packages/lf20_TARZVI.json'),
                      Padding(padding: EdgeInsets.only(top: 10.0))
                    ],
                  ),
                ),
                Expanded(
                    child: Column(
                  children: [
                    CircularProgressIndicator(),
                    Container(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Spacer(),
                        Text(_versionName),
                        Spacer(
                          flex: 4,
                        ),
                        Text('Androing'),
                        Spacer(),
                      ],
                    )
                  ],
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
