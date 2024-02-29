import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  static const String secondPage = "secondPage";

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
        title: const Text(
          "Second Page",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),
        ),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Hero(
              tag: 'tag',
              child: Container(
                height: 150,
                width: 150,
                color: Colors.purpleAccent,
              )),
        ]),
      ),
    );
  }
}
