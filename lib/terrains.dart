import 'package:flutter/material.dart';

class Crops extends StatefulWidget {
  const Crops({super.key});

  @override
  State<Crops> createState() => _CropsState();
}

class _CropsState extends State<Crops> {
  var String;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                  '1. **Cranberries**: Marshy terrain is ideal for growing cranberries, as these plants thrive in waterlogged conditions. 2.Rice: Many varieties of rice are grown in flooded or marshy fields, as they require consistent water levels for cultivation. 3.Cattails: While not a traditional crop, cattails can be harvested and used for various purposes in marshy areas.'),
            )
          ],
        ),
      ),
    );
  }
}
