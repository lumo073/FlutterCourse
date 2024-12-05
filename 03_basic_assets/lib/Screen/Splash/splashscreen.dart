import 'package:basic_assets/Screen/login/LoginScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 4,
                  color: Colors.red,
                ),
                gradient: const LinearGradient(
                  colors: [
                    Colors.green,
                    Colors.blue,
                    Colors.yellow,
                  ],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  tileMode: TileMode.clamp,
                ),
                // borderRadius: const BorderRadius.all(
                //   Radius.circular(50),
                // ),
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(50),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    offset: Offset(-20, 12),
                    blurStyle: BlurStyle.normal,
                  ),
                ],
              ),
              child: Center(
                child: Image.network(
                  "https://plus.unsplash.com/premium_photo-1733230677536-ebd9121658ce?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwyfHx8ZW58MHx8fHx8",
                  width: 300,
                  height: 300,
                  scale: 10.9,
                ),
              ),
            ),
            const Text(
              "Hamro Shop App",
              style: TextStyle(
                fontSize: 30,
                backgroundColor: Colors.red,
                // decoration: TextDecoration.lineThrough,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset(
              "assets/images/img.jpg",
              width: 150,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
