import 'package:flutter/material.dart';

class Season extends StatelessWidget {
  const Season({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Seasons'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                'images/summer.jpg',
              ))),
              height: 150,
              width: 150,
              child: Center(
                  child: Text(
                'Summer',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 101, 65, 11)),
              ))),
          Container(
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('images/monsoon.jpg'))),
              height: 50,
              width: 100,
              child: Center(
                  child: Text(
                'Monsoon',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 4, 87, 47)),
              ))),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/autumn.jpg'))),
            height: 50,
            width: 100,
            child: Center(
              child: Text('Autumn',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 103, 5, 5))),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/spring.jpg')),
            ),
            height: 50,
            width: 100,
            child: Center(
                child: Text('Spring',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 243, 73, 61)))),
          )
        ],
      )),
    );
  }
}
