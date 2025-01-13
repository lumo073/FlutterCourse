import 'package:firebaseauths/screen/HomeScreen.dart';
import 'package:firebaseauths/screen/loginScreen.dart';
import 'package:firebaseauths/screen/singupScreen.dart';
import 'package:firebaseauths/screen/splashScreen.dart';
import 'package:flutter/material.dart';

class ConstScreen extends StatelessWidget {
  const ConstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const Loginscreen(),
        '/signup': (context) => const Singupscreen(),
        '/home': (context) => const Homescreen(),
      },
    );
  }
}
