import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StFuls extends StatefulWidget {
  const StFuls({super.key});

  @override
  State<StFuls> createState() => _StFulsState();
}

class _StFulsState extends State<StFuls> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const Text(
                "Hello World",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.red,
                ),
              ),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.poppins(),
                  children: [
                    TextSpan(
                      text: "Hello",
                      style: GoogleFonts.getFont(
                        "Lato",
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.red,
                      ),
                    ),
                    const TextSpan(
                      text: "World",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                "Hello World",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.red,
                ),
              ),
              ElevatedButton(onPressed: () {}, child: const Text("Click me"))
            ],
          ),
        ),
      ),
    );
  }
}
