import 'package:basic_assets/Screen/register/RegisterScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 75,
                  width: 75,
                  color: Colors.red,
                ),
                Container(
                  height: 75,
                  width: 75,
                  color: Colors.green,
                ),
                Container(
                  height: 75,
                  width: 75,
                  color: Colors.blue,
                ),
                Container(
                  height: 75,
                  width: 75,
                  color: Colors.black,
                ),
                const Icon(
                  Icons.car_crash,
                  color: Colors.red,
                  size: 75,
                ),
                const Icon(
                  Icons.car_crash,
                  color: Colors.red,
                  size: 75,
                ),
                const Icon(
                  Icons.car_crash,
                  color: Colors.red,
                  size: 75,
                ),
                Container(
                  height: 750,
                  width: 75,
                  color: Colors.black,
                ),
                FloatingActionButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ));
                  },
                  child: const Text("Go to Register Page"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
