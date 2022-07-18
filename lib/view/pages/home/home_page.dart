import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_hadith/constant/sdp.dart';
import 'package:project_hadith/utils/color_helper.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: ColorHelper.mainColor,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ));

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(24, 45, 24, 0),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/ic_burger.svg'),
                  Text("Daily Hadist",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.lightBlue)),
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.search,
                      color: ColorHelper.greyColor,
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(left: 24, right: 24, top: 24),
                width: double.infinity,
                height: SDP.sdp(131),
                child: Image.asset('assets/ic_quran.png')),
            ),
            Center(
              child: Container(
                color: Colors.white,
                child: Text('Berhasil'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
