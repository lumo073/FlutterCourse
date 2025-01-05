import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // FloatingActionButton(
            //   onPressed: () {
            //     Navigator.pushReplacement(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => const SecondScreen(),
            //       ),
            //     );
            //   },
            //   child: const Text("Click Me pushReplacement"),
            // ),
            // IconButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => const SecondScreen(),
            //       ),
            //     );
            //   },
            //   icon: const Icon(Icons.add),
            // ),
            // TextButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => const SecondScreen(),
            //       ),
            //     );
            //   },
            //   child: const Text("Click Me"),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => const SecondScreen(),
            //       ),
            //     );
            //   },
            //   child: const Text("Elevated Button"),
            // ),
            // OutlinedButton(
            //   onPressed: () {},
            //   child: const Text("Outlined Button"),
            // ),
            // FloatingActionButton.extended(
            //   onPressed: () {},
            //   label: const Text("Extended Button"),
            //   icon: const Icon(Icons.add),
            // ),
            // ElevatedButton.icon(
            //   onPressed: () {},
            //   label: const Text("Icon Button"),
            //   icon: const Icon(Icons.add),
            // ),
            // // style button
            // TextButton(
            //   onPressed: () {},
            //   child: const Text("Text Style Button"),
            //   style: ButtonStyle(
            //     backgroundColor: WidgetStateProperty.all(Colors.red),
            //     foregroundColor: WidgetStateProperty.all(Colors.white),
            //     padding: WidgetStateProperty.all(
            //       const EdgeInsets.all(20),
            //     ),
            //     textStyle: WidgetStateProperty.all(
            //       const TextStyle(
            //         fontSize: 20,
            //       ),
            //     ),
            //   ),
            // ),
            MaterialButton(
              onPressed: () {
                // Navigator.pushReplacementNamed(context, "/second");
                Navigator.pushNamed(context, "/second");
              },
              child: const Text("Material Button"),
            ),
          ],
        ),
      ),
    );
  }
}
