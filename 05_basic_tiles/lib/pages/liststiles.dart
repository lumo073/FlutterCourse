import 'package:flutter/material.dart';

class ListsTiles extends StatefulWidget {
  const ListsTiles({super.key});

  @override
  State<ListsTiles> createState() => _ListsTilesState();
}

class _ListsTilesState extends State<ListsTiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/grid");
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: const Text("shishir bhandari"),
              subtitle: const Text("27"),
              leading: Image.network(
                "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
              ),
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              title: const Text("rahul bhandari"),
              subtitle: const Text("25"),
              leading: Image.network(
                "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
              ),
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              title: const Text("rahul bhandari"),
              subtitle: const Text("25"),
              leading: Image.network(
                "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
              ),
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              title: const Text("rahul bhandari"),
              subtitle: const Text("25"),
              leading: Image.network(
                "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
              ),
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              title: const Text("rahul bhandari"),
              subtitle: const Text("25"),
              leading: Image.network(
                "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
              ),
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              title: const Text("rahul bhandari"),
              subtitle: const Text("25"),
              leading: Image.network(
                "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
              ),
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              title: const Text("rahul bhandari"),
              subtitle: const Text("25"),
              leading: Image.network(
                "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
              ),
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              title: const Text("rahul bhandari"),
              subtitle: const Text("25"),
              leading: Image.network(
                "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
              ),
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              title: const Text("rahul bhandari"),
              subtitle: const Text("25"),
              leading: Image.network(
                "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
              ),
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              title: const Text("rahul bhandari"),
              subtitle: const Text("25"),
              leading: Image.network(
                "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
              ),
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              title: const Text("rahul bhandari"),
              subtitle: const Text("25"),
              leading: Image.network(
                "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
              ),
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              title: const Text("rahul bhandari"),
              subtitle: const Text("25"),
              leading: Image.network(
                "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
              ),
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              title: const Text("rahul bhandari"),
              subtitle: const Text("25"),
              leading: Image.network(
                "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
              ),
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              title: const Text("hari bhandari"),
              subtitle: const Text("25"),
              leading: Image.network(
                "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
              ),
              trailing: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
