import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register Screen"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Stack(
          children: [
            Image.network(
              "https://m.media-amazon.com/images/I/61M2dtkgEYL._SX679_.jpg",
            ),
            Positioned(
              top: 10,
              right: 0,
              child: Container(
                  child: Icon(
                Icons.star,
                size: 50,
                color: Colors.red,
              )),
            ),
          ],
        ),
      ),
    );
  }
}
