import 'package:catz_motelz/Model/Cat.dart';
import 'package:flutter/material.dart';

class CatzinfoWidget extends StatelessWidget {
  final Cattz cat;
  const CatzinfoWidget({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      //cat image
      Image.network(cat.imageLink),
      // Cat Name
      Text(
        cat.name,
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      ), // Text
      // Cat Info
      Text(
        'Origin:${cat.origin}',
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 150, 1, 200),
            letterSpacing: double.parse('1.5')),
      ),
      Text('Max Weight: ${cat.maxWeight}',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 100, 1, 200),
              letterSpacing: double.parse('1.5'))),
      Text('Min Weight: ${cat.minWeight}',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 50, 1, 200),
              letterSpacing: double.parse('1.5'))),
      Text('Length:${cat.length}',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 1, 200),
              letterSpacing: double.parse('1.5'))),
    ]);
  }
}
