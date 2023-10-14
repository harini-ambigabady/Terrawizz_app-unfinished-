import 'package:flutter/material.dart';
import 'package:terrawizz/home.dart';
import 'package:terrawizz/output_pg.dart';

void main() {
  runApp(const MaterialApp(
    home: MyBottomNav(),
  ));
}

class MyBottomNav extends StatefulWidget {
  const MyBottomNav({Key? key}) : super(key: key);

  @override
  MyBottomNavState createState() => MyBottomNavState();
}

class MyBottomNavState extends State<MyBottomNav> {
  int _currentIndex = 0;
  final List<Widget> _screens = [Home(), MyColumnWidget()];

  void _onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Color(0xff38201B),
        currentIndex: _currentIndex,
        onTap: _onTapped,
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
    );
  }
}
