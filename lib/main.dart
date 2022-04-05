import 'package:flutter/material.dart';
import 'package:untitled12/pages/forth_page.dart';
import 'package:untitled12/pages/home_page.dart';
import 'package:untitled12/pages/second_page.dart';
import 'package:untitled12/pages/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        SecondPage.id: (context) => SecondPage(),
        ThirdPage.id: (context) => ThirdPage(),
        FourthPage.id: (context) => FourthPage(),
      },
    );
  }
}
