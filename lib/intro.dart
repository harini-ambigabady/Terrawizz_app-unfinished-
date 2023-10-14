import 'package:flutter/material.dart';
import 'package:terrawizz/login.dart';
import 'package:terrawizz/signup.dart';

void main() {
  runApp(intro());
}

class intro extends StatelessWidget {
  const intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(253, 255, 180, 115),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Image.asset(
              'images/intro_pic.jpeg',
              height: 400,
              width: 400,
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              "   Experience the future",
              style: TextStyle(
                color: Color(0xff38201B),
                fontSize: 23,
                fontWeight: FontWeight.bold,
                fontFamily: 'Ubuntu',
              ),
            ),
            Text(
              "   of agriculture with our app!",
              style: TextStyle(
                color: Color(0xff38201B),
                fontSize: 23,
                fontWeight: FontWeight.bold,
                fontFamily: 'Ubuntu',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              '   Instantly detect terrain, analyze it, and receive tailored crop recommendations.',
              style: TextStyle(
                color: Color(0xff38201B),
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 60,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => login()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff38201B)),
                    ),
                    child: Text("Login",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Ubuntu',
                            color: Color(0xff38201B))),
                  )),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => signup()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: 200,
                    color: Color(0xff38201B),
                    child: Text("Sign Up",
                        style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontSize: 20,
                            fontWeight: FontWeight.w100,
                            color: Color.fromARGB(253, 255, 180, 115))),
                  ))
            ]),
          ],
        ),
      ),
    );
  }
}
