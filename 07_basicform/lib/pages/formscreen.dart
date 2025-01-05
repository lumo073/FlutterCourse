import 'package:flutter/material.dart';

class Formscreen extends StatefulWidget {
  const Formscreen({super.key});

  @override
  State<Formscreen> createState() => _FormscreenState();
}

class _FormscreenState extends State<Formscreen> {
  // validation
  final _formkey = GlobalKey<FormState>();
  bool is_checked = false;

  String _value = "Female";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Screen"),
        backgroundColor: Colors.red,
      ),
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Enter your email",
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      10,
                    ),
                  ),
                ),
              ),
              style: TextStyle(
                color: Colors.green,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter your password",
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              obscureText: true,
            ),
            Checkbox(
              value: is_checked,
              onChanged: (bool? value) {
                setState(() {
                  is_checked = value!;
                });
              },
            ),
            RadioListTile(
                value: "Male",
                title: const Text("Male"),
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value.toString();
                  });
                }),
            RadioListTile(
                value: "Female",
                title: const Text("Female"),
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value.toString();
                  });
                }),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
