import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:super_shell/pages/home.dart';
import 'package:super_shell/pages/showcase.dart';
import 'package:super_shell/prefabs/widgets/sidebar.dart';

// LandingPage with Sidebar
class LandingPage extends StatefulWidget {
  static void open(BuildContext context) => context.go("/");

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;

  // Pages for navigation
  final List<Widget> _pages = [
    const Home(),
    const Home(),
    const ShowcasePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          SSSidebar(
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            sidebarItems: [
              SideBarItem(iconSelected: Icons.home, text: 'Home'),
              SideBarItem(iconSelected: Icons.build, text: 'Showcase'),
              SideBarItem(iconSelected: Icons.settings, text: 'Settings'),
            ],
            widthSwitch:
                900, // This is an example breakpoint for a responsive layout
          ),
          Expanded(
            child: _pages.elementAt(_selectedIndex),
          ),
        ],
      ),
    );
  }
}
