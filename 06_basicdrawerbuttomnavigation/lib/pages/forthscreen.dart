import 'package:flutter/material.dart';

class Forthscreen extends StatefulWidget {
  const Forthscreen({super.key});

  @override
  State<Forthscreen> createState() => _ForthscreenState();
}

class _ForthscreenState extends State<Forthscreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("4th screen"),
      ),
    );
  }
}
