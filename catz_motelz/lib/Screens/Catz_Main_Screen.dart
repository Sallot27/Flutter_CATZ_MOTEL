import 'package:catz_motelz/main.dart';
import 'package:flutter/material.dart';

import '../Widgets/Catz_Cardz.dart';

class CatzMainScreen extends StatelessWidget {
  const CatzMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CATZ MOTELS',
          style: TextStyle(color: Colors.white, fontFamily: 'sans-serif'),
        ),
        backgroundColor: Color.fromARGB(255, 0, 71, 153),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.favorite), color: Colors.white)
        ],
      ), // AppBar
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: cats.length,
        itemBuilder: (context, index) {
          final cat = cats[index];
          return CatCard(cat: cat);
        }, // Column // Card
      ), // GridView
    ); // Scaffold
  }
}
