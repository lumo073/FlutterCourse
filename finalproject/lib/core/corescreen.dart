import 'package:flutter/material.dart';
import 'package:finalproject/screen/splashscreen/SplashScreen.dart';
import 'package:finalproject/screen/loginscreen/loginscreen.dart';
import 'package:finalproject/screen/registerscreen/registerScreen.dart';

class CoreScreen extends StatelessWidget {
  const CoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(
      //   useMaterial3: true,
      // ),
      initialRoute: "/",
      routes: {
        "/": (context) => const SplashScreen(),
        "/login": (context) => const LoginScreen(),
        "/register": (context) => const RegisterScreen(),
      },
    );
  }
}
