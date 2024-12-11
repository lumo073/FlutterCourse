import 'package:flutter/material.dart';

class GridbuilderScreen extends StatefulWidget {
  const GridbuilderScreen({super.key});

  @override
  State<GridbuilderScreen> createState() => _GridbuilderScreenState();
}

class _GridbuilderScreenState extends State<GridbuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.blue,
            child: Center(
              child: Text("Title $index"),
            ),
          );
        },
      ),
    );
  }
}
