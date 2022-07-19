import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_hadith/utils/color_helper.dart';

class Bookmarks extends StatefulWidget {
  Bookmarks({Key? key}) : super(key: key);

  @override
  State<Bookmarks> createState() => _BookmarksState();
}

class _BookmarksState extends State<Bookmarks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: SvgPicture.asset('assets/ic_burger.svg'),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: Text("Bookmarks",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.lightBlue)),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24.0),
            child: Icon(
              Icons.search,
              color: ColorHelper.greyColor,
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              Icon(Icons.create_new_folder_outlined),
              Text("Add new collection"),
              SvgPicture.asset("assets/ic_burger_triplet.svg")
            ],
          )
        ],
      ),
    );
  }
}