import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:walled/configure.dart';
import 'package:walled/home.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingPage();
}

class _LandingPage extends State<Landing> {
  int _selectedIndex = 0;

  _OnTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final screens = [
    Home(),
    Configure(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        // NavBar
        bottomNavigationBar: NavigationBarTheme(
          data: const NavigationBarThemeData(
            indicatorColor: Colors.pinkAccent,
          ),
          child: NavigationBar(
            destinations: const [
              NavigationDestination(
                  icon: Icon(Icons.dashboard_rounded), label: 'Home'),
              NavigationDestination(
                  icon: Icon(Icons.wallpaper_rounded), label: 'Configure'),
            ],
            height: 72,
            selectedIndex: _selectedIndex,
            onDestinationSelected: _OnTap,
          ),
        ),

        //BODY
        body: screens[_selectedIndex]);
  }
}
