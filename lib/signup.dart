import 'package:flutter/material.dart';
import 'package:terrawizz/home.dart';
import 'package:terrawizz/login.dart';
import 'MyTextFormfield.dart';
//import 'MyTextFormfield.dart';

void main() {
  runApp(const signup());
}

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff38201B),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                Container(
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset("images/logo_final.jpeg"),
                  //height: 400,
                  //width: 400,
                ),
                MyTextFormfield(label: 'Email', hint: 'Enter email'),
                SizedBox(
                  height: 20,
                ),
                MyTextFormfield(
                    label: 'Create Password', hint: 'Create new password'),
                SizedBox(
                  height: 20,
                ),
                MyTextFormfield(
                    label: 'Confirm Password', hint: 'confirm password'),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => (Home())));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50),
                        backgroundColor: Color(0xff38201B)),
                    child: Text("Signup",
                        style: TextStyle(
                            color: Color.fromARGB(253, 255, 180, 115)))),
                SizedBox(
                  height: 20,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("Already an user?",
                      style: TextStyle(
                          color: Color(0xff38201B),
                          fontFamily: 'Ubuntu',
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => login()));
                    },
                    child: Text("Sign Up",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xff38201B))),
                  )
                ]),
              ])),
        ),
      ),
    );
    ;
  }
}
