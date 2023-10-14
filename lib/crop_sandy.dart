import 'package:flutter/material.dart';

class Crop_sandy extends StatelessWidget {
  const Crop_sandy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Text('1.Carrot'),
      Image.asset(
        'images/carrot.jpg',
      ),
      Text('')
    ]));
  }
}
