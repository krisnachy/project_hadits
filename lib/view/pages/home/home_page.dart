import 'package:flutter/material.dart';
import 'package:project_hadith/utils/color_helper.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHelper.mainColor,
      body: Center(
        child: Container(
          color: Colors.white,
          child: Text('Berhasil'),
        ),
      ),
    );
  }
}