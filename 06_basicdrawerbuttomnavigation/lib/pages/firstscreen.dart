import 'package:flutter/material.dart';

class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("This is a snackbar"),
                  duration: Duration(seconds: 5),
                  backgroundColor: Colors.green,
                ),
              );
            },
            child: const Text("snack bar")),
      ),
    );
  }
}
