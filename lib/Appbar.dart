import 'package:flutter/material.dart';

class AppBAR extends StatelessWidget {
  const AppBAR({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
        ]);
  }
}
