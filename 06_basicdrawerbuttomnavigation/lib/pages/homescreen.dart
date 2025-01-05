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
        title: const Text("Home Screen"),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text("Drawer"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.yellow,
        width: 300,
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text("Shishir Bhandari"),
              accountEmail: Text(
                "shishir@gmail.com",
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.red,
                child: Text(
                  "s",
                ),
              ),
            ),
            ListTile(
              title: Text("Home"),
            ),
            ListTile(
              title: Text("About Us"),
            ),
            ListTile(
              title: Text("Contact Us"),
            ),
          ],
        ),
      ),
    );
  }
}
