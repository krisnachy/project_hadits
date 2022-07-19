import 'package:flutter/material.dart';
import 'package:project_hadith/utils/color_helper.dart';
import 'package:project_hadith/utils/hadist_navbar_icons.dart';
import 'package:project_hadith/view/pages/bookmarks/bookmarks_page.dart';
import 'package:project_hadith/view/pages/calendar/calendar_page.dart';
import 'package:project_hadith/view/pages/home/home_page.dart';
import 'package:project_hadith/view/pages/home/home_tab.dart';
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
          HomeTab(),
          Calendar(),
          Bookmarks()
        ],
      ),
      bottomNavigationBar: DecoratedBox(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: Offset(0, 4),
              blurRadius: 8.0)
        ]),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(16),
          ),
          child: WaterDropNavBar(
              inactiveIconColor: ColorHelper.greyColor,
              waterDropColor: ColorHelper.mainYellow,
              backgroundColor: navBarColor,
              bottomPadding: 5,
              barItems: <BarItem>[
                BarItem(
                  filledIcon: HadistNavbar.ic_home,
                  outlinedIcon: HadistNavbar.ic_home,
                ),
                BarItem(
                  filledIcon: HadistNavbar.ic_fourth,
                  outlinedIcon: HadistNavbar.ic_fourth,
                ),
                BarItem(
                  filledIcon: Icons.calendar_today_rounded,
                  outlinedIcon: Icons.calendar_month_rounded,
                ),
                BarItem(
                  filledIcon: HadistNavbar.ic_third,
                  outlinedIcon: HadistNavbar.ic_third,
                ),
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
      ),
    );
  }
}
