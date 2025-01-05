import 'package:basicdrawerbuttomnavigation/pages/custombottom.dart';
import 'package:basicdrawerbuttomnavigation/pages/firstscreen.dart';
import 'package:basicdrawerbuttomnavigation/pages/forthscreen.dart';
import 'package:basicdrawerbuttomnavigation/pages/gnavsscreen.dart';
import 'package:basicdrawerbuttomnavigation/pages/homescreen.dart';
import 'package:basicdrawerbuttomnavigation/pages/secondscreen.dart';
import 'package:basicdrawerbuttomnavigation/pages/thiidscreen.dart';
import 'package:flutter/material.dart';

class ConstScreen extends StatefulWidget {
  const ConstScreen({super.key});

  @override
  State<ConstScreen> createState() => _ConstScreenState();
}

class _ConstScreenState extends State<ConstScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/custom",
      routes: {
        "/": (context) => const HomeScreenPage(),
        "/gnavs": (context) => const Gnavsscreen(),
        "/first": (context) => const Firstscreen(),
        "/second": (context) => const Secondscreen(),
        "/third": (context) => const Thiidscreen(),
        "/forth": (context) => const Forthscreen(),
        "/custom":(context) => const CustomButtonScreen(),
      },
    );
  }
}
