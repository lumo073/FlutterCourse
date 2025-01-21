import 'package:flutter/material.dart';
import 'cartpage/cartScreen.dart';
import 'homepage/homescreen.dart';
import 'searchpage/searchscreen.dart';
import 'settingpage/settingscreen.dart';

class CustomButtonScreen extends StatefulWidget {
  const CustomButtonScreen({super.key});

  @override
  State<CustomButtonScreen> createState() => _CustomButtonScreenState();
}

class _CustomButtonScreenState extends State<CustomButtonScreen> {
  int _index = 0;

  static const List<Widget> _screen = <Widget>[
    HomeScreen(),
    SearchScreen(),
    CartScreen(),
    SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.blue,
        selectedFontSize: 16,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Products",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
