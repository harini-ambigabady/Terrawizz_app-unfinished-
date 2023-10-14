import 'package:flutter/material.dart';
import 'package:terrawizz/home.dart';
import 'package:terrawizz/signup.dart';
import 'MyTextFormfield.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    bool _ishidden = true;
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
                      height: 400,
                      width: 400,
                    ),
                    MyTextFormfield(label: 'Username', hint: 'Enter username'),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        padding: const EdgeInsets.all(8),
                        height: 60,
                        width: 315,
                        color: Color(0xffF7F7F7),
                        child: TextField(
                          cursorHeight: 20,
                          obscureText: _ishidden,
                          decoration: InputDecoration(
                              suffix: InkWell(
                                  child: Icon(Icons.visibility,
                                      color: Color(0xffB0B0C3))),
                              hintText: "Password"),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(double.infinity, 50),
                            backgroundColor: Color(0xff38201B)),
                        child: Text("Login",
                            style: TextStyle(
                                color: Color.fromARGB(253, 255, 180, 115)))),
                    SizedBox(
                      height: 20,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text("Don't have an account?",
                          style: TextStyle(
                              color: Color(0xff38201B),
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w600,
                              fontSize: 16)),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => signup()));
                        },
                        child: Text("Sign Up",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color(0xff38201B))),
                      )
                    ]),
                  ]),
            ),
          ),
        ));
  }
}
