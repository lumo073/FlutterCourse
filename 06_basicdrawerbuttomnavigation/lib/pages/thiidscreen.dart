import 'package:flutter/material.dart';

class Thiidscreen extends StatefulWidget {
  const Thiidscreen({super.key});

  @override
  State<Thiidscreen> createState() => _ThiidscreenState();
}

class _ThiidscreenState extends State<Thiidscreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("3rd screen"),
      ),
    );
  }
}
