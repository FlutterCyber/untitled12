import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled12/pages/third_page.dart';

class SecondPage extends StatefulWidget {
  static const String id = 'second_page';

  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondPage'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, ThirdPage.id);
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(5),
        children: [
          _itemsList(
              title: "Account 1",
              image:
                  "https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg"),
          _itemsList(
              title: "Account 1",
              image:
                  "https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg"),
          _itemsList(
              title: "Account 1",
              image:
                  "https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg"),
          _itemsList(
              title: "Account 1",
              image:
                  "https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg"),
          _itemsList(
              title: "Account 1",
              image:
                  "https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg"),
          _itemsList(
              title: "Account 1",
              image:
                  "https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg"),
          _itemsList(
              title: "Account 1",
              image:
                  "https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg"),
          _itemsList(
              title: "Account 1",
              image:
                  "https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg"),
          _itemsList(
              title: "Account 1",
              image:
                  "https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg"),
          _itemsList(
              title: "Account 1",
              image:
                  "https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg"),
          _itemsList(
              title: "Account 10",
              image:
                  "https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg"),
        ],
      ),
    );
  }

  Widget _itemsList({title, image}) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              ClipOval(
                child: Image(
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                  image: NetworkImage(image),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(title),
            ],
          ),
          Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
