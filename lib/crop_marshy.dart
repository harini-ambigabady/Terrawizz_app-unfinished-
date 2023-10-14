import 'package:flutter/material.dart';

class Crop_marshy extends StatelessWidget {
  const Crop_marshy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff38201B),
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Color.fromARGB(253, 255, 180, 115),
            ),
          ),
          title: Text(
            'Detect',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Ubuntu',
              color: Color.fromARGB(253, 255, 180, 115),
            ),
          ),
        ),
        body: Column(children: [
          Text('1.Carrot'),
          Image.asset(
            'images/carrot.jpg',
          ),
          Text('Fall, from late September through early November'),
          Text('60°F (15°C) to 75°F (24°C)'),
          Text(
              "Around 100-150 barrels (each barrel contains approximately 100 pounds of cranberries) per acre"),
        ]));
  }
}
