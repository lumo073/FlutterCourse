import 'package:flutter/material.dart';

class ListBuilderScreen extends StatefulWidget {
  const ListBuilderScreen({super.key});

  @override
  State<ListBuilderScreen> createState() => _ListBuilderScreenState();
}

class _ListBuilderScreenState extends State<ListBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("Title $index"),
          );
        },
      ),
    );
  }
}
