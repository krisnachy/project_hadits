import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_hadith/constant/sdp.dart';
import 'package:project_hadith/utils/color_helper.dart';
import 'package:simple_shadow/simple_shadow.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(24, 0, 24, 8),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 45),
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
              SizedBox(
                height: SDP.sdp(24),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Assalamu'alaikum",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: ColorHelper.greyColor),
                ),
              ),
              //TODO change to user name
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Nama Pengguna",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Center(
                child: Container(
                    margin: const EdgeInsets.only(top: 24),
                    width: double.infinity,
                    height: SDP.sdp(131),
                    child: SimpleShadow(
                      child: Image.asset('assets/ic_quran.png'),
                      opacity: 0.5,
                      color: Colors.black, 
                      offset: Offset(2, 2), 
                      sigma: 7,
                    )),
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
      ),
    );
  }
}
