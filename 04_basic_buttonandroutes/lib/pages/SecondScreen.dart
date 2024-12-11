import 'package:basic_button/pages/ButtonScreen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final String title ;
  const SecondScreen({super.key, required this.title});


  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second screen"),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.abc),
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => const ButtonScreen(),
                ),
              );
            },
          )
        ],
      ),
      body: Center(
        child: Text(widget.title),
      ),
    );
  }
}
