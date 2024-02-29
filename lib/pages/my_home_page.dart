import 'package:flutter/material.dart';
import 'package:flutter_animation/pages/second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  static const String myHomePage = "myHomePage";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
        title: const Text(
          "Flutter Animation",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: "tag",
              child: Card(
                color: Colors.grey,
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).pushNamed(SecondPage.secondPage);
                  },
                  title: const Text("Click on me"),
                  trailing: const Icon(Icons.person),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purpleAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  showOverlay(context);
                },
                child: const Text(
                  "Show Overlay",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }

  void showOverlay(BuildContext context) async {
    OverlayState overlayState = Overlay.of(context);
    OverlayEntry overlayEntry = OverlayEntry(builder: (context) {
      return const Positioned(
          top: 30,
          right: 10,
          child: CircleAvatar(
              radius: 10, backgroundColor: Colors.red, child: Text("1")));
    });

    overlayState.insert(overlayEntry);

    await Future.delayed(Duration(seconds: 3));

    overlayEntry.remove();
  }
}
