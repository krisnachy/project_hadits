import 'package:flutter/material.dart';
import 'package:project_hadith/utils/color_helper.dart';
import 'package:project_hadith/view/pages/home/home_page.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final Color navBarColor = ColorHelper.mainColor;
  int selectedIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          HomePage(),
          Container(
            alignment: Alignment.center,
            child: Text("Page 2"),
          ),
          Container(
            alignment: Alignment.center,
            child: Text("Page 3"),
          ),
          Container(
            alignment: Alignment.center,
            child: Text("Page 4"),
          ),
        ],
      ),
      bottomNavigationBar: DecoratedBox(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: Offset(0, 4),
              blurRadius: 8.0)
        ]),
        child: WaterDropNavBar(
            backgroundColor: navBarColor,
            barItems: <BarItem>[
              BarItem(
                filledIcon: Icons.home_rounded,
                outlinedIcon: Icons.home_outlined,
              ),
              BarItem(
                  filledIcon: Icons.phone_android_rounded,
                  outlinedIcon: Icons.phone_android_outlined),
              BarItem(
                filledIcon: Icons.trending_flat_rounded,
                outlinedIcon: Icons.trending_flat_outlined,
              ),
              BarItem(
                  filledIcon: Icons.favorite_rounded,
                  outlinedIcon: Icons.favorite_border_rounded),
            ],
            selectedIndex: selectedIndex,
            onItemSelected: (int index) {
              setState(() {
                selectedIndex = index;
              });
              pageController.animateToPage(selectedIndex,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeOutQuad);
            }),
      ),
    );
  }
}
