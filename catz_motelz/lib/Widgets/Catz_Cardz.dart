
import 'package:catz_motelz/Model/Cat.dart';
import 'package:catz_motelz/Screens/Catz_Details.dart';
import 'package:flutter/material.dart';

class CatCard extends StatelessWidget {
  final Cattz cat;

  const CatCard({
    super.key, required this.cat
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context){
      return CatzDetails(cat:cat);  
      }));},
      child: Card(
      child: Column(
      children: [
      // Cat Image
      Expanded(
      child: Image.network(
      width: double.infinity,
      fit: BoxFit.cover,
      cat.imageLink
      )),// Expanded
      // Cat Nane
      Padding(padding: const EdgeInsets.all(8.0),
      child: Text(cat.name ,textAlign: TextAlign.center, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold , color: Color.fromARGB(255, 1, 121, 233),decoration: TextDecoration.overline),)  ,),
      ],
      )),
    );
  }
}