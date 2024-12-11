import 'package:basic_tiles/pages/gridbuilder.dart';
import 'package:basic_tiles/pages/gridviewscreen.dart';
import 'package:basic_tiles/pages/listbuilders.dart';
import 'package:basic_tiles/pages/liststiles.dart';
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
      initialRoute: "/gridbuilders",
      routes: {
        "/": (context) => const ListsTiles(),
        "/grid": (context) => const GridViewScreen(),
        "/listbuilders": (context) => const ListBuilderScreen(),
        "/gridbuilders": (context) => const GridbuilderScreen(),
      },
    );
  }
}
