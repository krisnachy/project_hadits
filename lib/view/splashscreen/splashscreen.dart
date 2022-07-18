import 'package:flutter/material.dart';
import 'dart:async';
import 'package:lottie/lottie.dart';
import 'package:project_hadith/constant/sdp.dart';

import 'package:project_hadith/view/pages/home/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final String _versionName = 'V1.0';
  final splashDelay = 5;
  double value = 0;

  @override
  void initState() {
    super.initState();
    _loadWidget();
    Timer.periodic(Duration(milliseconds: 200), (timer) {
      setState(() {
        value = value + 0.1;
      });
    });
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
    SDP.init(context);
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: InkWell(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Hadist Harian'),
                    Container(
                      height: SDP.sdp(430),
                      width: SDP.sdp(314),
                      margin: EdgeInsets.fromLTRB(
                          SDP.sdp(30), SDP.sdp(10), SDP.sdp(30), 0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(SDP.sdp(20)))),
                      child: Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.none,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: Lottie.asset('assets/splashscreen.json')),
                          Positioned(
                            bottom: -25,
                            child: Container(
                              height: SDP.sdp(50),
                              width: SDP.sdp(155),
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(SDP.sdp(30))),
                                child: LinearProgressIndicator(
                                  value: value,
                                  color: Colors.amber,
                                  backgroundColor: Color(0xffD6D6D6),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Column(
                children: [
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
          ),
        ),
      ),
    );
  }
}
