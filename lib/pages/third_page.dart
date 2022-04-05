import 'package:flutter/material.dart';
import 'package:untitled12/pages/forth_page.dart';
import 'package:untitled12/pages/home_page.dart';

class ThirdPage extends StatefulWidget {
  static const String id = "third_page";

  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.pushReplacementNamed(context, FourthPage.id);
              },
            ),
          ],
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: [
            _itemsList(title: "picture1",image: "https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg"),
            _itemsList(title: "picture2",image: "https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg"),
            _itemsList(title: "picture3",image: "https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg"),
            _itemsList(title: "picture4",image: "https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg"),
            _itemsList(title: "picture5",image: "https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg"),
            _itemsList(title: "picture6",image: "https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg"),
            _itemsList(title: "picture7",image: "https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg"),
            _itemsList(title: "picture8",image: "https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg"),
            _itemsList(title: "picture9",image: "https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg"),
          ],
        ));
  }

  Widget _itemsList({title, image}) {
    return Container(
      margin: EdgeInsets.all(5),
      color: Colors.cyan,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            height: 80,
            width: 80,
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
          Text(title),
        ],
      ),
    );
  }
}
