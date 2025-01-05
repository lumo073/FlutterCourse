import 'package:basicdrawerbuttomnavigation/pages/firstscreen.dart';
import 'package:basicdrawerbuttomnavigation/pages/forthscreen.dart';
import 'package:basicdrawerbuttomnavigation/pages/secondscreen.dart';
import 'package:basicdrawerbuttomnavigation/pages/thiidscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Gnavsscreen extends StatefulWidget {
  const Gnavsscreen({super.key});

  @override
  State<Gnavsscreen> createState() => _GnavsscreenState();
}

class _GnavsscreenState extends State<Gnavsscreen> {
  int _index = 0;

  static const List<Widget> _screen = <Widget>[
    Firstscreen(),
    Secondscreen(),
    Thiidscreen(),
    Forthscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen.elementAt(_index),
      bottomNavigationBar: GNav(
        rippleColor: Colors.grey[300]!,
        hoverColor: Colors.grey[100]!,
        gap: 8,
        activeColor: Colors.black,
        iconSize: 24,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        duration: const Duration(milliseconds: 400),
        tabBackgroundColor: Colors.grey[100]!,
        color: Colors.black,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.label,
            text: 'Likes',
          ),
          GButton(
            icon: Icons.search,
            text: 'Search',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          ),
        ],
        selectedIndex: _index,
        onTabChange: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
