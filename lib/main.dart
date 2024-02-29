import 'package:flutter/material.dart';
import 'package:flutter_animation/pages/my_home_page.dart';
import 'package:flutter_animation/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: MyHomePage.myHomePage,
      routes: {
        MyHomePage.myHomePage: (context) => MyHomePage(),
        SecondPage.secondPage: (context) => SecondPage(),
      },
    );
  }
}
