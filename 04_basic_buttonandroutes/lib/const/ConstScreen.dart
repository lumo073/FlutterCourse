import 'package:basic_button/pages/ButtonScreen.dart';
import 'package:basic_button/pages/SecondScreen.dart';
import 'package:flutter/material.dart';

class Constscreen extends StatefulWidget {
  const Constscreen({super.key});

  @override
  State<Constscreen> createState() => _ConstscreenState();
}

class _ConstscreenState extends State<Constscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const ButtonScreen(),
        "/second": (context) => const SecondScreen(
              title: "Blog one shishri",
            )
      },
    );
  }
}
