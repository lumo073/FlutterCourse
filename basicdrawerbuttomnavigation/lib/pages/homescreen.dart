import 'package:flutter/material.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Home Screen"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text("Drawer"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.yellow,
        width: 300,
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("Header"),
            ),
            ListTile(
              title: Text("Home"),
            )
          ],
        ),
      ),
    );
  }
}
