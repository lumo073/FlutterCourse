import 'package:flutter/material.dart';
import 'package:finalecom/screen/splashscreen/SplashScreen.dart';
import '../screen/loginscreen/loginscreen.dart';
import '../screen/registerscreen/registerScreen.dart';
import 'package:finalecom/screen/homescreen/custombuttonscreen.dart';

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
        "/home": (context) => const CustomButtonScreen(),
      },
    );
  }
}
