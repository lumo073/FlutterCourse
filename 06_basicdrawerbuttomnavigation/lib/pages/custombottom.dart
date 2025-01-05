import 'package:basicdrawerbuttomnavigation/pages/firstscreen.dart';
import 'package:basicdrawerbuttomnavigation/pages/forthscreen.dart';
import 'package:basicdrawerbuttomnavigation/pages/secondscreen.dart';
import 'package:basicdrawerbuttomnavigation/pages/thiidscreen.dart';
import 'package:flutter/material.dart';

class CustomButtonScreen extends StatefulWidget {
  const CustomButtonScreen({super.key});

  @override
  State<CustomButtonScreen> createState() => _CustomButtonScreenState();
}

class _CustomButtonScreenState extends State<CustomButtonScreen> {
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.green,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.label),
            label: "2nd Screen",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "3rd Screen",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "4th Screen",
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
