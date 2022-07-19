import 'package:flutter/material.dart';
import 'package:project_hadith/utils/color_helper.dart';

class HomeTab extends StatefulWidget {
  HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> with SingleTickerProviderStateMixin {
  bool tapped = false;

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 21),
          child: TabBar(
            unselectedLabelColor: ColorHelper.greyColor,
            labelColor: ColorHelper.mainDark,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 4.0, color: ColorHelper.mainDark),
            ),
            tabs: [
              const Tab(
                text: "Surah",
              ),
              const Tab(
                text: "Para",
              ),
              const Tab(
                text: "Page",
              ),
              const Tab(
                text: "Hijb",
              ),
            ],
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
        ),
        Expanded(
          child: TabBarView(controller: _tabController, children: [
            Text("Surah"),
            Text("Para"),
            Text("Page"),
            Text("Hijb"),
          ]),
        )
      ],
    );
  }
}
