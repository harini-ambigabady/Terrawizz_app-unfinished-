import 'package:flutter/material.dart';
import 'package:terrawizz/MyBottomNav.dart';
import 'package:terrawizz/crop_grassy.dart';
import 'package:terrawizz/crop_marshy.dart';
import 'package:terrawizz/crop_rocky.dart';
import 'package:terrawizz/crop_sandy.dart';
import 'package:terrawizz/list_seasons.dart';
import 'package:terrawizz/season.dart';

class MyColumnWidget extends StatelessWidget {
  var output_var = "Marshy";
  var image = 'images/marsh.jpg';

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
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              '$image',
              width: 450,
              height: 450,
            ),
            SizedBox(height: 27), // Add some spacing between the image and text
            Text(
              "Detected as : $output_var", // Replace with your desired text
              style: TextStyle(fontSize: 20), // Adjust the text style
            ),
            SizedBox(
                height: 100), // Add some spacing between the text and container
            ElevatedButton(
                onPressed: (() {
                  if (output_var == 'Marshy') {
                    ///////////CONDITIONAL STAT /////
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Crop_marshy()));
                  }
                  if (output_var == 'Sandy') {
                    ///////////CONDITIONAL STAT /////
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Crop_sandy()));
                  }
                  if (output_var == 'Rocky') {
                    ///////////CONDITIONAL STAT /////
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Crop_rocky()));
                  }
                  if (output_var == 'Grassy') {
                    ///////////CONDITIONAL STAT /////
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Crop_grassy()));
                  }
                }),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    backgroundColor: Color(0xff38201B)),
                child: Text(
                  'Proceed',
                  style: TextStyle(color: Color(0xffA9846A)),
                )),
            SizedBox(
              height: 20,
            ),

            BottomNavigationBar(
              fixedColor: Color(0xff38201B),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Color(0xffA9846A)),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.list,
                    color: Color(0xffA9846A),
                  ),
                  label: 'Nature',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag, color: Color(0xffA9846A)),
                  label: 'Dealers',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Color(0xffA9846A)),
                  label: 'Profile',
                ),
              ],
            ),
          ],
        )));
  }
}
