import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                "Sign in",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const InputField(
              inputLabel: "email",
              isObscured: false,
            ),
            const InputField(
              inputLabel: "password",
              isObscured: true,
            ),
            const CustomButton(btnText: "Login")
          ],
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final String inputLabel;
  final bool isObscured;
  const InputField(
      {super.key, required this.inputLabel, this.isObscured = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: inputLabel,
        ),
        obscureText: isObscured,
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String btnText;
  const CustomButton({super.key, required this.btnText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        child: Text(btnText),
        onPressed: () {},
      ),
    );
  }
}
