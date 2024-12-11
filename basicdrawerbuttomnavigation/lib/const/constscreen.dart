import 'package:basicdrawerbuttomnavigation/pages/homescreen.dart';
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
      initialRoute: "/",
      routes: {
        "/": (context) => const HomeScreenPage(),
      },
    );
  }
}
