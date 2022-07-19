import 'package:flutter/material.dart';
import 'package:project_hadith/utils/color_helper.dart';
import 'package:project_hadith/utils/hadist_navbar_icons.dart';
import 'package:project_hadith/view/pages/bookmarks/bookmarks_page.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
                color: ColorHelper.mainDark,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/ic_quran.png'))),
            child: Text(
              'Daily Hadist',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          ListTile(
            leading: const Icon(HadistNavbar.ic_save),
            title: const Text('Bookmarks'),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Bookmarks()))
            },
          ),
          ListTile(
            leading: const Icon(Icons.input),
            title: const Text('Welcome'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.verified_user),
            title: const Text('Profile'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.border_color),
            title: const Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
