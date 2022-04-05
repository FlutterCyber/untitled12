import 'package:flutter/material.dart';

import 'home_page.dart';

class FourthPage extends StatefulWidget {
  static const String id = "fourth_page";

  const FourthPage({Key? key}) : super(key: key);

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.pushReplacementNamed(context, HomePage.id);
              },
            ),
          ],
        ),
        body: PageView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              color: Colors.pink,
              child: Center(
                  child: const Text(
                "1 page",
                style: TextStyle(color: Colors.white, fontSize: 30),
              )),
            ),
            Container(
              color: Colors.cyan,
              child: Center(
                  child: const Text(
                    "2 page",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  )),
            ),
            Container(
              color: Colors.deepPurple,
              child: Center(
                  child: const Text(
                    "3 page",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  )),
            ),
            Container(
              color: Colors.amber,
              child: Center(
                  child: const Text(
                    "4 page",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  )),
            ),
          ],
        ));
  }
}
