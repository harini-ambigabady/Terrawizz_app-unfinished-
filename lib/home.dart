import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:terrawizz/MyBottomNav.dart';
import 'package:terrawizz/output_pg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
            actions: [
              Icon(Icons.menu, color: Color.fromARGB(253, 255, 180, 115)),
              // GestureDetector() //to be added for right side menu - about
            ]),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Container(
                child: DottedBorder(
                  color: Color(0xff38201B),
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12),
                  padding: EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Container(
                      height: 500,
                      width: 350,
                      color: Color(0xffA9846A),
                      child: Icon(
                        size: 250,
                        Icons.cloud_upload,
                        color: Color(0xff38201B),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyColumnWidget()));
                      }),
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 50),
                          backgroundColor: Color(0xff38201B)),
                      child: Text(
                        'Proceed to Detect',
                        style: TextStyle(color: Color(0xffA9846A)),
                      ))),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ));
  }
}

dl() {}
