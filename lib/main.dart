import 'package:flutter/material.dart';
import 'package:flutter_animation/pages/my_home_page.dart';
import 'package:flutter_animation/pages/second_page.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loader_overlay/loader_overlay.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      overlayColor: Colors.grey.withOpacity(0.8),
      useDefaultLoading: false,
      overlayWidgetBuilder: (_) {
        //ignored progress for the moment
        return const Center(
          child: SpinKitSpinningLines(
            color: Colors.white,
            size: 80.0,
          ),
        );
      },
      child: MaterialApp(
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
      ),
    );
  }
}
